Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/firstorderpressurecoupling?download=true
inline.NumInlined: 1489
inline.NumDeleted: 920
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx20ExceptionInitializerD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #29
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !147
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE2atERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !237  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !237  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !254 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !0

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !237  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !146
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx17KeyValueTreeValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  ret ptr %i.x
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #7

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !426
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !147
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !264  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !264
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !239
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !426
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26FirstOrderPressureCouplingC2EiifPNS_19StatePropagatorDataEPNS_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS_7MDAtomsEP6t_nrnbNS_33ReportPreviousStepConservedEnergyE(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::function.325", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN3gmx26FirstOrderPressureCouplingE, i64 16), ptr %0, align 8, !tbaa !239
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx26FirstOrderPressureCouplingE, i64 96), ptr %i.b, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 204
  %i.e = load i32, ptr %i.d, align 4, !tbaa !429  ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %3, ptr %i.f, align 4, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %i.h, align 4, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !430
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.k, i8 0, i64 36, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.m, align 8, !tbaa !234
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %10, ptr %i.n, align 8, !tbaa !431
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.o, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %5, ptr %i.p, align 8, !tbaa !208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %6, ptr %i.q, align 8, !tbaa !231
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %7, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %8, ptr %i.s, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %9, ptr %i.t, align 8, !tbaa !203
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.v = invoke noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef %i.e)
          to label %bb.b unwind label %13         ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !236
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.y, ptr %i.a, align 8, !tbaa !47
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.m   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i
  store ptr %i.aa, ptr %11, align 8, !tbaa !146
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !147
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.d
  %i.ac = phi ptr [ %i.aa, %.noexc21 ], [ %i.w, %bb.d ] ; 2 uses
  switch i64 %i.y, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !147
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !147
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.v, i64 %i.y, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !237
  %i.ag = load ptr, ptr %11, align 8, !tbaa !146
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 27)
          to label %.noexc22 unwind label %bb.n   ; 6 uses

.noexc22:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  store ptr %i.aj, ptr %i.u, align 8, !tbaa !236, !alias.scope !432
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !146 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %.noexc22
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !237 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc22
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !146, !alias.scope !432
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !147
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !147, !alias.scope !432
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !237
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.as = phi i64 [ %i.ao, %bb.h ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.as, ptr %i.au, align 8, !tbaa !237, !alias.scope !432
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !146
  store i64 0, ptr %i.at, align 8, !tbaa !237
  store i8 0, ptr %i.al, align 8, !tbaa !147
  %i.av = load ptr, ptr %11, align 8, !tbaa !146  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.w
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.i
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !147
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bc, align 8
  store i64 %i.az, ptr %12, align 8, !tbaa !46
  store ptr @"_ZNSt17_Function_handlerIFfldEZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E9_M_invokeERKSt9_Any_dataOlOd", ptr %i.bb, align 8, !tbaa !434
  store ptr @"_ZNSt17_Function_handlerIFfldEZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation", ptr %i.ba, align 8, !tbaa !49
  invoke void @_ZN3gmx10EnergyData30addConservedEnergyContributionEOSt8functionIFfldEE(ptr noundef nonnull align 8 dereferenceable(552) %5, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  ret void

13:                                               ; preds = %bb.a
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.m:                                             ; preds = %.noexc.i, %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.n:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %11, align 8, !tbaa !146  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.w
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  %i.bl = load i64, ptr %i.w, align 8, !tbaa !147
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %13
  %.pn.pn = phi { ptr, i32 } [ %14, %13 ], [ %i.bh, %bb.m ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.bi, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bo, null
  br i1 %.not.i27, label %_ZNSt14_Function_baseD2Ev.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit28 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit28:                 ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.bs = load ptr, ptr %i.u, align 8, !tbaa !146 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aj
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt14_Function_baseD2Ev.exit28
  %i.bu = load i64, ptr %i.aj, align 8, !tbaa !147
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt14_Function_baseD2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn19 = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.bn, %_ZNSt14_Function_baseD2Ev.exit28 ]
  resume { ptr, i32 } %.pn19
}

declare noundef ptr @_Z17enumValueToString16PressureCoupling(i32 noundef) local_unnamed_addr #12

declare void @_ZN3gmx10EnergyData30addConservedEnergyContributionEOSt8functionIFfldEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfldEZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E9_M_invokeERKSt9_Any_dataOlOd"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree nonnull readonly align 8 captures(none) %2) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !436   ; 3 uses
  %.val3 = load i64, ptr %1, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.b = load i64, ptr %i.a, align 8, !tbaa !234
  %i.c = icmp eq i64 %.val3, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %or.cond.i.i.i.i = select i1 %i.c, i1 %i.f, i1 false
  %.0.in.in.v.i.i.i.i = select i1 %or.cond.i.i.i.i, i64 136, i64 128
  %.0.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.0.in.in.v.i.i.i.i
  %.0.in.i.i.i.i = load double, ptr %.0.in.in.i.i.i.i, align 8, !tbaa !235
  %.0.i.i.i.i = fptrunc double %.0.in.i.i.i.i to float
  ret float %.0.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfldEZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3gmx26FirstOrderPressureCouplingC1EiifPNS_19StatePropagatorDataEPNS_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS_7MDAtomsEP6t_nrnbNS_33ReportPreviousStepConservedEnergyEE3$_0", ptr %0, align 8, !tbaa !205
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !206
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !46
  store i64 %.val.i, ptr %0, align 8, !tbaa !46
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3gmx26FirstOrderPressureCouplingC1EiifPNS1_19StatePropagatorDataEPNS1_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS1_7MDAtomsEP6t_nrnbNS1_33ReportPreviousStepConservedEnergyEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3gmx26FirstOrderPressureCoupling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerEiNS_33ReportPreviousStepConservedEnergyE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::unique_ptr.332", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !476  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load double, ptr %i.d, align 8, !tbaa !477
  %i.f = load i32, ptr %i.c, align 4, !tbaa !478
  %i.g = sitofp i32 %i.f to double
  %i.h = fmul double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.k = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #31, !noalias !479 ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !264, !noalias !479
  %i.m = fptrunc double %i.h to float
  %i.n = load ptr, ptr %0, align 8, !tbaa !480, !noalias !479
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !481, !noalias !479
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !482, !noalias !479
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !483, !noalias !479
  invoke void @_ZN3gmx26FirstOrderPressureCouplingC1EiifPNS_19StatePropagatorDataEPNS_10EnergyDataEP8_IO_FILEPK10t_inputrecPKNS_7MDAtomsEP6t_nrnbNS_33ReportPreviousStepConservedEnergyE(ptr noundef nonnull align 8 dereferenceable(240) %i.k, i32 noundef %i.l, i32 noundef %7, float noundef %i.m, ptr noundef %2, ptr noundef %3, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q, i32 noundef %8)
          to label %_ZSt11make_uniqueIN3gmx26FirstOrderPressureCouplingEJRKiRidRPNS0_19StatePropagatorDataERPNS0_10EnergyDataERP8_IO_FILERPK10t_inputrecRPNS0_7MDAtomsERP6t_nrnbRNS0_33ReportPreviousStepConservedEnergyEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !479

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 240) #29, !noalias !479
  br label %common.resume

_ZSt11make_uniqueIN3gmx26FirstOrderPressureCouplingEJRKiRidRPNS0_19StatePropagatorDataERPNS0_10EnergyDataERP8_IO_FILERPK10t_inputrecRPNS0_7MDAtomsERP6t_nrnbRNS0_33ReportPreviousStepConservedEnergyEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.k, ptr %9, align 8, !tbaa !46, !alias.scope !479
  %i.s = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_26FirstOrderPressureCouplingEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZSt11make_uniqueIN3gmx26FirstOrderPressureCouplingEJRKiRidRPNS0_19StatePropagatorDataERPNS0_10EnergyDataERP8_IO_FILERPK10t_inputrecRPNS0_7MDAtomsERP6t_nrnbRNS0_33ReportPreviousStepConservedEnergyEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.t = load ptr, ptr %9, align 8, !tbaa !46     ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx26FirstOrderPressureCouplingESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !146  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 224 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNKSt14default_deleteIN3gmx26FirstOrderPressureCouplingEEclEPS1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !147
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #29
  br label %_ZNKSt14default_deleteIN3gmx26FirstOrderPressureCouplingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx26FirstOrderPressureCouplingEEclEPS1_.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 240) #29
  br label %_ZNSt10unique_ptrIN3gmx26FirstOrderPressureCouplingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx26FirstOrderPressureCouplingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx26FirstOrderPressureCouplingEEclEPS1_.exit.i
  ret ptr %i.s

bb.e:                                             ; preds = %_ZSt11make_uniqueIN3gmx26FirstOrderPressureCouplingEJRKiRidRPNS0_19StatePropagatorDataERPNS0_10EnergyDataERP8_IO_FILERPK10t_inputrecRPNS0_7MDAtomsERP6t_nrnbRNS0_33ReportPreviousStepConservedEnergyEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx26FirstOrderPressureCouplingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_26FirstOrderPressureCouplingEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.332", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !492    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !46
  store ptr null, ptr %1, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !495  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !496
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !46
  store ptr %i.g, ptr %i.d, align 8, !tbaa !498
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !495
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_26FirstOrderPressureCouplingES3_IS9_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !499  ; 9 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

end_hunk_0
