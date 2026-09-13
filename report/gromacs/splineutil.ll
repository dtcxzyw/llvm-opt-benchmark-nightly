Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splineutil?download=true
inline.NumInlined: 257
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx8internal48findSmallestQuotientOfFunctionAndThirdDerivativeERKSt8functionIFddEERKSt4pairIffE:bb.a
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
  %.sroa.speculated.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.sroa.speculated.prol, %.prol.loopexit.unr-lcssa ]
  %i.am = icmp eq i64 %i.q, %i.g
  br i1 %i.am, label %._crit_edge.loopexit, label %.lr.ph.new

._crit_edge.loopexit:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.sroa.speculated.lcssa = phi double [ %.sroa.speculated.lcssa.unr, %.prol.loopexit ], [ %.sroa.speculated.1, %.lr.ph.new ]
  %i.an = fptrunc double %.sroa.speculated.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.an, %._crit_edge.loopexit ]
  ret float %.019.lcssa

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.ao = phi double [ %i.bp, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ap = phi i64 [ %i.cd, %.lr.ph.new ], [ %.unr23, %.prol.loopexit ]
  %.021 = phi i64 [ %i.bn, %.lr.ph.new ], [ %.021.unr, %.prol.loopexit ] ; 5 uses
  %.01920 = phi double [ %.sroa.speculated.1, %.lr.ph.new ], [ %.01920.unr, %.prol.loopexit ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %.021 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13
  %i.at = getelementptr i8, ptr %i.aq, i64 -8
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = add i64 %.021, 1                        ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.ao) ; 2 uses
  %i.bb = fcmp olt double %i.ba, f0x3C00000000000000
  %.sroa.speculated11.i = select i1 %i.bb, double f0x3C00000000000000, double %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ax, double -2.000000e+00, double %i.az)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.au, double 2.000000e+00, double %i.bc)
  %i.be = fsub double %i.bd, %i.as
  %i.bf = fdiv double %i.be, %i.o
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.bf) ; 2 uses
  %i.bh = fcmp olt double %i.bg, f0x3C00000000000000
  %.sroa.speculated.i = select i1 %i.bh, double f0x3C00000000000000, double %i.bg
  %i.bi = fdiv double %.sroa.speculated11.i, %.sroa.speculated.i ; 2 uses
  %i.bj = fcmp olt double %i.bi, %.01920
  %.sroa.speculated = select i1 %i.bj, double %i.bi, double %.01920 ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %0, i64 %i.av
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13
  %i.bn = add i64 %.021, 2                        ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %0, i64 %.021
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13
  %i.bt = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.bu = fcmp olt double %i.bt, f0x3C00000000000000
  %.sroa.speculated11.i.1 = select i1 %i.bu, double f0x3C00000000000000, double %i.bt
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bp, double -2.000000e+00, double %i.bs)
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bm, double 2.000000e+00, double %i.bv)
  %i.bx = fsub double %i.bw, %i.au
  %i.by = fdiv double %i.bx, %i.o
  %i.bz = tail call noundef double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.ca = fcmp olt double %i.bz, f0x3C00000000000000
  %.sroa.speculated.i.1 = select i1 %i.ca, double f0x3C00000000000000, double %i.bz
  %i.cb = fdiv double %.sroa.speculated11.i.1, %.sroa.speculated.i.1 ; 2 uses
  %i.cc = fcmp olt double %i.cb, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.cc, double %i.cb, double %.sroa.speculated ; 2 uses
  %i.cd = add i64 %.021, 4                        ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.i
  br i1 %i.ce, label %.lr.ph.new, label %._crit_edge.loopexit, !llvm.loop !64
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx8internal22vectorSecondDerivativeENS_8ArrayRefIKdEEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.7") align 8 captures(none) %0, ptr %1, ptr %2, double noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %5 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %6 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 24) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.d unwind label %.thread87

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %6, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal22vectorSecondDerivativeENS_8ArrayRefIKdEEd, ptr %i.g, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 315, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.f, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.f, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #19
          to label %bb.j unwind label %bb.f

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread87:                                        ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #20
  br label %.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %.045 = phi i1 [ false, %bb.e ], [ true, %bb.d ]
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.045, label %bb.g, label %bb.i

.sink.split:                                      ; preds = %.thread, %.thread87
  %.pn.pn86.ph = phi { ptr, i32 } [ %i.i, %.thread87 ], [ %i.h, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.pn.pn86 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn.pn86.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.f) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.k, label %.noexc, label %.noexc56

.noexc:                                           ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

.noexc56:                                         ; preds = %bb.h
  %7 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22 ; 9 uses
  store ptr %7, ptr %0, align 8, !tbaa !69
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.c
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %8, ptr %9, align 8, !tbaa !70
  store double 0.000000e+00, ptr %7, align 8, !tbaa !13
  %10 = getelementptr i8, ptr %7, i64 8           ; 3 uses
  %11 = add nsw i64 %i.d, -1                      ; 2 uses
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %.noexc56.a, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc56
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %11, 3    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !13
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx.i.i.i.i.i.i.i
  br label %.noexc56.a

.noexc56.a:                                       ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc56
  %.0.i.i.i.i.i = phi ptr [ %13, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %10, %.noexc56 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = fmul double %3, 1.200000e+01
  %i.q = fmul double %3, %i.p                     ; 3 uses
  %i.r = load <2 x double>, ptr %i.m, align 8, !tbaa !13 ; 3 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fmul double %i.s, -5.600000e+01
  %i.u = load double, ptr %i.n, align 8, !tbaa !13 ; 3 uses
  %i.v = load double, ptr %i.o, align 8, !tbaa !13
  %i.w = load double, ptr %1, align 8, !tbaa !13
  %i.x = fneg <2 x double> %i.r
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.z = insertelement <2 x double> %i.y, double %i.t, i64 1
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> <double 4.000000e+00, double 1.100000e+01>, <2 x double> %i.z)
  %i.ab = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double 6.000000e+00, double 1.140000e+02>, <2 x double> %i.aa)
  %i.ae = insertelement <2 x double> poison, double %i.v, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> <double -2.000000e+01, double -1.040000e+02>, <2 x double> %i.ad)
  %i.ah = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> <double 1.100000e+01, double 3.500000e+01>, <2 x double> %i.ag)
  %i.ak = insertelement <2 x double> poison, double %i.q, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fdiv <2 x double> %i.aj, %i.al
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.an, ptr %7, align 8, !tbaa !13
  %14 = ptrtoint ptr %.0.i.i.i.i.i to i64
  %15 = ptrtoint ptr %7 to i64
  %16 = sub i64 %14, %15                          ; 3 uses
  %i.ao = ashr exact i64 %16, 3                   ; 2 uses
  %i.ap = add nsw i64 %i.ao, -2                   ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 2
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc56.a
  %i.ar = add nsw i64 %i.ao, -4                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.as = or disjoint i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x double> poison, double %i.u, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x double> [ %vector.recur.init, %vector.ph ], [ %wide.load96, %vector.body ]
  %i.at = or disjoint i64 %index, 2               ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %1, i64 %i.at ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %wide.load = load <4 x double>, ptr %i.av, align 8, !tbaa !13
  %i.aw = fneg <4 x double> %wide.load
  %i.ax = getelementptr [8 x i8], ptr %1, i64 %index
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %wide.load96 = load <4 x double>, ptr %i.ay, align 8, !tbaa !13 ; 4 uses
  %i.az = shufflevector <4 x double> %vector.recur, <4 x double> %wide.load96, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ba = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load96, <4 x double> splat (double 1.600000e+01), <4 x double> %i.aw)
  %i.bb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.az, <4 x double> splat (double -3.000000e+01), <4 x double> %i.ba)
  %i.bc = getelementptr i8, ptr %i.au, i64 -8
  %wide.load97 = load <4 x double>, ptr %i.bc, align 8, !tbaa !13
  %i.bd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load97, <4 x double> splat (double 1.600000e+01), <4 x double> %i.bb)
  %i.be = getelementptr i8, ptr %i.au, i64 -16
  %wide.load98 = load <4 x double>, ptr %i.be, align 8, !tbaa !13
  %i.bf = fsub <4 x double> %i.bd, %wide.load98
  %i.bg = fdiv <4 x double> %i.bf, %broadcast.splat
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.at
  store <4 x double> %i.bg, ptr %i.bh, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x double> %wide.load96, i64 3
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi double [ %i.u, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.092.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader99, %.lr.ph
  %i.bj = phi double [ %i.bq, %.lr.ph ], [ %.ph, %.lr.ph.preheader99 ]
  %.092 = phi i64 [ %i.bo, %.lr.ph ], [ %.092.ph, %.lr.ph.preheader99 ] ; 3 uses
  %i.bk = getelementptr [8 x i8], ptr %1, i64 %.092 ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13
  %i.bn = fneg double %i.bm
  %i.bo = add nuw i64 %.092, 1                    ; 3 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13 ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double 1.600000e+01, double %i.bn)
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bj, double -3.000000e+01, double %i.br)
  %i.bt = getelementptr i8, ptr %i.bk, i64 -8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double 1.600000e+01, double %i.bs)
  %i.bw = getelementptr i8, ptr %i.bk, i64 -16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13
  %i.by = fsub double %i.bv, %i.bx
  %i.bz = fdiv double %i.by, %i.q
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.092
  store double %i.bz, ptr %i.ca, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %i.bo, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.noexc56.a
  %i.cb = getelementptr i8, ptr %1, i64 %16
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = fmul double %i.cf, -2.000000e+01
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cd, double 1.100000e+01, double %i.cg)
  %i.ci = getelementptr i8, ptr %1, i64 %16       ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double 6.000000e+00, double %i.ch)
  %i.cm = getelementptr i8, ptr %i.ci, i64 -32
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !13 ; 2 uses
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double 4.000000e+00, double %i.cl)
  %i.cp = getelementptr i8, ptr %i.ci, i64 -40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = fsub double %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ap
  %i.ct = fmul double %i.cf, -1.040000e+02
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cd, double 3.500000e+01, double %i.ct)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ck, double 1.140000e+02, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cn, double -5.600000e+01, double %i.cv)
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cq, double 1.100000e+01, double %i.cw)
  %i.cy = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cx, i64 1
  %i.da = fdiv <2 x double> %i.cz, %i.al
  store <2 x double> %i.da, ptr %i.cs, align 8, !tbaa !13
  ret void

bb.i:                                             ; preds = %bb.f, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn86, %bb.g ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %.pn.pn.pn

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::APIError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !31
  store ptr %i.a, ptr %3, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !36
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.d = load ptr, ptr %3, align 8, !tbaa !33     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20, !inline_history !1
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.i = load ptr, ptr %3, align 8, !tbaa !33     ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #20, !inline_history !1
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !37
  store ptr null, ptr %i.o, align 8, !tbaa !40
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !37
  store ptr null, ptr %i.n, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !44
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %i.g = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !30
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !77
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !74
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !74
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !78

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
