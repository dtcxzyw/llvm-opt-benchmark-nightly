Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot11SetupFinishEv:bb.a
  store i8 1, ptr %i.acw, align 2, !tbaa !363
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.acx = getelementptr inbounds nuw i8, ptr %i.g, i64 1232
  %i.acy = load i8, ptr %i.acx, align 8, !tbaa !262, !range !263, !noundef !264
  %i.acz = trunc nuw i8 %i.acy to i1
  br i1 %i.acz, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ada = getelementptr i8, ptr %i.k, i64 780
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !300
  %i.adc = and i32 %i.adb, 2048
  %.not632.2 = icmp eq i32 %i.adc, 0
  br i1 %.not632.2, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  store i8 1, ptr %i.t, align 1, !tbaa !362
  %i.add = getelementptr i8, ptr %i.k, i64 1142
  store i8 1, ptr %i.add, align 2, !tbaa !363
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ade = getelementptr inbounds nuw i8, ptr %i.g, i64 1233
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !262, !range !263, !noundef !264
  %i.adg = trunc nuw i8 %i.adf to i1
  br i1 %i.adg, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.adh = getelementptr inbounds nuw i8, ptr %i.k, i64 1156
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !300
  %i.adj = and i32 %i.adi, 2048
  %.not632.3 = icmp eq i32 %i.adj, 0
  br i1 %.not632.3, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  store i8 1, ptr %i.t, align 1, !tbaa !362
  %i.adk = getelementptr inbounds nuw i8, ptr %i.k, i64 1518
  store i8 1, ptr %i.adk, align 2, !tbaa !363
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.adl = getelementptr inbounds nuw i8, ptr %i.g, i64 1234
  %i.adm = load i8, ptr %i.adl, align 2, !tbaa !262, !range !263, !noundef !264
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ado = getelementptr inbounds nuw i8, ptr %i.k, i64 1532
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !300
  %i.adq = and i32 %i.adp, 2048
  %.not632.4 = icmp eq i32 %i.adq, 0
  br i1 %.not632.4, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  store i8 1, ptr %i.t, align 1, !tbaa !362
  %i.adr = getelementptr inbounds nuw i8, ptr %i.k, i64 1894
  store i8 1, ptr %i.adr, align 2, !tbaa !363
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.ads = getelementptr inbounds nuw i8, ptr %i.g, i64 1235
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !262, !range !263, !noundef !264
  %i.adu = trunc nuw i8 %i.adt to i1
  br i1 %i.adu, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.k, i64 1908
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !300
  %i.adx = and i32 %i.adw, 2048
  %.not632.5 = icmp eq i32 %i.adx, 0
  br i1 %.not632.5, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  store i8 1, ptr %i.t, align 1, !tbaa !362
  %i.ady = getelementptr inbounds nuw i8, ptr %i.k, i64 2270
  store i8 1, ptr %i.ady, align 2, !tbaa !363
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.adz = tail call noundef float @_ZN5ImGui17GetTextLineHeightEv() #32 ; 4 uses
  %i.aea = load i32, ptr %i.u, align 4, !tbaa !326
  %i.aeb = and i32 %i.aea, 64
  %.not627 = icmp eq i32 %i.aeb, 0
  br i1 %.not627, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %.sroa.0184.0.copyload = load <2 x float>, ptr %i.er, align 8, !tbaa !41
  %.sroa.0183.0.copyload = load <2 x float>, ptr %i.eu, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.aec = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.aed = getelementptr i8, ptr %i.aec, i64 520
  %.val.i.i.i = load float, ptr %i.aed, align 4, !tbaa !46
  %i.aee = fcmp oeq float %.val.i.i.i, -1.000000e+00
  br i1 %i.aee, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aef = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 7) #32, !inline_history !0 ; 2 uses
  %.sroa.30.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

bb.dz:                                            ; preds = %bb.dx
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 508
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aec, i64 516
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

_ZN6ImPlotL16GetStyleColorU32Ei.exit:             ; preds = %bb.dy, %bb.dz
  %.sroa.078.0.copyload92.i.pn.in = phi ptr [ %i.aef, %bb.dy ], [ %i.aeg, %bb.dz ]
  %.sroa.30.0.copyload114.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx113.i, %bb.dy ], [ %.sroa.3.0..sroa_idx.i.i, %bb.dz ]
  %.sroa.30.0.copyload114.i.pn = load <2 x float>, ptr %.sroa.30.0.copyload114.i.pn.in, align 4, !tbaa !41
  %.sroa.078.0.copyload92.i.pn = load <2 x float>, ptr %.sroa.078.0.copyload92.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.078.0.copyload92.i.pn, ptr %1, align 8
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.30.0.copyload114.i.pn, ptr %i.aeh, align 8
  %i.aei = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.aej = getelementptr inbounds nuw i8, ptr %i.l, i64 3220
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !429
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.0184.0.copyload, <2 x float> %.sroa.0183.0.copyload, i32 noundef %i.aei, i1 noundef zeroext true, float noundef %i.aek) #32
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.ael = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.aem = getelementptr i8, ptr %i.ael, i64 536
  %.val.i.i.i547 = load float, ptr %i.aem, align 4, !tbaa !46
  %i.aen = fcmp oeq float %.val.i.i.i547, -1.000000e+00
  br i1 %i.aen, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aeo = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 2) #32, !inline_history !0 ; 2 uses
  %.sroa.30.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit552

bb.ec:                                            ; preds = %bb.ea
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ael, i64 524
  %.sroa.3.0..sroa_idx.i.i549 = getelementptr inbounds nuw i8, ptr %i.ael, i64 532
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit552

_ZN6ImPlotL16GetStyleColorU32Ei.exit552:          ; preds = %bb.eb, %bb.ec
  %.sroa.078.0.copyload93.i.pn.in = phi ptr [ %i.aeo, %bb.eb ], [ %i.aep, %bb.ec ]
  %.sroa.30.0.copyload116.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx115.i, %bb.eb ], [ %.sroa.3.0..sroa_idx.i.i549, %bb.ec ]
  %.sroa.30.0.copyload116.i.pn = load <2 x float>, ptr %.sroa.30.0.copyload116.i.pn.in, align 4, !tbaa !41
  %.sroa.078.0.copyload93.i.pn = load <2 x float>, ptr %.sroa.078.0.copyload93.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.078.0.copyload93.i.pn, ptr %0, align 8
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.30.0.copyload116.i.pn, ptr %i.aeq, align 8
  %i.aer = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %0) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 4 dereferenceable(8) %i.pa, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.4600.0..sroa_idx, i32 noundef %i.aer, float noundef 0.000000e+00, i32 noundef 0) #32
  br label %bb.ed

.preheader647:                                    ; preds = %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread
  %i.aes = getelementptr inbounds nuw i8, ptr %i.g, i64 332 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.g, i64 340 ; 3 uses
  %i.aeu = load i8, ptr %i.aa, align 4, !tbaa !299, !range !263, !noundef !264
  %i.aev = trunc nuw i8 %i.aeu to i1
  br i1 %i.aev, label %bb.eg, label %bb.ei

bb.ed:                                            ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit552, %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread
  %indvars.iv715 = phi i64 [ 0, %_ZN6ImPlotL16GetStyleColorU32Ei.exit552 ], [ %indvars.iv.next716, %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread ] ; 2 uses
  %i.aew = getelementptr inbounds nuw [376 x i8], ptr %i.r, i64 %indvars.iv715 ; 12 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 364
  %i.aey = load i8, ptr %i.aex, align 4, !tbaa !299, !range !263, !noundef !264
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %bb.ee, label %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread

bb.ee:                                            ; preds = %bb.ed
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !300
  %i.afc = and i32 %i.afb, 14
  %or.cond619.not = icmp eq i32 %i.afc, 14
  br i1 %or.cond619.not, label %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread, label %_ZNK10ImPlotAxis10WillRenderEv.exit555.preheader

_ZNK10ImPlotAxis10WillRenderEv.exit555.preheader: ; preds = %bb.ee
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aew, i64 96 ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 8, !tbaa !267 ; 4 uses
  %i.aff = icmp sgt i32 %i.afe, 0
  br i1 %i.aff, label %.lr.ph, label %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread

.lr.ph:                                           ; preds = %_ZNK10ImPlotAxis10WillRenderEv.exit555.preheader
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aew, i64 104 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aew, i64 248 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aew, i64 264
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aew, i64 280
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aew, i64 288
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aew, i64 16 ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aew, i64 24
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aew, i64 272 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aew, i64 296 ; 2 uses
  %i.afp = load ptr, ptr %i.afh, align 8, !tbaa !309 ; 2 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.afr = load ptr, ptr %i.afg, align 8, !tbaa !273 ; 3 uses
  %.pre.i.us = load double, ptr %i.afl, align 8, !tbaa !301 ; 2 uses
  %i.afs = load float, ptr %i.afn, align 8, !tbaa !307
  %i.aft = fpext float %i.afs to double           ; 2 uses
  %i.afu = load double, ptr %i.afo, align 8, !tbaa !308 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.afe to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.afe, 3
  br i1 %min.iters.check, label %._crit_edge.i557.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us
  %.neg = or i64 %wide.trip.count, -2
  %n.vec = add nsw i64 %.neg, %wide.trip.count    ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i.us, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert836 = insertelement <2 x double> poison, double %i.aft, i64 0
  %broadcast.splat837 = shufflevector <2 x double> %broadcast.splatinsert836, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert838 = insertelement <2 x double> poison, double %i.afu, i64 0
  %broadcast.splat839 = shufflevector <2 x double> %broadcast.splatinsert838, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.afv = getelementptr inbounds nuw [40 x i8], ptr %i.afr, i64 %index ; 2 uses
  %i.afw = getelementptr inbounds nuw [40 x i8], ptr %i.afr, i64 %index ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 40
  %i.afy = load double, ptr %i.afv, align 8, !tbaa !332
  %i.afz = load double, ptr %i.afx, align 8, !tbaa !332
  %i.aga = insertelement <2 x double> poison, double %i.afy, i64 0
  %i.agb = insertelement <2 x double> %i.aga, double %i.afz, i64 1
  %i.agc = fsub <2 x double> %i.agb, %broadcast.splat
  %i.agd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat839, <2 x double> %i.agc, <2 x double> %broadcast.splat837)
  %i.age = fptrunc <2 x double> %i.agd to <2 x float>
  %i.agf = fadd <2 x float> %i.age, splat (float 5.000000e-01)
  %i.agg = fptosi <2 x float> %i.agf to <2 x i32>
  %i.agh = sitofp <2 x i32> %i.agg to <2 x float> ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afw, i64 48
  %i.agk = extractelement <2 x float> %i.agh, i64 0
  store float %i.agk, ptr %i.agi, align 8, !tbaa !430
  %i.agl = extractelement <2 x float> %i.agh, i64 1
  store float %i.agl, ptr %i.agj, align 8, !tbaa !430
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.agm = icmp eq i64 %index.next, %n.vec
  br i1 %i.agm, label %._crit_edge.i557.us.preheader, label %vector.body, !llvm.loop !593

._crit_edge.i557.us.preheader:                    ; preds = %vector.body, %.lr.ph.split.us
  %indvars.iv711.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec, %vector.body ]
  br label %._crit_edge.i557.us

._crit_edge.i557.us:                              ; preds = %._crit_edge.i557.us.preheader, %._crit_edge.i557.us
  %indvars.iv711 = phi i64 [ %indvars.iv.next712, %._crit_edge.i557.us ], [ %indvars.iv711.ph, %._crit_edge.i557.us.preheader ] ; 2 uses
  %i.agn = getelementptr inbounds nuw [40 x i8], ptr %i.afr, i64 %indvars.iv711 ; 2 uses
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !332
  %i.agp = fsub double %i.ago, %.pre.i.us
  %i.agq = call double @llvm.fmuladd.f64(double %i.afu, double %i.agp, double %i.aft)
  %i.agr = fptrunc double %i.agq to float
  %i.ags = fadd float %i.agr, 5.000000e-01
  %i.agt = fptosi float %i.ags to i32
  %i.agu = sitofp i32 %i.agt to float
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  store float %i.agu, ptr %i.agv, align 8, !tbaa !430
  %indvars.iv.next712 = add nuw nsw i64 %indvars.iv711, 1 ; 2 uses
  %exitcond714.not = icmp eq i64 %indvars.iv.next712, %wide.trip.count
  br i1 %exitcond714.not, label %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread, label %._crit_edge.i557.us, !llvm.loop !594

.lr.ph.splitthread-pre-split:                     ; preds = %_ZNK10ImPlotAxis12PlotToPixelsEd.exit
  %.pr = load ptr, ptr %i.afh, align 8, !tbaa !309
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.agw = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.afp, %.lr.ph ] ; 2 uses
  %i.agx = phi i32 [ %i.ahm, %.lr.ph.splitthread-pre-split ], [ %i.afe, %.lr.ph ]
  %indvars.iv708 = phi i64 [ %indvars.iv.next709, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.agy = load ptr, ptr %i.afg, align 8, !tbaa !273
  %i.agz = getelementptr inbounds nuw [40 x i8], ptr %i.agy, i64 %indvars.iv708 ; 2 uses
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !332 ; 2 uses
  %.not.i556 = icmp eq ptr %i.agw, null
  br i1 %.not.i556, label %._crit_edge.i557, label %bb.ef

._crit_edge.i557:                                 ; preds = %.lr.ph.split
  %.pre.i = load double, ptr %i.afl, align 8, !tbaa !301
  br label %_ZNK10ImPlotAxis12PlotToPixelsEd.exit

bb.ef:                                            ; preds = %.lr.ph.split
  %i.ahb = load ptr, ptr %i.afi, align 8, !tbaa !310
  %i.ahc = call noundef double %i.agw(double noundef %i.aha, ptr noundef %i.ahb) #32, !inline_history !12
  %i.ahd = load double, ptr %i.afj, align 8, !tbaa !311 ; 2 uses
  %i.ahe = fsub double %i.ahc, %i.ahd
  %i.ahf = load double, ptr %i.afk, align 8, !tbaa !312
  %i.ahg = fsub double %i.ahf, %i.ahd
  %i.ahh = fdiv double %i.ahe, %i.ahg
  %i.ahi = load double, ptr %i.afl, align 8, !tbaa !301 ; 3 uses
  %i.ahj = load double, ptr %i.afm, align 8, !tbaa !276
  %i.ahk = fsub double %i.ahj, %i.ahi
  %i.ahl = call double @llvm.fmuladd.f64(double %i.ahk, double %i.ahh, double %i.ahi)
  %.pre768 = load i32, ptr %i.afd, align 8, !tbaa !267
  br label %_ZNK10ImPlotAxis12PlotToPixelsEd.exit

_ZNK10ImPlotAxis12PlotToPixelsEd.exit:            ; preds = %._crit_edge.i557, %bb.ef
  %i.ahm = phi i32 [ %.pre768, %bb.ef ], [ %i.agx, %._crit_edge.i557 ] ; 2 uses
  %i.ahn = phi double [ %i.ahi, %bb.ef ], [ %.pre.i, %._crit_edge.i557 ]
  %.0.i = phi double [ %i.ahl, %bb.ef ], [ %i.aha, %._crit_edge.i557 ]
  %i.aho = load float, ptr %i.afn, align 8, !tbaa !307
  %i.ahp = fpext float %i.aho to double
  %i.ahq = load double, ptr %i.afo, align 8, !tbaa !308
  %i.ahr = fsub double %.0.i, %i.ahn
  %i.ahs = call double @llvm.fmuladd.f64(double %i.ahq, double %i.ahr, double %i.ahp)
  %i.aht = fptrunc double %i.ahs to float
  %i.ahu = fadd float %i.aht, 5.000000e-01
  %i.ahv = fptosi float %i.ahu to i32
  %i.ahw = sitofp i32 %i.ahv to float
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  store float %i.ahw, ptr %i.ahx, align 8, !tbaa !430
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1 ; 2 uses
  %i.ahy = sext i32 %i.ahm to i64
  %i.ahz = icmp slt i64 %indvars.iv.next709, %i.ahy
  br i1 %i.ahz, label %.lr.ph.splitthread-pre-split, label %_ZNK10ImPlotAxis10WillRenderEv.exit555.thread, !llvm.loop !595

_ZNK10ImPlotAxis10WillRenderEv.exit555.thread:    ; preds = %_ZNK10ImPlotAxis12PlotToPixelsEd.exit, %._crit_edge.i557.us, %_ZNK10ImPlotAxis10WillRenderEv.exit555.preheader, %bb.ee, %bb.ed
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %exitcond718.not = icmp eq i64 %indvars.iv.next716, 6
  br i1 %exitcond718.not, label %.preheader647, label %bb.ed, !llvm.loop !596

bb.eg:                                            ; preds = %.preheader647
  %i.aia = load i32, ptr %i.pm, align 4, !tbaa !300
  %i.aib = and i32 %i.aia, 514
  %or.cond616.not = icmp eq i32 %i.aib, 0
  br i1 %or.cond616.not, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.aic = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.aid = getelementptr inbounds nuw i8, ptr %i.k, i64 356
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !335
  %i.aif = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !336
  %i.aih = load float, ptr %i.aes, align 4, !tbaa !431
  %i.aii = load float, ptr %i.aet, align 4, !tbaa !432
  call fastcc void @_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 8 dereferenceable(52) %i.aic, ptr noundef nonnull align 4 dereferenceable(16) %i.pa, i32 noundef %i.aie, i32 noundef %i.aig, float noundef %i.aih, float noundef %i.aii)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %.preheader647
  %i.aij = load i8, ptr %i.dj, align 4, !tbaa !299, !range !263, !noundef !264
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.ail = load i32, ptr %i.rd, align 4, !tbaa !300
  %i.aim = and i32 %i.ail, 514
  %or.cond616.not.1 = icmp eq i32 %i.aim, 0
  br i1 %or.cond616.not.1, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ain = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  %i.aio = getelementptr inbounds nuw i8, ptr %i.k, i64 732
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !335
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.k, i64 736
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !336
  %i.ais = load float, ptr %i.aes, align 4, !tbaa !431
  %i.ait = load float, ptr %i.aet, align 4, !tbaa !432
  call fastcc void @_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 8 dereferenceable(52) %i.ain, ptr noundef nonnull align 4 dereferenceable(16) %i.pa, i32 noundef %i.aip, i32 noundef %i.air, float noundef %i.ais, float noundef %i.ait)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.aiu = load i8, ptr %i.eb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.aiv = trunc nuw i8 %i.aiu to i1
  br i1 %i.aiv, label %bb.em, label %.preheader646

bb.em:                                            ; preds = %bb.el
  %i.aiw = load i32, ptr %i.ss, align 4, !tbaa !300
  %i.aix = and i32 %i.aiw, 514
  %or.cond616.not.2 = icmp eq i32 %i.aix, 0
  br i1 %or.cond616.not.2, label %bb.en, label %.preheader646

bb.en:                                            ; preds = %bb.em
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.k, i64 872
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.k, i64 1108
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !335
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.k, i64 1112
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !336
  %i.ajd = load float, ptr %i.aes, align 4, !tbaa !431
  %i.aje = load float, ptr %i.aet, align 4, !tbaa !432
  call fastcc void @_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 8 dereferenceable(52) %i.aiy, ptr noundef nonnull align 4 dereferenceable(16) %i.pa, i32 noundef %i.aja, i32 noundef %i.ajc, float noundef %i.ajd, float noundef %i.aje)
  br label %.preheader646

.preheader646:                                    ; preds = %bb.en, %bb.em, %bb.el
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.g, i64 336 ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.g, i64 344 ; 3 uses
  %i.ajh = load i8, ptr %i.kn, align 4, !tbaa !299, !range !263, !noundef !264
  %i.aji = trunc nuw i8 %i.ajh to i1
  br i1 %i.aji, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %.preheader646
  %i.ajj = load i32, ptr %i.uh, align 4, !tbaa !300
  %i.ajk = and i32 %i.ajj, 514
  %or.cond618.not = icmp eq i32 %i.ajk, 0
  br i1 %or.cond618.not, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ajl = getelementptr i8, ptr %i.k, i64 1248
  %i.ajm = getelementptr i8, ptr %i.k, i64 1484
  %i.ajn = load i32, ptr %i.ajm, align 4, !tbaa !335
  %i.ajo = getelementptr i8, ptr %i.k, i64 1488
  %i.ajp = load i32, ptr %i.ajo, align 8, !tbaa !336
  %i.ajq = load float, ptr %i.ajf, align 8, !tbaa !433
  %i.ajr = load float, ptr %i.ajg, align 8, !tbaa !434
  call fastcc void @_ZN6ImPlotL16RenderGridLinesYER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 8 dereferenceable(52) %i.ajl, ptr noundef nonnull align 4 dereferenceable(16) %i.pa, i32 noundef %i.ajn, i32 noundef %i.ajp, float noundef %i.ajq, float noundef %i.ajr)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %.preheader646
  %i.ajs = load i8, ptr %i.le, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %bb.er, label %bb.et
end_hunk_0
