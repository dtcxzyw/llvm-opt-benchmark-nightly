Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/msd?download=true
inline.NumInlined: 1761
inline.NumDeleted: 968
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3gmx15analysismodules3MsdC2Ev:bb.a
  tail call void @_ZN3gmx24TrajectoryAnalysisModuleC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3gmx15analysismodules3MsdE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.b, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !133
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double 6.000000e+00, ptr %i.d, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb1ELb1ELb1EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_, ptr %i.e, align 8, !tbaa !132
  store ptr @_ZNSt17_Function_handlerIFdN3gmx8ArrayRefIKNS0_11BasicVectorIdEEEES5_EPS6_E9_M_invokeERKSt9_Any_dataOS5_SC_, ptr %i.g, align 8, !tbaa !203
  store ptr @_ZNSt17_Function_handlerIFdN3gmx8ArrayRefIKNS0_11BasicVectorIdEEEES5_EPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.f, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x double> <double 1.000000e+01, double 0.000000e+00>, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.j, align 8, !tbaa !183
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.k, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.l, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x float> splat (float -1.000000e+00), ptr %i.m, align 8, !tbaa !163
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.n, i8 0, i64 89, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  invoke void @_ZN3gmx12AnalysisDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  invoke void @_ZN3gmx12AnalysisDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke void @_ZN3gmx24AnalysisDataPlotSettingsC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !218
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.x, align 8, !tbaa !219
  store i8 0, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !218
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.aa, align 8, !tbaa !219
  store i8 0, ptr %i.z, align 8, !tbaa !23
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3gmx12AnalysisDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ac, %bb.f ]
  tail call void @_ZN3gmx12AnalysisDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.ab, %bb.e ]
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  tail call fastcc void @_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #25
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !38  ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.k
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !38  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIdSaIdEED2Ev.exit8, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit8

_ZNSt6vectorIdSaIdEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.l
  tail call fastcc void @_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #25
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit8, %bb.m
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !52  ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit:   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.o
  tail call void @_ZN3gmx24TrajectoryAnalysisModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN3gmx24TrajectoryAnalysisModuleC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb1ELb1ELb1EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.059.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.epil.init ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.010.epil.init ; 3 uses
  %i.h = load double, ptr %i.f, align 8, !tbaa !76
  %i.i = load double, ptr %i.g, align 8, !tbaa !76
  %i.j = fsub double %i.h, %i.i                   ; 2 uses
  %4 = fmul double %i.j, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !76
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %4)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !76
  %i.u = fsub double %i.r, %i.t                   ; 2 uses
  %i.v = tail call noundef double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.p)
  %i.w = fadd double %.059.epil.init, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.epil.preheader ]
  %i.x = uitofp i64 %i.d to double
  %i.y = fdiv double %.05.lcssa, %i.x
  ret double %i.y

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bk, %.lr.ph ] ; 4 uses
  %.059 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %.010 ; 3 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %2, i64 %.010 ; 3 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !76
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !76
  %i.ad = fsub double %i.ab, %i.ac                ; 2 uses
  %5 = fmul double %i.ad, %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !76
  %i.ai = fsub double %i.af, %i.ah                ; 2 uses
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %5)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.al = load double, ptr %i.ak, align 8, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !76
  %i.ao = fsub double %i.al, %i.an                ; 2 uses
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.aj)
  %i.aq = fadd double %.059, %i.ap
  %i.ar = or disjoint i64 %.010, 1                ; 2 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ar ; 3 uses
  %i.au = load double, ptr %i.as, align 8, !tbaa !76
  %i.av = load double, ptr %i.at, align 8, !tbaa !76
  %i.aw = fsub double %i.au, %i.av                ; 2 uses
  %6 = fmul double %i.aw, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !76
  %i.bb = fsub double %i.ay, %i.ba                ; 2 uses
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bb, double %6)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !76
  %i.bh = fsub double %i.be, %i.bg                ; 2 uses
  %i.bi = tail call noundef double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bc)
  %i.bj = fadd double %i.aq, %i.bi                ; 3 uses
  %i.bk = add nuw i64 %.010, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !387
}

declare void @_ZN3gmx12AnalysisDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3gmx24AnalysisDataPlotSettingsC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN3gmx12AnalysisDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataESaIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i
  %i.o = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.w = ptrtoint ptr %.val1 to i64
  %i.x = ptrtoint ptr %.val to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.y) #24
  br label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MoleculeDataES3_EvT_S5_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataESaIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call fastcc void @_ZN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataD2Ev(ptr noundef nonnull readonly align 8 dead_on_return(184) dereferenceable(184) %.05.i.i) #25
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.f = ptrtoint ptr %.val1 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.h) #24
  br label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3gmx24TrajectoryAnalysisModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNSt17_Function_handlerIFdN3gmx8ArrayRefIKNS0_11BasicVectorIdEEEES5_EPS6_E9_M_invokeERKSt9_Any_dataOS5_SC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.b = tail call noundef double %i.a(ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i), !inline_history !388
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFdN3gmx8ArrayRefIKNS0_11BasicVectorIdEEEES5_EPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFdN3gmx8ArrayRefIKNS1_11BasicVectorIdEEEES6_EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFdN3gmx8ArrayRefIKNS1_11BasicVectorIdEEEES6_EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFdN3gmx8ArrayRefIKNS1_11BasicVectorIdEEEES6_EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !132
  br label %_ZNSt14_Function_base13_Base_managerIPFdN3gmx8ArrayRefIKNS1_11BasicVectorIdEEEES6_EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFdN3gmx8ArrayRefIKNS1_11BasicVectorIdEEEES6_EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFdN3gmx8ArrayRefIKNS_11BasicVectorIdEEEES4_E, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !132
end_hunk_0
begin_hunk_1_@_ZN3gmx16GromacsExceptionD2Ev:bb.a
bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !217

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !418
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #25
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !412

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !415
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !419
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !420
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !130  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !420
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK3gmx26TrajectoryAnalysisSettings12plotSettingsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb1ELb0ELb0EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ]
  %.0510.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.epil = phi i64 [ %i.j, %.lr.ph.epil ], [ %.011.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.0510.epil = phi double [ %i.i, %.lr.ph.epil ], [ %.0510.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.011.epil
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.011.epil
  %.val.epil = load double, ptr %i.f, align 8, !tbaa !76
  %.val6.epil = load double, ptr %i.g, align 8, !tbaa !76
  %i.h = fsub double %.val.epil, %.val6.epil      ; 2 uses
  %4 = fmul double %i.h, %i.h
  %i.i = fadd double %.0510.epil, %4              ; 2 uses
  %i.j = add nuw i64 %.011.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !421

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.k = uitofp i64 %i.d to double
  %i.l = fdiv double %.05.lcssa, %i.k
  ret double %i.l

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 6 uses
  %.0510 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds [24 x i8], ptr %0, i64 %.011
  %i.n = getelementptr inbounds [24 x i8], ptr %2, i64 %.011
  %.val = load double, ptr %i.m, align 8, !tbaa !76
  %.val6 = load double, ptr %i.n, align 8, !tbaa !76
  %i.o = fsub double %.val, %.val6                ; 2 uses
  %5 = fmul double %i.o, %i.o
  %i.p = fadd double %.0510, %5
  %i.q = or disjoint i64 %.011, 1                 ; 2 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds [24 x i8], ptr %2, i64 %i.q
  %.val.1 = load double, ptr %i.r, align 8, !tbaa !76
  %.val6.1 = load double, ptr %i.s, align 8, !tbaa !76
  %i.t = fsub double %.val.1, %.val6.1            ; 2 uses
  %6 = fmul double %i.t, %i.t
  %i.u = fadd double %i.p, %6
  %i.v = or disjoint i64 %.011, 2                 ; 2 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds [24 x i8], ptr %2, i64 %i.v
  %.val.2 = load double, ptr %i.w, align 8, !tbaa !76
  %.val6.2 = load double, ptr %i.x, align 8, !tbaa !76
  %i.y = fsub double %.val.2, %.val6.2            ; 2 uses
  %7 = fmul double %i.y, %i.y
  %i.z = fadd double %i.u, %7
  %i.aa = or disjoint i64 %.011, 3                ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %2, i64 %i.aa
  %.val.3 = load double, ptr %i.ab, align 8, !tbaa !76
  %.val6.3 = load double, ptr %i.ac, align 8, !tbaa !76
  %i.ad = fsub double %.val.3, %.val6.3           ; 2 uses
  %8 = fmul double %i.ad, %i.ad
  %i.ae = fadd double %i.z, %8                    ; 3 uses
  %i.af = add nuw i64 %.011, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !422
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb0ELb1ELb0EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %.0510.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.epil = phi i64 [ %i.l, %.lr.ph.epil ], [ %.011.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.0510.epil = phi double [ %i.k, %.lr.ph.epil ], [ %.0510.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.011.epil
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.011.epil
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val.epil = load double, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val6.epil = load double, ptr %i.i, align 8, !tbaa !76
  %i.j = fsub double %.val.epil, %.val6.epil      ; 2 uses
  %4 = fmul double %i.j, %i.j
  %i.k = fadd double %.0510.epil, %4              ; 2 uses
  %i.l = add nuw i64 %.011.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !423

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil ]
  %i.m = uitofp i64 %i.d to double
  %i.n = fdiv double %.05.lcssa, %i.m
  ret double %i.n

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 6 uses
  %.0510 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %.011
  %i.p = getelementptr inbounds [24 x i8], ptr %2, i64 %.011
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val = load double, ptr %i.q, align 8, !tbaa !76
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val6 = load double, ptr %i.r, align 8, !tbaa !76
  %i.s = fsub double %.val, %.val6                ; 2 uses
  %5 = fmul double %i.s, %i.s
  %i.t = fadd double %.0510, %5
  %i.u = or disjoint i64 %.011, 1                 ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds [24 x i8], ptr %2, i64 %i.u
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val.1 = load double, ptr %i.x, align 8, !tbaa !76
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val6.1 = load double, ptr %i.y, align 8, !tbaa !76
  %i.z = fsub double %.val.1, %.val6.1            ; 2 uses
  %6 = fmul double %i.z, %i.z
  %i.aa = fadd double %i.t, %6
  %i.ab = or disjoint i64 %.011, 2                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val.2 = load double, ptr %i.ae, align 8, !tbaa !76
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val6.2 = load double, ptr %i.af, align 8, !tbaa !76
  %i.ag = fsub double %.val.2, %.val6.2           ; 2 uses
  %7 = fmul double %i.ag, %i.ag
  %i.ah = fadd double %i.aa, %7
  %i.ai = or disjoint i64 %.011, 3                ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val.3 = load double, ptr %i.al, align 8, !tbaa !76
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  %.val6.3 = load double, ptr %i.am, align 8, !tbaa !76
  %i.an = fsub double %.val.3, %.val6.3           ; 2 uses
  %8 = fmul double %i.an, %i.an
  %i.ao = fadd double %i.ah, %8                   ; 3 uses
  %i.ap = add nuw i64 %.011, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !424
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb0ELb0ELb1EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %.0510.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.epil = phi i64 [ %i.l, %.lr.ph.epil ], [ %.011.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.0510.epil = phi double [ %i.k, %.lr.ph.epil ], [ %.0510.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.011.epil
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.011.epil
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val.epil = load double, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val6.epil = load double, ptr %i.i, align 8, !tbaa !76
  %i.j = fsub double %.val.epil, %.val6.epil      ; 2 uses
  %4 = fmul double %i.j, %i.j
  %i.k = fadd double %.0510.epil, %4              ; 2 uses
  %i.l = add nuw i64 %.011.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !425

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil ]
  %i.m = uitofp i64 %i.d to double
  %i.n = fdiv double %.05.lcssa, %i.m
  ret double %i.n

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 6 uses
  %.0510 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %.011
  %i.p = getelementptr inbounds [24 x i8], ptr %2, i64 %.011
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val = load double, ptr %i.q, align 8, !tbaa !76
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val6 = load double, ptr %i.r, align 8, !tbaa !76
  %i.s = fsub double %.val, %.val6                ; 2 uses
  %5 = fmul double %i.s, %i.s
  %i.t = fadd double %.0510, %5
  %i.u = or disjoint i64 %.011, 1                 ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds [24 x i8], ptr %2, i64 %i.u
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.1 = load double, ptr %i.x, align 8, !tbaa !76
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val6.1 = load double, ptr %i.y, align 8, !tbaa !76
  %i.z = fsub double %.val.1, %.val6.1            ; 2 uses
  %6 = fmul double %i.z, %i.z
  %i.aa = fadd double %i.t, %6
  %i.ab = or disjoint i64 %.011, 2                ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val.2 = load double, ptr %i.ae, align 8, !tbaa !76
  %i.af = getelementptr i8, ptr %i.ad, i64 16
  %.val6.2 = load double, ptr %i.af, align 8, !tbaa !76
  %i.ag = fsub double %.val.2, %.val6.2           ; 2 uses
  %7 = fmul double %i.ag, %i.ag
  %i.ah = fadd double %i.aa, %7
  %i.ai = or disjoint i64 %.011, 3                ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ai
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val.3 = load double, ptr %i.al, align 8, !tbaa !76
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %.val6.3 = load double, ptr %i.am, align 8, !tbaa !76
  %i.an = fsub double %.val.3, %.val6.3           ; 2 uses
  %8 = fmul double %i.an, %i.an
  %i.ao = fadd double %i.ah, %8                   ; 3 uses
  %i.ap = add nuw i64 %.011, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !426
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb0ELb1ELb1EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %.0512.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.013.epil = phi i64 [ %i.p, %.lr.ph.epil ], [ %.013.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.0512.epil = phi double [ %i.o, %.lr.ph.epil ], [ %.0512.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.epil ; 2 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.013.epil ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val.epil = load double, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %.val6.epil = load double, ptr %i.i, align 8, !tbaa !76
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val7.epil = load double, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %.val8.epil = load double, ptr %i.k, align 8, !tbaa !76
  %i.l = fsub double %.val.epil, %.val7.epil      ; 2 uses
  %4 = fmul double %i.l, %i.l
  %i.m = fsub double %.val6.epil, %.val8.epil     ; 2 uses
  %i.n = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.m, double %4)
  %i.o = fadd double %.0512.epil, %i.n            ; 2 uses
  %i.p = add nuw i64 %.013.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !427

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil ]
  %i.q = uitofp i64 %i.d to double
  %i.r = fdiv double %.05.lcssa, %i.q
  ret double %i.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 6 uses
  %.0512 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.bi, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.s = getelementptr inbounds [24 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %2, i64 %.013 ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val = load double, ptr %i.u, align 8, !tbaa !76
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %.val6 = load double, ptr %i.v, align 8, !tbaa !76
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val7 = load double, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr i8, ptr %i.t, i64 16
  %.val8 = load double, ptr %i.x, align 8, !tbaa !76
  %i.y = fsub double %.val, %.val7                ; 2 uses
  %5 = fmul double %i.y, %i.y
  %i.z = fsub double %.val6, %.val8               ; 2 uses
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %5)
  %i.ab = fadd double %.0512, %i.aa
  %i.ac = or disjoint i64 %.013, 1                ; 2 uses
  %i.ad = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ac ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val.1 = load double, ptr %i.af, align 8, !tbaa !76
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %.val6.1 = load double, ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val7.1 = load double, ptr %i.ah, align 8, !tbaa !76
  %i.ai = getelementptr i8, ptr %i.ae, i64 16
  %.val8.1 = load double, ptr %i.ai, align 8, !tbaa !76
  %i.aj = fsub double %.val.1, %.val7.1           ; 2 uses
  %6 = fmul double %i.aj, %i.aj
  %i.ak = fsub double %.val6.1, %.val8.1          ; 2 uses
  %i.al = tail call noundef double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %6)
  %i.am = fadd double %i.ab, %i.al
  %i.an = or disjoint i64 %.013, 2                ; 2 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds [24 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %.val.2 = load double, ptr %i.aq, align 8, !tbaa !76
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %.val6.2 = load double, ptr %i.ar, align 8, !tbaa !76
  %i.as = getelementptr i8, ptr %i.ap, i64 8
  %.val7.2 = load double, ptr %i.as, align 8, !tbaa !76
  %i.at = getelementptr i8, ptr %i.ap, i64 16
  %.val8.2 = load double, ptr %i.at, align 8, !tbaa !76
  %i.au = fsub double %.val.2, %.val7.2           ; 2 uses
  %7 = fmul double %i.au, %i.au
  %i.av = fsub double %.val6.2, %.val8.2          ; 2 uses
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.av, double %i.av, double %7)
  %i.ax = fadd double %i.am, %i.aw
  %i.ay = or disjoint i64 %.013, 3                ; 2 uses
  %i.az = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ay ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val.3 = load double, ptr %i.bb, align 8, !tbaa !76
  %i.bc = getelementptr i8, ptr %i.az, i64 16
  %.val6.3 = load double, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val7.3 = load double, ptr %i.bd, align 8, !tbaa !76
  %i.be = getelementptr i8, ptr %i.ba, i64 16
  %.val8.3 = load double, ptr %i.be, align 8, !tbaa !76
  %i.bf = fsub double %.val.3, %.val7.3           ; 2 uses
  %8 = fmul double %i.bf, %i.bf
  %i.bg = fsub double %.val6.3, %.val8.3          ; 2 uses
  %i.bh = tail call noundef double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %8)
  %i.bi = fadd double %i.ax, %i.bh                ; 3 uses
  %i.bj = add nuw i64 %.013, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !428
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb1ELb0ELb1EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.0512.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.013.epil = phi i64 [ %i.n, %.lr.ph.epil ], [ %.013.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.0512.epil = phi double [ %i.m, %.lr.ph.epil ], [ %.0512.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.epil ; 2 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.013.epil ; 2 uses
  %.val.epil = load double, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val6.epil = load double, ptr %i.h, align 8, !tbaa !76
  %.val7.epil = load double, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %.val8.epil = load double, ptr %i.i, align 8, !tbaa !76
  %i.j = fsub double %.val.epil, %.val7.epil      ; 2 uses
  %4 = fmul double %i.j, %i.j
  %i.k = fsub double %.val6.epil, %.val8.epil     ; 2 uses
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %4)
  %i.m = fadd double %.0512.epil, %i.l            ; 2 uses
  %i.n = add nuw i64 %.013.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !429

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil ]
  %i.o = uitofp i64 %i.d to double
  %i.p = fdiv double %.05.lcssa, %i.o
  ret double %i.p

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 6 uses
  %.0512 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %2, i64 %.013 ; 2 uses
  %.val = load double, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr i8, ptr %i.q, i64 16
  %.val6 = load double, ptr %i.s, align 8, !tbaa !76
  %.val7 = load double, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %.val8 = load double, ptr %i.t, align 8, !tbaa !76
  %i.u = fsub double %.val, %.val7                ; 2 uses
  %5 = fmul double %i.u, %i.u
  %i.v = fsub double %.val6, %.val8               ; 2 uses
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.v, double %5)
  %i.x = fadd double %.0512, %i.w
  %i.y = or disjoint i64 %.013, 1                 ; 2 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %2, i64 %i.y ; 2 uses
  %.val.1 = load double, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val6.1 = load double, ptr %i.ab, align 8, !tbaa !76
  %.val7.1 = load double, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val8.1 = load double, ptr %i.ac, align 8, !tbaa !76
  %i.ad = fsub double %.val.1, %.val7.1           ; 2 uses
  %6 = fmul double %i.ad, %i.ad
  %i.ae = fsub double %.val6.1, %.val8.1          ; 2 uses
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %6)
  %i.ag = fadd double %i.x, %i.af
  %i.ah = or disjoint i64 %.013, 2                ; 2 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ah ; 2 uses
  %.val.2 = load double, ptr %i.ai, align 8, !tbaa !76
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val6.2 = load double, ptr %i.ak, align 8, !tbaa !76
  %.val7.2 = load double, ptr %i.aj, align 8, !tbaa !76
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val8.2 = load double, ptr %i.al, align 8, !tbaa !76
  %i.am = fsub double %.val.2, %.val7.2           ; 2 uses
  %7 = fmul double %i.am, %i.am
  %i.an = fsub double %.val6.2, %.val8.2          ; 2 uses
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.an, double %7)
  %i.ap = fadd double %i.ag, %i.ao
  %i.aq = or disjoint i64 %.013, 3                ; 2 uses
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %2, i64 %i.aq ; 2 uses
  %.val.3 = load double, ptr %i.ar, align 8, !tbaa !76
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val6.3 = load double, ptr %i.at, align 8, !tbaa !76
  %.val7.3 = load double, ptr %i.as, align 8, !tbaa !76
  %i.au = getelementptr i8, ptr %i.as, i64 16
  %.val8.3 = load double, ptr %i.au, align 8, !tbaa !76
  %i.av = fsub double %.val.3, %.val7.3           ; 2 uses
  %8 = fmul double %i.av, %i.av
  %i.aw = fsub double %.val6.3, %.val8.3          ; 2 uses
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %8)
  %i.ay = fadd double %i.ap, %i.ax                ; 3 uses
  %i.az = add nuw i64 %.013, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !430
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef double @_ZN3gmx15analysismodules12_GLOBAL__N_123calcAverageDisplacementILb1ELb1ELb0EEEdNS_8ArrayRefIKNS_11BasicVectorIdEEEES7_(ptr %0, ptr %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24                  ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.0512.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.013.epil = phi i64 [ %i.n, %.lr.ph.epil ], [ %.013.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.0512.epil = phi double [ %i.m, %.lr.ph.epil ], [ %.0512.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.epil ; 2 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %2, i64 %.013.epil ; 2 uses
  %.val.epil = load double, ptr %i.f, align 8, !tbaa !76
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val6.epil = load double, ptr %i.h, align 8, !tbaa !76
  %.val7.epil = load double, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val8.epil = load double, ptr %i.i, align 8, !tbaa !76
  %i.j = fsub double %.val.epil, %.val7.epil      ; 2 uses
  %4 = fmul double %i.j, %i.j
  %i.k = fsub double %.val6.epil, %.val8.epil     ; 2 uses
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.k, double %4)
  %i.m = fadd double %.0512.epil, %i.l            ; 2 uses
  %i.n = add nuw i64 %.013.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !431

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.05.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil ]
  %i.o = uitofp i64 %i.d to double
  %i.p = fdiv double %.05.lcssa, %i.o
  ret double %i.p

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 6 uses
  %.0512 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.q = getelementptr inbounds [24 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %2, i64 %.013 ; 2 uses
  %.val = load double, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %.val6 = load double, ptr %i.s, align 8, !tbaa !76
  %.val7 = load double, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val8 = load double, ptr %i.t, align 8, !tbaa !76
  %i.u = fsub double %.val, %.val7                ; 2 uses
  %5 = fmul double %i.u, %i.u
  %i.v = fsub double %.val6, %.val8               ; 2 uses
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.v, double %i.v, double %5)
  %i.x = fadd double %.0512, %i.w
  %i.y = or disjoint i64 %.013, 1                 ; 2 uses
  %i.z = getelementptr inbounds [24 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %2, i64 %i.y ; 2 uses
  %.val.1 = load double, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val6.1 = load double, ptr %i.ab, align 8, !tbaa !76
  %.val7.1 = load double, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val8.1 = load double, ptr %i.ac, align 8, !tbaa !76
  %i.ad = fsub double %.val.1, %.val7.1           ; 2 uses
  %6 = fmul double %i.ad, %i.ad
  %i.ae = fsub double %.val6.1, %.val8.1          ; 2 uses
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %6)
  %i.ag = fadd double %i.x, %i.af
  %i.ah = or disjoint i64 %.013, 2                ; 2 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ah ; 2 uses
  %.val.2 = load double, ptr %i.ai, align 8, !tbaa !76
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val6.2 = load double, ptr %i.ak, align 8, !tbaa !76
  %.val7.2 = load double, ptr %i.aj, align 8, !tbaa !76
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val8.2 = load double, ptr %i.al, align 8, !tbaa !76
  %i.am = fsub double %.val.2, %.val7.2           ; 2 uses
  %7 = fmul double %i.am, %i.am
  %i.an = fsub double %.val6.2, %.val8.2          ; 2 uses
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.an, double %7)
  %i.ap = fadd double %i.ag, %i.ao
  %i.aq = or disjoint i64 %.013, 3                ; 2 uses
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %2, i64 %i.aq ; 2 uses
  %.val.3 = load double, ptr %i.ar, align 8, !tbaa !76
  %i.at = getelementptr i8, ptr %i.ar, i64 8
  %.val6.3 = load double, ptr %i.at, align 8, !tbaa !76
  %.val7.3 = load double, ptr %i.as, align 8, !tbaa !76
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %.val8.3 = load double, ptr %i.au, align 8, !tbaa !76
  %i.av = fsub double %.val.3, %.val7.3           ; 2 uses
  %8 = fmul double %i.av, %i.av
  %i.aw = fsub double %.val6.3, %.val8.3          ; 2 uses
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %8)
  %i.ay = fadd double %i.ap, %i.ax                ; 3 uses
  %i.az = add nuw i64 %.013, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !432
}

declare noundef i32 @_ZN3gmx9Selection22initOriginalIdsToGroupEPK10gmx_mtop_t9e_index_t(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !130
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !130
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !152
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !130
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !130
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #24
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !152
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3gmx15analysismodules12_GLOBAL__N_112MsdGroupDataC2ERKNS_9SelectionENS_8ArrayRefIKNS1_12MoleculeDataEEENS6_IKiEE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 56)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !164
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = icmp eq ptr %2, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !151
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %3 to i64
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  %i.k = trunc i64 %i.j to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.k, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.noexc.i, label %_ZNSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i10.thread.i, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIdEEE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i10.thread.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr null, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.p, ptr %i.q, align 8, !tbaa !169
  store ptr null, ptr %i.o, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br label %bb.g

_ZNSt15__new_allocatorIN3gmx11BasicVectorIdEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.s = mul nuw nsw i64 %i.m, 24                 ; 4 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc8 unwind label %bb.h    ; 3 uses

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIdEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !167
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !169
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.t, i64 %i.s
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !168
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc8
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i18.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i18.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !169
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #24
end_hunk_1
