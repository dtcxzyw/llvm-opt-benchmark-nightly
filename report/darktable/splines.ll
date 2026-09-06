Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/splines?download=true
inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store <4 x float> <float -inf, float +inf, float -inf, float +inf>, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !27
  %.not23 = icmp eq ptr %1, %2
  br i1 %.not23, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  %i.e = icmp eq ptr %.pre, %i.af
  br i1 %i.e, label %._crit_edge.thread, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.af, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.024 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.i = load <2 x float>, ptr %.024, align 4, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x float> %i.i, ptr %i.h, align 4, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !17
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = sdiv exact i64 %i.m, 12                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 768614336404564650)
  %i.s = select i1 %i.q, i64 768614336404564650, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20
          to label %.noexc12 unwind label %.loopexit ; 6 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store <2 x float> %i.i, ptr %i.v, align 4, !tbaa !34
  %.sroa.7.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx21, align 4, !tbaa !34
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc12 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.noexc12 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !62, !alias.scope !116
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc12 ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !15
  store ptr %i.y, ptr %i.c, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !16
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c
  %i.ad = phi ptr [ %i.u, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ]
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.af = phi ptr [ %i.y, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !115

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #21
          to label %bb.m unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ah) #18
  br label %bb.k

bb.i:                                             ; preds = %.noexc14, %bb.j, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = ptrtoint ptr %.pre to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 12
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = xor i64 %i.ap, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_T1_(ptr %.pre, ptr nonnull %i.af, i64 noundef %i.aq)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.j
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_(ptr %.pre, ptr nonnull %i.af)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SF_EUlRKS4_SH_E_EvSF_SF_T0_.exit unwind label %bb.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SF_EUlRKS4_SH_E_EvSF_SF_T0_.exit: ; preds = %.noexc14
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %0, align 8, !tbaa !61
  %i.au = load float, ptr %i.at, align 4, !tbaa !32 ; 4 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !61
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !32 ; 4 uses
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.ax, %i.au
  %.sroa.speculated5.i = select i1 %i.ay, float %i.ax, float %i.au
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.au, %i.ax
  %.sroa.speculated.i = select i1 %i.az, float %i.ax, float %i.au
  store float %.sroa.speculated5.i, ptr %i.a, align 8
  store float %.sroa.speculated.i, ptr %i.ar, align 4
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.h ], [ %i.aj, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ba = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol19smooth_cubic_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.interpol::smooth_cubic_spline<float>::matrix", align 8 ; 11 uses
  %2 = alloca %"class.std::vector.7", align 8     ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 50 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit177

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = add nsw i64 %i.g, -1                     ; 32 uses
  %i.n = select i1 %i.l, i64 %i.g, i64 %i.m       ; 4 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit100, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20
          to label %_ZNSt6vectorIfSaIfEE7reserveEm.exit unwind label %.thread ; 5 uses

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 4 uses
  %.pre = load i8, ptr %i.j, align 8, !tbaa !27, !range !28
  %.pre371 = trunc nuw i8 %.pre to i1
  %.pre372 = select i1 %.pre371, i64 %i.g, i64 %i.m ; 4 uses
  %i.s = icmp ugt i64 %.pre372, 2305843009213693951
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc98 unwind label %.thread

.noexc98:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %.not270 = icmp eq i64 %.pre372, 0
  br i1 %.not270, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit100, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94: ; preds = %bb.g
  %i.t = shl nuw nsw i64 %.pre372, 2
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.pre372
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit100

_ZNSt6vectorIfSaIfEE7reserveEm.exit100:           ; preds = %bb.e, %bb.g, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97
  %.sroa.36.1399407 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ %i.q, %bb.g ], [ null, %bb.e ] ; 4 uses
  %.sroa.45.4400406 = phi ptr [ %i.r, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ %i.r, %bb.g ], [ null, %bb.e ] ; 2 uses
  %.sroa.0191.3 = phi ptr [ %i.u, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ null, %bb.g ], [ null, %bb.e ] ; 4 uses
  %.sroa.29.3 = phi ptr [ %i.v, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ null, %bb.g ], [ null, %bb.e ] ; 2 uses
  %.not337 = icmp eq i64 %i.m, 0                  ; 3 uses
  br i1 %.not337, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100
  %.sroa.36.0.lcssa = phi ptr [ %.sroa.36.1399407, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.36.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ] ; 4 uses
  %.sroa.45.0.lcssa = phi ptr [ %.sroa.45.4400406, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.45.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ] ; 3 uses
  %.sroa.0191.0.lcssa = phi ptr [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.0191.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ] ; 8 uses
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.20.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ] ; 4 uses
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.29.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ] ; 4 uses
  %.sroa.0214.0.lcssa = phi ptr [ %.sroa.36.1399407, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.0214.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ] ; 7 uses
  %i.w = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.r, label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132

.thread:                                          ; preds = %bb.d, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %bb.f, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94
  %.sroa.45.1 = phi ptr [ null, %bb.d ], [ %i.r, %bb.f ], [ %i.r, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94 ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ]
  %.sroa.0214.1 = phi ptr [ null, %bb.d ], [ %i.q, %bb.f ], [ %i.q, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94 ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit181

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit100, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112
  %.078321 = phi i64 [ %i.z, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 3 uses
  %.sroa.0214.0320 = phi ptr [ %.sroa.0214.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.36.1399407, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 7 uses
  %.sroa.29.0319 = phi ptr [ %.sroa.29.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.29.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 7 uses
  %.sroa.20.0318 = phi ptr [ %.sroa.20.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 3 uses
  %.sroa.0191.0317 = phi ptr [ %.sroa.0191.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 9 uses
  %.sroa.45.0316 = phi ptr [ %.sroa.45.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.45.4400406, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 5 uses
  %.sroa.36.0315 = phi ptr [ %.sroa.36.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.36.1399407, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 3 uses
  %i.z = add nuw i64 %.078321, 1                  ; 4 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %.078321
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !32
  %i.af = fsub reassoc nsz arcp contract afn float %i.ac, %i.ae ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.36.0315, %.sroa.45.0316
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  store float %i.af, ptr %.sroa.36.0315, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %.sroa.45.0316 to i64
  %i.ah = ptrtoint ptr %.sroa.0214.0320 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.j, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20
          to label %.noexc102 unwind label %.loopexit ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store float %i.af, ptr %i.ar, align 4, !tbaa !34
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.0214.0320, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %.noexc102
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0214.0320, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0320, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  %.pre367 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.h
  %i.au = phi ptr [ %.pre367, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.ar, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.36.0315, %bb.h ]
  %.sroa.45.5 = phi ptr [ %i.at, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.45.0316, %bb.h ] ; 4 uses
  %.sroa.0214.5 = phi ptr [ %i.aq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0214.0320, %bb.h ] ; 4 uses
  %.sroa.36.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %i.z
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !20
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %.078321
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ax, %i.ba ; 2 uses
  %.not.i.i103 = icmp eq ptr %.sroa.20.0318, %.sroa.29.0319
  br i1 %.not.i.i103, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.bb, ptr %.sroa.20.0318, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.bc = ptrtoint ptr %.sroa.29.0319 to i64
  %i.bd = ptrtoint ptr %.sroa.0191.0317 to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %bb.o, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i104

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc110 unwind label %.loopexit.split-lp277

.noexc110:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i104: ; preds = %bb.n
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i105, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8interpol19smooth_cubic_splineIfE4initEv:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bs = load float, ptr %i.br, align 4, !tbaa !30
  %i.bt = load float, ptr %i.bq, align 8, !tbaa !31
  %i.bu = fsub reassoc nsz arcp contract afn float %i.bs, %i.bt
  %i.bv = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !32
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.m
  %i.by = load float, ptr %i.bx, align 4, !tbaa !32
  %i.bz = fsub reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bu ; 2 uses
  %.not.i.i113 = icmp eq ptr %.sroa.36.0.lcssa, %.sroa.45.0.lcssa
  br i1 %.not.i.i113, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store float %i.ca, ptr %.sroa.36.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122

bb.t:                                             ; preds = %bb.r
  %i.cb = ptrtoint ptr %.sroa.36.0.lcssa to i64
  %i.cc = ptrtoint ptr %.sroa.0214.0.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %bb.u, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i114

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc120 unwind label %bb.ac

.noexc120:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i114: ; preds = %bb.t
  %i.cf = ashr exact i64 %i.cd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i115 = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i115, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 2305843009213693951)
  %i.cj = select i1 %i.ch, i64 2305843009213693951, i64 %i.ci ; 3 uses
  %.not.i.i.i.i116 = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i116)
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #20
          to label %.noexc121 unwind label %bb.ac ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i114
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd
  store float %i.ca, ptr %i.cm, align 4, !tbaa !34
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.v, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117

bb.v:                                             ; preds = %.noexc121
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %.sroa.0214.0.lcssa, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117: ; preds = %bb.v, %.noexc121
  %.not.i17.i.i.i118 = icmp eq ptr %.sroa.0214.0.lcssa, null
  br i1 %.not.i17.i.i.i118, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0.lcssa, i64 noundef %i.cd) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119: ; preds = %bb.w, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj
  %.pre368 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122

_ZNSt6vectorIfSaIfEE9push_backEOf.exit122:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119, %bb.s
  %i.cp = phi ptr [ %.pre368, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119 ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.45.6 = phi ptr [ %i.co, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119 ], [ %.sroa.45.0.lcssa, %bb.s ] ; 2 uses
  %.sroa.0214.6 = phi ptr [ %i.cl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119 ], [ %.sroa.0214.0.lcssa, %bb.s ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cp, i64 %i.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cr, %i.cu ; 2 uses
  %.not.i.i123 = icmp eq ptr %.sroa.20.0.lcssa, %.sroa.29.0.lcssa
  br i1 %.not.i.i123, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122
  store float %i.cv, ptr %.sroa.20.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122
  %i.cw = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.cx = ptrtoint ptr %.sroa.0191.0.lcssa to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775804
  br i1 %i.cz, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc130 unwind label %bb.ad

.noexc130:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124: ; preds = %bb.y
  %i.da = ashr exact i64 %i.cy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i125, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 2305843009213693951)
  %i.de = select i1 %i.dc, i64 2305843009213693951, i64 %i.dd ; 3 uses
  %.not.i.i.i.i126 = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i126)
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #20
          to label %.noexc131 unwind label %bb.ad ; 4 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy
  store float %i.cv, ptr %i.dh, align 4, !tbaa !34
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127

bb.aa:                                            ; preds = %.noexc131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 4 %.sroa.0191.0.lcssa, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127: ; preds = %bb.aa, %.noexc131
  %.not.i17.i.i.i128 = icmp eq ptr %.sroa.0191.0.lcssa, null
  br i1 %.not.i17.i.i.i128, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0.lcssa, i64 noundef %i.cy) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split

bb.ac:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i114, %bb.u
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ad:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124, %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129, %bb.x
  %.sroa.0191.1.ph = phi ptr [ %.sroa.0191.0.lcssa, %bb.x ], [ %i.dg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129 ]
  %.sroa.29.1.ph = phi ptr [ %.sroa.29.0.lcssa, %bb.x ], [ %i.dj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129 ]
  %.pr = load i8, ptr %i.j, align 8, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132

_ZNSt6vectorIfSaIfEE9push_backEOf.exit132:        ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split, %._crit_edge
  %i.dm = phi i8 [ %.pr, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split ], [ 0, %._crit_edge ] ; 6 uses
  %.sroa.45.2 = phi ptr [ %.sroa.45.6, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split ], [ %.sroa.45.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0191.1 = phi ptr [ %.sroa.0191.1.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split ], [ %.sroa.0191.0.lcssa, %._crit_edge ] ; 24 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.1.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split ], [ %.sroa.29.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.6, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132thread-pre-split ], [ %.sroa.0214.0.lcssa, %._crit_edge ] ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = xor i8 %i.dm, 1
  store i64 %i.g, ptr %1, align 8, !tbaa !70
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.do, ptr %i.dp, align 8, !tbaa !71
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.v.i = select i1 %i.dn, i64 %i.g, i64 3
  %i.dr = mul i64 %.v.i, %i.g                     ; 4 uses
  %i.ds = icmp ugt i64 %i.dr, 2305843009213693951
  br i1 %i.ds, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc133 unwind label %bb.ai

.noexc133:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %.noexc8.i

.noexc8.i:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dt = shl nuw nsw i64 %i.dr, 2                ; 3 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #20
          to label %.noexc134 unwind label %bb.ai ; 5 uses

.noexc134:                                        ; preds = %.noexc8.i
  store ptr %i.du, ptr %i.dq, align 8, !tbaa !72
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.du, i8 0, i64 %i.dt, i1 false), !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc134, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dy = phi ptr [ %i.du, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 29 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.dz, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %3 = icmp slt i64 %i.f, 0
  br i1 %3, label %bb.af, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc136 unwind label %bb.aj

.noexc136:                                        ; preds = %bb.af
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ae
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ea, align 8
  %.not.i.i.i.i135 = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i135, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.ag

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.eb = shl nuw nsw i64 %i.g, 2
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #20
          to label %.noexc137 unwind label %bb.aj ; 6 uses

.noexc137:                                        ; preds = %bb.ag
  store ptr %i.ec, ptr %2, align 8, !tbaa !72
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.g
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !140
  store float 0.000000e+00, ptr %i.ec, align 4, !tbaa !34
  %i.ef = getelementptr i8, ptr %i.ec, i64 4      ; 3 uses
  br i1 %.not337, label %.thread408, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.thread408:                                       ; preds = %.noexc137
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !73
  br label %._crit_edge330

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc137
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.ah

bb.ah:                                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.ei = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.ec, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.eh, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ej, align 8, !tbaa !73
  %i.ek = icmp ugt i64 %i.m, 1
  br i1 %i.ek, label %.lr.ph329, label %._crit_edge330

.lr.ph329:                                        ; preds = %bb.ah
  %.not391.not = icmp eq i8 %i.dm, 0
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.dy, i64 %.idx.i ; 4 uses
  %invariant.gep331 = getelementptr [4 x i8], ptr %i.dy, i64 %i.g ; 4 uses
  br i1 %.not391.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader: ; preds = %.lr.ph329
  %i.el = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.el, 24
  br i1 %min.iters.check, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader
  %i.em = getelementptr i8, ptr %i.dy, i64 %.idx.i
  %scevgep = getelementptr i8, ptr %i.em, i64 4   ; 5 uses
  %i.en = getelementptr i8, ptr %i.dy, i64 %i.f
  %scevgep468 = getelementptr i8, ptr %i.en, i64 -4 ; 5 uses
  %i.eo = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dy, i64 %i.eo
  %scevgep469 = getelementptr i8, ptr %i.ep, i64 4 ; 5 uses
  %i.eq = getelementptr i8, ptr %i.dy, i64 %.idx.i
  %scevgep470 = getelementptr i8, ptr %i.eq, i64 -4 ; 5 uses
  %scevgep471 = getelementptr i8, ptr %i.dy, i64 4 ; 5 uses
  %i.er = add nsw i64 %i.eo, -4                   ; 4 uses
  %scevgep472 = getelementptr i8, ptr %i.dy, i64 %i.er ; 5 uses
  %scevgep473 = getelementptr i8, ptr %i.ei, i64 4 ; 5 uses
  %scevgep474 = getelementptr i8, ptr %i.ei, i64 %i.er ; 5 uses
  %scevgep475 = getelementptr i8, ptr %.sroa.0214.2, i64 %i.er ; 4 uses
  %scevgep476 = getelementptr i8, ptr %.sroa.0191.1, i64 %i.er ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep470
  %bound1 = icmp ult ptr %scevgep469, %scevgep468
  %found.conflict = and i1 %bound0, %bound1
  %bound0477 = icmp ult ptr %scevgep, %scevgep472
  %bound1478 = icmp ult ptr %scevgep471, %scevgep468
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx = or i1 %found.conflict, %found.conflict479
  %bound0480 = icmp ult ptr %scevgep, %scevgep474
  %bound1481 = icmp ult ptr %scevgep473, %scevgep468
  %found.conflict482 = and i1 %bound0480, %bound1481
  %conflict.rdx483 = or i1 %conflict.rdx, %found.conflict482
  %bound0484 = icmp ult ptr %scevgep, %scevgep475
  %bound1485 = icmp ult ptr %.sroa.0214.2, %scevgep468
  %found.conflict486 = and i1 %bound0484, %bound1485
  %conflict.rdx487 = or i1 %conflict.rdx483, %found.conflict486
  %bound0488 = icmp ult ptr %scevgep, %scevgep476
  %bound1489 = icmp ult ptr %.sroa.0191.1, %scevgep468
  %found.conflict490 = and i1 %bound0488, %bound1489
  %conflict.rdx491 = or i1 %conflict.rdx487, %found.conflict490
  %bound0492 = icmp ult ptr %scevgep469, %scevgep472
  %bound1493 = icmp ult ptr %scevgep471, %scevgep470
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx495 = or i1 %conflict.rdx491, %found.conflict494
  %bound0496 = icmp ult ptr %scevgep469, %scevgep474
  %bound1497 = icmp ult ptr %scevgep473, %scevgep470
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx495, %found.conflict498
  %bound0500 = icmp ult ptr %scevgep469, %scevgep475
  %bound1501 = icmp ult ptr %.sroa.0214.2, %scevgep470
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %bound0504 = icmp ult ptr %scevgep469, %scevgep476
  %bound1505 = icmp ult ptr %.sroa.0191.1, %scevgep470
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  %bound0508 = icmp ult ptr %scevgep471, %scevgep474
  %bound1509 = icmp ult ptr %scevgep473, %scevgep472
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  %bound0512 = icmp ult ptr %scevgep471, %scevgep475
  %bound1513 = icmp ult ptr %.sroa.0214.2, %scevgep472
  %found.conflict514 = and i1 %bound0512, %bound1513
  %conflict.rdx515 = or i1 %conflict.rdx511, %found.conflict514
  %bound0516 = icmp ult ptr %scevgep471, %scevgep476
  %bound1517 = icmp ult ptr %.sroa.0191.1, %scevgep472
  %found.conflict518 = and i1 %bound0516, %bound1517
  %conflict.rdx519 = or i1 %conflict.rdx515, %found.conflict518
  %bound0520 = icmp ult ptr %scevgep473, %scevgep475
  %bound1521 = icmp ult ptr %.sroa.0214.2, %scevgep474
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %conflict.rdx519, %found.conflict522
  %bound0524 = icmp ult ptr %scevgep473, %scevgep476
  %bound1525 = icmp ult ptr %.sroa.0191.1, %scevgep474
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  br i1 %conflict.rdx527, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.el, -8                      ; 3 uses
  %i.es = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.et = or disjoint i64 %index, 1               ; 6 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %index ; 2 uses
  %wide.load = load <8 x float>, ptr %i.eu, align 4, !tbaa !34, !alias.scope !141 ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float f0x3E2AAAAB)
  %i.ew = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.et
  store <8 x float> %i.ev, ptr %i.ew, align 4, !tbaa !34, !alias.scope !142, !noalias !143
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.et ; 2 uses
  %wide.load529 = load <8 x float>, ptr %i.ex, align 4, !tbaa !34, !alias.scope !141 ; 2 uses
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %wide.load529, %wide.load
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %i.ey, splat (float f0x3EAAAAAB)
  %i.fa = getelementptr [4 x i8], ptr %invariant.gep331, i64 %i.et
  store <8 x float> %i.ez, ptr %i.fa, align 4, !tbaa !34, !alias.scope !144, !noalias !145
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.et
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load529, splat (float f0x3E2AAAAB)
  store <8 x float> %i.fc, ptr %i.fb, align 4, !tbaa !34, !alias.scope !146, !noalias !147
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.et
  %wide.load531 = load <8 x float>, ptr %i.fd, align 4, !tbaa !34, !alias.scope !148
  %wide.load532 = load <8 x float>, ptr %i.ex, align 4, !tbaa !34, !alias.scope !141
  %i.fe = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load531, %wide.load532
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %index
  %wide.load533 = load <8 x float>, ptr %i.ff, align 4, !tbaa !34, !alias.scope !148
  %wide.load534 = load <8 x float>, ptr %i.eu, align 4, !tbaa !34, !alias.scope !141
  %i.fg = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load533, %wide.load534
  %i.fh = fsub reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.et
  store <8 x float> %i.fh, ptr %i.fi, align 4, !tbaa !34, !alias.scope !149, !noalias !150
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.el, %n.vec
  br i1 %cmp.n, label %._crit_edge330.thread, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613: ; preds = %vector.memcheck, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader, %middle.block
  %.077327.us.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader ], [ %i.es, %middle.block ] ; 9 uses
  %i.fk = add nsw i64 %i.g, -2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol.loopexit, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613
  %i.fl = add nsw i64 %.077327.us.ph, -1          ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.fl ; 3 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !34
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, f0x3E2AAAAB
  %gep.us.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %.077327.us.ph
  store float %i.fo, ptr %gep.us.prol, align 4, !tbaa !34
  %i.fp = load float, ptr %i.fm, align 4, !tbaa !34
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %.077327.us.ph ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !34
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.fp
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, f0x3EAAAAAB
  %gep332.us.prol = getelementptr [4 x i8], ptr %invariant.gep331, i64 %.077327.us.ph
  store float %i.ft, ptr %gep332.us.prol, align 4, !tbaa !34
end_hunk_1
begin_hunk_2_@_ZN8interpol19smooth_cubic_splineIfE4initEv:bb.a
  %i.fz = load <2 x float>, ptr %i.fm, align 4, !tbaa !34
  %i.ga = fdiv reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fz ; 2 uses
  %shift.prol = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.prol = fsub reassoc nsz arcp contract afn <2 x float> %shift.prol, %i.ga
  %i.gb = extractelement <2 x float> %foldExtExtBinop.prol, i64 0
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.077327.us.ph
  store float %i.gb, ptr %i.gc, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol.loopexit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol.loopexit: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613
  %.077327.us.unr = phi i64 [ %.077327.us.ph, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.preheader613 ], [ %i.fu, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol ]
  %i.gd = icmp eq i64 %i.fk, %.077327.us.ph
  br i1 %i.gd, label %._crit_edge330.thread, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol.loopexit, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us
  %.077327.us = phi i64 [ %i.he, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us ], [ %.077327.us.unr, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol.loopexit ] ; 10 uses
  %i.ge = add i64 %.077327.us, -1                 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.ge ; 3 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !34
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, f0x3E2AAAAB
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %.077327.us
  store float %i.gh, ptr %gep.us, align 4, !tbaa !34
  %i.gi = load float, ptr %i.gf, align 4, !tbaa !34
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %.077327.us ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !34
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.gi
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, f0x3EAAAAAB
  %gep332.us = getelementptr [4 x i8], ptr %invariant.gep331, i64 %.077327.us
  store float %i.gm, ptr %gep332.us, align 4, !tbaa !34
  %i.gn = add nuw i64 %.077327.us, 1              ; 5 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.077327.us
  %.in272.us = load float, ptr %i.gj, align 4, !tbaa !34
  %i.gp = fmul reassoc nsz arcp contract afn float %.in272.us, f0x3E2AAAAB
  store float %i.gp, ptr %i.go, align 4, !tbaa !34
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.ge
  %i.gr = load <2 x float>, ptr %i.gq, align 4, !tbaa !34
  %i.gs = load <2 x float>, ptr %i.gf, align 4, !tbaa !34
  %i.gt = fdiv reassoc nsz arcp contract afn <2 x float> %i.gr, %i.gs ; 2 uses
  %shift = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %shift, %i.gt
  %i.gu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.077327.us
  store float %i.gu, ptr %i.gv, align 4, !tbaa !34
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %.077327.us ; 3 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !34
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, f0x3E2AAAAB
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gn
  store float %i.gy, ptr %gep.us.1, align 4, !tbaa !34
  %i.gz = load float, ptr %i.gw, align 4, !tbaa !34
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.gn ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !34
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %i.gz
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, f0x3EAAAAAB
  %gep332.us.1 = getelementptr [4 x i8], ptr %invariant.gep331, i64 %i.gn
  store float %i.hd, ptr %gep332.us.1, align 4, !tbaa !34
  %i.he = add nuw i64 %.077327.us, 2              ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.gn
  %.in272.us.1 = load float, ptr %i.ha, align 4, !tbaa !34
  %i.hg = fmul reassoc nsz arcp contract afn float %.in272.us.1, f0x3E2AAAAB
  store float %i.hg, ptr %i.hf, align 4, !tbaa !34
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %.077327.us
  %i.hi = load <2 x float>, ptr %i.hh, align 4, !tbaa !34
  %i.hj = load <2 x float>, ptr %i.gw, align 4, !tbaa !34
  %i.hk = fdiv reassoc nsz arcp contract afn <2 x float> %i.hi, %i.hj ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fsub reassoc nsz arcp contract afn <2 x float> %shift.1, %i.hk
  %i.hl = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gn
  store float %i.hl, ptr %i.hm, align 4, !tbaa !34
  %exitcond365.not.1 = icmp eq i64 %i.he, %i.m
  br i1 %exitcond365.not.1, label %._crit_edge330.thread, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us, !llvm.loop !126

._crit_edge330:                                   ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143, %.thread408, %bb.ah
  %i.hn = phi ptr [ %i.ec, %.thread408 ], [ %i.ei, %bb.ah ], [ %i.ei, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143 ] ; 4 uses
  %i.ho = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.ak, label %bb.av

._crit_edge330.thread:                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us.prol.loopexit, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us, %middle.block
  %i.hq = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.thread410, label %.thread414

.thread410:                                       ; preds = %._crit_edge330.thread
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.m ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !34
  %i.hu = load float, ptr %.sroa.0214.2, align 4, !tbaa !34
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hu, %i.ht
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, f0x3EAAAAAB
  br label %bb.al

bb.ai:                                            ; preds = %.noexc8.i, %.noexc.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143: ; preds = %.lr.ph329, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143
  %.077327 = phi i64 [ %i.in, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143 ], [ 1, %.lr.ph329 ] ; 6 uses
  %i.hz = add i64 %.077327, -1                    ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.hz ; 3 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !34
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, f0x3E2AAAAB
  %i.id = mul i64 %i.g, %i.hz
  %i.ie = getelementptr [4 x i8], ptr %i.dy, i64 %.077327 ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.id
  store float %i.ic, ptr %i.if, align 4, !tbaa !34
  %i.ig = load float, ptr %i.ia, align 4, !tbaa !34
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %.077327 ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !34
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ii, %i.ig
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, f0x3EAAAAAB
  %i.il = mul i64 %i.g, %.077327
  %i.im = getelementptr [4 x i8], ptr %i.ie, i64 %i.il
  store float %i.ik, ptr %i.im, align 4, !tbaa !34
  %i.in = add nuw i64 %.077327, 1                 ; 3 uses
  %i.io = mul i64 %i.g, %i.in
  %i.ip = getelementptr [4 x i8], ptr %i.ie, i64 %i.io
  %.in272 = load float, ptr %i.ih, align 4, !tbaa !34
  %i.iq = fmul reassoc nsz arcp contract afn float %.in272, f0x3E2AAAAB
  store float %i.iq, ptr %i.ip, align 4, !tbaa !34
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.hz
  %i.is = load <2 x float>, ptr %i.ir, align 4, !tbaa !34
  %i.it = load <2 x float>, ptr %i.ia, align 4, !tbaa !34
  %i.iu = fdiv reassoc nsz arcp contract afn <2 x float> %i.is, %i.it ; 2 uses
  %shift607 = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop608 = fsub reassoc nsz arcp contract afn <2 x float> %shift607, %i.iu
  %i.iv = extractelement <2 x float> %foldExtExtBinop608, i64 0
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.077327
  store float %i.iv, ptr %i.iw, align 4, !tbaa !34
  %exitcond364.not = icmp eq i64 %i.in, %i.m
  br i1 %exitcond364.not, label %._crit_edge330, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143, !llvm.loop !127

bb.ak:                                            ; preds = %._crit_edge330
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.m ; 4 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !34
  %i.iz = load float, ptr %.sroa.0214.2, align 4, !tbaa !34
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, f0x3EAAAAAB ; 2 uses
  %.not393.not = icmp eq i8 %i.dm, 0
  br i1 %.not393.not, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread410, %bb.ak
  %i.jc = phi float [ %i.hw, %.thread410 ], [ %i.jb, %bb.ak ]
  %i.jd = phi ptr [ %i.hs, %.thread410 ], [ %i.ix, %bb.ak ] ; 2 uses
  %i.je = phi ptr [ %i.ei, %.thread410 ], [ %i.hn, %bb.ak ]
  %i.jf = getelementptr [4 x i8], ptr %i.dy, i64 %i.g
  store float %i.jc, ptr %i.jf, align 4, !tbaa !34
  %i.jg = add nsw i64 %i.g, -2                    ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.jg ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !34
  %i.jj = load float, ptr %i.jd, align 4, !tbaa !34
  %i.jk = fadd reassoc nsz arcp contract afn float %i.jj, %i.ji
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148

bb.am:                                            ; preds = %bb.ak
  store float %i.jb, ptr %i.dy, align 4, !tbaa !34
  %i.jl = add nsw i64 %i.g, -2                    ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0214.2, i64 %i.jl ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !34
  %i.jo = load float, ptr %i.ix, align 4, !tbaa !34
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.jn
  %i.jq = mul i64 %i.g, %i.m
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148: ; preds = %bb.al, %bb.am
  %.sink442 = phi i64 [ %i.g, %bb.al ], [ %i.jq, %bb.am ]
  %.not393.not412 = phi i1 [ true, %bb.al ], [ false, %bb.am ] ; 2 uses
  %i.jr = phi ptr [ %i.jd, %bb.al ], [ %i.ix, %bb.am ] ; 4 uses
  %i.js = phi ptr [ %i.je, %bb.al ], [ %i.hn, %bb.am ] ; 2 uses
  %.in = phi float [ %i.jk, %bb.al ], [ %i.jp, %bb.am ]
  %i.jt = phi ptr [ %i.jh, %bb.al ], [ %i.jm, %bb.am ] ; 3 uses
  %i.ju = phi i64 [ %i.jg, %bb.al ], [ %i.jl, %bb.am ] ; 4 uses
  %i.jv = getelementptr [4 x i8], ptr %i.dy, i64 %i.m
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %.sink442
  %i.jx = fmul reassoc nsz arcp contract afn float %.in, f0x3EAAAAAB
  store float %i.jx, ptr %i.jw, align 4, !tbaa !34
  %i.jy = load float, ptr %.sroa.0191.1, align 4, !tbaa !34
  %i.jz = load float, ptr %.sroa.0214.2, align 4, !tbaa !34
  %i.ka = fdiv reassoc nsz arcp contract afn float %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.m ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !34
  %i.kd = load float, ptr %i.jr, align 4, !tbaa !34
  %i.ke = fdiv reassoc nsz arcp contract afn float %i.kc, %i.kd
  %i.kf = fsub reassoc nsz arcp contract afn float %i.ka, %i.ke
  store float %i.kf, ptr %i.js, align 4, !tbaa !34
  %i.kg = load float, ptr %i.kb, align 4, !tbaa !34
  %i.kh = load float, ptr %i.jr, align 4, !tbaa !34
  %i.ki = fdiv reassoc nsz arcp contract afn float %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.ju
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !34
  %i.kl = load float, ptr %i.jt, align 4, !tbaa !34
  %i.km = fdiv reassoc nsz arcp contract afn float %i.kk, %i.kl
  %i.kn = fsub reassoc nsz arcp contract afn float %i.ki, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.m
  store float %i.kn, ptr %i.ko, align 4, !tbaa !34
  %i.kp = icmp samesign ugt i64 %i.f, 24
  %i.kq = load float, ptr %.sroa.0214.2, align 4, !tbaa !34 ; 2 uses
  br i1 %i.kp, label %bb.an, label %bb.as

bb.an:                                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, f0x3E2AAAAB ; 2 uses
  br i1 %.not393.not412, label %bb.ao, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit156

bb.ao:                                            ; preds = %bb.an
  store float %i.kr, ptr %i.dy, align 4, !tbaa !34
  %i.ks = load float, ptr %i.jt, align 4, !tbaa !34
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ks, f0x3E2AAAAB ; 2 uses
  %i.ku = add nsw i64 %i.ju, 2
  %i.kv = icmp eq i64 %i.g, %i.ku
  br i1 %i.kv, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit153.thread, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit153.thread258

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit153.thread258: ; preds = %bb.ao
  %i.kw = mul i64 %i.g, %i.ju
  %i.kx = getelementptr [4 x i8], ptr %i.dy, i64 %i.m
  %i.ky = getelementptr [4 x i8], ptr %i.kx, i64 %i.kw
  store float %i.kt, ptr %i.ky, align 4, !tbaa !34
  br label %bb.ap

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit153.thread: ; preds = %bb.ao
  %i.kz = getelementptr [4 x i8], ptr %i.dy, i64 %i.m
  %.idx.i152 = shl nuw nsw i64 %i.g, 3
  %i.la = getelementptr i8, ptr %i.kz, i64 %.idx.i152
  store float %i.kt, ptr %i.la, align 4, !tbaa !34
  br label %bb.ap

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit156: ; preds = %bb.an
  %i.lb = getelementptr [4 x i8], ptr %i.dy, i64 %i.g
  store float %i.kr, ptr %i.lb, align 4, !tbaa !34
  %i.lc = load float, ptr %i.jt, align 4, !tbaa !34
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, f0x3E2AAAAB
  %i.le = mul i64 %i.g, %i.ju
  %i.lf = getelementptr [4 x i8], ptr %i.dy, i64 %i.m ; 2 uses
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %i.le
  store float %i.ld, ptr %i.lg, align 4, !tbaa !34
  %i.lh = load float, ptr %i.jr, align 4, !tbaa !34
  %i.li = fmul reassoc nsz arcp contract afn float %i.lh, f0x3E2AAAAB ; 2 uses
  store float %i.li, ptr %i.lf, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit159

bb.ap:                                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit153.thread, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit153.thread258
  %.in271 = load float, ptr %i.jr, align 4, !tbaa !34
  %i.lj = fmul reassoc nsz arcp contract afn float %.in271, f0x3E2AAAAB ; 2 uses
  %i.lk = getelementptr [4 x i8], ptr %i.dy, i64 %i.m
  store float %i.lj, ptr %i.lk, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit159

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit159: ; preds = %bb.ap, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit156
  %i.ll = phi float [ %i.li, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit156 ], [ %i.lj, %bb.ap ]
  %i.lm = mul i64 %i.g, %i.m
  %i.ln = getelementptr [4 x i8], ptr %i.dy, i64 %i.lm
  store float %i.ll, ptr %i.ln, align 4, !tbaa !34
  br label %bb.ax

bb.aq:                                            ; preds = %.loopexit.i
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %2, align 8, !tbaa !72    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !140
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lp to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef %i.lu) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.as:                                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0214.2, i64 4
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !34
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.kq
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, f0x3E2AAAAB ; 3 uses
  %i.lz = getelementptr i8, ptr %i.dy, i64 4      ; 2 uses
  br i1 %.not393.not412, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.idx.i161 = shl nuw nsw i64 %i.g, 3
  %i.ma = getelementptr i8, ptr %i.lz, i64 %.idx.i161
  store float %i.ly, ptr %i.ma, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit164

bb.au:                                            ; preds = %bb.as
  store float %i.ly, ptr %i.lz, align 4, !tbaa !34
  %i.mb = getelementptr [4 x i8], ptr %i.dy, i64 %i.g
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit164

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit164: ; preds = %bb.at, %bb.au
  %.0.i163 = phi ptr [ %i.mb, %bb.au ], [ %i.dy, %bb.at ]
  store float %i.ly, ptr %.0.i163, align 4, !tbaa !34
  br label %bb.ax

bb.av:                                            ; preds = %._crit_edge330
  %.not392.not = icmp eq i8 %i.dm, 0
  br i1 %.not392.not, label %.thread414, label %bb.aw

.thread414:                                       ; preds = %._crit_edge330.thread, %bb.av
  %i.mc = phi ptr [ %i.hn, %bb.av ], [ %i.ei, %._crit_edge330.thread ]
  %i.md = getelementptr [4 x i8], ptr %i.dy, i64 %i.g
  store float 1.000000e+00, ptr %i.md, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit169

bb.aw:                                            ; preds = %bb.av
  store float 1.000000e+00, ptr %i.dy, align 4, !tbaa !34
  %i.me = mul i64 %i.g, %i.m
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit169

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit169: ; preds = %.thread414, %bb.aw
  %.sink443 = phi i64 [ %i.g, %.thread414 ], [ %i.me, %bb.aw ]
  %i.mf = phi ptr [ %i.mc, %.thread414 ], [ %i.hn, %bb.aw ] ; 2 uses
  %i.mg = getelementptr [4 x i8], ptr %i.dy, i64 %i.m
  %i.mh = getelementptr [4 x i8], ptr %i.mg, i64 %.sink443
  store float 1.000000e+00, ptr %i.mh, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.mf, align 4, !tbaa !34
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.m
  store float 0.000000e+00, ptr %i.mi, align 4, !tbaa !34
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit159, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit164, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit169
  %i.mj = icmp eq ptr %i.b, %i.c
  br i1 %i.mj, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not394.not = icmp eq i8 %i.dm, 0
  %i.mk = load ptr, ptr %i.dq, align 8, !tbaa !72 ; 6 uses
  br i1 %.not394.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader: ; preds = %bb.ay
  %i.ml = add nsw i64 %i.g, -2
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i: ; preds = %bb.ay
  %invariant.gep127.i.i = getelementptr [4 x i8], ptr %i.mk, i64 %i.g ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 3
  %invariant.gep128.i.i = getelementptr i8, ptr %i.mk, i64 %.idx.i.i.i
  %.pre.i.i = load float, ptr %invariant.gep127.i.i, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i
  %i.mm = phi float [ %.pre.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i ], [ %i.mv, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i ] ; 2 uses
  %i.mn = phi i64 [ 1, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i ], [ %i.mw, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i ] ; 4 uses
  %.063124.i.i = phi i64 [ 0, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i ], [ %i.mn, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i ]
  %i.mo = fcmp reassoc nsz arcp contract afn une float %i.mm, 0.000000e+00
  br i1 %i.mo, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i
  %gep129.i.i = getelementptr [4 x i8], ptr %invariant.gep128.i.i, i64 %i.mn ; 2 uses
  %i.mp = load float, ptr %gep129.i.i, align 4, !tbaa !34
  %i.mq = fdiv reassoc nsz arcp contract afn float %i.mp, %i.mm ; 2 uses
  store float %i.mq, ptr %gep129.i.i, align 4, !tbaa !34
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.063124.i.i
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !34
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mq
  %gep133.i.i = getelementptr [4 x i8], ptr %invariant.gep127.i.i, i64 %i.mn ; 2 uses
  %i.mu = load float, ptr %gep133.i.i, align 4, !tbaa !34
  %i.mv = fsub reassoc nsz arcp contract afn float %i.mu, %i.mt ; 2 uses
  store float %i.mv, ptr %gep133.i.i, align 4, !tbaa !34
  %i.mw = add nuw i64 %i.mn, 1                    ; 2 uses
  %exitcond138.not.i.i = icmp eq i64 %i.mw, %i.g
  br i1 %exitcond138.not.i.i, label %.loopexit.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i, !llvm.loop !128

.loopexit.i.i:                                    ; preds = %._crit_edge.us.i.i
  %i.mx = add nuw i64 %i.my, 1                    ; 2 uses
  %exitcond137.not.i.i = icmp eq i64 %i.mx, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond137.not.i.i, label %.loopexit.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i, !llvm.loop !129

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader, %.loopexit.i.i
  %indvar = phi i64 [ 0, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader ], [ %indvar.next, %.loopexit.i.i ] ; 3 uses
  %i.my = phi i64 [ 1, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader ], [ %i.mx, %.loopexit.i.i ] ; 5 uses
  %.061121.i.i = phi i64 [ 0, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader ], [ %i.my, %.loopexit.i.i ] ; 2 uses
  %i.mz = sub i64 %i.m, %indvar
  %i.na = sub i64 %i.ml, %indvar
  %i.nb = mul i64 %.061121.i.i, %i.g              ; 2 uses
  %i.nc = getelementptr [4 x i8], ptr %i.mk, i64 %.061121.i.i ; 6 uses
  %i.nd = getelementptr [4 x i8], ptr %i.nc, i64 %i.nb
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !34 ; 2 uses
  %i.nf = fcmp reassoc nsz arcp contract afn une float %i.ne, 0.000000e+00
  br i1 %i.nf, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.mk, i64 %i.nb
  %i.ng = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ne
  %xtraiter636 = and i64 %i.mz, 3                 ; 2 uses
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  %i.nh = icmp ult i64 %i.na, 3
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i
  %.060117.us.i.i = phi i64 [ %i.my, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i ], [ %i.pe, %._crit_edge.us.i.i ] ; 3 uses
  %gep.us.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.060117.us.i.i ; 7 uses
  %i.ni = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.nj = fmul reassoc nsz arcp contract afn float %i.ni, %i.ng
  store float %i.nj, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.nk = getelementptr [4 x i8], ptr %i.mk, i64 %.060117.us.i.i ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN8interpol18Catmull_Rom_splineIfE4initEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i8, ptr %i.i, align 8, !tbaa !27, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load float, ptr %i.m, align 4, !tbaa !30
  %i.o = load float, ptr %i.l, align 8, !tbaa !31
  %i.p = fsub reassoc nsz arcp contract afn float %i.n, %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !20
  %i.x = fsub reassoc nsz arcp contract afn float %i.s, %i.w
  %i.y = load float, ptr %i.q, align 4, !tbaa !32
  %i.z = load float, ptr %i.u, align 4, !tbaa !32
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, %i.p
  %i.ab = fsub reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.ac, ptr %i.ad, align 4, !tbaa !35
  %i.ae = icmp ugt i64 %i.t, 1
  br i1 %i.ae, label %.lr.ph35.preheader, label %._crit_edge36

.lr.ph35.preheader:                               ; preds = %bb.c
  %i.af = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check48 = icmp ult i64 %i.af, 9
  br i1 %min.iters.check48, label %.lr.ph35.preheader77, label %vector.ph49

.lr.ph35.preheader77:                             ; preds = %vector.body51, %.lr.ph35.preheader
  %.02833.ph = phi i64 [ 1, %.lr.ph35.preheader ], [ %i.aj, %vector.body51 ]
  br label %.lr.ph35

vector.ph49:                                      ; preds = %.lr.ph35.preheader
  %i.ag = and i64 %i.af, 7                        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 8, i64 %i.ag
  %n.vec50 = sub nsw i64 %i.af, %i.ai             ; 2 uses
  %i.aj = add nsw i64 %n.vec50, 1
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next63, %vector.body51 ] ; 2 uses
  %vec.ind53 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph49 ], [ %vec.ind.next64, %vector.body51 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %index52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %wide.vec54 = load <24 x float>, ptr %i.al, align 4, !tbaa !34 ; 2 uses
  %strided.vec55 = shufflevector <24 x float> %wide.vec54, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec56 = shufflevector <24 x float> %wide.vec54, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.gep57 = getelementptr [12 x i8], ptr %i.c, <8 x i64> %vec.ind53 ; 3 uses
  %wide.gep58 = getelementptr i8, <8 x ptr> %wide.gep57, i64 -12
  %wide.gep59 = getelementptr i8, <8 x ptr> %wide.gep57, i64 -8
  %wide.masked.gather60 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !20
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec56, %wide.masked.gather60
  %wide.masked.gather61 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep58, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !32
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec55, %wide.masked.gather61
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> %i.am, %i.an
  %wide.gep62 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep57, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ao, <8 x ptr> align 4 %wide.gep62, <8 x i1> splat (i1 true)), !tbaa !35
  %index.next63 = add nuw i64 %index52, 8         ; 2 uses
  %vec.ind.next64 = add nuw <8 x i64> %vec.ind53, splat (i64 8)
  %i.ap = icmp eq i64 %index.next63, %n.vec50
  br i1 %i.ap, label %.lr.ph35.preheader77, label %vector.body51, !llvm.loop !187

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = getelementptr i8, ptr %i.c, i64 %i.f    ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = getelementptr i8, ptr %i.as, i64 -20
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fsub reassoc nsz arcp contract afn float %i.ar, %i.av
  %i.ax = load float, ptr %i.c, align 4, !tbaa !32
  %i.ay = load float, ptr %i.at, align 4, !tbaa !32
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, %i.p
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.ay
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.aw, %i.ba
  br label %bb.e

.lr.ph35:                                         ; preds = %.lr.ph35.preheader77, %.lr.ph35
  %.02833 = phi i64 [ %i.bc, %.lr.ph35 ], [ %.02833.ph, %.lr.ph35.preheader77 ] ; 2 uses
  %i.bc = add nuw i64 %.02833, 1                  ; 3 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.bc
  %i.be = getelementptr [12 x i8], ptr %i.c, i64 %.02833 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -12
  %i.bg = load <2 x float>, ptr %i.bd, align 4, !tbaa !34
  %i.bh = load <2 x float>, ptr %i.bf, align 4, !tbaa !34
  %i.bi = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bh ; 2 uses
  %shift = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.bi
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.bj, ptr %i.bk, align 4, !tbaa !35
  %exitcond37.not = icmp eq i64 %i.bc, %i.t
  br i1 %exitcond37.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !188

bb.d:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !34
  %i.bn = load <2 x float>, ptr %i.c, align 4, !tbaa !34
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bn ; 2 uses
  %shift68 = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fdiv reassoc nsz arcp contract afn <2 x float> %shift68, %i.bo
  %i.bp = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.bp, ptr %i.bq, align 4, !tbaa !35
  %i.br = add nsw i64 %i.g, -1                    ; 3 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bt = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 9
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.ph

.lr.ph.preheader78:                               ; preds = %vector.body, %.lr.ph.preheader
  %.032.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bx, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bu = and i64 %i.bt, 7                        ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 8, i64 %i.bu
  %n.vec = sub nsw i64 %i.bt, %i.bw               ; 2 uses
  %i.bx = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %index
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %wide.vec = load <24 x float>, ptr %i.bz, align 4, !tbaa !34 ; 2 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec42 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.gep = getelementptr [12 x i8], ptr %i.c, <8 x i64> %vec.ind ; 3 uses
  %wide.gep43 = getelementptr i8, <8 x ptr> %wide.gep, i64 -12
  %wide.gep44 = getelementptr i8, <8 x ptr> %wide.gep, i64 -8
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep44, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !20
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec42, %wide.masked.gather
  %wide.masked.gather45 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep43, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !32
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %wide.masked.gather45
  %i.cc = fdiv reassoc nsz arcp contract afn <8 x float> %i.ca, %i.cb
  %wide.gep46 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cc, <8 x ptr> align 4 %wide.gep46, <8 x i1> splat (i1 true)), !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %.lr.ph.preheader78, label %vector.body, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.cf = getelementptr i8, ptr %i.c, i64 %i.f
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load <2 x float>, ptr %i.ce, align 4, !tbaa !34
  %i.ci = load <2 x float>, ptr %i.cg, align 4, !tbaa !34
  %i.cj = fsub reassoc nsz arcp contract afn <2 x float> %i.ch, %i.ci ; 2 uses
  %shift71 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop72 = fdiv reassoc nsz arcp contract afn <2 x float> %shift71, %i.cj
  %i.ck = extractelement <2 x float> %foldExtExtBinop72, i64 0
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %.032 = phi i64 [ %i.cl, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader78 ] ; 2 uses
  %i.cl = add nuw i64 %.032, 1                    ; 3 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.cl
  %i.cn = getelementptr [12 x i8], ptr %i.c, i64 %.032 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -12
  %i.cp = load <2 x float>, ptr %i.cm, align 4, !tbaa !34
  %i.cq = load <2 x float>, ptr %i.co, align 4, !tbaa !34
  %i.cr = fsub reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cq ; 2 uses
  %shift74 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop75 = fdiv reassoc nsz arcp contract afn <2 x float> %shift74, %i.cr
  %i.cs = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !35
  %exitcond.not = icmp eq i64 %i.cl, %i.br
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !190

bb.e:                                             ; preds = %bb.a, %._crit_edge36, %._crit_edge
  %.sink41 = phi ptr [ %i.u, %._crit_edge36 ], [ %i.ce, %._crit_edge ], [ %i.c, %bb.a ]
  %.sink = phi float [ %i.bb, %._crit_edge36 ], [ %i.ck, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink41, i64 8
  store float %.sink, ptr %i.cu, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol23monotone_hermite_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 13 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !35
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %1 = icmp slt i64 %i.f, 0
  br i1 %1, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

bb.e:                                             ; preds = %bb.d
  %.not215 = icmp eq ptr %i.b, %i.c               ; 2 uses
  br i1 %.not215, label %.lr.ph257.preheader, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %bb.e
  %i.o = shl nuw nsw i64 %i.g, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.g ; 2 uses
  %i.r = add nsw i64 %i.g, -1                     ; 2 uses
  %.not270 = icmp eq i64 %i.r, 0
  br i1 %.not270, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.s = phi i64 [ %i.r, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ -1, %bb.e ] ; 2 uses
  %.sroa.35.2304 = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ null, %bb.e ]
  %.sroa.0175.2303 = phi ptr [ %i.p, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ null, %bb.e ] ; 2 uses
  br label %.lr.ph257

._crit_edge258:                                   ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.t = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.s, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 2 uses
  %.sroa.0175.0.lcssa = phi ptr [ %i.p, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.0175.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 6 uses
  %.sroa.26.0.lcssa = phi ptr [ %i.p, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.26.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 4 uses
  %.sroa.35.0.lcssa = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.35.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.t
  %i.w = load <2 x float>, ptr %i.u, align 4, !tbaa !34
  %i.x = load <2 x float>, ptr %i.v, align 4, !tbaa !34
  %i.y = shufflevector <2 x float> <float poison, float -0.000000e+00>, <2 x float> %i.n, <2 x i32> <i32 3, i32 1>
  %i.z = insertelement <2 x float> %i.n, float -0.000000e+00, i64 1
  %i.aa = fadd reassoc nsz arcp contract afn <2 x float> %i.w, %i.y
  %i.ab = fadd reassoc nsz arcp contract afn <2 x float> %i.x, %i.z
  %i.ac = fsub reassoc nsz arcp contract afn <2 x float> %i.aa, %i.ab ; 2 uses
  %shift = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.ac
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.26.0.lcssa, %.sroa.35.0.lcssa
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge258
  store float %i.ad, ptr %.sroa.26.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.g:                                             ; preds = %._crit_edge258
  %i.ae = ptrtoint ptr %.sroa.26.0.lcssa to i64
  %i.af = ptrtoint ptr %.sroa.0175.0.lcssa to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc113 unwind label %2

.noexc113:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #20
          to label %.noexc114 unwind label %2     ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag
  store float %i.ad, ptr %i.ap, align 4, !tbaa !34
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc114
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %.sroa.0175.0.lcssa, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc114
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0175.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0.lcssa, i64 noundef %i.ag) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124
  %.097256 = phi i64 [ %i.as, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ 0, %.lr.ph257.preheader ] ; 2 uses
  %.sroa.35.0255 = phi ptr [ %.sroa.35.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.35.2304, %.lr.ph257.preheader ] ; 5 uses
  %.sroa.26.0254 = phi ptr [ %.sroa.26.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.0175.2303, %.lr.ph257.preheader ] ; 3 uses
  %.sroa.0175.0253 = phi ptr [ %.sroa.0175.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.0175.2303, %.lr.ph257.preheader ] ; 7 uses
  %i.as = add nuw i64 %.097256, 1                 ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.as
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %.097256
  %i.aw = load <2 x float>, ptr %i.au, align 4, !tbaa !34
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !34
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.aw, %i.ax ; 2 uses
  %shift378 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fdiv reassoc nsz arcp contract afn <2 x float> %shift378, %i.ay
  %i.az = extractelement <2 x float> %foldExtExtBinop379, i64 0 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.sroa.26.0254, %.sroa.35.0255
  br i1 %.not.i.i115, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph257
  store float %i.az, ptr %.sroa.26.0254, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124

bb.l:                                             ; preds = %.lr.ph257
  %i.ba = ptrtoint ptr %.sroa.35.0255 to i64
  %i.bb = ptrtoint ptr %.sroa.0175.0253 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bd, label %bb.m, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.l
  %i.be = ashr exact i64 %i.bc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i117 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #20
          to label %.noexc123 unwind label %.loopexit ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store float %i.az, ptr %i.bl, align 4, !tbaa !34
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119

bb.n:                                             ; preds = %.noexc123
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %.sroa.0175.0253, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.n, %.noexc123
  %.not.i17.i.i.i120 = icmp eq ptr %.sroa.0175.0253, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0253, i64 noundef %i.bc) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124

_ZNSt6vectorIfSaIfEE9push_backEOf.exit124:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121, %bb.k
  %.sroa.0175.4 = phi ptr [ %i.bk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.0175.0253, %bb.k ] ; 2 uses
  %.pn216 = phi ptr [ %i.bl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.26.0254, %bb.k ]
  %.sroa.35.4 = phi ptr [ %i.bn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.35.0255, %bb.k ] ; 2 uses
  %.sroa.26.2 = getelementptr inbounds nuw i8, ptr %.pn216, i64 4 ; 2 uses
  %exitcond284.not = icmp eq i64 %i.as, %i.s
  br i1 %exitcond284.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !191

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0175.3 = phi ptr [ %i.ao, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0175.0.lcssa, %bb.f ] ; 13 uses
  %.sroa.35.3 = phi ptr [ %i.ar, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.35.0.lcssa, %bb.f ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.3, i64 %i.t
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34 ; 2 uses
  %i.bq = load float, ptr %.sroa.0175.3, align 4, !tbaa !34 ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = fcmp reassoc nsz arcp contract afn ugt float %i.br, 0.000000e+00
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, 5.000000e-01
  %.sink = select i1 %i.bs, float %i.bu, float 0.000000e+00
  %i.bv = load ptr, ptr %0, align 8, !tbaa !15    ; 13 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float %.sink, ptr %i.bw, align 4, !tbaa !35
  %i.bx = icmp ugt i64 %i.f, 12
  br i1 %i.bx, label %.lr.ph265.preheader, label %.preheader

2:                                                ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph265.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 5 uses
  %i.by = add nsw i64 %umax, -1                   ; 2 uses
  %min.iters.check362 = icmp ult i64 %i.f, 108
  br i1 %min.iters.check362, label %.lr.ph265.preheader384, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph265.preheader
  %scevgep355 = getelementptr i8, ptr %i.bv, i64 20
  %4 = mul nuw i64 %umax, 12
  %scevgep356 = getelementptr i8, ptr %i.bv, i64 %4
  %i.bz = shl nuw nsw i64 %umax, 2
  %scevgep357 = getelementptr i8, ptr %.sroa.0175.3, i64 %i.bz
  %bound0358 = icmp ult ptr %scevgep355, %scevgep357
  %bound1359 = icmp ult ptr %.sroa.0175.3, %scevgep356
  %found.conflict360 = and i1 %bound0358, %bound1359
  br i1 %found.conflict360, label %.lr.ph265.preheader384, label %vector.ph363

vector.ph363:                                     ; preds = %vector.memcheck354
  %n.vec364 = and i64 %i.by, -8                   ; 3 uses
  %i.ca = or disjoint i64 %n.vec364, 1
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph363
  %index366 = phi i64 [ 0, %vector.ph363 ], [ %index.next372, %vector.body365 ] ; 2 uses
  %vec.ind367 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph363 ], [ %vec.ind.next373, %vector.body365 ] ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %index366 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %wide.load368 = load <8 x float>, ptr %i.cb, align 4, !tbaa !34, !alias.scope !207 ; 2 uses
  %wide.load369 = load <8 x float>, ptr %i.cc, align 4, !tbaa !34, !alias.scope !207 ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load369, %wide.load368
  %i.ce = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.cd, zeroinitializer
  %i.cf = fadd reassoc nsz arcp contract afn <8 x float> %wide.load369, %wide.load368
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = select <8 x i1> %i.ce, <8 x float> %i.cg, <8 x float> zeroinitializer
  %wide.gep370 = getelementptr inbounds nuw [12 x i8], ptr %i.bv, <8 x i64> %vec.ind367
  %wide.gep371 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep370, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ch, <8 x ptr> align 4 %wide.gep371, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !208, !noalias !207
  %index.next372 = add nuw i64 %index366, 8       ; 2 uses
  %vec.ind.next373 = add nuw <8 x i64> %vec.ind367, splat (i64 8)
  %i.ci = icmp eq i64 %index.next372, %n.vec364
  br i1 %i.ci, label %middle.block374, label %vector.body365, !llvm.loop !195

middle.block374:                                  ; preds = %vector.body365
  %cmp.n375 = icmp eq i64 %i.by, %n.vec364
  br i1 %cmp.n375, label %.preheader, label %.lr.ph265.preheader384

.lr.ph265.preheader384:                           ; preds = %vector.memcheck354, %.lr.ph265.preheader, %middle.block374
  %.096263.ph = phi i64 [ 1, %vector.memcheck354 ], [ 1, %.lr.ph265.preheader ], [ %i.ca, %middle.block374 ] ; 4 uses
  %i.cj = sub i64 %umax, %.096263.ph
  %xtraiter394 = and i64 %i.cj, 3                 ; 2 uses
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol

.lr.ph265.prol:                                   ; preds = %.lr.ph265.preheader384, %.lr.ph265.prol
  %.096263.prol = phi i64 [ %i.cu, %.lr.ph265.prol ], [ %.096263.ph, %.lr.ph265.preheader384 ] ; 3 uses
  %prol.iter396 = phi i64 [ %prol.iter396.next, %.lr.ph265.prol ], [ 0, %.lr.ph265.preheader384 ]
  %i.ck = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %.096263.prol ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !34 ; 2 uses
  %i.cn = load float, ptr %i.ck, align 4, !tbaa !34 ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.co, 0.000000e+00
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cn, %i.cm
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, 5.000000e-01
  %.sink336.prol = select i1 %i.cp, float %i.cr, float 0.000000e+00
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.096263.prol
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store float %.sink336.prol, ptr %i.ct, align 4, !tbaa !35
  %i.cu = add nuw i64 %.096263.prol, 1            ; 2 uses
  %prol.iter396.next = add i64 %prol.iter396, 1   ; 2 uses
  %prol.iter396.cmp.not = icmp eq i64 %prol.iter396.next, %xtraiter394
  br i1 %prol.iter396.cmp.not, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol, !llvm.loop !196

.lr.ph265.prol.loopexit:                          ; preds = %.lr.ph265.prol, %.lr.ph265.preheader384
  %.096263.unr = phi i64 [ %.096263.ph, %.lr.ph265.preheader384 ], [ %i.cu, %.lr.ph265.prol ]
  %i.cv = sub i64 %.096263.ph, %umax
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %.preheader, label %.lr.ph265

.preheader:                                       ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265, %middle.block374, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  br i1 %.not215, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph267

.lr.ph265:                                        ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265
  %.096263 = phi i64 [ %i.eo, %.lr.ph265 ], [ %.096263.unr, %.lr.ph265.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %.096263 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !34 ; 2 uses
  %i.da = load float, ptr %i.cx, align 4, !tbaa !34 ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cz
  %i.dc = fcmp reassoc nsz arcp contract afn ugt float %i.db, 0.000000e+00
  %i.dd = fadd reassoc nsz arcp contract afn float %i.da, %i.cz
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, 5.000000e-01
  %.sink336 = select i1 %i.dc, float %i.de, float 0.000000e+00
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.096263
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %.sink336, ptr %i.dg, align 4, !tbaa !35
  %i.dh = add nuw i64 %.096263, 1                 ; 2 uses
  %i.di = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %i.dh ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !34 ; 2 uses
  %i.dl = load float, ptr %i.di, align 4, !tbaa !34 ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.dk
  %i.dn = fcmp reassoc nsz arcp contract afn ugt float %i.dm, 0.000000e+00
  %i.do = fadd reassoc nsz arcp contract afn float %i.dl, %i.dk
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 5.000000e-01
  %.sink336.1 = select i1 %i.dn, float %i.dp, float 0.000000e+00
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.dh
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store float %.sink336.1, ptr %i.dr, align 4, !tbaa !35
  %i.ds = add nuw i64 %.096263, 2                 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !34 ; 2 uses
  %i.dw = load float, ptr %i.dt, align 4, !tbaa !34 ; 2 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dv
  %i.dy = fcmp reassoc nsz arcp contract afn ugt float %i.dx, 0.000000e+00
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dw, %i.dv
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 5.000000e-01
  %.sink336.2 = select i1 %i.dy, float %i.ea, float 0.000000e+00
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.ds
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store float %.sink336.2, ptr %i.ec, align 4, !tbaa !35
  %i.ed = add nuw i64 %.096263, 3                 ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !34 ; 2 uses
  %i.eh = load float, ptr %i.ee, align 4, !tbaa !34 ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.eg
  %i.ej = fcmp reassoc nsz arcp contract afn ugt float %i.ei, 0.000000e+00
  %i.ek = fadd reassoc nsz arcp contract afn float %i.eh, %i.eg
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, 5.000000e-01
  %.sink336.3 = select i1 %i.ej, float %i.el, float 0.000000e+00
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.ed
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store float %.sink336.3, ptr %i.en, align 4, !tbaa !35
  %i.eo = add nuw i64 %.096263, 4                 ; 2 uses
  %exitcond285.not.3 = icmp eq i64 %i.g, %i.eo
  br i1 %exitcond285.not.3, label %.preheader, label %.lr.ph265, !llvm.loop !197

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.s, %.preheader
  %i.ep = ptrtoint ptr %.sroa.35.3 to i64
  %i.eq = ptrtoint ptr %.sroa.0175.3 to i64
  %i.er = sub i64 %i.ep, %i.eq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3, i64 noundef %i.er) #19
  br label %bb.ah

.lr.ph267:                                        ; preds = %.preheader, %bb.s
  %.095266 = phi i64 [ %i.es, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.es = add nuw i64 %.095266, 1                 ; 4 uses
  %i.et = icmp ult i64 %i.es, %i.g
  %i.eu = select i1 %i.et, i64 %i.es, i64 0       ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.3, i64 %.095266 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !34 ; 4 uses
  %i.ex = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.ew)
  %i.ey = fcmp reassoc nsz arcp contract afn olt float %i.ex, f0x34000000
  br i1 %i.ey, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph267
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.eu
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !35
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.095266
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !35
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph267
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %.095266
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !35
  %i.fg = fdiv reassoc nsz arcp contract afn float %i.ff, %i.ew ; 3 uses
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.eu
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !35
  %i.fk = fdiv reassoc nsz arcp contract afn float %i.fj, %i.ew ; 3 uses
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fg, %i.fg
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fk, %i.fk
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fm, %i.fl ; 2 uses
  %i.fo = fcmp reassoc nsz arcp contract afn ogt float %i.fn, 9.000000e+00
  br i1 %i.fo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fp = fmul reassoc nsz arcp contract afn float %i.ew, 3.000000e+00
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.fg
  %i.fr = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.fn) ; 2 uses
  %i.fs = fdiv reassoc nsz arcp contract afn float %i.fq, %i.fr
  store float %i.fs, ptr %i.fe, align 4, !tbaa !35
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fk, 3.000000e+00
  %i.fu = load float, ptr %i.ev, align 4, !tbaa !34
  %i.fv = fmul reassoc nsz arcp contract afn float %i.ft, %i.fu
  %i.fw = fdiv reassoc nsz arcp contract afn float %i.fv, %i.fr
  store float %i.fw, ptr %i.fi, align 4, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %exitcond286.not = icmp eq i64 %i.es, %i.g
  br i1 %exitcond286.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph267, !llvm.loop !198

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %2
  %.sroa.0175.0233 = phi ptr [ %.sroa.0175.0.lcssa, %2 ], [ %.sroa.0175.0253, %.loopexit ], [ %.sroa.0175.0253, %.loopexit.split-lp ] ; 3 uses
  %.sroa.35.0227 = phi ptr [ %.sroa.26.0.lcssa, %2 ], [ %.sroa.35.0255, %.loopexit ], [ %.sroa.35.0255, %.loopexit.split-lp ]
  %.pn109 = phi { ptr, i32 } [ %3, %2 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %.sroa.0175.0233, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIfSaIfEED2Ev.exit126, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = ptrtoint ptr %.sroa.35.0227 to i64
  %i.fy = ptrtoint ptr %.sroa.0175.0233 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0233, i64 noundef %i.fz) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit126

bb.v:                                             ; preds = %bb.c
  %i.ga = add nsw i64 %i.g, -1                    ; 9 uses
  %i.gb = icmp ugt i64 %i.ga, 2305843009213693951
  br i1 %i.gb, label %.noexc131, label %.lr.ph.preheader

.noexc131:                                        ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.v
  %.not = icmp ne i64 %i.ga, 0
  tail call void @llvm.assume(i1 %.not)
  %i.gc = shl nuw nsw i64 %i.ga, 2
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #20 ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.ga
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143
  %i.gf = load float, ptr %.sroa.0.3, align 4, !tbaa !34
  %i.gg = load ptr, ptr %0, align 8, !tbaa !15    ; 11 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store float %i.gf, ptr %i.gh, align 4, !tbaa !35
  %.not328 = icmp eq i64 %i.ga, 1
  br i1 %.not328, label %._crit_edge249, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %._crit_edge
  %i.gi = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gi, 8
  br i1 %min.iters.check, label %.lr.ph248.preheader389, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph248.preheader
  %scevgep = getelementptr i8, ptr %i.gg, i64 20
  %i.gj = getelementptr i8, ptr %i.gg, i64 %i.f
  %scevgep350 = getelementptr i8, ptr %i.gj, i64 -12
  %i.gk = shl nuw nsw i64 %i.g, 2
  %i.gl = getelementptr i8, ptr %.sroa.0.3, i64 %i.gk
  %scevgep351 = getelementptr i8, ptr %i.gl, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep351
  %bound1 = icmp ult ptr %.sroa.0.3, %scevgep350
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph248.preheader389, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gi, -8                      ; 3 uses
  %i.gm = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gn = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %index ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %wide.load = load <8 x float>, ptr %i.gn, align 4, !tbaa !34, !alias.scope !209 ; 2 uses
  %wide.load352 = load <8 x float>, ptr %i.go, align 4, !tbaa !34, !alias.scope !209 ; 2 uses
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %wide.load352, %wide.load
  %i.gq = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.gp, zeroinitializer
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %wide.load352, %wide.load
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %i.gr, splat (float 5.000000e-01)
  %i.gt = select <8 x i1> %i.gq, <8 x float> %i.gs, <8 x float> zeroinitializer
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.gg, <8 x i64> %vec.ind
  %wide.gep353 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gt, <8 x ptr> align 4 %wide.gep353, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !210, !noalias !209
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %._crit_edge249, label %.lr.ph248.preheader389

.lr.ph248.preheader389:                           ; preds = %vector.memcheck, %.lr.ph248.preheader, %middle.block
  %.093246.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph248.preheader ], [ %i.gm, %middle.block ] ; 4 uses
  %i.gv = xor i64 %.093246.ph, -1
  %i.gw = add nsw i64 %i.g, %i.gv
  %i.gx = add nsw i64 %i.g, -2
  %i.gy = sub nsw i64 %i.gx, %.093246.ph
  %xtraiter = and i64 %i.gw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph248.prol.loopexit, label %.lr.ph248.prol

.lr.ph248.prol:                                   ; preds = %.lr.ph248.preheader389, %.lr.ph248.prol
  %.093246.prol = phi i64 [ %i.hj, %.lr.ph248.prol ], [ %.093246.ph, %.lr.ph248.preheader389 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph248.prol ], [ 0, %.lr.ph248.preheader389 ]
  %i.gz = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %.093246.prol ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !34 ; 2 uses
  %i.hc = load float, ptr %i.gz, align 4, !tbaa !34 ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.hb
  %i.he = fcmp reassoc nsz arcp contract afn ugt float %i.hd, 0.000000e+00
  %i.hf = fadd reassoc nsz arcp contract afn float %i.hc, %i.hb
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, 5.000000e-01
  %.sink339.prol = select i1 %i.he, float %i.hg, float 0.000000e+00
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %.093246.prol
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %.sink339.prol, ptr %i.hi, align 4, !tbaa !35
  %i.hj = add nuw i64 %.093246.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph248.prol.loopexit, label %.lr.ph248.prol, !llvm.loop !203

.lr.ph248.prol.loopexit:                          ; preds = %.lr.ph248.prol, %.lr.ph248.preheader389
  %.093246.unr = phi i64 [ %.093246.ph, %.lr.ph248.preheader389 ], [ %i.hj, %.lr.ph248.prol ]
  %i.hk = icmp ult i64 %i.gy, 3
  br i1 %i.hk, label %._crit_edge249, label %.lr.ph248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143
  %.094244 = phi i64 [ %i.hl, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.28.0243 = phi ptr [ %.sroa.28.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.ge, %.lr.ph.preheader ] ; 3 uses
  %.sroa.22.0242 = phi ptr [ %.sroa.22.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gd, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0241 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gd, %.lr.ph.preheader ] ; 7 uses
  %i.hl = add nuw i64 %.094244, 1                 ; 3 uses
  %i.hm = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.hn = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %.094244
  %i.hp = load <2 x float>, ptr %i.hn, align 4, !tbaa !34
  %i.hq = load <2 x float>, ptr %i.ho, align 4, !tbaa !34
  %i.hr = fsub reassoc nsz arcp contract afn <2 x float> %i.hp, %i.hq ; 2 uses
  %shift381 = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fdiv reassoc nsz arcp contract afn <2 x float> %shift381, %i.hr
  %i.hs = extractelement <2 x float> %foldExtExtBinop382, i64 0 ; 2 uses
  %.not.i.i134 = icmp eq ptr %.sroa.22.0242, %.sroa.28.0243
  br i1 %.not.i.i134, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  store float %i.hs, ptr %.sroa.22.0242, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143

bb.x:                                             ; preds = %.lr.ph
  %i.ht = ptrtoint ptr %.sroa.28.0243 to i64
  %i.hu = ptrtoint ptr %.sroa.0.0241 to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 7 uses
  %i.hw = icmp eq i64 %i.hv, 9223372036854775804
  br i1 %i.hw, label %bb.y, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc141 unwind label %.loopexit.split-lp219

.noexc141:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135: ; preds = %bb.x
  %i.hx = ashr exact i64 %i.hv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i136 = tail call i64 @llvm.umax.i64(i64 %i.hx, i64 1)
  %i.hy = add nsw i64 %.sroa.speculated.i.i.i.i136, %i.hx ; 2 uses
  %i.hz = icmp ult i64 %i.hy, %i.hx
  %i.ia = tail call i64 @llvm.umin.i64(i64 %i.hy, i64 2305843009213693951)
  %i.ib = select i1 %i.hz, i64 2305843009213693951, i64 %i.ia ; 3 uses
  %.not.i.i.i.i137 = icmp ne i64 %i.ib, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.ic = shl nuw nsw i64 %i.ib, 2
  %i.id = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #20
          to label %.noexc142 unwind label %.loopexit218 ; 4 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 %i.hv ; 2 uses
  store float %i.hs, ptr %i.ie, align 4, !tbaa !34
  %i.if = icmp sgt i64 %i.hv, 0
  br i1 %i.if, label %bb.z, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138

bb.z:                                             ; preds = %.noexc142
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.id, ptr align 4 %.sroa.0.0241, i64 %i.hv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138: ; preds = %bb.z, %.noexc142
  %.not.i17.i.i.i139 = icmp eq ptr %.sroa.0.0241, null
  br i1 %.not.i17.i.i.i139, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0241, i64 noundef %i.hv) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140: ; preds = %bb.aa, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ib
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143

_ZNSt6vectorIfSaIfEE9push_backEOf.exit143:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140, %bb.w
  %.sroa.0.3 = phi ptr [ %i.id, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.0.0241, %bb.w ] ; 14 uses
  %.pn = phi ptr [ %i.ie, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.22.0242, %bb.w ]
  %.sroa.28.3 = phi ptr [ %i.ig, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.28.0243, %bb.w ] ; 2 uses
  %.sroa.22.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %exitcond.not = icmp eq i64 %i.hl, %i.ga
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge249:                                   ; preds = %.lr.ph248.prol.loopexit, %.lr.ph248, %middle.block, %._crit_edge
  %i.ih = icmp ugt i64 %i.f, 12
  br i1 %i.ih, label %._crit_edge249.thread, label %.lr.ph252.preheader

.lr.ph248:                                        ; preds = %.lr.ph248.prol.loopexit, %.lr.ph248
  %.093246 = phi i64 [ %i.jz, %.lr.ph248 ], [ %.093246.unr, %.lr.ph248.prol.loopexit ] ; 6 uses
  %i.ii = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %.093246 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 -4
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !34 ; 2 uses
  %i.il = load float, ptr %i.ii, align 4, !tbaa !34 ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.ik
  %i.in = fcmp reassoc nsz arcp contract afn ugt float %i.im, 0.000000e+00
  %i.io = fadd reassoc nsz arcp contract afn float %i.il, %i.ik
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, 5.000000e-01
  %.sink339 = select i1 %i.in, float %i.ip, float 0.000000e+00
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %.093246
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store float %.sink339, ptr %i.ir, align 4, !tbaa !35
  %i.is = add nuw i64 %.093246, 1                 ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.is ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !34 ; 2 uses
  %i.iw = load float, ptr %i.it, align 4, !tbaa !34 ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.iv
  %i.iy = fcmp reassoc nsz arcp contract afn ugt float %i.ix, 0.000000e+00
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iw, %i.iv
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, 5.000000e-01
  %.sink339.1 = select i1 %i.iy, float %i.ja, float 0.000000e+00
  %i.jb = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.is
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store float %.sink339.1, ptr %i.jc, align 4, !tbaa !35
  %i.jd = add nuw i64 %.093246, 2                 ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.jd ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 -4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !34 ; 2 uses
  %i.jh = load float, ptr %i.je, align 4, !tbaa !34 ; 2 uses
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, %i.jg
  %i.jj = fcmp reassoc nsz arcp contract afn ugt float %i.ji, 0.000000e+00
  %i.jk = fadd reassoc nsz arcp contract afn float %i.jh, %i.jg
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jk, 5.000000e-01
  %.sink339.2 = select i1 %i.jj, float %i.jl, float 0.000000e+00
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.jd
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store float %.sink339.2, ptr %i.jn, align 4, !tbaa !35
  %i.jo = add nuw i64 %.093246, 3                 ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.jo ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 -4
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !34 ; 2 uses
  %i.js = load float, ptr %i.jp, align 4, !tbaa !34 ; 2 uses
  %i.jt = fmul reassoc nsz arcp contract afn float %i.js, %i.jr
  %i.ju = fcmp reassoc nsz arcp contract afn ugt float %i.jt, 0.000000e+00
  %i.jv = fadd reassoc nsz arcp contract afn float %i.js, %i.jr
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, 5.000000e-01
  %.sink339.3 = select i1 %i.ju, float %i.jw, float 0.000000e+00
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.jo
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store float %.sink339.3, ptr %i.jy, align 4, !tbaa !35
  %i.jz = add nuw i64 %.093246, 4                 ; 2 uses
  %exitcond282.not.3 = icmp eq i64 %i.jz, %i.ga
  br i1 %exitcond282.not.3, label %._crit_edge249, label %.lr.ph248, !llvm.loop !205

._crit_edge249.thread:                            ; preds = %._crit_edge249
  %i.ka = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.g
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !34
  %i.kd = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.ga
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store float %i.kc, ptr %i.ke, align 4, !tbaa !35
  br label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %._crit_edge249, %._crit_edge249.thread
  br label %.lr.ph252

_ZNSt6vectorIfSaIfEED2Ev.exit145:                 ; preds = %bb.ae
  %i.kf = ptrtoint ptr %.sroa.28.3 to i64
  %i.kg = ptrtoint ptr %.sroa.0.3 to i64
  %i.kh = sub i64 %i.kf, %i.kg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.kh) #19
  br label %bb.ah

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.ae
  %.0250 = phi i64 [ %i.lg, %bb.ae ], [ 0, %.lr.ph252.preheader ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0250 ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !34 ; 4 uses
  %i.kk = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.kj)
  %i.kl = fcmp reassoc nsz arcp contract afn olt float %i.kk, f0x34000000
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %.0250 ; 3 uses
  br i1 %i.kl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph252
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, ptr align 4 %i.kn, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !35
  br label %bb.ae

bb.ac:                                            ; preds = %.lr.ph252
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 8 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !35
  %i.kq = fdiv reassoc nsz arcp contract afn float %i.kp, %i.kj ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 20 ; 2 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !35
  %i.kt = fdiv reassoc nsz arcp contract afn float %i.ks, %i.kj ; 3 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kq, %i.kq
  %i.kv = fmul reassoc nsz arcp contract afn float %i.kt, %i.kt
  %i.kw = fadd reassoc nsz arcp contract afn float %i.kv, %i.ku ; 2 uses
  %i.kx = fcmp reassoc nsz arcp contract afn ogt float %i.kw, 9.000000e+00
  br i1 %i.kx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kj, 3.000000e+00
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, %i.kq
  %i.la = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.kw) ; 2 uses
  %i.lb = fdiv reassoc nsz arcp contract afn float %i.kz, %i.la
  store float %i.lb, ptr %i.ko, align 4, !tbaa !35
  %i.lc = fmul reassoc nsz arcp contract afn float %i.kt, 3.000000e+00
  %i.ld = load float, ptr %i.ki, align 4, !tbaa !34
  %i.le = fmul reassoc nsz arcp contract afn float %i.lc, %i.ld
  %i.lf = fdiv reassoc nsz arcp contract afn float %i.le, %i.la
  store float %i.lf, ptr %i.kr, align 4, !tbaa !35
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %i.lg = add nuw i64 %.0250, 1                   ; 2 uses
  %exitcond283.not = icmp eq i64 %i.lg, %i.ga
  br i1 %exitcond283.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit145, label %.lr.ph252, !llvm.loop !206

.loopexit218:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp219:                            ; preds = %bb.y
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp219, %.loopexit218
  %lpad.phi222 = phi { ptr, i32 } [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ] ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %.sroa.0.0241, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorIfSaIfEED2Ev.exit126, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0241, i64 noundef %i.hv) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit126

_ZNSt6vectorIfSaIfEED2Ev.exit126:                 ; preds = %bb.ag, %bb.af, %bb.u, %bb.t
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %bb.u ], [ %lpad.phi222, %bb.ag ], [ %.pn109, %bb.t ], [ %lpad.phi222, %bb.af ]
  resume { ptr, i32 } %.pn109.pn

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit145, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_RKNS_6limitsIfEES9_b(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %3, align 4                ; 3 uses
  store i64 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %4, align 4
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.a, ptr %i.f, align 8, !tbaa !27
  br i1 %5, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not74 = icmp eq ptr %1, %2
  br i1 %.not74, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.c to i32
  %i.k = bitcast i32 %i.j to float
  %i.l = lshr i64 %i.c, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = bitcast i32 %i.m to float
  %i.o = fsub reassoc nsz arcp contract afn float %i.n, %i.k ; 2 uses
  %.not3176 = icmp eq ptr %1, %2
  br i1 %.not3176, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph78, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %i.r = phi ptr [ null, %.lr.ph78 ], [ %i.aw, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph78 ], [ %i.ax, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.t = phi ptr [ null, %.lr.ph78 ], [ %i.ay, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.077 = phi ptr [ %1, %.lr.ph78 ], [ %i.az, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.u = load float, ptr %.077, align 4, !tbaa !45
  %i.v = frem reassoc nsz arcp contract afn float %i.u, %i.o ; 3 uses
  %i.w = fcmp reassoc nsz arcp contract afn olt float %i.v, 0.000000e+00
  %i.x = fadd reassoc nsz arcp contract afn float %i.v, %i.o
  %spec.select = select nsz i1 %i.w, float %i.x, float %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.077, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %spec.select, ptr %i.t, align 4, !tbaa !34
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.aa, ptr %.sroa.660.0..sroa_idx, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !17
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ag = sdiv exact i64 %i.ae, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 768614336404564650)
  %i.ak = select i1 %i.ai, i64 768614336404564650, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 12
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #20
          to label %.noexc33 unwind label %.loopexit66 ; 6 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store float %spec.select, ptr %i.an, align 4, !tbaa !34
  %.sroa.660.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.ao, ptr %.sroa.660.0..sroa_idx61, align 4, !tbaa !34
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc33, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.am, %.noexc33 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %.noexc33 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !62, !alias.scope !219
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc33
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc33 ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_:bb.a
  %.sroa.067.0.copyload = load <3 x float>, ptr %.sroa.010.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !62
  store <3 x float> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i, !llvm.loop !249

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bu)
  %i.cn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 192
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit, !llvm.loop !242

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 12, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load float, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !32 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !32
  %i.g = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.0.019.i.ptr, align 4
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 12
  br i1 %i.h, label %bb.d, label %bb.e, !prof !75

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  store <3 x float> %.sroa.0.0.copyload, ptr %0, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.j = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.k = load float, ptr %.pn18.i, align 4, !tbaa !32
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !62
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -12 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !32
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i, !llvm.loop !250

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.e, ptr %.sroa.06.0.lcssa.i.i, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %bb.b, !llvm.loop !251

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14 ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load float, ptr %.sroa.0.07.i, align 4, !tbaa !34 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i.i13, align 4
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -12 ; 2 uses
  %i.q = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !32
  %i.r = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i18
  %.sroa.0.011.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.06.010.i.i20 = phi ptr [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i20, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i19, i64 12, i1 false), !tbaa.struct !62
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19, i64 -12 ; 2 uses
  %i.s = load float, ptr %.sroa.0.0.i.i21, align 4, !tbaa !32
  %i.t = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14, !llvm.loop !250

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ] ; 2 uses
  store float %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i15, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 4
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx5.i.i16, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 12 ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i12, !llvm.loop !252

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i24
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.0.i32, %bb.n ], [ %.sroa.0.016.i23, %bb.h ] ; 7 uses
  %.pn18.i27 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.w = load float, ptr %.sroa.0.019.i26, align 4, !tbaa !32 ; 4 uses
  %i.x = load float, ptr %0, align 4, !tbaa !32
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i25
  %.sroa.058.0.copyload = load <3 x float>, ptr %.sroa.0.019.i26, align 4
  %i.z = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.aa = sub i64 %i.z, %i.b                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 12
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !75

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 24
  %.neg24.i39 = udiv exact i64 %i.aa, 12
  %.neg24.neg.i40 = sub nsw i64 0, %.neg24.i39
  %i.ad = getelementptr inbounds [12 x i8], ptr %i.ac, i64 %.neg24.neg.i40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ad, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.aa, 12
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38: ; preds = %bb.l, %bb.k, %bb.j
  store <3 x float> %.sroa.058.0.copyload, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.ag = load i64, ptr %.sroa.5.0..sroa_idx.i.i28, align 4
  %i.ah = load float, ptr %.pn18.i27, align 4, !tbaa !32
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.m, %.lr.ph.i.i34
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn18.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.0.019.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i35, i64 12, i1 false), !tbaa.struct !62
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -12 ; 2 uses
  %i.aj = load float, ptr %.sroa.0.0.i.i37, align 4, !tbaa !32
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29, !llvm.loop !250

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.019.i26, %bb.m ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i30, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 4
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx5.i.i31, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i25, !llvm.loop !251

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol31monotone_hermite_spline_variantIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 12 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit155

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !30
  %i.p = load float, ptr %i.m, align 8, !tbaa !31
  %i.q = fsub reassoc nsz arcp contract afn float %i.o, %i.p ; 2 uses
  %1 = icmp slt i64 %i.f, 0
  br i1 %1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not280 = icmp eq ptr %i.b, %i.c
  br i1 %.not280, label %.lr.ph387.preheader, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.r = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 unwind label %.thread ; 5 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.g ; 3 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20
          to label %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 unwind label %.thread ; 4 uses

_ZNSt6vectorIfSaIfEE7reserveEm.exit75:            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.g ; 2 uses
  %i.w = add nsw i64 %i.g, -1                     ; 2 uses
  %.not399 = icmp eq i64 %i.w, 0
  br i1 %.not399, label %._crit_edge388, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75
  %i.x = phi i64 [ %i.w, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ -1, %bb.f ] ; 2 uses
  %.sroa.26.2472 = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ]
  %.sroa.0200.2471 = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ] ; 2 uses
  %.sroa.17230.1247470 = phi ptr [ %i.s, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ] ; 2 uses
  %.sroa.26234.3249469 = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ]
  br label %.lr.ph387

._crit_edge388:                                   ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75
  %i.y = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %i.x, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 4 uses
  %.sroa.0220.0.lcssa = phi ptr [ %i.s, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.0220.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 6 uses
  %.sroa.17230.0.lcssa = phi ptr [ %i.s, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.17230.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 4 uses
  %.sroa.26234.0.lcssa = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.26234.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 2 uses
  %.sroa.0200.0.lcssa = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.0200.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 7 uses
  %.sroa.17.0.lcssa = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.17.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 4 uses
  %.sroa.26.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.26.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ] ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !32
  %i.ad = fsub reassoc nsz arcp contract afn float %i.aa, %i.ac
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17230.0.lcssa, %.sroa.26234.0.lcssa
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge388
  store float %i.ae, ptr %.sroa.17230.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.h:                                             ; preds = %._crit_edge388
  %i.af = ptrtoint ptr %.sroa.17230.0.lcssa to i64
  %i.ag = ptrtoint ptr %.sroa.0220.0.lcssa to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc76 unwind label %bb.ac

.noexc76:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20
          to label %.noexc77 unwind label %bb.ac  ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah
  store float %i.ae, ptr %i.aq, align 4, !tbaa !34
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %.sroa.0220.0.lcssa, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %.noexc77
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0220.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0220.0.lcssa, i64 noundef %i.ah) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  %.pre448 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

.thread:                                          ; preds = %bb.e, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69
  %.sroa.0220.1 = phi ptr [ null, %bb.e ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.s, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 ]
  %.sroa.26234.1 = phi ptr [ null, %bb.e ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.t, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 ]
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97
  %.052386 = phi i64 [ %i.au, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ 0, %.lr.ph387.preheader ] ; 3 uses
  %.sroa.26.0385 = phi ptr [ %.sroa.26.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.26.2472, %.lr.ph387.preheader ] ; 7 uses
  %.sroa.17.0384 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.0200.2471, %.lr.ph387.preheader ] ; 3 uses
  %.sroa.0200.0383 = phi ptr [ %.sroa.0200.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.0200.2471, %.lr.ph387.preheader ] ; 9 uses
  %.sroa.26234.0382 = phi ptr [ %.sroa.26234.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.26234.3249469, %.lr.ph387.preheader ] ; 5 uses
  %.sroa.17230.0381 = phi ptr [ %.sroa.17230.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.17230.1247470, %.lr.ph387.preheader ] ; 3 uses
  %.sroa.0220.0380 = phi ptr [ %.sroa.0220.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.17230.1247470, %.lr.ph387.preheader ] ; 7 uses
  %i.au = add nuw i64 %.052386, 1                 ; 4 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.au
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %.052386
  %i.az = load float, ptr %i.ay, align 4, !tbaa !32
  %i.ba = fsub reassoc nsz arcp contract afn float %i.ax, %i.az ; 2 uses
  %.not.i.i78 = icmp eq ptr %.sroa.17230.0381, %.sroa.26234.0382
  br i1 %.not.i.i78, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph387
  store float %i.ba, ptr %.sroa.17230.0381, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87

bb.m:                                             ; preds = %.lr.ph387
  %i.bb = ptrtoint ptr %.sroa.26234.0382 to i64
  %i.bc = ptrtoint ptr %.sroa.0220.0380 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79: ; preds = %bb.m
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i80 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i80, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i.i81 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i81)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc86 unwind label %.loopexit ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store float %i.ba, ptr %i.bm, align 4, !tbaa !34
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82

bb.o:                                             ; preds = %.noexc86
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %.sroa.0220.0380, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82: ; preds = %bb.o, %.noexc86
  %.not.i17.i.i.i83 = icmp eq ptr %.sroa.0220.0380, null
  br i1 %.not.i17.i.i.i83, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0220.0380, i64 noundef %i.bd) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  %.pre447 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87

_ZNSt6vectorIfSaIfEE9push_backEOf.exit87:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84, %bb.l
  %i.bp = phi ptr [ %.pre447, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84 ], [ %i.av, %bb.l ] ; 2 uses
  %.sroa.0220.5 = phi ptr [ %i.bl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84 ], [ %.sroa.0220.0380, %bb.l ] ; 4 uses
  %.pn281 = phi ptr [ %i.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84 ], [ %.sroa.17230.0381, %bb.l ]
  %.sroa.26234.5 = phi ptr [ %i.bo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i84 ], [ %.sroa.26234.0382, %bb.l ] ; 4 uses
  %.sroa.17230.2 = getelementptr inbounds nuw i8, ptr %.pn281, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.au
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %.052386
  %i.bs = load <2 x float>, ptr %i.bq, align 4, !tbaa !34
  %i.bt = load <2 x float>, ptr %i.br, align 4, !tbaa !34
  %i.bu = fsub reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bt ; 2 uses
  %shift = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.bu
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not.i.i88 = icmp eq ptr %.sroa.17.0384, %.sroa.26.0385
  br i1 %.not.i.i88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87
  store float %i.bv, ptr %.sroa.17.0384, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87
  %i.bw = ptrtoint ptr %.sroa.26.0385 to i64
  %i.bx = ptrtoint ptr %.sroa.0200.0383 to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775804
  br i1 %i.bz, label %bb.s, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc95 unwind label %.loopexit.split-lp284

.noexc95:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89: ; preds = %bb.r
  %i.ca = ashr exact i64 %i.by, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i90 = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i90, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 2305843009213693951)
  %i.ce = select i1 %i.cc, i64 2305843009213693951, i64 %i.cd ; 3 uses
  %.not.i.i.i.i91 = icmp ne i64 %i.ce, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i91)
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #20
          to label %.noexc96 unwind label %.loopexit283 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store float %i.bv, ptr %i.ch, align 4, !tbaa !34
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.t, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92

bb.t:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 4 %.sroa.0200.0383, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92: ; preds = %bb.t, %.noexc96
  %.not.i17.i.i.i93 = icmp eq ptr %.sroa.0200.0383, null
  br i1 %.not.i17.i.i.i93, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0383, i64 noundef %i.by) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ce
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97

_ZNSt6vectorIfSaIfEE9push_backEOf.exit97:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94, %bb.q
  %.sroa.0200.3 = phi ptr [ %i.cg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94 ], [ %.sroa.0200.0383, %bb.q ] ; 2 uses
  %.pn282 = phi ptr [ %i.ch, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94 ], [ %.sroa.17.0384, %bb.q ]
  %.sroa.26.3 = phi ptr [ %i.cj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94 ], [ %.sroa.26.0385, %bb.q ] ; 2 uses
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.pn282, i64 4 ; 2 uses
  %exitcond445.not = icmp eq i64 %i.au, %i.x
  br i1 %exitcond445.not, label %._crit_edge388, label %.lr.ph387, !llvm.loop !253

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit283:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89
  %lpad.loopexit285 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp284:                            ; preds = %bb.s
  %lpad.loopexit.split-lp286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.g
  %i.ck = phi ptr [ %.pre448, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.0220.4 = phi ptr [ %i.ap, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0220.0.lcssa, %bb.g ] ; 15 uses
  %.sroa.26234.4 = phi ptr [ %i.as, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.26234.0.lcssa, %bb.g ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !20
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %i.y ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !20
  %i.cq = fsub reassoc nsz arcp contract afn float %i.cm, %i.cp
  %i.cr = load float, ptr %i.ck, align 4, !tbaa !32
  %i.cs = load float, ptr %i.cn, align 4, !tbaa !32
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cr, %i.q
  %i.cu = fsub reassoc nsz arcp contract afn float %i.ct, %i.cs
  %i.cv = fdiv reassoc nsz arcp contract afn float %i.cq, %i.cu ; 2 uses
  %.not.i.i98 = icmp eq ptr %.sroa.17.0.lcssa, %.sroa.26.0.lcssa
  br i1 %.not.i.i98, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.cv, ptr %.sroa.17.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.cw = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.cx = ptrtoint ptr %.sroa.0200.0.lcssa to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775804
  br i1 %i.cz, label %bb.x, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc105 unwind label %bb.ad

.noexc105:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.w
  %i.da = ashr exact i64 %i.cy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 2305843009213693951)
  %i.de = select i1 %i.dc, i64 2305843009213693951, i64 %i.dd ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #20
          to label %.noexc106 unwind label %bb.ad ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy
  store float %i.cv, ptr %i.dh, align 4, !tbaa !34
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.y, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102

bb.y:                                             ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 4 %.sroa.0200.0.lcssa, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102: ; preds = %bb.y, %.noexc106
  %.not.i17.i.i.i103 = icmp eq ptr %.sroa.0200.0.lcssa, null
  br i1 %.not.i17.i.i.i103, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0.lcssa, i64 noundef %i.cy) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104: ; preds = %bb.z, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107

_ZNSt6vectorIfSaIfEE9push_backEOf.exit107:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104, %bb.v
  %.sroa.0200.4 = phi ptr [ %i.dg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104 ], [ %.sroa.0200.0.lcssa, %bb.v ] ; 14 uses
  %.sroa.26.4 = phi ptr [ %i.dj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104 ], [ %.sroa.26.0.lcssa, %bb.v ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %i.y
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !34 ; 3 uses
  %i.dm = load float, ptr %.sroa.0200.4, align 4, !tbaa !34 ; 2 uses
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dl ; 2 uses
  %i.do = fcmp reassoc nsz arcp contract afn ogt float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.aa, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107
  %i.dp = load float, ptr %.sroa.0220.4, align 4, !tbaa !34 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %i.y
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !34 ; 2 uses
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dp, 2.000000e+00
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dr
  %i.du = fadd reassoc nsz arcp contract afn float %i.dr, %i.dp
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 3.000000e+00
  %i.dw = fsub reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dt, %i.dw
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.dx, %i.dv
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dl
  %i.ea = fdiv reassoc nsz arcp contract afn float %i.dn, %i.dz
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit: ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107, %bb.aa
  %.0.i = phi nsz float [ %i.ea, %bb.aa ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107 ]
  %i.eb = load ptr, ptr %0, align 8, !tbaa !15    ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store float %.0.i, ptr %i.ec, align 4, !tbaa !35
  %i.ed = icmp ugt i64 %i.f, 12
  br i1 %i.ed, label %.lr.ph397.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit109

.lr.ph397.preheader:                              ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 5 uses
  %i.ee = add nsw i64 %umax, -1                   ; 2 uses
  %min.iters.check621 = icmp ult i64 %i.f, 108
  br i1 %min.iters.check621, label %.lr.ph397.preheader643, label %vector.memcheck608

vector.memcheck608:                               ; preds = %.lr.ph397.preheader
  %scevgep609 = getelementptr i8, ptr %i.eb, i64 20 ; 2 uses
  %2 = mul nuw i64 %umax, 12
  %scevgep610 = getelementptr i8, ptr %i.eb, i64 %2 ; 2 uses
  %i.ef = shl nuw nsw i64 %umax, 2                ; 2 uses
  %scevgep611 = getelementptr i8, ptr %.sroa.0200.4, i64 %i.ef
  %scevgep612 = getelementptr i8, ptr %.sroa.0220.4, i64 %i.ef
  %bound0613 = icmp ult ptr %scevgep609, %scevgep611
  %bound1614 = icmp ult ptr %.sroa.0200.4, %scevgep610
  %found.conflict615 = and i1 %bound0613, %bound1614
  %bound0616 = icmp ult ptr %scevgep609, %scevgep612
  %bound1617 = icmp ult ptr %.sroa.0220.4, %scevgep610
  %found.conflict618 = and i1 %bound0616, %bound1617
  %conflict.rdx619 = or i1 %found.conflict615, %found.conflict618
  br i1 %conflict.rdx619, label %.lr.ph397.preheader643, label %vector.ph622

vector.ph622:                                     ; preds = %vector.memcheck608
  %n.vec623 = and i64 %i.ee, -8                   ; 3 uses
  %i.eg = or disjoint i64 %n.vec623, 1
  br label %vector.body624

vector.body624:                                   ; preds = %vector.body624, %vector.ph622
  %index625 = phi i64 [ 0, %vector.ph622 ], [ %index.next634, %vector.body624 ] ; 4 uses
  %vec.ind626 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph622 ], [ %vec.ind.next635, %vector.body624 ] ; 2 uses
  %i.eh = or disjoint i64 %index625, 1            ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %index625
  %wide.load627 = load <8 x float>, ptr %i.ei, align 4, !tbaa !34, !alias.scope !267 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %i.eh
  %wide.load628 = load <8 x float>, ptr %i.ej, align 4, !tbaa !34, !alias.scope !267 ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %wide.load628, %wide.load627 ; 2 uses
  %i.el = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ek, zeroinitializer ; 3 uses
  %i.em = getelementptr [4 x i8], ptr %.sroa.0220.4, i64 %i.eh
  %wide.masked.load629 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.em, <8 x i1> %i.el, <8 x float> poison), !tbaa !34, !alias.scope !268 ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %.sroa.0220.4, i64 %index625
  %wide.masked.load630 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.en, <8 x i1> %i.el, <8 x float> poison), !tbaa !34, !alias.scope !268 ; 2 uses
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load629, splat (float 2.000000e+00)
  %i.ep = fadd reassoc nsz arcp contract afn <8 x float> %i.eo, %wide.masked.load630
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load630, %wide.masked.load629
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.eq, splat (float 3.000000e+00)
  %i.es = fsub reassoc nsz arcp contract afn <8 x float> %wide.load628, %wide.load627
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, %i.es
  %i.eu = fdiv reassoc nsz arcp contract afn <8 x float> %i.et, %i.er
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %i.eu, %wide.load627
  %i.ew = fdiv reassoc nsz arcp contract afn <8 x float> %i.ek, %i.ev
  %predphi631 = select nsz <8 x i1> %i.el, <8 x float> %i.ew, <8 x float> zeroinitializer
  %wide.gep632 = getelementptr inbounds nuw [12 x i8], ptr %i.eb, <8 x i64> %vec.ind626
  %wide.gep633 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep632, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi631, <8 x ptr> align 4 %wide.gep633, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !269, !noalias !270
  %index.next634 = add nuw i64 %index625, 8       ; 2 uses
  %vec.ind.next635 = add nuw <8 x i64> %vec.ind626, splat (i64 8)
  %i.ex = icmp eq i64 %index.next634, %n.vec623
  br i1 %i.ex, label %middle.block636, label %vector.body624, !llvm.loop !258

middle.block636:                                  ; preds = %vector.body624
  %cmp.n637 = icmp eq i64 %i.ee, %n.vec623
  br i1 %cmp.n637, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph397.preheader643

.lr.ph397.preheader643:                           ; preds = %vector.memcheck608, %.lr.ph397.preheader, %middle.block636
  %.051396.ph = phi i64 [ 1, %vector.memcheck608 ], [ 1, %.lr.ph397.preheader ], [ %i.eg, %middle.block636 ] ; 7 uses
  %.neg = add i64 %.051396.ph, 1
  %i.ey = and i64 %umax, 1
  %lcmp.mod690.not.not = icmp eq i64 %i.ey, 0
  br i1 %lcmp.mod690.not.not, label %.lr.ph397.prol, label %.lr.ph397.prol.loopexit

.lr.ph397.prol:                                   ; preds = %.lr.ph397.preheader643
  %i.ez = add nsw i64 %.051396.ph, -1             ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !34 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %.051396.ph
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !34 ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.fb ; 2 uses
  %i.ff = fcmp reassoc nsz arcp contract afn ogt float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.ab, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol

bb.ab:                                            ; preds = %.lr.ph397.prol
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %.051396.ph
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !34 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %i.ez
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !34 ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fh, 2.000000e+00
  %i.fl = fadd reassoc nsz arcp contract afn float %i.fk, %i.fj
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fj, %i.fh
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, 3.000000e+00
  %i.fo = fsub reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fl, %i.fo
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fp, %i.fn
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, %i.fb
  %i.fs = fdiv reassoc nsz arcp contract afn float %i.fe, %i.fr
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol: ; preds = %bb.ab, %.lr.ph397.prol
  %.0.i110.prol = phi nsz float [ %i.fs, %bb.ab ], [ 0.000000e+00, %.lr.ph397.prol ]
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %.051396.ph
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store float %.0.i110.prol, ptr %i.fu, align 4, !tbaa !35
  %i.fv = add nuw i64 %.051396.ph, 1
  br label %.lr.ph397.prol.loopexit

.lr.ph397.prol.loopexit:                          ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol, %.lr.ph397.preheader643
  %.051396.unr = phi i64 [ %.051396.ph, %.lr.ph397.preheader643 ], [ %i.fv, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol ]
  %i.fw = icmp eq i64 %umax, %.neg
  br i1 %i.fw, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph397

_ZNSt6vectorIfSaIfEED2Ev.exit109:                 ; preds = %.lr.ph397.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1, %middle.block636, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit
  %i.fx = ptrtoint ptr %.sroa.26.4 to i64
  %i.fy = ptrtoint ptr %.sroa.0200.4 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.4, i64 noundef %i.fz) #19
  %i.ga = ptrtoint ptr %.sroa.26234.4 to i64
  %i.gb = ptrtoint ptr %.sroa.0220.4 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0220.4, i64 noundef %i.gc) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit155

bb.ac:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99, %bb.x
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph397:                                        ; preds = %.lr.ph397.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1
  %.051396 = phi i64 [ %i.hx, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1 ], [ %.051396.unr, %.lr.ph397.prol.loopexit ] ; 8 uses
  %i.gf = add i64 %.051396, -1                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !34 ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %.051396
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !34 ; 2 uses
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, %i.gh ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ogt float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.ae, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111

bb.ae:                                            ; preds = %.lr.ph397
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %.051396
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !34 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %i.gf
  %i.gp = load float, ptr %i.go, align 4, !tbaa !34 ; 2 uses
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gn, 2.000000e+00
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gp
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gp, %i.gn
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, 3.000000e+00
  %i.gu = fsub reassoc nsz arcp contract afn float %i.gj, %i.gh
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gr, %i.gu
  %i.gw = fdiv reassoc nsz arcp contract afn float %i.gv, %i.gt
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %i.gh
  %i.gy = fdiv reassoc nsz arcp contract afn float %i.gk, %i.gx
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111: ; preds = %.lr.ph397, %bb.ae
  %.0.i110 = phi nsz float [ %i.gy, %bb.ae ], [ 0.000000e+00, %.lr.ph397 ]
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %.051396
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store float %.0.i110, ptr %i.ha, align 4, !tbaa !35
  %i.hb = add nuw i64 %.051396, 1                 ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %.051396
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !34 ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0200.4, i64 %i.hb
  %i.hf = load float, ptr %i.he, align 4, !tbaa !34 ; 2 uses
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.hd ; 2 uses
  %i.hh = fcmp reassoc nsz arcp contract afn ogt float %i.hg, 0.000000e+00
  br i1 %i.hh, label %bb.af, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1

bb.af:                                            ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %i.hb
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !34 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0220.4, i64 %.051396
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !34 ; 2 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hj, 2.000000e+00
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.hl
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hl, %i.hj
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, 3.000000e+00
  %i.hq = fsub reassoc nsz arcp contract afn float %i.hf, %i.hd
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hn, %i.hq
  %i.hs = fdiv reassoc nsz arcp contract afn float %i.hr, %i.hp
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, %i.hd
  %i.hu = fdiv reassoc nsz arcp contract afn float %i.hg, %i.ht
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1: ; preds = %bb.af, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111
  %.0.i110.1 = phi nsz float [ %i.hu, %bb.af ], [ 0.000000e+00, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111 ]
  %i.hv = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.hb
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store float %.0.i110.1, ptr %i.hw, align 4, !tbaa !35
  %i.hx = add nuw i64 %.051396, 2                 ; 2 uses
  %exitcond446.not.1 = icmp eq i64 %i.g, %i.hx
  br i1 %exitcond446.not.1, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph397, !llvm.loop !259

bb.ag:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %.loopexit, %.loopexit.split-lp, %bb.ad, %bb.ac
  %.sroa.0200.0317 = phi ptr [ %.sroa.0200.0.lcssa, %bb.ad ], [ %.sroa.0200.0.lcssa, %bb.ac ], [ %.sroa.0200.0383, %.loopexit.split-lp ], [ %.sroa.0200.0383, %.loopexit ], [ %.sroa.0200.0383, %.loopexit283 ], [ %.sroa.0200.0383, %.loopexit.split-lp284 ] ; 3 uses
  %.sroa.26.0306 = phi ptr [ %.sroa.17.0.lcssa, %bb.ad ], [ %.sroa.26.0.lcssa, %bb.ac ], [ %.sroa.26.0385, %.loopexit.split-lp ], [ %.sroa.26.0385, %.loopexit ], [ %.sroa.26.0385, %.loopexit283 ], [ %.sroa.26.0385, %.loopexit.split-lp284 ]
  %.sroa.0220.2 = phi ptr [ %.sroa.0220.4, %bb.ad ], [ %.sroa.0220.0.lcssa, %bb.ac ], [ %.sroa.0220.0380, %.loopexit.split-lp ], [ %.sroa.0220.0380, %.loopexit ], [ %.sroa.0220.5, %.loopexit283 ], [ %.sroa.0220.5, %.loopexit.split-lp284 ] ; 2 uses
  %.sroa.26234.2 = phi ptr [ %.sroa.26234.4, %bb.ad ], [ %.sroa.17230.0.lcssa, %bb.ac ], [ %.sroa.26234.0382, %.loopexit.split-lp ], [ %.sroa.26234.0382, %.loopexit ], [ %.sroa.26234.5, %.loopexit283 ], [ %.sroa.26234.5, %.loopexit.split-lp284 ] ; 2 uses
  %.pn64.pn = phi { ptr, i32 } [ %i.ge, %bb.ad ], [ %i.gd, %bb.ac ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp286, %.loopexit.split-lp284 ] ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %.sroa.0200.0317, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit113, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hy = ptrtoint ptr %.sroa.26.0306 to i64
  %i.hz = ptrtoint ptr %.sroa.0200.0317 to i64
  %i.ia = sub i64 %i.hy, %i.hz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.0317, i64 noundef %i.ia) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

_ZNSt6vectorIfSaIfEED2Ev.exit113:                 ; preds = %.thread, %bb.ag, %bb.ah
  %.pn64.pn259 = phi { ptr, i32 } [ %i.at, %.thread ], [ %.pn64.pn, %bb.ag ], [ %.pn64.pn, %bb.ah ] ; 2 uses
  %.sroa.26234.2258 = phi ptr [ %.sroa.26234.1, %.thread ], [ %.sroa.26234.2, %bb.ag ], [ %.sroa.26234.2, %bb.ah ]
  %.sroa.0220.2257 = phi ptr [ %.sroa.0220.1, %.thread ], [ %.sroa.0220.2, %bb.ag ], [ %.sroa.0220.2, %bb.ah ] ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.sroa.0220.2257, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split

bb.ai:                                            ; preds = %bb.c
  %i.ib = add nsw i64 %i.g, -1                    ; 9 uses
  %i.ic = icmp ugt i64 %i.ib, 2305843009213693951
  br i1 %i.ic, label %bb.aj, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc120 unwind label %.thread269

.noexc120:                                        ; preds = %bb.aj
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116: ; preds = %bb.ai
  %.not = icmp ne i64 %i.ib, 0
  tail call void @llvm.assume(i1 %.not)
  %i.id = shl nuw nsw i64 %i.ib, 2                ; 2 uses
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 unwind label %.thread269 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ib ; 2 uses
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #20
          to label %.lr.ph.preheader unwind label %.thread269 ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ib
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149
  %i.ii = load float, ptr %.sroa.0.3, align 4, !tbaa !34
  %i.ij = load ptr, ptr %0, align 8, !tbaa !15    ; 8 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store float %i.ii, ptr %i.ik, align 4, !tbaa !35
  %.not554 = icmp eq i64 %i.ib, 1
  br i1 %.not554, label %._crit_edge379, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %._crit_edge
  %i.il = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.il, 8
  br i1 %min.iters.check, label %.lr.ph378.preheader666, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph378.preheader
  %scevgep = getelementptr i8, ptr %i.ij, i64 20  ; 2 uses
  %i.im = getelementptr i8, ptr %i.ij, i64 %i.f
  %scevgep599 = getelementptr i8, ptr %i.im, i64 -12 ; 2 uses
  %i.in = shl nuw nsw i64 %i.g, 2
  %i.io = add nsw i64 %i.in, -4                   ; 2 uses
  %scevgep600 = getelementptr i8, ptr %.sroa.0.3, i64 %i.io
  %scevgep601 = getelementptr i8, ptr %.sroa.0178.4, i64 %i.io
  %bound0 = icmp ult ptr %scevgep, %scevgep600
  %bound1 = icmp ult ptr %.sroa.0.3, %scevgep599
  %found.conflict = and i1 %bound0, %bound1
  %bound0602 = icmp ult ptr %scevgep, %scevgep601
  %bound1603 = icmp ult ptr %.sroa.0178.4, %scevgep599
  %found.conflict604 = and i1 %bound0602, %bound1603
  %conflict.rdx = or i1 %found.conflict, %found.conflict604
  br i1 %conflict.rdx, label %.lr.ph378.preheader666, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.il, -8                      ; 3 uses
  %i.ip = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.iq = or disjoint i64 %index, 1               ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ir, align 4, !tbaa !34, !alias.scope !271 ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.iq
  %wide.load605 = load <8 x float>, ptr %i.is, align 4, !tbaa !34, !alias.scope !271 ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn <8 x float> %wide.load605, %wide.load ; 2 uses
  %i.iu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.it, zeroinitializer ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %.sroa.0178.4, i64 %i.iq
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.iv, <8 x i1> %i.iu, <8 x float> poison), !tbaa !34, !alias.scope !272 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %.sroa.0178.4, i64 %index
  %wide.masked.load606 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.iw, <8 x i1> %i.iu, <8 x float> poison), !tbaa !34, !alias.scope !272 ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, splat (float 2.000000e+00)
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.ix, %wide.masked.load606
  %i.iz = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load606, %wide.masked.load
  %i.ja = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, splat (float 3.000000e+00)
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load605, %wide.load
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %i.jb
  %i.jd = fdiv reassoc nsz arcp contract afn <8 x float> %i.jc, %i.ja
  %i.je = fadd reassoc nsz arcp contract afn <8 x float> %i.jd, %wide.load
  %i.jf = fdiv reassoc nsz arcp contract afn <8 x float> %i.it, %i.je
  %predphi = select nsz <8 x i1> %i.iu, <8 x float> %i.jf, <8 x float> zeroinitializer
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.ij, <8 x i64> %vec.ind
  %wide.gep607 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi, <8 x ptr> align 4 %wide.gep607, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !273, !noalias !274
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.il, %n.vec
  br i1 %cmp.n, label %._crit_edge379, label %.lr.ph378.preheader666

.lr.ph378.preheader666:                           ; preds = %vector.memcheck, %.lr.ph378.preheader, %middle.block
  %.0376.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph378.preheader ], [ %i.ip, %middle.block ] ; 7 uses
  %i.jh = add nsw i64 %i.g, -2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph378.prol.loopexit, label %.lr.ph378.prol

.lr.ph378.prol:                                   ; preds = %.lr.ph378.preheader666
  %i.ji = add nsw i64 %.0376.ph, -1               ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !34 ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0376.ph
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !34 ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.jk ; 2 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ogt float %i.jn, 0.000000e+00
  br i1 %i.jo, label %bb.ak, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol

bb.ak:                                            ; preds = %.lr.ph378.prol
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %.0376.ph
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !34 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %i.ji
  %i.js = load float, ptr %i.jr, align 4, !tbaa !34 ; 2 uses
  %i.jt = fmul reassoc nsz arcp contract afn float %i.jq, 2.000000e+00
  %i.ju = fadd reassoc nsz arcp contract afn float %i.jt, %i.js
  %i.jv = fadd reassoc nsz arcp contract afn float %i.js, %i.jq
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, 3.000000e+00
  %i.jx = fsub reassoc nsz arcp contract afn float %i.jm, %i.jk
  %i.jy = fmul reassoc nsz arcp contract afn float %i.ju, %i.jx
  %i.jz = fdiv reassoc nsz arcp contract afn float %i.jy, %i.jw
  %i.ka = fadd reassoc nsz arcp contract afn float %i.jz, %i.jk
  %i.kb = fdiv reassoc nsz arcp contract afn float %i.jn, %i.ka
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol: ; preds = %bb.ak, %.lr.ph378.prol
  %.0.i150.prol = phi nsz float [ %i.kb, %bb.ak ], [ 0.000000e+00, %.lr.ph378.prol ]
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %.0376.ph
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store float %.0.i150.prol, ptr %i.kd, align 4, !tbaa !35
  %i.ke = add nuw nsw i64 %.0376.ph, 1
  br label %.lr.ph378.prol.loopexit

.lr.ph378.prol.loopexit:                          ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol, %.lr.ph378.preheader666
  %.0376.unr = phi i64 [ %.0376.ph, %.lr.ph378.preheader666 ], [ %i.ke, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol ]
  %i.kf = icmp eq i64 %i.jh, %.0376.ph
  br i1 %i.kf, label %._crit_edge379, label %.lr.ph378

.thread269:                                       ; preds = %bb.aj, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123
  %.sroa.0178.1 = phi ptr [ null, %bb.aj ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116 ], [ %i.ie, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 ]
  %.sroa.19.1 = phi ptr [ null, %bb.aj ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116 ], [ %i.if, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 ]
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149
  %.050372 = phi i64 [ %i.kh, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.21.0371 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ih, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.0370 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ig, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0369 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ig, %.lr.ph.preheader ] ; 8 uses
  %.sroa.19.0368 = phi ptr [ %.sroa.19.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.if, %.lr.ph.preheader ] ; 5 uses
  %.sroa.13.0367 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ie, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0178.0366 = phi ptr [ %.sroa.0178.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ie, %.lr.ph.preheader ] ; 7 uses
  %i.kh = add nuw i64 %.050372, 1                 ; 4 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.ki, i64 %i.kh
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !32
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.ki, i64 %.050372
  %i.km = load float, ptr %i.kl, align 4, !tbaa !32
  %i.kn = fsub reassoc nsz arcp contract afn float %i.kk, %i.km ; 2 uses
  %.not.i.i130 = icmp eq ptr %.sroa.13.0367, %.sroa.19.0368
  br i1 %.not.i.i130, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  store float %i.kn, ptr %.sroa.13.0367, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139

bb.am:                                            ; preds = %.lr.ph
  %i.ko = ptrtoint ptr %.sroa.19.0368 to i64
  %i.kp = ptrtoint ptr %.sroa.0178.0366 to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 6 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775804
  br i1 %i.kr, label %bb.an, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc137 unwind label %.loopexit.split-lp289

.noexc137:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131: ; preds = %bb.am
  %i.ks = ashr exact i64 %i.kq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i132 = tail call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i132, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = tail call i64 @llvm.umin.i64(i64 %i.kt, i64 2305843009213693951)
  %i.kw = select i1 %i.ku, i64 2305843009213693951, i64 %i.kv ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.kw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.kx = shl nuw nsw i64 %i.kw, 2
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #20
          to label %.noexc138 unwind label %.loopexit288 ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  store float %i.kn, ptr %i.kz, align 4, !tbaa !34
  %i.la = icmp sgt i64 %i.kq, 0
  br i1 %i.la, label %bb.ao, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134

bb.ao:                                            ; preds = %.noexc138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ky, ptr align 4 %.sroa.0178.0366, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134: ; preds = %bb.ao, %.noexc138
  %.not.i17.i.i.i135 = icmp eq ptr %.sroa.0178.0366, null
  br i1 %.not.i17.i.i.i135, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.0366, i64 noundef %i.kq) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136: ; preds = %bb.ap, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kw
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139

_ZNSt6vectorIfSaIfEE9push_backEOf.exit139:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136, %bb.al
  %i.lc = phi ptr [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %i.ki, %bb.al ] ; 2 uses
  %.sroa.0178.4 = phi ptr [ %i.ky, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.0178.0366, %bb.al ] ; 16 uses
  %.pn = phi ptr [ %i.kz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.13.0367, %bb.al ]
  %.sroa.19.4 = phi ptr [ %i.lb, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.19.0368, %bb.al ] ; 4 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %i.kh
  %i.le = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %.050372
  %i.lf = load <2 x float>, ptr %i.ld, align 4, !tbaa !34
  %i.lg = load <2 x float>, ptr %i.le, align 4, !tbaa !34
  %i.lh = fsub reassoc nsz arcp contract afn <2 x float> %i.lf, %i.lg ; 2 uses
  %shift640 = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop641 = fdiv reassoc nsz arcp contract afn <2 x float> %shift640, %i.lh
  %i.li = extractelement <2 x float> %foldExtExtBinop641, i64 0 ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.15.0370, %.sroa.21.0371
  br i1 %.not.i.i140, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139
  store float %i.li, ptr %.sroa.15.0370, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149

bb.ar:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139
  %i.lj = ptrtoint ptr %.sroa.21.0371 to i64
  %i.lk = ptrtoint ptr %.sroa.0.0369 to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 6 uses
  %i.lm = icmp eq i64 %i.ll, 9223372036854775804
  br i1 %i.lm, label %bb.as, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc147 unwind label %.loopexit.split-lp294

.noexc147:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141: ; preds = %bb.ar
  %i.ln = ashr exact i64 %i.ll, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i142 = tail call i64 @llvm.umax.i64(i64 %i.ln, i64 1)
  %i.lo = add nsw i64 %.sroa.speculated.i.i.i.i142, %i.ln ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %i.ln
  %i.lq = tail call i64 @llvm.umin.i64(i64 %i.lo, i64 2305843009213693951)
  %i.lr = select i1 %i.lp, i64 2305843009213693951, i64 %i.lq ; 3 uses
  %.not.i.i.i.i143 = icmp ne i64 %i.lr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i143)
  %i.ls = shl nuw nsw i64 %i.lr, 2
  %i.lt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #20
          to label %.noexc148 unwind label %.loopexit293 ; 4 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 %i.ll ; 2 uses
  store float %i.li, ptr %i.lu, align 4, !tbaa !34
  %i.lv = icmp sgt i64 %i.ll, 0
  br i1 %i.lv, label %bb.at, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144

bb.at:                                            ; preds = %.noexc148
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lt, ptr align 4 %.sroa.0.0369, i64 %i.ll, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144: ; preds = %bb.at, %.noexc148
  %.not.i17.i.i.i145 = icmp eq ptr %.sroa.0.0369, null
  br i1 %.not.i17.i.i.i145, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0369, i64 noundef %i.ll) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146: ; preds = %bb.au, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i144
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lr
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149

_ZNSt6vectorIfSaIfEE9push_backEOf.exit149:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146, %bb.aq
  %.sroa.0.3 = phi ptr [ %i.lt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146 ], [ %.sroa.0.0369, %bb.aq ] ; 15 uses
  %.pn279 = phi ptr [ %i.lu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146 ], [ %.sroa.15.0370, %bb.aq ]
  %.sroa.21.3 = phi ptr [ %i.lw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i146 ], [ %.sroa.21.0371, %bb.aq ] ; 2 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn279, i64 4
  %exitcond.not = icmp eq i64 %i.kh, %i.ib
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !265

.loopexit288:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131
  %lpad.loopexit290 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp289:                            ; preds = %bb.an
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit293:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i141
  %lpad.loopexit295 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp294:                            ; preds = %bb.as
  %lpad.loopexit.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge379:                                   ; preds = %.lr.ph378.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1, %middle.block, %._crit_edge
  %i.lx = icmp ugt i64 %i.f, 12
  br i1 %i.lx, label %._crit_edge379.thread, label %_ZNSt6vectorIfSaIfEED2Ev.exit153

.lr.ph378:                                        ; preds = %.lr.ph378.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1
  %.0376 = phi i64 [ %i.nq, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1 ], [ %.0376.unr, %.lr.ph378.prol.loopexit ] ; 8 uses
  %i.ly = add i64 %.0376, -1                      ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !34 ; 3 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0376
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !34 ; 2 uses
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, %i.ma ; 2 uses
  %i.me = fcmp reassoc nsz arcp contract afn ogt float %i.md, 0.000000e+00
  br i1 %i.me, label %bb.av, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151

bb.av:                                            ; preds = %.lr.ph378
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %.0376
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !34 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %i.ly
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !34 ; 2 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mg, 2.000000e+00
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mj, %i.mi
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mi, %i.mg
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, 3.000000e+00
  %i.mn = fsub reassoc nsz arcp contract afn float %i.mc, %i.ma
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mk, %i.mn
  %i.mp = fdiv reassoc nsz arcp contract afn float %i.mo, %i.mm
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, %i.ma
  %i.mr = fdiv reassoc nsz arcp contract afn float %i.md, %i.mq
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151: ; preds = %.lr.ph378, %bb.av
  %.0.i150 = phi nsz float [ %i.mr, %bb.av ], [ 0.000000e+00, %.lr.ph378 ]
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %.0376
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store float %.0.i150, ptr %i.mt, align 4, !tbaa !35
  %i.mu = add nuw i64 %.0376, 1                   ; 3 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0376
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !34 ; 3 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.mu
  %i.my = load float, ptr %i.mx, align 4, !tbaa !34 ; 2 uses
  %i.mz = fmul reassoc nsz arcp contract afn float %i.my, %i.mw ; 2 uses
  %i.na = fcmp reassoc nsz arcp contract afn ogt float %i.mz, 0.000000e+00
  br i1 %i.na, label %bb.aw, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1

bb.aw:                                            ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %i.mu
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !34 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0178.4, i64 %.0376
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !34 ; 2 uses
  %i.nf = fmul reassoc nsz arcp contract afn float %i.nc, 2.000000e+00
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, %i.ne
  %i.nh = fadd reassoc nsz arcp contract afn float %i.ne, %i.nc
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, 3.000000e+00
  %i.nj = fsub reassoc nsz arcp contract afn float %i.my, %i.mw
  %i.nk = fmul reassoc nsz arcp contract afn float %i.ng, %i.nj
  %i.nl = fdiv reassoc nsz arcp contract afn float %i.nk, %i.ni
  %i.nm = fadd reassoc nsz arcp contract afn float %i.nl, %i.mw
  %i.nn = fdiv reassoc nsz arcp contract afn float %i.mz, %i.nm
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.1: ; preds = %bb.aw, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151
  %.0.i150.1 = phi nsz float [ %i.nn, %bb.aw ], [ 0.000000e+00, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151 ]
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.mu
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store float %.0.i150.1, ptr %i.np, align 4, !tbaa !35
  %i.nq = add nuw i64 %.0376, 2                   ; 2 uses
  %exitcond444.not.1 = icmp eq i64 %i.nq, %i.ib
  br i1 %exitcond444.not.1, label %._crit_edge379, label %.lr.ph378, !llvm.loop !266

._crit_edge379.thread:                            ; preds = %._crit_edge379
  %i.nr = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.g
  %i.ns = getelementptr i8, ptr %i.nr, i64 -8
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !34
  %i.nu = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.ib
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store float %i.nt, ptr %i.nv, align 4, !tbaa !35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit153

_ZNSt6vectorIfSaIfEED2Ev.exit153:                 ; preds = %._crit_edge379.thread, %._crit_edge379
  %i.nw = ptrtoint ptr %.sroa.21.3 to i64
  %i.nx = ptrtoint ptr %.sroa.0.3 to i64
  %i.ny = sub i64 %i.nw, %i.nx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.ny) #19
  %.not.i.i.i154 = icmp eq ptr %.sroa.0178.4, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorIfSaIfEED2Ev.exit155, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit153
  %i.nz = ptrtoint ptr %.sroa.19.4 to i64
  %i.oa = ptrtoint ptr %.sroa.0178.4 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.4, i64 noundef %i.ob) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit155

bb.ay:                                            ; preds = %.loopexit293, %.loopexit.split-lp294, %.loopexit288, %.loopexit.split-lp289
  %.sroa.0178.2 = phi ptr [ %.sroa.0178.0366, %.loopexit.split-lp289 ], [ %.sroa.0178.0366, %.loopexit288 ], [ %.sroa.0178.4, %.loopexit293 ], [ %.sroa.0178.4, %.loopexit.split-lp294 ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.0368, %.loopexit.split-lp289 ], [ %.sroa.19.0368, %.loopexit288 ], [ %.sroa.19.4, %.loopexit293 ], [ %.sroa.19.4, %.loopexit.split-lp294 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp291, %.loopexit.split-lp289 ], [ %lpad.loopexit290, %.loopexit288 ], [ %lpad.loopexit295, %.loopexit293 ], [ %lpad.loopexit.split-lp296, %.loopexit.split-lp294 ] ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.sroa.0.0369, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorIfSaIfEED2Ev.exit157, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.oc = ptrtoint ptr %.sroa.21.0371 to i64
  %i.od = ptrtoint ptr %.sroa.0.0369 to i64
  %i.oe = sub i64 %i.oc, %i.od
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0369, i64 noundef %i.oe) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit157

_ZNSt6vectorIfSaIfEED2Ev.exit157:                 ; preds = %.thread269, %bb.ay, %bb.az
  %.pn.pn278 = phi { ptr, i32 } [ %i.kg, %.thread269 ], [ %.pn.pn, %bb.ay ], [ %.pn.pn, %bb.az ] ; 2 uses
  %.sroa.19.2277 = phi ptr [ %.sroa.19.1, %.thread269 ], [ %.sroa.19.2, %bb.ay ], [ %.sroa.19.2, %bb.az ]
  %.sroa.0178.2276 = phi ptr [ %.sroa.0178.1, %.thread269 ], [ %.sroa.0178.2, %bb.ay ], [ %.sroa.0178.2, %bb.az ] ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %.sroa.0178.2276, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split

_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split:      ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit157, %_ZNSt6vectorIfSaIfEED2Ev.exit113
  %.sroa.19.2277.sink = phi ptr [ %.sroa.26234.2258, %_ZNSt6vectorIfSaIfEED2Ev.exit113 ], [ %.sroa.19.2277, %_ZNSt6vectorIfSaIfEED2Ev.exit157 ]
  %.sroa.0178.2276.sink553 = phi ptr [ %.sroa.0220.2257, %_ZNSt6vectorIfSaIfEED2Ev.exit113 ], [ %.sroa.0178.2276, %_ZNSt6vectorIfSaIfEED2Ev.exit157 ] ; 2 uses
  %.pn64.pn.pn.ph = phi { ptr, i32 } [ %.pn64.pn259, %_ZNSt6vectorIfSaIfEED2Ev.exit113 ], [ %.pn.pn278, %_ZNSt6vectorIfSaIfEED2Ev.exit157 ]
  %i.of = ptrtoint ptr %.sroa.19.2277.sink to i64
  %i.og = ptrtoint ptr %.sroa.0178.2276.sink553 to i64
  %i.oh = sub i64 %i.of, %i.og
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.2276.sink553, i64 noundef %i.oh) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

_ZNSt6vectorIfSaIfEED2Ev.exit115:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split, %_ZNSt6vectorIfSaIfEED2Ev.exit157, %_ZNSt6vectorIfSaIfEED2Ev.exit113
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn.pn278, %_ZNSt6vectorIfSaIfEED2Ev.exit157 ], [ %.pn64.pn259, %_ZNSt6vectorIfSaIfEED2Ev.exit113 ], [ %.pn64.pn.pn.ph, %_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split ]
  resume { ptr, i32 } %.pn64.pn.pn

_ZNSt6vectorIfSaIfEED2Ev.exit155:                 ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEED2Ev.exit153, %_ZNSt6vectorIfSaIfEED2Ev.exit109, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold noreturn }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !33}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN8interpol10base_pointIfEE", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN8interpol10base_pointIfEESaIS2_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 16}
!17 = !{!14, !13, i64 8}
!18 = !{!"float", !8, i64 0}
!19 = !{!"_ZTSN8interpol10base_pointIfEE", !18, i64 0, !18, i64 4, !18, i64 8}
!20 = !{!19, !18, i64 4}
!21 = !{!"_ZTSNSt12_Vector_baseIN8interpol10base_pointIfEESaIS2_EE12_Vector_implE", !14, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIN8interpol10base_pointIfEESaIS2_EE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIN8interpol10base_pointIfEESaIS2_EE", !22, i64 0}
!24 = !{!"_ZTSN8interpol6limitsIfEE", !18, i64 0, !18, i64 4}
!25 = !{!"bool", !8, i64 0}
!26 = !{!"_ZTSN8interpol11spline_baseIfEE", !23, i64 0, !24, i64 24, !24, i64 32, !25, i64 40}
!27 = !{!26, !25, i64 40}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!26, !18, i64 28}
!31 = !{!26, !18, i64 24}
!32 = !{!19, !18, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!18, !18, i64 0}
!35 = !{!19, !18, i64 8}
!36 = !{!24, !18, i64 0}
!37 = !{!24, !18, i64 4}
!38 = !{!"_ZTS9CurveData", !9, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !8, i64 20, !8, i64 24}
!39 = !{!38, !18, i64 8}
!40 = !{!38, !18, i64 4}
!41 = !{!38, !18, i64 16}
!42 = !{!38, !18, i64 12}
!43 = !{!38, !8, i64 20}
!44 = !{!"_ZTS16CurveAnchorPoint", !18, i64 0, !18, i64 4}
!45 = !{!44, !18, i64 0}
!46 = !{!44, !18, i64 4}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 4, i32 12}
!50 = !{!"p1 short", !12, i64 0}
!51 = !{!"_ZTS11CurveSample", !9, i64 0, !9, i64 4, !50, i64 8}
!52 = !{!51, !9, i64 0}
!53 = !{!"_ZTSN8interpol5pointIfEE", !18, i64 0, !18, i64 4}
!54 = !{!53, !18, i64 0}
!55 = !{!53, !18, i64 4}
!56 = !{!51, !9, i64 4}
!57 = !{!38, !9, i64 0}
!58 = !{!51, !50, i64 8}
!59 = !{!"short", !8, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!13, !13, i64 0}
!62 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34}
!63 = !{!"long", !8, i64 0}
!64 = !{!"p1 float", !12, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIfSaIfEE", !67, i64 0}
!69 = !{!"_ZTSN8interpol19smooth_cubic_splineIfE6matrixE", !63, i64 0, !25, i64 8, !68, i64 16}
!70 = !{!69, !63, i64 0}
!71 = !{!69, !25, i64 8}
!72 = !{!65, !64, i64 0}
!73 = !{!65, !64, i64 8}
!74 = !{!"llvm.loop.unroll.disable"}
end_hunk_4
