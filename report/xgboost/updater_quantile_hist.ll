inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK7xgboost4tree18HistMultiEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsEjNS2_4SpanINS6_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEdiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerISt6vectorIS9_SaIS9_EEEE:bb.a
  %i.jq = load float, ptr %9, align 8, !tbaa !534 ; 2 uses
  br i1 %.not.i.i107, label %.split.i108, label %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i

.split.i108:                                      ; preds = %bb.ar
  %i.jr = fcmp ule float %i.jq, %i.ji
  br i1 %i.jr, label %bb.as, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i: ; preds = %bb.ar
  %i.js = fcmp ogt float %i.ji, %i.jq
  br i1 %i.js, label %bb.as, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

bb.as:                                            ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i108
  store float %i.ji, ptr %9, align 8, !tbaa !534
  store i32 %i.jj, ptr %i.jn, align 4, !tbaa !542
  %i.jt = load float, ptr %i.eq, align 8, !tbaa !543
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.jt, ptr %i.ju, align 8, !tbaa !543
  %i.jv = load i8, ptr %i.et, align 8, !tbaa !897, !range !197, !noundef !198
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 %i.jv, ptr %i.jw, align 8, !tbaa !897
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %.noexc109 unwind label %bb.aw ; 0 uses

.noexc109:                                        ; preds = %bb.as
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ka = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %.noexc110 unwind label %bb.aw ; 0 uses

.noexc110:                                        ; preds = %.noexc109
  %i.kb = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.kd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit unwind label %bb.aw ; 0 uses

_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit: ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i108, %._crit_edge188.thread, %.noexc110
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !378 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !381
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kk) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i: ; preds = %bb.at, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.kl = load ptr, ptr %i.es, align 8, !tbaa !378 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !381
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kq) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i: ; preds = %bb.au, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i
  %i.kr = load ptr, ptr %i.er, align 8, !tbaa !508 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i3.i, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i
  %i.ks = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !510
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.kw) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  ret void

bb.aw:                                            ; preds = %.noexc110, %.noexc109, %bb.as
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.al, %bb.ag, %bb.aw
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ag ], [ %i.kx, %bb.aw ], [ %i.if, %bb.al ], [ %i.jh, %bb.aq ]
  call void @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.z
  %.pn71.pn = phi { ptr, i32 } [ %i.fc, %bb.z ], [ %.pn67.pn.pn, %bb.ax ]
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %15) #11
  br label %.body

.body:                                            ; preds = %bb.y, %bb.n, %bb.ay
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.ay ], [ %i.fb, %bb.y ], [ %i.bi, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.az

bb.az:                                            ; preds = %.body, %bb.x
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %.body ], [ %i.fa, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.w
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %bb.az ], [ %i.ez, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_INS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerISt6vectorISC_SaISC_EEEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %10 = alloca %"class.xgboost::linalg::Tensor", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.xgboost::linalg::TensorView.449", align 8 ; 16 uses
  %12 = alloca %"class.xgboost::linalg::TensorView.449", align 8 ; 16 uses
  %13 = alloca %"struct.xgboost::tree::SplitEntryContainer", align 8 ; 20 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %15 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %4, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %i.i), !noalias !1662 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !588, !noalias !1662 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !378, !noalias !1662 ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !616, !noalias !1662
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !1662
  switch i8 %i.s, label %bb.c [
    i8 0, label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36, !noalias !1662
  br label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #40, !noalias !1662
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi i64 [ %i.w, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ %i.u, %bb.a ]
  %i.x = sext i32 %7 to i64                       ; 2 uses
  %i.y = mul i64 %.sroa.0.0.i, %i.x
  %i.z = icmp eq ptr %i.l, %i.m
  %i.aa = select i1 %i.z, i64 0, i64 %i.y         ; 3 uses
  %.not8.i.i.i = icmp ugt i64 %i.aa, %i.q
  br i1 %.not8.i.i.i, label %bb.d, label %bb.e, !prof !176

bb.d:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i
  tail call void @_ZSt9terminatev() #40, !noalias !1669
  unreachable

bb.e:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i
  %i.ab = icmp ne ptr %i.m, null
  %i.ac = icmp eq i64 %i.q, %i.aa
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.f, !prof !218

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #40, !noalias !1669
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.aa ; 3 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !386
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.x
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1048 ; 2 uses
  %i.ai = zext i32 %6 to i64
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !508 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !54 ; 6 uses
  %i.am = add i32 %6, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.aq = sub nsw i32 %i.ap, %i.al
  %.fr216 = freeze i32 %i.aq                      ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1102
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !54
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.fr216, i32 %i.au)
  %i.av = add i32 %i.al, -1
  %i.aw = add i32 %i.av, %.sroa.speculated        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 2, ptr %i.d, align 4, !tbaa !54
  call void @_ZN7xgboost6linalg8ConstantINS_6detail20GradientPairInternalIdEEJiRmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::Tensor") align 8 %10, ptr noundef %i.ay, double 0.000000e+00, double 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.az = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %10)
          to label %.noexc71 unwind label %bb.v   ; 2 uses

.noexc71:                                         ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !588, !noalias !1675 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !378, !noalias !1675 ; 5 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !616, !noalias !1675
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36, !noalias !1675 ; 2 uses
  switch i8 %i.bi, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.g
  ]

bb.g:                                             ; preds = %.noexc71
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !36, !noalias !1675
  br label %bb.i

bb.h:                                             ; preds = %.noexc71
  call void @_ZSt9terminatev() #40, !noalias !1675
  unreachable

bb.i:                                             ; preds = %.noexc71, %bb.g
  %.sroa.5.0.i61 = phi i64 [ %i.bm, %bb.g ], [ 1, %.noexc71 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  %i.bn = icmp ne ptr %i.bc, null
  %i.bo = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  %i.bp = or i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %bb.j, !prof !218

bb.j:                                             ; preds = %bb.i
  call void @_ZSt9terminatev() #40, !noalias !1683
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sink.i.i.i.i64 = select i1 %i.bo, i64 0, i64 %i.bk
  store i64 %.sroa.5.0.i61, ptr %11, align 8, !tbaa !59, !alias.scope !1683
  %.sroa.5.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx.i.i65, align 8, !tbaa !59, !alias.scope !1683
  %.sroa.7.0..sroa_idx.i.i66 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.bg, ptr %.sroa.7.0..sroa_idx.i.i66, align 8, !tbaa !36, !alias.scope !1683
  %.sroa.8.0..sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx.i.i67, align 8, !tbaa !594, !alias.scope !1683
  %.sroa.9.0..sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store ptr %i.bc, ptr %.sroa.9.0..sroa_idx.i.i68, align 8, !tbaa !594, !alias.scope !1683
  %.sroa.10.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %.sink.i.i.i.i64, ptr %.sroa.10.0..sroa_idx.i.i69, align 8, !tbaa !36, !alias.scope !1683
  %.sroa.12.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 -65536, ptr %.sroa.12.0..sroa_idx.i.i70, align 8, !alias.scope !1683
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %10)
          to label %.noexc83 unwind label %bb.w   ; 2 uses

.noexc83:                                         ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !588, !noalias !1687 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !378, !noalias !1687 ; 4 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4                 ; 3 uses
  %i.by = load i8, ptr %i.bh, align 8, !tbaa !616, !noalias !1687
  %i.bz = load i64, ptr %i.bj, align 8, !tbaa !36, !noalias !1687 ; 3 uses
  switch i8 %i.by, label %bb.m [
    i8 0, label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %.noexc83
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !36, !noalias !1687
  br label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72

bb.m:                                             ; preds = %.noexc83
  call void @_ZSt9terminatev() #40, !noalias !1687
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72: ; preds = %bb.l, %.noexc83
  %.sroa.5.0.i73 = phi i64 [ %i.cb, %bb.l ], [ 1, %.noexc83 ]
  %.sroa.0.0.i74 = phi i64 [ 1, %bb.l ], [ %i.bz, %.noexc83 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.cc = icmp eq ptr %i.bs, %i.bt
  %i.cd = select i1 %i.cc, i64 0, i64 %.sroa.0.0.i74 ; 4 uses
  %.not8.i.i.i75 = icmp ugt i64 %i.cd, %i.bx
  br i1 %.not8.i.i.i75, label %bb.n, label %bb.o, !prof !176

bb.n:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72
  call void @_ZSt9terminatev() #40, !noalias !1695
  unreachable

bb.o:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72
  %i.ce = icmp ne ptr %i.bt, null
  %i.cf = icmp eq i64 %i.bx, %i.cd                ; 2 uses
  %i.cg = or i1 %i.ce, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.p, !prof !218

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #40, !noalias !1695
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ch = sub nuw i64 %i.bx, %i.cd
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.cd ; 2 uses
  %.sink.i.i.i.i76 = select i1 %i.cf, i64 0, i64 %i.bz
  store i64 %.sroa.5.0.i73, ptr %12, align 8, !tbaa !59, !alias.scope !1695
  %.sroa.5.0..sroa_idx.i.i77 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx.i.i77, align 8, !tbaa !59, !alias.scope !1695
  %.sroa.7.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.ch, ptr %.sroa.7.0..sroa_idx.i.i78, align 8, !tbaa !36, !alias.scope !1695
  %.sroa.8.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx.i.i79, align 8, !tbaa !594, !alias.scope !1695
  %.sroa.9.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store ptr %i.ci, ptr %.sroa.9.0..sroa_idx.i.i80, align 8, !tbaa !594, !alias.scope !1695
  %.sroa.10.0..sroa_idx.i.i81 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %.sink.i.i.i.i76, ptr %.sroa.10.0..sroa_idx.i.i81, align 8, !tbaa !36, !alias.scope !1695
  %.sroa.12.0..sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 -65536, ptr %.sroa.12.0..sroa_idx.i.i82, align 8, !alias.scope !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store float 0.000000e+00, ptr %13, align 8, !tbaa !534
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !542
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ck, align 8, !tbaa !543
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cl, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i8 0, i64 48, i1 false)
  %.not204 = icmp eq i32 %i.al, %i.aw
  br i1 %.not204, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_INS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerISt6vectorISG_SaISG_EEEEEUlmE_ET0_T_SY_SX_.exit, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.q
  %i.cn = sext i32 %i.al to i64                   ; 13 uses
  %i.co = icmp eq i32 %.fr216, -1                 ; 2 uses
  %i.cp = sext i32 %.fr216 to i64                 ; 4 uses
  %i.cq = add nsw i64 %i.cp, %i.cn                ; 3 uses
  %i.cr = icmp eq i32 %.fr216, 0
  br i1 %i.co, label %.lr.ph207.split.us, label %.lr.ph207.split

.lr.ph207.split.us:                               ; preds = %.lr.ph207, %bb.s
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %bb.s ], [ %i.cn, %.lr.ph207 ] ; 3 uses
  %.044206.us.a = phi i32 [ %spec.select.us, %bb.s ], [ -1, %.lr.ph207 ]
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %.not219 = icmp eq i64 %i.cs, 0
  br i1 %.not219, label %._crit_edge.split.us.split.us.us, label %.lr.ph.us

._crit_edge.split.us.split.us.us:                 ; preds = %bb.u, %.lr.ph207.split.us
  %i.ct = load ptr, ptr %i.ar, align 8, !tbaa !1102
  %i.cu = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.r unwind label %.split209.us

bb.r:                                             ; preds = %._crit_edge.split.us.split.us.us
  %i.cv = fsub double %i.cu, %i.ah
  %i.cw = fptrunc double %i.cv to float
  %i.cx = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %13, float noundef %i.cw, i32 noundef %6, float noundef +qnan, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.s unwind label %.split209.us

bb.s:                                             ; preds = %bb.r
  %16 = trunc nsw i64 %indvars.iv232 to i32
  %spec.select.us = select i1 %i.cx, i32 %16, i32 %.044206.us.a ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1 ; 2 uses
  %17 = trunc nsw i64 %indvars.iv.next233 to i32
  %.not.us = icmp eq i32 %i.aw, %17
  br i1 %.not.us, label %._crit_edge, label %.lr.ph207.split.us, !llvm.loop !1696

.lr.ph.us:                                        ; preds = %.lr.ph207.split.us
  %18 = sub nsw i64 %indvars.iv232, %i.cn         ; 2 uses
  %i.cy = icmp ugt i64 %2, %18
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %18
  %i.da = load i64, ptr %12, align 8
  %i.db = load ptr, ptr %.sroa.9.0..sroa_idx.i.i80, align 8
  %i.dc = load i64, ptr %11, align 8
  %i.dd = load ptr, ptr %.sroa.9.0..sroa_idx.i.i68, align 8
  %.fr.us = freeze i1 %i.cy
  br i1 %.fr.us, label %.lr.ph.split.us.us, label %.lr.ph.split, !prof !218

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.u
  %i.de = phi i64 [ %i.ed, %bb.u ], [ 0, %.lr.ph.us ] ; 5 uses
  %storemerge171.us.us.us = phi i32 [ %i.ec, %bb.u ], [ 0, %.lr.ph.us ]
  %i.df = icmp ugt i64 %4, %i.de
  br i1 %i.df, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us, label %.split.us, !prof !218

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us: ; preds = %.lr.ph.split.us.us
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.de ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !844 ; 3 uses
  %.not8.i.us.us.us = icmp ult i64 %i.dh, %i.cn
  br i1 %.not8.i.us.us.us, label %.split173.us, label %bb.t, !prof !176

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us
  %.in.i.us.us.us = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %.in.i.us.us.us, align 8, !tbaa !846 ; 2 uses
  %i.dj = icmp ne ptr %i.di, null
  %i.dk = icmp eq i64 %i.dh, %i.cn
  %i.dl = or i1 %i.dk, %i.dj
  br i1 %i.dl, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us, label %.split175.us, !prof !218

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us: ; preds = %bb.t
  %i.dm = sub nuw i64 %i.dh, %i.cn
  %i.dn = load i64, ptr %i.cz, align 8, !tbaa !36 ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  br i1 %i.do, label %bb.u, label %.split177.us, !prof !218

bb.u:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.cn
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dn
  %i.dr = mul i64 %i.da, %i.de
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dr ; 2 uses
  %i.dt = load <2 x double>, ptr %i.dq, align 8, !tbaa !1048
  %i.du = load <2 x double>, ptr %i.ds, align 8, !tbaa !1048
  %i.dv = fadd <2 x double> %i.dt, %i.du          ; 2 uses
  store <2 x double> %i.dv, ptr %i.ds, align 8, !tbaa !1048
  %i.dw = mul i64 %i.de, %.sroa.5.0.i
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.dw
  %i.dy = mul i64 %i.dc, %i.de
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dx, align 8, !tbaa !1048
  %i.eb = fsub <2 x double> %i.ea, %i.dv
  store <2 x double> %i.eb, ptr %i.dz, align 8, !tbaa !1048
  %i.ec = add i32 %storemerge171.us.us.us, 1      ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = icmp ugt i64 %i.cs, %i.ed
  br i1 %i.ee, label %.lr.ph.split.us.us, label %._crit_edge.split.us.split.us.us, !llvm.loop !1697

.split209.us:                                     ; preds = %bb.r, %._crit_edge.split.us.split.us.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

._crit_edge:                                      ; preds = %bb.af, %bb.s
  %.044.lcssa = phi i32 [ %spec.select.us, %bb.s ], [ %spec.select, %bb.af ] ; 2 uses
  %.not47 = icmp eq i32 %.044.lcssa, -1
  br i1 %.not47, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_INS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerISt6vectorISG_SaISG_EEEEEUlmE_ET0_T_SY_SX_.exit, label %bb.ag

bb.v:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.w:                                             ; preds = %bb.k
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.lr.ph207.split:                                  ; preds = %.lr.ph207, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ %i.cn, %.lr.ph207 ] ; 3 uses
  %.044206.a = phi i32 [ %spec.select, %bb.af ], [ -1, %.lr.ph207 ]
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %.not217 = icmp eq i64 %i.ei, 0
  br i1 %.not217, label %._crit_edge.split.us.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph207.split
  %19 = sub nsw i64 %indvars.iv, %i.cn            ; 2 uses
  %i.ej = icmp ugt i64 %2, %19
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %19 ; 2 uses
  %i.el = load i64, ptr %12, align 8              ; 2 uses
  %i.em = load ptr, ptr %.sroa.9.0..sroa_idx.i.i80, align 8 ; 2 uses
  %i.en = load i64, ptr %11, align 8              ; 2 uses
  %i.eo = load ptr, ptr %.sroa.9.0..sroa_idx.i.i68, align 8 ; 2 uses
  %.fr = freeze i1 %i.ej
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !218

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.cr, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us, %bb.x
  %i.ep = phi i64 [ %i.fk, %bb.x ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %storemerge171.us.us198 = phi i32 [ %i.fj, %bb.x ], [ 0, %.lr.ph.split.us ]
  %i.eq = icmp ugt i64 %4, %i.ep
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199, label %.split.us, !prof !218

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199: ; preds = %.lr.ph.split.us.split.split.us
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ep ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !844
  %.not.i.us.us = icmp ugt i64 %i.cq, %i.es
  br i1 %.not.i.us.us, label %.split173.us, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201, !prof !176

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199
  %i.et = load i64, ptr %i.ek, align 8, !tbaa !36 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.cp
  br i1 %i.eu, label %bb.x, label %.split177.us, !prof !218

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201
  %.in.i.us.us200 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ev = load ptr, ptr %.in.i.us.us200, align 8, !tbaa !846
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.cn
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.et
  %i.ey = mul i64 %i.el, %i.ep
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.ey ; 2 uses
  %i.fa = load <2 x double>, ptr %i.ex, align 8, !tbaa !1048
  %i.fb = load <2 x double>, ptr %i.ez, align 8, !tbaa !1048
  %i.fc = fadd <2 x double> %i.fa, %i.fb          ; 2 uses
  store <2 x double> %i.fc, ptr %i.ez, align 8, !tbaa !1048
  %i.fd = mul i64 %i.ep, %.sroa.5.0.i
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.fd
  %i.ff = mul i64 %i.en, %i.ep
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ff
  %i.fh = load <2 x double>, ptr %i.fe, align 8, !tbaa !1048
  %i.fi = fsub <2 x double> %i.fh, %i.fc
  store <2 x double> %i.fi, ptr %i.fg, align 8, !tbaa !1048
  %i.fj = add i32 %storemerge171.us.us198, 1      ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = icmp ugt i64 %i.ei, %i.fk
  br i1 %i.fl, label %.lr.ph.split.us.split.split.us, label %._crit_edge.split.us.split, !llvm.loop !1697

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us, %bb.z
  %i.fm = phi i64 [ %i.gh, %bb.z ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %storemerge171.us = phi i32 [ %i.gg, %bb.z ], [ 0, %.lr.ph.split.us ]
  %i.fn = icmp ugt i64 %4, %i.fm
  br i1 %i.fn, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us, label %.split.us, !prof !218

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us: ; preds = %.lr.ph.split.us.split.split
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.fm ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !844
  %.not.i.us = icmp ugt i64 %i.cq, %i.fp
  br i1 %.not.i.us, label %.split173.us, label %bb.y, !prof !176

bb.y:                                             ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us
  %.in.i.us = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %.in.i.us, align 8, !tbaa !846 ; 2 uses
  %.not218 = icmp eq ptr %i.fq, null
  br i1 %.not218, label %.split175.us, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us, !prof !176

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us: ; preds = %bb.y
  %i.fr = load i64, ptr %i.ek, align 8, !tbaa !36 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.cp
  br i1 %i.fs, label %bb.z, label %.split177.us, !prof !218

bb.z:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.cn
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fr
  %i.fv = mul i64 %i.el, %i.fm
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.fv ; 2 uses
  %i.fx = load <2 x double>, ptr %i.fu, align 8, !tbaa !1048
  %i.fy = load <2 x double>, ptr %i.fw, align 8, !tbaa !1048
  %i.fz = fadd <2 x double> %i.fx, %i.fy          ; 2 uses
  store <2 x double> %i.fz, ptr %i.fw, align 8, !tbaa !1048
  %i.ga = mul i64 %i.fm, %.sroa.5.0.i
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ga
  %i.gc = mul i64 %i.en, %i.fm
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.gc
  %i.ge = load <2 x double>, ptr %i.gb, align 8, !tbaa !1048
  %i.gf = fsub <2 x double> %i.ge, %i.fz
  store <2 x double> %i.gf, ptr %i.gd, align 8, !tbaa !1048
  %i.gg = add i32 %storemerge171.us, 1            ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = icmp ugt i64 %i.ei, %i.gh
  br i1 %i.gi, label %.lr.ph.split.us.split.split, label %._crit_edge.split.us.split, !llvm.loop !1697

._crit_edge.split.us.split:                       ; preds = %bb.z, %bb.x, %.lr.ph207.split
  %i.gj = load ptr, ptr %i.ar, align 8, !tbaa !1102
  %i.gk = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.gj, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.ae unwind label %.split209

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.us
  %.not220 = icmp eq i64 %4, 0
  br i1 %.not220, label %.split.us, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit, !prof !176

.split.us:                                        ; preds = %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.us, %.lr.ph.split.us.us, %.lr.ph.split
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit: ; preds = %.lr.ph.split
  %i.gl = load i64, ptr %5, align 8, !tbaa !844   ; 3 uses
  br i1 %i.co, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit
  %.not8.i = icmp ult i64 %i.gl, %i.cn
  br i1 %.not8.i, label %.split173.us, label %bb.ab, !prof !176

bb.aa:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit
  %.not.i = icmp ugt i64 %i.cq, %i.gl
  br i1 %.not.i, label %.split173.us, label %bb.ac, !prof !176

.split173.us:                                     ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us, %.split.i, %bb.aa
  call void @_ZSt9terminatev() #40
  unreachable

bb.ab:                                            ; preds = %.split.i
  %i.gm = sub nuw i64 %i.gl, %i.cn
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gn = phi i64 [ %i.gm, %bb.ab ], [ %i.cp, %bb.aa ]
  %.in.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = load ptr, ptr %.in.i, align 8, !tbaa !846
  %i.gp = icmp ne ptr %i.go, null
  %i.gq = icmp eq i64 %i.gn, 0
  %i.gr = or i1 %i.gq, %i.gp
  br i1 %i.gr, label %bb.ad, label %.split175.us, !prof !218

.split175.us:                                     ; preds = %bb.y, %bb.t, %bb.ac
  call void @_ZSt9terminatev() #40
  unreachable

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt9terminatev() #40
  unreachable

.split177.us:                                     ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us
  call void @_ZSt9terminatev() #40
  unreachable

bb.ae:                                            ; preds = %._crit_edge.split.us.split
  %i.gs = fsub double %i.gk, %i.ah
  %i.gt = fptrunc double %i.gs to float
  %i.gu = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %13, float noundef %i.gt, i32 noundef %6, float noundef +qnan, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.af unwind label %.split209

bb.af:                                            ; preds = %bb.ae
  %20 = trunc nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.gu, i32 %20, i32 %.044206.a ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %21 = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.aw, %21
  br i1 %.not, label %._crit_edge, label %.lr.ph207.split, !llvm.loop !1696

.split209:                                        ; preds = %bb.ae, %._crit_edge.split.us.split
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ag:                                            ; preds = %._crit_edge
  %i.gw = sext i32 %.fr216 to i64
  %i.gx = uitofp i64 %i.gw to double
  %i.gy = fmul nnan double %i.gx, 3.125000e-02
  %i.gz = call double @llvm.ceil.f64(double %i.gy)
  %i.ha = fptoui double %i.gz to i64              ; 4 uses
  %i.hb = icmp ugt i64 %i.ha, 2305843009213693951
  br i1 %i.hb, label %bb.ah, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc87 unwind label %bb.an

.noexc87:                                         ; preds = %bb.ah
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ag
  %.not.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hc = shl nuw nsw i64 %i.ha, 2                ; 3 uses
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #38
          to label %.noexc88 unwind label %bb.an  ; 4 uses

.noexc88:                                         ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hd, i8 0, i64 %i.hc, i1 false), !tbaa !54
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc88, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.he, %.noexc88 ]
  %.sroa.0116.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.hd, %.noexc88 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.hf, %.noexc88 ]
  %i.hg = load ptr, ptr %i.cl, align 8, !tbaa !508 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !510
  store ptr %.sroa.0116.0, ptr %i.cl, align 8, !tbaa !508
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.hh, align 8, !tbaa !697
  store ptr %.sroa.11.0, ptr %i.hi, align 8, !tbaa !510
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hm) #39
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !508
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.aj, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.hn = phi ptr [ %.pre, %bb.aj ], [ %.sroa.0116.0, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ]
  %i.ho = sub nsw i32 %.044.lcssa, %i.al          ; 2 uses
  %i.hp = add nsw i32 %i.ho, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.hp, ptr %i.a, align 4, !tbaa !54, !noalias !1698
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !1698
  %i.hq = icmp sgt i32 %i.ho, -1
  br i1 %i.hq, label %.thread, label %bb.ak

.thread:                                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.pr = load ptr, ptr %14, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not163 = icmp eq ptr %.pr, null
  br i1 %.not163, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.hr = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc89 unwind label %bb.ap

.noexc89:                                         ; preds = %bb.am
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hr, ptr noundef nonnull @.str.91, i32 noundef 598)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.ap

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc89
  %i.hs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.aq ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.95, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hv = load ptr, ptr %14, align 8, !tbaa !55   ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !57
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !58
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.hw, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aq

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.as unwind label %bb.ap

bb.an:                                            ; preds = %bb.ai, %bb.ah
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ao:                                            ; preds = %bb.ak
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ap:                                            ; preds = %.noexc89, %bb.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.id, %bb.ap ], [ %i.ie, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #11
  br label %bb.aw

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.pr160 = load ptr, ptr %14, align 8, !tbaa !55 ; 4 uses
  %.not.i98 = icmp eq ptr %.pr160, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.if = load ptr, ptr %.pr160, align 8, !tbaa !57 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pr160, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.at
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !59
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr160, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.al, %.thread, %bb.as, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %i.ik = sext i32 %i.hp to i64                   ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.ik
  br i1 %.not.i.i, label %bb.au, label %bb.av, !prof !176

bb.au:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #40
  unreachable

bb.av:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not164 = icmp eq i32 %i.hp, 0
  br i1 %.not164, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_INS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerISt6vectorISG_SaISG_EEEEEUlmE_ET0_T_SY_SX_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.av
  %i.il = sext i32 %i.al to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i
  %.sroa.4.09.i = phi i64 [ %i.ja, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %.sroa.4.09.i, %2
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, !prof !176

.split.us.i:                                      ; preds = %.lr.ph.split.i
  call void @_ZSt9terminatev() #40, !noalias !1701
  unreachable
end_hunk_0
begin_hunk_1_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEEvT_SW_SW_T0_SX_T1_:bb.a
_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.s, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr7988, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.y = lshr i64 %.017.i, 1                      ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1048
  %i.ad = fcmp olt double %i.ac, %i.x             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = xor i64 %i.y, -1
  %i.ag = add nsw i64 %.017.i, %i.af
  %.sroa.012.1.i = select i1 %i.ad, ptr %i.ae, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.ad, i64 %i.ag, i64 %i.y    ; 2 uses
  %i.ah = icmp sgt i64 %.1.i, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit, !llvm.loop !1781

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit ], [ %i.o, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit ], [ %.tr7988, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ai = sub i64 %.pre-phi, %i.o
  %i.aj = ashr exact i64 %i.ai, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ak = sdiv i64 %.tr8291, 2                    ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.tr7988, i64 %i.ak ; 2 uses
  %i.am = ptrtoint ptr %.tr87 to i64              ; 3 uses
  %i.an = sub i64 %i.o, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !36
  %i.ar = load ptr, ptr %5, align 8, !tbaa !386   ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load double, ptr %i.as, align 8, !tbaa !1048
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57
  %.017.i59 = phi i64 [ %i.ao, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.1.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ] ; 2 uses
  %.sroa.012.016.i60 = phi ptr [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i57 ], [ %.sroa.012.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ] ; 2 uses
  %i.au = lshr i64 %.017.i59, 1                   ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i60, i64 %i.au ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !1048
  %i.az = fcmp olt double %i.at, %i.ay            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = xor i64 %i.au, -1
  %i.bc = add nsw i64 %.017.i59, %i.bb
  %.sroa.012.1.i63 = select i1 %i.az, ptr %.sroa.012.016.i60, ptr %i.ba ; 3 uses
  %.1.i64 = select i1 %i.az, i64 %i.au, i64 %i.bc ; 2 uses
  %i.bd = icmp sgt i64 %.1.i64, 0
  br i1 %i.bd, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit, !llvm.loop !1782

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i58
  %.pre94 = ptrtoint ptr %.sroa.012.1.i63 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi95 = phi i64 [ %.pre94, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit ], [ %i.am, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i63, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit.loopexit ], [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.be = sub i64 %.pre-phi95, %i.am
  %i.bf = ashr exact i64 %i.be, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit
  %.sroa.067.0 = phi ptr [ %i.q, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ], [ %i.al, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.aj, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.p, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ], [ %i.bf, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEET_SW_SW_RKT0_T1_.exit ] ; 2 uses
  %i.bg = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.067.0, ptr %.tr7988, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS9_6common4SpanIPKNSA_21BoundedHistCollectionELm18446744073709551615EEERKNSC_13HistogramCutsENSD_IKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_16MultiExpandEntryESaISO_EEENKUlmNSC_7Range1dEE_clEmSS_EUlmmE_EEEvT_SW_SW_T0_SX_T1_(ptr %.tr87, ptr %.sroa.067.0, ptr %i.bg, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.bh = sub nsw i64 %.tr8190, %.0               ; 2 uses
  %i.bi = sub nsw i64 %.tr8291, %.049             ; 2 uses
  %i.bj = icmp eq i64 %i.bh, 0
  %i.bk = icmp eq i64 %i.bi, 0
  %or.cond = or i1 %i.bj, %i.bk
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check165, label %.lr.ph.i.preheader181, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.s
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader181, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec167 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec167, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.w = shl i64 %index169, 3                     ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep171 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !36, !alias.scope !1783, !noalias !1786
  %wide.load173 = load <2 x i64>, ptr %i.x, align 8, !tbaa !36, !alias.scope !1783, !noalias !1786
  %i.y = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load174 = load <2 x i64>, ptr %next.gep170, align 8, !tbaa !36, !alias.scope !1786
  %wide.load175 = load <2 x i64>, ptr %i.y, align 8, !tbaa !36, !alias.scope !1786
  store <2 x i64> %wide.load174, ptr %next.gep171, align 8, !tbaa !36, !alias.scope !1783, !noalias !1786
  store <2 x i64> %wide.load175, ptr %i.x, align 8, !tbaa !36, !alias.scope !1783, !noalias !1786
  store <2 x i64> %wide.load172, ptr %next.gep170, align 8, !tbaa !36, !alias.scope !1786
  store <2 x i64> %wide.load173, ptr %i.y, align 8, !tbaa !36, !alias.scope !1786
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.z, label %middle.block177, label %vector.body168, !llvm.loop !1788

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.o, %n.vec167
  br i1 %cmp.n178, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block177
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block177 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block177 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader181 ] ; 3 uses
  %i.aa = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !36
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !36
  store i64 %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !36
  store i64 %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !1789

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.042.0 = phi ptr [ %0, %bb.d ], [ %.sroa.042.0.be, %.backedge ] ; 22 uses
  %.085 = phi i64 [ %i.i, %bb.d ], [ %.085.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.085                  ; 10 uses
  %i.ah = icmp slt i64 %.085, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.085, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.042.0, align 8, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %.idx87 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.042.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !36
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph100.preheader, label %._crit_edge101

.lr.ph100.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.085 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph100.preheader182, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph100.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.085
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.042.0, i64 %i.ar
  %scevgep128 = getelementptr i8, ptr %.sroa.042.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.042.0, %scevgep128
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph100.preheader182, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.042.0, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.042.0, i64 %i.av ; 3 uses
  %next.gep129 = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !36, !alias.scope !1790, !noalias !1793
  %wide.load130 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !36, !alias.scope !1790, !noalias !1793
  %i.ax = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !36, !alias.scope !1793
  %wide.load132 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !36, !alias.scope !1793
  store <2 x i64> %wide.load131, ptr %next.gep, align 8, !tbaa !36, !alias.scope !1790, !noalias !1793
  store <2 x i64> %wide.load132, ptr %i.aw, align 8, !tbaa !36, !alias.scope !1790, !noalias !1793
  store <2 x i64> %wide.load, ptr %next.gep129, align 8, !tbaa !36, !alias.scope !1793
  store <2 x i64> %wide.load130, ptr %i.ax, align 8, !tbaa !36, !alias.scope !1793
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader182

.lr.ph100.preheader182:                           ; preds = %vector.memcheck, %.lr.ph100.preheader, %middle.block
  %.02998.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph100.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.042.197.ph = phi ptr [ %.sroa.042.0, %vector.memcheck ], [ %.sroa.042.0, %.lr.ph100.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.039.096.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph100.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.085
  %xtraiter190 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader182, %.lr.ph100.prol
  %.02998.prol = phi i64 [ %i.be, %.lr.ph100.prol ], [ %.02998.ph, %.lr.ph100.preheader182 ]
  %.sroa.042.197.prol = phi ptr [ %i.bc, %.lr.ph100.prol ], [ %.sroa.042.197.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %.sroa.039.096.prol = phi ptr [ %i.bd, %.lr.ph100.prol ], [ %.sroa.039.096.ph, %.lr.ph100.preheader182 ] ; 3 uses
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph100.prol ], [ 0, %.lr.ph100.preheader182 ]
  %i.ba = load i64, ptr %.sroa.042.197.prol, align 8, !tbaa !36
  %i.bb = load i64, ptr %.sroa.039.096.prol, align 8, !tbaa !36
  store i64 %i.bb, ptr %.sroa.042.197.prol, align 8, !tbaa !36
  store i64 %i.ba, ptr %.sroa.039.096.prol, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.197.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !1796

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader182
  %.lcssa.unr = phi ptr [ poison, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %.02998.unr = phi i64 [ %.02998.ph, %.lr.ph100.preheader182 ], [ %i.be, %.lr.ph100.prol ]
  %.sroa.042.197.unr = phi ptr [ %.sroa.042.197.ph, %.lr.ph100.preheader182 ], [ %i.bc, %.lr.ph100.prol ]
  %.sroa.039.096.unr = phi ptr [ %.sroa.039.096.ph, %.lr.ph100.preheader182 ], [ %i.bd, %.lr.ph100.prol ]
  %i.bf = sub i64 %.02998.ph, %.0
  %i.bg = add i64 %i.bf, %.085
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %middle.block, %bb.g
  %.sroa.042.1.lcssa = phi ptr [ %.sroa.042.0, %bb.g ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph100.prol.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.bi = srem i64 %.0, %.085                     ; 2 uses
  %.not32 = icmp eq i64 %i.bi, 0
  br i1 %.not32, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %bb.h

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %.02998 = phi i64 [ %i.bz, %.lr.ph100 ], [ %.02998.unr, %.lr.ph100.prol.loopexit ]
  %.sroa.042.197 = phi ptr [ %i.bx, %.lr.ph100 ], [ %.sroa.042.197.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %.sroa.039.096 = phi ptr [ %i.by, %.lr.ph100 ], [ %.sroa.039.096.unr, %.lr.ph100.prol.loopexit ] ; 6 uses
  %i.bj = load i64, ptr %.sroa.042.197, align 8, !tbaa !36
  %i.bk = load i64, ptr %.sroa.039.096, align 8, !tbaa !36
  store i64 %i.bk, ptr %.sroa.042.197, align 8, !tbaa !36
  store i64 %i.bj, ptr %.sroa.039.096, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !36
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !36
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !36
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !36
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !36
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !36
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 24 ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !36
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !36
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !36
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 32
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !1797

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !36
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !218

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %.sroa.042.0, align 8, !tbaa !36
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !36
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.ce, ptr %.sroa.042.0, align 8, !tbaa !36
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.085, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check141 = icmp ult i64 %.085, 6
  br i1 %min.iters.check141, label %.lr.ph.preheader183, label %vector.memcheck135

vector.memcheck135:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.085
  %i.cq = shl i64 %i.cp, 3
  %scevgep136 = getelementptr i8, ptr %.sroa.042.0, i64 %i.cq
  %bound0137 = icmp ult ptr %.sroa.042.0, %i.cc
  %bound1138 = icmp ult ptr %scevgep136, %i.cn
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %.lr.ph.preheader183, label %vector.ph142

vector.ph142:                                     ; preds = %vector.memcheck135
  %n.vec143 = and i64 %.085, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec143, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next152, %vector.body144 ] ; 2 uses
  %i.cu = mul i64 %index145, -8                   ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep147, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep147, i64 -32 ; 2 uses
  %wide.load148 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !36, !alias.scope !1798, !noalias !1801
end_hunk_1
begin_hunk_2_@_ZNK7xgboost4tree13HistEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsENS2_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE:bb.a
bb.n:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dg = load float, ptr %i.bt, align 8, !tbaa !3125
  %i.dh = fsub float %i.df, %i.dg                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.di = call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp oeq float %i.di, +inf
  br i1 %i.dj, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = and i32 %i.cy, 2147483647
  %.not.i.i57 = icmp ugt i32 %i.dk, %4
  br i1 %.not.i.i57, label %.split.i60, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58

.split.i60:                                       ; preds = %bb.o
  %i.dl = fcmp ule float %i.cx, %i.dh
  br i1 %i.dl, label %bb.p, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58: ; preds = %bb.o
  %i.dm = fcmp ogt float %i.dh, %i.cx
  br i1 %i.dm, label %bb.p, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61

bb.p:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58, %.split.i60
  store float %i.dh, ptr %8, align 8, !tbaa !707
  store i32 %4, ptr %i.o, align 4, !tbaa !710
  store float %i.ch, ptr %i.p, align 8, !tbaa !711
  store i8 1, ptr %i.s, align 8, !tbaa !3140
  store <2 x double> %i.dd, ptr %i.r, align 8, !tbaa !1048
  store <2 x double> %i.db, ptr %i.bv, align 8, !tbaa !1048
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61: ; preds = %bb.p, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58, %.split.i60, %bb.n
  %i.dn = phi float [ %i.ch, %bb.p ], [ %i.cv, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cv, %.split.i60 ], [ %i.cv, %bb.n ] ; 2 uses
  %i.do = phi i8 [ 1, %bb.p ], [ %i.cw, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cw, %.split.i60 ], [ %i.cw, %bb.n ] ; 2 uses
  %i.dp = phi float [ %i.dh, %bb.p ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cx, %.split.i60 ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dq = phi i32 [ %4, %bb.p ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cy, %.split.i60 ], [ %i.cy, %bb.n ] ; 2 uses
  %i.dr = phi float [ %i.dh, %bb.p ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cx, %.split.i60 ], [ %i.cz, %bb.n ]
  %i.ds = phi i32 [ %4, %bb.p ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cy, %.split.i60 ], [ %i.da, %bb.n ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.m, %i.dt
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !3231

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.x

bb.r:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.x

bb.s:                                             ; preds = %._crit_edge
  %i.dw = add nsw i32 %i.n, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = uitofp i64 %i.dx to double
  %i.dz = fmul nnan double %i.dy, 3.125000e-02
  %i.ea = call double @llvm.ceil.f64(double %i.dz)
  %i.eb = fptoui double %i.ea to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !54
  %.not131 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not131)
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr null, i64 noundef %i.eb, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 unwind label %bb.t

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113: ; preds = %bb.s
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !508 ; 2 uses
  %.pre114 = load float, ptr %i.p, align 8, !tbaa !711 ; 2 uses
  %.pre115.pre = load float, ptr %8, align 8, !tbaa !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ec = fptoui float %.pre114 to i64            ; 2 uses
  %i.ed = lshr i64 %i.ec, 5
  %i.ee = and i64 %i.ec, 31
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ed ; 2 uses
  %i.eg = lshr exact i64 2147483648, %i.ee
  %i.eh = trunc nuw i64 %i.eg to i32
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !54
  %i.ej = or i32 %i.ei, %i.eh
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !54
  %.pre116 = load i32, ptr %i.o, align 4, !tbaa !710
  br label %._crit_edge.thread

bb.t:                                             ; preds = %bb.s
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.x

._crit_edge.thread:                               ; preds = %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113, %._crit_edge
  %i.el = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ null, %._crit_edge ], [ null, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ] ; 3 uses
  %i.em = phi float [ %.pre114, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ %i.dn, %._crit_edge ], [ 0.000000e+00, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ]
  %i.en = phi i32 [ %.pre116, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ %i.dq, %._crit_edge ], [ 0, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ] ; 2 uses
  %i.eo = phi float [ %.pre115.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ %i.dp, %._crit_edge ], [ 0.000000e+00, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ] ; 4 uses
  %i.ep = call float @llvm.fabs.f32(float %i.eo)
  %i.eq = fcmp oeq float %i.ep, +inf
  br i1 %i.eq, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread
  %i.er = and i32 %i.en, 2147483647
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !710
  %i.eu = and i32 %i.et, 2147483647
  %.not.i.i63 = icmp samesign ugt i32 %i.eu, %i.er
  %i.ev = load float, ptr %7, align 8, !tbaa !707 ; 2 uses
  br i1 %.not.i.i63, label %.split.i65, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64

.split.i65:                                       ; preds = %bb.u
  %i.ew = fcmp ule float %i.ev, %i.eo
  br i1 %i.ew, label %bb.v, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64: ; preds = %bb.u
  %i.ex = fcmp ogt float %i.eo, %i.ev
  br i1 %i.ex, label %bb.v, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

bb.v:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64, %.split.i65
  store float %i.eo, ptr %7, align 8, !tbaa !707
  store i32 %i.en, ptr %i.es, align 4, !tbaa !710
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.em, ptr %i.ey, align 8, !tbaa !711
  %i.ez = load i8, ptr %i.s, align 8, !tbaa !3140, !range !197, !noundef !198
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.ez, ptr %i.fa, align 8, !tbaa !3140
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc66 unwind label %bb.h   ; 0 uses

.noexc66:                                         ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !1073
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !1073
  %.pre117 = load ptr, ptr %i.q, align 8, !tbaa !508
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit: ; preds = %.noexc66, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64, %.split.i65, %._crit_edge.thread
  %i.fg = phi ptr [ %.pre117, %.noexc66 ], [ %i.el, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64 ], [ %i.el, %.split.i65 ], [ %i.el, %._crit_edge.thread ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !510
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit: ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void

bb.x:                                             ; preds = %bb.h, %bb.r, %bb.q, %bb.t
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.t ], [ %i.dv, %bb.r ], [ %i.by, %bb.h ], [ %i.du, %bb.q ]
  %i.fm = load ptr, ptr %i.q, align 8, !tbaa !508 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i67, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !510
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit68

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit68: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  resume { ptr, i32 } %.pn48.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"struct.xgboost::tree::SplitEntryContainer.816", align 8 ; 16 uses
  %11 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %12 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = sext i32 %7 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !408
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = zext i32 %6 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !508  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54   ; 5 uses
  %i.o = add i32 %6, 1
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !54
  %i.s = sub nsw i32 %i.r, %i.n                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3094
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !54
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store float 0.000000e+00, ptr %10, align 8, !tbaa !707
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !710
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !711
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ab = sext i32 %i.n to i64                    ; 7 uses
  %i.ac = sext i32 %i.s to i64                    ; 3 uses
  %i.ad = icmp eq i32 %i.s, -1
  br i1 %i.ad, label %.split.i, label %bb.b

.split.i:                                         ; preds = %bb.a
  %.not8.i = icmp ult i64 %4, %i.ab
  br i1 %.not8.i, label %bb.c, label %bb.d, !prof !176

bb.b:                                             ; preds = %bb.a
  %i.ae = add nsw i64 %i.ac, %i.ab
  %.not.i = icmp ugt i64 %i.ae, %4
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !176

bb.c:                                             ; preds = %bb.b, %.split.i
  tail call void @_ZSt9terminatev() #40
  unreachable

bb.d:                                             ; preds = %.split.i
  %i.af = sub nuw i64 %4, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ag = phi i64 [ %i.af, %bb.d ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = icmp ne ptr %5, null
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f, !prof !218

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #40
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ab
  %i.al = add i32 %i.n, -1
  %i.am = add i32 %i.al, %.sroa.speculated        ; 2 uses
  %.not139 = icmp eq i32 %i.n, %i.am
  br i1 %.not139, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ao = or i32 %6, -2147483648                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread
  %.not48 = icmp eq i32 %i.bs, -1
  br i1 %.not48, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread
  %i.ar = phi i8 [ 0, %.lr.ph ], [ %i.bo, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.as = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bp, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.at = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bq, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 5 uses
  %i.au = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %.045143.a = phi i32 [ -1, %.lr.ph ], [ %i.bs, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.av = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bc, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ]
  %15 = sub nsw i64 %indvars.iv, %i.ab            ; 2 uses
  %i.aw = icmp ugt i64 %2, %15
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.i, !prof !218

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ag
  br i1 %i.az, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, label %bb.j, !prof !218

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ay
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !1048
  %i.bc = fadd <2 x double> %i.av, %i.bb          ; 4 uses
  %i.bd = load <2 x double>, ptr %i.j, align 8, !tbaa !1048
  %i.be = fsub <2 x double> %i.bd, %i.bc          ; 2 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store <2 x double> %i.be, ptr %11, align 16, !tbaa !1048
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store <2 x double> %i.bc, ptr %12, align 16, !tbaa !1048
  %i.bg = call noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.bh = load float, ptr %i.an, align 8, !tbaa !3125
  %i.bi = fsub float %i.bg, %i.bh                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60
  %i.bl = and i32 %i.au, 2147483647
  %.not.i.i = icmp ugt i32 %i.bl, %6
  br i1 %.not.i.i, label %.split.i61, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i61:                                       ; preds = %bb.k
  %i.bm = fcmp ule float %i.at, %i.bi
  br i1 %i.bm, label %bb.l, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.k
  %i.bn = fcmp ogt float %i.bi, %i.at
  br i1 %i.bn, label %bb.l, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

bb.l:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61
  store float %i.bi, ptr %10, align 8, !tbaa !707
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !710
  store float +qnan, ptr %i.y, align 8, !tbaa !711
  store i8 1, ptr %i.ap, align 8, !tbaa !3140
  store <2 x double> %i.be, ptr %i.aa, align 8, !tbaa !1048
  store <2 x double> %i.bc, ptr %i.aq, align 8, !tbaa !1048
  %16 = trunc nsw i64 %indvars.iv to i32
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread: ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61, %bb.l
  %i.bo = phi i8 [ 1, %bb.l ], [ %i.ar, %.split.i61 ], [ %i.ar, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ar, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bp = phi float [ +qnan, %bb.l ], [ %i.as, %.split.i61 ], [ %i.as, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.as, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bq = phi float [ %i.bi, %bb.l ], [ %i.at, %.split.i61 ], [ %i.at, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.at, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.br = phi i32 [ %i.ao, %bb.l ], [ %i.au, %.split.i61 ], [ %i.au, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.au, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bs = phi i32 [ %16, %bb.l ], [ %.045143.a, %.split.i61 ], [ %.045143.a, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %.045143.a, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %17 = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.am, %17
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !3232

bb.m:                                             ; preds = %._crit_edge
  %i.bt = uitofp i64 %i.ac to double
  %i.bu = fmul nnan double %i.bt, 3.125000e-02
  %i.bv = call double @llvm.ceil.f64(double %i.bu)
  %i.bw = fptoui double %i.bv to i64              ; 4 uses
  %i.bx = icmp ugt i64 %i.bw, 2305843009213693951
  br i1 %i.bx, label %.noexc62, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc62:                                         ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.noexc63

.noexc63:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = shl nuw nsw i64 %i.bw, 2                ; 3 uses
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #38 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.by, i1 false), !tbaa !54
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc63
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc63 ]
  %i.cc = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc63 ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc63 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.cc, ptr %i.z, align 8, !tbaa !508
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !697
  store ptr %.sroa.11.0, ptr %i.ce, align 8, !tbaa !510
  %i.cf = sub nsw i32 %i.bs, %i.n
  %.fr180 = freeze i32 %i.cf                      ; 4 uses
  %i.cg = add i32 %.fr180, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !54, !noalias !3233
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !3233
  %i.ch = icmp sgt i32 %.fr180, -1
  br i1 %i.ch, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %.pr = load ptr, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc64 unwind label %bb.r

.noexc64:                                         ; preds = %bb.p
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ci, ptr noundef nonnull @.str.91, i32 noundef 191)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.r

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc64
  %i.cj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.s ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.95, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !58
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cn, i64 noundef %i.cp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.u unwind label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %.noexc64, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.r ], [ %i.cu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #11
  br label %bb.y

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %.pr131 = load ptr, ptr %13, align 8, !tbaa !55 ; 4 uses
  %.not.i73 = icmp eq ptr %.pr131, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %.pr131, align 8, !tbaa !57 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !59
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.o, %.thread, %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.da = sext i32 %i.cg to i64                   ; 2 uses
  %.not.i.i78 = icmp ult i64 %2, %i.da
  br i1 %.not.i.i78, label %bb.w, label %bb.x, !prof !176

bb.w:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #40
  unreachable

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not135 = icmp eq i32 %i.cg, 0
  br i1 %.not135, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.x
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !644, !noalias !3236
  %invariant.gep = getelementptr [4 x i8], ptr %i.db, i64 %i.ab ; 3 uses
  %i.dc = icmp eq i32 %.fr180, 0
  br i1 %i.dc, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.da, -2
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, %.lr.ph.split.i.preheader.new
  %.sroa.4.09.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.ea, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1 ]
  %exitcond.not.i = icmp eq i64 %.sroa.4.09.i, %2
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, !prof !176

.split.us.i:                                      ; preds = %.lr.ph.split.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.split.i.epil.preheader
  call void @_ZSt9terminatev() #40, !noalias !3236
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %.lr.ph.split.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.4.09.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !36, !noalias !3236
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.de
  %i.df = load float, ptr %gep, align 4, !tbaa !311, !noalias !3236
  %i.dg = fptoui float %i.df to i64               ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = and i64 %i.dg, 31
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dh ; 2 uses
  %i.dk = lshr exact i64 2147483648, %i.di
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !54, !noalias !3236
  %i.dn = or i32 %i.dm, %i.dl
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !54, !noalias !3236
  %i.do = or disjoint i64 %.sroa.4.09.i, 1        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.do, %2
  br i1 %exitcond.not.i.1, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, !prof !176

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36, !noalias !3236
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dr = load float, ptr %gep.1, align 4, !tbaa !311, !noalias !3236
end_hunk_2
