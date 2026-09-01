Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z16setSuperoperatorISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEvPPS2_T_ix:bb.a
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader78, label %.preheader79.preheader

.preheader79.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = icmp ne i64 %xtraiter, 0
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %.epilog-lcssa
  %.04783 = phi i64 [ %i.j, %.epilog-lcssa ], [ 0, %.preheader79.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04783 ; 5 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader79.new

.preheader78:                                     ; preds = %.epilog-lcssa, %bb.a
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge93

.lr.ph:                                           ; preds = %.preheader78
  %.not94 = icmp eq i64 %i.a, 63
  %smax = tail call i64 @llvm.smax.i64(i64 %i.b, i64 1) ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.c

.unr-lcssa:                                       ; preds = %.preheader79.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader79
  %.04682.epil.init = phi i64 [ 0, %.preheader79 ], [ %i.v, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.04682.epil = phi i64 [ %.04682.epil.init, %.epil.preheader ], [ %i.i, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.04682.epil
  %i.i = add nuw nsw i64 %.04682.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !175

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.j = add nuw nsw i64 %.04783, 1               ; 2 uses
  %exitcond99.not = icmp eq i64 %i.j, %i.c
  br i1 %exitcond99.not, label %.preheader78, label %.preheader79, !llvm.loop !176

.preheader79.new:                                 ; preds = %.preheader79, %.preheader79.new
  %.04682 = phi i64 [ %i.v, %.preheader79.new ], [ 0, %.preheader79 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader79.new ], [ 0, %.preheader79 ]
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.04682
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.04682
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.04682
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.04682
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = add nuw nsw i64 %.04682, 4               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader79.new, !llvm.loop !177

._crit_edge93:                                    ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %.preheader78
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !168  ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !165 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.af, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !25

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #30
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !178
  %.pre106 = load ptr, ptr %i.y, align 8, !tbaa !178
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.ah = phi ptr [ %i.z, %bb.c ], [ %.pre106, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.ai = phi ptr [ %i.aa, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.aj = phi ptr [ null, %bb.c ], [ %i.ag, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ai, ptr %i.ah, ptr noundef %i.aj)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader unwind label %bb.f ; 2 uses

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader: ; preds = %bb.e
  br i1 %.not94, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge, label %.preheader77

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ad) #31
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit.i

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.al

.preheader77:                                     ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader, %._crit_edge90
  %.04491 = phi i64 [ %i.aw, %._crit_edge90 ], [ 0, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader ] ; 3 uses
  %i.am = shl i64 %.04491, %i.a
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.04491
  %invariant.gep87 = getelementptr [8 x i8], ptr %0, i64 %i.am
  br label %.preheader76

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge: ; preds = %._crit_edge90, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit.preheader
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !171
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.au, %i.ak
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !172

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ad) #31
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond105.not, label %._crit_edge93, label %bb.c, !llvm.loop !179

.preheader76:                                     ; preds = %.preheader77, %._crit_edge86
  %.04389 = phi i64 [ 0, %.preheader77 ], [ %i.ay, %._crit_edge86 ] ; 3 uses
  %i.av = shl i64 %.04389, %i.a
  br label %.preheader

._crit_edge90:                                    ; preds = %._crit_edge86
  %i.aw = add nuw nsw i64 %.04491, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.aw, %smax
  br i1 %exitcond103.not, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit._crit_edge, label %.preheader77, !llvm.loop !180

.preheader:                                       ; preds = %.preheader76, %._crit_edge
  %.04285 = phi i64 [ 0, %.preheader76 ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.04285
  %gep88 = getelementptr [8 x i8], ptr %invariant.gep87, i64 %.04285
  br label %bb.j

._crit_edge86:                                    ; preds = %._crit_edge
  %i.ay = add nuw nsw i64 %.04389, 1              ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ay, %smax
  br i1 %exitcond102.not, label %._crit_edge90, label %.preheader76, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.m
  %i.az = add nuw nsw i64 %.04285, 1              ; 2 uses
  %exitcond101.not = icmp eq i64 %i.az, %smax
  br i1 %exitcond101.not, label %._crit_edge86, label %.preheader, !llvm.loop !182

bb.j:                                             ; preds = %.preheader, %bb.m
  %.084 = phi i64 [ 0, %.preheader ], [ %i.cb, %bb.m ] ; 3 uses
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !169
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %.04389 ; 2 uses
  %4 = load double, ptr %i.bb, align 8, !tbaa !71 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %6 = load double, ptr %5, align 8, !tbaa !71    ; 2 uses
  %7 = fneg double %6
  %8 = load ptr, ptr %i.ax, align 8, !tbaa !169
  %9 = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.084
  %i.bc = load <2 x double>, ptr %9, align 8      ; 4 uses
  %10 = insertelement <2 x double> poison, double %4, i64 0
  %i.bd = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bd, %i.bc          ; 2 uses
  %11 = insertelement <2 x double> poison, double %6, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fmul <2 x double> %12, %i.bf            ; 2 uses
  %i.bh = fadd <2 x double> %i.be, %i.bg          ; 2 uses
  %i.bi = fsub <2 x double> %i.be, %i.bg          ; 2 uses
  %i.bj = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bk = extractelement <2 x double> %i.bh, i64 0
  %i.bl = fcmp uno double %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.k, label %bb.m, !prof !112

bb.k:                                             ; preds = %bb.j
  %i.bm = extractelement <2 x double> %i.bi, i64 1
  %i.bn = fcmp uno double %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !112

bb.l:                                             ; preds = %bb.k
  %i.bo = extractelement <2 x double> %i.bc, i64 0
  %i.bp = extractelement <2 x double> %i.bc, i64 1
  %i.bq = tail call noundef { double, double } @__muldc3(double noundef %4, double noundef %7, double noundef %i.bo, double noundef %i.bp) #32 ; 2 uses
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  %i.bt = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bv = phi <2 x double> [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ %i.bu, %bb.l ]
  %i.bw = load ptr, ptr %gep88, align 8, !tbaa !63
  %i.bx = getelementptr [16 x i8], ptr %i.bw, i64 %i.av
  %i.by = getelementptr [16 x i8], ptr %i.bx, i64 %.084 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.by, align 8
  %i.ca = fadd <2 x double> %i.bv, %i.bz
  store <2 x double> %i.ca, ptr %i.by, align 8
  %i.cb = add nuw nsw i64 %.084, 1                ; 2 uses
  %exitcond100.not = icmp eq i64 %i.cb, %smax
  br i1 %exitcond100.not, label %._crit_edge, label %bb.j, !llvm.loop !183
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !165 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !172

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #31
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !174

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !164
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31
  br label %_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !172

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !173
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !169 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !25

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
          to label %.noexc8 unwind label %.loopexit12

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !184
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !171
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !63 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !165 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !172

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %.05.i, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !173
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #31
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit, label %.lr.ph.i, !llvm.loop !174

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EEEEvT_SA_.exit: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @_Z16setSuperoperatorIPPPSt7complexIdEEvS3_T_ix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z16setSuperoperatorIPPPSt7complexIdEEvS3_T_ix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = and i64 %3, 4294967295                   ; 5 uses
  %i.b = shl nuw i64 1, %i.a                      ; 2 uses
  %i.c = shl i64 %i.b, %i.a                       ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader57, label %.preheader58.preheader

.preheader58.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = icmp ne i64 %xtraiter, 0
  br label %.preheader58

.preheader58:                                     ; preds = %.preheader58.preheader, %.epilog-lcssa
  %.04860 = phi i64 [ %i.k, %.epilog-lcssa ], [ 0, %.preheader58.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04860 ; 5 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader58.new

.preheader57:                                     ; preds = %.epilog-lcssa, %bb.a
  %i.f = icmp sgt i32 %2, 0
  %i.g = icmp ne i64 %i.a, 63
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.preheader56.lr.ph.preheader, label %._crit_edge71.split

.preheader56.lr.ph.preheader:                     ; preds = %.preheader57
  %smax = tail call i64 @llvm.smax.i64(i64 %i.b, i64 1) ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader56.lr.ph

.unr-lcssa:                                       ; preds = %.preheader58.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader58
  %.04759.epil.init = phi i64 [ 0, %.preheader58 ], [ %i.w, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.04759.epil = phi i64 [ %.04759.epil.init, %.epil.preheader ], [ %i.j, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.04759.epil
  %i.j = add nuw nsw i64 %.04759.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !188

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.k = add nuw nsw i64 %.04860, 1               ; 2 uses
  %exitcond72.not = icmp eq i64 %i.k, %i.c
  br i1 %exitcond72.not, label %.preheader57, label %.preheader58, !llvm.loop !189

.preheader58.new:                                 ; preds = %.preheader58, %.preheader58.new
  %.04759 = phi i64 [ %i.w, %.preheader58.new ], [ 0, %.preheader58 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader58.new ], [ 0, %.preheader58 ]
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.04759
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.04759
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.04759
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.04759
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = add nuw nsw i64 %.04759, 4               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader58.new, !llvm.loop !190

._crit_edge71.split:                              ; preds = %._crit_edge69, %.preheader57
  ret void

.preheader56.lr.ph:                               ; preds = %.preheader56.lr.ph.preheader, %._crit_edge69
  %indvars.iv = phi i64 [ 0, %.preheader56.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge69 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153  ; 2 uses
  br label %.preheader56

.preheader56:                                     ; preds = %.preheader56.lr.ph, %._crit_edge67
  %.04568 = phi i64 [ 0, %.preheader56.lr.ph ], [ %i.ac, %._crit_edge67 ] ; 3 uses
  %i.z = shl i64 %.04568, %i.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.04568
  %invariant.gep64 = getelementptr [8 x i8], ptr %0, i64 %i.z
  br label %.preheader55

._crit_edge69:                                    ; preds = %._crit_edge67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond78.not, label %._crit_edge71.split, label %.preheader56.lr.ph, !llvm.loop !191

.preheader55:                                     ; preds = %.preheader56, %._crit_edge63
  %.04466 = phi i64 [ 0, %.preheader56 ], [ %i.ae, %._crit_edge63 ] ; 3 uses
  %i.ab = shl i64 %.04466, %i.a
  br label %.preheader

._crit_edge67:                                    ; preds = %._crit_edge63
  %i.ac = add nuw nsw i64 %.04568, 1              ; 2 uses
  %exitcond76.not = icmp eq i64 %i.ac, %smax
  br i1 %exitcond76.not, label %._crit_edge69, label %.preheader56, !llvm.loop !192

.preheader:                                       ; preds = %.preheader55, %._crit_edge
  %.04362 = phi i64 [ 0, %.preheader55 ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.04362
  %gep65 = getelementptr [8 x i8], ptr %invariant.gep64, i64 %.04362
  br label %bb.c

._crit_edge63:                                    ; preds = %._crit_edge
  %i.ae = add nuw nsw i64 %.04466, 1              ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ae, %smax
  br i1 %exitcond75.not, label %._crit_edge67, label %.preheader55, !llvm.loop !193

._crit_edge:                                      ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %i.af = add nuw nsw i64 %.04362, 1              ; 2 uses
  %exitcond74.not = icmp eq i64 %i.af, %smax
  br i1 %exitcond74.not, label %._crit_edge63, label %.preheader, !llvm.loop !194

bb.c:                                             ; preds = %.preheader, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %.061 = phi i64 [ 0, %.preheader ], [ %i.bh, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ] ; 3 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.04466 ; 2 uses
  %4 = load double, ptr %i.ah, align 8, !tbaa !71 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %6 = load double, ptr %5, align 8, !tbaa !71    ; 2 uses
  %7 = fneg double %6
  %8 = load ptr, ptr %i.ad, align 8, !tbaa !63
  %9 = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.061
  %i.ai = load <2 x double>, ptr %9, align 8      ; 4 uses
  %10 = insertelement <2 x double> poison, double %4, i64 0
  %i.aj = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.ai          ; 2 uses
  %11 = insertelement <2 x double> poison, double %6, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.am = fmul <2 x double> %12, %i.al            ; 2 uses
  %i.an = fadd <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ao = fsub <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aq = extractelement <2 x double> %i.an, i64 0
  %i.ar = fcmp uno double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !112

bb.d:                                             ; preds = %bb.c
  %i.as = extractelement <2 x double> %i.ao, i64 1
  %i.at = fcmp uno double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !112

bb.e:                                             ; preds = %bb.d
  %i.au = extractelement <2 x double> %i.ai, i64 0
  %i.av = extractelement <2 x double> %i.ai, i64 1
  %i.aw = tail call noundef { double, double } @__muldc3(double noundef %4, double noundef %7, double noundef %i.au, double noundef %i.av) #32 ; 2 uses
  %i.ax = extractvalue { double, double } %i.aw, 0
  %i.ay = extractvalue { double, double } %i.aw, 1
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit

_ZStmlIdESt7complexIT_ERKS2_S4_.exit:             ; preds = %bb.c, %bb.d, %bb.e
  %i.bb = phi <2 x double> [ %i.ap, %bb.c ], [ %i.ap, %bb.d ], [ %i.ba, %bb.e ]
  %i.bc = load ptr, ptr %gep65, align 8, !tbaa !63
  %i.bd = getelementptr [16 x i8], ptr %i.bc, i64 %i.ab
  %i.be = getelementptr [16 x i8], ptr %i.bd, i64 %.061 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.be, align 8
  %i.bg = fadd <2 x double> %i.bb, %i.bf
  store <2 x double> %i.bg, ptr %i.be, align 8
  %i.bh = add nuw nsw i64 %.061, 1                ; 2 uses
  %exitcond73.not = icmp eq i64 %i.bh, %smax
  br i1 %exitcond73.not, label %._crit_edge, label %bb.c, !llvm.loop !195
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !196 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 24) #31
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !199

_ZNSt7__cxx1110_List_baseIPiSaIS1_EE8_M_clearEv.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z21util_setFlagToUnknownPi(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #22 {
bb.a:
  store i32 -1, ptr %0, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_Z17cpu_allocHeapFlagv() ; 4 uses
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.a, align 4, !tbaa !20
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.d, align 8, !tbaa !17
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_Z21globalStructFieldPtrsB5cxx11) #32
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !200
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !200
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noundef ptr @_Z17cpu_allocHeapFlagv() local_unnamed_addr #1

declare noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %0)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !205
  store ptr %1, ptr %1, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !206
  %i.d = load ptr, ptr @_Z21globalStructFieldPtrsB5cxx11, align 8, !tbaa !196 ; 2 uses
  %.not10.i = icmp eq ptr %i.d, @_Z21globalStructFieldPtrsB5cxx11
  br i1 %.not10.i, label %_ZNSt7__cxx114listIPiSaIS1_EE6removeERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i
  %.sroa.06.011.i = phi ptr [ %i.e, %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i ], [ %i.d, %bb.b ] ; 4 uses
  %i.e = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !196 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.c, label %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = load ptr, ptr %1, align 8, !tbaa !196    ; 3 uses
  %i.j = icmp eq ptr %i.i, %.sroa.06.011.i
  %i.k = icmp eq ptr %i.i, %i.e
  %or.cond.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i.i.i, label %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull %.sroa.06.011.i, ptr noundef %i.e) #32
  %i.l = load i64, ptr %i.c, align 8, !tbaa !200
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !200
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !200
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !200
  br label %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i

_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.not.i = icmp eq ptr %i.e, @_Z21globalStructFieldPtrsB5cxx11
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !207

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx114listIPiSaIS1_EE6spliceESt20_List_const_iteratorIS1_ERS3_S5_.exit.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !196 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.pre.i, %1
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx114listIPiSaIS1_EE6removeERKS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.p = load ptr, ptr %.09.i.i.i, align 8, !tbaa !196 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #31
  %.not.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i, label %_ZNSt7__cxx114listIPiSaIS1_EE6removeERKS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !199

_ZNSt7__cxx114listIPiSaIS1_EE6removeERKS1_.exit:  ; preds = %.lr.ph.i.i.i, %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt7__cxx114listIPiSaIS1_EE6removeERKS1_.exit
  ret void
}

declare void @_Z19cpu_deallocHeapFlagPi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z42util_setEpsilonSensitiveHeapFlagsToUnknownv() local_unnamed_addr #16 {
bb.a:
  %.sroa.01.04 = load ptr, ptr @_Z21globalStructFieldPtrsB5cxx11, align 8, !tbaa !196 ; 2 uses
  %.not5 = icmp eq ptr %.sroa.01.04, @_Z21globalStructFieldPtrsB5cxx11
  br i1 %.not5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi ptr [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.04, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  store i32 -1, ptr %i.b, align 4, !tbaa !20
  %.sroa.01.0 = load ptr, ptr %.sroa.01.06, align 8, !tbaa !196 ; 2 uses
  %.not = icmp eq ptr %.sroa.01.0, @_Z21globalStructFieldPtrsB5cxx11
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z32util_areAnyVectorElemsWithinNodeixxx(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = mul nsw i64 %1, %i.a                     ; 2 uses
  %i.c = add nsw i64 %i.b, %1
  %.not = icmp slt i64 %2, %i.c
  %i.d = add nsw i64 %3, %2
  %.not10 = icmp sgt i64 %i.d, %i.b
  %.0 = select i1 %.not, i1 %.not10, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_Z44util_getLocalIndRangeOfVectorElemsWithinNodeixxx(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.util_VectorIndexRange) align 8 captures(none) initializes((0, 24)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = mul nsw i64 %2, %i.a                     ; 3 uses
  %i.c = add nsw i64 %i.b, %2                     ; 2 uses
  %.not.i = icmp slt i64 %3, %i.c
  %i.d = add nsw i64 %4, %3                       ; 2 uses
  %.not10.i = icmp sgt i64 %i.d, %i.b
  %.0.i = select i1 %.not.i, i1 %.not10.i, i1 false
  br i1 %.0.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z38error_nodeUnexpectedlyContainedNoElemsv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.speculated15 = tail call i64 @llvm.smax.i64(i64 %3, i64 %i.b) ; 3 uses
end_hunk_1
