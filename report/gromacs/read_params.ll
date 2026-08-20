inline.NumInlined: 1214
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE17_M_realloc_insertIJRPNS0_11ISerializerERKbS9_S9_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.at = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !248
  ret void

bb.d:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #23
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9AwhParams9serializeEPNS_11ISerializerE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.100, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx9AwhParams9serializeEPNS_11ISerializerEENK3$_0clEv", ptr noundef nonnull @.str.39, i32 noundef 1084) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !243
  %i.i = load ptr, ptr %0, align 8, !tbaa !242
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 104
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !80
  %i.o = load ptr, ptr %1, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %1, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %1, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = load ptr, ptr %1, align 8, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %1, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !266
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !80
  %i.aj = load ptr, ptr %1, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a), !inline_history !267
  %i.am = load i32, ptr %i.a, align 4, !tbaa !80
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %1, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.an)
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !80
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !242
  %i.au = getelementptr inbounds nuw [104 x i8], ptr %i.at, i64 %indvars.iv
  call void @_ZN3gmx13AwhBiasParams9serializeEPNS_11ISerializerE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.b, align 4, !tbaa !80
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.loopexit, !llvm.loop !281

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26setStateDependentAwhParamsEPNS_9AwhParamsERK13pull_params_tP6pull_tPA3_Kf7PbcTypeRA3_S8_RK10t_inputrecfRK10gmx_mtop_tP14WarningHandler(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(888) %6, float noundef %7, ptr noundef nonnull align 1 %8, ptr noundef %9) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %17 = alloca %struct.t_pbc, align 4             ; 6 uses
  %i.a = tail call noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %6)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx26setStateDependentAwhParamsEPNS_9AwhParamsERK13pull_params_tP6pull_tPA3_Kf7PbcTypeRA3_S8_RK10t_inputrecfRK10gmx_mtop_tP14WarningHandlerENK3$_0clEv", ptr noundef nonnull @.str.39, i32 noundef 1374) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef float @_Z27constantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %6)
  %i.c = fcmp ugt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1377, ptr noundef nonnull @.str.101) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.l, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.bs, %bb.p ], [ %i.bh, %bb.l ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.ft, %bb.am ], [ %i.el, %bb.af ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %17, i32 noundef %4, ptr noundef %3)
  %i.e = load ptr, ptr %0, align 8, !tbaa !242    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !243  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 104
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.g
  %i.n = fpext float %7 to double
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.v

._crit_edge91:                                    ; preds = %._crit_edge, %bb.g
  %.lcssa81 = phi ptr [ %i.e, %bb.g ], [ %i.dk, %._crit_edge ]
  %.lcssa77 = phi i64 [ %i.j, %bb.g ], [ %i.do, %._crit_edge ] ; 2 uses
  %i.ab = icmp sgt i64 %.lcssa77, 0
  br i1 %i.ab, label %.lr.ph28.i, label %_ZN3gmxL29checkInputConsistencyIntervalERKNS_9AwhParamsEP14WarningHandler.exit

.lr.ph28.i:                                       ; preds = %._crit_edge91
  %i.ac = udiv i64 %.lcssa77, 104
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %18 = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph28.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph28.i ], [ %i.ao, %._crit_edge.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %.lcssa81, i64 %indvars.iv48.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !198 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !191
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 6                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  %i.ao = add nuw nsw i64 %indvars.iv48.i, 1      ; 3 uses
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ap = trunc nuw i64 %i.ao to i32              ; 2 uses
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.u, %bb.h
  %exitcond51.not.i = icmp eq i64 %i.ao, %18
  br i1 %exitcond51.not.i, label %_ZN3gmxL29checkInputConsistencyIntervalERKNS_9AwhParamsEP14WarningHandler.exit, label %bb.h, !llvm.loop !282

bb.i:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %indvars.iv.i ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !42 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !49 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !283 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.ba = load double, ptr %i.az, align 8, !tbaa !284 ; 8 uses
  %i.bb = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %i.bc = fcmp ogt double %i.au, %i.aw
  %or.cond.i = and i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bd = trunc nuw nsw i64 %indvars.iv48.i to i32
  %i.be = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
  %i.bf = add nuw nsw i32 %i.bd, 1                ; 2 uses
  %i.bg = add nuw nsw i32 %i.be, 1                ; 2 uses
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 1222, ptr noundef nonnull @.str.110, i32 noundef %i.bf, i32 noundef %i.bg, double noundef %i.au, i32 noundef %i.bf, i32 noundef %i.bg, double noundef %i.aw) #24
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  br i1 %i.bb, label %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = call double @llvm.fabs.f64(double %i.au)
  %i.bj = fmul double %i.ay, 5.000000e-01         ; 3 uses
  %i.bk = fcmp ole double %i.bi, %i.bj
  %i.bl = call double @llvm.fabs.f64(double %i.aw)
  %i.bm = fcmp ole double %i.bl, %i.bj
  %or.cond9.i = and i1 %i.bk, %i.bm
  br i1 %or.cond9.i, label %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i, label %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i

_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i: ; preds = %bb.n
  %i.bn = trunc nuw nsw i64 %indvars.iv48.i to i32
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
  %i.bp = add nuw nsw i32 %i.bn, 1                ; 2 uses
  %i.bq = add nuw nsw i32 %i.bo, 1                ; 2 uses
  %i.br = fmul double %i.ay, -5.000000e-01
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1243, ptr noundef nonnull @.str.111, i32 noundef %i.bp, i32 noundef %i.bq, double noundef %i.au, i32 noundef %i.bp, i32 noundef %i.bq, double noundef %i.aw, double noundef %i.ay, double noundef %i.br, double noundef %i.bj) #24
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i
  unreachable

bb.p:                                             ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %common.resume

_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i: ; preds = %bb.n, %bb.m
  %i.bt = fcmp ogt double %i.ay, 0.000000e+00
  br i1 %i.bt, label %bb.q, label %.split7.i

bb.q:                                             ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i
  %i.bu = fcmp olt double %i.au, %i.aw
  %i.bv = fcmp oge double %i.ba, %i.au            ; 2 uses
  br i1 %i.bu, label %.split.i, label %_ZN3gmxL17valueIsInIntervalEdddd.exit.i

.split.i:                                         ; preds = %bb.q
  %i.bw = fcmp ole double %i.ba, %i.aw
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.u, label %bb.r

.split7.i:                                        ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i
  %i.by = fcmp oge double %i.ba, %i.au
  %i.bz = fcmp ole double %i.ba, %i.aw
  %i.ca = and i1 %i.by, %i.bz
  br i1 %i.ca, label %bb.u, label %bb.r

_ZN3gmxL17valueIsInIntervalEdddd.exit.i:          ; preds = %bb.q
  %i.cb = fmul nnan double %i.ay, 5.000000e-01
  %i.cc = fcmp ole double %i.ba, %i.cb
  %or.cond.not.i.i = select i1 %i.bv, i1 %i.cc, i1 false
  %i.cd = fmul nnan double %i.ay, -5.000000e-01
  %i.ce = fcmp oge double %i.ba, %i.cd
  %i.cf = fcmp ole double %i.ba, %i.aw
  %i.cg = and i1 %i.ce, %i.cf
  %i.ch = select i1 %or.cond.not.i.i, i1 true, i1 %i.cg
  br i1 %i.ch, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN3gmxL17valueIsInIntervalEdddd.exit.i, %.split7.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ci = add nsw i32 %i.as, 1
  %i.cj = trunc i64 %indvars.iv.i to i32
  %i.ck = add i32 %i.cj, 1                        ; 2 uses
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.112, double noundef %i.ba, i32 noundef %i.ci, i32 noundef %i.ap, i32 noundef %i.ck, double noundef %i.au, i32 noundef %i.ap, i32 noundef %i.ck, double noundef %i.aw)
  %i.cl = load ptr, ptr %15, align 8, !tbaa !9
  %i.cm = load i64, ptr %i.ad, align 8, !tbaa !18
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 %i.cm, ptr %i.cl)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %15, align 8, !tbaa !9    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ae
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cp = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %15, align 8, !tbaa !9    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ae
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %bb.t
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %common.resume

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN3gmxL17valueIsInIntervalEdddd.exit.i, %.split7.i, %.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.am
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !285

_ZN3gmxL29checkInputConsistencyIntervalERKNS_9AwhParamsEP14WarningHandler.exit: ; preds = %._crit_edge.i, %._crit_edge91
  call void @_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  ret void

bb.v:                                             ; preds = %.lr.ph90, %._crit_edge
  %i.cw = phi ptr [ %i.e, %.lr.ph90 ], [ %i.dk, %._crit_edge ]
  %i.cx = phi ptr [ %i.g, %.lr.ph90 ], [ %i.dl, %._crit_edge ]
  %indvars.iv117 = phi i64 [ 0, %.lr.ph90 ], [ %i.di, %._crit_edge ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %indvars.iv117 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !198 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !191
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 6
  %i.dg = trunc i64 %i.df to i32
  %i.dh = icmp sgt i32 %i.dg, 0
  %i.di = add nuw nsw i64 %indvars.iv117, 1       ; 3 uses
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.dj = trunc nuw nsw i64 %i.di to i32
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit
  %.pre123 = load ptr, ptr %i.f, align 8, !tbaa !243
  %.pre124 = load ptr, ptr %0, align 8, !tbaa !242
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %._crit_edge.loopexit
  %i.dk = phi ptr [ %.pre124, %._crit_edge.loopexit ], [ %i.cw, %bb.v ] ; 3 uses
  %i.dl = phi ptr [ %.pre123, %._crit_edge.loopexit ], [ %i.cx, %bb.v ] ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = sdiv exact i64 %i.do, 104
  %sext145 = shl i64 %i.dp, 32
  %i.dq = ashr exact i64 %sext145, 32
  %i.dr = icmp slt i64 %i.di, %i.dq
  br i1 %i.dr, label %bb.v, label %._crit_edge91, !llvm.loop !286

bb.w:                                             ; preds = %.lr.ph, %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [64 x i8], ptr %i.cz, i64 %indvars.iv ; 10 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !25
  %i.du = icmp eq i32 %i.dt, 0
end_hunk_0
