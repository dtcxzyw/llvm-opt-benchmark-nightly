Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splineutil?download=true
inline.NumInlined: 257
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx8internal48findSmallestQuotientOfFunctionAndThirdDerivativeENS_8ArrayRefIKdEEdRKSt4pairIffE:bb.a
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
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
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
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22 ; 7 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !69
  %i.m = getelementptr i8, ptr %i.l, i64 %i.c     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.idx.i.i.i.i.i.i.i = add i64 %i.c, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = fmul double %3, 1.200000e+01
  %i.t = fmul double %3, %i.s                     ; 3 uses
  %i.u = load <2 x double>, ptr %i.q, align 8, !tbaa !13 ; 3 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fmul double %i.v, -5.600000e+01
  %i.x = load double, ptr %i.r, align 8, !tbaa !13
  %7 = load <3 x double>, ptr %1, align 8, !tbaa !13 ; 4 uses
  %i.y = fneg <2 x double> %i.u
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = insertelement <2 x double> %i.z, double %i.w, i64 1
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> <double 4.000000e+00, double 1.100000e+01>, <2 x double> %i.aa)
  %8 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 6.000000e+00, double 1.140000e+02>, <2 x double> %i.ab)
  %9 = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> <double -2.000000e+01, double -1.040000e+02>, <2 x double> %i.ac)
  %i.ae = shufflevector <3 x double> %7, <3 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> <double 1.100000e+01, double 3.500000e+01>, <2 x double> %i.ad)
  %i.ag = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fdiv <2 x double> %i.af, %i.ah
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aj, ptr %i.l, align 8, !tbaa !13
  %i.ak = ashr exact i64 %i.c, 3                  ; 2 uses
  %i.al = add nsw i64 %i.ak, -2                   ; 4 uses
  %i.am = icmp ugt i64 %i.al, 2
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc56
  %i.an = add nsw i64 %i.ak, -4                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.ao = or disjoint i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %10 = shufflevector <3 x double> %7, <3 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x double> [ %10, %vector.ph ], [ %wide.load96, %vector.body ]
  %i.ap = or disjoint i64 %index, 2               ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %1, i64 %i.ap ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %wide.load = load <4 x double>, ptr %i.ar, align 8, !tbaa !13
  %i.as = fneg <4 x double> %wide.load
  %i.at = getelementptr [8 x i8], ptr %1, i64 %index
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %wide.load96 = load <4 x double>, ptr %i.au, align 8, !tbaa !13 ; 4 uses
  %i.av = shufflevector <4 x double> %vector.recur, <4 x double> %wide.load96, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load96, <4 x double> splat (double 1.600000e+01), <4 x double> %i.as)
  %i.ax = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.av, <4 x double> splat (double -3.000000e+01), <4 x double> %i.aw)
  %i.ay = getelementptr i8, ptr %i.aq, i64 -8
  %wide.load97 = load <4 x double>, ptr %i.ay, align 8, !tbaa !13
  %i.az = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load97, <4 x double> splat (double 1.600000e+01), <4 x double> %i.ax)
  %i.ba = getelementptr i8, ptr %i.aq, i64 -16
  %wide.load98 = load <4 x double>, ptr %i.ba, align 8, !tbaa !13
  %i.bb = fsub <4 x double> %i.az, %wide.load98
  %i.bc = fdiv <4 x double> %i.bb, %broadcast.splat
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ap
  store <4 x double> %i.bc, ptr %i.bd, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x double> %wide.load96, i64 3
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi double [ %i.x, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.092.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader99, %.lr.ph
  %i.bf = phi double [ %i.bm, %.lr.ph ], [ %.ph, %.lr.ph.preheader99 ]
  %.092 = phi i64 [ %i.bk, %.lr.ph ], [ %.092.ph, %.lr.ph.preheader99 ] ; 3 uses
  %i.bg = getelementptr [8 x i8], ptr %1, i64 %.092 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13
  %i.bj = fneg double %i.bi
  %i.bk = add nuw i64 %.092, 1                    ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double 1.600000e+01, double %i.bj)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bf, double -3.000000e+01, double %i.bn)
  %i.bp = getelementptr i8, ptr %i.bg, i64 -8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double 1.600000e+01, double %i.bo)
  %i.bs = getelementptr i8, ptr %i.bg, i64 -16
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13
  %i.bu = fsub double %i.br, %i.bt
  %i.bv = fdiv double %i.bu, %i.t
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.092
  store double %i.bv, ptr %i.bw, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %i.bk, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.noexc56
  %i.bx = getelementptr i8, ptr %1, i64 %i.c
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cc = fmul double %i.cb, -2.000000e+01
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bz, double 1.100000e+01, double %i.cc)
  %i.ce = getelementptr i8, ptr %1, i64 %i.c      ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 2 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double 6.000000e+00, double %i.cd)
  %i.ci = getelementptr i8, ptr %i.ce, i64 -32
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cj, double 4.000000e+00, double %i.ch)
  %i.cl = getelementptr i8, ptr %i.ce, i64 -40
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cn = fsub double %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.al
  %i.cp = fmul double %i.cb, -1.040000e+02
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.bz, double 3.500000e+01, double %i.cp)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cg, double 1.140000e+02, double %i.cq)
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cj, double -5.600000e+01, double %i.cr)
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cm, double 1.100000e+01, double %i.cs)
  %i.cu = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = fdiv <2 x double> %i.cv, %i.ah
  store <2 x double> %i.cw, ptr %i.co, align 8, !tbaa !13
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
end_hunk_0
