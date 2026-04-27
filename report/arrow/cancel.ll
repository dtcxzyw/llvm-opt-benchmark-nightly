inline.NumInlined: 985
inline.NumDeleted: 561
begin_hunk_0
@_ZTSSt19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE = internal constant [102 x i8] c"St19__shared_ptr_accessIN5arrow12_GLOBAL__N_115SignalStopStateELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE\00", align 1
@_ZTIZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_ = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_ }, align 8
@_ZTSZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_ = internal constant [53 x i8] c"ZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlvE_\00", align 1
@_ZTIv = external local_unnamed_addr constant ptr
@_ZTISt12bad_any_cast = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12bad_any_cast, ptr @_ZTISt8bad_cast }, comdat, align 8
@_ZTSSt12bad_any_cast = linkonce_odr constant [17 x i8] c"St12bad_any_cast\00", comdat, align 1
@_ZTISt8bad_cast = external constant ptr
end_hunk_0
begin_hunk_1_@_ZN5arrow31RegisterCancellingSignalHandlerERKSt6vectorIiSaIiEE:bb.a
  br i1 %i.ct, label %.critedge.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i
  %.sroa.057.066.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.cs, %bb.ar ] ; 2 uses
  %i.cu = load i32, ptr %.sroa.057.066.i, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !71
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_115SignalStopState18UnregisterHandlersEv:bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.051.059 = phi ptr [ %i.e, %.lr.ph ], [ %i.ao, %_ZN5arrow6StatusD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.p = load i32, ptr %.sroa.051.059, align 8, !tbaa !118
end_hunk_2
begin_hunk_3_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_115SignalStopStateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a

_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17.i.i.i, %bb.as, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.a = load ptr, ptr %i.dk, align 8    ; 3 uses
  %.not.i.i.i19.i.i.i = icmp eq ptr %.val.i.i.i.a, null
  br i1 %.not.i.i.i19.i.i.i, label %_ZNSt6vectorIN5arrow12_GLOBAL__N_115SignalStopState18SavedSignalHandlerESaIS3_EED2Ev.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow10StopSourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i.i.i = load ptr, ptr %i.dl, align 8
  %i.dm = ptrtoint ptr %.val1.i.i.i to i64
  %i.dn = ptrtoint ptr %.val.i.i.i.a to i64
  %i.do = sub i64 %i.dm, %i.dn
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvSt3anyEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlS0_E_E9_M_invokeERKSt9_Any_dataOS0_:bb.a
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i.i.i.i:               ; preds = %bb.f, %bb.d, %.thread.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.f ], [ @_ZTIv, %bb.d ], [ @_ZTIv, %.thread.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171, !noalias !196 ; 3 uses
  %i.k = icmp eq ptr %i.j, @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvSt3anyEZN5arrow12_GLOBAL__N_115SignalStopState4InitEvEUlS0_E0_E9_M_invokeERKSt9_Any_dataOS0_:bb.a
  unreachable

_ZNKSt3any4typeEv.exit.i.i.i.i.i.i:               ; preds = %bb.f, %bb.d, %.thread.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.f ], [ @_ZTIv, %bb.d ], [ @_ZTIv, %.thread.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171, !noalias !200 ; 3 uses
  %i.k = icmp eq ptr %i.j, @_ZTSSt10shared_ptrIN5arrow12_GLOBAL__N_115SignalStopStateEE
end_hunk_5
