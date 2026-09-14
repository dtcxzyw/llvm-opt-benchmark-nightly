Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splineutil?download=true
inline.NumInlined: 257
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx8internal45throwUnlessDerivativeIsConsistentWithFunctionENS_8ArrayRefIKdEES3_dRKSt4pairIffE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %9, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal45throwUnlessDerivativeIsConsistentWithFunctionENS_8ArrayRefIKdEES3_dRKSt4pairIffE, ptr %i.av, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 150, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.as, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.as, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #19
          to label %bb.m unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.ax, %bb.h ] ; 4 uses
  %.1 = phi i1 [ %.0, %bb.i ], [ true, %bb.h ]    ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #20
  %i.az = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

.thread:                                          ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.thread
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !29
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #21
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread83: ; preds = %.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !30
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !29
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bm) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.1, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.1, label %bb.k, label %bb.l

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread
  %.pn.pn.pn76.ph = phi { ptr, i32 } [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread83 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn76 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn76.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.as) #20
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn75 = phi { ptr, i32 } [ %.pn.pn.pn76, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn.pn75

.critedge:                                        ; preds = %bb.a, %._crit_edge
  ret void

bb.m:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN3gmx8internal49findSmallestQuotientOfFunctionAndSecondDerivativeERKSt8functionIFddEERKSt4pairIffE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !46
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = fadd <2 x double> %i.e, <double f0x3F20000000000000, double f0xBF20000000000000> ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0  ; 3 uses
  %i.h = extractelement <2 x double> %i.f, i64 1  ; 3 uses
  %i.i = fsub double %i.h, %i.g
  %i.j = fdiv double %i.i, 5.000000e+02
  %i.k = fcmp ugt double %i.g, %i.h
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNKSt8functionIFddEEclEd.exit19
  %i.n = fptrunc double %.sroa.speculated to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.024.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  ret float %.024.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt8functionIFddEEclEd.exit19
  %.029 = phi double [ %i.g, %.lr.ph ], [ %i.ai, %_ZNKSt8functionIFddEEclEd.exit19 ] ; 4 uses
  %.02428 = phi double [ f0x47EFFFFFE0000000, %.lr.ph ], [ %.sroa.speculated, %_ZNKSt8functionIFddEEclEd.exit19 ] ; 2 uses
  %i.o = fadd double %.029, f0xBF20000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.o, ptr %i.c, align 8, !tbaa !13
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFddEEclEd.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit:                   ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.r = call noundef double %i.q(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %.029, ptr %i.b, align 8, !tbaa !13
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !16
  %.not.i.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i.i16, label %bb.d, label %_ZNKSt8functionIFddEEclEd.exit17

bb.d:                                             ; preds = %_ZNKSt8functionIFddEEclEd.exit
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit17:                 ; preds = %_ZNKSt8functionIFddEEclEd.exit
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.u = call noundef double %i.t(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = fadd double %.029, f0x3F20000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.v, ptr %i.a, align 8, !tbaa !13
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !16
  %.not.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not.i.i18, label %bb.e, label %_ZNKSt8functionIFddEEclEd.exit19

bb.e:                                             ; preds = %_ZNKSt8functionIFddEEclEd.exit17
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit19:                 ; preds = %_ZNKSt8functionIFddEEclEd.exit17
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.y = call noundef double %i.x(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = call noundef double @llvm.fabs.f64(double %i.u) ; 2 uses
  %i.aa = fcmp olt double %i.z, f0x3C00000000000000
  %.sroa.speculated9.i = select i1 %i.aa, double f0x3C00000000000000, double %i.z
  %i.ab = call double @llvm.fmuladd.f64(double %i.u, double -2.000000e+00, double %i.r)
  %i.ac = fadd double %i.ab, %i.y
  %i.ad = fmul double %i.ac, f0x4190000000000000
  %i.ae = call noundef double @llvm.fabs.f64(double %i.ad) ; 2 uses
  %i.af = fcmp olt double %i.ae, f0x3C00000000000000
  %.sroa.speculated.i = select i1 %i.af, double f0x3C00000000000000, double %i.ae
  %i.ag = fdiv double %.sroa.speculated9.i, %.sroa.speculated.i ; 2 uses
  %i.ah = fcmp olt double %i.ag, %.02428
  %.sroa.speculated = select i1 %i.ah, double %i.ag, double %.02428 ; 2 uses
  %i.ai = fadd double %i.j, %.029                 ; 2 uses
  %i.aj = fcmp ugt double %i.ai, %i.h
  br i1 %i.aj, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN3gmx8internal49findSmallestQuotientOfFunctionAndSecondDerivativeENS_8ArrayRefIKdEEdRKSt4pairIffE(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(none) %1, double noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = load <2 x float>, ptr %3, align 4, !tbaa !46
  %i.b = fpext <2 x float> %i.a to <2 x double>
  %i.c = insertelement <2 x double> poison, double %2, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fdiv <2 x double> %i.b, %i.d             ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = fptoui double %i.f to i64                ; 5 uses
  %i.h = extractelement <2 x double> %i.e, i64 1
  %i.i = fptoui double %i.h to i64                ; 4 uses
  %i.j = add i64 %i.g, 2                          ; 4 uses
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %4 = add i64 %i.g, 1                            ; 3 uses
  %i.l = fmul double %2, %2                       ; 3 uses
  %.phi.trans.insert = getelementptr [8 x i8], ptr %0, i64 %4
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 3 uses
  %i.m = sub i64 %i.i, %i.g
  %i.n = add i64 %i.i, -3
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.o = getelementptr [8 x i8], ptr %0, i64 %4
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load double, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.j
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = tail call noundef double @llvm.fabs.f64(double %.pre) ; 2 uses
  %i.u = fcmp olt double %i.t, f0x3C00000000000000
  %.sroa.speculated9.i.prol = select i1 %i.u, double f0x3C00000000000000, double %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %.pre, double -2.000000e+00, double %i.q)
  %i.w = fadd double %i.v, %i.s
  %i.x = fdiv double %i.w, %i.l
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.x) ; 2 uses
  %i.z = fcmp olt double %i.y, f0x3C00000000000000
  %.sroa.speculated.i.prol = select i1 %i.z, double f0x3C00000000000000, double %i.y
  %i.aa = fdiv double %.sroa.speculated9.i.prol, %.sroa.speculated.i.prol ; 2 uses
  %i.ab = fcmp olt double %i.aa, f0x47EFFFFFE0000000
  %.sroa.speculated.prol = select i1 %i.ab, double %i.aa, double f0x47EFFFFFE0000000 ; 2 uses
  %i.ac = add i64 %i.g, 3
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.sroa.speculated.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.sroa.speculated.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.pre, %.lr.ph ], [ %i.s, %.prol.loopexit.unr-lcssa ]
  %.unr19 = phi i64 [ %i.j, %.lr.ph ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.017.unr = phi i64 [ %4, %.lr.ph ], [ %i.j, %.prol.loopexit.unr-lcssa ]
  %.01516.unr = phi double [ f0x47EFFFFFE0000000, %.lr.ph ], [ %.sroa.speculated.prol, %.prol.loopexit.unr-lcssa ]
  %i.ad = icmp eq i64 %i.n, %i.g
  br i1 %i.ad, label %._crit_edge.loopexit, label %.lr.ph.new

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.sroa.speculated.lcssa = phi double [ %.sroa.speculated.lcssa.unr, %.prol.loopexit ], [ %.sroa.speculated.1, %.lr.ph.new ]
  %i.ae = fptrunc double %.sroa.speculated.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.015.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.ae, %._crit_edge.loopexit ]
  ret float %.015.lcssa

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %5 = phi double [ %i.at, %.lr.ph.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %6 = phi i64 [ %i.bd, %.lr.ph.new ], [ %.unr19, %.prol.loopexit ] ; 4 uses
  %.017 = phi i64 [ %9, %.lr.ph.new ], [ %.017.unr, %.prol.loopexit ]
  %.01516 = phi double [ %.sroa.speculated.1, %.lr.ph.new ], [ %.01516.unr, %.prol.loopexit ] ; 2 uses
  %7 = getelementptr [8 x i8], ptr %0, i64 %.017
  %8 = getelementptr i8, ptr %7, i64 -8
  %i.af = load double, ptr %8, align 8, !tbaa !13
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13 ; 3 uses
  %i.ai = tail call noundef double @llvm.fabs.f64(double %5) ; 2 uses
  %i.aj = fcmp olt double %i.ai, f0x3C00000000000000
  %.sroa.speculated9.i = select i1 %i.aj, double f0x3C00000000000000, double %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %5, double -2.000000e+00, double %i.af)
  %i.al = fadd double %i.ak, %i.ah
  %i.am = fdiv double %i.al, %i.l
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am) ; 2 uses
  %i.ao = fcmp olt double %i.an, f0x3C00000000000000
  %.sroa.speculated.i = select i1 %i.ao, double f0x3C00000000000000, double %i.an
  %i.ap = fdiv double %.sroa.speculated9.i, %.sroa.speculated.i ; 2 uses
  %i.aq = fcmp olt double %i.ap, %.01516
  %.sroa.speculated = select i1 %i.aq, double %i.ap, double %.01516 ; 2 uses
  %9 = add nuw i64 %6, 1                          ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %0, i64 %6
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %10 = load double, ptr %i.as, align 8, !tbaa !13
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %9
  %i.at = load double, ptr %11, align 8, !tbaa !13 ; 2 uses
  %i.au = tail call noundef double @llvm.fabs.f64(double %i.ah) ; 2 uses
  %i.av = fcmp olt double %i.au, f0x3C00000000000000
  %.sroa.speculated9.i.1 = select i1 %i.av, double f0x3C00000000000000, double %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ah, double -2.000000e+00, double %10)
  %i.ax = fadd double %i.aw, %i.at
  %i.ay = fdiv double %i.ax, %i.l
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.ba = fcmp olt double %i.az, f0x3C00000000000000
  %.sroa.speculated.i.1 = select i1 %i.ba, double f0x3C00000000000000, double %i.az
  %i.bb = fdiv double %.sroa.speculated9.i.1, %.sroa.speculated.i.1 ; 2 uses
  %i.bc = fcmp olt double %i.bb, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.bc, double %i.bb, double %.sroa.speculated ; 2 uses
  %i.bd = add nuw i64 %6, 2                       ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bd, %i.i
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph.new, !llvm.loop !62
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN3gmx8internal48findSmallestQuotientOfFunctionAndThirdDerivativeERKSt8functionIFddEERKSt4pairIffE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !46
  %i.g = fpext <2 x float> %i.f to <2 x double>
  %i.h = fadd <2 x double> %i.g, <double f0x3F58406003B2AE5A, double f0xBF58406003B2AE5A> ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 3 uses
  %i.j = extractelement <2 x double> %i.h, i64 1  ; 3 uses
  %i.k = fsub double %i.j, %i.i
  %i.l = fdiv double %i.k, 5.000000e+02
  %i.m = fcmp ugt double %i.i, %i.j
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNKSt8functionIFddEEclEd.exit29
  %i.p = fptrunc double %.sroa.speculated to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.034.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  ret float %.034.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt8functionIFddEEclEd.exit29
  %.041 = phi double [ %i.i, %.lr.ph ], [ %i.at, %_ZNKSt8functionIFddEEclEd.exit29 ] ; 6 uses
  %.03440 = phi double [ f0x47EFFFFFE0000000, %.lr.ph ], [ %.sroa.speculated, %_ZNKSt8functionIFddEEclEd.exit29 ] ; 2 uses
  %i.q = fadd double %.041, f0xBF58406003B2AE5A
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %i.q, ptr %i.e, align 8, !tbaa !13
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFddEEclEd.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit:                   ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.t = call noundef double %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.u = fadd double %.041, f0xBF48406003B2AE5A
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.u, ptr %i.d, align 8, !tbaa !13
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !16
  %.not.i.i22 = icmp eq ptr %i.v, null
  br i1 %.not.i.i22, label %bb.d, label %_ZNKSt8functionIFddEEclEd.exit23

bb.d:                                             ; preds = %_ZNKSt8functionIFddEEclEd.exit
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit23:                 ; preds = %_ZNKSt8functionIFddEEclEd.exit
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.x = call noundef double %i.w(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.041, ptr %i.c, align 8, !tbaa !13
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !16
  %.not.i.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i.i24, label %bb.e, label %_ZNKSt8functionIFddEEclEd.exit25

bb.e:                                             ; preds = %_ZNKSt8functionIFddEEclEd.exit23
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit25:                 ; preds = %_ZNKSt8functionIFddEEclEd.exit23
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.aa = call noundef double %i.z(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = fadd double %.041, f0x3F48406003B2AE5A
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.ab, ptr %i.b, align 8, !tbaa !13
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !16
  %.not.i.i26 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i26, label %bb.f, label %_ZNKSt8functionIFddEEclEd.exit27

bb.f:                                             ; preds = %_ZNKSt8functionIFddEEclEd.exit25
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit27:                 ; preds = %_ZNKSt8functionIFddEEclEd.exit25
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ae = call noundef double %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.af = fadd double %.041, f0x3F58406003B2AE5A
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.af, ptr %i.a, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !16
  %.not.i.i28 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i28, label %bb.g, label %_ZNKSt8functionIFddEEclEd.exit29

bb.g:                                             ; preds = %_ZNKSt8functionIFddEEclEd.exit27
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFddEEclEd.exit29:                 ; preds = %_ZNKSt8functionIFddEEclEd.exit27
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ai = call noundef double %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = call noundef double @llvm.fabs.f64(double %i.aa) ; 2 uses
  %i.ak = fcmp olt double %i.aj, f0x3C00000000000000
  %.sroa.speculated11.i = select i1 %i.ak, double f0x3C00000000000000, double %i.aj
  %i.al = call double @llvm.fmuladd.f64(double %i.ae, double -2.000000e+00, double %i.ai)
  %i.am = call double @llvm.fmuladd.f64(double %i.x, double 2.000000e+00, double %i.al)
  %i.an = fsub double %i.am, %i.t
  %i.ao = fdiv double %i.an, f0x3E0BDB8CDADBE118
  %i.ap = call noundef double @llvm.fabs.f64(double %i.ao) ; 2 uses
  %i.aq = fcmp olt double %i.ap, f0x3C00000000000000
  %.sroa.speculated.i = select i1 %i.aq, double f0x3C00000000000000, double %i.ap
  %i.ar = fdiv double %.sroa.speculated11.i, %.sroa.speculated.i ; 2 uses
  %i.as = fcmp olt double %i.ar, %.03440
  %.sroa.speculated = select i1 %i.as, double %i.ar, double %.03440 ; 2 uses
  %i.at = fadd double %i.l, %.041                 ; 2 uses
  %i.au = fcmp ugt double %i.at, %i.j
  br i1 %i.au, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZN3gmx8internal48findSmallestQuotientOfFunctionAndThirdDerivativeENS_8ArrayRefIKdEEdRKSt4pairIffE(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(none) %1, double noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = load <2 x float>, ptr %3, align 4, !tbaa !46
  %i.b = fpext <2 x float> %i.a to <2 x double>
  %i.c = insertelement <2 x double> poison, double %2, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fdiv <2 x double> %i.b, %i.d             ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 0
  %i.g = fptoui double %i.f to i64                ; 6 uses
  %i.h = extractelement <2 x double> %i.e, i64 1
  %i.i = fptoui double %i.h to i64                ; 4 uses
  %i.j = add i64 %i.g, 4                          ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = add i64 %i.g, 2                          ; 3 uses
  %i.m = fmul double %2, 2.000000e+00
  %i.n = fmul double %2, %i.m
  %i.o = fmul double %2, %i.n                     ; 3 uses
  %.phi.trans.insert = getelementptr [8 x i8], ptr %0, i64 %i.l
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 2 uses
  %i.p = sub i64 %i.i, %i.g
  %i.q = add i64 %i.i, -5
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %i.t = load double, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr i8, ptr %i.r, i64 -8
  %i.v = load double, ptr %i.u, align 8, !tbaa !13
  %i.w = add i64 %i.g, 3                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.j
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = tail call noundef double @llvm.fabs.f64(double %.pre) ; 2 uses
  %i.ac = fcmp olt double %i.ab, f0x3C00000000000000
  %.sroa.speculated11.i.prol = select i1 %i.ac, double f0x3C00000000000000, double %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.y, double -2.000000e+00, double %i.aa)
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.v, double 2.000000e+00, double %i.ad)
  %i.af = fsub double %i.ae, %i.t
  %i.ag = fdiv double %i.af, %i.o
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.ag) ; 2 uses
  %i.ai = fcmp olt double %i.ah, f0x3C00000000000000
  %.sroa.speculated.i.prol = select i1 %i.ai, double f0x3C00000000000000, double %i.ah
  %i.aj = fdiv double %.sroa.speculated11.i.prol, %.sroa.speculated.i.prol ; 2 uses
  %i.ak = fcmp olt double %i.aj, f0x47EFFFFFE0000000
  %.sroa.speculated.prol = select i1 %i.ak, double %i.aj, double f0x47EFFFFFE0000000 ; 2 uses
  %i.al = add i64 %i.g, 5
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi double [ %.pre, %.lr.ph ], [ %i.y, %.prol.loopexit.unr-lcssa ]
  %.unr23 = phi i64 [ %i.j, %.lr.ph ], [ %i.al, %.prol.loopexit.unr-lcssa ]
  %.021.unr = phi i64 [ %i.l, %.lr.ph ], [ %i.w, %.prol.loopexit.unr-lcssa ]
  %.01920.unr = phi double [ f0x47EFFFFFE0000000, %.lr.ph ], [ %.sroa.speculated.prol, %.prol.loopexit.unr-lcssa ]
end_hunk_0
