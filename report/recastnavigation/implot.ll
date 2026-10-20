Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot15Locator_DefaultER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_:bb.a
  %i.dq = phi <2 x float> [ %i.dp, %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit ], [ %i.bs, %bb.o ] ; 3 uses
  %i.dr = add nuw nsw i32 %.05977, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, 10
  br i1 %exitcond.not, label %bb.n, label %bb.o, !llvm.loop !517

bb.x:                                             ; preds = %._crit_edge
  %i.ds = fmul float %2, 8.000000e-01
  %i.dt = extractelement <2 x float> %i.ba, i64 0
  %i.du = fcmp ogt float %i.dt, %i.ds
  br i1 %i.du, label %bb.y, label %.loopexit

.critedge:                                        ; preds = %._crit_edge
  %i.dv = extractelement <2 x float> %i.ba, i64 1
  %.old67 = fcmp ogt float %i.dv, %2
  br i1 %.old67, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.critedge, %bb.x
  %.not85.not = icmp sgt i32 %.061.lcssa, %i.at
  br i1 %.not85.not, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %bb.y
  %i.dw = add nsw i32 %.061.lcssa, -1
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !273
  %i.dz = sext i32 %i.dw to i64
  %i.ea = sext i32 %i.at to i64
  br label %bb.z

._crit_edge89:                                    ; preds = %bb.z, %bb.y
  %i.eb = add nsw i32 %.061.lcssa, 1              ; 2 uses
  %i.ec = load i32, ptr %0, align 8, !tbaa !267   ; 2 uses
  %i.ed = icmp slt i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %._crit_edge89
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !273
  %i.eg = sext i32 %i.eb to i64
  %i.eh = sext i32 %i.ec to i64
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph88, %bb.z
  %indvars.iv = phi i64 [ %i.dz, %.lr.ph88 ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.ei = getelementptr inbounds [40 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 25
  store i8 0, ptr %i.ej, align 1, !tbaa !275
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.ea
  br i1 %.not, label %._crit_edge89, label %bb.z, !llvm.loop !518

bb.aa:                                            ; preds = %.lr.ph92, %bb.aa
  %indvars.iv94 = phi i64 [ %i.eg, %.lr.ph92 ], [ %indvars.iv.next95, %bb.aa ] ; 2 uses
  %i.ek = getelementptr inbounds [40 x i8], ptr %i.ef, i64 %indvars.iv94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 25
  store i8 0, ptr %i.el, align 1, !tbaa !275
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 2 ; 2 uses
  %i.em = icmp slt i64 %indvars.iv.next95, %i.eh
  br i1 %i.em, label %bb.aa, label %.loopexit, !llvm.loop !519

.loopexit:                                        ; preds = %bb.aa, %._crit_edge89, %bb.x, %.critedge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %0, double noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = icmp ne ptr %5, null
  %or.cond = and i1 %4, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !225
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = call noundef i32 %5(double noundef %1, ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %6) #32 ; 0 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #33
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h) #32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !270
  %i.k = sext i32 %spec.select.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.l, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.9.0 = phi i32 [ %spec.select.i, %bb.b ], [ -1, %bb.a ]
  %.sroa.6.0 = phi <2 x float> [ %i.m, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load <2 x float>, ptr %i.n, align 8, !tbaa !41 ; 2 uses
  %i.p = fcmp ogt <2 x float> %.sroa.6.0, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> %.sroa.6.0, <2 x float> %i.o
  store <2 x float> %i.q, ptr %i.n, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load i32, ptr %0, align 8, !tbaa !271    ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !272
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !273
  br label %_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.r, 1
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = sdiv i32 %i.r, 2
  %i.x = add nsw i32 %i.w, %i.r
  br label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.x, %bb.g ], [ 8, %bb.f ]
  %i.z = call noundef i32 @llvm.smax.i32(i32 %i.y, i32 %i.v) ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.aa, 40
  %i.ac = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ab) #32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !273 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i
  %i.af = load i32, ptr %0, align 8, !tbaa !271
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ag, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ac, ptr nonnull align 8 %i.ae, i64 %i.ah, i1 false)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !273
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ai) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !273
  store i32 %i.z, ptr %i.s, align 4, !tbaa !272
  %.pre3.i.i = load i32, ptr %0, align 8, !tbaa !271
  br label %_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit

_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit:      ; preds = %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i, %bb.i
  %i.aj = phi i32 [ %i.r, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.i ]
  %i.ak = phi ptr [ %.pre.i.i, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i ], [ %i.ac, %bb.i ]
  %i.al = zext i1 %4 to i8
  %i.am = zext i1 %2 to i8
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [40 x i8], ptr %i.ak, i64 %i.an ; 8 uses
  store double %1, ptr %i.ao, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float 0.000000e+00, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store <2 x float> %.sroa.6.0, ptr %.sroa.516.0..sroa_idx, align 4
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i32 %.sroa.9.0, ptr %.sroa.817.0..sroa_idx, align 4
  %.sroa.918.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i8 %i.am, ptr %.sroa.918.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 25
  store i8 %i.al, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.1320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  store i32 %3, ptr %.sroa.1320.0..sroa_idx, align 4
  %.sroa.1421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %i.r, ptr %.sroa.1421.0..sroa_idx, align 8
  %i.ap = load i32, ptr %0, align 8, !tbaa !271
  %i.aq = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aq, ptr %0, align 8, !tbaa !271
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !273
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr [40 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -40
  ret ptr %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, float noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #16 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !269 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !276 ; 2 uses
  %i.d = fmul double %i.a, %i.c
  %i.e = fcmp ogt double %i.d, 0.000000e+00       ; 2 uses
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> <float f0x3C23D70A, float 2.000000e-02>, <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %9 = extractelement <2 x float> %8, i64 0
  %10 = extractelement <2 x float> %8, i64 1
  %.sink31 = select i1 %2, float %10, float %9
  %i.f = fptosi float %.sink31 to i32
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 2)
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.i = tail call noundef double @log10(double noundef %i.h) #32 ; 4 uses
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.k = tail call noundef double @log10(double noundef %i.j) #32 ; 4 uses
  %i.l = fcmp olt double %i.i, %i.k
  %i.m = select i1 %i.l, double %i.i, double %i.k ; 2 uses
  %i.n = fcmp oge double %i.i, %i.k
  %i.o = select i1 %i.n, double %i.i, double %i.k ; 2 uses
  %i.p = fsub double %i.o, %i.m
  %i.q = fptosi double %i.p to i32
  %i.r = sdiv i32 %i.q, %i.g
  %i.s = tail call noundef i32 @llvm.smax.i32(i32 %i.r, i32 1)
  store i32 %i.s, ptr %5, align 4, !tbaa !29
  %i.t = fptosi double %i.m to i32
  store i32 %i.t, ptr %3, align 4, !tbaa !29
  %i.u = fptosi double %i.o to i32
  store i32 %i.u, ptr %4, align 4, !tbaa !29
  %i.v = load i32, ptr %5, align 4, !tbaa !29     ; 4 uses
  %.not = icmp eq i32 %i.v, 1
  br i1 %.not, label %.loopexit, label %.preheader27

.preheader27:                                     ; preds = %bb.b
  %i.w = srem i32 %i.v, 3
  %.not2528 = icmp eq i32 %i.w, 0
  br i1 %.not2528, label %.preheader, label %.lr.ph

..preheader_crit_edge:                            ; preds = %.lr.ph
  store i32 %i.ab, ptr %5, align 4, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader27
  %i.x = phi i32 [ %i.ab, %..preheader_crit_edge ], [ %i.v, %.preheader27 ]
  %i.y = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.z = srem i32 %i.y, %i.x
  %.not2629 = icmp eq i32 %i.z, 0
  br i1 %.not2629, label %.loopexit, label %.lr.ph30

.lr.ph:                                           ; preds = %.preheader27, %.lr.ph
  %i.aa = phi i32 [ %i.ab, %.lr.ph ], [ %i.v, %.preheader27 ]
  %i.ab = add nsw i32 %i.aa, 1                    ; 4 uses
  %i.ac = srem i32 %i.ab, 3
  %.not25 = icmp eq i32 %i.ac, 0
  br i1 %.not25, label %..preheader_crit_edge, label %.lr.ph, !llvm.loop !5

.lr.ph30:                                         ; preds = %.preheader, %.lr.ph30
  %i.ad = phi i32 [ %i.ae, %.lr.ph30 ], [ %i.y, %.preheader ]
  %i.ae = add nsw i32 %i.ad, -1                   ; 3 uses
  store i32 %i.ae, ptr %3, align 4, !tbaa !29
  %i.af = load i32, ptr %5, align 4, !tbaa !29
  %i.ag = srem i32 %i.ae, %i.af
  %.not26 = icmp eq i32 %i.ag, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph30, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph30, %.preheader, %bb.a, %bb.b
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !276 ; 2 uses
  %i.c = fcmp olt double %i.b, 0.000000e+00
  %i.d = fcmp ogt double %i.b, 0.000000e+00
  %i.e = select i1 %i.d, double 1.000000e+00, double 0.000000e+00
  %i.f = select i1 %i.c, double -1.000000e+00, double %i.e ; 4 uses
  %i.g = sub nsw i32 %1, %3                       ; 3 uses
  %i.h = add nsw i32 %3, %2
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %bb.a
  %i.j = icmp sgt i32 %3, 0
  %i.k = add nsw i32 %3, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %i.j, label %.lr.ph56.split.us, label %.lr.ph56.split

.lr.ph56.split.us:                                ; preds = %.lr.ph56, %._crit_edge.us
  %.04854.us = phi i32 [ %i.bs, %._crit_edge.us ], [ %i.g, %.lr.ph56 ] ; 6 uses
  %i.m = sitofp i32 %.04854.us to double
  %i.n = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.m) #32
  %i.o = fmul double %i.f, %i.n                   ; 3 uses
  %i.p = icmp sgt i32 %.04854.us, 126
  br i1 %i.p, label %cdce.call.us, label %cdce.end.us, !prof !277

cdce.call.us:                                     ; preds = %.lr.ph56.split.us
  %i.q = add nuw nsw i32 %.04854.us, 1
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.r) #32 ; 0 uses
  br label %cdce.end.us

cdce.end.us:                                      ; preds = %cdce.call.us, %.lr.ph56.split.us
  %i.t = load double, ptr %0, align 8, !tbaa !269
  %i.u = fadd double %i.t, f0xBCB0000000000000
  %i.v = fcmp ult double %i.o, %i.u
  br i1 %i.v, label %.lr.ph.us.preheader, label %bb.b

bb.b:                                             ; preds = %cdce.end.us
  %i.w = load double, ptr %i.a, align 8, !tbaa !276
  %i.x = fadd double %i.w, f0x3CB0000000000000
  %i.y = fcmp ugt double %i.o, %i.x
  br i1 %i.y, label %.lr.ph.us.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %4, double noundef %i.o, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext true, ptr noundef %5, ptr noundef %6) ; 0 uses
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.c, %bb.b, %cdce.end.us
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.l
  %.04753.us = phi i32 [ %i.br, %bb.l ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aa = add nsw i32 %.04753.us, %.04854.us      ; 2 uses
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ab) #32
  %i.ad = fmul double %i.f, %i.ac                 ; 2 uses
  %i.ae = add nsw i32 %i.aa, 1
  %i.af = sitofp i32 %i.ae to double
  %i.ag = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.af) #32
  %i.ah = fmul double %i.f, %i.ag
  %i.ai = fsub double %i.ah, %i.ad
  %i.aj = fdiv double %i.ai, 9.000000e+00
  %i.ak = icmp slt i32 %.04753.us, %i.k
  %i.al = select i1 %i.ak, i32 10, i32 9
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %.lr.ph.us
  %.052.us = phi i32 [ 1, %.lr.ph.us ], [ %i.bq, %bb.k ] ; 2 uses
  %i.am = uitofp nneg i32 %.052.us to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.aj, double %i.ad) ; 3 uses
  %i.ao = load double, ptr %0, align 8, !tbaa !269
  %i.ap = fadd double %i.ao, f0xBCB0000000000000
  %i.aq = fcmp ult double %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load double, ptr %i.a, align 8, !tbaa !276
  %i.as = fadd double %i.ar, f0x3CB0000000000000
  %i.at = fcmp ugt double %i.an, %i.as
  br i1 %i.at, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %4, align 8, !tbaa !271   ; 7 uses
  %i.av = load i32, ptr %i.l, align 4, !tbaa !272
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i.us

._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i.us: ; preds = %bb.f
  %.pre.i.i.i.us = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  br label %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit.us

bb.g:                                             ; preds = %bb.f
  %i.ax = add nsw i32 %i.au, 1
  %.not.i.i.i.i.us = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.us, label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = sdiv i32 %i.au, 2
  %i.az = add nsw i32 %i.ay, %i.au
  br label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i.us

_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i.us: ; preds = %bb.h, %bb.g
  %i.ba = phi i32 [ %i.az, %bb.h ], [ 8, %bb.g ]
  %i.bb = tail call noundef i32 @llvm.smax.i32(i32 %i.ba, i32 %i.ax) ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.bc, 40
  %i.be = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bd) #32 ; 3 uses
  %i.bf = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273 ; 2 uses
  %.not6.i.i.i.i.us = icmp eq ptr %i.bf, null
  br i1 %.not6.i.i.i.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i.us
  %i.bg = load i32, ptr %4, align 8, !tbaa !271
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bh, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.be, ptr nonnull align 8 %i.bf, i64 %i.bi, i1 false)
  %i.bj = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bj) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i.i.us
  store ptr %i.be, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !273
  store i32 %i.bb, ptr %i.l, align 4, !tbaa !272
  %.pre3.i.i.i.us = load i32, ptr %4, align 8, !tbaa !271
  br label %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit.us

_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit.us: ; preds = %bb.j, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i.us
  %i.bk = phi i32 [ %i.au, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i.us ], [ %.pre3.i.i.i.us, %bb.j ]
  %i.bl = phi ptr [ %.pre.i.i.i.us, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i.i.us ], [ %i.be, %bb.j ]
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds [40 x i8], ptr %i.bl, i64 %i.bm ; 8 uses
  store double %i.an, ptr %i.bn, align 8
  %.sroa.415.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float 0.000000e+00, ptr %.sroa.415.0..sroa_idx.i.us, align 8
  %.sroa.516.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store <2 x float> zeroinitializer, ptr %.sroa.516.0..sroa_idx.i.us, align 4
  %.sroa.817.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 -1, ptr %.sroa.817.0..sroa_idx.i.us, align 4
  %.sroa.918.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i8 0, ptr %.sroa.918.0..sroa_idx.i.us, align 8
  %.sroa.10.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 25
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.us, align 1
  %.sroa.1320.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i32 0, ptr %.sroa.1320.0..sroa_idx.i.us, align 4
  %.sroa.1421.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i32 %i.au, ptr %.sroa.1421.0..sroa_idx.i.us, align 8
  %i.bo = load i32, ptr %4, align 8, !tbaa !271
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %4, align 8, !tbaa !271
  br label %bb.k

bb.k:                                             ; preds = %_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_.exit.us, %bb.e, %bb.d
  %i.bq = add nuw nsw i32 %.052.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %i.al
  br i1 %exitcond.not, label %bb.l, label %bb.d, !llvm.loop !521

bb.l:                                             ; preds = %bb.k
  %i.br = add nuw nsw i32 %.04753.us, 1           ; 2 uses
  %exitcond59.not = icmp eq i32 %i.br, %3
  br i1 %exitcond59.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !522

._crit_edge.us:                                   ; preds = %bb.l
  %i.bs = add nsw i32 %.04854.us, %3
  %i.bt = icmp slt i32 %.04854.us, %2
  br i1 %i.bt, label %.lr.ph56.split.us, label %._crit_edge57, !llvm.loop !523

._crit_edge57:                                    ; preds = %bb.o, %._crit_edge.us, %bb.a
  ret void

.lr.ph56.split:                                   ; preds = %.lr.ph56, %bb.o
  %.04854 = phi i32 [ %i.ci, %bb.o ], [ %i.g, %.lr.ph56 ] ; 5 uses
  %i.bu = sitofp i32 %.04854 to double
  %i.bv = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bu) #32
  %i.bw = fmul double %i.f, %i.bv                 ; 3 uses
  %i.bx = icmp sgt i32 %.04854, 126
  br i1 %i.bx, label %cdce.call, label %cdce.end, !prof !277

cdce.call:                                        ; preds = %.lr.ph56.split
  %i.by = add nuw nsw i32 %.04854, 1
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.bz) #32 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %.lr.ph56.split, %cdce.call
  %i.cb = load double, ptr %0, align 8, !tbaa !269
  %i.cc = fadd double %i.cb, f0xBCB0000000000000
  %i.cd = fcmp ult double %i.bw, %i.cc
  br i1 %i.cd, label %bb.o, label %bb.m

bb.m:                                             ; preds = %cdce.end
  %i.ce = load double, ptr %i.a, align 8, !tbaa !276
  %i.cf = fadd double %i.ce, f0x3CB0000000000000
  %i.cg = fcmp ugt double %i.bw, %i.cf
  br i1 %i.cg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %4, double noundef %i.bw, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext true, ptr noundef %5, ptr noundef %6) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %cdce.end
  %i.ci = add nsw i32 %.04854, %3
  %i.cj = icmp slt i32 %.04854, %2
  br i1 %i.cj, label %.lr.ph56.split, label %._crit_edge57, !llvm.loop !523
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot13Locator_Log10ER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #1 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !269 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !276 ; 2 uses
  %i.d = fmul double %i.a, %i.c
  %i.e = fcmp ogt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit

bb.b:                                             ; preds = %bb.a
  %6 = insertelement <2 x float> poison, float %2, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> <float f0x3C23D70A, float 2.000000e-02>, <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %9 = extractelement <2 x float> %8, i64 0
  %10 = extractelement <2 x float> %8, i64 1
  %.sink31.i = select i1 %3, float %10, float %9
  %i.f = fptosi float %.sink31.i to i32
  %i.g = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 2)
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.i = tail call noundef double @log10(double noundef %i.h) #32 ; 4 uses
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.k = tail call noundef double @log10(double noundef %i.j) #32 ; 4 uses
  %i.l = fcmp olt double %i.i, %i.k
  %i.m = select i1 %i.l, double %i.i, double %i.k ; 2 uses
  %i.n = fcmp oge double %i.i, %i.k
  %i.o = select i1 %i.n, double %i.i, double %i.k ; 2 uses
  %i.p = fsub double %i.o, %i.m
  %i.q = fptosi double %i.p to i32
  %i.r = sdiv i32 %i.q, %i.g                      ; 4 uses
  %i.s = fptosi double %i.m to i32                ; 4 uses
  %i.t = fptosi double %i.o to i32
  %.not.i = icmp slt i32 %i.r, 2
  br i1 %.not.i, label %.loopexit, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.b
  %i.u = urem i32 %i.r, 3
  %.not2528.i = icmp eq i32 %i.u, 0
  br i1 %.not2528.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader27.i
  %.0 = phi i32 [ %i.r, %.preheader27.i ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %i.v = srem i32 %i.s, %.0
  %.not2629.i = icmp eq i32 %i.v, 0
  br i1 %.not2629.i, label %.loopexit, label %.lr.ph30.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %.lr.ph.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i ], [ %i.r, %.preheader27.i ]
  %i.x = add nuw nsw i32 %i.w, 1                  ; 3 uses
  %i.y = urem i32 %i.x, 3
  %.not25.i = icmp eq i32 %i.y, 0
  br i1 %.not25.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !5

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %i.z = phi i32 [ %i.aa, %.lr.ph30.i ], [ %i.s, %.preheader.i ]
  %i.aa = add nsw i32 %i.z, -1                    ; 3 uses
  %i.ab = srem i32 %i.aa, %.0
  %.not26.i = icmp eq i32 %i.ab, 0
  br i1 %.not26.i, label %.loopexit, label %.lr.ph30.i, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph30.i, %bb.b, %.preheader.i
  %.012.ph = phi i32 [ %i.s, %bb.b ], [ %i.s, %.preheader.i ], [ %i.aa, %.lr.ph30.i ]
  %.1.ph = phi i32 [ 1, %bb.b ], [ %.0, %.preheader.i ], [ %.0, %.lr.ph30.i ]
  tail call void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.012.ph, i32 noundef %i.t, i32 noundef %.1.ph, ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %4, ptr noundef %5)
  br label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit

_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit: ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local noundef float @_ZN6ImPlot15CalcSymLogPixelEdRK11ImPlotRangef(double noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = fpext float %2 to double
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = fmul double %0, 5.000000e-01
  %i.d = load <2 x double>, ptr %1, align 8, !tbaa !266 ; 3 uses
  %i.e = load double, ptr %i.b, align 8, !tbaa !276
  %i.f = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = tail call noundef double @asinh(double noundef %i.g) #32
  %i.i = fmul double %i.h, 2.000000e+00           ; 2 uses
  %i.j = fmul double %i.e, 5.000000e-01
  %i.k = tail call noundef double @asinh(double noundef %i.j) #32
  %i.l = fmul double %i.k, 2.000000e+00
  %i.m = tail call noundef double @asinh(double noundef %i.c) #32
  %i.n = fmul double %i.m, 2.000000e+00
  %i.o = fsub double %i.n, %i.i
  %i.p = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x double> %i.p, double %i.l, i64 1
  %i.r = insertelement <2 x double> %i.d, double %i.i, i64 1
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = insertelement <2 x double> poison, double %i.a, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.o, i64 1
  %i.v = fdiv <2 x double> %i.u, %i.s             ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 1
  %i.x = extractelement <2 x double> %i.s, i64 0
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.w, double %i.f)
  %i.z = fsub double %i.y, %i.f
  %i.aa = extractelement <2 x double> %i.v, i64 0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double 0.000000e+00)
  %i.ac = fptrunc double %i.ab to float
  ret float %i.ac
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @_ZN6ImPlotL23TransformForward_SymLogEdPv(double noundef %0, ptr nofree readnone captures(none) %1) #18 {
bb.a:
  %i.a = fmul double %0, 5.000000e-01
  %i.b = tail call noundef double @asinh(double noundef %i.a) #32
  %i.c = fmul double %i.b, 2.000000e+00
  ret double %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14Locator_SymLogER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #1 {
bb.a:
  %6 = alloca %struct.ImPlotRange, align 16       ; 4 uses
  %7 = alloca %struct.ImPlotRange, align 16       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load <2 x double>, ptr %1, align 8       ; 3 uses
  %i.c = extractelement <2 x double> %i.b, i64 0  ; 9 uses
  %i.d = load double, ptr %i.a, align 8           ; 5 uses
  %i.e = fcmp ult double %i.c, -1.000000e+00
  %i.f = fcmp ugt double %i.d, 1.000000e+00
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6ImPlot15Locator_DefaultER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = fmul double %i.c, %i.d
  %i.h = fcmp olt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = fpext float %2 to double
  %i.j = fmul double %i.c, 5.000000e-01           ; 2 uses
  %i.k = tail call noundef double @asinh(double noundef %i.j) #32
  %i.l = fmul double %i.d, 5.000000e-01           ; 2 uses
  %i.m = tail call noundef double @asinh(double noundef %i.l) #32
  %i.n = tail call noundef double @asinh(double noundef 5.000000e-01) #32
  %i.o = tail call noundef double @asinh(double noundef %i.j) #32
  %i.p = fmul double %i.o, 2.000000e+00           ; 2 uses
  %i.q = tail call noundef double @asinh(double noundef %i.l) #32
  %i.r = fmul double %i.q, 2.000000e+00
  %i.s = tail call noundef double @asinh(double noundef -5.000000e-01) #32
  %i.t = fmul double %i.s, 2.000000e+00
  %i.u = fsub double %i.t, %i.p
  %i.v = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x double> %i.v, double %i.r, i64 1
  %i.x = insertelement <2 x double> %i.b, double %i.p, i64 1
  %i.y = fsub <2 x double> %i.w, %i.x             ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.i, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.u, i64 1
  %i.ab = fdiv <2 x double> %i.aa, %i.y           ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1
  %i.ad = extractelement <2 x double> %i.y, i64 0 ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ac, double %i.c)
  %i.af = fsub double %i.ae, %i.c
  %i.ag = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.af, double 0.000000e+00)
  %i.ai = fptrunc double %i.ah to float
  %i.aj = fcmp ogt double %i.d, 0.000000e+00
  br i1 %i.aj, label %bb.e, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = fmul double %i.n, 2.000000e+00
  %i.al = fmul double %i.k, 2.000000e+00          ; 2 uses
  %i.am = fsub double %i.ak, %i.al
  %i.an = fmul double %i.m, 2.000000e+00
  %i.ao = fsub double %i.an, %i.al
  %i.ap = fdiv double %i.am, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ap, double %i.c)
  %i.ar = fsub double %i.aq, %i.c
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ar, double 0.000000e+00)
  %i.at = fptrunc double %i.as to float
  %i.au = fsub float %2, %i.at
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %8 = insertelement <2 x float> poison, float %i.av, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> <float f0x3C23D70A, float 2.000000e-02>, <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %.sink31.i = select i1 %3, float %12, float %11
  %i.aw = fptosi float %.sink31.i to i32
  %i.ax = tail call noundef i32 @llvm.smax.i32(i32 %i.aw, i32 2)
  %i.ay = tail call double @llvm.log10.f64(double %i.d) ; 4 uses
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  %i.ba = select i1 %i.az, double 0.000000e+00, double %i.ay ; 2 uses
  %i.bb = fcmp ole double %i.ay, 0.000000e+00
  %i.bc = select i1 %i.bb, double 0.000000e+00, double %i.ay ; 2 uses
  %i.bd = fsub double %i.bc, %i.ba
  %i.be = fptosi double %i.bd to i32
  %i.bf = sdiv i32 %i.be, %i.ax                   ; 4 uses
  %i.bg = fptosi double %i.ba to i32              ; 4 uses
  %i.bh = fptosi double %i.bc to i32              ; 3 uses
  %.not.i = icmp slt i32 %i.bf, 2
  br i1 %.not.i, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.e
  %i.bi = urem i32 %i.bf, 3
  %.not2528.i = icmp eq i32 %i.bi, 0
  br i1 %.not2528.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader27.i
  %.069 = phi i32 [ %i.bf, %.preheader27.i ], [ %i.bl, %.lr.ph.i ] ; 4 uses
  %i.bj = srem i32 %i.bg, %.069
  %.not2629.i = icmp eq i32 %i.bj, 0
  br i1 %.not2629.i, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, label %.lr.ph30.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %.lr.ph.i
  %i.bk = phi i32 [ %i.bl, %.lr.ph.i ], [ %i.bf, %.preheader27.i ]
  %i.bl = add nuw nsw i32 %i.bk, 1                ; 3 uses
  %i.bm = urem i32 %i.bl, 3
  %.not25.i = icmp eq i32 %i.bm, 0
  br i1 %.not25.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !5

.lr.ph30.i:                                       ; preds = %.preheader.i, %.lr.ph30.i
  %i.bn = phi i32 [ %i.bo, %.lr.ph30.i ], [ %i.bg, %.preheader.i ]
  %i.bo = add nsw i32 %i.bn, -1                   ; 3 uses
  %i.bp = srem i32 %i.bo, %.069
  %.not26.i = icmp eq i32 %i.bp, 0
  br i1 %.not26.i, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, label %.lr.ph30.i, !llvm.loop !6

_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit: ; preds = %.lr.ph30.i, %bb.d, %bb.e, %.preheader.i
  %.072 = phi i32 [ %i.bg, %bb.e ], [ %i.bg, %.preheader.i ], [ undef, %bb.d ], [ %i.bo, %.lr.ph30.i ]
  %.071 = phi i32 [ %i.bh, %bb.e ], [ %i.bh, %.preheader.i ], [ undef, %bb.d ], [ %i.bh, %.lr.ph30.i ]
  %.170 = phi i32 [ 1, %bb.e ], [ %.069, %.preheader.i ], [ undef, %bb.d ], [ %.069, %.lr.ph30.i ]
  %i.bq = fcmp olt double %i.c, 0.000000e+00
  br i1 %i.bq, label %bb.f, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53

bb.f:                                             ; preds = %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit
  %i.br = tail call noundef float @llvm.fabs.f32(float %i.ai)
  %13 = insertelement <2 x float> poison, float %i.br, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> <float f0x3C23D70A, float 2.000000e-02>, <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %16 = extractelement <2 x float> %15, i64 0
  %17 = extractelement <2 x float> %15, i64 1
  %.sink31.i42 = select i1 %3, float %17, float %16
  %i.bs = fptosi float %.sink31.i42 to i32
  %i.bt = tail call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 2)
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.bv = tail call double @llvm.log10.f64(double %i.bu) ; 4 uses
  %i.bw = fcmp olt double %i.bv, 0.000000e+00
  %i.bx = select i1 %i.bw, double %i.bv, double 0.000000e+00 ; 2 uses
  %i.by = fcmp oge double %i.bv, 0.000000e+00
  %i.bz = select i1 %i.by, double %i.bv, double 0.000000e+00 ; 2 uses
  %i.ca = fsub double %i.bz, %i.bx
  %i.cb = fptosi double %i.ca to i32
  %i.cc = sdiv i32 %i.cb, %i.bt                   ; 4 uses
  %i.cd = fptosi double %i.bx to i32              ; 4 uses
  %i.ce = fptosi double %i.bz to i32              ; 3 uses
  %.not.i43 = icmp slt i32 %i.cc, 2
  br i1 %.not.i43, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, label %.preheader27.i44

.preheader27.i44:                                 ; preds = %bb.f
  %i.cf = urem i32 %i.cc, 3
  %.not2528.i45 = icmp eq i32 %i.cf, 0
  br i1 %.not2528.i45, label %.preheader.i49, label %.lr.ph.i46

.preheader.i49:                                   ; preds = %.lr.ph.i46, %.preheader27.i44
  %.0 = phi i32 [ %i.cc, %.preheader27.i44 ], [ %i.ci, %.lr.ph.i46 ] ; 4 uses
  %i.cg = srem i32 %i.cd, %.0
  %.not2629.i50 = icmp eq i32 %i.cg, 0
  br i1 %.not2629.i50, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, label %.lr.ph30.i51

.lr.ph.i46:                                       ; preds = %.preheader27.i44, %.lr.ph.i46
  %i.ch = phi i32 [ %i.ci, %.lr.ph.i46 ], [ %i.cc, %.preheader27.i44 ]
  %i.ci = add nuw nsw i32 %i.ch, 1                ; 3 uses
  %i.cj = urem i32 %i.ci, 3
  %.not25.i47 = icmp eq i32 %i.cj, 0
  br i1 %.not25.i47, label %.preheader.i49, label %.lr.ph.i46, !llvm.loop !5

.lr.ph30.i51:                                     ; preds = %.preheader.i49, %.lr.ph30.i51
  %i.ck = phi i32 [ %i.cl, %.lr.ph30.i51 ], [ %i.cd, %.preheader.i49 ]
  %i.cl = add nsw i32 %i.ck, -1                   ; 3 uses
  %i.cm = srem i32 %i.cl, %.0
  %.not26.i52 = icmp eq i32 %i.cm, 0
  br i1 %.not26.i52, label %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, label %.lr.ph30.i51, !llvm.loop !6

_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53: ; preds = %.lr.ph30.i51, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit, %bb.f, %.preheader.i49
  %.068 = phi i32 [ %i.cd, %bb.f ], [ %i.cd, %.preheader.i49 ], [ undef, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit ], [ %i.cl, %.lr.ph30.i51 ]
  %.067 = phi i32 [ %i.ce, %bb.f ], [ %i.ce, %.preheader.i49 ], [ undef, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit ], [ %i.ce, %.lr.ph30.i51 ]
  %.1 = phi i32 [ 1, %bb.f ], [ %.0, %.preheader.i49 ], [ undef, %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit ], [ %.0, %.lr.ph30.i51 ]
  %i.cn = tail call noundef i32 @llvm.smax.i32(i32 %.1, i32 %.170) ; 2 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %0, double noundef 0.000000e+00, i1 noundef zeroext true, i32 noundef 0, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cp = load double, ptr %i.a, align 8, !tbaa !276
  %i.cq = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.cp, i64 1
  store <2 x double> %i.cq, ptr %6, align 16, !tbaa !266
  call void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %.072, i32 noundef %.071, i32 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cr = load double, ptr %1, align 8, !tbaa !269
  %i.cs = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.cr, i64 0
  store <2 x double> %i.cs, ptr %7, align 16, !tbaa !266
  call void @_ZN6ImPlot19AddTicksLogarithmicERK11ImPlotRangeiiiR12ImPlotTickerPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.068, i32 noundef %.067, i32 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN6ImPlot13Locator_Log10ER12ImPlotTickerRK11ImPlotRangefbPFidPciPvES6_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5)
  br label %bb.h

bb.h:                                             ; preds = %_ZN6ImPlot24CalcLogarithmicExponentsERK11ImPlotRangefbRiS3_S3_.exit53, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14AddTicksCustomEPKdPKPKciR12ImPlotTickerPFidPciPvES9_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(52) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %wide.trip.count20 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv17
  %i.c = load double, ptr %i.b, align 8, !tbaa !266
  %i.d = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPFidPciPvES1_(ptr noundef nonnull align 8 dereferenceable(52) %3, double noundef %i.c, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5) ; 0 uses
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond21.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count20
  br i1 %exitcond21.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !266
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPKc(ptr noundef nonnull align 8 dereferenceable(52) %3, double noundef %i.f, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext true, ptr noundef %i.h) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count20
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN12ImPlotTicker7AddTickEdbibPKc(ptr noundef nonnull align 8 dereferenceable(52) %0, double noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %5, null
  %or.cond = and i1 %4, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !225
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.c, i32 1) ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #33
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %5, ptr noundef nonnull %i.f) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.i = sext i32 %spec.select.i to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.j, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8.0 = phi i32 [ %spec.select.i, %bb.b ], [ -1, %bb.a ]
  %.sroa.5.0 = phi <2 x float> [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !41 ; 2 uses
  %i.n = fcmp ogt <2 x float> %.sroa.5.0, %i.m
  %i.o = select <2 x i1> %i.n, <2 x float> %.sroa.5.0, <2 x float> %i.m
  store <2 x float> %i.o, ptr %i.l, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load i32, ptr %0, align 8, !tbaa !271    ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !272
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !273
  br label %_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.p, 1
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sdiv i32 %i.p, 2
  %i.v = add nsw i32 %i.u, %i.p
  br label %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.w = phi i32 [ %i.v, %bb.g ], [ 8, %bb.f ]
  %i.x = tail call noundef i32 @llvm.smax.i32(i32 %i.w, i32 %i.t) ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 40
  %i.aa = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.z) #32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !273 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i
  %i.ad = load i32, ptr %0, align 8, !tbaa !271
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aa, ptr nonnull align 8 %i.ac, i64 %i.af, i1 false)
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !273
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ag) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorI10ImPlotTickE14_grow_capacityEi.exit.i.i
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !273
  store i32 %i.x, ptr %i.q, align 4, !tbaa !272
  %.pre3.i.i = load i32, ptr %0, align 8, !tbaa !271
  br label %_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit

_ZN12ImPlotTicker7AddTickE10ImPlotTick.exit:      ; preds = %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i, %bb.i
  %i.ah = phi i32 [ %i.p, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.i ]
  %i.ai = phi ptr [ %.pre.i.i, %._ZN8ImVectorI10ImPlotTickE7reserveEi.exit_crit_edge.i.i ], [ %i.aa, %bb.i ]
  %i.aj = zext i1 %4 to i8
  %i.ak = zext i1 %2 to i8
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [40 x i8], ptr %i.ai, i64 %i.al ; 8 uses
  store double %1, ptr %i.am, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store float 0.000000e+00, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store <2 x float> %.sroa.5.0, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 20
end_hunk_0
