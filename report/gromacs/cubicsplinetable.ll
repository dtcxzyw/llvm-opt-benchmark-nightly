inline.NumInlined: 478
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm:bb.a

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 16), (24, 48)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %6 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %7 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %8 = alloca %"class.gmx::ToleranceError", align 8 ; 4 uses
  %9 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %10 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %11 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %14 = alloca %"class.gmx::InconsistentInputError", align 8 ; 4 uses
  %15 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %16 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.gmx::ToleranceError", align 8 ; 4 uses
  %20 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %21 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %22 = alloca %"class.gmx::ToleranceError", align 8 ; 4 uses
  %23 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %24 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %2, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %3, align 4                ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = load float, ptr %3, align 4, !tbaa !40   ; 2 uses
  %i.e = fcmp olt float %i.d, 0.000000e+00
  %i.f = lshr i64 %i.b, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = bitcast i32 %i.g to float
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !38
  %i.k = fsub float %i.j, %i.d
  %i.l = fpext float %i.k to double
  %i.m = fcmp olt double %i.l, 1.000000e-03
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull @.str)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.e unwind label %.thread236

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %5, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %7, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf, ptr %i.o, align 8, !tbaa !22
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.1, ptr %.sroa.4223.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 404, ptr %.sroa.5224.0..sroa_idx, align 8, !tbaa !24
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.n, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.n, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cj unwind label %bb.g

.thread:                                          ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread236:                                       ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #22
  br label %.sink.split

bb.g:                                             ; preds = %bb.e, %bb.f
  %.068 = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.068, label %bb.h, label %bb.ch

.sink.split:                                      ; preds = %.thread, %.thread236
  %.pn117.pn235.ph = phi { ptr, i32 } [ %i.q, %.thread236 ], [ %i.p, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.pn117.pn235 = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn117.pn235.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.n) #22
  br label %bb.ch

bb.i:                                             ; preds = %bb.b
  %i.s = fcmp olt float %4, f0x34000000
  br i1 %i.s, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull @.str.2)
          to label %bb.k unwind label %.thread239

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.l unwind label %.thread243

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx14ToleranceErrorE, i64 16), ptr %8, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %10, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf, ptr %i.u, align 8, !tbaa !22
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.1, ptr %.sroa.4219.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 409, ptr %.sroa.5220.0..sroa_idx, align 8, !tbaa !24
  invoke void @_ZN3gmxlsINS_14ToleranceErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ToleranceError") align 8 %i.t, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx14ToleranceErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cj unwind label %bb.n

.thread239:                                       ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split483

.thread243:                                       ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #22
  br label %.sink.split483

bb.n:                                             ; preds = %bb.l, %bb.m
  %.075 = phi i1 [ false, %bb.m ], [ true, %bb.l ]
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.075, label %bb.o, label %bb.ch

.sink.split483:                                   ; preds = %.thread239, %.thread243
  %.pn114.pn242.ph = phi { ptr, i32 } [ %i.w, %.thread243 ], [ %i.v, %.thread239 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.o

bb.o:                                             ; preds = %.sink.split483, %bb.n
  %.pn114.pn242 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %.pn114.pn242.ph, %.sink.split483 ]
  call void @__cxa_free_exception(ptr %i.t) #22
  br label %bb.ch

bb.p:                                             ; preds = %bb.i
  %.idx333 = mul nuw nsw i64 %2, 48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx333 ; 2 uses
  %.not324 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not324, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.ar
  %.pre = load float, ptr %i.z, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.aa = phi float [ %i.h, %bb.p ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi double [ f0x47EFFFFFE0000000, %bb.p ], [ %.sroa.speculated, %._crit_edge.loopexit ]
  %i.ab = fpext float %4 to double
  %i.ac = fmul double %i.ab, f0x405F2D4A4563563F
  %i.ad = fmul double %i.ac, %.0.lcssa
  %i.ae = tail call double @cbrt(double noundef %i.ad) #24 ; 8 uses
  %i.af = fdiv double 1.000000e+00, %i.ae
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = fmul float %i.aa, %i.ag
  %i.aj = fcmp ogt float %i.ai, 1.000000e+06
  br i1 %i.aj, label %bb.at, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not324, label %._crit_edge332, label %.lr.ph331

.lr.ph331:                                        ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %broadcast.splatinsert527 = insertelement <4 x double> poison, double %i.ae, i64 0 ; 2 uses
  %broadcast.splat528 = shufflevector <4 x double> %broadcast.splatinsert527, <4 x double> poison, <4 x i32> zeroinitializer
  %i.al = shufflevector <4 x double> %broadcast.splatinsert527, <4 x double> poison, <8 x i32> zeroinitializer
  %27 = insertelement <2 x double> poison, double %i.ae, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.az

bb.q:                                             ; preds = %.lr.ph, %bb.ar
  %.078326 = phi ptr [ %1, %.lr.ph ], [ %i.cq, %bb.ar ] ; 7 uses
  %.0325 = phi double [ f0x47EFFFFFE0000000, %.lr.ph ], [ %.sroa.speculated, %bb.ar ] ; 2 uses
  %.sroa.0207.0.copyload = load ptr, ptr %.078326, align 8
  %.sroa.5208.0..078.sroa_idx = getelementptr inbounds nuw i8, ptr %.078326, i64 8
  %.sroa.5208.0.copyload = load ptr, ptr %.sroa.5208.0..078.sroa_idx, align 8 ; 3 uses
  %.sroa.8209.0..078.sroa_idx = getelementptr inbounds nuw i8, ptr %.078326, i64 16
  %.sroa.8209.0.copyload = load ptr, ptr %.sroa.8209.0..078.sroa_idx, align 8
  %.sroa.11.0..078.sroa_idx = getelementptr inbounds nuw i8, ptr %.078326, i64 24
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..078.sroa_idx, align 8 ; 4 uses
  %.sroa.17.0..078.sroa_idx = getelementptr inbounds nuw i8, ptr %.078326, i64 40
  %.sroa.17.0.copyload = load double, ptr %.sroa.17.0..078.sroa_idx, align 8 ; 3 uses
  %i.am = ptrtoint ptr %.sroa.8209.0.copyload to i64
  %i.an = ptrtoint ptr %.sroa.5208.0.copyload to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = load float, ptr %i.z, align 4, !tbaa !25
  %i.as = fpext float %i.ar to double
  %i.at = fdiv double %i.as, %.sroa.17.0.copyload
  %i.au = fadd double %i.at, 1.000000e+00
  %i.av = fcmp ogt double %i.au, %i.aq
  br i1 %i.av, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull @.str.9)
          to label %bb.s unwind label %.thread246

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %bb.t unwind label %.thread250

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %11, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %13, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf, ptr %i.ax, align 8, !tbaa !22
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.1, ptr %.sroa.4204.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 425, ptr %.sroa.5205.0..sroa_idx, align 8, !tbaa !24
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.aw, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr %i.aw, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cj unwind label %bb.w

bb.v:                                             ; preds = %bb.ak
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  br label %bb.af

.thread246:                                       ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  br label %.sink.split484

.thread250:                                       ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #22
  br label %.sink.split484

bb.w:                                             ; preds = %bb.t, %bb.u
  %.082 = phi i1 [ false, %bb.u ], [ true, %bb.t ]
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.082, label %bb.x, label %bb.af

.sink.split484:                                   ; preds = %.thread246, %.thread250
  %.pn105.pn249.ph = phi { ptr, i32 } [ %i.ba, %.thread250 ], [ %i.az, %.thread246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.x

bb.x:                                             ; preds = %.sink.split484, %bb.w
  %.pn105.pn249 = phi { ptr, i32 } [ %i.bb, %bb.w ], [ %.pn105.pn249.ph, %.sink.split484 ]
  call void @__cxa_free_exception(ptr %i.aw) #22
  br label %bb.af

bb.y:                                             ; preds = %bb.q
  %.sroa.14.0..078.sroa_idx = getelementptr inbounds nuw i8, ptr %.078326, i64 32
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..078.sroa_idx, align 8
  %i.bc = ptrtoint ptr %.sroa.14.0.copyload to i64
  %i.bd = ptrtoint ptr %.sroa.11.0.copyload to i64
  %i.be = sub i64 %i.bc, %i.bd
  %.not101 = icmp eq i64 %i.ao, %i.be
  br i1 %.not101, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull @.str.10)
          to label %bb.aa unwind label %.thread253

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(56) %15)
          to label %bb.ab unwind label %.thread257

bb.ab:                                            ; preds = %bb.aa
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %14, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %16, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf, ptr %i.bg, align 8, !tbaa !22
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.1, ptr %.sroa.4200.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 431, ptr %.sroa.5201.0..sroa_idx, align 8, !tbaa !24
  invoke void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InconsistentInputError") align 8 %i.bf, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr %i.bf, ptr nonnull @_ZTIN3gmx22InconsistentInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cj unwind label %bb.ad

.thread253:                                       ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  br label %.sink.split485

.thread257:                                       ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #22
  br label %.sink.split485

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.079 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %.079, label %bb.ae, label %bb.af

.sink.split485:                                   ; preds = %.thread253, %.thread257
  %.pn102.pn256.ph = phi { ptr, i32 } [ %i.bi, %.thread257 ], [ %i.bh, %.thread253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split485, %bb.ad
  %.pn102.pn256 = phi { ptr, i32 } [ %i.bj, %bb.ad ], [ %.pn102.pn256.ph, %.sink.split485 ]
  call void @__cxa_free_exception(ptr %i.bf) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.w, %bb.x, %bb.v
  %.pn105.pn.pn = phi { ptr, i32 } [ %.pn105.pn249, %bb.x ], [ %i.bb, %bb.w ], [ %.pn102.pn256, %bb.ae ], [ %i.bj, %bb.ad ], [ %i.ay, %bb.v ] ; 3 uses
  %.849 = extractvalue { ptr, i32 } %.pn105.pn.pn, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3gmx16GromacsExceptionE) #22
  %i.bl = icmp eq i32 %.849, %i.bk
  br i1 %i.bl, label %bb.ag, label %bb.ch

bb.ag:                                            ; preds = %bb.af
  %.8 = extractvalue { ptr, i32 } %.pn105.pn.pn, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %.8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0207.0.copyload)
          to label %bb.ah unwind label %bb.al

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.4)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN3gmx16GromacsException14prependContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.bn = load ptr, ptr %17, align 8, !tbaa !34   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !37
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf:bb.a
          to label %.noexc92.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit98.thread.i ; 11 uses

.noexc92.i:                                       ; preds = %bb.bh
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !41
  br i1 %i.dm, label %.lr.ph.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87.i: ; preds = %.noexc92.i
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %.idx.i.i.i.i.i.i.i88.i = shl nuw nsw i64 %i.dl, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dp, i8 0, i64 %.idx.i.i.i.i.i.i.i88.i, i1 false), !tbaa !41
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i87.i, %.noexc92.i
  %i.dq = add nsw i32 %i.dg, -1
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = fcmp ule float %.val, 0.000000e+00
  br label %bb.bi

._crit_edge.i:                                    ; preds = %bb.bn
  %i.dt = shl nsw i32 %i.dg, 2
  %i.du = zext nneg i32 %i.dt to i64              ; 3 uses
  %i.dv = shl nuw nsw i64 %i.du, 2                ; 2 uses
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #26
          to label %.lr.ph57.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit98.i ; 8 uses

.lr.ph57.i:                                       ; preds = %._crit_edge.i
  store float 0.000000e+00, ptr %i.dw, align 4, !tbaa !39
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.dv, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dx, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !39
  %.idx533 = shl nuw nsw i64 %i.du, 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx533 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.dg to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph57.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dh, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dz = add nuw <4 x i64> %vec.ind, splat (i64 1) ; 2 uses
  %i.ea = extractelement <4 x i64> %i.dz, i64 0   ; 2 uses
  %i.eb = icmp slt <4 x i64> %i.dz, %broadcast.splat ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dk, i64 %i.ea
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ec, <4 x i1> %i.eb, <4 x double> zeroinitializer), !tbaa !41
  %i.ed = getelementptr [8 x i8], ptr %i.do, i64 %i.ea
  %wide.masked.load529 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ed, <4 x i1> %i.eb, <4 x double> zeroinitializer), !tbaa !41 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index
  %wide.load = load <4 x double>, ptr %i.ee, align 8, !tbaa !41 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index
  %wide.load531 = load <4 x double>, ptr %i.ef, align 8, !tbaa !41 ; 3 uses
  %i.eg = fmul <4 x double> %broadcast.splat528, %wide.load531
  %i.eh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load531, <4 x double> splat (double 2.000000e+00), <4 x double> %wide.masked.load529)
  %i.ei = fneg <4 x double> %i.eh
  %i.ej = fadd <4 x double> %wide.masked.load529, %wide.load531
  %i.ek = shl nuw nsw i64 %index, 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ek
  %i.em = shufflevector <4 x double> %wide.load, <4 x double> %i.eg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.en = fptrunc <8 x double> %i.em to <8 x float>
  %i.eo = shufflevector <4 x double> %wide.masked.load, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ep = shufflevector <4 x double> %wide.load, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eq = fsub <8 x double> %i.eo, %i.ep
  %i.er = shufflevector <4 x double> %i.ei, <4 x double> %i.ej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.es = fmul <8 x double> %i.al, %i.er
  %i.et = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.eq, <8 x double> <double 3.000000e+00, double 3.000000e+00, double 3.000000e+00, double 3.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00>, <8 x double> %i.es)
  %i.eu = fptrunc <8 x double> %i.et to <8 x float>
  %interleaved.vec = shufflevector <8 x float> %i.en, <8 x float> %i.eu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.el, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph57.i, %middle.block
  %indvars.iv60.i.ph = phi i64 [ 0, %.lr.ph57.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZNSt6vectorIdSaIdEED2Ev.exit98.thread.i:         ; preds = %bb.bh
  %i.ew = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bn, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.dr, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bn ] ; 8 uses
  %.07255.i = phi i1 [ true, %.lr.ph.i ], [ %.27441.i, %bb.bn ]
  %.07554.i = phi i64 [ %i.dr, %.lr.ph.i ], [ %.176.i, %bb.bn ] ; 5 uses
  %i.ex = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.ey = uitofp nneg i32 %i.ex to double
  %i.ez = fmul double %i.ae, %i.ey
  %i.fa = fdiv double %i.ez, %.sroa.9.0.copyload  ; 2 uses
  %i.fb = fptosi double %i.fa to i32              ; 3 uses
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fsub double %i.fa, %i.fc                ; 5 uses
  %i.fe = icmp ne i64 %indvars.iv.i, 0
  %or.cond.not.i = or i1 %i.ds, %i.fe
  %i.ff = and i1 %.07255.i, %or.cond.not.i
  br i1 %i.ff, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.fg = sext i32 %i.fb to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %.sroa.5186.0.copyload, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !41 ; 3 uses
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp ogt double %i.fj, f0x471A36E2D0E56042
  br i1 %i.fk, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.fg
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !41 ; 4 uses
  %i.fn = tail call noundef double @llvm.fabs.f64(double %i.fm)
  %i.fo = fcmp ogt double %i.fn, f0x471A36E2D0E56042
  br i1 %i.fo, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fp = add nsw i32 %i.fb, 1
  %i.fq = sext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %.sroa.5186.0.copyload, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !41
  %i.ft = getelementptr inbounds [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.fq
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !41 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i
  %i.fx = fmul double %.sroa.9.0.copyload, %i.fm
  %i.fy = fsub double %i.fs, %i.fi                ; 2 uses
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fm, double 2.000000e+00, double %i.fu)
  %i.ga = fneg double %i.fz
  %i.gb = fmul double %.sroa.9.0.copyload, %i.ga
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fy, double 3.000000e+00, double %i.gb) ; 2 uses
  %i.gd = fadd double %i.fm, %i.fu
  %i.ge = fmul double %.sroa.9.0.copyload, %i.gd
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.fy, double -2.000000e+00, double %i.ge) ; 2 uses
  %i.gg = tail call noundef double @llvm.fmuladd.f64(double %i.gf, double %i.fd, double %i.gc)
  %i.gh = tail call noundef double @llvm.fmuladd.f64(double %i.gg, double %i.fd, double %i.fx) ; 2 uses
  %i.gi = tail call noundef double @llvm.fmuladd.f64(double %i.gh, double %i.fd, double %i.fi)
  store double %i.gi, ptr %i.fv, align 8, !tbaa !41
  %i.gj = fmul double %i.fd, 2.000000e+00
  %i.gk = tail call noundef double @llvm.fmuladd.f64(double %i.gj, double %i.gf, double %i.gc)
  %i.gl = tail call noundef double @llvm.fmuladd.f64(double %i.fd, double %i.gk, double %i.gh)
  %i.gm = fdiv double %i.gl, %.sroa.9.0.copyload
  store double %i.gm, ptr %i.fw, align 8, !tbaa !41
  %i.gn = add i64 %.07554.i, -1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.07554.i
  %i.gp = load double, ptr %i.go, align 8, !tbaa !41
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.07554.i
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !41 ; 2 uses
  %i.gs = sub i64 %indvars.iv.i, %.07554.i
  %i.gt = uitofp i64 %i.gs to double
  %i.gu = fmul double %i.gr, %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.ae, double %i.gp)
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i
  store double %i.gv, ptr %i.gw, align 8, !tbaa !41
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i
  store double %i.gr, ptr %i.gx, align 8, !tbaa !41
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.27441.i = phi i1 [ true, %bb.bl ], [ false, %bb.bm ]
  %.176.i = phi i64 [ %i.gn, %bb.bl ], [ %.07554.i, %bb.bm ]
  %i.gy = icmp sgt i32 %i.ex, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %i.gy, label %bb.bi, label %._crit_edge.i, !llvm.loop !94

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bp
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %bb.bp ], [ %indvars.iv60.i.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 5 uses
  %i.gz = icmp slt i64 %indvars.iv.next61.i, %i.dh
  br i1 %i.gz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %scalar.ph
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next61.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !41
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next61.i
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !41
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %scalar.ph
  %i.he = phi double [ %i.hb, %bb.bo ], [ 0.000000e+00, %scalar.ph ]
  %i.hf = phi double [ %i.hd, %bb.bo ], [ 0.000000e+00, %scalar.ph ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv60.i
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv60.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !41 ; 3 uses
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double 2.000000e+00, double %i.hf)
  %i.hk = fneg double %i.hj
  %i.hl = fadd double %i.hf, %i.hi
  %.idx.i = shl nuw nsw i64 %indvars.iv60.i, 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i
  %i.hn = load double, ptr %i.hg, align 8, !tbaa !41 ; 2 uses
  %i.ho = fsub double %i.he, %i.hn
  %i.hp = fmul double %i.ae, %i.hi
  %29 = insertelement <2 x double> poison, double %i.hk, i64 0
  %30 = insertelement <2 x double> %29, double %i.hl, i64 1
  %31 = fmul <2 x double> %28, %30
  %32 = insertelement <2 x double> poison, double %i.ho, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> <double 3.000000e+00, double -2.000000e+00>, <2 x double> %31)
  %i.hq = insertelement <4 x double> poison, double %i.hn, i64 0
  %i.hr = insertelement <4 x double> %i.hq, double %i.hp, i64 1
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x double> %i.hr, <4 x double> %35, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hs = fptrunc <4 x double> %36 to <4 x float>
  store <4 x float> %i.hs, ptr %i.hm, align 4, !tbaa !39
  %exitcond.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit, label %scalar.ph, !llvm.loop !95

_ZNSt6vectorIdSaIdEED2Ev.exit98.i:                ; preds = %._crit_edge.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  %.idx488 = shl nuw nsw i64 %i.dh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx488) #25
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit98.i, %_ZNSt6vectorIdSaIdEED2Ev.exit98.thread.i
  %.pn.pn50.i = phi { ptr, i32 } [ %i.ew, %_ZNSt6vectorIdSaIdEED2Ev.exit98.thread.i ], [ %i.ht, %_ZNSt6vectorIdSaIdEED2Ev.exit98.i ]
  %.idx489 = shl nuw nsw i64 %i.dh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %.idx489) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit149

_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit: ; preds = %bb.bp, %middle.block
  %.idx490 = shl nuw nsw i64 %i.dh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx490) #25
  %.idx491 = shl nuw nsw i64 %i.dh, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %.idx491) #25
  %.idx532 = shl nuw nsw i64 %i.du, 2             ; 4 uses
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx532) #26
          to label %.noexc138 unwind label %.loopexit ; 3 uses

.noexc138:                                        ; preds = %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx532
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hu, ptr nonnull align 4 %i.dw, i64 %.idx532, i1 false)
  %i.hw = ptrtoint ptr %i.hv to i64
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc138
  %i.hx = phi i64 [ %.idx532, %.noexc138 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.0171.2432444451 = phi ptr [ %i.dw, %.noexc138 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 4 uses
  %.sroa.19.2429445449 = phi ptr [ %i.dy, %.noexc138 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %i.hy = phi i64 [ %i.hw, %.noexc138 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.hz = phi ptr [ %i.hu, %.noexc138 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 8 uses
  %i.ia = load i64, ptr %0, align 8, !tbaa !9     ; 4 uses
  %i.ib = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.ic = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.id = icmp eq ptr %i.ib, %i.ic
  %i.ie = ptrtoint ptr %i.hz to i64
  %i.if = sub i64 %i.hy, %i.ie                    ; 4 uses
  %i.ig = ashr exact i64 %i.if, 2                 ; 3 uses
  br i1 %i.id, label %bb.br, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i

bb.br:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.ih = mul i64 %i.ig, %i.ia                    ; 2 uses
  %.not29.i = icmp eq i64 %i.ih, 0
  br i1 %.not29.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ih)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i unwind label %bb.bv

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit, %bb.bs, %bb.br
  %i.ii = lshr i64 %i.ig, 2                       ; 3 uses
  %.not.i = icmp ult i64 %i.ig, 4
  br i1 %.not.i, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.ik = icmp eq i64 %i.ii, 1
  br i1 %i.ik, label %.epil.preheader, label %.lr.ph.i139.new

.lr.ph.i139.new:                                  ; preds = %.lr.ph.i139
  %unroll_iter = and i64 %i.ii, 4611686018427387902
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph.i139.new
  %.02022.i = phi i64 [ 0, %.lr.ph.i139.new ], [ %i.jo, %bb.bt ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i139.new ], [ %niter.next.1, %bb.bt ]
  %i.il = mul i64 %.02022.i, %i.ia
  %i.im = add i64 %i.il, %.071328
  %.idx = shl i64 %.02022.i, 4
  %i.in = getelementptr i8, ptr %i.hz, i64 %.idx  ; 4 uses
  %.idx287 = shl i64 %i.im, 4
  %i.io = getelementptr i8, ptr %i.ij, i64 %.idx287 ; 4 uses
  %i.ip = load float, ptr %i.in, align 4, !tbaa !39
  store float %i.ip, ptr %i.io, align 4, !tbaa !39
  %i.iq = getelementptr i8, ptr %i.in, i64 4
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !39
  %i.is = getelementptr i8, ptr %i.io, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !39
  %i.it = getelementptr i8, ptr %i.in, i64 8
  %i.iu = load float, ptr %i.it, align 4, !tbaa !39
  %i.iv = getelementptr i8, ptr %i.io, i64 8
  store float %i.iu, ptr %i.iv, align 4, !tbaa !39
  %i.iw = getelementptr i8, ptr %i.in, i64 12
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !39
  %i.iy = getelementptr i8, ptr %i.io, i64 12
  store float %i.ix, ptr %i.iy, align 4, !tbaa !39
  %i.iz = or disjoint i64 %.02022.i, 1            ; 2 uses
  %i.ja = mul i64 %i.iz, %i.ia
  %i.jb = add i64 %i.ja, %.071328
  %.idx.1 = shl i64 %i.iz, 4
  %i.jc = getelementptr i8, ptr %i.hz, i64 %.idx.1 ; 4 uses
  %.idx287.1 = shl i64 %i.jb, 4
  %i.jd = getelementptr i8, ptr %i.ij, i64 %.idx287.1 ; 4 uses
  %i.je = load float, ptr %i.jc, align 4, !tbaa !39
  store float %i.je, ptr %i.jd, align 4, !tbaa !39
  %i.jf = getelementptr i8, ptr %i.jc, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !39
  %i.jh = getelementptr i8, ptr %i.jd, i64 4
  store float %i.jg, ptr %i.jh, align 4, !tbaa !39
  %i.ji = getelementptr i8, ptr %i.jc, i64 8
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !39
  %i.jk = getelementptr i8, ptr %i.jd, i64 8
  store float %i.jj, ptr %i.jk, align 4, !tbaa !39
  %i.jl = getelementptr i8, ptr %i.jc, i64 12
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !39
  %i.jn = getelementptr i8, ptr %i.jd, i64 12
  store float %i.jm, ptr %i.jn, align 4, !tbaa !39
  %i.jo = add nuw nsw i64 %.02022.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa, label %bb.bt, !llvm.loop !50

_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i
  %.not.i.i.i143 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread

_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa: ; preds = %bb.bt
  %i.jp = and i64 %i.if, 16
  %lcmp.mod.not = icmp eq i64 %i.jp, 0
  br i1 %lcmp.mod.not, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa, %.lr.ph.i139
  %.02022.i.epil.init = phi i64 [ 0, %.lr.ph.i139 ], [ %i.jo, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod562 = trunc i64 %i.ii to i1
  tail call void @llvm.assume(i1 %lcmp.mod562)
  %i.jq = mul i64 %.02022.i.epil.init, %i.ia
  %i.jr = add i64 %i.jq, %.071328
  %.idx.epil = shl i64 %.02022.i.epil.init, 4
  %i.js = getelementptr i8, ptr %i.hz, i64 %.idx.epil ; 4 uses
  %.idx287.epil = shl i64 %i.jr, 4
  %i.jt = getelementptr i8, ptr %i.ij, i64 %.idx287.epil ; 4 uses
  %i.ju = load float, ptr %i.js, align 4, !tbaa !39
  store float %i.ju, ptr %i.jt, align 4, !tbaa !39
  %i.jv = getelementptr i8, ptr %i.js, i64 4
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !39
  %i.jx = getelementptr i8, ptr %i.jt, i64 4
  store float %i.jw, ptr %i.jx, align 4, !tbaa !39
  %i.jy = getelementptr i8, ptr %i.js, i64 8
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !39
  %i.ka = getelementptr i8, ptr %i.jt, i64 8
  store float %i.jz, ptr %i.ka, align 4, !tbaa !39
  %i.kb = getelementptr i8, ptr %i.js, i64 12
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !39
  %i.kd = getelementptr i8, ptr %i.jt, i64 12
  store float %i.kc, ptr %i.kd, align 4, !tbaa !39
  br label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread

_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread: ; preds = %.epil.preheader, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.if) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread
  %i.ke = add nuw nsw i64 %.071328, 1
  %.not.i.i.i144 = icmp eq ptr %.sroa.0171.2432444451, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIfSaIfEED2Ev.exit145, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.2432444451, i64 noundef %i.hx) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit145

_ZNSt6vectorIfSaIfEED2Ev.exit145:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bu
  %i.kf = getelementptr inbounds nuw i8, ptr %.067330, i64 48 ; 2 uses
  %.not87 = icmp eq ptr %i.kf, %i.y
  br i1 %.not87, label %._crit_edge332, label %bb.az

.loopexit:                                        ; preds = %.noexc84.i, %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit
  %.sroa.19.0.ph = phi ptr [ null, %.noexc84.i ], [ %i.dy, %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit ]
  %.sroa.0171.0.ph = phi ptr [ null, %.noexc84.i ], [ %i.dw, %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataENS_8ArrayRefIKdEES3_dRKSt4pairIffEdPSt6vectorIfSaIfEE.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE
  br label %.body

bb.bv:                                            ; preds = %bb.bs
  %i.kg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx16GromacsExceptionE ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i146, label %.body, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.if) #25
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bw, %bb.bv
  %.sroa.19.1 = phi ptr [ %.sroa.19.2429445449, %bb.bv ], [ %.sroa.19.2429445449, %bb.bw ], [ %.sroa.19.0.ph, %.loopexit ], [ null, %.loopexit.split-lp ]
end_hunk_1
