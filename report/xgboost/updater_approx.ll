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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !103  ; 5 uses
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
  %i.ab = sext i32 %i.n to i64                    ; 7 uses
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
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %.045143.a = phi i32 [ -1, %.lr.ph ], [ %i.bs, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.av = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bc, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ]
  %15 = sub nsw i64 %indvars.iv, %i.ab            ; 2 uses
  %i.aw = icmp ugt i64 %2, %15
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.i, !prof !136

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #38
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
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
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc63 ]
  %i.cc = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc63 ] ; 8 uses
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
begin_hunk_1_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_:bb.a
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.016.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47
  %i.u = load i64, ptr %i.l, align 8, !tbaa !47
  %i.v = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.t, i64 noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.011.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, !llvm.loop !2259

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aa = sub i64 %.pre-phi, %i.n
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.ac = sdiv i64 %4, 2                          ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51
  %.016.i52 = phi i64 [ %.1.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51 ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %.sroa.011.015.i53 = phi ptr [ %.sroa.011.1.i56, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ] ; 2 uses
  %i.aj = lshr i64 %.016.i52, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i53, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !47
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.an = call noundef zeroext i1 @_ZZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EEENKUlmNS5_7Range1dEE_clEmSI_ENKUlmmE_clEmm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.al, i64 noundef %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = xor i64 %i.aj, -1
  %i.aq = add nsw i64 %.016.i52, %i.ap
  %.sroa.011.1.i56 = select i1 %i.an, ptr %.sroa.011.015.i53, ptr %i.ao ; 3 uses
  %.1.i57 = select i1 %i.an, i64 %i.aj, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i57, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, !llvm.loop !2260

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i51
  %.pre77 = ptrtoint ptr %.sroa.011.1.i56 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi78 = phi i64 [ %.pre77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.as = sub i64 %.pre-phi78, %i.af
  %i.at = ashr exact i64 %i.as, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit
  %.sroa.064.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %.sroa.061.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Iter_comp_valIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmNS0_5__ops14_Val_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEET_SV_SV_RKT0_T1_.exit ] ; 2 uses
  %i.au = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %.sroa.064.0, ptr %1, ptr %.sroa.061.0) ; 2 uses
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_(ptr %0, ptr %.sroa.064.0, ptr %i.au, i64 noundef %.0, i64 noundef %.043, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %5)
  %i.av = sub nsw i64 %3, %.0
  %i.aw = sub nsw i64 %4, %.043
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNSA_21BoundedHistCollectionERKNS9_6common13HistogramCutsENSF_4SpanIKNS9_11FeatureTypeELm18446744073709551615EEEPS3_INSA_14CPUExpandEntryESaISN_EEENKUlmNSF_7Range1dEE_clEmSR_EUlmmE_EEEvT_SV_SV_T0_SW_T1_(ptr %i.au, ptr %.sroa.061.0, ptr %2, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.643") align 8 %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEET_S8_S8_S8_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #9 comdat {
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
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !47, !alias.scope !2261, !noalias !2264
  %wide.load173 = load <2 x i64>, ptr %i.x, align 8, !tbaa !47, !alias.scope !2261, !noalias !2264
  %i.y = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load174 = load <2 x i64>, ptr %next.gep170, align 8, !tbaa !47, !alias.scope !2264
  %wide.load175 = load <2 x i64>, ptr %i.y, align 8, !tbaa !47, !alias.scope !2264
  store <2 x i64> %wide.load174, ptr %next.gep171, align 8, !tbaa !47, !alias.scope !2261, !noalias !2264
  store <2 x i64> %wide.load175, ptr %i.x, align 8, !tbaa !47, !alias.scope !2261, !noalias !2264
  store <2 x i64> %wide.load172, ptr %next.gep170, align 8, !tbaa !47, !alias.scope !2264
  store <2 x i64> %wide.load173, ptr %i.y, align 8, !tbaa !47, !alias.scope !2264
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.z, label %middle.block177, label %vector.body168, !llvm.loop !2266

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
  %i.aa = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !47
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !47
  store i64 %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !47
  store i64 %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !2267

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
  %i.aj = load i64, ptr %.sroa.042.0, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 8
  %.idx87 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.042.0, i64 %.idx87
  %gepdiff = add nsw i64 %.idx87, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.042.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !47
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
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !47, !alias.scope !2268, !noalias !2271
  %wide.load130 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !47, !alias.scope !2268, !noalias !2271
  %i.ax = getelementptr i8, ptr %next.gep129, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %next.gep129, align 8, !tbaa !47, !alias.scope !2271
  %wide.load132 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !47, !alias.scope !2271
  store <2 x i64> %wide.load131, ptr %next.gep, align 8, !tbaa !47, !alias.scope !2268, !noalias !2271
  store <2 x i64> %wide.load132, ptr %i.aw, align 8, !tbaa !47, !alias.scope !2268, !noalias !2271
  store <2 x i64> %wide.load, ptr %next.gep129, align 8, !tbaa !47, !alias.scope !2271
  store <2 x i64> %wide.load130, ptr %i.ax, align 8, !tbaa !47, !alias.scope !2271
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !2273

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
  %i.ba = load i64, ptr %.sroa.042.197.prol, align 8, !tbaa !47
  %i.bb = load i64, ptr %.sroa.039.096.prol, align 8, !tbaa !47
  store i64 %i.bb, ptr %.sroa.042.197.prol, align 8, !tbaa !47
  store i64 %i.ba, ptr %.sroa.039.096.prol, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.042.197.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.039.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02998.prol, 1         ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph100.prol.loopexit, label %.lr.ph100.prol, !llvm.loop !2274

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
  %i.bj = load i64, ptr %.sroa.042.197, align 8, !tbaa !47
  %i.bk = load i64, ptr %.sroa.039.096, align 8, !tbaa !47
  store i64 %i.bk, ptr %.sroa.042.197, align 8, !tbaa !47
  store i64 %i.bj, ptr %.sroa.039.096, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !47
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !47
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !47
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 16 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !47
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !47
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 24 ; 2 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !47
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !47
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !47
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.042.197, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.039.096, i64 32
  %i.bz = add nuw nsw i64 %.02998, 4              ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond109.not.3, label %._crit_edge101, label %.lr.ph100, !llvm.loop !2275

bb.h:                                             ; preds = %._crit_edge101
  %i.ca = sub nsw i64 %.085, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.042.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !47
  %.idx = shl nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !136

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.042.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %.sroa.042.0, align 8, !tbaa !47
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !47
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.ce, ptr %.sroa.042.0, align 8, !tbaa !47
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
  %wide.load148 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !47, !alias.scope !2276, !noalias !2279
end_hunk_1
