Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/operations?download=true
inline.NumInlined: 1253
inline.NumDeleted: 251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@applyForcedMultiQubitMeasurement:bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i, %bb.c, %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84

bb.ai:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i52, %.noexc.i.i53
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i64, %.noexc.i.i65
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit80

bb.ak:                                            ; preds = %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIiSaIiEED2Ev.exit80, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr %i.bl, align 8, !tbaa !19
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit80

_ZNSt6vectorIiSaIiEED2Ev.exit80:                  ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.aj ], [ %i.cy, %bb.ak ], [ %i.cy, %bb.al ] ; 2 uses
  %i.de = load ptr, ptr %8, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIiSaIiEED2Ev.exit84, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit80
  %i.df = load ptr, ptr %i.at, align 8, !tbaa !19
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84

_ZNSt6vectorIiSaIiEED2Ev.exit82.thread94:         ; preds = %.noexc.i.i59, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i58
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84

bb.an:                                            ; preds = %bb.o
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i83, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dn) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ai, %bb.an, %bb.ao
  %.pn41.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ao ], [ %lpad.thr_comm.split-lp, %bb.an ], [ %i.cw, %bb.ai ] ; 2 uses
  %i.do = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i85 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorIiSaIiEED2Ev.exit84, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84

_ZNSt6vectorIiSaIiEED2Ev.exit84:                  ; preds = %bb.am, %_ZNSt6vectorIiSaIiEED2Ev.exit80, %bb.aq, %bb.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit82.thread94, %bb.ah
  %.pn41.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm, %_ZNSt6vectorIiSaIiEED2Ev.exit82.thread94 ], [ %i.cv, %bb.ah ], [ %.pn41.pn.ph, %bb.aq ], [ %.pn41.pn.ph, %bb.ap ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit80 ], [ %.pn, %bb.am ] ; 2 uses
  %i.dt = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIiSaIiEED2Ev.exit88, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit84
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !19
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit88

_ZNSt6vectorIiSaIiEED2Ev.exit88:                  ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEED2Ev.exit84, %bb.ag
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.ag ], [ %.pn41.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit84 ], [ %.pn41.pn.pn, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.dz = load ptr, ptr %4, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !19
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit88, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn41.pn.pn.pn
}

declare double @calcProbOfMultiQubitOutcome(ptr noundef byval(%struct.Qureg) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z39validate_measurementOutcomesProbNotZeroPiidPKc(ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z36applyMultiQubitMeasurementAndGetProb5QuregSt6vectorIiSaIiEEPd(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i64 @applyMultiQubitMeasurementAndGetProb(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.a, i32 noundef %i.h, ptr noundef %2)
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef double @_Z32applyForcedMultiQubitMeasurement5QuregSt6vectorIiSaIiEES2_(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %1, align 8, !tbaa !16
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = load ptr, ptr %2, align 8, !tbaa !16
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32
  tail call void @_Z40validate_measurementOutcomesMatchTargetsiiPKc(i32 noundef %i.h, i32 noundef %i.p, ptr noundef nonnull @__func__.applyForcedMultiQubitMeasurement)
  %i.q = load ptr, ptr %1, align 8, !tbaa !16
  %i.r = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call double @applyForcedMultiQubitMeasurement(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.q, ptr noundef %i.r, i32 noundef %i.x)
  ret double %i.y
}

; Function Attrs: mustprogress uwtable
define void @applyQuantumFourierTransform(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.DiagMatr1, align 8          ; 5 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyQuantumFourierTransform)
  tail call void @_Z16validate_targets5QuregPiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @__func__.applyQuantumFourierTransform)
  %i.c = add nsw i32 %2, -1
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph30, label %._crit_edge35

.lr.ph30:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge31:                                    ; preds = %bb.b
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge31
  %i.i = lshr i32 %2, 1
  %i.j = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph34

bb.b:                                             ; preds = %._crit_edge, %.lr.ph30
  %indvars.iv37.in = phi i64 [ %i.h, %.lr.ph30 ], [ %indvars.iv37, %._crit_edge ] ; 4 uses
  %indvars.iv37 = add nsw i64 %indvars.iv37.in, -1 ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %1, i64 %indvars.iv37.in
  %5 = getelementptr i8, ptr %i.k, i64 -4         ; 2 uses
  %i.l = load i32, ptr %5, align 4, !tbaa !11     ; 2 uses
  call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyHadamard)
  call void @_Z15validate_target5QuregiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %i.l, ptr noundef nonnull @__func__.applyHadamard)
  call void @applyMultiStateControlledHadamard(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %i.l)
  %i.m = icmp samesign ugt i64 %indvars.iv37.in, 1
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge31

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = getelementptr [4 x i8], ptr %1, i64 %indvars.iv37.in
  %6 = getelementptr i8, ptr %i.n, i64 -4
  br label %.lr.ph

._crit_edge:                                      ; preds = %applyMultiQubitPhaseShift.exit
  br label %bb.b, !llvm.loop !75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %applyMultiQubitPhaseShift.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %applyMultiQubitPhaseShift.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = shl nuw i64 2, %indvars.iv
  %i.p = sitofp i64 %i.o to double
  %i.q = fdiv double f0x400921FB54442D18, %i.p    ; 2 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !11     ; 2 uses
  %i.s = xor i64 %indvars.iv, -1
  %i.t = getelementptr [4 x i8], ptr %6, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 2 uses
  call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTwoQubitPhaseShift)
  call void @_Z19validate_twoTargets5QuregiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %i.r, i32 noundef %i.u, ptr noundef nonnull @__func__.applyTwoQubitPhaseShift)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.r, ptr %i.b, align 4, !tbaa !11
  store i32 %i.u, ptr %i.e, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyMultiQubitPhaseShift)
  call void @_Z16validate_targets5QuregPiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull @__func__.applyMultiQubitPhaseShift)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.v = fmul double %i.q, 0.000000e+00
  %i.w = call noundef { double, double } @cexp(double noundef %i.v, double noundef %i.q) #14 ; 2 uses
  %i.x = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15 ; 5 uses
  %i.y = extractvalue { double, double } %i.w, 1
  %i.z = extractvalue { double, double } %i.w, 0
  store ptr %i.x, ptr %4, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !27
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store double %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store double %i.y, ptr %.sroa.7.0..sroa_idx.i, align 8
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !28
  invoke void @_Z12getDiagMatr1St6vectorISt7complexIdESaIS1_EE(ptr dead_on_unwind nonnull writable sret(%struct.DiagMatr1) align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %applyMultiQubitPhaseShift.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #17
  br label %applyMultiQubitPhaseShift.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i9.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i9.i, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #17
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.ag

applyMultiQubitPhaseShift.exit:                   ; preds = %bb.c, %bb.d
  %i.am = load i32, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.am, ptr %i.a, align 4, !tbaa !11
  call void @_Z43validateAndApplyAnyCtrlAnyTargUnitaryMatrixI9DiagMatr1Ev5QuregPiS2_iS2_iT_PKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull byval(%struct.DiagMatr1) align 8 %3, ptr noundef nonnull @__func__.applyMultiStateControlledDiagMatr1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv37
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge35:                                    ; preds = %.lr.ph34, %bb.a, %._crit_edge31
  ret void

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %indvars.iv40 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next41, %.lr.ph34 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv40
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = sub nsw i64 %i.j, %indvars.iv40
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !11 ; 2 uses
  call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applySwap)
  call void @_Z19validate_twoTargets5QuregiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %i.ao, i32 noundef %i.ar, ptr noundef nonnull @__func__.applySwap)
  call void @applyMultiStateControlledSwap(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %i.ao, i32 noundef %i.ar)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond43.not, label %._crit_edge35, label %.lr.ph34, !llvm.loop !77
}

; Function Attrs: mustprogress uwtable
define void @applyFullQuantumFourierTransform(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyFullQuantumFourierTransform)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36   ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 6 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.noexc8

.noexc8:                                          ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 7 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  store i32 0, ptr %i.f, align 4, !tbaa !11
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %.noexc8
  %i.j = getelementptr i8, ptr %i.f, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !11
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc8, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.k = phi i64 [ %i.c, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ 1, %.noexc8 ] ; 2 uses
  %i.l = ptrtoint ptr %i.f to i64
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %vec.ind, ptr %i.m, align 4, !tbaa !11
  store <4 x i32> %step.add, ptr %i.n, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %.lr.ph.preheader, %middle.block
  %.020.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %i.p = trunc nsw i64 %i.k to i32
  %i.q = ptrtoint ptr %i.g to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %._crit_edge.loopexit ]
  %i.s = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.l, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.011.028 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.f, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.15.027 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %._crit_edge.loopexit ] ; 2 uses
  invoke void @applyQuantumFourierTransform(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %.sroa.011.028, i32 noundef %i.r)
          to label %bb.b unwind label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.020 = phi i64 [ %i.v, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader36 ] ; 3 uses
  %i.t = trunc i64 %.020 to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.020
  store i32 %i.t, ptr %i.u, align 4, !tbaa !11
  %i.v = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.k
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !79

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.011.028, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = sub i64 %.sroa.15.027, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.011.028, i64 noundef %i.w) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i9 = icmp eq ptr %.sroa.011.028, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sub i64 %.sroa.15.027, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.011.028, i64 noundef %i.y) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.x
end_hunk_0
