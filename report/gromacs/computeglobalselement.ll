Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/computeglobalselement?download=true
inline.NumInlined: 1335
inline.NumDeleted: 789
begin_hunk_0_@_ZThn8_N3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE22registerEnergyCallbackENS_20EnergySignallerEventE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !246
  %i.e = ptrtoint ptr %i.a to i64
  store i64 %i.e, ptr %0, align 8, !tbaa !241, !alias.scope !246
  store ptr %_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE0EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E9_M_invokeERKSt9_Any_dataOlOd.sink.i, ptr %i.c, align 8, !tbaa !242, !alias.scope !246
  store ptr %_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE0EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.sink.i, ptr %i.b, align 8, !tbaa !182, !alias.scope !246
  br label %_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE22registerEnergyCallbackENS_20EnergySignallerEventE.exit

_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE22registerEnergyCallbackENS_20EnergySignallerEventE.exit: ; preds = %bb.a, %.sink.split.i
  %.sink.i = phi i8 [ 0, %bb.a ], [ 1, %.sink.split.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink.i, ptr %i.f, align 8, !tbaa !244, !alias.scope !246
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr void @_ZThn16_N3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EED1Ev(ptr noundef %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EED1Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr void @_ZThn16_N3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EED0Ev(ptr noundef %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EED1Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(480) %i.a, i64 noundef 480) #27
  ret void
}

; Function Attrs: uwtable
define weak_odr void @_ZThn16_N3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE35registerTrajectorySignallerCallbackENS_15TrajectoryEventE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE35registerTrajectorySignallerCallbackENS_15TrajectoryEventE.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !alias.scope !249
  %i.f = ptrtoint ptr %i.b to i64
  store i64 %i.f, ptr %0, align 8, !tbaa !241, !alias.scope !249
  store ptr @_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE0EE35registerTrajectorySignallerCallbackENS1_15TrajectoryEventEEUlldE_E9_M_invokeERKSt9_Any_dataOlOd, ptr %i.d, align 8, !tbaa !242, !alias.scope !249
  store ptr @_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE0EE35registerTrajectorySignallerCallbackENS1_15TrajectoryEventEEUlldE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !182, !alias.scope !249
  br label %_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE35registerTrajectorySignallerCallbackENS_15TrajectoryEventE.exit

_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE0EE35registerTrajectorySignallerCallbackENS_15TrajectoryEventE.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !244, !alias.scope !249
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEE(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.266", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %6 = alloca %"class.std::function.266", align 8 ; 11 uses
  %7 = alloca %class.anon.277, align 8            ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !252, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_Z11do_per_stepll.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254  ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_Z11do_per_stepll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.e to i64
  %i.g = srem i64 %1, %i.f
  %i.h = icmp eq i64 %i.g, 0
  br label %_Z11do_per_stepll.exit

_Z11do_per_stepll.exit:                           ; preds = %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ false, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !255
  %i.l = icmp eq i64 %1, %i.k
  br i1 %i.l, label %_Z11do_per_stepll.exit40, label %bb.d

bb.d:                                             ; preds = %_Z11do_per_stepll.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !256
  %i.o = icmp eq i64 %1, %i.n
  %or.cond = or i1 %i.i, %i.o
  br i1 %or.cond, label %_Z11do_per_stepll.exit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !257  ; 2 uses
  %.not.i35 = icmp eq i32 %i.q, 0
  br i1 %.not.i35, label %_Z11do_per_stepll.exit37.thread, label %_Z11do_per_stepll.exit37

_Z11do_per_stepll.exit37:                         ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = srem i64 %1, %i.r
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_Z11do_per_stepll.exit40, label %_Z11do_per_stepll.exit37.thread

_Z11do_per_stepll.exit37.thread:                  ; preds = %bb.e, %_Z11do_per_stepll.exit37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !258  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !72
  %i.y = and i32 %i.x, -2
  %switch = icmp eq i32 %i.y, 10
  br i1 %switch, label %bb.f, label %_Z11do_per_stepll.exit40

bb.f:                                             ; preds = %_Z11do_per_stepll.exit37.thread
  %i.z = tail call noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef nonnull %i.v)
  br i1 %i.z, label %bb.g, label %_Z11do_per_stepll.exit40

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !257 ; 2 uses
  %.not.i38 = icmp eq i32 %i.aa, 0
  br i1 %.not.i38, label %_Z11do_per_stepll.exit40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %1, -1
  %i.ad = srem i64 %i.ac, %i.ab
  %i.ae = icmp eq i64 %i.ad, 0
  br label %_Z11do_per_stepll.exit40

_Z11do_per_stepll.exit40:                         ; preds = %bb.h, %bb.g, %_Z11do_per_stepll.exit37.thread, %bb.f, %_Z11do_per_stepll.exit37, %bb.d, %_Z11do_per_stepll.exit
  %i.af = phi i1 [ true, %_Z11do_per_stepll.exit37 ], [ true, %_Z11do_per_stepll.exit ], [ true, %bb.d ], [ false, %bb.f ], [ false, %_Z11do_per_stepll.exit37.thread ], [ %i.ae, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !259
  %.not = icmp eq i64 %1, %i.ah
  br i1 %.not, label %bb.t, label %bb.i

bb.i:                                             ; preds = %_Z11do_per_stepll.exit40
  store i64 %1, ptr %i.ag, align 8, !tbaa !259
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !257 ; 2 uses
  %.not.i41 = icmp eq i32 %i.aj, 0
  br i1 %.not.i41, label %_ZNSt14_Function_baseD2Ev.exit, label %_Z11do_per_stepll.exit43

_Z11do_per_stepll.exit43:                         ; preds = %bb.j
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %1, -1
  %i.am = srem i64 %i.al, %i.ak
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZNSt14_Function_baseD2Ev.exit

bb.k:                                             ; preds = %_Z11do_per_stepll.exit43, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !260
  %.not32 = icmp eq i64 %1, %i.ap
  br i1 %.not32, label %bb.l, label %_ZNSt8functionIFvvEEC2IZN3gmx21ComputeGlobalsElementILNS3_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKS_IFvS1_EEEUlvE0_vEEOT_.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !258
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 181
  %i.at = load i8, ptr %i.as, align 1, !tbaa !190, !range !65, !noundef !66
  %i.au = shl nuw i8 %i.at, 7
  %i.av = zext i8 %i.au to i32
  br label %_ZNSt8functionIFvvEEC2IZN3gmx21ComputeGlobalsElementILNS3_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKS_IFvS1_EEEUlvE0_vEEOT_.exit

_ZNSt8functionIFvvEEC2IZN3gmx21ComputeGlobalsElementILNS3_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKS_IFvS1_EEEUlvE0_vEEOT_.exit: ; preds = %bb.l, %bb.k
  %i.aw = phi i32 [ 128, %bb.k ], [ %i.av, %bb.l ]
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !255
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.az, align 8
  %i.ba = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 4 uses
  %i.bb = select i1 %i.af, i32 16, i32 0
  %i.bc = icmp eq i64 %1, %i.ax
  %i.bd = select i1 %i.bc, i32 64, i32 0
  %i.be = select i1 %i.i, i32 2824, i32 2816
  %i.bf = or disjoint i32 %i.be, %i.bb
  %i.bg = or i32 %i.bf, %i.aw
  %i.bh = or i32 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.ba, align 16, !tbaa !261
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !263
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i32 %i.bh, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !264
  store ptr %i.ba, ptr %4, align 8, !tbaa !184
  store ptr @_ZNSt17_Function_handlerIFvvEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKSt8functionIFvS5_IS0_EEEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bi, align 8, !tbaa !185
  store ptr @_ZNSt17_Function_handlerIFvvEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKSt8functionIFvS5_IS0_EEEEUlvE0_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.ay, align 8, !tbaa !182
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !182
  %.not.i.i44 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i44, label %bb.m, label %bb.n

common.resume:                                    ; preds = %.body, %bb.q, %bb.r, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN3gmx19SimulationSignallerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.ce, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN3gmx19SimulationSignallerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i ], [ %i.br, %bb.r ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %_ZNSt8functionIFvvEEC2IZN3gmx21ComputeGlobalsElementILNS3_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKS_IFvS1_EEEUlvE0_vEEOT_.exit
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZNSt8functionIFvvEEC2IZN3gmx21ComputeGlobalsElementILNS3_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKS_IFvS1_EEEUlvE0_vEEOT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !187
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit unwind label %bb.q, !inline_history !189

_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit:          ; preds = %bb.n
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !182 ; 2 uses
  %.not.i46 = icmp eq ptr %i.bn, null
  br i1 %.not.i46, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #28
  unreachable

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.ay, align 8, !tbaa !182 ; 2 uses
  %.not.i47 = icmp eq ptr %i.bs, null
  br i1 %.not.i47, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #28
  unreachable

bb.t:                                             ; preds = %_Z11do_per_stepll.exit40
  store i64 -1, ptr %i.ag, align 8, !tbaa !259
  br i1 %i.af, label %bb.u, label %_ZNSt14_Function_baseD2Ev.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.by = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26, !noalias !265 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 1, ptr %i.bz, align 8, !tbaa !164, !noalias !265
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 1, ptr %i.ca, align 4, !tbaa !166, !noalias !265
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN3gmx19SimulationSignallerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.by, align 8, !tbaa !167, !noalias !265
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !169, !noalias !265
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !170, !noalias !265
  invoke void @_ZN3gmx19SimulationSignallerC1EPSt5arrayINS_16SimulationSignalELm3EEPK9t_commrecPK14gmx_multisim_tbb(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, ptr noundef %i.cc, ptr noundef %i.cd, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZSt11make_sharedIN3gmx19SimulationSignallerEJRPSt5arrayINS0_16SimulationSignalELm3EERP9t_commrecDnRKbSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN3gmx19SimulationSignallerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i, !noalias !265

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN3gmx19SimulationSignallerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i: ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 56) #27, !noalias !265
  br label %common.resume

_ZSt11make_sharedIN3gmx19SimulationSignallerEJRPSt5arrayINS0_16SimulationSignalELm3EERP9t_commrecDnRKbSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %0, ptr %7, align 8, !tbaa !268
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.cg, align 8, !tbaa !270
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 528, ptr %i.ch, align 8, !tbaa !271
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !180
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr null, ptr %i.cf, align 8, !tbaa !181
  store ptr %i.by, ptr %i.cj, align 8, !tbaa !181
  store ptr null, ptr %5, align 8, !tbaa !180
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.cl = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %bb.y unwind label %bb.v       ; 4 uses

bb.v:                                             ; preds = %_ZSt11make_sharedIN3gmx19SimulationSignallerEJRPSt5arrayINS0_16SimulationSignalELm3EERP9t_commrecDnRKbSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !182 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i49, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = invoke noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.x      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #28
  unreachable

bb.y:                                             ; preds = %_ZSt11make_sharedIN3gmx19SimulationSignallerEJRPSt5arrayINS0_16SimulationSignalELm3EERP9t_commrecDnRKbSB_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 20, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cb, ptr %i.cs, align 8, !tbaa !180
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr null, ptr %i.cj, align 8, !tbaa !181
  store ptr %i.by, ptr %i.ct, align 8, !tbaa !181
  store ptr null, ptr %i.ci, align 8, !tbaa !180
  store ptr %i.cl, ptr %6, align 8, !tbaa !184
  store ptr @_ZNSt17_Function_handlerIFvvEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKSt8functionIFvS5_IS0_EEEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.cr, align 8, !tbaa !185
  store ptr @_ZNSt17_Function_handlerIFvvEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKSt8functionIFvS5_IS0_EEEEUlvE1_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.ck, align 8, !tbaa !182
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !182
  %.not.i.i51 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i51, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc52 unwind label %bb.ad

.noexc52:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !187
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit54 unwind label %bb.ad, !inline_history !189

_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit54:        ; preds = %bb.aa
  %i.cy = load ptr, ptr %i.ck, align 8, !tbaa !182 ; 2 uses
  %.not.i55 = icmp eq ptr %i.cy, null
  br i1 %.not.i55, label %_ZNSt12__shared_ptrIN3gmx19SimulationSignallerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit54
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt12__shared_ptrIN3gmx19SimulationSignallerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #28
  unreachable

_ZNSt12__shared_ptrIN3gmx19SimulationSignallerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit54, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !182 ; 2 uses
  %.not.i59 = icmp eq ptr %i.dd, null
  br i1 %.not.i59, label %.body, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = invoke noundef zeroext i1 %i.dd(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %.body unwind label %bb.af     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #28
  unreachable

.body:                                            ; preds = %bb.ae, %bb.ad, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %i.dc, %bb.ae ], [ %i.cm, %bb.w ], [ %i.dc, %bb.ad ]
  call void @_ZZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEENUlvE1_D2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZNSt12__shared_ptrIN3gmx19SimulationSignallerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.o, %_ZNKSt8functionIFvS_IFvvEEEEclES1_.exit, %_ZNSt12__shared_ptrIN3gmx19SimulationSignallerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t, %_Z11do_per_stepll.exit43
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE12elementSetupEv(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.gmx::ArrayRefWithPadding", align 16 ; 4 uses
  %2 = alloca %"class.gmx::ArrayRefWithPadding", align 8 ; 6 uses
  %3 = alloca %"class.gmx::ArrayRef", align 16    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !252, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !258
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 181
  %i.g = load i8, ptr %i.f, align 1, !tbaa !190, !range !65, !noundef !66
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !191
  tail call void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE7computeEljPNS_19SimulationSignallerEbb(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef -1, i32 noundef 24, ptr noundef %i.j, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !272
  tail call void @_ZN3gmx18ObservablesReducer19markAsReadyToReduceEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !273
  call void @_ZN3gmx19StatePropagatorData14velocitiesViewEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ArrayRefWithPadding") align 8 %1, ptr noundef nonnull align 8 dereferenceable(632) %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !274
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !273
  call void @_ZN3gmx19StatePropagatorData13positionsViewEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ArrayRefWithPadding") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %i.s)
  %.pre = load ptr, ptr %2, align 8, !tbaa !195
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %.pre10, %bb.e ], [ null, %bb.d ]
  %i.u = phi ptr [ %.pre, %bb.e ], [ null, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !275
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !276
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !200
  %i.aa = load <2 x ptr>, ptr %1, align 16, !tbaa !202
  store <2 x ptr> %i.aa, ptr %3, align 16
  call void @_Z22process_and_stopcm_grpP8_IO_FILEP5t_vcmRK9t_mdatomsN3gmx8ArrayRefINS6_11BasicVectorIfEEEESA_(ptr noundef %i.w, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(648) %i.z, ptr %i.u, ptr %i.t, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !277
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !276
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !200
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 640
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !204
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 736 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !232
  %i.ak = fadd double %i.aj, %i.ah
  store double %i.ak, ptr %i.ai, align 8, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !278
  %i.an = call noundef zeroext i1 @_ZNK3gmx10EnergyData25hasReadEkinFromCheckpointEv(ptr noundef nonnull align 8 dereferenceable(552) %i.am)
  %i.ao = select i1 %i.an, i32 1936, i32 912
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !191
  call void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE7computeEljPNS_19SimulationSignallerEbb(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef -1, i32 noundef %i.ao, ptr noundef %i.aq, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !258
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 744
  %i.au = load i32, ptr %i.at, align 8, !tbaa !234
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !272
  call void @_ZN3gmx18ObservablesReducer19markAsReadyToReduceEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  ret void

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 3 uses
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !278
  %i.az = call noundef ptr @_ZN3gmx10EnergyData8ekindataEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !235
  %i.bc = getelementptr inbounds nuw [144 x i8], ptr %i.bb, i64 %indvars.iv ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !278
  %i.bf = call noundef ptr @_ZN3gmx10EnergyData8ekindataEv(ptr noundef nonnull align 8 dereferenceable(552) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !235
  %i.bi = getelementptr inbounds nuw [144 x i8], ptr %i.bh, i64 %indvars.iv ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 44
  %i.bk = load float, ptr %i.bd, align 4, !tbaa !238
  store float %i.bk, ptr %i.bj, align 4, !tbaa !238
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !238
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store float %i.bm, ptr %i.bn, align 4, !tbaa !238
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !238
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  store float %i.bp, ptr %i.bq, align 4, !tbaa !238
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bt = load float, ptr %i.br, align 4, !tbaa !238
  store float %i.bt, ptr %i.bs, align 4, !tbaa !238
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !238
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 60
  store float %i.bv, ptr %i.bw, align 4, !tbaa !238
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.by = load float, ptr %i.bx, align 4, !tbaa !238
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store float %i.by, ptr %i.bz, align 4, !tbaa !238
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 68
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !238
  store float %i.cc, ptr %i.cb, align 4, !tbaa !238
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !238
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store float %i.ce, ptr %i.cf, align 4, !tbaa !238
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !238
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 76
  store float %i.ch, ptr %i.ci, align 4, !tbaa !238
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load ptr, ptr %i.ar, align 8, !tbaa !258
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 744
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !234
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge, !llvm.loop !279
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE15elementTeardownEv(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #1 comdat($_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EED5Ev) align 2 {
bb.a:
  tail call void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EED1Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN3gmx21ComputeGlobalsElementILNS_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS_20EnergySignallerEventE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E9_M_invokeERKSt9_Any_dataOlOd.sink = phi ptr [ @_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E9_M_invokeERKSt9_Any_dataOlOd, %bb.b ], [ @_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE_E9_M_invokeERKSt9_Any_dataOlOd, %bb.a ]
  %_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.sink = phi ptr [ @_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, %bb.b ], [ @_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !261
  store ptr %_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E9_M_invokeERKSt9_Any_dataOlOd.sink, ptr %i.b, align 8, !tbaa !242
  store ptr %_ZNSt17_Function_handlerIFvldEZN3gmx21ComputeGlobalsElementILNS1_23ComputeGlobalsAlgorithmE1EE22registerEnergyCallbackENS1_20EnergySignallerEventEEUlldE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.sink, ptr %i.a, align 8, !tbaa !182
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %.sink.split ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.e, align 8, !tbaa !244
  ret void
}
end_hunk_0
