inline.NumInlined: 493
inline.NumDeleted: 293
begin_hunk_0_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::vector.10", align 8    ; 10 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 10 uses
  %6 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 9 uses
  %7 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %_ZN5arrow7compute9InputType8CopyIntoERKS1_.exit.i
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ap ], [ %i.be, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #20
  br label %.loopexit.i

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.au, %bb.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ep = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
          to label %.noexc12 unwind label %11     ; 3 uses

.noexc12:                                         ; preds = %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit
  store ptr %i.ep, ptr %0, align 8, !tbaa !101
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
  %.not.i.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread44, %_ZSt10_ConstructISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.fb = phi ptr [ %i.es, %_ZSt10_ConstructISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread44 ], [ %.pre, %_ZSt10_ConstructISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal17GetExtensionCastsEv:._crit_edge.i.i
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

11:                                               ; preds = %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEC2ERKS4_.exit
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %11
  %.pn4 = phi { ptr, i32 } [ %12, %11 ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  resume { ptr, i32 } %.pn4
}
end_hunk_6
begin_hunk_7_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !100    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d
end_hunk_8
begin_hunk_9_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !39
  store i8 %i.t, ptr %i.s, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
end_hunk_9
begin_hunk_10_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p
end_hunk_10
begin_hunk_11_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %5 = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_11
