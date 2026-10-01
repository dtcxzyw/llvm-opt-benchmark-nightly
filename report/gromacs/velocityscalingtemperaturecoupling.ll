Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/velocityscalingtemperaturecoupling?download=true
inline.NumInlined: 2388
inline.NumDeleted: 1387
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx34VelocityScalingTemperatureCoupling22restoreCheckpointStateESt8optionalINS_14CheckpointDataILNS_23CheckpointDataOperationE0EEEERKNS_7MpiCommEP12gmx_domdec_t:bb.a
.critedge31:                                      ; preds = %bb.m, %.critedge30
  %.pn45 = phi { ptr, i32 } [ %lpad.phi42, %.critedge30 ], [ %lpad.thr_comm.split-lp, %bb.m ]
  resume { ptr, i32 } %.pn45
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
          to label %.noexc77 unwind label %bb.r   ; 4 uses

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
          to label %.noexc79 unwind label %bb.s   ; 2 uses

.noexc79:                                         ; preds = %.noexc.i78
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
  switch i32 %12, label %bb.aa [
    i32 6, label %bb.p
    i32 1, label %bb.u
    i32 2, label %bb.x
  ]

bb.p:                                             ; preds = %.noexc79
  %i.ci = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36
          to label %bb.q unwind label %bb.t       ; 4 uses

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx27VRescaleTemperatureCouplingE, i64 16), ptr %i.ci, align 8, !tbaa !64, !noalias !219
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %5, ptr %i.cj, align 8, !tbaa !112, !noalias !219
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !noalias !219
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.ci, ptr %i.bz, align 8, !tbaa !67
  %.not.i.i.i81 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i81, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.r:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.s:                                             ; preds = %.noexc.i78
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.t:                                             ; preds = %bb.p
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.u:                                             ; preds = %.noexc79
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %bb.v unwind label %bb.w       ; 3 uses

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx28BerendsenTemperatureCouplingE, i64 16), ptr %i.cp, align 8, !tbaa !64, !noalias !220
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false), !noalias !220
  %i.cr = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
  store ptr %i.cp, ptr %i.bz, align 8, !tbaa !67
  %.not.i.i.i83 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i83, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN3gmx27VRescaleTemperatureCouplingESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.w:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.x:                                             ; preds = %.noexc79
  %i.ct = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36
          to label %.noexc86 unwind label %bb.z   ; 3 uses

.noexc86:                                         ; preds = %bb.x
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !113, !noalias !221
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !70, !noalias !221 ; 3 uses
  %i.cw = load ptr, ptr %i.bt, align 8, !tbaa !105, !noalias !221
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cz
  %i.db = load ptr, ptr %i.bs, align 8, !tbaa !70, !noalias !221 ; 3 uses
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !105, !noalias !221
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.df
  invoke void @_ZN3gmx29NoseHooverTemperatureCouplingC2EiNS_8ArrayRefIKfEES3_(ptr noundef nonnull align 8 dereferenceable(112) %i.ct, i32 noundef %i.cu, ptr %i.cv, ptr %i.da, ptr %i.db, ptr %i.dg)
          to label %_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.y, !noalias !221

bb.y:                                             ; preds = %.noexc86
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef 112) #35, !noalias !221
  br label %.body87

_ZSt11make_uniqueIN3gmx29NoseHooverTemperatureCouplingEJRKiRSt6vectorIfSaIfEERKS6_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc86
  %i.di = load ptr, ptr %i.bz, align 8, !tbaa !67 ; 2 uses
end_hunk_0
