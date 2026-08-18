inline.NumInlined: 9700
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK7xgboost4tree13HistEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsENS2_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE:bb.a
bb.o:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dg = load float, ptr %i.bt, align 8, !tbaa !759
  %i.dh = fsub float %i.df, %i.dg                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.di = call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp oeq float %i.di, +inf
  br i1 %i.dj, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = and i32 %i.cy, 2147483647
  %.not.i.i61 = icmp ugt i32 %i.dk, %4
  br i1 %.not.i.i61, label %.split.i64, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62

.split.i64:                                       ; preds = %bb.p
  %i.dl = fcmp ule float %i.cx, %i.dh
  br i1 %i.dl, label %bb.q, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62: ; preds = %bb.p
  %i.dm = fcmp ogt float %i.dh, %i.cx
  br i1 %i.dm, label %bb.q, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65

bb.q:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62, %.split.i64
  store float %i.dh, ptr %8, align 8, !tbaa !570
  store i32 %4, ptr %i.o, align 4, !tbaa !576
  store float %i.ch, ptr %i.p, align 8, !tbaa !577
  store i8 1, ptr %i.s, align 8, !tbaa !810
  store <2 x double> %i.dd, ptr %i.r, align 8, !tbaa !708
  store <2 x double> %i.db, ptr %i.bv, align 8, !tbaa !708
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit65: ; preds = %bb.q, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62, %.split.i64, %bb.o
  %i.dn = phi float [ %i.ch, %bb.q ], [ %i.cv, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cv, %.split.i64 ], [ %i.cv, %bb.o ] ; 2 uses
  %i.do = phi i8 [ 1, %bb.q ], [ %i.cw, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cw, %.split.i64 ], [ %i.cw, %bb.o ] ; 2 uses
  %i.dp = phi float [ %i.dh, %bb.q ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cx, %.split.i64 ], [ %i.cx, %bb.o ] ; 2 uses
  %i.dq = phi i32 [ %4, %bb.q ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cy, %.split.i64 ], [ %i.cy, %bb.o ] ; 2 uses
  %i.dr = phi float [ %i.dh, %bb.q ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cx, %.split.i64 ], [ %i.cz, %bb.o ]
  %i.ds = phi i32 [ %4, %bb.q ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i62 ], [ %i.cy, %.split.i64 ], [ %i.da, %bb.o ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.m, %i.dt
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !2200

bb.r:                                             ; preds = %bb.k
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.y

bb.s:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge
  %i.dw = add nsw i32 %i.n, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = uitofp i64 %i.dx to double
  %i.dz = fmul nnan double %i.dy, 3.125000e-02
  %i.ea = call double @llvm.ceil.f64(double %i.dz)
  %i.eb = fptoui double %i.ea to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !103
  %.not135 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not135)
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr null, i64 noundef %i.eb, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 unwind label %bb.u

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117: ; preds = %bb.t
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !475 ; 2 uses
  %.pre118 = load float, ptr %i.p, align 8, !tbaa !577 ; 2 uses
  %.pre119.pre = load float, ptr %8, align 8, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ec = fptoui float %.pre118 to i64            ; 2 uses
  %i.ed = lshr i64 %i.ec, 5
  %i.ee = and i64 %i.ec, 31
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ed ; 2 uses
  %i.eg = lshr exact i64 2147483648, %i.ee
  %i.eh = trunc nuw i64 %i.eg to i32
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !103
  %i.ej = or i32 %i.ei, %i.eh
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !103
  %.pre120 = load i32, ptr %i.o, align 4, !tbaa !576
  br label %._crit_edge.thread

bb.u:                                             ; preds = %bb.t
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.y

._crit_edge.thread:                               ; preds = %.loopexit, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117, %._crit_edge
  %i.el = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ null, %._crit_edge ], [ null, %.loopexit ] ; 3 uses
  %i.em = phi float [ %.pre118, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ %i.dn, %._crit_edge ], [ 0.000000e+00, %.loopexit ]
  %i.en = phi i32 [ %.pre120, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ %i.dq, %._crit_edge ], [ 0, %.loopexit ] ; 2 uses
  %i.eo = phi float [ %.pre119.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge117 ], [ %i.dp, %._crit_edge ], [ 0.000000e+00, %.loopexit ] ; 4 uses
  %i.ep = call float @llvm.fabs.f32(float %i.eo)
  %i.eq = fcmp oeq float %i.ep, +inf
  br i1 %i.eq, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread
  %i.er = and i32 %i.en, 2147483647
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !576
  %i.eu = and i32 %i.et, 2147483647
  %.not.i.i67 = icmp samesign ugt i32 %i.eu, %i.er
  %i.ev = load float, ptr %7, align 8, !tbaa !570 ; 2 uses
  br i1 %.not.i.i67, label %.split.i69, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68

.split.i69:                                       ; preds = %bb.v
  %i.ew = fcmp ule float %i.ev, %i.eo
  br i1 %i.ew, label %bb.w, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68: ; preds = %bb.v
  %i.ex = fcmp ogt float %i.eo, %i.ev
  br i1 %i.ex, label %bb.w, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

bb.w:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68, %.split.i69
  store float %i.eo, ptr %7, align 8, !tbaa !570
  store i32 %i.en, ptr %i.es, align 4, !tbaa !576
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.em, ptr %i.ey, align 8, !tbaa !577
  %i.ez = load i8, ptr %i.s, align 8, !tbaa !810, !range !123, !noundef !124
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.ez, ptr %i.fa, align 8, !tbaa !810
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc70 unwind label %bb.h   ; 0 uses

.noexc70:                                         ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !758
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !758
  %.pre121 = load ptr, ptr %i.q, align 8, !tbaa !475
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit: ; preds = %.noexc70, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68, %.split.i69, %._crit_edge.thread
  %i.fg = phi ptr [ %.pre121, %.noexc70 ], [ %i.el, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i68 ], [ %i.el, %.split.i69 ], [ %i.el, %._crit_edge.thread ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !477
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #37
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit: ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

bb.y:                                             ; preds = %bb.u, %bb.s, %bb.r, %bb.h
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %bb.r ], [ %i.ek, %bb.u ], [ %i.dv, %bb.s ], [ %i.by, %bb.h ]
  %i.fm = load ptr, ptr %i.q, align 8, !tbaa !475 ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i71, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit72, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !477
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #37
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit72

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit72: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"struct.xgboost::tree::SplitEntryContainer", align 8 ; 16 uses
  %11 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %12 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %13 = alloca %"class.std::unique_ptr.300", align 8 ; 8 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = sext i32 %7 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !203
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = zext i32 %6 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !475  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !103  ; 7 uses
  %i.o = add i32 %6, 1
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !103
  %i.s = sub nsw i32 %i.r, %i.n                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !592
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store float 0.000000e+00, ptr %10, align 8, !tbaa !570
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !576
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !577
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ab = sext i32 %i.n to i64                    ; 5 uses
  %i.ac = sext i32 %i.s to i64                    ; 3 uses
  %i.ad = icmp eq i32 %i.s, -1
  br i1 %i.ad, label %.split.i, label %bb.b

.split.i:                                         ; preds = %bb.a
  %.not8.i = icmp ult i64 %4, %i.ab
  br i1 %.not8.i, label %bb.c, label %bb.d, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.ae = add nsw i64 %i.ac, %i.ab
  %.not.i = icmp ugt i64 %i.ae, %4
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !104

bb.c:                                             ; preds = %bb.b, %.split.i
  tail call void @_ZSt9terminatev() #38
  unreachable

bb.d:                                             ; preds = %.split.i
  %i.af = sub nuw i64 %4, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ag = phi i64 [ %i.af, %bb.d ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = icmp ne ptr %5, null
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f, !prof !136

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #38
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
  %.0143 = phi i32 [ %i.n, %.lr.ph ], [ %17, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %.037142 = phi i32 [ -1, %.lr.ph ], [ %i.bs, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.av = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bc, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ]
  %15 = sub nsw i32 %.0143, %i.n
  %16 = zext nneg i32 %15 to i64                  ; 2 uses
  %i.aw = icmp ugt i64 %2, %16
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.i, !prof !136

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ag
  br i1 %i.az, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, label %bb.j, !prof !136

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ay
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !708
  %i.bc = fadd <2 x double> %i.av, %i.bb          ; 4 uses
  %i.bd = load <2 x double>, ptr %i.j, align 8, !tbaa !708
  %i.be = fsub <2 x double> %i.bd, %i.bc          ; 2 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !592
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store <2 x double> %i.be, ptr %11, align 16, !tbaa !708
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store <2 x double> %i.bc, ptr %12, align 16, !tbaa !708
  %i.bg = call noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.bh = load float, ptr %i.an, align 8, !tbaa !759
  %i.bi = fsub float %i.bg, %i.bh                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
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
  store float %i.bi, ptr %10, align 8, !tbaa !570
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !576
  store float +qnan, ptr %i.y, align 8, !tbaa !577
  store i8 1, ptr %i.ap, align 8, !tbaa !810
  store <2 x double> %i.be, ptr %i.aa, align 8, !tbaa !708
  store <2 x double> %i.bc, ptr %i.aq, align 8, !tbaa !708
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread: ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61, %bb.l
  %i.bo = phi i8 [ 1, %bb.l ], [ %i.ar, %.split.i61 ], [ %i.ar, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ar, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bp = phi float [ +qnan, %bb.l ], [ %i.as, %.split.i61 ], [ %i.as, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.as, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bq = phi float [ %i.bi, %bb.l ], [ %i.at, %.split.i61 ], [ %i.at, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.at, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.br = phi i32 [ %i.ao, %bb.l ], [ %i.au, %.split.i61 ], [ %i.au, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.au, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bs = phi i32 [ %.0143, %bb.l ], [ %.037142, %.split.i61 ], [ %.037142, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %.037142, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 3 uses
  %17 = add nsw i32 %.0143, 1                     ; 2 uses
  %.not = icmp eq i32 %17, %i.am
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !2201

bb.m:                                             ; preds = %._crit_edge
  %i.bt = uitofp i64 %i.ac to double
  %i.bu = fmul nnan double %i.bt, 3.125000e-02
  %i.bv = call double @llvm.ceil.f64(double %i.bu)
  %i.bw = fptoui double %i.bv to i64              ; 4 uses
  %i.bx = icmp ugt i64 %i.bw, 2305843009213693951
  br i1 %i.bx, label %.noexc62, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc62:                                         ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #35
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.noexc63

.noexc63:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = shl nuw nsw i64 %i.bw, 2                ; 3 uses
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #36 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.by, i1 false), !tbaa !103
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc63
  %i.cc = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc63 ] ; 8 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc63 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc63 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.cc, ptr %i.z, align 8, !tbaa !475
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !484
  store ptr %.sroa.11.0, ptr %i.ce, align 8, !tbaa !477
  %i.cf = sub nsw i32 %i.bs, %i.n
  %.fr180 = freeze i32 %i.cf                      ; 4 uses
  %i.cg = add i32 %.fr180, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !103, !noalias !2202
  store i32 0, ptr %i.b, align 4, !tbaa !103, !noalias !2202
  %i.ch = icmp sgt i32 %.fr180, -1
  br i1 %i.ch, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.300") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %.pr = load ptr, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc64 unwind label %bb.r

.noexc64:                                         ; preds = %bb.p
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ci, ptr noundef nonnull @.str.110, i32 noundef 191)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.r

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc64
  %i.cj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.s ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.36, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.112, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !38   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !15
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cn, i64 noundef %i.cp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.12, i64 noundef 2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %bb.y

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pr131 = load ptr, ptr %13, align 8, !tbaa !38 ; 4 uses
  %.not.i73 = icmp eq ptr %.pr131, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %.pr131, align 8, !tbaa !19 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #37
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #37
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.o, %.thread, %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.da = sext i32 %i.cg to i64                   ; 2 uses
  %.not.i.i78 = icmp ult i64 %2, %i.da
  br i1 %.not.i.i78, label %bb.w, label %bb.x, !prof !104

bb.w:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #38
  unreachable

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not135 = icmp eq i32 %i.cg, 0
  br i1 %.not135, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.x
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !745, !noalias !2205
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
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, !prof !104

.split.us.i:                                      ; preds = %.lr.ph.split.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.split.i.epil.preheader
  call void @_ZSt9terminatev() #38, !noalias !2205
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %.lr.ph.split.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.4.09.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !47, !noalias !2205
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.de
  %i.df = load float, ptr %gep, align 4, !tbaa !141, !noalias !2205
  %i.dg = fptoui float %i.df to i64               ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = and i64 %i.dg, 31
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dh ; 2 uses
  %i.dk = lshr exact i64 2147483648, %i.di
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !103, !noalias !2205
  %i.dn = or i32 %i.dm, %i.dl
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !103, !noalias !2205
  %i.do = or disjoint i64 %.sroa.4.09.i, 1        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.do, %2
  br i1 %exitcond.not.i.1, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, !prof !104

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !47, !noalias !2205
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dr = load float, ptr %gep.1, align 4, !tbaa !141, !noalias !2205
end_hunk_0
