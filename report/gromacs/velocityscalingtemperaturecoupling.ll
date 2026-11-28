Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/velocityscalingtemperaturecoupling?download=true
inline.NumInlined: 2388
inline.NumDeleted: 1389
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx34VelocityScalingTemperatureCoupling22restoreCheckpointStateESt8optionalINS_14CheckpointDataILNS_23CheckpointDataOperationE0EEEERKNS_7MpiCommEP12gmx_domdec_t:bb.a
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(27) @_ZTSN3gmx18KeyValueTreeObjectE) #34
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_18KeyValueTreeObjectEEEbv.exit.i.i.i.i, %bb.i, %.noexc32
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK3gmx3Any4castIiEERKT_vENKUlvE_clEv, ptr noundef nonnull @.str.27, i32 noundef 190) #32
          to label %.noexc34 unwind label %.thread

.noexc34:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_18KeyValueTreeObjectEEEbv.exit.i.i.i.i, %.noexc33
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.sroa.039.0 = phi ptr [ %i.aj, %bb.k ], [ undef, %bb.f ]
  %.sroa.2.0 = phi i8 [ 1, %bb.k ], [ 0, %bb.f ]
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr %.sroa.039.0, i8 %.sroa.2.0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.r, label %.critedge, label %.critedge28

.critedge:                                        ; preds = %bb.m
  %i.an = load ptr, ptr %6, align 8, !tbaa !65    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !66
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.critedge28

.critedge28:                                      ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

.thread:                                          ; preds = %bb.j, %bb.g, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.r, label %bb.o, label %.critedge31

bb.o:                                             ; preds = %.thread, %bb.n
  %lpad.phi43 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.n ]
  %i.as = load ptr, ptr %6, align 8, !tbaa !65    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.critedge30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.o
  %i.av = load i64, ptr %i.at, align 8, !tbaa !66
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #35
  br label %.critedge30

.critedge30:                                      ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.critedge31

.critedge31:                                      ; preds = %bb.n, %.critedge30
  %lpad.phi4246 = phi { ptr, i32 } [ %lpad.phi43, %.critedge30 ], [ %lpad.thr_comm.split-lp, %bb.n ]
  resume { ptr, i32 } %lpad.phi4246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN3gmx34VelocityScalingTemperatureCoupling8clientIDB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(256) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS_20EnergySignallerEventE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.17") align 8 captures(none) initializes((32, 33)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  store i64 %i.b, ptr %0, align 8, !tbaa !57
  store ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_0E9_M_invokeERKSt9_Any_dataOlOd", ptr %i.d, align 8, !tbaa !98
  store ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.c, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.f, align 8, !tbaa !100
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N3gmx34VelocityScalingTemperatureCouplingD1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN3gmx34VelocityScalingTemperatureCouplingD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.a) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N3gmx34VelocityScalingTemperatureCouplingD0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN3gmx34VelocityScalingTemperatureCouplingD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.a) #34
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 noundef 256) #35
  ret void
}

; Function Attrs: uwtable
define void @_ZThn8_N3gmx34VelocityScalingTemperatureCoupling19saveCheckpointStateESt8optionalINS_14CheckpointDataILNS_23CheckpointDataOperationE1EEEERKNS_7MpiCommEP12gmx_domdec_t(ptr noundef %0, ptr nofree noundef readonly byval(%"class.std::optional") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree readnone captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN3gmx34VelocityScalingTemperatureCoupling19saveCheckpointStateESt8optionalINS_14CheckpointDataILNS_23CheckpointDataOperationE1EEEERKNS_7MpiCommEP12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull byval(%"class.std::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr poison)
  ret void
}

; Function Attrs: uwtable
define void @_ZThn8_N3gmx34VelocityScalingTemperatureCoupling22restoreCheckpointStateESt8optionalINS_14CheckpointDataILNS_23CheckpointDataOperationE0EEEERKNS_7MpiCommEP12gmx_domdec_t(ptr noundef %0, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN3gmx34VelocityScalingTemperatureCoupling22restoreCheckpointStateESt8optionalINS_14CheckpointDataILNS_23CheckpointDataOperationE0EEEERKNS_7MpiCommEP12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr %1, i8 %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZThn8_N3gmx34VelocityScalingTemperatureCoupling8clientIDB5cxx11Ev(ptr nofree noundef readnone captures(ret: address, provenance) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn16_N3gmx34VelocityScalingTemperatureCouplingD1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN3gmx34VelocityScalingTemperatureCouplingD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.a) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn16_N3gmx34VelocityScalingTemperatureCouplingD0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN3gmx34VelocityScalingTemperatureCouplingD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.a) #34
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 noundef 256) #35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZThn16_N3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS_20EnergySignallerEventE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.17") align 8 captures(none) initializes((32, 33)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS_20EnergySignallerEventE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !210
  store i64 %i.c, ptr %0, align 8, !tbaa !57, !alias.scope !210
  store ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_0E9_M_invokeERKSt9_Any_dataOlOd", ptr %i.e, align 8, !tbaa !98, !alias.scope !210
  store ptr @"_ZNSt17_Function_handlerIFvldEZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS1_20EnergySignallerEventEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.d, align 8, !tbaa !59, !alias.scope !210
  br label %_ZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS_20EnergySignallerEventE.exit

_ZN3gmx34VelocityScalingTemperatureCoupling22registerEnergyCallbackENS_20EnergySignallerEventE.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !100, !alias.scope !210
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx34VelocityScalingTemperatureCouplingC2EiiNS_13UseFullStepKEENS_33ReportPreviousStepConservedEnergyElidPKfS4_S4_PNS_10EnergyDataE19TemperatureCoupling(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 44), (48, 80)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, double noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, i32 noundef %12) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator.36", align 1 ; 7 uses
  %18 = alloca %"class.std::function.91", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN3gmx34VelocityScalingTemperatureCouplingE, i64 16), ptr %0, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx34VelocityScalingTemperatureCouplingE, i64 104), ptr %i.b, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx34VelocityScalingTemperatureCouplingE, i64 160), ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %3, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %4, ptr %i.g, align 4, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %6, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %7, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.k = sext i32 %6 to i64                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.idx = shl nsw i64 %i.k, 2                     ; 14 uses
  %i.l = icmp ugt i64 %.idx, 9223372036854775804
  br i1 %i.l, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #36
          to label %.noexc4.i unwind label %bb.e  ; 4 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.n, ptr %i.o, align 8, !tbaa !71
  %i.p = icmp samesign ugt i64 %.idx, 4
  br i1 %i.p, label %bb.c, label %bb.d, !prof !217

bb.c:                                             ; preds = %.noexc4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %8, i64 %.idx, i1 false)
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i57

bb.d:                                             ; preds = %.noexc4.i
  %i.q = load float, ptr %8, align 4, !tbaa !104
  store float %i.q, ptr %i.m, align 4, !tbaa !104
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i57

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !70   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i5.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #35
  br label %.body

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i57: ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.n, ptr %i.y, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #36
          to label %.noexc4.i60 unwind label %bb.i ; 4 uses

.noexc4.i60:                                      ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i57
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !71
  %.not = icmp eq i32 %6, 1
  br i1 %.not, label %bb.h, label %bb.g, !prof !218

bb.g:                                             ; preds = %.noexc4.i60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %9, i64 %.idx, i1 false)
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i68

bb.h:                                             ; preds = %.noexc4.i60
  %i.ad = load float, ptr %9, align 4, !tbaa !104
  store float %i.ad, ptr %i.aa, align 4, !tbaa !104
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i68

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i57
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !70  ; 3 uses
  %.not.i.i5.i58 = icmp eq ptr %i.af, null
  br i1 %.not.i.i5.i58, label %.body63, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #35
  br label %.body63

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i68: ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ab, ptr %i.al, align 8, !tbaa !105
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #36
          to label %.noexc4.i71 unwind label %bb.m ; 4 uses

.noexc4.i71:                                      ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i68
  store ptr %i.an, ptr %i.am, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !71
  %.not150 = icmp eq i32 %6, 1
  br i1 %.not150, label %bb.l, label %bb.k, !prof !218

bb.k:                                             ; preds = %.noexc4.i71
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr align 4 %10, i64 %.idx, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %.noexc4.i71
  %i.aq = load float, ptr %10, align 4, !tbaa !104
  store float %i.aq, ptr %i.an, align 4, !tbaa !104
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i68
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !70 ; 3 uses
  %.not.i.i5.i69 = icmp eq ptr %i.as, null
  br i1 %.not.i.i5.i69, label %.body74, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #35
  br label %.body74

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !105
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr null, i64 %.idx ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  br label %.noexc.i78

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ao, ptr %i.bk, align 8, !tbaa !105
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = shl nuw nsw i64 %i.k, 3                 ; 3 uses
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #36
          to label %.noexc77 unwind label %bb.s   ; 4 uses

.noexc77:                                         ; preds = %bb.o
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bn, i8 0, i64 %i.bm, i1 false), !tbaa !106
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  br label %.noexc.i78

.noexc.i78:                                       ; preds = %.noexc77, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.br = phi ptr [ %i.bj, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.bl, %.noexc77 ]
  %i.bs = phi ptr [ %i.bb, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.z, %.noexc77 ] ; 3 uses
  %i.bt = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.y, %.noexc77 ]
  %i.bu = phi ptr [ %i.be, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.al, %.noexc77 ]
  %i.bv = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.am, %.noexc77 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.bq, %.noexc77 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.bw, align 8, !tbaa !89
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %11, ptr %i.bx, align 8, !tbaa !107
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, i8 0, i64 40, i1 false)
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 34, ptr %i.a, align 8, !tbaa !58
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.p unwind label %bb.t       ; 2 uses

bb.p:                                             ; preds = %.noexc.i78
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !65
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !58  ; 3 uses
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.cc, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !88
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 -1, ptr %i.ch, align 8, !tbaa !55
  switch i32 %12, label %bb.z [
    i32 6, label %bb.q
    i32 1, label %bb.u
    i32 2, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p
  %i.ci = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.r unwind label %bb.y, !noalias !219 ; 4 uses

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx27VRescaleTemperatureCouplingE, i64 16), ptr %i.ci, align 8, !tbaa !64, !noalias !219
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %5, ptr %i.cj, align 8, !tbaa !112, !noalias !219
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !219
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.ci, ptr %i.bz, align 8, !tbaa !67
  %.not.i.i.i81 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i81, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.s:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.t:                                             ; preds = %.noexc.i78
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.u:                                             ; preds = %bb.p
  %i.co = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %bb.v unwind label %bb.y, !noalias !220 ; 3 uses

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx28BerendsenTemperatureCouplingE, i64 16), ptr %i.co, align 8, !tbaa !64, !noalias !220
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !noalias !220
  %i.cq = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.co, ptr %i.bz, align 8, !tbaa !67
  %.not.i.i.i83 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i83, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.w:                                             ; preds = %bb.p
  %i.cr = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %.noexc86 unwind label %bb.y, !noalias !221 ; 3 uses

.noexc86:                                         ; preds = %bb.w
  %i.cs = load i32, ptr %i.h, align 8, !tbaa !113, !noalias !221
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !70, !noalias !221 ; 3 uses
  %i.cu = load ptr, ptr %i.bt, align 8, !tbaa !105, !noalias !221
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cx
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !70, !noalias !221 ; 3 uses
  %i.da = load ptr, ptr %i.bu, align 8, !tbaa !105, !noalias !221
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dd
  invoke void @_ZN3gmx29NoseHooverTemperatureCouplingC2EiNS_8ArrayRefIKfEES3_(ptr noundef nonnull align 8 dereferenceable(112) %i.cr, i32 noundef %i.cs, ptr %i.ct, ptr %i.cy, ptr %i.cz, ptr %i.de)
          to label %_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.x, !noalias !221

bb.x:                                             ; preds = %.noexc86
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 112) #35, !noalias !221
  br label %.body87

_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc86
  %i.dg = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.cr, ptr %i.bz, align 8, !tbaa !67
  %.not.i.i.i89 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i89, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.y:                                             ; preds = %bb.u, %bb.q, %bb.w
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.z:                                             ; preds = %bb.p
  %i.di = call ptr @__cxa_allocate_exception(i64 24) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.dj = invoke noundef ptr @_Z17enumValueToString19TemperatureCoupling(i32 noundef %12)
          to label %bb.aa unwind label %.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ab unwind label %.thread131

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.2)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(56) %13)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx19NotImplementedErrorE, i64 16), ptr %i.di, align 8, !tbaa !64
  invoke void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTIN3gmx19NotImplementedErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #32
          to label %bb.ay unwind label %bb.ai

.thread:                                          ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread131:                                       ; preds = %bb.aa
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ac
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ah:                                            ; preds = %bb.ad
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae, %bb.af
  %.0 = phi i1 [ false, %bb.af ], [ true, %bb.ae ]
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #34
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.do, %bb.ai ], [ %i.dn, %bb.ah ] ; 2 uses
  %.1 = phi i1 [ %.0, %bb.ai ], [ true, %bb.ah ]  ; 2 uses
  %i.dp = load ptr, ptr %14, align 8, !tbaa !65   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !66
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ag ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.aj ] ; 4 uses
  %.2 = phi i1 [ true, %bb.ag ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.1, %bb.aj ] ; 2 uses
  %i.du = load ptr, ptr %15, align 8, !tbaa !65   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !66
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  %i.dz = load ptr, ptr %16, align 8, !tbaa !65   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %16, align 8, !tbaa !65   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %.thread140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !66
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.sink.split

.thread140:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.ei = load i64, ptr %i.ea, align 8, !tbaa !66
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ej) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br i1 %.2, label %bb.al, label %.body87

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br i1 %.2, label %bb.al, label %.body87

.sink.split:                                      ; preds = %.thread, %.thread131, %.thread140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread
  %.pn.pn.pn.pn.pn130.ph = phi { ptr, i32 } [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread ], [ %i.ec, %.thread140 ], [ %i.dl, %.thread131 ], [ %i.dk, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ak
  %.pn.pn.pn.pn.pn130 = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn.pn, %bb.ak ], [ %.pn.pn.pn.pn.pn130.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.di) #34
  br label %.body87

_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split: ; preds = %_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %bb.v, %bb.r
  %.sink180 = phi ptr [ %i.cq, %bb.v ], [ %i.cl, %bb.r ], [ %i.dg, %_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.ek = load ptr, ptr %.sink180, align 8, !tbaa !64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %.sink180) #34
  br label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split, %_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %bb.v, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.en = ptrtoint ptr %0 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.eq, align 8
  store i64 %i.en, ptr %18, align 8, !tbaa !57
  store ptr @"_ZNSt17_Function_handlerIFfldEZN3gmx34VelocityScalingTemperatureCouplingC1EiiNS1_13UseFullStepKEENS1_33ReportPreviousStepConservedEnergyElidPKfS6_S6_PNS1_10EnergyDataE19TemperatureCouplingE3$_0E9_M_invokeERKSt9_Any_dataOlOd", ptr %i.ep, align 8, !tbaa !223
  store ptr @"_ZNSt17_Function_handlerIFfldEZN3gmx34VelocityScalingTemperatureCouplingC1EiiNS1_13UseFullStepKEENS1_33ReportPreviousStepConservedEnergyElidPKfS6_S6_PNS1_10EnergyDataE19TemperatureCouplingE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.eo, align 8, !tbaa !59
  invoke void @_ZN3gmx10EnergyData30addConservedEnergyContributionEOSt8functionIFfldEE(ptr noundef nonnull align 8 dereferenceable(552) %11, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !59 ; 2 uses
  %.not.i99 = icmp eq ptr %i.er, null
  br i1 %.not.i99, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = invoke noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  ret void

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !59 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ew, null
  br i1 %.not.i100, label %_ZNSt14_Function_baseD2Ev.exit101, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ex = invoke noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit101 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit101:                ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.body87

.body87:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.y, %bb.x, %bb.ak, %bb.al, %_ZNSt14_Function_baseD2Ev.exit101
  %.pn48 = phi { ptr, i32 } [ %i.ev, %_ZNSt14_Function_baseD2Ev.exit101 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.df, %bb.x ], [ %.pn.pn, %bb.ak ], [ %.pn.pn.pn.pn.pn130, %bb.al ], [ %i.dh, %bb.y ] ; 2 uses
  %i.fa = load ptr, ptr %i.ca, align 8, !tbaa !65 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.cb
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body87
  %i.fc = load i64, ptr %i.cb, align 8, !tbaa !66
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.t
  %.pn48.pn = phi { ptr, i32 } [ %i.cn, %bb.t ], [ %.pn48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %.pn48, %.body87 ] ; 2 uses
  %i.fe = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 3 uses
  %.not.i105 = icmp eq ptr %i.fe, null
  br i1 %.not.i105, label %_ZNSt10unique_ptrIN3gmx24ITemperatureCouplingImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx24ITemperatureCouplingImplEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx24ITemperatureCouplingImplEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe) #34, !inline_history !0
  br label %_ZNSt10unique_ptrIN3gmx24ITemperatureCouplingImplESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx24ITemperatureCouplingImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt14default_deleteIN3gmx24ITemperatureCouplingImplEEclEPS1_.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !59 ; 2 uses
  %.not.i106 = icmp eq ptr %i.fj, null
  br i1 %.not.i106, label %_ZNSt14_Function_baseD2Ev.exit107, label %bb.as

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN3gmx24ITemperatureCouplingImplESt14default_deleteIS1_EED2Ev.exit
  %i.fk = invoke noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit107 unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit107:                ; preds = %_ZNSt10unique_ptrIN3gmx24ITemperatureCouplingImplESt14default_deleteIS1_EED2Ev.exit, %bb.as
  %i.fn = load ptr, ptr %i.br, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit107
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !69
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.au, %_ZNSt14_Function_baseD2Ev.exit107, %bb.s
  %i.ft = phi ptr [ %i.am, %bb.s ], [ %i.bv, %_ZNSt14_Function_baseD2Ev.exit107 ], [ %i.bv, %bb.au ]
  %i.fu = phi ptr [ %i.z, %bb.s ], [ %i.bs, %_ZNSt14_Function_baseD2Ev.exit107 ], [ %i.bs, %bb.au ] ; 2 uses
  %.pn48.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.s ], [ %.pn48.pn, %_ZNSt14_Function_baseD2Ev.exit107 ], [ %.pn48.pn, %bb.au ] ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i109 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i109, label %.body74, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !71
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #35
  br label %.body74

.body74:                                          ; preds = %bb.av, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.n, %bb.m
  %i.gb = phi ptr [ %i.z, %bb.m ], [ %i.fu, %bb.av ], [ %i.z, %bb.n ], [ %i.fu, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %.pn48.pn.pn, %bb.av ], [ %i.ar, %bb.n ], [ %.pn48.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i111, label %.body63, label %bb.aw

bb.aw:                                            ; preds = %.body74
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !71
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #35
  br label %.body63

.body63:                                          ; preds = %bb.aw, %.body74, %bb.j, %bb.i
  %.pn48.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %.pn48.pn.pn.pn, %bb.aw ], [ %i.ae, %bb.j ], [ %.pn48.pn.pn.pn, %.body74 ] ; 2 uses
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !70  ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i114, label %.body, label %bb.ax

bb.ax:                                            ; preds = %.body63
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !71
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gn) #35
  br label %.body

.body:                                            ; preds = %bb.ax, %.body63, %bb.f, %bb.e
  %.pn48.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %.pn48.pn.pn.pn.pn, %bb.ax ], [ %i.r, %bb.f ], [ %.pn48.pn.pn.pn.pn, %.body63 ]
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn

bb.ay:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !87
end_hunk_0
