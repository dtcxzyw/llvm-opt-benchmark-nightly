Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/splines?download=true
inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@llvm.round.f32
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol11spline_baseIfEC2IP16CurveAnchorPointEET_S5_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store <4 x float> <float -inf, float +inf, float -inf, float +inf>, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !20
  %.not23 = icmp eq ptr %1, %2
  br i1 %.not23, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !95    ; 4 uses
  %i.e = icmp eq ptr %.pre, %i.ac
  br i1 %i.e, label %._crit_edge.thread, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %.024 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.i = load <2 x float>, ptr %.024, align 4, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x float> %i.i, ptr %i.h, align 4, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !16
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !96, !alias.scope !97
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc12 ], [ %i.x, %.lr.ph.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.m) #19
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.u, ptr %0, align 8, !tbaa !11
  store ptr %i.y, ptr %i.c, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s ; 2 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !15
  br label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.u, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.f, %bb.c ]
  %i.ab = phi ptr [ %i.z, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.c ]
  %i.ac = phi ptr [ %i.y, %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !102

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8interpol10base_pointIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #21
          to label %bb.m unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ae) #18
  br label %bb.k

bb.i:                                             ; preds = %.noexc14, %bb.j, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %.pre to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = xor i64 %i.am, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_T1_(ptr %.pre, ptr nonnull %i.ac, i64 noundef %i.an)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.j
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SH_EUlRKS4_SJ_E_EEEvSH_SH_T0_(ptr %.pre, ptr nonnull %i.ac)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SF_EUlRKS4_SH_E_EvSF_SF_T0_.exit unwind label %bb.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEEZNS2_11spline_baseIfEC1IP16CurveAnchorPointEET_SF_EUlRKS4_SH_E_EvSF_SF_T0_.exit: ; preds = %.noexc14
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %0, align 8, !tbaa !95
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31 ; 4 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !95
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.au = load float, ptr %i.at, align 4, !tbaa !31 ; 4 uses
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, %i.ar
  %.sroa.speculated5.i = select i1 %i.av, float %i.au, float %i.ar
  %i.aw = fcmp reassoc nsz arcp contract afn olt float %i.ar, %i.au
  %.sroa.speculated.i = select i1 %i.aw, float %i.au, float %i.ar
  store float %.sroa.speculated5.i, ptr %i.a, align 8
  store float %.sroa.speculated.i, ptr %i.ao, align 4
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ag, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ax = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8interpol10base_pointIfEESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #19
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 41 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit177

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !20, !range !27, !noundef !28 ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = add nsw i64 %i.g, -1                     ; 24 uses
  %i.n = select i1 %i.l, i64 %i.g, i64 %i.m       ; 6 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.thread248

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit100, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94 unwind label %.thread248 ; 3 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 unwind label %.thread248 ; 2 uses

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.n
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit100

_ZNSt6vectorIfSaIfEE7reserveEm.exit100:           ; preds = %bb.e, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97
  %.sroa.43.4378 = phi ptr [ %i.r, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ null, %bb.e ] ; 2 uses
  %.sroa.35.1377 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ null, %bb.e ] ; 4 uses
  %.sroa.0191.3 = phi ptr [ %i.t, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ null, %bb.e ] ; 4 uses
  %.sroa.27.3 = phi ptr [ %i.u, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i97 ], [ null, %bb.e ] ; 2 uses
  %.not323 = icmp eq i64 %i.m, 0                  ; 3 uses
  br i1 %.not323, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112
  %.pre353 = load i8, ptr %i.j, align 8, !tbaa !20, !range !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100
  %i.v = phi i8 [ %i.k, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.pre353, %._crit_edge.loopexit ]
  %.sroa.35.0.lcssa = phi ptr [ %.sroa.35.1377, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.35.2, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.43.0.lcssa = phi ptr [ %.sroa.43.4378, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.43.5, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0191.0.lcssa = phi ptr [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.0191.4, %._crit_edge.loopexit ] ; 8 uses
  %.sroa.19.0.lcssa = phi ptr [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.19.2, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.27.0.lcssa = phi ptr [ %.sroa.27.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.27.4, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.0209.0.lcssa = phi ptr [ %.sroa.35.1377, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ], [ %.sroa.0209.5, %._crit_edge.loopexit ] ; 7 uses
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.p, label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132

.thread248:                                       ; preds = %bb.d, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94
  %.sroa.43.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.r, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94 ]
  %.sroa.0209.1 = phi ptr [ null, %bb.d ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.q, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i94 ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit181

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit100, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112
  %.078307 = phi i64 [ %i.y, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 3 uses
  %.sroa.0209.0306 = phi ptr [ %.sroa.0209.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.35.1377, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 7 uses
  %.sroa.27.0305 = phi ptr [ %.sroa.27.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.27.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 7 uses
  %.sroa.19.0304 = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 3 uses
  %.sroa.0191.0303 = phi ptr [ %.sroa.0191.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.0191.3, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 9 uses
  %.sroa.43.0302 = phi ptr [ %.sroa.43.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.43.4378, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 5 uses
  %.sroa.35.0301 = phi ptr [ %.sroa.35.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112 ], [ %.sroa.35.1377, %_ZNSt6vectorIfSaIfEE7reserveEm.exit100 ] ; 3 uses
  %i.y = add nuw i64 %.078307, 1                  ; 4 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.y
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %.078307
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ab, %i.ad ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.35.0301, %.sroa.43.0302
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store float %i.ae, ptr %.sroa.35.0301, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.g:                                             ; preds = %.lr.ph
  %i.af = ptrtoint ptr %.sroa.43.0302 to i64
  %i.ag = ptrtoint ptr %.sroa.0209.0306 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc101 unwind label %.loopexit.split-lp

.noexc101:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
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
          to label %.noexc102 unwind label %.loopexit ; 4 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store float %i.ae, ptr %i.aq, align 4, !tbaa !34
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc102
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %.sroa.0209.0306, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc102
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0209.0306, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0306, i64 noundef %i.ah) #19
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.j ], [ %i.z, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.f
  %i.at = phi ptr [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.35.0301, %bb.f ]
  %.sroa.43.5 = phi ptr [ %i.as, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.43.0302, %bb.f ] ; 4 uses
  %.sroa.0209.5 = phi ptr [ %i.ap, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0209.0306, %bb.f ] ; 4 uses
  %.sroa.35.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.y
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %.078307
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !17
  %i.ba = fsub reassoc nsz arcp contract afn float %i.aw, %i.az ; 2 uses
  %.not.i.i103 = icmp eq ptr %.sroa.19.0304, %.sroa.27.0305
  br i1 %.not.i.i103, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.ba, ptr %.sroa.19.0304, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit112

bb.l:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.bb = ptrtoint ptr %.sroa.27.0305 to i64
  %i.bc = ptrtoint ptr %.sroa.0191.0303 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.m, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i104

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc110 unwind label %.loopexit.split-lp263

.noexc110:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i104: ; preds = %bb.l
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i105, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i.i106 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i106)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc111 unwind label %.loopexit262 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i104
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store float %i.ba, ptr %i.bm, align 4, !tbaa !34
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i107

bb.n:                                             ; preds = %.noexc111
end_hunk_0
begin_hunk_1_@_ZN8interpol19smooth_cubic_splineIfE4initEv:bb.a
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117
  %.pre354 = phi ptr [ %.pre354.pre, %bb.u ], [ %i.bu, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i117 ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ci
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122

_ZNSt6vectorIfSaIfEE9push_backEOf.exit122:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119, %bb.q
  %i.co = phi ptr [ %.pre354, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119 ], [ %i.bu, %bb.q ] ; 2 uses
  %.sroa.43.6 = phi ptr [ %i.cn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119 ], [ %.sroa.43.0.lcssa, %bb.q ] ; 3 uses
  %.sroa.0209.6 = phi ptr [ %i.ck, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i119 ], [ %.sroa.0209.0.lcssa, %bb.q ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !17
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !17
  %i.cu = fsub reassoc nsz arcp contract afn float %i.cq, %i.ct ; 2 uses
  %.not.i.i123 = icmp eq ptr %.sroa.19.0.lcssa, %.sroa.27.0.lcssa
  br i1 %.not.i.i123, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122
  store float %i.cu, ptr %.sroa.19.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit122
  %i.cv = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.cw = ptrtoint ptr %.sroa.0191.0.lcssa to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775804
  br i1 %i.cy, label %bb.x, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc130 unwind label %bb.ab

.noexc130:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124: ; preds = %bb.w
  %i.cz = ashr exact i64 %i.cx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i125, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 2305843009213693951)
  %i.dd = select i1 %i.db, i64 2305843009213693951, i64 %i.dc ; 3 uses
  %.not.i.i.i.i126 = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i126)
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #20
          to label %.noexc131 unwind label %bb.ab ; 4 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx
  store float %i.cu, ptr %i.dg, align 4, !tbaa !34
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.y, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127

bb.y:                                             ; preds = %.noexc131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %.sroa.0191.0.lcssa, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127: ; preds = %bb.y, %.noexc131
  %.not.i17.i.i.i128 = icmp eq ptr %.sroa.0191.0.lcssa, null
  br i1 %.not.i17.i.i.i128, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0.lcssa, i64 noundef %i.cx) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129: ; preds = %bb.z, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i127
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132

bb.aa:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i114, %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ab:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i124, %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt6vectorIfSaIfEE9push_backEOf.exit132:        ; preds = %bb.v, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129, %._crit_edge
  %.sroa.43.2 = phi ptr [ %.sroa.43.0.lcssa, %._crit_edge ], [ %.sroa.43.6, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129 ], [ %.sroa.43.6, %bb.v ] ; 2 uses
  %.sroa.0191.1 = phi ptr [ %.sroa.0191.0.lcssa, %._crit_edge ], [ %i.df, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129 ], [ %.sroa.0191.0.lcssa, %bb.v ] ; 24 uses
  %.sroa.27.1 = phi ptr [ %.sroa.27.0.lcssa, %._crit_edge ], [ %i.di, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129 ], [ %.sroa.27.0.lcssa, %bb.v ] ; 2 uses
  %.sroa.0209.2 = phi ptr [ %.sroa.0209.0.lcssa, %._crit_edge ], [ %.sroa.0209.6, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i129 ], [ %.sroa.0209.6, %bb.v ] ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.dl = load i8, ptr %i.j, align 8, !tbaa !20, !range !27, !noundef !28 ; 2 uses
  %i.dm = trunc nuw i8 %i.dl to i1                ; 3 uses
  %i.dn = xor i8 %i.dl, 1
  store i64 %i.g, ptr %1, align 8, !tbaa !104
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.dn, ptr %i.do, align 8, !tbaa !112
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.v.i = select i1 %i.dm, i64 %i.g, i64 3
  %i.dq = mul i64 %.v.i, %i.g                     ; 4 uses
  %i.dr = icmp ugt i64 %i.dq, 2305843009213693951
  br i1 %i.dr, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc133 unwind label %bb.ag

.noexc133:                                        ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %.noexc8.i

.noexc8.i:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ds = shl nuw nsw i64 %i.dq, 2                ; 3 uses
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #20
          to label %.noexc134 unwind label %bb.ag ; 5 uses

.noexc134:                                        ; preds = %.noexc8.i
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !113
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dt, i8 0, i64 %i.ds, i1 false), !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc134, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.dx = phi ptr [ %i.dt, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 26 uses
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.noexc134 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.dy, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.dz = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.dz, label %bb.ad, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc136 unwind label %bb.ah

.noexc136:                                        ; preds = %bb.ad
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ea, align 8
  %.not.i.i.i.i135 = icmp eq ptr %i.b, %i.c       ; 3 uses
  br i1 %.not.i.i.i.i135, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.ae

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.af

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.eb = shl nuw nsw i64 %i.g, 2
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #20
          to label %.noexc137 unwind label %bb.ah ; 6 uses

.noexc137:                                        ; preds = %bb.ae
  store ptr %i.ec, ptr %2, align 8, !tbaa !113
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.g
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !114
  store float 0.000000e+00, ptr %i.ec, align 4, !tbaa !34
  %i.ef = getelementptr i8, ptr %i.ec, i64 4      ; 3 uses
  br i1 %.not323, label %.thread, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.thread:                                          ; preds = %.noexc137
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !115
  br label %._crit_edge316

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc137
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.af

bb.af:                                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %i.ei = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.ec, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 12 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.eh, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ej, align 8, !tbaa !115
  %i.ek = icmp ugt i64 %i.m, 1
  br i1 %i.ek, label %.lr.ph315, label %._crit_edge316

.lr.ph315:                                        ; preds = %bb.af
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.dx, i64 %.idx.i ; 4 uses
  %invariant.gep317 = getelementptr [4 x i8], ptr %i.dx, i64 %i.g ; 4 uses
  br i1 %i.dm, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader: ; preds = %.lr.ph315
  %i.el = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.el, 24
  br i1 %min.iters.check, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader
  %i.em = getelementptr i8, ptr %i.dx, i64 %.idx.i
  %scevgep = getelementptr i8, ptr %i.em, i64 4   ; 5 uses
  %i.en = getelementptr i8, ptr %i.dx, i64 %i.f
  %scevgep431 = getelementptr i8, ptr %i.en, i64 -4 ; 5 uses
  %i.eo = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dx, i64 %i.eo
  %scevgep432 = getelementptr i8, ptr %i.ep, i64 4 ; 5 uses
  %i.eq = getelementptr i8, ptr %i.dx, i64 %.idx.i
  %scevgep433 = getelementptr i8, ptr %i.eq, i64 -4 ; 5 uses
  %scevgep434 = getelementptr i8, ptr %i.dx, i64 4 ; 5 uses
  %i.er = add nsw i64 %i.eo, -4                   ; 4 uses
  %scevgep435 = getelementptr i8, ptr %i.dx, i64 %i.er ; 5 uses
  %scevgep436 = getelementptr i8, ptr %i.ei, i64 4 ; 5 uses
  %scevgep437 = getelementptr i8, ptr %i.ei, i64 %i.er ; 5 uses
  %scevgep438 = getelementptr i8, ptr %.sroa.0209.2, i64 %i.er ; 4 uses
  %scevgep439 = getelementptr i8, ptr %.sroa.0191.1, i64 %i.er ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep433
  %bound1 = icmp ult ptr %scevgep432, %scevgep431
  %found.conflict = and i1 %bound0, %bound1
  %bound0440 = icmp ult ptr %scevgep, %scevgep435
  %bound1441 = icmp ult ptr %scevgep434, %scevgep431
  %found.conflict442 = and i1 %bound0440, %bound1441
  %conflict.rdx = or i1 %found.conflict, %found.conflict442
  %bound0443 = icmp ult ptr %scevgep, %scevgep437
  %bound1444 = icmp ult ptr %scevgep436, %scevgep431
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx, %found.conflict445
  %bound0447 = icmp ult ptr %scevgep, %scevgep438
  %bound1448 = icmp ult ptr %.sroa.0209.2, %scevgep431
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound0451 = icmp ult ptr %scevgep, %scevgep439
  %bound1452 = icmp ult ptr %.sroa.0191.1, %scevgep431
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %scevgep432, %scevgep435
  %bound1456 = icmp ult ptr %scevgep434, %scevgep433
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %scevgep432, %scevgep437
  %bound1460 = icmp ult ptr %scevgep436, %scevgep433
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  %bound0463 = icmp ult ptr %scevgep432, %scevgep438
  %bound1464 = icmp ult ptr %.sroa.0209.2, %scevgep433
  %found.conflict465 = and i1 %bound0463, %bound1464
  %conflict.rdx466 = or i1 %conflict.rdx462, %found.conflict465
  %bound0467 = icmp ult ptr %scevgep432, %scevgep439
  %bound1468 = icmp ult ptr %.sroa.0191.1, %scevgep433
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %conflict.rdx466, %found.conflict469
  %bound0471 = icmp ult ptr %scevgep434, %scevgep437
  %bound1472 = icmp ult ptr %scevgep436, %scevgep435
  %found.conflict473 = and i1 %bound0471, %bound1472
  %conflict.rdx474 = or i1 %conflict.rdx470, %found.conflict473
  %bound0475 = icmp ult ptr %scevgep434, %scevgep438
  %bound1476 = icmp ult ptr %.sroa.0209.2, %scevgep435
  %found.conflict477 = and i1 %bound0475, %bound1476
  %conflict.rdx478 = or i1 %conflict.rdx474, %found.conflict477
  %bound0479 = icmp ult ptr %scevgep434, %scevgep439
  %bound1480 = icmp ult ptr %.sroa.0191.1, %scevgep435
  %found.conflict481 = and i1 %bound0479, %bound1480
  %conflict.rdx482 = or i1 %conflict.rdx478, %found.conflict481
  %bound0483 = icmp ult ptr %scevgep436, %scevgep438
  %bound1484 = icmp ult ptr %.sroa.0209.2, %scevgep437
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx486 = or i1 %conflict.rdx482, %found.conflict485
  %bound0487 = icmp ult ptr %scevgep436, %scevgep439
  %bound1488 = icmp ult ptr %.sroa.0191.1, %scevgep437
  %found.conflict489 = and i1 %bound0487, %bound1488
  %conflict.rdx490 = or i1 %conflict.rdx486, %found.conflict489
  br i1 %conflict.rdx490, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.el, -8                      ; 3 uses
  %i.es = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.et = or disjoint i64 %index, 1               ; 6 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %index ; 2 uses
  %wide.load = load <8 x float>, ptr %i.eu, align 4, !tbaa !34, !alias.scope !116 ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float f0x3E2AAAAB)
  %i.ew = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.et
  store <8 x float> %i.ev, ptr %i.ew, align 4, !tbaa !34, !alias.scope !119, !noalias !121
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %i.et ; 2 uses
  %wide.load492 = load <8 x float>, ptr %i.ex, align 4, !tbaa !34, !alias.scope !116 ; 2 uses
  %i.ey = fadd reassoc nsz arcp contract afn <8 x float> %wide.load492, %wide.load
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %i.ey, splat (float f0x3EAAAAAB)
  %i.fa = getelementptr [4 x i8], ptr %invariant.gep317, i64 %i.et
  store <8 x float> %i.ez, ptr %i.fa, align 4, !tbaa !34, !alias.scope !126, !noalias !127
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.et
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load492, splat (float f0x3E2AAAAB)
  store <8 x float> %i.fc, ptr %i.fb, align 4, !tbaa !34, !alias.scope !128, !noalias !129
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.et
  %wide.load494 = load <8 x float>, ptr %i.fd, align 4, !tbaa !34, !alias.scope !130
  %wide.load495 = load <8 x float>, ptr %i.ex, align 4, !tbaa !34, !alias.scope !116
  %i.fe = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load494, %wide.load495
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %index
  %wide.load496 = load <8 x float>, ptr %i.ff, align 4, !tbaa !34, !alias.scope !130
  %wide.load497 = load <8 x float>, ptr %i.eu, align 4, !tbaa !34, !alias.scope !116
  %i.fg = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load496, %wide.load497
  %i.fh = fsub reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.et
  store <8 x float> %i.fh, ptr %i.fi, align 4, !tbaa !34, !alias.scope !131, !noalias !132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.el, %n.vec
  br i1 %cmp.n, label %._crit_edge316.thread380, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576: ; preds = %vector.memcheck, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader, %middle.block
  %.077313.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader ], [ %i.es, %middle.block ] ; 9 uses
  %i.fk = add nsw i64 %i.g, -2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol.loopexit, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576
  %i.fl = add nsw i64 %.077313.ph, -1             ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %i.fl ; 3 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !34
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, f0x3E2AAAAB
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %.077313.ph
  store float %i.fo, ptr %gep.prol, align 4, !tbaa !34
  %i.fp = load float, ptr %i.fm, align 4, !tbaa !34
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %.077313.ph ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !34
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.fp
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, f0x3EAAAAAB
  %gep318.prol = getelementptr [4 x i8], ptr %invariant.gep317, i64 %.077313.ph
  store float %i.ft, ptr %gep318.prol, align 4, !tbaa !34
  %i.fu = add nuw nsw i64 %.077313.ph, 1
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.077313.ph
  %.in.prol = load float, ptr %i.fq, align 4, !tbaa !34
  %i.fw = fmul reassoc nsz arcp contract afn float %.in.prol, f0x3E2AAAAB
  store float %i.fw, ptr %i.fv, align 4, !tbaa !34
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.fl
  %i.fy = load <2 x float>, ptr %i.fx, align 4, !tbaa !34
  %i.fz = load <2 x float>, ptr %i.fm, align 4, !tbaa !34
  %i.ga = fdiv reassoc nsz arcp contract afn <2 x float> %i.fy, %i.fz ; 2 uses
  %shift570.prol = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop571.prol = fsub reassoc nsz arcp contract afn <2 x float> %shift570.prol, %i.ga
  %i.gb = extractelement <2 x float> %foldExtExtBinop571.prol, i64 0
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.077313.ph
  store float %i.gb, ptr %i.gc, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol.loopexit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol.loopexit: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576
  %.077313.unr = phi i64 [ %.077313.ph, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.preheader576 ], [ %i.fu, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol ]
  %i.gd = icmp eq i64 %i.fk, %.077313.ph
  br i1 %i.gd, label %._crit_edge316.thread380, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us: ; preds = %.lr.ph315, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us
  %.077313.us = phi i64 [ %i.gs, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us ], [ 1, %.lr.ph315 ] ; 6 uses
  %i.ge = add i64 %.077313.us, -1                 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %i.ge ; 3 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !34
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, f0x3E2AAAAB
  %i.gi = mul i64 %i.ge, %i.g
  %i.gj = getelementptr [4 x i8], ptr %i.dx, i64 %.077313.us ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %i.gi
  store float %i.gh, ptr %i.gk, align 4, !tbaa !34
  %i.gl = load float, ptr %i.gf, align 4, !tbaa !34
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %.077313.us ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !34
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gl
  %i.gp = fmul reassoc nsz arcp contract afn float %i.go, f0x3EAAAAAB
  %i.gq = mul i64 %.077313.us, %i.g
  %i.gr = getelementptr [4 x i8], ptr %i.gj, i64 %i.gq
  store float %i.gp, ptr %i.gr, align 4, !tbaa !34
  %i.gs = add nuw i64 %.077313.us, 1              ; 3 uses
  %i.gt = mul i64 %i.gs, %i.g
  %i.gu = getelementptr [4 x i8], ptr %i.gj, i64 %i.gt
  %.in.us = load float, ptr %i.gm, align 4, !tbaa !34
  %i.gv = fmul reassoc nsz arcp contract afn float %.in.us, f0x3E2AAAAB
  store float %i.gv, ptr %i.gu, align 4, !tbaa !34
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.ge
  %i.gx = load <2 x float>, ptr %i.gw, align 4, !tbaa !34
  %i.gy = load <2 x float>, ptr %i.gf, align 4, !tbaa !34
  %i.gz = fdiv reassoc nsz arcp contract afn <2 x float> %i.gx, %i.gy ; 2 uses
  %shift = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %shift, %i.gz
  %i.ha = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.077313.us
  store float %i.ha, ptr %i.hb, align 4, !tbaa !34
  %exitcond351.not = icmp eq i64 %i.gs, %i.m
  br i1 %exitcond351.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.us, !llvm.loop !134

._crit_edge316:                                   ; preds = %.thread, %bb.af
  %i.hc = phi ptr [ %i.ec, %.thread ], [ %i.ei, %bb.af ] ; 2 uses
  br i1 %i.dm, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148, label %._crit_edge316.thread380

bb.ag:                                            ; preds = %.noexc8.i, %.noexc.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit179

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  %i.he = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN8interpol19smooth_cubic_splineIfE4initEv:bb.a
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, f0x3E2AAAAB ; 2 uses
  store float %i.kd, ptr %i.jb, align 4, !tbaa !34
  %i.ke = getelementptr [4 x i8], ptr %i.dx, i64 %i.ja
  store float %i.kd, ptr %i.ke, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader: ; preds = %.thread246, %.thread245
  %i.kf = add nsw i64 %i.g, -2
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i

bb.ai:                                            ; preds = %.loopexit.i
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %2, align 8, !tbaa !113   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !114
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

._crit_edge316.thread380:                         ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol.loopexit, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143, %middle.block, %._crit_edge316
  %i.kn = phi ptr [ %i.hc, %._crit_edge316 ], [ %i.ei, %middle.block ], [ %i.ei, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143 ], [ %i.ei, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit143.prol.loopexit ] ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %i.dx, i64 %i.g ; 3 uses
  store float 1.000000e+00, ptr %i.ko, align 4, !tbaa !34
  %i.kp = getelementptr [4 x i8], ptr %i.dx, i64 %i.m
  %i.kq = getelementptr [4 x i8], ptr %i.kp, i64 %i.g
  store float 1.000000e+00, ptr %i.kq, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.kn, align 4, !tbaa !34
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.m
  store float 0.000000e+00, ptr %i.kr, align 4, !tbaa !34
  br i1 %.not.i.i.i.i135, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i

.thread246:                                       ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit148
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0209.2, i64 4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !34
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, %i.jv
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, f0x3E2AAAAB ; 2 uses
  %i.kw = getelementptr i8, ptr %i.dx, i64 4
  store float %i.kv, ptr %i.kw, align 4, !tbaa !34
  %i.kx = getelementptr [4 x i8], ptr %i.dx, i64 %i.g
  store float %i.kv, ptr %i.kx, align 4, !tbaa !34
  br i1 %.not.i.i.i.i135, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i: ; preds = %._crit_edge316.thread380
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 3
  %invariant.gep128.i.i = getelementptr i8, ptr %i.dx, i64 %.idx.i.i.i
  %.pre.i.i = load float, ptr %i.ko, align 4, !tbaa !34
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i
  %i.ky = phi float [ %.pre.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i ], [ %i.lh, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i ] ; 2 uses
  %i.kz = phi i64 [ 1, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i ], [ %i.li, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i ] ; 4 uses
  %.063124.i.i = phi i64 [ 0, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.lr.ph.i.i ], [ %i.kz, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i ]
  %i.la = fcmp reassoc nsz arcp contract afn une float %i.ky, 0.000000e+00
  br i1 %i.la, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i
  %gep129.i.i = getelementptr [4 x i8], ptr %invariant.gep128.i.i, i64 %i.kz ; 2 uses
  %i.lb = load float, ptr %gep129.i.i, align 4, !tbaa !34
  %i.lc = fdiv reassoc nsz arcp contract afn float %i.lb, %i.ky ; 2 uses
  store float %i.lc, ptr %gep129.i.i, align 4, !tbaa !34
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.063124.i.i
  %i.le = load float, ptr %i.ld, align 4, !tbaa !34
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, %i.lc
  %gep133.i.i = getelementptr [4 x i8], ptr %i.ko, i64 %i.kz ; 2 uses
  %i.lg = load float, ptr %gep133.i.i, align 4, !tbaa !34
  %i.lh = fsub reassoc nsz arcp contract afn float %i.lg, %i.lf ; 2 uses
  store float %i.lh, ptr %gep133.i.i, align 4, !tbaa !34
  %i.li = add nuw i64 %i.kz, 1                    ; 2 uses
  %exitcond138.not.i.i = icmp eq i64 %i.li, %i.g
  br i1 %exitcond138.not.i.i, label %.loopexit.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i, !llvm.loop !136

.loopexit.i.i:                                    ; preds = %._crit_edge.us.i.i
  %i.lj = add nuw i64 %i.lk, 1                    ; 2 uses
  %exitcond137.not.i.i = icmp eq i64 %i.lj, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond137.not.i.i, label %.loopexit.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i, !llvm.loop !137

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader, %.loopexit.i.i
  %indvar = phi i64 [ 0, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader ], [ %indvar.next, %.loopexit.i.i ] ; 3 uses
  %i.lk = phi i64 [ 1, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader ], [ %i.lj, %.loopexit.i.i ] ; 5 uses
  %.061121.i.i = phi i64 [ 0, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i.preheader ], [ %i.lk, %.loopexit.i.i ] ; 2 uses
  %i.ll = sub i64 %i.m, %indvar
  %i.lm = sub i64 %i.kf, %indvar
  %i.ln = mul i64 %.061121.i.i, %i.g              ; 2 uses
  %i.lo = getelementptr [4 x i8], ptr %i.dx, i64 %.061121.i.i ; 6 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lo, i64 %i.ln
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !34 ; 2 uses
  %i.lr = fcmp reassoc nsz arcp contract afn une float %i.lq, 0.000000e+00
  br i1 %i.lr, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i, label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.dx, i64 %i.ln
  %i.ls = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.lq
  %xtraiter599 = and i64 %i.ll, 3                 ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  %i.lt = icmp ult i64 %i.lm, 3
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i
  %.060117.us.i.i = phi i64 [ %i.lk, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit94.lr.ph.i.i ], [ %i.nq, %._crit_edge.us.i.i ] ; 3 uses
  %gep.us.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.060117.us.i.i ; 7 uses
  %i.lu = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, %i.ls
  store float %i.lv, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.lw = getelementptr [4 x i8], ptr %i.dx, i64 %.060117.us.i.i ; 5 uses
  br i1 %lcmp.mod600.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol.loopexit, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol: ; preds = %iter.check, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol
  %.0116.us.i.i.prol = phi i64 [ %i.mf, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol ], [ %i.lk, %iter.check ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol ], [ 0, %iter.check ]
  %i.lx = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.ly = mul i64 %.0116.us.i.i.prol, %i.g        ; 2 uses
  %i.lz = getelementptr [4 x i8], ptr %i.lo, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !34
  %i.mb = fmul reassoc nsz arcp contract afn float %i.ma, %i.lx
  %i.mc = getelementptr [4 x i8], ptr %i.lw, i64 %i.ly ; 2 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !34
  %i.me = fsub reassoc nsz arcp contract afn float %i.md, %i.mb
  store float %i.me, ptr %i.mc, align 4, !tbaa !34
  %i.mf = add nuw i64 %.0116.us.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter599
  br i1 %prol.iter.cmp.not, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol.loopexit, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol, !llvm.loop !138

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol.loopexit: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol, %iter.check
  %.0116.us.i.i.unr = phi i64 [ %i.lk, %iter.check ], [ %i.mf, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol ]
  br i1 %i.lt, label %._crit_edge.us.i.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i

_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol.loopexit, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i
  %.0116.us.i.i = phi i64 [ %i.np, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i ], [ %.0116.us.i.i.unr, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol.loopexit ] ; 5 uses
  %i.mg = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.mh = mul i64 %.0116.us.i.i, %i.g             ; 2 uses
  %i.mi = getelementptr [4 x i8], ptr %i.lo, i64 %i.mh
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !34
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.mg
  %i.ml = getelementptr [4 x i8], ptr %i.lw, i64 %i.mh ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !34
  %i.mn = fsub reassoc nsz arcp contract afn float %i.mm, %i.mk
  store float %i.mn, ptr %i.ml, align 4, !tbaa !34
  %i.mo = add nuw i64 %.0116.us.i.i, 1
  %i.mp = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.mq = mul i64 %i.mo, %i.g                     ; 2 uses
  %i.mr = getelementptr [4 x i8], ptr %i.lo, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !34
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mp
  %i.mu = getelementptr [4 x i8], ptr %i.lw, i64 %i.mq ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !34
  %i.mw = fsub reassoc nsz arcp contract afn float %i.mv, %i.mt
  store float %i.mw, ptr %i.mu, align 4, !tbaa !34
  %i.mx = add nuw i64 %.0116.us.i.i, 2
  %i.my = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.mz = mul i64 %i.mx, %i.g                     ; 2 uses
  %i.na = getelementptr [4 x i8], ptr %i.lo, i64 %i.mz
  %i.nb = load float, ptr %i.na, align 4, !tbaa !34
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, %i.my
  %i.nd = getelementptr [4 x i8], ptr %i.lw, i64 %i.mz ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !34
  %i.nf = fsub reassoc nsz arcp contract afn float %i.ne, %i.nc
  store float %i.nf, ptr %i.nd, align 4, !tbaa !34
  %i.ng = add nuw i64 %.0116.us.i.i, 3
  %i.nh = load float, ptr %gep.us.i.i, align 4, !tbaa !34
  %i.ni = mul i64 %i.ng, %i.g                     ; 2 uses
  %i.nj = getelementptr [4 x i8], ptr %i.lo, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !34
  %i.nl = fmul reassoc nsz arcp contract afn float %i.nk, %i.nh
  %i.nm = getelementptr [4 x i8], ptr %i.lw, i64 %i.ni ; 2 uses
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !34
  %i.no = fsub reassoc nsz arcp contract afn float %i.nn, %i.nl
  store float %i.no, ptr %i.nm, align 4, !tbaa !34
  %i.np = add nuw i64 %.0116.us.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.np, %i.g
  br i1 %exitcond.not.i.i.3, label %._crit_edge.us.i.i, label %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i, !llvm.loop !140

._crit_edge.us.i.i:                               ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit100.us.i.i.prol.loopexit
  %i.nq = add nuw i64 %.060117.us.i.i, 1          ; 2 uses
  %exitcond136.not.i.i = icmp eq i64 %i.nq, %i.g
  br i1 %exitcond136.not.i.i, label %.loopexit.i.i, label %iter.check, !llvm.loop !141

.loopexit.i:                                      ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit88.i.i, %.loopexit.i.i
  invoke void @_ZN8interpol19smooth_cubic_splineIfE8LU_solveERKNS1_6matrixERSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit unwind label %bb.ai

_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit: ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit.i.i, %_ZN8interpol19smooth_cubic_splineIfE6matrixclEmm.exit91.i.i, %.loopexit.i, %.thread246, %._crit_edge316.thread380
  br i1 %.not323, label %._crit_edge321, label %.lr.ph320

.lr.ph320:                                        ; preds = %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit
  %i.nr = load ptr, ptr %2, align 8, !tbaa !113   ; 10 uses
  %i.ns = load ptr, ptr %0, align 8, !tbaa !11    ; 6 uses
  %min.iters.check555 = icmp ult i64 %i.m, 16
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.memcheck537

vector.memcheck537:                               ; preds = %.lr.ph320
  %scevgep538 = getelementptr nuw i8, ptr %i.ns, i64 8 ; 3 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 %i.f
  %scevgep539 = getelementptr i8, ptr %i.nt, i64 -12 ; 3 uses
  %i.nu = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.nv = add nsw i64 %i.nu, -4                   ; 2 uses
  %scevgep540 = getelementptr i8, ptr %.sroa.0191.1, i64 %i.nv
  %scevgep541 = getelementptr i8, ptr %.sroa.0209.2, i64 %i.nv
  %scevgep542 = getelementptr i8, ptr %i.nr, i64 %i.nu
  %bound0543 = icmp ult ptr %scevgep538, %scevgep540
  %bound1544 = icmp ult ptr %.sroa.0191.1, %scevgep539
  %found.conflict545 = and i1 %bound0543, %bound1544
  %bound0546 = icmp ult ptr %scevgep538, %scevgep541
  %bound1547 = icmp ult ptr %.sroa.0209.2, %scevgep539
  %found.conflict548 = and i1 %bound0546, %bound1547
  %conflict.rdx549 = or i1 %found.conflict545, %found.conflict548
  %bound0550 = icmp ult ptr %scevgep538, %scevgep542
  %bound1551 = icmp ult ptr %i.nr, %scevgep539
  %found.conflict552 = and i1 %bound0550, %bound1551
  %conflict.rdx553 = or i1 %conflict.rdx549, %found.conflict552
  br i1 %conflict.rdx553, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %vector.memcheck537
  %n.vec557 = and i64 %i.m, -8                    ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next565, %vector.body558 ] ; 5 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph556 ], [ %vec.ind.next, %vector.body558 ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %index559
  %wide.load560 = load <8 x float>, ptr %i.nw, align 4, !tbaa !34, !alias.scope !142
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %index559
  %wide.load561 = load <8 x float>, ptr %i.nx, align 4, !tbaa !34, !alias.scope !145 ; 3 uses
  %i.ny = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load560, %wide.load561
  %i.nz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load561, splat (float f0x3E2AAAAB)
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index559
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %wide.load562 = load <8 x float>, ptr %i.ob, align 4, !tbaa !34, !alias.scope !147
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %index559
  %wide.load563 = load <8 x float>, ptr %i.oc, align 4, !tbaa !34, !alias.scope !147 ; 2 uses
  %i.od = fsub reassoc nsz arcp contract afn <8 x float> %wide.load562, %wide.load563
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.nz, %i.od
  %i.of = fsub reassoc nsz arcp contract afn <8 x float> %i.ny, %i.oe ; 2 uses
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %wide.load561, splat (float 5.000000e-01)
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %wide.load563
  %i.oi = fsub reassoc nsz arcp contract afn <8 x float> %i.of, %i.oh
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.ns, <8 x i64> %vec.ind
  %wide.gep564 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oi, <8 x ptr> align 4 %wide.gep564, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !149, !noalias !151
  %index.next565 = add nuw i64 %index559, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.oj = icmp eq i64 %index.next565, %n.vec557
  br i1 %i.oj, label %middle.block566, label %vector.body558, !llvm.loop !152

middle.block566:                                  ; preds = %vector.body558
  %i.ok = extractelement <8 x float> %i.of, i64 7
  %cmp.n567 = icmp eq i64 %i.m, %n.vec557
  br i1 %cmp.n567, label %._crit_edge321, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %vector.memcheck537, %.lr.ph320, %middle.block566
  %.0319.ph = phi i64 [ 0, %vector.memcheck537 ], [ 0, %.lr.ph320 ], [ %n.vec557, %middle.block566 ] ; 7 uses
  %i.ol = add nsw i64 %i.g, -2
  %i.om = and i64 %i.g, 1
  %lcmp.mod602.not.not = icmp eq i64 %i.om, 0
  br i1 %lcmp.mod602.not.not, label %scalar.ph554.prol, label %scalar.ph554.prol.loopexit

scalar.ph554.prol:                                ; preds = %scalar.ph554.preheader
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %.0319.ph
  %i.oo = load float, ptr %i.on, align 4, !tbaa !34
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %.0319.ph
  %i.oq = load float, ptr %i.op, align 4, !tbaa !34 ; 3 uses
  %i.or = fdiv reassoc nsz arcp contract afn float %i.oo, %i.oq
  %i.os = fmul reassoc nsz arcp contract afn float %i.oq, f0x3E2AAAAB
  %i.ot = or disjoint i64 %.0319.ph, 1            ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.ot
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !34
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %.0319.ph
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !34 ; 2 uses
  %i.oy = fsub reassoc nsz arcp contract afn float %i.ov, %i.ox
  %i.oz = fmul reassoc nsz arcp contract afn float %i.os, %i.oy
  %i.pa = fsub reassoc nsz arcp contract afn float %i.or, %i.oz ; 2 uses
  %i.pb = fmul reassoc nsz arcp contract afn float %i.oq, 5.000000e-01
  %i.pc = fmul reassoc nsz arcp contract afn float %i.pb, %i.ox
  %i.pd = fsub reassoc nsz arcp contract afn float %i.pa, %i.pc
  %i.pe = getelementptr inbounds nuw [12 x i8], ptr %i.ns, i64 %.0319.ph
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store float %i.pd, ptr %i.pf, align 4, !tbaa !36
  br label %scalar.ph554.prol.loopexit

scalar.ph554.prol.loopexit:                       ; preds = %scalar.ph554.prol, %scalar.ph554.preheader
  %.lcssa.unr = phi float [ poison, %scalar.ph554.preheader ], [ %i.pa, %scalar.ph554.prol ]
  %.0319.unr = phi i64 [ %.0319.ph, %scalar.ph554.preheader ], [ %i.ot, %scalar.ph554.prol ]
  %i.pg = icmp eq i64 %i.ol, %.0319.ph
  br i1 %i.pg, label %._crit_edge321, label %scalar.ph554

._crit_edge321:                                   ; preds = %scalar.ph554.prol.loopexit, %scalar.ph554, %middle.block566, %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit
  %.076.lcssa = phi float [ 0.000000e+00, %_ZN8interpol19smooth_cubic_splineIfE11gauss_solveERNS1_6matrixERSt6vectorIfSaIfEE.exit ], [ %i.ok, %middle.block566 ], [ %.lcssa.unr, %scalar.ph554.prol.loopexit ], [ %i.qp, %scalar.ph554 ] ; 2 uses
  %i.ph = load i8, ptr %i.j, align 8, !tbaa !20, !range !27, !noundef !28
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %.thread381, label %bb.ak

scalar.ph554:                                     ; preds = %scalar.ph554.prol.loopexit, %scalar.ph554
  %.0319 = phi i64 [ %i.qi, %scalar.ph554 ], [ %.0319.unr, %scalar.ph554.prol.loopexit ] ; 6 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %.0319
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !34
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %.0319
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !34 ; 3 uses
  %i.pn = fdiv reassoc nsz arcp contract afn float %i.pk, %i.pm
  %i.po = fmul reassoc nsz arcp contract afn float %i.pm, f0x3E2AAAAB
  %i.pp = add nuw i64 %.0319, 1                   ; 5 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !34
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %.0319
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !34 ; 2 uses
  %i.pu = fsub reassoc nsz arcp contract afn float %i.pr, %i.pt
  %i.pv = fmul reassoc nsz arcp contract afn float %i.po, %i.pu
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pm, 5.000000e-01
  %i.px = fmul reassoc nsz arcp contract afn float %i.pw, %i.pt
  %i.py = fadd reassoc nsz arcp contract afn float %i.pv, %i.px
  %i.pz = fsub reassoc nsz arcp contract afn float %i.pn, %i.py
  %i.qa = getelementptr inbounds nuw [12 x i8], ptr %i.ns, i64 %.0319
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store float %i.pz, ptr %i.qb, align 4, !tbaa !36
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.1, i64 %i.pp
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !34
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0209.2, i64 %i.pp
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !34 ; 3 uses
  %i.qg = fdiv reassoc nsz arcp contract afn float %i.qd, %i.qf
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qf, f0x3E2AAAAB
  %i.qi = add nuw i64 %.0319, 2                   ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.qi
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !34
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.pp
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !34 ; 2 uses
  %i.qn = fsub reassoc nsz arcp contract afn float %i.qk, %i.qm
  %i.qo = fmul reassoc nsz arcp contract afn float %i.qh, %i.qn
  %i.qp = fsub reassoc nsz arcp contract afn float %i.qg, %i.qo ; 2 uses
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qf, 5.000000e-01
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, %i.qm
  %i.qs = fsub reassoc nsz arcp contract afn float %i.qp, %i.qr
  %i.qt = getelementptr inbounds nuw [12 x i8], ptr %i.ns, i64 %i.pp
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store float %i.qs, ptr %i.qu, align 4, !tbaa !36
  %exitcond352.not.1 = icmp eq i64 %i.qi, %i.m
  br i1 %exitcond352.not.1, label %._crit_edge321, label %scalar.ph554, !llvm.loop !153

.thread381:                                       ; preds = %._crit_edge321
  %i.qv = getelementptr [4 x i8], ptr %.sroa.0209.2, i64 %i.g
  %i.qw = getelementptr i8, ptr %i.qv, i64 -8
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !34
  %i.qy = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.m
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !34
  %i.rb = fmul reassoc nsz arcp contract afn float %i.qx, 5.000000e-01
  %i.rc = fmul reassoc nsz arcp contract afn float %i.rb, %i.ra
  %i.rd = fadd reassoc nsz arcp contract afn float %i.rc, %.076.lcssa
  %i.re = load ptr, ptr %0, align 8, !tbaa !11
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.re, i64 %i.m
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store float %i.rd, ptr %i.rg, align 4, !tbaa !36
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge321
  %i.rh = load ptr, ptr %0, align 8, !tbaa !11
  %i.ri = getelementptr inbounds nuw [12 x i8], ptr %i.rh, i64 %i.m
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store float %.076.lcssa, ptr %i.rj, align 4, !tbaa !36
  %.pre355 = load ptr, ptr %2, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %.pre355, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIfSaIfEED2Ev.exit172, label %bb.al

bb.al:                                            ; preds = %.thread381, %bb.ak
  %i.rk = phi ptr [ %i.qy, %.thread381 ], [ %.pre355, %bb.ak ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !114
  %i.rn = ptrtoint ptr %i.rm to i64
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = sub i64 %i.rn, %i.ro
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.rp) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit172

_ZNSt6vectorIfSaIfEED2Ev.exit172:                 ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.rq = load ptr, ptr %i.dp, align 8, !tbaa !113 ; 3 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i173, label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit172
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !114
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rq to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.rv) #19
  br label %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit

_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit172, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not.i.i.i174 = icmp eq ptr %.sroa.0191.1, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIfSaIfEED2Ev.exit175, label %bb.an

bb.an:                                            ; preds = %_ZN8interpol19smooth_cubic_splineIfE6matrixD2Ev.exit
  %i.rw = ptrtoint ptr %.sroa.27.1 to i64
end_hunk_2
begin_hunk_3_@_ZN8interpol19smooth_cubic_splineIfE8LU_solveERKNS1_6matrixERSt6vectorIfSaIfEE:bb.a
  %i.dd = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dc) ; 2 uses
  store float %i.de, ptr %i.cd, align 4, !tbaa !34, !alias.scope !176, !noalias !170
  %cmp.n132 = icmp eq i64 %.06693, %n.vec126
  br i1 %cmp.n132, label %._crit_edge, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi float [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.cx, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ] ; 2 uses
  %.06592.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec126, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.06693, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol
  %i.df = phi float [ %i.dm, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ], [ %.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ]
  %.06592.prol = phi i64 [ %i.dn, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ], [ %.06592.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ], [ 0, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ]
  %i.dg = mul i64 %.06592.prol, %i.a
  %i.dh = getelementptr [4 x i8], ptr %i.cc, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !34
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.06592.prol
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !34
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.di
  %i.dm = fsub reassoc nsz arcp contract afn float %i.df, %i.dl ; 3 uses
  store float %i.dm, ptr %i.cd, align 4, !tbaa !34
  %i.dn = add nuw i64 %.06592.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol, !llvm.loop !180

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader
  %.unr = phi float [ %.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ], [ %i.dm, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ]
  %.06592.unr = phi i64 [ %.06592.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.preheader ], [ %i.dn, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol ]
  %i.do = sub i64 %.06592.ph, %.06693
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80

._crit_edge:                                      ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80, %middle.block, %vec.epilog.middle.block, %.preheader90
  %i.dq = add nuw i64 %.06693, 1                  ; 2 uses
  %exitcond101.not = icmp eq i64 %i.dq, %i.a
  br i1 %exitcond101.not, label %.preheader88, label %.preheader90, !llvm.loop !181

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80
  %i.dr = phi float [ %i.ew, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80 ], [ %.unr, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit ]
  %.06592 = phi i64 [ %i.ex, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80 ], [ %.06592.unr, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80.prol.loopexit ] ; 6 uses
  %i.ds = mul i64 %.06592, %i.a
  %i.dt = getelementptr [4 x i8], ptr %i.cc, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !34
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.06592
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !34
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.du
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dr, %i.dx ; 2 uses
  store float %i.dy, ptr %i.cd, align 4, !tbaa !34
  %i.dz = add nuw i64 %.06592, 1                  ; 2 uses
  %i.ea = mul i64 %i.dz, %i.a
  %i.eb = getelementptr [4 x i8], ptr %i.cc, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !34
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dz
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !34
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.ec
  %i.eg = fsub reassoc nsz arcp contract afn float %i.dy, %i.ef ; 2 uses
  store float %i.eg, ptr %i.cd, align 4, !tbaa !34
  %i.eh = add nuw i64 %.06592, 2                  ; 2 uses
  %i.ei = mul i64 %i.eh, %i.a
  %i.ej = getelementptr [4 x i8], ptr %i.cc, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !34
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eh
  %i.em = load float, ptr %i.el, align 4, !tbaa !34
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, %i.ek
  %i.eo = fsub reassoc nsz arcp contract afn float %i.eg, %i.en ; 2 uses
  store float %i.eo, ptr %i.cd, align 4, !tbaa !34
  %i.ep = add nuw i64 %.06592, 3                  ; 2 uses
  %i.eq = mul i64 %i.ep, %i.a
  %i.er = getelementptr [4 x i8], ptr %i.cc, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !34
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ep
  %i.eu = load float, ptr %i.et, align 4, !tbaa !34
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = fsub reassoc nsz arcp contract afn float %i.eo, %i.ev ; 2 uses
  store float %i.ew, ptr %i.cd, align 4, !tbaa !34
  %i.ex = add nuw i64 %.06592, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ex, %.06693
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit80, !llvm.loop !182

.preheader88:                                     ; preds = %._crit_edge, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83
  %indvar = phi i64 [ %indvar.next, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83 ], [ 0, %._crit_edge ] ; 3 uses
  %.064.in = phi i64 [ %.064, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83 ], [ %i.a, %._crit_edge ] ; 4 uses
  %i.ey = add i64 %indvar, -1
  %.064 = add i64 %.064.in, -1                    ; 8 uses
  %i.ez = icmp ult i64 %.064.in, %i.a
  br i1 %i.ez, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph, label %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83_crit_edge

._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83_crit_edge: ; preds = %.preheader88
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.064
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !34
  br label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph: ; preds = %.preheader88
  %i.fa = getelementptr [4 x i8], ptr %i.n, i64 %.064 ; 5 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.064 ; 6 uses
  %.promoted95 = load float, ptr %i.fb, align 4, !tbaa !34 ; 2 uses
  %xtraiter150 = and i64 %indvar, 3               ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol
  %i.fc = phi float [ %i.fj, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ], [ %.promoted95, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ]
  %.094.prol = phi i64 [ %i.fk, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ], [ %.064.in, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ] ; 3 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ], [ 0, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ]
  %i.fd = mul i64 %.094.prol, %i.a
  %i.fe = getelementptr [4 x i8], ptr %i.fa, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !34
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.094.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !34
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.ff
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fc, %i.fi ; 4 uses
  store float %i.fj, ptr %i.fb, align 4, !tbaa !34
  %i.fk = add nuw i64 %.094.prol, 1               ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol, !llvm.loop !183

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph
  %.lcssa.unr = phi float [ poison, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ], [ %i.fj, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ]
  %.unr153 = phi float [ %.promoted95, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ], [ %i.fj, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ]
  %.094.unr = phi i64 [ %.064.in, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.lr.ph ], [ %i.fk, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol ]
  %i.fl = icmp ult i64 %i.ey, 3
  br i1 %i.fl, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86, %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83_crit_edge
  %i.fm = phi float [ %.pre, %._ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83_crit_edge ], [ %.lcssa.unr, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit ], [ %i.gz, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86 ]
  %i.fn = mul i64 %.064, %i.a
  %i.fo = getelementptr [4 x i8], ptr %i.n, i64 %.064
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !34
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.064
  %i.fs = fdiv reassoc nsz arcp contract afn float %i.fm, %i.fq
  store float %i.fs, ptr %i.fr, align 4, !tbaa !34
  %i.ft = icmp eq i64 %.064, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ft, label %.loopexit, label %.preheader88, !llvm.loop !184

_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86: ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86
  %i.fu = phi float [ %i.gz, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86 ], [ %.unr153, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit ]
  %.094 = phi i64 [ %i.ha, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86 ], [ %.094.unr, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86.prol.loopexit ] ; 6 uses
  %i.fv = mul i64 %.094, %i.a
  %i.fw = getelementptr [4 x i8], ptr %i.fa, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !34
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.094
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !34
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fx
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fu, %i.ga ; 2 uses
  store float %i.gb, ptr %i.fb, align 4, !tbaa !34
  %i.gc = add nuw i64 %.094, 1                    ; 2 uses
  %i.gd = mul i64 %i.gc, %i.a
  %i.ge = getelementptr [4 x i8], ptr %i.fa, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !34
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gc
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !34
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.gf
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gb, %i.gi ; 2 uses
  store float %i.gj, ptr %i.fb, align 4, !tbaa !34
  %i.gk = add nuw i64 %.094, 2                    ; 2 uses
  %i.gl = mul i64 %i.gk, %i.a
  %i.gm = getelementptr [4 x i8], ptr %i.fa, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !34
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gk
  %i.gp = load float, ptr %i.go, align 4, !tbaa !34
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.gn
  %i.gr = fsub reassoc nsz arcp contract afn float %i.gj, %i.gq ; 2 uses
  store float %i.gr, ptr %i.fb, align 4, !tbaa !34
  %i.gs = add nuw i64 %.094, 3                    ; 2 uses
  %i.gt = mul i64 %i.gs, %i.a
  %i.gu = getelementptr [4 x i8], ptr %i.fa, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !34
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gs
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !34
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.gv
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gr, %i.gy ; 3 uses
  store float %i.gz, ptr %i.fb, align 4, !tbaa !34
  %i.ha = add nuw i64 %.094, 4                    ; 2 uses
  %exitcond102.not.3 = icmp eq i64 %i.ha, %i.a
  br i1 %exitcond102.not.3, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83, label %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit86, !llvm.loop !185

.loopexit:                                        ; preds = %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit83, %.prol.loopexit, %_ZNK8interpol19smooth_cubic_splineIfE6matrixclEmm.exit77.1, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8interpol18Catmull_Rom_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 22 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i8, ptr %i.i, align 8, !tbaa !20, !range !27, !noundef !28
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load float, ptr %i.m, align 4, !tbaa !29
  %i.o = load float, ptr %i.l, align 8, !tbaa !30
  %i.p = fsub reassoc nsz arcp contract afn float %i.n, %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !17
  %i.t = add nsw i64 %i.g, -1                     ; 3 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !17
  %i.x = fsub reassoc nsz arcp contract afn float %i.s, %i.w
  %i.y = load float, ptr %i.q, align 4, !tbaa !31
  %i.z = load float, ptr %i.u, align 4, !tbaa !31
  %i.aa = fadd reassoc nsz arcp contract afn float %i.y, %i.p
  %i.ab = fsub reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.ac, ptr %i.ad, align 4, !tbaa !36
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
  %wide.masked.gather60 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec56, %wide.masked.gather60
  %wide.masked.gather61 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep58, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec55, %wide.masked.gather61
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> %i.am, %i.an
  %wide.gep62 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep57, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ao, <8 x ptr> align 4 %wide.gep62, <8 x i1> splat (i1 true)), !tbaa !36
  %index.next63 = add nuw i64 %index52, 8         ; 2 uses
  %vec.ind.next64 = add nuw <8 x i64> %vec.ind53, splat (i64 8)
  %i.ap = icmp eq i64 %index.next63, %n.vec50
  br i1 %i.ap, label %.lr.ph35.preheader77, label %vector.body51, !llvm.loop !186

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = getelementptr i8, ptr %i.c, i64 %i.f    ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = getelementptr i8, ptr %i.as, i64 -20
  %i.av = load float, ptr %i.au, align 4, !tbaa !17
  %i.aw = fsub reassoc nsz arcp contract afn float %i.ar, %i.av
  %i.ax = load float, ptr %i.c, align 4, !tbaa !31
  %i.ay = load float, ptr %i.at, align 4, !tbaa !31
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
  store float %i.bj, ptr %i.bk, align 4, !tbaa !36
  %exitcond37.not = icmp eq i64 %i.bc, %i.t
  br i1 %exitcond37.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !187

bb.d:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !34
  %i.bn = load <2 x float>, ptr %i.c, align 4, !tbaa !34
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bn ; 2 uses
  %shift68 = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fdiv reassoc nsz arcp contract afn <2 x float> %shift68, %i.bo
  %i.bp = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.bp, ptr %i.bq, align 4, !tbaa !36
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
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep44, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec42, %wide.masked.gather
  %wide.masked.gather45 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep43, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !31
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %wide.masked.gather45
  %i.cc = fdiv reassoc nsz arcp contract afn <8 x float> %i.ca, %i.cb
  %wide.gep46 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cc, <8 x ptr> align 4 %wide.gep46, <8 x i1> splat (i1 true)), !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %.lr.ph.preheader78, label %vector.body, !llvm.loop !188

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
  store float %i.cs, ptr %i.ct, align 4, !tbaa !36
  %exitcond.not = icmp eq i64 %i.cl, %i.br
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !189

bb.e:                                             ; preds = %bb.a, %._crit_edge36, %._crit_edge
  %.sink41 = phi ptr [ %i.u, %._crit_edge36 ], [ %i.ce, %._crit_edge ], [ %i.c, %bb.a ]
  %.sink = phi float [ %i.bb, %._crit_edge36 ], [ %i.ck, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink41, i64 8
  store float %.sink, ptr %i.cu, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol23monotone_hermite_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 20 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !36
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !20, !range !27, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

bb.e:                                             ; preds = %bb.d
  %.not206 = icmp eq ptr %i.b, %i.c               ; 2 uses
  br i1 %.not206, label %.lr.ph248.preheader, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %bb.e
  %i.p = shl nuw nsw i64 %i.g, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.g ; 2 uses
  %i.s = add nsw i64 %i.g, -1                     ; 2 uses
  %.not261 = icmp eq i64 %i.s, 0
  br i1 %.not261, label %._crit_edge249, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.t = phi i64 [ %i.s, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ -1, %bb.e ] ; 2 uses
  %.sroa.33.2296 = phi ptr [ %i.r, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ null, %bb.e ]
  %.sroa.0171.2295 = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ null, %bb.e ] ; 2 uses
  br label %.lr.ph248

._crit_edge249.loopexit:                          ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124
  %.pre278 = load ptr, ptr %0, align 8, !tbaa !11
  br label %._crit_edge249

._crit_edge249:                                   ; preds = %._crit_edge249.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.u = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.t, %._crit_edge249.loopexit ] ; 2 uses
  %i.v = phi ptr [ %i.c, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.pre278, %._crit_edge249.loopexit ] ; 2 uses
  %.sroa.0171.0.lcssa = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.0171.4, %._crit_edge249.loopexit ] ; 6 uses
  %.sroa.25.0.lcssa = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.25.2, %._crit_edge249.loopexit ] ; 4 uses
  %.sroa.33.0.lcssa = phi ptr [ %i.r, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.33.4, %._crit_edge249.loopexit ] ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.u
  %i.x = load <2 x float>, ptr %i.v, align 4, !tbaa !34
  %i.y = load <2 x float>, ptr %i.w, align 4, !tbaa !34
  %i.z = shufflevector <2 x float> <float poison, float -0.000000e+00>, <2 x float> %i.n, <2 x i32> <i32 3, i32 1>
  %i.aa = insertelement <2 x float> %i.n, float -0.000000e+00, i64 1
  %i.ab = fadd reassoc nsz arcp contract afn <2 x float> %i.x, %i.z
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.aa
  %i.ad = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ac ; 2 uses
  %shift = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.25.0.lcssa, %.sroa.33.0.lcssa
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge249
  store float %i.ae, ptr %.sroa.25.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.g:                                             ; preds = %._crit_edge249
  %i.af = ptrtoint ptr %.sroa.25.0.lcssa to i64
  %i.ag = ptrtoint ptr %.sroa.0171.0.lcssa to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc113 unwind label %bb.p

.noexc113:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
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
          to label %.noexc114 unwind label %bb.p  ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah
  store float %i.ae, ptr %i.aq, align 4, !tbaa !34
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc114
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %.sroa.0171.0.lcssa, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc114
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0171.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0.lcssa, i64 noundef %i.ah) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124
  %.097247 = phi i64 [ %i.at, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ 0, %.lr.ph248.preheader ] ; 2 uses
  %.sroa.33.0246 = phi ptr [ %.sroa.33.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.33.2296, %.lr.ph248.preheader ] ; 5 uses
  %.sroa.25.0245 = phi ptr [ %.sroa.25.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.0171.2295, %.lr.ph248.preheader ] ; 3 uses
  %.sroa.0171.0244 = phi ptr [ %.sroa.0171.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.0171.2295, %.lr.ph248.preheader ] ; 7 uses
  %i.at = add nuw i64 %.097247, 1                 ; 3 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %i.at
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %.097247
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !34
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !34
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.ay ; 2 uses
  %shift370 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop371 = fdiv reassoc nsz arcp contract afn <2 x float> %shift370, %i.az
  %i.ba = extractelement <2 x float> %foldExtExtBinop371, i64 0 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.sroa.25.0245, %.sroa.33.0246
  br i1 %.not.i.i115, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph248
  store float %i.ba, ptr %.sroa.25.0245, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124

bb.l:                                             ; preds = %.lr.ph248
  %i.bb = ptrtoint ptr %.sroa.33.0246 to i64
  %i.bc = ptrtoint ptr %.sroa.0171.0244 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.m, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.l
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i117 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc123 unwind label %.loopexit ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store float %i.ba, ptr %i.bm, align 4, !tbaa !34
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119

bb.n:                                             ; preds = %.noexc123
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %.sroa.0171.0244, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.n, %.noexc123
  %.not.i17.i.i.i120 = icmp eq ptr %.sroa.0171.0244, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0244, i64 noundef %i.bd) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124

_ZNSt6vectorIfSaIfEE9push_backEOf.exit124:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121, %bb.k
  %.sroa.0171.4 = phi ptr [ %i.bl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.0171.0244, %bb.k ] ; 2 uses
  %.pn207 = phi ptr [ %i.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.25.0245, %bb.k ]
  %.sroa.33.4 = phi ptr [ %i.bo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.33.0246, %bb.k ] ; 2 uses
  %.sroa.25.2 = getelementptr inbounds nuw i8, ptr %.pn207, i64 4 ; 2 uses
  %exitcond275.not = icmp eq i64 %i.at, %i.t
  br i1 %exitcond275.not, label %._crit_edge249.loopexit, label %.lr.ph248, !llvm.loop !190

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0171.3 = phi ptr [ %i.ap, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0171.0.lcssa, %bb.f ] ; 13 uses
  %.sroa.33.3 = phi ptr [ %i.as, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.33.0.lcssa, %bb.f ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.3, i64 %i.u
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !34 ; 2 uses
  %i.br = load float, ptr %.sroa.0171.3, align 4, !tbaa !34 ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bq
  %i.bt = fcmp reassoc nsz arcp contract afn ugt float %i.bs, 0.000000e+00
  %i.bu = fadd reassoc nsz arcp contract afn float %i.br, %i.bq
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 5.000000e-01
  %.sink = select i1 %i.bt, float %i.bv, float 0.000000e+00
  %i.bw = load ptr, ptr %0, align 8, !tbaa !11    ; 13 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %.sink, ptr %i.bx, align 4, !tbaa !36
  %i.by = icmp ugt i64 %i.g, 1
  br i1 %i.by, label %.lr.ph256.preheader, label %.preheader

.lr.ph256.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.bz = add nsw i64 %i.g, -1                    ; 2 uses
  %min.iters.check354 = icmp ult i64 %i.g, 9
  br i1 %min.iters.check354, label %.lr.ph256.preheader376, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph256.preheader
  %scevgep347 = getelementptr i8, ptr %i.bw, i64 20
  %scevgep348 = getelementptr i8, ptr %i.bw, i64 %i.f
  %i.ca = shl nuw nsw i64 %i.g, 2
  %scevgep349 = getelementptr i8, ptr %.sroa.0171.3, i64 %i.ca
  %bound0350 = icmp ult ptr %scevgep347, %scevgep349
  %bound1351 = icmp ult ptr %.sroa.0171.3, %scevgep348
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %.lr.ph256.preheader376, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck346
  %n.vec356 = and i64 %i.bz, -8                   ; 3 uses
  %i.cb = or disjoint i64 %n.vec356, 1
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next364, %vector.body357 ] ; 2 uses
  %vec.ind359 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph355 ], [ %vec.ind.next365, %vector.body357 ] ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %.sroa.0171.3, i64 %index358 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %wide.load360 = load <8 x float>, ptr %i.cc, align 4, !tbaa !34, !alias.scope !191 ; 2 uses
  %wide.load361 = load <8 x float>, ptr %i.cd, align 4, !tbaa !34, !alias.scope !191 ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %wide.load361, %wide.load360
  %i.cf = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ce, zeroinitializer
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load361, %wide.load360
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = select <8 x i1> %i.cf, <8 x float> %i.ch, <8 x float> zeroinitializer
  %wide.gep362 = getelementptr inbounds nuw [12 x i8], ptr %i.bw, <8 x i64> %vec.ind359
  %wide.gep363 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep362, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ci, <8 x ptr> align 4 %wide.gep363, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !194, !noalias !191
  %index.next364 = add nuw i64 %index358, 8       ; 2 uses
  %vec.ind.next365 = add nuw <8 x i64> %vec.ind359, splat (i64 8)
  %i.cj = icmp eq i64 %index.next364, %n.vec356
  br i1 %i.cj, label %middle.block366, label %vector.body357, !llvm.loop !196

middle.block366:                                  ; preds = %vector.body357
  %cmp.n367 = icmp eq i64 %i.bz, %n.vec356
  br i1 %cmp.n367, label %.preheader, label %.lr.ph256.preheader376

.lr.ph256.preheader376:                           ; preds = %vector.memcheck346, %.lr.ph256.preheader, %middle.block366
  %.096254.ph = phi i64 [ 1, %vector.memcheck346 ], [ 1, %.lr.ph256.preheader ], [ %i.cb, %middle.block366 ] ; 4 uses
  %i.ck = sub nsw i64 %i.g, %.096254.ph
  %xtraiter386 = and i64 %i.ck, 3                 ; 2 uses
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod387.not, label %.lr.ph256.prol.loopexit, label %.lr.ph256.prol

.lr.ph256.prol:                                   ; preds = %.lr.ph256.preheader376, %.lr.ph256.prol
  %.096254.prol = phi i64 [ %i.cv, %.lr.ph256.prol ], [ %.096254.ph, %.lr.ph256.preheader376 ] ; 3 uses
  %prol.iter388 = phi i64 [ %prol.iter388.next, %.lr.ph256.prol ], [ 0, %.lr.ph256.preheader376 ]
  %i.cl = getelementptr [4 x i8], ptr %.sroa.0171.3, i64 %.096254.prol ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !34 ; 2 uses
  %i.co = load float, ptr %i.cl, align 4, !tbaa !34 ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, %i.cn
  %i.cq = fcmp reassoc nsz arcp contract afn ugt float %i.cp, 0.000000e+00
  %i.cr = fadd reassoc nsz arcp contract afn float %i.co, %i.cn
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, 5.000000e-01
  %.sink328.prol = select i1 %i.cq, float %i.cs, float 0.000000e+00
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.096254.prol
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %.sink328.prol, ptr %i.cu, align 4, !tbaa !36
  %i.cv = add nuw i64 %.096254.prol, 1            ; 2 uses
  %prol.iter388.next = add i64 %prol.iter388, 1   ; 2 uses
  %prol.iter388.cmp.not = icmp eq i64 %prol.iter388.next, %xtraiter386
  br i1 %prol.iter388.cmp.not, label %.lr.ph256.prol.loopexit, label %.lr.ph256.prol, !llvm.loop !197

.lr.ph256.prol.loopexit:                          ; preds = %.lr.ph256.prol, %.lr.ph256.preheader376
  %.096254.unr = phi i64 [ %.096254.ph, %.lr.ph256.preheader376 ], [ %i.cv, %.lr.ph256.prol ]
  %i.cw = sub nsw i64 %.096254.ph, %i.g
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %.preheader, label %.lr.ph256

bb.p:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.h
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.preheader:                                       ; preds = %.lr.ph256.prol.loopexit, %.lr.ph256, %middle.block366, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  br i1 %.not206, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph258

.lr.ph256:                                        ; preds = %.lr.ph256.prol.loopexit, %.lr.ph256
  %.096254 = phi i64 [ %i.eq, %.lr.ph256 ], [ %.096254.unr, %.lr.ph256.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr [4 x i8], ptr %.sroa.0171.3, i64 %.096254 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -4
  %i.db = load float, ptr %i.da, align 4, !tbaa !34 ; 2 uses
  %i.dc = load float, ptr %i.cz, align 4, !tbaa !34 ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.db
  %i.de = fcmp reassoc nsz arcp contract afn ugt float %i.dd, 0.000000e+00
  %i.df = fadd reassoc nsz arcp contract afn float %i.dc, %i.db
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, 5.000000e-01
  %.sink328 = select i1 %i.de, float %i.dg, float 0.000000e+00
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.096254
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store float %.sink328, ptr %i.di, align 4, !tbaa !36
  %i.dj = add nuw i64 %.096254, 1                 ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %.sroa.0171.3, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !34 ; 2 uses
  %i.dn = load float, ptr %i.dk, align 4, !tbaa !34 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dm
  %i.dp = fcmp reassoc nsz arcp contract afn ugt float %i.do, 0.000000e+00
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dn, %i.dm
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, 5.000000e-01
  %.sink328.1 = select i1 %i.dp, float %i.dr, float 0.000000e+00
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.dj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store float %.sink328.1, ptr %i.dt, align 4, !tbaa !36
  %i.du = add nuw i64 %.096254, 2                 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %.sroa.0171.3, i64 %i.du ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !34 ; 2 uses
  %i.dy = load float, ptr %i.dv, align 4, !tbaa !34 ; 2 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ea = fcmp reassoc nsz arcp contract afn ugt float %i.dz, 0.000000e+00
  %i.eb = fadd reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, 5.000000e-01
  %.sink328.2 = select i1 %i.ea, float %i.ec, float 0.000000e+00
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.du
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %.sink328.2, ptr %i.ee, align 4, !tbaa !36
  %i.ef = add nuw i64 %.096254, 3                 ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %.sroa.0171.3, i64 %i.ef ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !34 ; 2 uses
  %i.ej = load float, ptr %i.eg, align 4, !tbaa !34 ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.el = fcmp reassoc nsz arcp contract afn ugt float %i.ek, 0.000000e+00
  %i.em = fadd reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, 5.000000e-01
  %.sink328.3 = select i1 %i.el, float %i.en, float 0.000000e+00
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ef
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store float %.sink328.3, ptr %i.ep, align 4, !tbaa !36
  %i.eq = add nuw i64 %.096254, 4                 ; 2 uses
  %exitcond276.not.3 = icmp eq i64 %i.eq, %i.g
  br i1 %exitcond276.not.3, label %.preheader, label %.lr.ph256, !llvm.loop !198

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.t, %.preheader
  %i.er = ptrtoint ptr %.sroa.33.3 to i64
  %i.es = ptrtoint ptr %.sroa.0171.3 to i64
  %i.et = sub i64 %i.er, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.3, i64 noundef %i.et) #19
  br label %bb.ai

.lr.ph258:                                        ; preds = %.preheader, %bb.t
  %.095257 = phi i64 [ %i.eu, %bb.t ], [ 0, %.preheader ] ; 4 uses
  %i.eu = add nuw i64 %.095257, 1                 ; 4 uses
  %i.ev = icmp ult i64 %i.eu, %i.g
  %i.ew = select i1 %i.ev, i64 %i.eu, i64 0       ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.3, i64 %.095257 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !34 ; 4 uses
  %i.ez = tail call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.ey)
  %i.fa = fcmp reassoc nsz arcp contract afn olt float %i.ez, f0x34000000
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph258
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !36
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.095257
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store float 0.000000e+00, ptr %i.fe, align 4, !tbaa !36
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph258
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %.095257
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !36
  %i.fi = fdiv reassoc nsz arcp contract afn float %i.fh, %i.ey ; 3 uses
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.ew
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !36
  %i.fm = fdiv reassoc nsz arcp contract afn float %i.fl, %i.ey ; 3 uses
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fi, %i.fi
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fm, %i.fm
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %i.fp, 9.000000e+00
  br i1 %i.fq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fr = fmul reassoc nsz arcp contract afn float %i.ey, 3.000000e+00
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fi
  %i.ft = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.fp) ; 2 uses
  %i.fu = fdiv reassoc nsz arcp contract afn float %i.fs, %i.ft
  store float %i.fu, ptr %i.fg, align 4, !tbaa !36
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fm, 3.000000e+00
  %i.fw = load float, ptr %i.ex, align 4, !tbaa !34
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = fdiv reassoc nsz arcp contract afn float %i.fx, %i.ft
  store float %i.fy, ptr %i.fk, align 4, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %exitcond277.not = icmp eq i64 %i.eu, %i.g
  br i1 %exitcond277.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %.lr.ph258, !llvm.loop !199

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.sroa.0171.0224 = phi ptr [ %.sroa.0171.0.lcssa, %bb.p ], [ %.sroa.0171.0244, %.loopexit ], [ %.sroa.0171.0244, %.loopexit.split-lp ] ; 3 uses
  %.sroa.33.0218 = phi ptr [ %.sroa.25.0.lcssa, %bb.p ], [ %.sroa.33.0246, %.loopexit ], [ %.sroa.33.0246, %.loopexit.split-lp ]
  %.pn109 = phi { ptr, i32 } [ %i.cy, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %.sroa.0171.0224, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIfSaIfEED2Ev.exit126, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fz = ptrtoint ptr %.sroa.33.0218 to i64
  %i.ga = ptrtoint ptr %.sroa.0171.0224 to i64
  %i.gb = sub i64 %i.fz, %i.ga
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0224, i64 noundef %i.gb) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit126

bb.w:                                             ; preds = %bb.c
  %i.gc = add nsw i64 %i.g, -1                    ; 9 uses
  %i.gd = icmp ugt i64 %i.gc, 2305843009213693951
  br i1 %i.gd, label %.noexc131, label %.lr.ph.preheader

.noexc131:                                        ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.w
  %.not = icmp ne i64 %i.gc, 0
  tail call void @llvm.assume(i1 %.not)
  %i.ge = shl nuw nsw i64 %i.gc, 2
  %i.gf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #20 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gc
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143
  %.pre = load ptr, ptr %0, align 8, !tbaa !11    ; 11 uses
  %i.gh = load float, ptr %.sroa.0.3, align 4, !tbaa !34
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store float %i.gh, ptr %i.gi, align 4, !tbaa !36
  %i.gj = icmp ugt i64 %i.gc, 1
  br i1 %i.gj, label %.lr.ph239.preheader, label %._crit_edge240.thread

.lr.ph239.preheader:                              ; preds = %._crit_edge
  %i.gk = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.gk, 8
  br i1 %min.iters.check, label %.lr.ph239.preheader381, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph239.preheader
  %scevgep = getelementptr i8, ptr %.pre, i64 20
  %i.gl = getelementptr i8, ptr %.pre, i64 %i.f
  %scevgep342 = getelementptr i8, ptr %i.gl, i64 -12
  %i.gm = shl nuw nsw i64 %i.g, 2
  %i.gn = getelementptr i8, ptr %.sroa.0.3, i64 %i.gm
  %scevgep343 = getelementptr i8, ptr %i.gn, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep343
  %bound1 = icmp ult ptr %.sroa.0.3, %scevgep342
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph239.preheader381, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gk, -8                      ; 3 uses
  %i.go = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %index ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  %wide.load = load <8 x float>, ptr %i.gp, align 4, !tbaa !34, !alias.scope !200 ; 2 uses
  %wide.load344 = load <8 x float>, ptr %i.gq, align 4, !tbaa !34, !alias.scope !200 ; 2 uses
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %wide.load344, %wide.load
  %i.gs = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.gr, zeroinitializer
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %wide.load344, %wide.load
  %i.gu = fmul reassoc nsz arcp contract afn <8 x float> %i.gt, splat (float 5.000000e-01)
  %i.gv = select <8 x i1> %i.gs, <8 x float> %i.gu, <8 x float> zeroinitializer
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %.pre, <8 x i64> %vec.ind
  %wide.gep345 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.gv, <8 x ptr> align 4 %wide.gep345, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !203, !noalias !200
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br i1 %cmp.n, label %._crit_edge240, label %.lr.ph239.preheader381

.lr.ph239.preheader381:                           ; preds = %vector.memcheck, %.lr.ph239.preheader, %middle.block
  %.093237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph239.preheader ], [ %i.go, %middle.block ] ; 4 uses
  %i.gx = xor i64 %.093237.ph, -1
  %i.gy = add nsw i64 %i.g, %i.gx
  %i.gz = add nsw i64 %i.g, -2
  %i.ha = sub nsw i64 %i.gz, %.093237.ph
  %xtraiter = and i64 %i.gy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader381, %.lr.ph239.prol
  %.093237.prol = phi i64 [ %i.hl, %.lr.ph239.prol ], [ %.093237.ph, %.lr.ph239.preheader381 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph239.prol ], [ 0, %.lr.ph239.preheader381 ]
  %i.hb = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %.093237.prol ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !34 ; 2 uses
  %i.he = load float, ptr %i.hb, align 4, !tbaa !34 ; 2 uses
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.hd
  %i.hg = fcmp reassoc nsz arcp contract afn ugt float %i.hf, 0.000000e+00
  %i.hh = fadd reassoc nsz arcp contract afn float %i.he, %i.hd
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, 5.000000e-01
  %.sink331.prol = select i1 %i.hg, float %i.hi, float 0.000000e+00
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %.093237.prol
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %.sink331.prol, ptr %i.hk, align 4, !tbaa !36
  %i.hl = add nuw i64 %.093237.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol, !llvm.loop !206

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader381
  %.093237.unr = phi i64 [ %.093237.ph, %.lr.ph239.preheader381 ], [ %i.hl, %.lr.ph239.prol ]
  %i.hm = icmp ult i64 %i.ha, 3
  br i1 %i.hm, label %._crit_edge240, label %.lr.ph239

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143
  %.094235 = phi i64 [ %i.hn, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.26.0234 = phi ptr [ %.sroa.26.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gg, %.lr.ph.preheader ] ; 3 uses
  %.sroa.21.0233 = phi ptr [ %.sroa.21.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gf, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0232 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143 ], [ %i.gf, %.lr.ph.preheader ] ; 7 uses
  %i.hn = add nuw i64 %.094235, 1                 ; 3 uses
  %i.ho = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.ho, i64 %i.hn
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.ho, i64 %.094235
  %i.hr = load <2 x float>, ptr %i.hp, align 4, !tbaa !34
  %i.hs = load <2 x float>, ptr %i.hq, align 4, !tbaa !34
  %i.ht = fsub reassoc nsz arcp contract afn <2 x float> %i.hr, %i.hs ; 2 uses
  %shift373 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop374 = fdiv reassoc nsz arcp contract afn <2 x float> %shift373, %i.ht
  %i.hu = extractelement <2 x float> %foldExtExtBinop374, i64 0 ; 2 uses
  %.not.i.i134 = icmp eq ptr %.sroa.21.0233, %.sroa.26.0234
  br i1 %.not.i.i134, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  store float %i.hu, ptr %.sroa.21.0233, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143

bb.y:                                             ; preds = %.lr.ph
  %i.hv = ptrtoint ptr %.sroa.26.0234 to i64
  %i.hw = ptrtoint ptr %.sroa.0.0232 to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 7 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775804
  br i1 %i.hy, label %bb.z, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc141 unwind label %.loopexit.split-lp210

.noexc141:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135: ; preds = %bb.y
  %i.hz = ashr exact i64 %i.hx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i136 = tail call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i.i136, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = tail call i64 @llvm.umin.i64(i64 %i.ia, i64 2305843009213693951)
  %i.id = select i1 %i.ib, i64 2305843009213693951, i64 %i.ic ; 3 uses
  %.not.i.i.i.i137 = icmp ne i64 %i.id, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.ie = shl nuw nsw i64 %i.id, 2
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #20
          to label %.noexc142 unwind label %.loopexit209 ; 4 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i135
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hx ; 2 uses
  store float %i.hu, ptr %i.ig, align 4, !tbaa !34
  %i.ih = icmp sgt i64 %i.hx, 0
  br i1 %i.ih, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138

bb.aa:                                            ; preds = %.noexc142
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.if, ptr align 4 %.sroa.0.0232, i64 %i.hx, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138: ; preds = %bb.aa, %.noexc142
  %.not.i17.i.i.i139 = icmp eq ptr %.sroa.0.0232, null
  br i1 %.not.i17.i.i.i139, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0232, i64 noundef %i.hx) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i138
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit143

_ZNSt6vectorIfSaIfEE9push_backEOf.exit143:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140, %bb.x
  %.sroa.0.3 = phi ptr [ %i.if, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.0.0232, %bb.x ] ; 14 uses
  %.pn = phi ptr [ %i.ig, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.21.0233, %bb.x ]
  %.sroa.26.3 = phi ptr [ %i.ii, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i140 ], [ %.sroa.26.0234, %bb.x ] ; 2 uses
  %.sroa.21.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %exitcond.not = icmp eq i64 %i.hn, %i.gc
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !207

._crit_edge240:                                   ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %middle.block
  %i.ij = icmp ugt i64 %i.g, 1
  br i1 %i.ij, label %._crit_edge240.thread, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %._crit_edge240.thread, %._crit_edge240
  br label %.lr.ph243

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %.093237 = phi i64 [ %i.kb, %.lr.ph239 ], [ %.093237.unr, %.lr.ph239.prol.loopexit ] ; 6 uses
  %i.ik = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %.093237 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -4
  %i.im = load float, ptr %i.il, align 4, !tbaa !34 ; 2 uses
  %i.in = load float, ptr %i.ik, align 4, !tbaa !34 ; 2 uses
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.im
  %i.ip = fcmp reassoc nsz arcp contract afn ugt float %i.io, 0.000000e+00
  %i.iq = fadd reassoc nsz arcp contract afn float %i.in, %i.im
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, 5.000000e-01
  %.sink331 = select i1 %i.ip, float %i.ir, float 0.000000e+00
  %i.is = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %.093237
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store float %.sink331, ptr %i.it, align 4, !tbaa !36
  %i.iu = add nuw i64 %.093237, 1                 ; 2 uses
  %i.iv = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.iu ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !34 ; 2 uses
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !34 ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %i.ix
  %i.ja = fcmp reassoc nsz arcp contract afn ugt float %i.iz, 0.000000e+00
  %i.jb = fadd reassoc nsz arcp contract afn float %i.iy, %i.ix
  %i.jc = fmul reassoc nsz arcp contract afn float %i.jb, 5.000000e-01
  %.sink331.1 = select i1 %i.ja, float %i.jc, float 0.000000e+00
  %i.jd = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.iu
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store float %.sink331.1, ptr %i.je, align 4, !tbaa !36
  %i.jf = add nuw i64 %.093237, 2                 ; 2 uses
  %i.jg = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !34 ; 2 uses
  %i.jj = load float, ptr %i.jg, align 4, !tbaa !34 ; 2 uses
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, %i.ji
  %i.jl = fcmp reassoc nsz arcp contract afn ugt float %i.jk, 0.000000e+00
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jj, %i.ji
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, 5.000000e-01
  %.sink331.2 = select i1 %i.jl, float %i.jn, float 0.000000e+00
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.jf
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store float %.sink331.2, ptr %i.jp, align 4, !tbaa !36
  %i.jq = add nuw i64 %.093237, 3                 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_:bb.a
  %.sroa.067.0.copyload = load <3 x float>, ptr %.sroa.010.1.i.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !96
  store <3 x float> %.sroa.067.0.copyload, ptr %.sroa.0.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_SL_T0_.exit.i, !llvm.loop !248

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEESL_SL_SL_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bu)
  %i.cn = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 192
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_SL_T0_.exit, !llvm.loop !241

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
  %i.e = load float, ptr %.sroa.0.019.i.ptr, align 4, !tbaa !31 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !31
  %i.g = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <3 x float>, ptr %.sroa.0.019.i.ptr, align 4
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 12
  br i1 %i.h, label %bb.d, label %bb.e, !prof !162

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  store <3 x float> %.sroa.0.0.copyload, ptr %0, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.j = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.k = load float, ptr %.pn18.i, align 4, !tbaa !31
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -12 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !31
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i, !llvm.loop !249

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.e, ptr %.sroa.06.0.lcssa.i.i, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %bb.b, !llvm.loop !250

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
  %i.q = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !31
  %i.r = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i18
  %.sroa.0.011.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.06.010.i.i20 = phi ptr [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i20, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i19, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19, i64 -12 ; 2 uses
  %i.s = load float, ptr %.sroa.0.0.i.i21, align 4, !tbaa !31
  %i.t = fcmp reassoc nsz arcp contract afn olt float %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14, !llvm.loop !249

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ] ; 2 uses
  store float %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i15, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 4
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx5.i.i16, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 12 ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i12, !llvm.loop !251

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not17.i24
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.0.i32, %bb.n ], [ %.sroa.0.016.i23, %bb.h ] ; 7 uses
  %.pn18.i27 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.w = load float, ptr %.sroa.0.019.i26, align 4, !tbaa !31 ; 4 uses
  %i.x = load float, ptr %0, align 4, !tbaa !31
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i25
  %.sroa.058.0.copyload = load <3 x float>, ptr %.sroa.0.019.i26, align 4
  %i.z = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.aa = sub i64 %i.z, %i.b                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 12
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !162

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38: ; preds = %bb.l, %bb.k, %bb.j
  store <3 x float> %.sroa.058.0.copyload, ptr %0, align 4
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.ag = load i64, ptr %.sroa.5.0..sroa_idx.i.i28, align 4
  %i.ah = load float, ptr %.pn18.i27, align 4, !tbaa !31
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29

.lr.ph.i.i34:                                     ; preds = %bb.m, %.lr.ph.i.i34
  %.sroa.0.011.i.i35 = phi ptr [ %.sroa.0.0.i.i37, %.lr.ph.i.i34 ], [ %.pn18.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i36 = phi ptr [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ], [ %.sroa.0.019.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i36, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i35, i64 12, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i37 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i35, i64 -12 ; 2 uses
  %i.aj = load float, ptr %.sroa.0.0.i.i37, align 4, !tbaa !31
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i34, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29, !llvm.loop !249

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29: ; preds = %.lr.ph.i.i34, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.019.i26, %bb.m ], [ %.sroa.0.011.i.i35, %.lr.ph.i.i34 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i30, align 4, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 4
  store i64 %i.ag, ptr %.sroa.5.0..sroa_idx5.i.i31, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i38
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %.not.i33, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit, label %.lr.ph.i25, !llvm.loop !250

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_T0_.exit.i14, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8interpol10base_pointIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11spline_baseIfEC1INS1_IPNS2_5pointIfEES6_ISG_SaISG_EEEEEET_SL_RKNS2_6limitsIfEESP_bEUlRKS4_SR_E_EEEvSL_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol31monotone_hermite_spline_variantIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 19 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit155

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !20, !range !27, !noundef !28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !29
  %i.p = load float, ptr %i.m, align 8, !tbaa !30
  %i.q = fsub reassoc nsz arcp contract afn float %i.o, %i.p ; 2 uses
  %i.r = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not262 = icmp eq ptr %i.b, %i.c
  br i1 %.not262, label %.lr.ph369.preheader, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.s = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 unwind label %.thread ; 5 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.g ; 3 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20
          to label %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 unwind label %.thread ; 4 uses

_ZNSt6vectorIfSaIfEE7reserveEm.exit75:            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.g ; 2 uses
  %i.x = add nsw i64 %i.g, -1                     ; 2 uses
  %.not381 = icmp eq i64 %i.x, 0
  br i1 %.not381, label %._crit_edge370, label %.lr.ph369.preheader

.lr.ph369.preheader:                              ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75
  %i.y = phi i64 [ %i.x, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ -1, %bb.f ] ; 2 uses
  %.sroa.24.2459 = phi ptr [ %i.w, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ]
  %.sroa.0192.2458 = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ] ; 2 uses
  %.sroa.16216.1229457 = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ] ; 2 uses
  %.sroa.24219.3231456 = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ null, %bb.f ]
  br label %.lr.ph369

._crit_edge370.loopexit:                          ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97
  %.pre431 = load ptr, ptr %0, align 8, !tbaa !11
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75
  %i.z = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %i.y, %._crit_edge370.loopexit ] ; 4 uses
  %i.aa = phi ptr [ %i.c, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.pre431, %._crit_edge370.loopexit ] ; 4 uses
  %.sroa.0207.0.lcssa = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.0207.5, %._crit_edge370.loopexit ] ; 6 uses
  %.sroa.16216.0.lcssa = phi ptr [ %i.t, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.16216.2, %._crit_edge370.loopexit ] ; 4 uses
  %.sroa.24219.0.lcssa = phi ptr [ %i.u, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.24219.5, %._crit_edge370.loopexit ] ; 2 uses
  %.sroa.0192.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.0192.3, %._crit_edge370.loopexit ] ; 7 uses
  %.sroa.16.0.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.16.2, %._crit_edge370.loopexit ] ; 4 uses
  %.sroa.24.0.lcssa = phi ptr [ %i.w, %_ZNSt6vectorIfSaIfEE7reserveEm.exit75 ], [ %.sroa.24.3, %._crit_edge370.loopexit ] ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.z
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !31
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ab, %i.ad
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16216.0.lcssa, %.sroa.24219.0.lcssa
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge370
  store float %i.af, ptr %.sroa.16216.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.h:                                             ; preds = %._crit_edge370
  %i.ag = ptrtoint ptr %.sroa.16216.0.lcssa to i64
  %i.ah = ptrtoint ptr %.sroa.0207.0.lcssa to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc76 unwind label %bb.ac

.noexc76:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
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
          to label %.noexc77 unwind label %bb.ac  ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai
  store float %i.af, ptr %i.ar, align 4, !tbaa !34
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %.noexc77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.0207.0.lcssa, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %.noexc77
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0207.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0.lcssa, i64 noundef %i.ai) #19
  %.pre432.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %.pre432 = phi ptr [ %.pre432.pre, %bb.k ], [ %i.aa, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

.thread:                                          ; preds = %bb.e, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69
  %.sroa.0207.1 = phi ptr [ null, %bb.e ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.t, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 ]
  %.sroa.24219.1 = phi ptr [ null, %bb.e ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %i.u, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i69 ]
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

.lr.ph369:                                        ; preds = %.lr.ph369.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97
  %.052368 = phi i64 [ %i.av, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ 0, %.lr.ph369.preheader ] ; 3 uses
  %.sroa.24.0367 = phi ptr [ %.sroa.24.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.24.2459, %.lr.ph369.preheader ] ; 7 uses
  %.sroa.16.0366 = phi ptr [ %.sroa.16.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.0192.2458, %.lr.ph369.preheader ] ; 3 uses
  %.sroa.0192.0365 = phi ptr [ %.sroa.0192.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.0192.2458, %.lr.ph369.preheader ] ; 9 uses
  %.sroa.24219.0364 = phi ptr [ %.sroa.24219.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.24219.3231456, %.lr.ph369.preheader ] ; 5 uses
  %.sroa.16216.0363 = phi ptr [ %.sroa.16216.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.16216.1229457, %.lr.ph369.preheader ] ; 3 uses
  %.sroa.0207.0362 = phi ptr [ %.sroa.0207.5, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97 ], [ %.sroa.16216.1229457, %.lr.ph369.preheader ] ; 7 uses
  %i.av = add nuw i64 %.052368, 1                 ; 4 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !11    ; 4 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !31
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %.052368
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ay, %i.ba ; 2 uses
  %.not.i.i78 = icmp eq ptr %.sroa.16216.0363, %.sroa.24219.0364
  br i1 %.not.i.i78, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph369
  store float %i.bb, ptr %.sroa.16216.0363, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87

bb.m:                                             ; preds = %.lr.ph369
  %i.bc = ptrtoint ptr %.sroa.24219.0364 to i64
  %i.bd = ptrtoint ptr %.sroa.0207.0362 to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i80 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i80, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i.i81 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i81)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #20
          to label %.noexc86 unwind label %.loopexit ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store float %i.bb, ptr %i.bn, align 4, !tbaa !34
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82

bb.o:                                             ; preds = %.noexc86
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %.sroa.0207.0362, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i82

end_hunk_4
begin_hunk_5_@_ZN8interpol31monotone_hermite_spline_variantIfE4initEv:bb.a
  %i.bu = load <2 x float>, ptr %i.bs, align 4, !tbaa !34
  %i.bv = fsub reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bu ; 2 uses
  %shift = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.bv
  %i.bw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not.i.i88 = icmp eq ptr %.sroa.16.0366, %.sroa.24.0367
  br i1 %.not.i.i88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87
  store float %i.bw, ptr %.sroa.16.0366, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit87
  %i.bx = ptrtoint ptr %.sroa.24.0367 to i64
  %i.by = ptrtoint ptr %.sroa.0192.0365 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775804
  br i1 %i.ca, label %bb.s, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc95 unwind label %.loopexit.split-lp266

.noexc95:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89: ; preds = %bb.r
  %i.cb = ashr exact i64 %i.bz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i90 = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i90, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 2305843009213693951)
  %i.cf = select i1 %i.cd, i64 2305843009213693951, i64 %i.ce ; 3 uses
  %.not.i.i.i.i91 = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i91)
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #20
          to label %.noexc96 unwind label %.loopexit265 ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store float %i.bw, ptr %i.ci, align 4, !tbaa !34
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.t, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92

bb.t:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %.sroa.0192.0365, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92: ; preds = %bb.t, %.noexc96
  %.not.i17.i.i.i93 = icmp eq ptr %.sroa.0192.0365, null
  br i1 %.not.i17.i.i.i93, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0365, i64 noundef %i.bz) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i92
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cf
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit97

_ZNSt6vectorIfSaIfEE9push_backEOf.exit97:         ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94, %bb.q
  %.sroa.0192.3 = phi ptr [ %i.ch, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94 ], [ %.sroa.0192.0365, %bb.q ] ; 2 uses
  %.pn264 = phi ptr [ %i.ci, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94 ], [ %.sroa.16.0366, %bb.q ]
  %.sroa.24.3 = phi ptr [ %i.ck, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i94 ], [ %.sroa.24.0367, %bb.q ] ; 2 uses
  %.sroa.16.2 = getelementptr inbounds nuw i8, ptr %.pn264, i64 4 ; 2 uses
  %exitcond427.not = icmp eq i64 %i.av, %i.y
  br i1 %exitcond427.not, label %._crit_edge370.loopexit, label %.lr.ph369, !llvm.loop !252

.loopexit:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i79
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit265:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i89
  %lpad.loopexit267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp266:                            ; preds = %bb.s
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.g
  %i.cl = phi ptr [ %.pre432, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.0207.4 = phi ptr [ %i.aq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0207.0.lcssa, %bb.g ] ; 15 uses
  %.sroa.24219.4 = phi ptr [ %i.at, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.24219.0.lcssa, %bb.g ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !17
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cl, i64 %i.z ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !17
  %i.cr = fsub reassoc nsz arcp contract afn float %i.cn, %i.cq
  %i.cs = load float, ptr %i.cl, align 4, !tbaa !31
  %i.ct = load float, ptr %i.co, align 4, !tbaa !31
  %i.cu = fadd reassoc nsz arcp contract afn float %i.cs, %i.q
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.ct
  %i.cw = fdiv reassoc nsz arcp contract afn float %i.cr, %i.cv ; 2 uses
  %.not.i.i98 = icmp eq ptr %.sroa.16.0.lcssa, %.sroa.24.0.lcssa
  br i1 %.not.i.i98, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.cw, ptr %.sroa.16.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.cx = ptrtoint ptr %.sroa.16.0.lcssa to i64
  %i.cy = ptrtoint ptr %.sroa.0192.0.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775804
  br i1 %i.da, label %bb.x, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc105 unwind label %bb.ad

.noexc105:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.w
  %i.db = ashr exact i64 %i.cz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 2305843009213693951)
  %i.df = select i1 %i.dd, i64 2305843009213693951, i64 %i.de ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.dg = shl nuw nsw i64 %i.df, 2
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #20
          to label %.noexc106 unwind label %bb.ad ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz
  store float %i.cw, ptr %i.di, align 4, !tbaa !34
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.y, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102

bb.y:                                             ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %.sroa.0192.0.lcssa, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102: ; preds = %bb.y, %.noexc106
  %.not.i17.i.i.i103 = icmp eq ptr %.sroa.0192.0.lcssa, null
  br i1 %.not.i17.i.i.i103, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0.lcssa, i64 noundef %i.cz) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104: ; preds = %bb.z, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i102
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.df
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107

_ZNSt6vectorIfSaIfEE9push_backEOf.exit107:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104, %bb.v
  %.sroa.0192.4 = phi ptr [ %i.dh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104 ], [ %.sroa.0192.0.lcssa, %bb.v ] ; 14 uses
  %.sroa.24.4 = phi ptr [ %i.dk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i104 ], [ %.sroa.24.0.lcssa, %bb.v ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %i.z
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !34 ; 3 uses
  %i.dn = load float, ptr %.sroa.0192.4, align 4, !tbaa !34 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dm ; 2 uses
  %i.dp = fcmp reassoc nsz arcp contract afn ogt float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.aa, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107
  %i.dq = load float, ptr %.sroa.0207.4, align 4, !tbaa !34 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %i.z
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !34 ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dq, 2.000000e+00
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.ds
  %i.dv = fadd reassoc nsz arcp contract afn float %i.ds, %i.dq
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, 3.000000e+00
  %i.dx = fsub reassoc nsz arcp contract afn float %i.dn, %i.dm
  %i.dy = fmul reassoc nsz arcp contract afn float %i.du, %i.dx
  %i.dz = fdiv reassoc nsz arcp contract afn float %i.dy, %i.dw
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %i.dm
  %i.eb = fdiv reassoc nsz arcp contract afn float %i.do, %i.ea
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit: ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107, %bb.aa
  %.0.i = phi nsz float [ %i.eb, %bb.aa ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit107 ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !11    ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store float %.0.i, ptr %i.ed, align 4, !tbaa !36
  %i.ee = icmp ugt i64 %i.g, 1
  br i1 %i.ee, label %.lr.ph379.preheader, label %_ZNSt6vectorIfSaIfEED2Ev.exit109

.lr.ph379.preheader:                              ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit
  %i.ef = add nsw i64 %i.g, -1                    ; 2 uses
  %min.iters.check608 = icmp ult i64 %i.g, 9
  br i1 %min.iters.check608, label %.lr.ph379.preheader630, label %vector.memcheck595

vector.memcheck595:                               ; preds = %.lr.ph379.preheader
  %scevgep596 = getelementptr i8, ptr %i.ec, i64 20 ; 2 uses
  %scevgep597 = getelementptr i8, ptr %i.ec, i64 %i.f ; 2 uses
  %i.eg = shl nuw nsw i64 %i.g, 2                 ; 2 uses
  %scevgep598 = getelementptr i8, ptr %.sroa.0192.4, i64 %i.eg
  %scevgep599 = getelementptr i8, ptr %.sroa.0207.4, i64 %i.eg
  %bound0600 = icmp ult ptr %scevgep596, %scevgep598
  %bound1601 = icmp ult ptr %.sroa.0192.4, %scevgep597
  %found.conflict602 = and i1 %bound0600, %bound1601
  %bound0603 = icmp ult ptr %scevgep596, %scevgep599
  %bound1604 = icmp ult ptr %.sroa.0207.4, %scevgep597
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %found.conflict602, %found.conflict605
  br i1 %conflict.rdx606, label %.lr.ph379.preheader630, label %vector.ph609

vector.ph609:                                     ; preds = %vector.memcheck595
  %n.vec610 = and i64 %i.ef, -8                   ; 3 uses
  %i.eh = or disjoint i64 %n.vec610, 1
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph609
  %index612 = phi i64 [ 0, %vector.ph609 ], [ %index.next621, %vector.body611 ] ; 4 uses
  %vec.ind613 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph609 ], [ %vec.ind.next622, %vector.body611 ] ; 2 uses
  %i.ei = or disjoint i64 %index612, 1            ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %index612
  %wide.load614 = load <8 x float>, ptr %i.ej, align 4, !tbaa !34, !alias.scope !253 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %i.ei
  %wide.load615 = load <8 x float>, ptr %i.ek, align 4, !tbaa !34, !alias.scope !253 ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn <8 x float> %wide.load615, %wide.load614 ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.el, zeroinitializer ; 3 uses
  %i.en = getelementptr [4 x i8], ptr %.sroa.0207.4, i64 %i.ei
  %wide.masked.load616 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.en, <8 x i1> %i.em, <8 x float> poison), !tbaa !34, !alias.scope !256 ; 2 uses
  %i.eo = getelementptr [4 x i8], ptr %.sroa.0207.4, i64 %index612
  %wide.masked.load617 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.eo, <8 x i1> %i.em, <8 x float> poison), !tbaa !34, !alias.scope !256 ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load616, splat (float 2.000000e+00)
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %wide.masked.load617
  %i.er = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load617, %wide.masked.load616
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.er, splat (float 3.000000e+00)
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %wide.load615, %wide.load614
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.eq, %i.et
  %i.ev = fdiv reassoc nsz arcp contract afn <8 x float> %i.eu, %i.es
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %wide.load614
  %i.ex = fdiv reassoc nsz arcp contract afn <8 x float> %i.el, %i.ew
  %predphi618 = select nsz <8 x i1> %i.em, <8 x float> %i.ex, <8 x float> zeroinitializer
  %wide.gep619 = getelementptr inbounds nuw [12 x i8], ptr %i.ec, <8 x i64> %vec.ind613
  %wide.gep620 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep619, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi618, <8 x ptr> align 4 %wide.gep620, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !258, !noalias !260
  %index.next621 = add nuw i64 %index612, 8       ; 2 uses
  %vec.ind.next622 = add nuw <8 x i64> %vec.ind613, splat (i64 8)
  %i.ey = icmp eq i64 %index.next621, %n.vec610
  br i1 %i.ey, label %middle.block623, label %vector.body611, !llvm.loop !261

middle.block623:                                  ; preds = %vector.body611
  %cmp.n624 = icmp eq i64 %i.ef, %n.vec610
  br i1 %cmp.n624, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph379.preheader630

.lr.ph379.preheader630:                           ; preds = %vector.memcheck595, %.lr.ph379.preheader, %middle.block623
  %.051378.ph = phi i64 [ 1, %vector.memcheck595 ], [ 1, %.lr.ph379.preheader ], [ %i.eh, %middle.block623 ] ; 7 uses
  %.neg = add nsw i64 %.051378.ph, 1
  %i.ez = and i64 %i.g, 1
  %lcmp.mod677.not.not = icmp eq i64 %i.ez, 0
  br i1 %lcmp.mod677.not.not, label %.lr.ph379.prol, label %.lr.ph379.prol.loopexit

.lr.ph379.prol:                                   ; preds = %.lr.ph379.preheader630
  %i.fa = add nsw i64 %.051378.ph, -1             ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !34 ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %.051378.ph
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !34 ; 2 uses
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, %i.fc ; 2 uses
  %i.fg = fcmp reassoc nsz arcp contract afn ogt float %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.ab, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol

bb.ab:                                            ; preds = %.lr.ph379.prol
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %.051378.ph
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !34 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %i.fa
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !34 ; 2 uses
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fi, 2.000000e+00
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.fk
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fk, %i.fi
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, 3.000000e+00
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fe, %i.fc
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fm, %i.fp
  %i.fr = fdiv reassoc nsz arcp contract afn float %i.fq, %i.fo
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.fc
  %i.ft = fdiv reassoc nsz arcp contract afn float %i.ff, %i.fs
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol: ; preds = %bb.ab, %.lr.ph379.prol
  %.0.i110.prol = phi nsz float [ %i.ft, %bb.ab ], [ 0.000000e+00, %.lr.ph379.prol ]
  %i.fu = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %.051378.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store float %.0.i110.prol, ptr %i.fv, align 4, !tbaa !36
  %i.fw = add nuw nsw i64 %.051378.ph, 1
  br label %.lr.ph379.prol.loopexit

.lr.ph379.prol.loopexit:                          ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol, %.lr.ph379.preheader630
  %.051378.unr = phi i64 [ %.051378.ph, %.lr.ph379.preheader630 ], [ %i.fw, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.prol ]
  %i.fx = icmp eq i64 %i.g, %.neg
  br i1 %i.fx, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph379

_ZNSt6vectorIfSaIfEED2Ev.exit109:                 ; preds = %.lr.ph379.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1, %middle.block623, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit
  %i.fy = ptrtoint ptr %.sroa.24.4 to i64
  %i.fz = ptrtoint ptr %.sroa.0192.4 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.4, i64 noundef %i.ga) #19
  %i.gb = ptrtoint ptr %.sroa.24219.4 to i64
  %i.gc = ptrtoint ptr %.sroa.0207.4 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.4, i64 noundef %i.gd) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit155

bb.ac:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i99, %bb.x
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph379:                                        ; preds = %.lr.ph379.prol.loopexit, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1
  %.051378 = phi i64 [ %i.hy, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1 ], [ %.051378.unr, %.lr.ph379.prol.loopexit ] ; 8 uses
  %i.gg = add i64 %.051378, -1                    ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !34 ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %.051378
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !34 ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.gi ; 2 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.ae, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111

bb.ae:                                            ; preds = %.lr.ph379
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %.051378
  %i.go = load float, ptr %i.gn, align 4, !tbaa !34 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %i.gg
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !34 ; 2 uses
  %i.gr = fmul reassoc nsz arcp contract afn float %i.go, 2.000000e+00
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, %i.gq
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gq, %i.go
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, 3.000000e+00
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gk, %i.gi
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gs, %i.gv
  %i.gx = fdiv reassoc nsz arcp contract afn float %i.gw, %i.gu
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gx, %i.gi
  %i.gz = fdiv reassoc nsz arcp contract afn float %i.gl, %i.gy
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111: ; preds = %.lr.ph379, %bb.ae
  %.0.i110 = phi nsz float [ %i.gz, %bb.ae ], [ 0.000000e+00, %.lr.ph379 ]
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %.051378
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float %.0.i110, ptr %i.hb, align 4, !tbaa !36
  %i.hc = add nuw i64 %.051378, 1                 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %.051378
  %i.he = load float, ptr %i.hd, align 4, !tbaa !34 ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.4, i64 %i.hc
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !34 ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, %i.he ; 2 uses
  %i.hi = fcmp reassoc nsz arcp contract afn ogt float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.af, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1

bb.af:                                            ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %i.hc
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !34 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.4, i64 %.051378
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !34 ; 2 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hk, 2.000000e+00
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, %i.hm
  %i.hp = fadd reassoc nsz arcp contract afn float %i.hm, %i.hk
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, 3.000000e+00
  %i.hr = fsub reassoc nsz arcp contract afn float %i.hg, %i.he
  %i.hs = fmul reassoc nsz arcp contract afn float %i.ho, %i.hr
  %i.ht = fdiv reassoc nsz arcp contract afn float %i.hs, %i.hq
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.he
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hh, %i.hu
  br label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111.1: ; preds = %bb.af, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111
  %.0.i110.1 = phi nsz float [ %i.hv, %bb.af ], [ 0.000000e+00, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit111 ]
  %i.hw = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %i.hc
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store float %.0.i110.1, ptr %i.hx, align 4, !tbaa !36
  %i.hy = add nuw i64 %.051378, 2                 ; 2 uses
  %exitcond428.not.1 = icmp eq i64 %i.hy, %i.g
  br i1 %exitcond428.not.1, label %_ZNSt6vectorIfSaIfEED2Ev.exit109, label %.lr.ph379, !llvm.loop !262

bb.ag:                                            ; preds = %.loopexit265, %.loopexit.split-lp266, %.loopexit, %.loopexit.split-lp, %bb.ad, %bb.ac
  %.sroa.0192.0299 = phi ptr [ %.sroa.0192.0.lcssa, %bb.ad ], [ %.sroa.0192.0.lcssa, %bb.ac ], [ %.sroa.0192.0365, %.loopexit.split-lp ], [ %.sroa.0192.0365, %.loopexit ], [ %.sroa.0192.0365, %.loopexit265 ], [ %.sroa.0192.0365, %.loopexit.split-lp266 ] ; 3 uses
  %.sroa.24.0288 = phi ptr [ %.sroa.16.0.lcssa, %bb.ad ], [ %.sroa.24.0.lcssa, %bb.ac ], [ %.sroa.24.0367, %.loopexit.split-lp ], [ %.sroa.24.0367, %.loopexit ], [ %.sroa.24.0367, %.loopexit265 ], [ %.sroa.24.0367, %.loopexit.split-lp266 ]
  %.sroa.0207.2 = phi ptr [ %.sroa.0207.4, %bb.ad ], [ %.sroa.0207.0.lcssa, %bb.ac ], [ %.sroa.0207.0362, %.loopexit.split-lp ], [ %.sroa.0207.0362, %.loopexit ], [ %.sroa.0207.5, %.loopexit265 ], [ %.sroa.0207.5, %.loopexit.split-lp266 ] ; 2 uses
  %.sroa.24219.2 = phi ptr [ %.sroa.24219.4, %bb.ad ], [ %.sroa.16216.0.lcssa, %bb.ac ], [ %.sroa.24219.0364, %.loopexit.split-lp ], [ %.sroa.24219.0364, %.loopexit ], [ %.sroa.24219.5, %.loopexit265 ], [ %.sroa.24219.5, %.loopexit.split-lp266 ] ; 2 uses
  %.pn64.pn = phi { ptr, i32 } [ %i.gf, %bb.ad ], [ %i.ge, %bb.ac ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ] ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %.sroa.0192.0299, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit113, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hz = ptrtoint ptr %.sroa.24.0288 to i64
  %i.ia = ptrtoint ptr %.sroa.0192.0299 to i64
  %i.ib = sub i64 %i.hz, %i.ia
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0299, i64 noundef %i.ib) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit113

_ZNSt6vectorIfSaIfEED2Ev.exit113:                 ; preds = %.thread, %bb.ag, %bb.ah
  %.pn64.pn241 = phi { ptr, i32 } [ %i.au, %.thread ], [ %.pn64.pn, %bb.ag ], [ %.pn64.pn, %bb.ah ] ; 2 uses
  %.sroa.24219.2240 = phi ptr [ %.sroa.24219.1, %.thread ], [ %.sroa.24219.2, %bb.ag ], [ %.sroa.24219.2, %bb.ah ]
  %.sroa.0207.2239 = phi ptr [ %.sroa.0207.1, %.thread ], [ %.sroa.0207.2, %bb.ag ], [ %.sroa.0207.2, %bb.ah ] ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.sroa.0207.2239, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIfSaIfEED2Ev.exit115, label %_ZNSt6vectorIfSaIfEED2Ev.exit115.sink.split

bb.ai:                                            ; preds = %bb.c
  %i.ic = add nsw i64 %i.g, -1                    ; 9 uses
  %i.id = icmp ugt i64 %i.ic, 2305843009213693951
  br i1 %i.id, label %bb.aj, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc120 unwind label %.thread251

.noexc120:                                        ; preds = %bb.aj
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116: ; preds = %bb.ai
  %.not = icmp ne i64 %i.ic, 0
  tail call void @llvm.assume(i1 %.not)
  %i.ie = shl nuw nsw i64 %i.ic, 2                ; 2 uses
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #20
          to label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 unwind label %.thread251 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123: ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ic ; 2 uses
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #20
          to label %.lr.ph.preheader unwind label %.thread251 ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ic
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149
  %.pre429 = load ptr, ptr %0, align 8, !tbaa !11 ; 8 uses
  %i.ij = load float, ptr %.sroa.0.3, align 4, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %.pre429, i64 8
  store float %i.ij, ptr %i.ik, align 4, !tbaa !36
  %.not541 = icmp eq i64 %i.ic, 1
  br i1 %.not541, label %._crit_edge361.thread, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %._crit_edge
  %i.il = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.il, 8
  br i1 %min.iters.check, label %.lr.ph360.preheader653, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph360.preheader
  %scevgep = getelementptr i8, ptr %.pre429, i64 20 ; 2 uses
  %i.im = getelementptr i8, ptr %.pre429, i64 %i.f
  %scevgep586 = getelementptr i8, ptr %i.im, i64 -12 ; 2 uses
  %i.in = shl nuw nsw i64 %i.g, 2
  %i.io = add nsw i64 %i.in, -4                   ; 2 uses
  %scevgep587 = getelementptr i8, ptr %.sroa.0.3, i64 %i.io
  %scevgep588 = getelementptr i8, ptr %.sroa.0174.4, i64 %i.io
  %bound0 = icmp ult ptr %scevgep, %scevgep587
  %bound1 = icmp ult ptr %.sroa.0.3, %scevgep586
  %found.conflict = and i1 %bound0, %bound1
  %bound0589 = icmp ult ptr %scevgep, %scevgep588
  %bound1590 = icmp ult ptr %.sroa.0174.4, %scevgep586
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx = or i1 %found.conflict, %found.conflict591
  br i1 %conflict.rdx, label %.lr.ph360.preheader653, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.il, -8                      ; 3 uses
  %i.ip = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.iq = or disjoint i64 %index, 1               ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %index
  %wide.load = load <8 x float>, ptr %i.ir, align 4, !tbaa !34, !alias.scope !263 ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.iq
  %wide.load592 = load <8 x float>, ptr %i.is, align 4, !tbaa !34, !alias.scope !263 ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn <8 x float> %wide.load592, %wide.load ; 2 uses
  %i.iu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.it, zeroinitializer ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %.sroa.0174.4, i64 %i.iq
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.iv, <8 x i1> %i.iu, <8 x float> poison), !tbaa !34, !alias.scope !266 ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %.sroa.0174.4, i64 %index
  %wide.masked.load593 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.iw, <8 x i1> %i.iu, <8 x float> poison), !tbaa !34, !alias.scope !266 ; 2 uses
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, splat (float 2.000000e+00)
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.ix, %wide.masked.load593
  %i.iz = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load593, %wide.masked.load
  %i.ja = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, splat (float 3.000000e+00)
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load592, %wide.load
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %i.jb
  %i.jd = fdiv reassoc nsz arcp contract afn <8 x float> %i.jc, %i.ja
  %i.je = fadd reassoc nsz arcp contract afn <8 x float> %i.jd, %wide.load
  %i.jf = fdiv reassoc nsz arcp contract afn <8 x float> %i.it, %i.je
  %predphi = select nsz <8 x i1> %i.iu, <8 x float> %i.jf, <8 x float> zeroinitializer
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %.pre429, <8 x i64> %vec.ind
  %wide.gep594 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi, <8 x ptr> align 4 %wide.gep594, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !268, !noalias !270
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.il, %n.vec
  br i1 %cmp.n, label %._crit_edge361, label %.lr.ph360.preheader653

.lr.ph360.preheader653:                           ; preds = %vector.memcheck, %.lr.ph360.preheader, %middle.block
  %.0358.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph360.preheader ], [ %i.ip, %middle.block ] ; 7 uses
  %i.jh = add nsw i64 %i.g, -2
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader653
  %i.ji = add nsw i64 %.0358.ph, -1               ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !34 ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.0358.ph
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !34 ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.jk ; 2 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ogt float %i.jn, 0.000000e+00
  br i1 %i.jo, label %bb.ak, label %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol

bb.ak:                                            ; preds = %.lr.ph360.prol
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0174.4, i64 %.0358.ph
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !34 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0174.4, i64 %i.ji
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

_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol: ; preds = %bb.ak, %.lr.ph360.prol
  %.0.i150.prol = phi nsz float [ %i.kb, %bb.ak ], [ 0.000000e+00, %.lr.ph360.prol ]
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %.pre429, i64 %.0358.ph
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store float %.0.i150.prol, ptr %i.kd, align 4, !tbaa !36
  %i.ke = add nuw nsw i64 %.0358.ph, 1
  br label %.lr.ph360.prol.loopexit

.lr.ph360.prol.loopexit:                          ; preds = %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol, %.lr.ph360.preheader653
  %.0358.unr = phi i64 [ %.0358.ph, %.lr.ph360.preheader653 ], [ %i.ke, %_ZN8interpol31monotone_hermite_spline_variantIfE1GEffff.exit151.prol ]
  %i.kf = icmp eq i64 %i.jh, %.0358.ph
  br i1 %i.kf, label %._crit_edge361, label %.lr.ph360

.thread251:                                       ; preds = %bb.aj, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123
  %.sroa.0174.1 = phi ptr [ null, %bb.aj ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116 ], [ %i.if, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 ]
  %.sroa.17.1 = phi ptr [ null, %bb.aj ], [ null, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i116 ], [ %i.ig, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i123 ]
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit157

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149
  %.050354 = phi i64 [ %i.kh, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.19.0353 = phi ptr [ %.sroa.19.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ii, %.lr.ph.preheader ] ; 4 uses
  %.sroa.14.0352 = phi ptr [ %.sroa.14.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ih, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0351 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ih, %.lr.ph.preheader ] ; 8 uses
  %.sroa.17.0350 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.ig, %.lr.ph.preheader ] ; 5 uses
  %.sroa.12.0349 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.if, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0174.0348 = phi ptr [ %.sroa.0174.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit149 ], [ %i.if, %.lr.ph.preheader ] ; 7 uses
  %i.kh = add nuw i64 %.050354, 1                 ; 4 uses
  %i.ki = load ptr, ptr %0, align 8, !tbaa !11    ; 4 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.ki, i64 %i.kh
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !31
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.ki, i64 %.050354
  %i.km = load float, ptr %i.kl, align 4, !tbaa !31
  %i.kn = fsub reassoc nsz arcp contract afn float %i.kk, %i.km ; 2 uses
  %.not.i.i130 = icmp eq ptr %.sroa.12.0349, %.sroa.17.0350
  br i1 %.not.i.i130, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  store float %i.kn, ptr %.sroa.12.0349, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139

bb.am:                                            ; preds = %.lr.ph
  %i.ko = ptrtoint ptr %.sroa.17.0350 to i64
  %i.kp = ptrtoint ptr %.sroa.0174.0348 to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 6 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775804
  br i1 %i.kr, label %bb.an, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc137 unwind label %.loopexit.split-lp271

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
          to label %.noexc138 unwind label %.loopexit270 ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i131
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  store float %i.kn, ptr %i.kz, align 4, !tbaa !34
  %i.la = icmp sgt i64 %i.kq, 0
  br i1 %i.la, label %bb.ao, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134

bb.ao:                                            ; preds = %.noexc138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ky, ptr align 4 %.sroa.0174.0348, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134: ; preds = %bb.ao, %.noexc138
  %.not.i17.i.i.i135 = icmp eq ptr %.sroa.0174.0348, null
  br i1 %.not.i17.i.i.i135, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0174.0348, i64 noundef %i.kq) #19
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136: ; preds = %bb.ap, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134
  %.pre = phi ptr [ %.pre.pre, %bb.ap ], [ %i.ki, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i134 ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kw
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139

_ZNSt6vectorIfSaIfEE9push_backEOf.exit139:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136, %bb.al
  %i.lc = phi ptr [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %i.ki, %bb.al ] ; 2 uses
  %.sroa.0174.4 = phi ptr [ %i.ky, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.0174.0348, %bb.al ] ; 16 uses
  %.pn = phi ptr [ %i.kz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.12.0349, %bb.al ]
  %.sroa.17.4 = phi ptr [ %i.lb, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i136 ], [ %.sroa.17.0350, %bb.al ] ; 4 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %i.kh
  %i.le = getelementptr inbounds nuw [12 x i8], ptr %i.lc, i64 %.050354
  %i.lf = load <2 x float>, ptr %i.ld, align 4, !tbaa !34
  %i.lg = load <2 x float>, ptr %i.le, align 4, !tbaa !34
  %i.lh = fsub reassoc nsz arcp contract afn <2 x float> %i.lf, %i.lg ; 2 uses
  %shift627 = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop628 = fdiv reassoc nsz arcp contract afn <2 x float> %shift627, %i.lh
  %i.li = extractelement <2 x float> %foldExtExtBinop628, i64 0 ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.14.0352, %.sroa.19.0353
  br i1 %.not.i.i140, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit139
  store float %i.li, ptr %.sroa.14.0352, align 4, !tbaa !34
end_hunk_5
begin_hunk_6_@llvm.umax.i64
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN8interpol10base_pointIfEESaIS2_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSN8interpol10base_pointIfEE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!12, !13, i64 16}
!16 = !{!12, !13, i64 8}
!17 = !{!18, !19, i64 4}
!18 = !{!"_ZTSN8interpol10base_pointIfEE", !19, i64 0, !19, i64 4, !19, i64 8}
!19 = !{!"float", !9, i64 0}
!20 = !{!21, !26, i64 40}
!21 = !{!"_ZTSN8interpol11spline_baseIfEE", !22, i64 0, !25, i64 24, !25, i64 32, !26, i64 40}
!22 = !{!"_ZTSSt6vectorIN8interpol10base_pointIfEESaIS2_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN8interpol10base_pointIfEESaIS2_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN8interpol10base_pointIfEESaIS2_EE12_Vector_implE", !12, i64 0}
!25 = !{!"_ZTSN8interpol6limitsIfEE", !19, i64 0, !19, i64 4}
!26 = !{!"bool", !9, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!21, !19, i64 28}
!30 = !{!21, !19, i64 24}
!31 = !{!18, !19, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!19, !19, i64 0}
!35 = distinct !{!35, !33}
!36 = !{!18, !19, i64 8}
!37 = !{!25, !19, i64 0}
!38 = !{!25, !19, i64 4}
!39 = !{!40, !19, i64 4}
!40 = !{!"_ZTS9CurveData", !8, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !9, i64 20, !9, i64 24}
!41 = !{!40, !19, i64 12}
!42 = !{!40, !9, i64 20}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!45 = distinct !{!45, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!48 = !{!49, !19, i64 0}
!49 = !{!"_ZTS16CurveAnchorPoint", !19, i64 0, !19, i64 4}
!50 = !{!49, !19, i64 4}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!53 = distinct !{!53, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!56 = distinct !{!56, !33, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = distinct !{!60, !33, !57, !58}
!61 = distinct !{!61, !33, !57}
!62 = distinct !{!62, !33}
!63 = !{!64, !8, i64 0}
!64 = !{!"_ZTS11CurveSample", !8, i64 0, !8, i64 4, !65, i64 8}
!65 = !{!"p1 short", !14, i64 0}
!66 = !{!67, !19, i64 0}
!67 = !{!"_ZTSN8interpol5pointIfEE", !19, i64 0, !19, i64 4}
!68 = !{!67, !19, i64 4}
!69 = !{!64, !8, i64 4}
!70 = !{!40, !19, i64 16}
!71 = !{!40, !8, i64 0}
!72 = !{!64, !65, i64 8}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !9, i64 0}
!75 = distinct !{!75, !33}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!81 = !{!82}
!82 = distinct !{!82, !80, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_ZSt19__relocate_object_aIN8interpol5pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!88 = distinct !{!88, !33, !57, !58}
!89 = distinct !{!89, !33, !57, !58}
!90 = distinct !{!90, !33, !57}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = !{!13, !13, i64 0}
!96 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!99 = distinct !{!99, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!100 = distinct !{!100, !99, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = !{!105, !106, i64 0}
!105 = !{!"_ZTSN8interpol19smooth_cubic_splineIfE6matrixE", !106, i64 0, !26, i64 8, !107, i64 16}
!106 = !{!"long", !9, i64 0}
!107 = !{!"_ZTSSt6vectorIfSaIfEE", !108, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !110, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 float", !14, i64 0}
!112 = !{!105, !26, i64 8}
!113 = !{!110, !111, i64 0}
!114 = !{!110, !111, i64 16}
!115 = !{!110, !111, i64 8}
!116 = !{!117}
!117 = distinct !{!117, !118}
!118 = distinct !{!118, !"LVerDomain"}
!119 = !{!120}
!120 = distinct !{!120, !118}
!121 = !{!122, !123, !124, !117, !125}
!122 = distinct !{!122, !118}
!123 = distinct !{!123, !118}
!124 = distinct !{!124, !118}
!125 = distinct !{!125, !118}
!126 = !{!122}
!127 = !{!123, !124, !117, !125}
!128 = !{!123}
!129 = !{!124, !117, !125}
!130 = !{!125}
!131 = !{!124}
!132 = !{!117, !125}
!133 = distinct !{!133, !33, !57, !58}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33, !57}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !139}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = distinct !{!140, !33, !57}
!141 = distinct !{!141, !33}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = !{!148}
!148 = distinct !{!148, !144}
!149 = !{!150}
!150 = distinct !{!150, !144}
!151 = !{!143, !146, !148}
!152 = distinct !{!152, !33, !57, !58}
!153 = distinct !{!153, !33, !57}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !33}
!162 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !139}
!167 = distinct !{!167, !33, !168}
!168 = !{!"llvm.loop.peeled.count", i32 1}
!169 = distinct !{!169, !33}
!170 = !{!171}
!171 = distinct !{!171, !172}
!172 = distinct !{!172, !"LVerDomain"}
!173 = !{!174}
!174 = distinct !{!174, !172}
!175 = distinct !{!175, !33, !57, !58}
!176 = !{!177}
!177 = distinct !{!177, !172}
!178 = !{!"branch_weights", i32 4, i32 28}
!179 = distinct !{!179, !33, !57, !58}
!180 = distinct !{!180, !139}
!181 = distinct !{!181, !33}
!182 = distinct !{!182, !33, !57}
!183 = distinct !{!183, !139}
!184 = distinct !{!184, !33}
!185 = distinct !{!185, !33}
!186 = distinct !{!186, !33, !57, !58}
!187 = distinct !{!187, !33, !58, !57}
!188 = distinct !{!188, !33, !57, !58}
!189 = distinct !{!189, !33, !58, !57}
!190 = distinct !{!190, !33}
!191 = !{!192}
!192 = distinct !{!192, !193}
!193 = distinct !{!193, !"LVerDomain"}
!194 = !{!195}
!195 = distinct !{!195, !193}
!196 = distinct !{!196, !33, !57, !58}
!197 = distinct !{!197, !139}
!198 = distinct !{!198, !33, !57}
!199 = distinct !{!199, !33}
!200 = !{!201}
!201 = distinct !{!201, !202}
!202 = distinct !{!202, !"LVerDomain"}
!203 = !{!204}
!204 = distinct !{!204, !202}
!205 = distinct !{!205, !33, !57, !58}
!206 = distinct !{!206, !139}
!207 = distinct !{!207, !33}
!208 = distinct !{!208, !33, !57}
!209 = distinct !{!209, !33}
!210 = !{!211, !213}
!211 = distinct !{!211, !212, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!212 = distinct !{!212, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!213 = distinct !{!213, !212, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!214 = distinct !{!214, !33}
!215 = !{!216, !218}
!216 = distinct !{!216, !217, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!217 = distinct !{!217, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!218 = distinct !{!218, !217, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!219 = distinct !{!219, !33}
!220 = distinct !{!220, !33}
!221 = distinct !{!221, !33}
!222 = distinct !{!222, !33}
!223 = distinct !{!223, !33}
!224 = distinct !{!224, !33}
!225 = distinct !{!225, !33}
!226 = distinct !{!226, !33}
!227 = distinct !{!227, !33}
!228 = distinct !{!228, !33}
!229 = distinct !{!229, !33}
!230 = distinct !{!230, !33}
!231 = !{!232, !234}
!232 = distinct !{!232, !233, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!233 = distinct !{!233, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!234 = distinct !{!234, !233, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!235 = distinct !{!235, !33}
!236 = !{!237, !239}
!237 = distinct !{!237, !238, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!238 = distinct !{!238, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!239 = distinct !{!239, !238, !"_ZSt19__relocate_object_aIN8interpol10base_pointIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!240 = distinct !{!240, !33}
!241 = distinct !{!241, !33}
!242 = distinct !{!242, !33}
!243 = distinct !{!243, !33}
!244 = distinct !{!244, !33}
!245 = distinct !{!245, !33}
!246 = distinct !{!246, !33}
!247 = distinct !{!247, !33}
!248 = distinct !{!248, !33}
!249 = distinct !{!249, !33}
!250 = distinct !{!250, !33}
!251 = distinct !{!251, !33}
!252 = distinct !{!252, !33}
!253 = !{!254}
!254 = distinct !{!254, !255}
!255 = distinct !{!255, !"LVerDomain"}
!256 = !{!257}
!257 = distinct !{!257, !255}
!258 = !{!259}
!259 = distinct !{!259, !255}
!260 = !{!254, !257}
!261 = distinct !{!261, !33, !57, !58}
!262 = distinct !{!262, !33, !57}
!263 = !{!264}
!264 = distinct !{!264, !265}
!265 = distinct !{!265, !"LVerDomain"}
!266 = !{!267}
!267 = distinct !{!267, !265}
!268 = !{!269}
!269 = distinct !{!269, !265}
!270 = !{!264, !267}
!271 = distinct !{!271, !33, !57, !58}
!272 = distinct !{!272, !33}
!273 = distinct !{!273, !33, !57}
end_hunk_6
