inline.NumInlined: 985
inline.NumDeleted: 561
begin_hunk_0_@_ZN5arrow31RegisterCancellingSignalHandlerERKSt6vectorIiSaIiEE:bb.a
.lr.ph.i:                                         ; preds = %_ZN5arrow12_GLOBAL__N_115SignalStopState26SpawnSignalReceivingThreadEv.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %_ZZN5arrow12_GLOBAL__N_115SignalStopState8instanceEvE8instance.val.i, i64 72 ; 3 uses
  br label %bb.as

bb.ar:                                            ; preds = %_ZN5arrow6ResultINS_8internal13SignalHandlerEED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZN5arrow31RegisterCancellingSignalHandlerERKSt6vectorIiSaIiEE:bb.a
bb.ba:                                            ; preds = %bb.ay
  %.val16.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !107, !noalias !71 ; 5 uses
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = ptrtoint ptr %.val16.i.i.i.i to i64     ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775680
  br i1 %i.dg, label %bb.bb, label %_ZNKSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5arrow31RegisterCancellingSignalHandlerERKSt6vectorIiSaIiEE:bb.a
  br i1 %.not.i27.i.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i
  %6 = load ptr, ptr %i.cr, align 8, !tbaa !105, !noalias !71
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i.i.i, i64 noundef %8) #29
  br label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFSt3anyvEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation:bb.a

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %3 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val8.i = load ptr, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.b = load <2 x ptr>, ptr %.val6, align 8, !tbaa !46
  store <2 x ptr> %i.b, ptr %3, align 8, !tbaa !46
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val8.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i, label %bb.e
end_hunk_3
begin_hunk_4_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !174  ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d
end_hunk_5
begin_hunk_6_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %5

5:                                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %6 = load ptr, ptr %0, align 8, !tbaa !69       ; 2 uses
  %cond30 = icmp eq i64 %1, 1
  br i1 %cond30, label %bb.i, label %bb.j

bb.i:                                             ; preds = %5
  %i.t = load i8, ptr %6, align 1, !tbaa !25
  store i8 %i.t, ptr %i.s, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %6, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
end_hunk_6
begin_hunk_7_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !69    ; 3 uses
  br i1 %.not25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %7 = icmp eq ptr %.pre, %i.h
  br i1 %7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %8 = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ad = add i64 %8, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_8
