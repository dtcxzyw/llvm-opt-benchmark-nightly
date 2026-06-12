inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051214FormatDurationB5cxx11ENS0_8DurationE:bb.a
  %.sroa.2116.0.copyload = phi i32 [ %.fca.1.extract118, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit ], [ %2, %bb.c ] ; 6 uses
  %.sroa.0115.0.copyload = phi i64 [ %.fca.0.extract117, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit ], [ %1, %bb.c ] ; 3 uses
  %i.o = icmp eq i64 %.sroa.0115.0.copyload, 9223372036854775807
  %i.p = icmp eq i32 %.sroa.2116.0.copyload, -1   ; 2 uses
  %spec.select.i153 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %spec.select.i153, label %bb.g, label %bb.i

bb.g:                                             ; preds = %thread-pre-split
  %i.q = load i64, ptr %i.b, align 8, !tbaa !14
  %i.r = add i64 %i.q, -4611686018427387901
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i154

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc155 unwind label %bb.b

.noexc155:                                        ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i154: ; preds = %bb.g
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157 unwind label %bb.b ; 0 uses

bb.i:                                             ; preds = %thread-pre-split
  %i.u = icmp slt i64 %.sroa.0115.0.copyload, 1
  br i1 %i.u, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit161, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit159.thread

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit161: ; preds = %bb.i
  %i.v = icmp ult i32 %.sroa.2116.0.copyload, 4000
  br i1 %i.v, label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit164

_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit: ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit161
  %i.w = uitofp nneg i32 %.sroa.2116.0.copyload to double
  %i.x = fmul nnan double %i.w, 2.500000e-01
  br label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit164: ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit161
  %i.y = icmp ult i32 %.sroa.2116.0.copyload, 4000000
  %i.z = uitofp i32 %.sroa.2116.0.copyload to double ; 2 uses
  br i1 %i.y, label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit168, label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit172

_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit168: ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit164
  %i.aa = fdiv double %i.z, 4.000000e+03
  br label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke

_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit172: ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit164
  %i.ab = fdiv double %i.z, 4.000000e+06
  %.0.i170 = select i1 %i.p, double +inf, double %i.ab
  br label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit159.thread: ; preds = %bb.i
  %i.ac = call noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64 %.sroa.0115.0.copyload, i32 %.sroa.2116.0.copyload, i64 3600, i32 0, ptr noundef nonnull %3)
  invoke fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS1_11DisplayUnitE(ptr noundef nonnull %0, i64 noundef %i.ac, i64 1, ptr nonnull @.str.9)
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit159.thread
  %.sroa.019.0.copyload = load i64, ptr %3, align 8
  %.sroa.220.0.copyload = load i32, ptr %.sroa.2149.0..sroa_idx, align 8, !tbaa !3
  %i.ad = call noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64 %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload, i64 60, i32 0, ptr noundef nonnull %3)
  invoke fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS1_11DisplayUnitE(ptr noundef nonnull %0, i64 noundef %i.ad, i64 1, ptr nonnull @.str.10)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  %.sroa.07.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.28.0.copyload = load i32, ptr %.sroa.2149.0..sroa_idx, align 8, !tbaa !3 ; 2 uses
  %i.ae = icmp eq i32 %.sroa.28.0.copyload, -1
  br i1 %i.ae, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.i175, label %bb.l

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.i175: ; preds = %bb.k
  %i.af = icmp slt i64 %.sroa.07.0.copyload, 0
  %i.ag = select i1 %i.af, double -inf, double +inf
  br label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke

bb.l:                                             ; preds = %bb.k
  %i.ah = sitofp i64 %.sroa.07.0.copyload to double
  %i.ai = uitofp i32 %.sroa.28.0.copyload to double
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double 4.000000e+09, double %i.ai)
  %i.ak = fdiv double %i.aj, 4.000000e+09
  br label %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke

_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke: ; preds = %bb.l, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.i175, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit168, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit172
  %i.al = phi double [ %i.x, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit ], [ %.0.i170, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit172 ], [ %i.aa, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit168 ], [ %i.ag, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.i175 ], [ %i.ak, %bb.l ]
  %i.am = phi ptr [ @_ZN4absl12lts_2025051212_GLOBAL__N_112kDisplayNanoE, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit ], [ @_ZN4absl12lts_2025051212_GLOBAL__N_113kDisplayMilliE, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit172 ], [ @_ZN4absl12lts_2025051212_GLOBAL__N_113kDisplayMicroE, %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit168 ], [ @_ZN4absl12lts_2025051212_GLOBAL__N_111kDisplaySecE, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.i175 ], [ @_ZN4absl12lts_2025051212_GLOBAL__N_111kDisplaySecE, %bb.l ]
  invoke fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS1_11DisplayUnitE(ptr noundef nonnull %0, double noundef %i.al, ptr noundef nonnull byval(%"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit") align 8 %i.am)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157: ; preds = %_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_.exit176.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i154
  %i.an = load i64, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  switch i64 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit [
    i64 0, label %.invoke
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157
  %i.ao = load ptr, ptr %0, align 8, !tbaa !18
  %lhsc = load i8, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %lhsc, 45
  br i1 %i.ap, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.invoke:                                          ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157
  %i.aq = phi i64 [ %i.an, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157 ], [ 0, %bb.a ]
  %i.ar = phi ptr [ @.str.3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ @.str.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157 ], [ @.str, %bb.a ]
  %i.as = phi i64 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157 ], [ 23, %bb.a ]
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.aq, ptr noundef nonnull %i.ar, i64 noundef %i.as)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit157, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS1_11DisplayUnitE(ptr noundef %0, double noundef %1, ptr nofree noundef readonly byval(%"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit") align 8 captures(none) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.c, i32 15) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 4 uses
  %i.e = tail call { double, double } @llvm.modf.f64(double %1) ; 2 uses
  %i.f = extractvalue { double, double } %i.e, 0
  %i.g = extractvalue { double, double } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !19
  %i.j = fmul double %i.f, %i.i
  %i.k = tail call double @llvm.round.f64(double %i.j)
  %i.l = fptosi double %i.k to i64                ; 2 uses
  %i.m = fptosi double %i.g to i64                ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne i64 %i.l, 0                      ; 2 uses
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %scevgep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv17.i = phi i32 [ %indvars.iv.next.i, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep16.i, %bb.c ], [ %scevgep15.i, %bb.b ] ; 2 uses
  %.07.i = phi ptr [ %i.t, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.06.i = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]  ; 3 uses
  %.0.i = phi i64 [ %i.u, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.p = add i32 %.06.i, -1                       ; 2 uses
  %i.q = srem i64 %.0.i, 10
  %i.r = trunc nsw i64 %i.q to i8
  %i.s = add nsw i8 %i.r, 48
  %i.t = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 3 uses
  store i8 %i.s, ptr %i.t, align 1, !tbaa !17
  %i.u = sdiv i64 %.0.i, 10
  %.0.off.i = add i64 %.0.i, 9
  %.not.i = icmp ult i64 %.0.off.i, 19
  %scevgep16.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv17.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !23

.preheader.i:                                     ; preds = %bb.c
  %i.v = icmp sgt i32 %.06.i, 1
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.w = getelementptr i8, ptr %.07.i, i64 -2
  %i.x = add nsw i32 %.06.i, -2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %scevgep.i = getelementptr i8, ptr %i.w, i64 %i.z
  %i.aa = zext nneg i32 %i.p to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.aa, i1 false), !tbaa !17
  %i.ab = zext i32 %indvars.iv17.i to i64
  %i.ac = sub nsw i64 0, %i.ab
  %scevgep18.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.ac
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %.18.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %scevgep18.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ad = ptrtoint ptr %i.d to i64
  %i.ae = ptrtoint ptr %.18.lcssa.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.18.lcssa.i, i64 noundef %i.af) ; 0 uses
  br i1 %i.o, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !14 ; 4 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %3 = load i64, ptr %i.ao, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %4 = phi i64 [ %3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %bb.f ]
  %i.ar = icmp ugt i64 %i.am, %4
  br i1 %i.ar, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.al, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.g
  %i.as = phi ptr [ %.pre.i, %bb.g ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.al
  store i8 46, ptr %i.at, align 1, !tbaa !17
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !14
  %i.au = load ptr, ptr %0, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !17
  %i.aw = add i32 %.sroa.speculated, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %indvars.iv17.i24 = phi i32 [ %indvars.iv.next.i32, %bb.h ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %indvars.iv.i25 = phi ptr [ %scevgep16.i31, %bb.h ], [ %scevgep15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %.07.i26 = phi ptr [ %i.bb, %bb.h ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 2 uses
  %.06.i27 = phi i32 [ %i.ax, %bb.h ], [ %.sroa.speculated, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 3 uses
  %.0.i28 = phi i64 [ %i.bc, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 3 uses
  %i.ax = add i32 %.06.i27, -1                    ; 2 uses
  %i.ay = srem i64 %.0.i28, 10
  %i.az = trunc nsw i64 %i.ay to i8
  %i.ba = add nsw i8 %i.az, 48
  %i.bb = getelementptr inbounds i8, ptr %.07.i26, i64 -1 ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !17
  %i.bc = sdiv i64 %.0.i28, 10
  %.0.off.i29 = add i64 %.0.i28, 9
  %.not.i30 = icmp ult i64 %.0.off.i29, 19
  %scevgep16.i31 = getelementptr i8, ptr %indvars.iv.i25, i64 -1
  %indvars.iv.next.i32 = add i32 %indvars.iv17.i24, -1
  br i1 %.not.i30, label %.preheader.i33, label %bb.h, !llvm.loop !23

.preheader.i33:                                   ; preds = %bb.h
  %i.bd = icmp sgt i32 %.06.i27, 1
  br i1 %i.bd, label %.lr.ph.preheader.i35, label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38

.lr.ph.preheader.i35:                             ; preds = %.preheader.i33
  %i.be = getelementptr i8, ptr %.07.i26, i64 -2
  %i.bf = add nsw i32 %.06.i27, -2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = sub nsw i64 0, %i.bg
  %scevgep.i36 = getelementptr i8, ptr %i.be, i64 %i.bh
  %i.bi = zext nneg i32 %i.ax to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i36, i8 48, i64 %i.bi, i1 false), !tbaa !17
  %i.bj = zext i32 %indvars.iv17.i24 to i64
  %i.bk = sub nsw i64 0, %i.bj
  %scevgep18.i37 = getelementptr i8, ptr %indvars.iv.i25, i64 %i.bk
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38

_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38: ; preds = %.preheader.i33, %.lr.ph.preheader.i35
  %.18.lcssa.i34 = phi ptr [ %i.bb, %.preheader.i33 ], [ %scevgep18.i37, %.lr.ph.preheader.i35 ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38
  %.0 = phi ptr [ %i.d, %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit38 ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = icmp eq i8 %i.bm, 48
  br i1 %i.bn, label %bb.i, label %bb.j, !llvm.loop !25

bb.j:                                             ; preds = %bb.i
  %i.bo = ptrtoint ptr %.0 to i64
  %i.bp = ptrtoint ptr %.18.lcssa.i34 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.bs = sub i64 4611686018427387903, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit39

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit39: ; preds = %bb.j
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.18.lcssa.i34, i64 noundef %i.bq) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.bv = load i64, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.bw = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.bx = sub i64 4611686018427387903, %i.bw
  %i.by = icmp ult i64 %i.bx, %i.bv
  br i1 %i.by, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit40

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit40: ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !27
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ca, i64 noundef %i.bv) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS1_11DisplayUnitE(ptr noundef %0, i64 noundef %1, i64 %.0.val, ptr %.8.val) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 3 uses
  %scevgep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv17.i = phi i32 [ %indvars.iv.next.i, %bb.b ], [ -2, %bb.a ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep16.i, %bb.b ], [ %scevgep15.i, %bb.a ] ; 2 uses
  %.07.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.06.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = add i32 %.06.i, -1                       ; 2 uses
  %i.d = srem i64 %.0.i, 10
  %i.e = trunc nsw i64 %i.d to i8
  %i.f = add nsw i8 %i.e, 48                      ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 3 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !17
  %i.h = sdiv i64 %.0.i, 10
  %.0.off.i = add i64 %.0.i, 9
  %.not.i = icmp ult i64 %.0.off.i, 19
  %scevgep16.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv17.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.b, !llvm.loop !23

.preheader.i:                                     ; preds = %bb.b
  %i.i = icmp sgt i32 %.06.i, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = getelementptr i8, ptr %.07.i, i64 -2
  %i.k = add nsw i32 %.06.i, -2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %scevgep.i = getelementptr i8, ptr %i.j, i64 %i.m
  %i.n = zext nneg i32 %i.c to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.n, i1 false), !tbaa !17
  %i.o = zext i32 %indvars.iv17.i to i64
  %i.p = sub nsw i64 0, %i.o
  %scevgep18.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.p ; 2 uses
  %.pre = load i8, ptr %scevgep18.i, align 1, !tbaa !17
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.q = phi i8 [ %i.f, %.preheader.i ], [ %.pre, %.lr.ph.preheader.i ]
  %.18.lcssa.i = phi ptr [ %i.g, %.preheader.i ], [ %scevgep18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.not = icmp eq i8 %i.q, 48
  %i.r = getelementptr inbounds nuw i8, ptr %.18.lcssa.i, i64 1
  %.not9 = icmp eq ptr %i.r, %i.b
  %or.cond = select i1 %.not, i1 %.not9, i1 false
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %.18.lcssa.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.u
  br i1 %i.y, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.c
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.18.lcssa.i, i64 noundef %i.u) ; 0 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !14
  %i.ab = sub i64 4611686018427387903, %i.aa
  %i.ac = icmp ult i64 %i.ab, %.0.val
  br i1 %i.ac, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit10

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.8.val, i64 noundef %.0.val) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
end_hunk_0
