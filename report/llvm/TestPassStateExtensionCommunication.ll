Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestPassStateExtensionCommunication?download=true
inline.NumInlined: 966
inline.NumDeleted: 640
begin_hunk_0_@_ZNSt17_Function_handlerIFSt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EEvEZNS1_16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E9_M_invokeERKSt9_Any_data:bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #19, !noalias !17 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.b, i8 0, i64 240, i1 false), !noalias !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN12_GLOBAL__N_135TestPassStateExtensionCommunication13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !24, !noalias !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.5, ptr %i.d, align 16, !noalias !17
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 14, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !17
  store i8 1, ptr %i.b, align 16, !noalias !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false), !noalias !17
  store ptr %i.g, ptr %i.f, align 16, !tbaa !26, !noalias !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.h, align 4, !tbaa !28, !noalias !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.j, ptr %i.i, align 16, !tbaa !26, !noalias !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.k, align 4, !tbaa !28, !noalias !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !noalias !17
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_135TestPassStateExtensionCommunicationE, i64 16), ptr %i.a, align 16, !tbaa !29, !noalias !17
  store ptr %i.a, ptr %0, align 8, !tbaa !31, !alias.scope !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EEvEZNS1_16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !34
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_135TestPassStateExtensionCommunicationEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #18
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #18
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !49, !range !52, !noundef !53
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !49
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !52
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.ao) #18
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135TestPassStateExtensionCommunicationD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_135TestPassStateExtensionCommunicationENS_13OperationPassINS_8ModuleOpEEEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr (i8, ptr @.str.7, i64 49), i64 58 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4mlir4Pass20getDependentDialectsERNS_15DialectRegistryE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_135TestPassStateExtensionCommunication11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.8, i64 39 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_135TestPassStateExtensionCommunication14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 62 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_135TestPassStateExtensionCommunication14runOnOperationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.llvm::SmallVector.41", align 8 ; 14 uses
  %2 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %class.anon.49, align 8             ; 4 uses
  %5 = alloca %class.anon.50, align 8             ; 4 uses
  %6 = alloca %"class.mlir::RaggedArray", align 8 ; 11 uses
  %7 = alloca %"class.mlir::transform::TransformOptions", align 2 ; 4 uses
  %8 = alloca %"class.llvm::function_ref.63", align 8 ; 3 uses
  %9 = alloca %"class.llvm::function_ref.64", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 22, ptr %i.d, align 8, !tbaa !59
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #18 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !61
  %i.h = load i64, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.g, ptr noundef nonnull align 1 dereferenceable(22) @.str.10, i64 22, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !64
  %i.j = load ptr, ptr %2, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !56
  %i.p = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.q = load i64, ptr %i.i, align 8, !tbaa !64   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 %i.q, ptr %i.c, align 8, !tbaa !59
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.a, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #18 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !61
  %i.t = load i64, ptr %i.c, align 8, !tbaa !59
  store i64 %i.t, ptr %i.o, align 8, !tbaa !63
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.a, %._crit_edge.i.i
  %i.u = phi ptr [ %i.s, %bb.a ], [ %i.o, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.q, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !63
  store i8 %i.v, ptr %i.u, align 1, !tbaa !63
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.w = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !64
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.pre8.i.i.i = load i32, ptr %i.m, align 8, !tbaa !65
  %i.aa = add i32 %.pre8.i.i.i, 1
  store i32 %i.aa, ptr %i.m, align 8, !tbaa !65
  %i.ab = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.f
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !63
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %11 = and i64 %.0.copyload.i.i.i.i.i, -8
  %12 = inttoptr i64 %11 to ptr                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 32, ptr %i.b, align 8, !tbaa !59
  %i.ag = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #18 ; 2 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !61
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !59  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) @.str.11, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !64
  %i.aj = load ptr, ptr %3, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call fastcc void @_ZN12_GLOBAL__N_135TestPassStateExtensionCommunication11printVectorERKN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EEERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.al = load ptr, ptr %3, align 8, !tbaa !61    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.af
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.af, align 8, !tbaa !63
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %1, ptr %4, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %i.ar = and i32 %i.aq, 8388607
  %i.as = icmp ne i32 %i.ar, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = lshr i32 %i.aq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.at, 1
  %i.au = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %i.au
  %i.aw = lshr i32 %i.aq, 21
  %i.ax = and i32 %i.aw, 2040
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !68
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !85 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !85, !noalias !86 ; 3 uses
  %.not1.i.i.i.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not1.i.i.i.i.i, label %_ZN4mlir5Block6getOpsINS_9transform20TransformOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.d
  %.sroa.010.0.i = phi ptr [ %i.bm, %bb.d ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ] ; 3 uses
  %i.bj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.i) #18, !noalias !86
  %i.bk = call noundef ptr @_ZN4mlir11OpInterfaceINS_9transform20TransformOpInterfaceENS1_6detail35TransformOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.bj), !noalias !86
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.d, label %_ZN4mlir5Block6getOpsINS_9transform20TransformOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !85, !noalias !86 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, %i.bg
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5Block6getOpsINS_9transform20TransformOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !89

_ZN4mlir5Block6getOpsINS_9transform20TransformOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.sroa.010.1.i = phi ptr [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.sroa.010.0.i, %.lr.ph.i.i.i.i.i ], [ %i.bm, %bb.d ] ; 2 uses
  %.not34 = icmp eq ptr %.sroa.010.1.i, %i.bg
  br i1 %.not34, label %.critedge10, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir5Block6getOpsINS_9transform20TransformOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 76
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bu = ptrtoint ptr %4 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bw = ptrtoint ptr %5 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit
  %.sroa.022.035 = phi ptr [ %.sroa.010.1.i, %.lr.ph ], [ %.sroa.022.2, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit ] ; 2 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.022.035) #18 ; 2 uses
  %i.by = call noundef ptr @_ZN4mlir11OpInterfaceINS_9transform20TransformOpInterfaceENS1_6detail35TransformOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bn, i8 0, i64 112, i1 false)
  store ptr %i.bn, ptr %6, align 8, !tbaa !26
  store i32 0, ptr %i.bo, align 8, !tbaa !65
  store i32 3, ptr %i.bp, align 4, !tbaa !28
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !26
  store i32 6, ptr %i.bs, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i16 257, ptr %7, align 2
  store ptr @_ZN4llvm12function_refIFvRN4mlir9transform14TransformStateEEE11callback_fnIZN12_GLOBAL__N_135TestPassStateExtensionCommunication14runOnOperationEvEUlS4_E_EEvlS4_, ptr %8, align 8, !tbaa !91
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !93
  store ptr @_ZN4llvm12function_refIFNS_13LogicalResultERN4mlir9transform14TransformStateEEE11callback_fnIZN12_GLOBAL__N_135TestPassStateExtensionCommunication14runOnOperationEvEUlS5_E0_EES1_lS5_, ptr %9, align 8, !tbaa !94
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !96
  %i.bz = call i8 @_ZN4mlir9transform15applyTransformsEPNS_9OperationENS0_20TransformOpInterfaceERKNS_11RaggedArrayIN4llvm12PointerUnionIJS2_NS_9AttributeENS_5ValueEEEEEERKNS0_16TransformOptionsEbNS5_12function_refIFvRNS0_14TransformStateEEEENSG_IFNS5_13LogicalResultESI_EEE(ptr noundef %12, ptr nonnull %i.bx, ptr %i.by, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 1 dereferenceable(2) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::function_ref.63") align 8 %8, ptr noundef nonnull byval(%"class.llvm::function_ref.64") align 8 %9) #18
  %i.ca = trunc nuw i8 %i.bz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !26 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.br
  br i1 %i.cc, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.cb) #18
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i: ; preds = %bb.f, %bb.e
  %i.cd = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bn
  br i1 %i.ce, label %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.cd) #18
  br label %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit

_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.ca, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit
  %.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8
  %i.cf = or i64 %.0.copyload.i.i.i.i, 4
  store i64 %i.cf, ptr %i.e, align 8
  br label %bb.j

.critedge:                                        ; preds = %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.022.035, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !85 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.ch, %i.bg
  br i1 %.not1.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %bb.i
  %.sroa.022.1 = phi ptr [ %i.cl, %bb.i ], [ %i.ch, %.critedge ] ; 3 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.022.1) #18
  %i.cj = call noundef ptr @_ZN4mlir11OpInterfaceINS_9transform20TransformOpInterfaceENS1_6detail35TransformOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.ci)
  %.not56 = icmp eq ptr %i.cj, null
  br i1 %.not56, label %bb.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.022.1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cl, %i.bg
  br i1 %.not.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !89

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.i, %.critedge
  %.sroa.022.2 = phi ptr [ %i.ch, %.critedge ], [ %.sroa.022.1, %.lr.ph.i.i.i ], [ %i.cl, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.022.2, %i.bg
  br i1 %.not, label %.critedge10, label %bb.e

.critedge10:                                      ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_9transform20TransformOpInterfaceENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit, %_ZN4mlir5Block6getOpsINS_9transform20TransformOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cm, ptr %10, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 31, ptr %i.a, align 8, !tbaa !59
  %i.cn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.cn, ptr %10, align 8, !tbaa !61
  %i.co = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.cn, ptr noundef nonnull align 1 dereferenceable(31) @.str.12, i64 31, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !64
  %i.cq = load ptr, ptr %10, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  store i8 0, ptr %i.cr, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call fastcc void @_ZN12_GLOBAL__N_135TestPassStateExtensionCommunication11printVectorERKN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EEERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.cs = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cm
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.critedge10
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !63
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.critedge10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cw = load ptr, ptr %1, align 8, !tbaa !26    ; 3 uses
  %i.cx = load i32, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i
end_hunk_0
