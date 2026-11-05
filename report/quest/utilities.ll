Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z26util_isStrictlyNonNegative17FullStateDiagMatr:bb.a
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ne i32 %i.n, 0
  %i.r = tail call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %i.q)
  %i.s = zext i1 %i.r to i32                      ; 2 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %i.u = icmp ne i32 %i.t, 0
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z16util_isHermitian11PauliStrSumd(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !198
  %i.g = load i64, ptr %0, align 8, !tbaa !199    ; 2 uses
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %_Z14getHermiticityPSt7complexIdExd.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.0810.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.g
  br i1 %exitcond.not.i, label %_Z14getHermiticityPSt7complexIdExd.exit, label %.lr.ph.i, !llvm.loop !5

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0810.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.0810.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !57
  %i.m = tail call noundef double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ugt double %i.m, %1
  br i1 %i.n, label %_Z14getHermiticityPSt7complexIdExd.exit, label %bb.c

_Z14getHermiticityPSt7complexIdExd.exit:          ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa.i = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %_Z14getHermiticityPSt7complexIdExd.exit, %bb.a
  %i.o = phi i32 [ %.lcssa.i, %_Z14getHermiticityPSt7complexIdExd.exit ], [ %i.c, %bb.a ]
  %i.p = icmp ne i32 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z11util_isCPTP8KrausMapd(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z31assert_utilsGivenNonZeroEpsilond(double noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %.split70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i32 %i.c, 0
  br label %._crit_edge.split

.split70:                                         ; preds = %bb.a
  store i32 1, ptr %i.b, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !211  ; 9 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.preheader51.lr.ph, label %._crit_edge.split

.preheader51.lr.ph:                               ; preds = %.split70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  br i1 %i.j, label %.preheader51.us.preheader, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %.preheader51.lr.ph
  %min.iters.check = icmp ult i64 %i.f, 16
  %n.vec = and i64 %i.f, 9223372036854775792      ; 3 uses
  %broadcast.splatinsert99 = insertelement <16 x double> poison, double %1, i64 0
  %broadcast.splat100 = shufflevector <16 x double> %broadcast.splatinsert99, <16 x double> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.preheader51

.preheader51.us.preheader:                        ; preds = %.preheader51.lr.ph
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %.preheader51.us.preheader, %..thread43_crit_edge.split.us.split.us.us
  %.02671.us = phi i64 [ %i.az, %..thread43_crit_edge.split.us.split.us.us ], [ 0, %.preheader51.us.preheader ] ; 3 uses
  br label %.preheader50.us.us.us

.preheader50.us.us.us:                            ; preds = %bb.f, %.preheader51.us
  %.02464.us.us.us = phi i64 [ 0, %.preheader51.us ], [ %i.ay, %bb.f ] ; 3 uses
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge.us.us.us.us, %.preheader50.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.us.us.us ], [ 0, %.preheader50.us.us.us ] ; 2 uses
  %i.m = phi <2 x double> [ %i.ap, %._crit_edge.us.us.us.us ], [ zeroinitializer, %.preheader50.us.us.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us, %.preheader.us.us.us.us
  %.054.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us ], [ %i.aq, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us ] ; 2 uses
  %i.o = phi <2 x double> [ %i.m, %.preheader.us.us.us.us ], [ %i.ap, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us ]
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.054.us.us.us.us
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.02671.us
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.02464.us.us.us
  %i.u = load <2 x double>, ptr %i.s, align 8, !tbaa !57 ; 4 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = fneg double %i.v
  %i.x = load <2 x double>, ptr %i.t, align 8     ; 4 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = fmul <2 x double> %i.u, %i.x
  %i.aa = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.z) ; 3 uses
  %i.ab = fmul <2 x double> %i.u, %i.y            ; 2 uses
  %shift = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ab, %shift
  %i.ac = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ad = fcmp uno double %i.aa, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us, !prof !77

bb.d:                                             ; preds = %bb.c
  %i.ae = fcmp uno double %i.ac, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us, !prof !77

bb.e:                                             ; preds = %bb.d
  %i.af = extractelement <2 x double> %i.u, i64 0
  %i.ag = extractelement <2 x double> %i.x, i64 0
  %i.ah = extractelement <2 x double> %i.x, i64 1
  %i.ai = tail call noundef { double, double } @__muldc3(double noundef %i.af, double noundef %i.w, double noundef %i.ag, double noundef %i.ah) #32 ; 2 uses
  %i.aj = extractvalue { double, double } %i.ai, 0
  %i.ak = extractvalue { double, double } %i.ai, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us: ; preds = %bb.e, %bb.d, %bb.c
  %i.al = phi double [ %i.aa, %bb.c ], [ %i.aa, %bb.d ], [ %i.aj, %bb.e ]
  %i.am = phi double [ %i.ac, %bb.c ], [ %i.ac, %bb.d ], [ %i.ak, %bb.e ]
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.al, i64 1
  %i.ap = fadd <2 x double> %i.o, %i.ao           ; 5 uses
  %i.aq = add nuw nsw i64 %.054.us.us.us.us, 1    ; 2 uses
  %exitcond79.not = icmp eq i64 %i.aq, %i.f
  br i1 %exitcond79.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !200

._crit_edge.us.us.us.us:                          ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.us.us.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge59.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !201

._crit_edge59.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.ar = icmp eq i64 %.02671.us, %.02464.us.us.us
  %i.as = uitofp i1 %i.ar to double
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fsub double %i.at, %i.as                ; 2 uses
  %foldExtExtBinop105 = fmul <2 x double> %i.ap, %i.ap
  %i.av = extractelement <2 x double> %foldExtExtBinop105, i64 0
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.au, double %i.au, double %i.av)
  %i.ax = fcmp ule double %i.aw, %1
  br i1 %i.ax, label %bb.f, label %.split.us

bb.f:                                             ; preds = %._crit_edge59.split.us.us.us.us
  %i.ay = add nuw nsw i64 %.02464.us.us.us, 1     ; 2 uses
  %exitcond82.not = icmp eq i64 %i.ay, %i.f
  br i1 %exitcond82.not, label %..thread43_crit_edge.split.us.split.us.us, label %.preheader50.us.us.us, !llvm.loop !202

..thread43_crit_edge.split.us.split.us.us:        ; preds = %bb.f
  %i.az = add nuw nsw i64 %.02671.us, 1           ; 2 uses
  %exitcond83.not = icmp eq i64 %i.az, %i.f
  br i1 %exitcond83.not, label %._crit_edge.split.loopexit, label %.preheader51.us, !llvm.loop !203

.preheader51:                                     ; preds = %.preheader51.preheader, %..thread43_crit_edge.split
  %.02671 = phi i64 [ %i.bl, %..thread43_crit_edge.split ], [ 0, %.preheader51.preheader ] ; 3 uses
  br i1 %min.iters.check, label %.preheader50.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader51
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.02671, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ba = icmp eq <16 x i64> %broadcast.splat, %vec.ind
  %.fr102 = freeze <16 x i1> %i.ba
  %i.bb = uitofp <16 x i1> %.fr102 to <16 x double>
  %i.bc = fsub <16 x double> zeroinitializer, %i.bb ; 2 uses
  %2 = fmul <16 x double> %i.bc, %i.bc
  %i.bd = fcmp ogt <16 x double> %2, %broadcast.splat100
  %i.be = bitcast <16 x i1> %i.bd to i16
  %.not103 = icmp eq i16 %i.be, 0
  br i1 %.not103, label %vector.body.interim, label %.split.us

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %..thread43_crit_edge.split, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.preheader51, %middle.block
  %.02464.ph = phi i64 [ 0, %.preheader51 ], [ %n.vec, %middle.block ]
  br label %.preheader50

bb.g:                                             ; preds = %.preheader50
  %i.bg = add nuw nsw i64 %.02464, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond.not, label %..thread43_crit_edge.split, label %.preheader50, !llvm.loop !205

.preheader50:                                     ; preds = %.preheader50.preheader, %bb.g
  %.02464 = phi i64 [ %i.bg, %bb.g ], [ %.02464.ph, %.preheader50.preheader ] ; 2 uses
  %i.bh = icmp eq i64 %.02671, %.02464
  %i.bi = uitofp i1 %i.bh to double
  %i.bj = fsub double 0.000000e+00, %i.bi         ; 2 uses
  %3 = fmul double %i.bj, %i.bj
  %i.bk = fcmp ule double %3, %1
  br i1 %i.bk, label %bb.g, label %.split.us

.split.us:                                        ; preds = %vector.body, %.preheader50, %._crit_edge59.split.us.us.us.us
  store i32 0, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge.split

..thread43_crit_edge.split:                       ; preds = %bb.g, %middle.block
  %i.bl = add nuw nsw i64 %.02671, 1              ; 2 uses
  %exitcond78.not = icmp eq i64 %i.bl, %i.f
  br i1 %exitcond78.not, label %._crit_edge.split, label %.preheader51, !llvm.loop !203

._crit_edge.split.loopexit:                       ; preds = %..thread43_crit_edge.split.us.split.us.us
  %.pre = load i32, ptr %i.b, align 4, !tbaa !33
  %i.bm = icmp ne i32 %.pre, 0
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %..thread43_crit_edge.split, %.split70, %._crit_edge.split.loopexit, %.split.us, %bb.b
  %.5 = phi i1 [ %i.d, %bb.b ], [ false, %.split.us ], [ true, %.split70 ], [ %i.bm, %._crit_edge.split.loopexit ], [ true, %..thread43_crit_edge.split ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define void @_Z21util_setSuperoperatorPPSt7complexIdESt6vectorIS3_IS3_IS0_SaIS0_EESaIS5_EESaIS7_EEii(ptr noundef %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.13", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !83     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !212
  %.pre6 = load ptr, ptr %i.a, align 8, !tbaa !212
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre6, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !84
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.f) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !82
  %i.r = sext i32 %3 to i64
  invoke void @_Z16setSuperoperatorISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEvPPS2_T_ix(ptr noundef %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2, i64 noundef %i.r)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !83     ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.s, %bb.f ] ; 5 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !90 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #31
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ae = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #31
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ak, %i.t
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  ret void

bb.j:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z16setSuperoperatorISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEvPPS2_T_ix(ptr noundef %0, ptr nofree noundef align 8 dereferenceable(24) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 4294967295                   ; 5 uses
  %i.b = shl nuw i64 1, %i.a                      ; 2 uses
  %i.c = shl i64 %i.b, %i.a                       ; 5 uses
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
end_hunk_0
begin_hunk_1_@_Z19util_tryAllocMatrixRSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EExxSt8functionIFvvEE:bb.a
  %.not.i.i23 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc24 unwind label %bb.u

.noexc24:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.loopexit.sink.split unwind label %bb.u, !inline_history !12

.loopexit.sink.split:                             ; preds = %bb.o, %bb.s
  tail call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE6resizeEm.exit, %.loopexit.sink.split, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE6resizeEm.exit, %bb.a
  ret void

bb.p:                                             ; preds = %bb.l
  %i.as = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #32
  %i.at = icmp eq i32 %.015, %i.as
  br i1 %i.at, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.au = tail call ptr @__cxa_begin_catch(ptr %.016) #32 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !115
  %.not.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i26, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt25__throw_bad_function_callv() #29
          to label %.noexc27 unwind label %bb.t

.noexc27:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !118
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.loopexit.sink.split unwind label %bb.t, !inline_history !12

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.u:                                             ; preds = %bb.o, %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.p
  %.merged = phi { ptr, i32 } [ %i.az, %bb.t ], [ %.pn, %bb.p ], [ %i.ba, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !88
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
  unreachable

_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !273
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !272
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !91, !alias.scope !273
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !91, !alias.scope !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !273
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !271

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !88
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !92
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorISt7complexIdESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_utilities.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr @_Z21globalStructFieldPtrsB5cxx11, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 8), align 8, !tbaa !103
  store ptr @_Z21globalStructFieldPtrsB5cxx11, ptr @_Z21globalStructFieldPtrsB5cxx11, align 8, !tbaa !97
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_Z21globalStructFieldPtrsB5cxx11, i64 16), align 8, !tbaa !104
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1110_List_baseIPiSaIS1_EED2Ev, ptr nonnull @_Z21globalStructFieldPtrsB5cxx11, ptr nonnull @__dso_handle) #32 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{null}
!13 = !{i32 7, !"openmp", i32 51}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"long long", !18, i64 0}
!23 = !{!"any pointer", !18, i64 0}
!24 = !{!"p1 _ZTSSt7complexIdE", !23, i64 0}
!25 = !{!"_ZTS5Qureg", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !24, i64 72, !24, i64 80, !24, i64 88, !24, i64 96}
!26 = !{!25, !22, i64 56}
!27 = !{!25, !19, i64 24}
!28 = !{!25, !19, i64 28}
!29 = !{!25, !22, i64 64}
!30 = !{!"p1 int", !23, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!22, !22, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!35 = !{!34, !30, i64 8}
!36 = !{!34, !30, i64 0}
!37 = !{!34, !30, i64 16}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!25, !19, i64 12}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!45 = !{!25, !22, i64 48}
!46 = !{!25, !19, i64 8}
!47 = !{!"_ZTS17FullStateDiagMatr", !19, i64 0, !22, i64 8, !19, i64 16, !19, i64 20, !19, i64 24, !22, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !24, i64 80, !24, i64 88}
!48 = !{!47, !19, i64 24}
!49 = !{!47, !22, i64 32}
!50 = !{!24, !24, i64 0}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!18, !18, i64 0}
!53 = !{!"p1 long long", !23, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 double", !23, i64 0}
!56 = !{!"double", !18, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 64, !52}
!59 = !{!"_ZTS9CompMatr1", !19, i64 0, !22, i64 8, !18, i64 16}
!60 = !{!59, !22, i64 8}
!61 = !{i64 0, i64 4, !33, i64 8, i64 8, !32, i64 16, i64 256, !52}
!62 = !{!"_ZTS9CompMatr2", !19, i64 0, !22, i64 8, !18, i64 16}
!63 = !{!62, !22, i64 8}
!64 = !{!"_ZTS9DiagMatr1", !19, i64 0, !22, i64 8, !18, i64 16}
!65 = !{!64, !22, i64 8}
!66 = !{!"_ZTS9DiagMatr2", !19, i64 0, !22, i64 8, !18, i64 16}
!67 = !{!66, !22, i64 8}
!68 = !{!"any p2 pointer", !23, i64 0}
!69 = !{!"p2 _ZTSSt7complexIdE", !68, i64 0}
!70 = !{!"_ZTS8CompMatr", !19, i64 0, !22, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !69, i64 40, !24, i64 48, !24, i64 56}
!71 = !{!70, !69, i64 40}
!72 = !{!70, !22, i64 8}
!73 = !{!"_ZTS8DiagMatr", !19, i64 0, !22, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !24, i64 56, !24, i64 64}
!74 = !{!73, !24, i64 56}
!75 = !{!73, !22, i64 8}
!76 = !{i64 0, i64 16, !52}
!77 = !{!"branch_weights", i32 1, i32 1048575}
!78 = !{!47, !24, i64 80}
!79 = !{!69, !69, i64 0}
!80 = !{!"p1 _ZTSSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE", !23, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!81, !80, i64 8}
!83 = !{!81, !80, i64 0}
!84 = !{!81, !80, i64 16}
!85 = !{!"p1 _ZTSSt6vectorISt7complexIdESaIS1_EE", !23, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 0}
!88 = !{!86, !85, i64 8}
!89 = !{!"_ZTSNSt12_Vector_baseISt7complexIdESaIS1_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!90 = !{!89, !24, i64 0}
!91 = !{!89, !24, i64 16}
!92 = !{!86, !85, i64 16}
!93 = !{!85, !85, i64 0}
!94 = !{!89, !24, i64 8}
!95 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !23, i64 0}
!96 = !{!"_ZTSNSt8__detail15_List_node_baseE", !95, i64 0, !95, i64 8}
!97 = !{!96, !95, i64 0}
!98 = !{!"long", !18, i64 0}
!99 = !{!"_ZTSNSt8__detail17_List_node_headerE", !96, i64 0, !98, i64 16}
!100 = !{!"_ZTSNSt7__cxx1110_List_baseIPiSaIS1_EE10_List_implE", !99, i64 0}
!101 = !{!"_ZTSNSt7__cxx1110_List_baseIPiSaIS1_EEE", !100, i64 0}
!102 = !{!101, !98, i64 16}
!103 = !{!96, !95, i64 8}
!104 = !{!99, !98, i64 16}
!105 = !{!"_ZTS12util_Scalars", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!106 = !{!105, !56, i64 8}
!107 = !{!105, !56, i64 0}
!108 = !{!105, !56, i64 16}
!109 = !{!105, !56, i64 24}
!110 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!111 = !{!110, !55, i64 16}
!112 = !{!110, !55, i64 0}
!113 = !{!110, !55, i64 8}
!114 = !{!"_ZTSSt14_Function_base", !18, i64 0, !23, i64 16}
!115 = !{!114, !23, i64 16}
!116 = !{!23, !23, i64 0}
!117 = !{!"_ZTSSt8functionIFvvEE", !114, i64 0, !23, i64 24}
!118 = !{!117, !23, i64 24}
!119 = !{!"_ZTSNSt12_Vector_baseIPSt7complexIdESaIS2_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!120 = !{!119, !69, i64 8}
!121 = !{!119, !69, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!123 = !{!122, !30, i64 8}
!124 = !{!122, !30, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseI8PauliStrSaIS0_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!126 = !{!125, !23, i64 8}
!127 = !{!125, !23, i64 0}
!128 = distinct !{!128, !41, !42, !43}
!129 = distinct !{!129, !41, !43, !42}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !41}
!136 = distinct !{!136, !41}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !41}
!139 = distinct !{!139, !41}
!140 = distinct !{!140, i1 true, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!141 = distinct !{!141, !140, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!142 = !{!141}
!143 = distinct !{!143, !41, !42, !43}
!144 = distinct !{!144, !41, !43, !42}
!145 = distinct !{!145, i1 true, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!146 = distinct !{!146, !145, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!147 = distinct !{!147, i1 true, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_"}
!148 = distinct !{!148, !147, !"_Z20util_getConcatenatedSt6vectorIiSaIiEES1_: argument 0"}
!149 = !{!146}
!150 = !{!148}
!151 = distinct !{!151, !51}
!152 = !{!55, !55, i64 0}
!153 = distinct !{!153, !51}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !41}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !41}
!159 = distinct !{!159, !41}
!160 = distinct !{!160, !51}
end_hunk_1
