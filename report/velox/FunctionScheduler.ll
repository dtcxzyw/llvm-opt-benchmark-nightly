inline.NumInlined: 1320
inline.NumDeleted: 643
begin_hunk_0_@_ZN5folly17FunctionScheduler11addFunctionEONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEERKNS0_19LatencyDistributionENS_5RangeIPKcEES9_:bb.a
.body.sink.split:                                 ; preds = %bb.q, %bb.m
  %.sink = phi ptr [ %i.an, %bb.m ], [ %i.bb, %bb.q ]
  %.pn.ph = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.ba, %bb.q ]
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.be) #37
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.m
  %.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.ba, %bb.q ], [ %.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bf = load ptr, ptr %9, align 8, !tbaa !45    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.x
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %.body
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !25
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i31, label %_ZN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEED2Ev.exit32, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bk = call noundef i64 %i.bj(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #34, !inline_history !79 ; 0 uses
  br label %_ZN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEED2Ev.exit32

_ZN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %common.resume

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN5folly17FunctionScheduler11addFunctionEONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEENS_5RangeIPKcEES9_(ptr noundef nonnull align 8 dereferenceable(178) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 %2, ptr %4, ptr %5, i64 %6)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN5folly8FunctionIFNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEvEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt20poisson_distributionIlE10param_type13_M_initializeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !91  ; 4 uses
  %i.b = fcmp ult double %i.a, 1.200000e+01
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.floor.f64(double %i.a) ; 7 uses
  %i.e = tail call double @llvm.log.f64(double %i.a), !tbaa !7
  store double %i.e, ptr %i.c, align 8, !tbaa !108
  %i.f = fadd double %i.d, 1.000000e+00
  %i.g = tail call double @lgamma(double noundef %i.f) #34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.g, ptr %i.h, align 8, !tbaa !109
  %i.i = tail call double @sqrt(double noundef %i.d) #34, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.i, ptr %i.j, align 8, !tbaa !110
  %i.k = fmul nnan double %i.d, 2.000000e+00
  %i.l = fmul nnan double %i.d, 3.200000e+01
  %i.m = fdiv double %i.l, f0x3FE921FB54442D18
  %i.n = tail call double @log(double noundef %i.m) #34, !tbaa !7
  %i.o = fmul double %i.k, %i.n
  %i.p = tail call double @sqrt(double noundef %i.o) #34, !tbaa !7 ; 2 uses
  %i.q = fcmp olt double %i.p, %i.d
  %.sroa.speculated6 = select i1 %i.q, double %i.p, double %i.d ; 2 uses
  %i.r = fcmp ogt double %.sroa.speculated6, 6.000000e+00
  %.sroa.speculated = select i1 %i.r, double %.sroa.speculated6, double 6.000000e+00
  %i.s = tail call double @llvm.round.f64(double %.sroa.speculated) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.s, ptr %i.t, align 8, !tbaa !111
  %i.u = tail call double @llvm.fmuladd.f64(double %i.d, double 2.000000e+00, double %i.s) ; 4 uses
  %i.v = fmul double %i.u, 5.000000e-01
  %i.w = tail call double @sqrt(double noundef %i.v) #34, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.w, ptr %i.x, align 8, !tbaa !112
  %i.y = fdiv double 1.000000e+00, %i.u           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.y, ptr %i.z, align 8, !tbaa !113
  %i.aa = fmul double %i.u, f0x3FE921FB54442D18
  %i.ab = tail call double @sqrt(double noundef %i.aa) #34, !tbaa !7
  %i.ac = tail call double @exp(double noundef %i.y) #34, !tbaa !7
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ad, ptr %i.ae, align 8, !tbaa !114
  %i.af = fmul double %i.u, 2.000000e+00
  %i.ag = fneg double %i.s
  %i.ah = fmul double %i.y, %i.ag
  %i.ai = fmul double %i.s, 5.000000e-01
  %i.aj = fadd double %i.ai, 1.000000e+00
  %i.ak = fmul double %i.aj, %i.ah
  %i.al = tail call double @exp(double noundef %i.ak) #34, !tbaa !7
  %i.am = fmul double %i.af, %i.al
  %i.an = fdiv double %i.am, %i.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.an, ptr %i.ao, align 8, !tbaa !115
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ap = fneg double %i.a
  %i.aq = tail call double @exp(double noundef %i.ap) #34, !tbaa !7
  store double %i.aq, ptr %i.c, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare double @lgamma(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5folly6detail8function5call_INS_12_GLOBAL__N_126PoissonDistributionFunctorELb0ELb0ENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !25    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call noundef i64 @_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function18DispatchBigTrivial5exec_ILb0EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 16, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.c) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @abort() #35
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt20poisson_distributionIlEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEElRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !91  ; 2 uses
  %i.b = fcmp ult double %i.a, 1.200000e+01
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000), !tbaa !7
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !7
  %i.e = fdiv x86_fp80 %i.c, %i.d
  %i.f = fptoui x86_fp80 %i.e to i64              ; 2 uses
  %i.g = add i64 %i.f, 52
  %i.h = udiv i64 %i.g, %i.f                      ; 2 uses
  %spec.select.i.i98 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !108
  %.promoted = load i64, ptr %1, align 8, !tbaa !89
  %xtraiter186 = and i64 %spec.select.i.i98, 1
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  %i.k = add nsw i64 %spec.select.i.i98, -1
  %i.l = icmp ult i64 %i.h, 2
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !110
  %i.p = fmul double %i.o, f0x3FF40D931FF62706    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load double, ptr %i.q, align 8, !tbaa !114
  %i.s = fadd double %i.r, %i.p                   ; 2 uses
  %i.t = fadd double %i.s, 1.000000e+00           ; 2 uses
  %i.u = fadd double %i.t, 1.000000e+00           ; 2 uses
  %i.v = fadd double %i.u, f0x3FF034D9D38E2FCB    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.x = load double, ptr %i.w, align 8, !tbaa !115
  %i.y = fadd double %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !111
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.m, double 2.000000e+00, double %i.aa)
  %i.ac = fmul double %i.ab, 2.000000e+00
  %i.ad = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000), !tbaa !7
  %i.ae = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !7
  %i.af = fdiv x86_fp80 %i.ad, %i.ae
  %i.ag = fptoui x86_fp80 %i.af to i64            ; 2 uses
  %i.ah = add i64 %i.ag, 52
  %i.ai = udiv i64 %i.ah, %i.ag
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1) ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ak = fneg double %i.m
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = add i64 %spec.select.i.i, -1            ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aq = add nsw i64 %spec.select.i.i, -1
  %i.ar = icmp eq i64 %i.ap, 0
  %xtraiter178 = and i64 %spec.select.i.i, 1
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  %i.as = add nsw i64 %spec.select.i.i, -1
  %i.at = icmp eq i64 %i.ap, 0
  %xtraiter182 = and i64 %spec.select.i.i, 1
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  %i.au = add nsw i64 %spec.select.i.i, -1
  %i.av = icmp eq i64 %i.ap, 0
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.promoted.i.i = load i64, ptr %1, align 8, !tbaa !89 ; 2 uses
  br i1 %lcmp.mod.not, label %select.unfold.i.i.prol.loopexit, label %select.unfold.i.i.prol

select.unfold.i.i.prol:                           ; preds = %.backedge
  %i.aw = mul i64 %.promoted.i.i, 16807
  %i.ax = urem i64 %i.aw, 2147483647              ; 3 uses
  %i.ay = add nsw i64 %i.ax, -1
  %i.az = uitofp i64 %i.ay to double              ; 2 uses
  br label %select.unfold.i.i.prol.loopexit

select.unfold.i.i.prol.loopexit:                  ; preds = %select.unfold.i.i.prol, %.backedge
  %.lcssa171.unr = phi i64 [ poison, %.backedge ], [ %i.ax, %select.unfold.i.i.prol ]
  %.lcssa170.unr = phi double [ poison, %.backedge ], [ %i.az, %select.unfold.i.i.prol ]
  %.023.i.i.unr = phi i64 [ %spec.select.i.i, %.backedge ], [ %i.aq, %select.unfold.i.i.prol ]
  %.01422.i.i.unr = phi double [ 1.000000e+00, %.backedge ], [ f0x41DFFFFFFF800000, %select.unfold.i.i.prol ]
  %.01521.i.i.unr = phi double [ 0.000000e+00, %.backedge ], [ %i.az, %select.unfold.i.i.prol ]
  %.unr = phi i64 [ %.promoted.i.i, %.backedge ], [ %i.ax, %select.unfold.i.i.prol ]
  br i1 %i.ar, label %.unr-lcssa, label %select.unfold.i.i

.unr-lcssa:                                       ; preds = %select.unfold.i.i, %select.unfold.i.i.prol.loopexit
  %.lcssa171 = phi i64 [ %.lcssa171.unr, %select.unfold.i.i.prol.loopexit ], [ %i.bm, %select.unfold.i.i ] ; 2 uses
  %.lcssa170 = phi double [ %.lcssa170.unr, %select.unfold.i.i.prol.loopexit ], [ %i.bp, %select.unfold.i.i ]
  %.lcssa169 = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i.prol.loopexit ], [ %i.bs, %select.unfold.i.i ]
  %i.ba = fdiv double %.lcssa170, %.lcssa169      ; 2 uses
  %i.bb = fcmp ult double %i.ba, 1.000000e+00
  br i1 %i.bb, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit, label %bb.c, !prof !118

select.unfold.i.i:                                ; preds = %select.unfold.i.i.prol.loopexit, %select.unfold.i.i
  %.023.i.i = phi i64 [ %i.bt, %select.unfold.i.i ], [ %.023.i.i.unr, %select.unfold.i.i.prol.loopexit ]
  %.01422.i.i = phi double [ %i.bs, %select.unfold.i.i ], [ %.01422.i.i.unr, %select.unfold.i.i.prol.loopexit ] ; 2 uses
  %.01521.i.i = phi double [ %i.bp, %select.unfold.i.i ], [ %.01521.i.i.unr, %select.unfold.i.i.prol.loopexit ]
  %i.bc = phi i64 [ %i.bm, %select.unfold.i.i ], [ %.unr, %select.unfold.i.i.prol.loopexit ]
  %i.bd = mul i64 %i.bc, 16807
  %i.be = urem i64 %i.bd, 2147483647              ; 2 uses
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = uitofp i64 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %.01422.i.i, double %.01521.i.i)
  %i.bi = fpext double %.01422.i.i to x86_fp80
  %i.bj = fmul x86_fp80 %i.bi, f0x401DFFFFFFFC00000000
  %i.bk = fptrunc x86_fp80 %i.bj to double        ; 2 uses
  %i.bl = mul nuw nsw i64 %i.be, 16807
  %i.bm = urem i64 %i.bl, 2147483647              ; 3 uses
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = uitofp i64 %i.bn to double
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bk, double %i.bh) ; 2 uses
  %i.bq = fpext double %i.bk to x86_fp80
  %i.br = fmul x86_fp80 %i.bq, f0x401DFFFFFFFC00000000
  %i.bs = fptrunc x86_fp80 %i.br to double        ; 2 uses
  %i.bt = add i64 %.023.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.1, label %.unr-lcssa, label %select.unfold.i.i, !llvm.loop !119

bb.c:                                             ; preds = %.unr-lcssa
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %.unr-lcssa, %bb.c
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.c ], [ %i.ba, %.unr-lcssa ]
  br i1 %lcmp.mod179.not, label %select.unfold.i.i82.prol.loopexit, label %select.unfold.i.i82.prol

select.unfold.i.i82.prol:                         ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %i.bu = mul nuw nsw i64 %.lcssa171, 16807
  %i.bv = urem i64 %i.bu, 2147483647              ; 3 uses
  %i.bw = add nsw i64 %i.bv, -1
  %i.bx = uitofp i64 %i.bw to double              ; 2 uses
  br label %select.unfold.i.i82.prol.loopexit

select.unfold.i.i82.prol.loopexit:                ; preds = %select.unfold.i.i82.prol, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %.lcssa174.unr = phi i64 [ poison, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.bv, %select.unfold.i.i82.prol ]
  %.lcssa173.unr = phi double [ poison, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.bx, %select.unfold.i.i82.prol ]
  %.023.i.i83.unr = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.as, %select.unfold.i.i82.prol ]
  %.01422.i.i84.unr = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ f0x41DFFFFFFF800000, %select.unfold.i.i82.prol ]
  %.01521.i.i85.unr = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.bx, %select.unfold.i.i82.prol ]
  %.unr180 = phi i64 [ %.lcssa171, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.bv, %select.unfold.i.i82.prol ]
  br i1 %i.at, label %.unr-lcssa181, label %select.unfold.i.i82

.unr-lcssa181:                                    ; preds = %select.unfold.i.i82, %select.unfold.i.i82.prol.loopexit
  %.lcssa174 = phi i64 [ %.lcssa174.unr, %select.unfold.i.i82.prol.loopexit ], [ %i.cl, %select.unfold.i.i82 ] ; 3 uses
  %.lcssa173 = phi double [ %.lcssa173.unr, %select.unfold.i.i82.prol.loopexit ], [ %i.co, %select.unfold.i.i82 ]
  %.lcssa172 = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i82.prol.loopexit ], [ %i.cr, %select.unfold.i.i82 ]
  %i.by = fmul double %i.y, %.016.i.i             ; 5 uses
  store i64 %.lcssa174, ptr %1, align 8, !tbaa !89
  %i.bz = fdiv double %.lcssa173, %.lcssa172      ; 2 uses
  %i.ca = fcmp ult double %i.bz, 1.000000e+00
  br i1 %i.ca, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88, label %bb.d, !prof !118

select.unfold.i.i82:                              ; preds = %select.unfold.i.i82.prol.loopexit, %select.unfold.i.i82
  %.023.i.i83 = phi i64 [ %i.cs, %select.unfold.i.i82 ], [ %.023.i.i83.unr, %select.unfold.i.i82.prol.loopexit ]
  %.01422.i.i84 = phi double [ %i.cr, %select.unfold.i.i82 ], [ %.01422.i.i84.unr, %select.unfold.i.i82.prol.loopexit ] ; 2 uses
  %.01521.i.i85 = phi double [ %i.co, %select.unfold.i.i82 ], [ %.01521.i.i85.unr, %select.unfold.i.i82.prol.loopexit ]
  %i.cb = phi i64 [ %i.cl, %select.unfold.i.i82 ], [ %.unr180, %select.unfold.i.i82.prol.loopexit ]
  %i.cc = mul nuw nsw i64 %i.cb, 16807
  %i.cd = urem i64 %i.cc, 2147483647              ; 2 uses
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = uitofp i64 %i.ce to double
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %.01422.i.i84, double %.01521.i.i85)
  %i.ch = fpext double %.01422.i.i84 to x86_fp80
  %i.ci = fmul x86_fp80 %i.ch, f0x401DFFFFFFFC00000000
  %i.cj = fptrunc x86_fp80 %i.ci to double        ; 2 uses
  %i.ck = mul nuw nsw i64 %i.cd, 16807
  %i.cl = urem i64 %i.ck, 2147483647              ; 3 uses
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = uitofp i64 %i.cm to double
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cj, double %i.cg) ; 2 uses
  %i.cp = fpext double %i.cj to x86_fp80
  %i.cq = fmul x86_fp80 %i.cp, f0x401DFFFFFFFC00000000
  %i.cr = fptrunc x86_fp80 %i.cq to double        ; 2 uses
  %i.cs = add i64 %.023.i.i83, -2                 ; 2 uses
  %.not.i.i86.1 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i86.1, label %.unr-lcssa181, label %select.unfold.i.i82, !llvm.loop !119

bb.d:                                             ; preds = %.unr-lcssa181
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88: ; preds = %.unr-lcssa181, %bb.d
  %.016.i.i87 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.bz, %.unr-lcssa181 ]
  %i.ct = fsub double 1.000000e+00, %.016.i.i87
  %i.cu = tail call double @log(double noundef %i.ct) #34, !tbaa !7
  %i.cv = fcmp ugt double %i.by, %i.p
  br i1 %i.cv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88
  %i.cw = tail call noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.aj) ; 3 uses
  %i.cx = tail call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fneg double %i.cx
  %i.cz = load double, ptr %i.n, align 8, !tbaa !110
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.cz, double -1.000000e+00)
  %i.db = tail call double @llvm.floor.f64(double %i.da) ; 2 uses
  %i.dc = fneg double %i.cw
  %i.dd = fmul double %i.cw, %i.dc
  %i.de = fmul double %i.dd, 5.000000e-01
  %i.df = fcmp uge double %i.db, %i.ak
  br i1 %i.df, label %bb.l, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.e, %bb.g, %bb.l
  br label %.backedge, !llvm.loop !120

bb.f:                                             ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88
  %i.dg = fcmp ugt double %i.by, %i.s
  br i1 %i.dg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dh = tail call noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.aj)
  %i.di = tail call noundef double @llvm.fabs.f64(double %i.dh)
  %i.dj = load double, ptr %i.al, align 8, !tbaa !112
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double 1.000000e+00) ; 3 uses
  %i.dl = tail call double @llvm.ceil.f64(double %i.dk) ; 2 uses
  %i.dm = fsub double 2.000000e+00, %i.dk
  %i.dn = fmul double %i.dk, %i.dm
  %i.do = load double, ptr %i.am, align 8, !tbaa !113
  %i.dp = fmul double %i.do, %i.dn
  %i.dq = load double, ptr %i.z, align 8, !tbaa !111
  %i.dr = fcmp ule double %i.dl, %i.dq
  br i1 %i.dr, label %bb.l, label %.backedge.backedge

bb.h:                                             ; preds = %bb.f
  %i.ds = fcmp ugt double %i.by, %i.t
  br i1 %i.ds, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.dt = fcmp ugt double %i.by, %i.u
  br i1 %i.dt, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.du = fcmp ugt double %i.by, %i.v
  br i1 %i.du, label %select.unfold.i.i91.preheader, label %bb.l

select.unfold.i.i91.preheader:                    ; preds = %bb.j
  br i1 %lcmp.mod183.not, label %select.unfold.i.i91.prol.loopexit, label %select.unfold.i.i91.prol

select.unfold.i.i91.prol:                         ; preds = %select.unfold.i.i91.preheader
  %i.dv = mul nuw nsw i64 %.lcssa174, 16807
  %i.dw = urem i64 %i.dv, 2147483647              ; 3 uses
  %i.dx = add nsw i64 %i.dw, -1
  %i.dy = uitofp i64 %i.dx to double              ; 2 uses
  br label %select.unfold.i.i91.prol.loopexit

select.unfold.i.i91.prol.loopexit:                ; preds = %select.unfold.i.i91.prol, %select.unfold.i.i91.preheader
  %.lcssa177.unr = phi i64 [ poison, %select.unfold.i.i91.preheader ], [ %i.dw, %select.unfold.i.i91.prol ]
  %.lcssa176.unr = phi double [ poison, %select.unfold.i.i91.preheader ], [ %i.dy, %select.unfold.i.i91.prol ]
  %.023.i.i92.unr = phi i64 [ %spec.select.i.i, %select.unfold.i.i91.preheader ], [ %i.au, %select.unfold.i.i91.prol ]
  %.01422.i.i93.unr = phi double [ 1.000000e+00, %select.unfold.i.i91.preheader ], [ f0x41DFFFFFFF800000, %select.unfold.i.i91.prol ]
  %.01521.i.i94.unr = phi double [ 0.000000e+00, %select.unfold.i.i91.preheader ], [ %i.dy, %select.unfold.i.i91.prol ]
  %.unr184 = phi i64 [ %.lcssa174, %select.unfold.i.i91.preheader ], [ %i.dw, %select.unfold.i.i91.prol ]
  br i1 %i.av, label %.unr-lcssa185, label %select.unfold.i.i91

.unr-lcssa185:                                    ; preds = %select.unfold.i.i91, %select.unfold.i.i91.prol.loopexit
  %.lcssa177 = phi i64 [ %.lcssa177.unr, %select.unfold.i.i91.prol.loopexit ], [ %i.el, %select.unfold.i.i91 ]
  %.lcssa176 = phi double [ %.lcssa176.unr, %select.unfold.i.i91.prol.loopexit ], [ %i.eo, %select.unfold.i.i91 ]
  %.lcssa175 = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i91.prol.loopexit ], [ %i.er, %select.unfold.i.i91 ]
  store i64 %.lcssa177, ptr %1, align 8, !tbaa !89
  %i.dz = fdiv double %.lcssa176, %.lcssa175      ; 2 uses
  %i.ea = fcmp ult double %i.dz, 1.000000e+00
  br i1 %i.ea, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97, label %bb.k, !prof !118

select.unfold.i.i91:                              ; preds = %select.unfold.i.i91.prol.loopexit, %select.unfold.i.i91
  %.023.i.i92 = phi i64 [ %i.es, %select.unfold.i.i91 ], [ %.023.i.i92.unr, %select.unfold.i.i91.prol.loopexit ]
  %.01422.i.i93 = phi double [ %i.er, %select.unfold.i.i91 ], [ %.01422.i.i93.unr, %select.unfold.i.i91.prol.loopexit ] ; 2 uses
  %.01521.i.i94 = phi double [ %i.eo, %select.unfold.i.i91 ], [ %.01521.i.i94.unr, %select.unfold.i.i91.prol.loopexit ]
  %i.eb = phi i64 [ %i.el, %select.unfold.i.i91 ], [ %.unr184, %select.unfold.i.i91.prol.loopexit ]
  %i.ec = mul nuw nsw i64 %i.eb, 16807
  %i.ed = urem i64 %i.ec, 2147483647              ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1
  %i.ef = uitofp i64 %i.ee to double
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %.01422.i.i93, double %.01521.i.i94)
  %i.eh = fpext double %.01422.i.i93 to x86_fp80
  %i.ei = fmul x86_fp80 %i.eh, f0x401DFFFFFFFC00000000
  %i.ej = fptrunc x86_fp80 %i.ei to double        ; 2 uses
  %i.ek = mul nuw nsw i64 %i.ed, 16807
  %i.el = urem i64 %i.ek, 2147483647              ; 3 uses
  %i.em = add nsw i64 %i.el, -1
  %i.en = uitofp i64 %i.em to double
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double %i.ej, double %i.eg) ; 2 uses
  %i.ep = fpext double %i.ej to x86_fp80
  %i.eq = fmul x86_fp80 %i.ep, f0x401DFFFFFFFC00000000
  %i.er = fptrunc x86_fp80 %i.eq to double        ; 2 uses
  %i.es = add i64 %.023.i.i92, -2                 ; 2 uses
  %.not.i.i95.1 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i95.1, label %.unr-lcssa185, label %select.unfold.i.i91, !llvm.loop !119

bb.k:                                             ; preds = %.unr-lcssa185
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97: ; preds = %.unr-lcssa185, %bb.k
  %.016.i.i96 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.k ], [ %i.dz, %.unr-lcssa185 ]
  %i.et = fsub double 1.000000e+00, %.016.i.i96
  %i.eu = tail call double @log(double noundef %i.et) #34, !tbaa !7
  %i.ev = fneg double %i.eu
  %i.ew = load double, ptr %i.z, align 8, !tbaa !111 ; 3 uses
  %i.ex = fmul double %i.ac, %i.ev
  %i.ey = fdiv double %i.ex, %i.ew
  %i.ez = fadd double %i.ew, %i.ey                ; 2 uses
  %i.fa = tail call double @llvm.ceil.f64(double %i.ez)
  %i.fb = fneg double %i.ew
  %i.fc = load double, ptr %i.am, align 8, !tbaa !113
  %i.fd = fmul double %i.fc, %i.fb
  %i.fe = fmul double %i.ez, 5.000000e-01
  %i.ff = fadd double %i.fe, 1.000000e+00
  %i.fg = fmul double %i.fd, %i.ff
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97, %bb.e
  %.076 = phi double [ %i.de, %bb.e ], [ %i.dp, %bb.g ], [ %i.fg, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97 ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ], [ f0x3F8A41A41A41A41A, %bb.j ]
  %.073 = phi double [ %i.db, %bb.e ], [ %i.dl, %bb.g ], [ %i.fa, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97 ], [ -1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.fh = fadd double %i.cu, %.076
  %i.fi = load double, ptr %i.an, align 8, !tbaa !108
  %i.fj = fneg double %.073
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fi, double %i.fh)
  %i.fl = load double, ptr %i.ao, align 8, !tbaa !109
  %i.fm = fadd double %i.m, %.073                 ; 3 uses
  %i.fn = fadd double %i.fm, 1.000000e+00
  %i.fo = tail call double @lgamma(double noundef %i.fn) #34
  %i.fp = fsub double %i.fl, %i.fo
  %i.fq = fcmp ogt double %i.fk, %i.fp
  %i.fr = fcmp oge double %i.fm, f0x43E0000000000000
  %i.fs = or i1 %i.fr, %i.fq
  br i1 %i.fs, label %.backedge.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ft = fadd double %i.fm, f0x3FDFFFFFFFFFFFFE
  %i.fu = fptosi double %i.ft to i64
  br label %bb.p

bb.n:                                             ; preds = %.preheader, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106
  %.lcssa111121 = phi i64 [ %.lcssa168, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106 ], [ %.promoted, %.preheader ] ; 2 uses
  %.071 = phi i64 [ %i.gu, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106 ], [ 0, %.preheader ] ; 2 uses
  %.0 = phi double [ %i.gt, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106 ], [ 1.000000e+00, %.preheader ]
  br i1 %lcmp.mod187.not, label %select.unfold.i.i100.prol.loopexit, label %select.unfold.i.i100.prol

select.unfold.i.i100.prol:                        ; preds = %bb.n
  %i.fv = mul i64 %.lcssa111121, 16807
  %i.fw = urem i64 %i.fv, 2147483647              ; 3 uses
  %i.fx = add nsw i64 %i.fw, -1
  %i.fy = uitofp i64 %i.fx to double              ; 2 uses
  br label %select.unfold.i.i100.prol.loopexit

select.unfold.i.i100.prol.loopexit:               ; preds = %select.unfold.i.i100.prol, %bb.n
  %.lcssa168.unr = phi i64 [ poison, %bb.n ], [ %i.fw, %select.unfold.i.i100.prol ]
  %.lcssa167.unr = phi double [ poison, %bb.n ], [ %i.fy, %select.unfold.i.i100.prol ]
  %.023.i.i101.unr = phi i64 [ %spec.select.i.i98, %bb.n ], [ %i.k, %select.unfold.i.i100.prol ]
  %.01422.i.i102.unr = phi double [ 1.000000e+00, %bb.n ], [ f0x41DFFFFFFF800000, %select.unfold.i.i100.prol ]
  %.01521.i.i103.unr = phi double [ 0.000000e+00, %bb.n ], [ %i.fy, %select.unfold.i.i100.prol ]
  %.unr188 = phi i64 [ %.lcssa111121, %bb.n ], [ %i.fw, %select.unfold.i.i100.prol ]
  br i1 %i.l, label %.unr-lcssa189, label %select.unfold.i.i100

.unr-lcssa189:                                    ; preds = %select.unfold.i.i100, %select.unfold.i.i100.prol.loopexit
  %.lcssa168 = phi i64 [ %.lcssa168.unr, %select.unfold.i.i100.prol.loopexit ], [ %i.gl, %select.unfold.i.i100 ] ; 2 uses
  %.lcssa167 = phi double [ %.lcssa167.unr, %select.unfold.i.i100.prol.loopexit ], [ %i.go, %select.unfold.i.i100 ]
  %.lcssa = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i100.prol.loopexit ], [ %i.gr, %select.unfold.i.i100 ]
  %i.fz = fdiv double %.lcssa167, %.lcssa         ; 2 uses
  %i.ga = fcmp ult double %i.fz, 1.000000e+00
  br i1 %i.ga, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106, label %bb.o, !prof !118

select.unfold.i.i100:                             ; preds = %select.unfold.i.i100.prol.loopexit, %select.unfold.i.i100
  %.023.i.i101 = phi i64 [ %i.gs, %select.unfold.i.i100 ], [ %.023.i.i101.unr, %select.unfold.i.i100.prol.loopexit ]
  %.01422.i.i102 = phi double [ %i.gr, %select.unfold.i.i100 ], [ %.01422.i.i102.unr, %select.unfold.i.i100.prol.loopexit ] ; 2 uses
  %.01521.i.i103 = phi double [ %i.go, %select.unfold.i.i100 ], [ %.01521.i.i103.unr, %select.unfold.i.i100.prol.loopexit ]
  %i.gb = phi i64 [ %i.gl, %select.unfold.i.i100 ], [ %.unr188, %select.unfold.i.i100.prol.loopexit ]
  %i.gc = mul i64 %i.gb, 16807
  %i.gd = urem i64 %i.gc, 2147483647              ; 2 uses
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = uitofp i64 %i.ge to double
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gf, double %.01422.i.i102, double %.01521.i.i103)
  %i.gh = fpext double %.01422.i.i102 to x86_fp80
  %i.gi = fmul x86_fp80 %i.gh, f0x401DFFFFFFFC00000000
  %i.gj = fptrunc x86_fp80 %i.gi to double        ; 2 uses
  %i.gk = mul nuw nsw i64 %i.gd, 16807
  %i.gl = urem i64 %i.gk, 2147483647              ; 3 uses
  %i.gm = add nsw i64 %i.gl, -1
  %i.gn = uitofp i64 %i.gm to double
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gj, double %i.gg) ; 2 uses
  %i.gp = fpext double %i.gj to x86_fp80
  %i.gq = fmul x86_fp80 %i.gp, f0x401DFFFFFFFC00000000
  %i.gr = fptrunc x86_fp80 %i.gq to double        ; 2 uses
  %i.gs = add i64 %.023.i.i101, -2                ; 2 uses
  %.not.i.i104.1 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i104.1, label %.unr-lcssa189, label %select.unfold.i.i100, !llvm.loop !119

bb.o:                                             ; preds = %.unr-lcssa189
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106: ; preds = %.unr-lcssa189, %bb.o
  %.016.i.i105 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.o ], [ %i.fz, %.unr-lcssa189 ]
  %i.gt = fmul double %.0, %.016.i.i105           ; 2 uses
  %i.gu = add nuw nsw i64 %.071, 1
  %i.gv = fcmp ogt double %i.gt, %i.j
  br i1 %i.gv, label %bb.n, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit106
  store i64 %.lcssa168, ptr %1, align 8, !tbaa !89
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.m
  %.072 = phi i64 [ %i.fu, %bb.m ], [ %.071, %.loopexit ]
  ret i64 %.072
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000), !tbaa !7
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !7
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g                      ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 5 uses
  %.promoted = load i64, ptr %1, align 8, !tbaa !89
  %xtraiter = and i64 %spec.select.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %spec.select.i.i, -1
  %i.k = icmp ult i64 %i.i, 2
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !95
  br label %bb.g

bb.c:                                             ; preds = %select.unfold.i.i
  %i.n = fdiv double %i.u, %i.x                   ; 2 uses
  %i.o = fcmp ult double %i.n, 1.000000e+00
  br i1 %i.o, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit, label %bb.d, !prof !118

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.p = phi i64 [ %.promoted, %.preheader ], [ %.be, %select.unfold.i.i.backedge ]
  %i.q = mul i64 %i.p, 16807
  %i.r = urem i64 %i.q, 2147483647                ; 4 uses
  %i.s = add nsw i64 %i.r, -1
  %i.t = uitofp i64 %i.s to double
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.v = fpext double %.01422.i.i to x86_fp80
  %i.w = fmul x86_fp80 %i.v, f0x401DFFFFFFFC00000000
  %i.x = fptrunc x86_fp80 %i.w to double          ; 2 uses
  %i.y = add i64 %.023.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %select.unfold.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27
  %.023.i.i.be = phi i64 [ %i.y, %select.unfold.i.i ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.01422.i.i.be = phi double [ %i.x, %select.unfold.i.i ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.01521.i.i.be = phi double [ %i.u, %select.unfold.i.i ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  %.be = phi i64 [ %i.r, %select.unfold.i.i ], [ %.lcssa66, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27 ]
  br label %select.unfold.i.i, !llvm.loop !122

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.n, %bb.c ]
  br i1 %lcmp.mod.not, label %select.unfold.i.i21.prol.loopexit, label %select.unfold.i.i21.prol

select.unfold.i.i21.prol:                         ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %i.z = mul nuw nsw i64 %i.r, 16807
  %i.aa = urem i64 %i.z, 2147483647               ; 3 uses
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  br label %select.unfold.i.i21.prol.loopexit

select.unfold.i.i21.prol.loopexit:                ; preds = %select.unfold.i.i21.prol, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit
  %.lcssa66.unr = phi i64 [ poison, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.aa, %select.unfold.i.i21.prol ]
  %.lcssa65.unr = phi double [ poison, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ac, %select.unfold.i.i21.prol ]
  %.023.i.i22.unr = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.j, %select.unfold.i.i21.prol ]
  %.01422.i.i23.unr = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ f0x41DFFFFFFF800000, %select.unfold.i.i21.prol ]
  %.01521.i.i24.unr = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.ac, %select.unfold.i.i21.prol ]
  %.unr = phi i64 [ %i.r, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit ], [ %i.aa, %select.unfold.i.i21.prol ]
  br i1 %i.k, label %.unr-lcssa, label %select.unfold.i.i21

.unr-lcssa:                                       ; preds = %select.unfold.i.i21, %select.unfold.i.i21.prol.loopexit
  %.lcssa66 = phi i64 [ %.lcssa66.unr, %select.unfold.i.i21.prol.loopexit ], [ %i.aq, %select.unfold.i.i21 ] ; 2 uses
  %.lcssa65 = phi double [ %.lcssa65.unr, %select.unfold.i.i21.prol.loopexit ], [ %i.at, %select.unfold.i.i21 ]
  %.lcssa = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i21.prol.loopexit ], [ %i.aw, %select.unfold.i.i21 ]
  %i.ad = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.ae = fdiv double %.lcssa65, %.lcssa          ; 2 uses
  %i.af = fcmp ult double %i.ae, 1.000000e+00
  br i1 %i.af, label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27, label %bb.e, !prof !118

select.unfold.i.i21:                              ; preds = %select.unfold.i.i21.prol.loopexit, %select.unfold.i.i21
  %.023.i.i22 = phi i64 [ %i.ax, %select.unfold.i.i21 ], [ %.023.i.i22.unr, %select.unfold.i.i21.prol.loopexit ]
  %.01422.i.i23 = phi double [ %i.aw, %select.unfold.i.i21 ], [ %.01422.i.i23.unr, %select.unfold.i.i21.prol.loopexit ] ; 2 uses
  %.01521.i.i24 = phi double [ %i.at, %select.unfold.i.i21 ], [ %.01521.i.i24.unr, %select.unfold.i.i21.prol.loopexit ]
  %i.ag = phi i64 [ %i.aq, %select.unfold.i.i21 ], [ %.unr, %select.unfold.i.i21.prol.loopexit ]
  %i.ah = mul nuw nsw i64 %i.ag, 16807
  %i.ai = urem i64 %i.ah, 2147483647              ; 2 uses
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = uitofp i64 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %.01422.i.i23, double %.01521.i.i24)
  %i.am = fpext double %.01422.i.i23 to x86_fp80
  %i.an = fmul x86_fp80 %i.am, f0x401DFFFFFFFC00000000
  %i.ao = fptrunc x86_fp80 %i.an to double        ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ai, 16807
  %i.aq = urem i64 %i.ap, 2147483647              ; 3 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = uitofp i64 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ao, double %i.al) ; 2 uses
  %i.au = fpext double %i.ao to x86_fp80
  %i.av = fmul x86_fp80 %i.au, f0x401DFFFFFFFC00000000
  %i.aw = fptrunc x86_fp80 %i.av to double        ; 2 uses
  %i.ax = add i64 %.023.i.i22, -2                 ; 2 uses
  %.not.i.i25.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i25.1, label %.unr-lcssa, label %select.unfold.i.i21, !llvm.loop !119

bb.e:                                             ; preds = %.unr-lcssa
  br label %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27

_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit27: ; preds = %.unr-lcssa, %bb.e
  %.016.i.i26 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.e ], [ %i.ae, %.unr-lcssa ]
end_hunk_0
