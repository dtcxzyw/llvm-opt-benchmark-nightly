Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tldDetector?download=true
inline.NumInlined: 712
inline.NumDeleted: 337
begin_hunk_0_@_ZN2cv17tracking_internal9getMedianIiEET_RKSt6vectorIS2_SaIS2_EE:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.i, align 4, !tbaa !48
  store i32 %i.q, ptr %i.j, align 4, !tbaa !48
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  store ptr %i.r, ptr %i.k, align 8, !tbaa !65
  %i.s = invoke noundef i32 @_ZN2cv17tracking_internal23getMedianAndDoPartitionIiEET_RSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.t = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i32 %i.s

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !63     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZNK2cv8tracking4impl3tld11TLDDetector2ScERKNS_4Mat_IhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat_", align 8          ; 8 uses
  %3 = alloca %"class.cv::Mat_", align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 15, i32 noundef 15, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = invoke noundef i32 @_ZN2cv17tracking_internal9getMedianIiEET_RKSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %.018.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 15, i32 noundef 15, i32 noundef 0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !48
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.079.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.speculated.i, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = mul nuw nsw i64 %indvars.iv.i, 225
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %i.o, align 8, !tbaa !50
  %i.u = invoke noundef double @_ZN2cv17tracking_internal10computeNCCERKNS_3MatES3_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = fadd double %i.u, 1.000000e+00
  %i.w = fmul double %i.v, 5.000000e-01           ; 2 uses
  %i.x = fcmp olt double %.079.i, %i.w
  %.sroa.speculated.i = select i1 %i.x, double %i.w, double %.079.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !48
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next.i, %i.aa
  br i1 %i.ab, label %bb.b, label %.loopexit, !llvm.loop !58

bb.d:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.ae = phi i32 [ %i.f, %.lr.ph ], [ %i.at, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.01820 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.j ] ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48
  %.not = icmp sgt i32 %i.ai, %i.c
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = mul nuw nsw i64 %indvars.iv, 225
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  store ptr %i.an, ptr %i.i, align 8, !tbaa !50
  %i.ao = invoke noundef double @_ZN2cv17tracking_internal10computeNCCERKNS_3MatES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = fadd double %i.ao, 1.000000e+00
  %i.aq = fmul double %i.ap, 5.000000e-01         ; 2 uses
  %i.ar = fcmp olt double %.01820, %i.aq
  %.sroa.speculated = select i1 %i.ar, double %i.aq, double %.01820
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !59
  %.pre23 = load i32, ptr %.pre, align 4, !tbaa !48
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.f, %bb.h
  %i.at = phi i32 [ %i.ae, %bb.f ], [ %.pre23, %bb.h ] ; 2 uses
  %.1 = phi double [ %.01820, %bb.f ], [ %.sroa.speculated, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.f, label %._crit_edge, !llvm.loop !70

.loopexit:                                        ; preds = %bb.c, %.noexc
  %.07.lcssa.i = phi double [ 0.000000e+00, %.noexc ], [ %.sroa.speculated.i, %bb.c ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.aw = fadd double %.018.lcssa, %.07.lcssa.i   ; 2 uses
  %i.ax = fcmp oeq double %i.aw, 0.000000e+00
  %i.ay = fdiv double %.018.lcssa, %i.aw
  %.014 = select i1 %i.ax, double 0.000000e+00, double %i.ay
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret double %.014

.body:                                            ; preds = %bb.e, %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.ad, %bb.e ], [ %i.ac, %bb.d ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8tracking4impl3tld11TLDDetector16generateScanGridEiiNS_5Size_IiEERSt6vectorINS_5Rect_IdEESaIS8_EEb(i32 noundef %0, i32 noundef %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  %7 = bitcast i64 %2 to <2 x i32>
  %i.a = load ptr, ptr %3, align 8, !tbaa !71     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv5Rect_IdEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IdEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !74
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv5Rect_IdEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIPN2cv5Rect_IdEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %8 = sitofp <2 x i32> %7 to <2 x double>        ; 4 uses
  %9 = extractelement <2 x double> %8, i64 1      ; 4 uses
  %10 = extractelement <2 x double> %8, i64 0     ; 3 uses
  %i.e = sitofp i32 %1 to double                  ; 4 uses
  %i.f = sitofp i32 %0 to double                  ; 4 uses
  %11 = fcmp olt double %9, %i.e
  %12 = fcmp olt double %10, %i.f
  %i.g = select i1 %11, i1 %12, i1 false
  br i1 %i.g, label %.preheader61.lr.ph, label %._crit_edge69

.preheader61.lr.ph:                               ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = fmul nnan <2 x double> %8, splat (double 1.200000e+00) ; 3 uses
  %i.j = extractelement <2 x double> %i.i, i64 1
  %i.k = fcmp ogt double %i.j, %9
  %i.l = extractelement <2 x double> %i.i, i64 0
  %i.m = fcmp ogt double %i.l, %10
  br label %.preheader61

.preheader61:                                     ; preds = %.preheader61.lr.ph, %bb.m
  %i.n = phi ptr [ %i.a, %.preheader61.lr.ph ], [ %i.y, %bb.m ] ; 3 uses
  %i.o = phi ptr [ %i.d, %.preheader61.lr.ph ], [ %i.z, %bb.m ] ; 3 uses
  %.04067 = phi double [ %10, %.preheader61.lr.ph ], [ %i.cb, %bb.m ] ; 5 uses
  %.04165 = phi double [ %9, %.preheader61.lr.ph ], [ %i.ca, %bb.m ] ; 6 uses
  %i.p = phi <2 x double> [ %8, %.preheader61.lr.ph ], [ %i.bz, %bb.m ] ; 2 uses
  %i.q = fadd double %.04067, 0.000000e+00
  %i.r = fadd double %i.q, 1.000000e+00
  %i.s = fcmp ugt double %i.r, %i.e
  br i1 %i.s, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader61
  %i.t = fadd double %.04165, 0.000000e+00
  %i.u = fadd double %i.t, 1.000000e+00
  %i.v = fcmp ugt double %i.u, %i.f
  br i1 %i.v, label %._crit_edge64, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !75
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.pre = phi ptr [ %.pre75, %._crit_edge ], [ %.pre.pre, %.preheader.preheader ] ; 2 uses
  %i.w = phi ptr [ %i.bb, %._crit_edge ], [ %i.n, %.preheader.preheader ]
  %i.x = phi ptr [ %i.bd, %._crit_edge ], [ %i.o, %.preheader.preheader ]
  %.03963 = phi double [ %i.aa, %._crit_edge ], [ 0.000000e+00, %.preheader.preheader ] ; 3 uses
  br label %bb.b

._crit_edge64:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader61
  %i.y = phi ptr [ %i.n, %.preheader.lr.ph ], [ %i.n, %.preheader61 ], [ %i.bb, %._crit_edge ]
  %i.z = phi ptr [ %i.o, %.preheader.lr.ph ], [ %i.o, %.preheader61 ], [ %i.bd, %._crit_edge ]
  br i1 %4, label %bb.g, label %._crit_edge69

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit
  %i.aa = tail call double @llvm.fmuladd.f64(double %.04067, double 1.000000e-01, double %.03963) ; 2 uses
  %i.ab = fadd double %.04067, %i.aa
  %i.ac = fadd double %i.ab, 1.000000e+00
  %i.ad = fcmp ugt double %i.ac, %i.e
  br i1 %i.ad, label %._crit_edge64, label %.preheader, !llvm.loop !76

bb.b:                                             ; preds = %.preheader, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit
  %.pre76 = phi ptr [ %.pre, %.preheader ], [ %.pre75, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit ]
  %i.ae = phi ptr [ %i.w, %.preheader ], [ %i.bb, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.af = phi ptr [ %.pre, %.preheader ], [ %i.bc, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %i.ag = phi ptr [ %i.x, %.preheader ], [ %i.bd, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %.03862 = phi double [ 0.000000e+00, %.preheader ], [ %i.be, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i.i53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %.03963, ptr %i.ag, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store double %.03862, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !77
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store double %.04067, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !77
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store double %.04165, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !74
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775776
  br i1 %i.al, label %bb.e, label %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.am = ashr exact i64 %i.ak, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 288230376151711743)
  %i.aq = select i1 %i.ao, i64 288230376151711743, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 5
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #22 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 4 uses
  store double %.03963, ptr %i.at, align 8, !tbaa !77
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %.03862, ptr %.sroa.5.0..sroa_idx55, align 8, !tbaa !77
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store double %.04067, ptr %.sroa.6.0..sroa_idx57, align 8, !tbaa !77
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store double %.04165, ptr %.sroa.7.0..sroa_idx59, align 8, !tbaa !77
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !79, !alias.scope !80
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !84

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorIN2cv5Rect_IdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.az) #23
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.as, ptr %3, align 8, !tbaa !71
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.aq ; 3 uses
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !75
  br label %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre75 = phi ptr [ %.pre76, %bb.c ], [ %i.ba, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bb = phi ptr [ %i.ae, %bb.c ], [ %i.as, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 3 uses
  %i.bc = phi ptr [ %i.af, %bb.c ], [ %i.ba, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.bd = phi ptr [ %i.ah, %bb.c ], [ %i.aw, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 3 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %.04165, double 1.000000e-01, double %.03862) ; 2 uses
  %i.bf = fadd double %.04165, %i.be
  %i.bg = fadd double %i.bf, 1.000000e+00
  %i.bh = fcmp ugt double %i.bg, %i.f
  br i1 %i.bh, label %._crit_edge, label %bb.b, !llvm.loop !85

bb.g:                                             ; preds = %._crit_edge64
  %i.bi = fcmp ugt double %.04165, %9
  br i1 %i.bi, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = fdiv <2 x double> %i.p, splat (double 1.200000e+00) ; 3 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1
  %i.bl = fcmp uge double %i.bk, 2.000000e+01
  %i.bm = extractelement <2 x double> %i.bj, i64 0
  %i.bn = fcmp uge double %i.bm, 2.000000e+01
  %or.cond.not73 = and i1 %i.bl, %i.bn            ; 2 uses
  %i.bo = select i1 %or.cond.not73, i1 true, i1 %i.k
  %brmerge = select i1 %i.bo, i1 true, i1 %i.m
  %i.bp = insertelement <2 x i1> poison, i1 %or.cond.not73, i64 0
  %i.bq = shufflevector <2 x i1> %i.bp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.br = select <2 x i1> %i.bq, <2 x double> %i.bj, <2 x double> %i.i
  br i1 %brmerge, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8tracking4impl3tld11TLDDetector16generateScanGridEiiNS_5Size_IiEERSt6vectorINS_5Rect_IdEESaIS8_EEb, ptr noundef nonnull @.str.1, i32 noundef 314) #21
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !90
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.bs

bb.l:                                             ; preds = %bb.g
  %i.by = fmul <2 x double> %i.p, splat (double 1.200000e+00)
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  %i.bz = phi <2 x double> [ %i.br, %bb.h ], [ %i.by, %bb.l ] ; 3 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %i.cb = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.cc = fcmp olt double %i.ca, %i.e
  %i.cd = fcmp olt double %i.cb, %i.f
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %.preheader61, label %._crit_edge69, !llvm.loop !91

._crit_edge69:                                    ; preds = %bb.m, %._crit_edge64, %_ZNSt6vectorIN2cv5Rect_IdEESaIS2_EE5clearEv.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !92
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !93
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  %i.g = load i64, ptr %i.a, align 8, !tbaa !93
  store i64 %i.g, ptr %i.b, align 8, !tbaa !90
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !90
  store i8 %i.i, ptr %i.h, align 1, !tbaa !90
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !94
  %i.l = load ptr, ptr %0, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv8tracking4impl3tld11TLDDetector6detectERKNS_3MatES6_RNS_5Rect_IdEERSt6vectorINS3_12LabeledPatchESaISB_EENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, i64 %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %13 = alloca %"class.cv::Mat_.44", align 8      ; 10 uses
  %14 = alloca %"class.cv::Mat_.44", align 8      ; 10 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::Mat_", align 8         ; 7 uses
  %20 = alloca %"class.cv::Mat_", align 8         ; 11 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.cv::tracking::impl::tld::CalcScSrParallelLoopBody", align 8 ; 9 uses
  %.sroa.058.0.extract.trunc = trunc i64 %5 to i32
  %.sroa.7.0.extract.shift = lshr i64 %5, 32
  %i.a = bitcast i64 %5 to <2 x i32>
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  %i.b = load ptr, ptr %4, align 8, !tbaa !95     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !98
  br label %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit

_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8tracking4impl3tld11TLDDetector12LabeledPatchES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #20
  %i.e = sdiv i32 %.sroa.058.0.extract.trunc, 10  ; 2 uses
  %i.f = sdiv i32 %.sroa.7.0.extract.trunc, 10    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !99   ; 6 uses
  %i.i = icmp slt i32 %i.h, 3
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.3, i32 noundef 109) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %10, align 8, !tbaa !86    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !90
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld11TLDDetector12LabeledPatchESaIS5_EE5clearEv.exit
  %i.p = icmp sgt i32 %i.h, 0
end_hunk_0
