Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot7EndPlotEv:bb.a
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %20, i32 noundef %i.si, ptr noundef %i.ox, ptr noundef null) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 1 ; 2 uses
  %i.sj = load i32, ptr %i.ld, align 8, !tbaa !625
  %i.sk = sext i32 %i.sj to i64
  %i.sl = icmp slt i64 %indvars.iv.next1148, %i.sk
  br i1 %i.sl, label %bb.by, label %._crit_edge1096, !llvm.loop !613

bb.co:                                            ; preds = %._crit_edge1096
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.sm = getelementptr inbounds nuw i8, ptr %i.q, i64 2520
  %i.sn = load <2 x float>, ptr %i.sm, align 8, !tbaa !41
  %i.so = load <2 x float>, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.sp = fadd <2 x float> %i.sn, %i.so
  store <2 x float> %i.sp, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.sq = getelementptr inbounds nuw i8, ptr %i.q, i64 2528
  %i.sr = load <2 x float>, ptr %i.sq, align 8, !tbaa !41
  %i.ss = fadd <2 x float> %i.so, %i.sr
  store <2 x float> %i.ss, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.st = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.su = getelementptr i8, ptr %i.st, i64 744
  %.val.i.i695 = load float, ptr %i.su, align 4, !tbaa !46
  %i.sv = fcmp oeq float %.val.i.i695, -1.000000e+00
  br i1 %i.sv, label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 732
  %.sroa.0.0.copyload.i696 = load <2 x float>, ptr %i.sw, align 4, !tbaa !41
  %.sroa.3.0..sroa_idx.i697 = getelementptr inbounds nuw i8, ptr %i.st, i64 740
  %.sroa.3.0.copyload.i698 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i697, align 4, !tbaa !41
  %i.sx = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i696, 0
  %i.sy = insertvalue { <2 x float>, <2 x float> } %i.sx, <2 x float> %.sroa.3.0.copyload.i698, 1
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700

_ZN6ImPlotL17GetStyleColorVec4Ei.exit700:         ; preds = %bb.co, %bb.cp
  %.fca.1.insert.merged.i699 = phi { <2 x float>, <2 x float> } [ %i.sy, %bb.cp ], [ { <2 x float> splat (float 1.000000e+00), <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %bb.co ] ; 2 uses
  %i.sz = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 0
  store <2 x float> %i.sz, ptr %23, align 16
  %i.ta = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.tb = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 1
  store <2 x float> %i.tb, ptr %i.ta, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.tc = load <4 x float>, ptr %23, align 16     ; 3 uses
  %.sroa.3.8.vec.insert.i.i = shufflevector <4 x float> %i.tc, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.td = extractelement <4 x float> %i.tc, i64 3
  %i.te = fmul float %i.td, 2.500000e-01
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.tc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.te, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %5, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.tf, align 8
  %i.tg = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.th = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %23) #32
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.tg, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.th, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, %._crit_edge1096
  %i.ti = load i32, ptr %i.fh, align 4, !tbaa !326 ; 5 uses
  %i.tj = and i32 %i.ti, 256
  %.not1041 = icmp eq i32 %i.tj, 0
  br i1 %.not1041, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tk = getelementptr inbounds nuw i8, ptr %i.q, i64 2552
  %i.tl = load i8, ptr %i.tk, align 8, !tbaa !368, !range !263, !noundef !264
  %i.tm = trunc nuw i8 %i.tl to i1
  %.not9 = xor i1 %i.tm, true
  %or.cond11 = or i1 %i.bt, %.not9
  %or.cond13 = or i1 %i.bu, %or.cond11
  br i1 %or.cond13, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tn = getelementptr inbounds nuw i8, ptr %i.q, i64 2554
  %i.to = load i8, ptr %i.tn, align 2, !tbaa !361, !range !263, !noundef !264
  %i.tp = trunc nuw i8 %i.to to i1
  br i1 %i.tp, label %bb.cz, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tq = getelementptr inbounds nuw i8, ptr %i.q, i64 2392
  %i.tr = load i8, ptr %i.tq, align 8, !tbaa !441, !range !263, !noundef !264
  %i.ts = trunc nuw i8 %i.tr to i1
  br i1 %i.ts, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef -1) #32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.tu = load float, ptr %i.by, align 8, !tbaa !358
  store float %i.tu, ptr %24, align 4, !tbaa !172
  %i.tv = getelementptr inbounds nuw i8, ptr %24, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.tw = load <2 x float>, ptr %i.tt, align 8, !tbaa !41 ; 6 uses
  %i.tx = fadd <2 x float> %i.tw, <float -5.000000e+00, float -0.000000e+00>
  store <2 x float> %i.tx, ptr %25, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.ty = extractelement <2 x float> %i.tw, i64 1 ; 2 uses
  store float %i.ty, ptr %i.tv, align 4, !tbaa !173
  %i.tz = fadd <2 x float> %i.tw, <float 5.000000e+00, float -0.000000e+00>
  store <2 x float> %i.tz, ptr %26, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.ua = load float, ptr %i.ha, align 8, !tbaa !359
  store float %i.ua, ptr %27, align 4, !tbaa !172
  %i.ub = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.ty, ptr %i.ub, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.uc = load float, ptr %i.hh, align 4, !tbaa !373
  %i.ud = getelementptr inbounds nuw i8, ptr %28, i64 4
  store float %i.uc, ptr %i.ud, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.ue = fadd <2 x float> %i.tw, <float -0.000000e+00, float -5.000000e+00>
  store <2 x float> %i.ue, ptr %29, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.uf = extractelement <2 x float> %i.tw, i64 0 ; 2 uses
  store float %i.uf, ptr %28, align 4, !tbaa !172
  %i.ug = fadd <2 x float> %i.tw, <float -0.000000e+00, float 5.000000e+00>
  store <2 x float> %i.ug, ptr %30, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.uh = load float, ptr %i.hi, align 4, !tbaa !374
  store float %i.uf, ptr %31, align 4, !tbaa !172
  %i.ui = getelementptr inbounds nuw i8, ptr %31, i64 4
  store float %i.uh, ptr %i.ui, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.uj = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 6 uses
  %i.uk = getelementptr i8, ptr %i.uj, i64 760
  %.val.i.i.i701 = load float, ptr %i.uk, align 4, !tbaa !46
  %i.ul = fcmp oeq float %.val.i.i.i701, -1.000000e+00
  br i1 %i.ul, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.um = getelementptr i8, ptr %i.uj, i64 552
  %.val.i46.i = load float, ptr %i.um, align 4, !tbaa !46
  %i.un = fcmp oeq float %.val.i46.i, -1.000000e+00
  br i1 %i.un, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.uo = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 5) #32, !inline_history !1 ; 2 uses
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cx:                                            ; preds = %bb.cv
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 540
  %.sroa.3.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 548
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cy:                                            ; preds = %bb.cu
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uj, i64 748
  %.sroa.3.0..sroa_idx.i.i703 = getelementptr inbounds nuw i8, ptr %i.uj, i64 756
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

_ZN6ImPlotL16GetStyleColorU32Ei.exit706:          ; preds = %bb.cx, %bb.cw, %bb.cy
  %.sroa.0195.0.copyload.pn.i.pn.in = phi ptr [ %i.uq, %bb.cy ], [ %i.uo, %bb.cw ], [ %i.up, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn.in = phi ptr [ %.sroa.3.0..sroa_idx.i.i703, %bb.cy ], [ %.sroa.4196.0..sroa_idx.i, %bb.cw ], [ %.sroa.3.0..sroa_idx.i17.i, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.4196.0.copyload.pn.i.pn.in, align 4, !tbaa !41
  %.sroa.0195.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.0195.0.copyload.pn.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.0195.0.copyload.pn.i.pn, ptr %4, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.4196.0.copyload.pn.i.pn, ptr %i.ur, align 8
  %i.us = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4) #32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, i32 noundef %i.us, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %27, i32 noundef %i.us, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %29, i32 noundef %i.us, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef %i.us, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %.pre1213 = load i32, ptr %i.fh, align 4, !tbaa !326
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit706, %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %i.ut = phi i32 [ %.pre1213, %_ZN6ImPlotL16GetStyleColorU32Ei.exit706 ], [ %i.ti, %bb.ct ], [ %i.ti, %bb.cs ], [ %i.ti, %bb.cr ], [ %i.ti, %bb.cq ]
  %i.uu = and i32 %i.ut, 4
  %.not1042 = icmp eq i32 %i.uu, 0
  br i1 %.not1042, label %bb.da, label %bb.em

bb.da:                                            ; preds = %bb.cz
  %i.uv = getelementptr inbounds nuw i8, ptr %i.q, i64 2552
  %i.uw = load i8, ptr %i.uv, align 8, !tbaa !368, !range !263, !noundef !264
  %i.ux = trunc nuw i8 %i.uw to i1
  %.phi.trans.insert1214 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre1215 = load i32, ptr %.phi.trans.insert1214, align 8, !tbaa !391 ; 3 uses
  %i.uy = and i32 %.pre1215, 4
  %.not1043 = icmp ne i32 %i.uy, 0
  %or.cond1349.not = select i1 %i.ux, i1 true, i1 %.not1043
  br i1 %or.cond1349.not, label %.peel.begin, label %bb.em

.peel.begin:                                      ; preds = %bb.da
  %i.uz = and i32 %.pre1215, 2
  %.not1045 = icmp eq i32 %i.uz, 0                ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.d, i64 1520 ; 11 uses
  store i32 0, ptr %i.va, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %50 = shl i32 %.pre1215, 1
  %51 = and i32 %50, 2                            ; 2 uses
  %52 = xor i32 %51, 3
  %i.vb = getelementptr inbounds nuw i8, ptr %i.v, i64 216 ; 2 uses
  %wide.trip.count = zext nneg i32 %52 to i64     ; 2 uses
  %i.vc = load i8, ptr %i.cb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %.peel.begin
  %.phi.trans.insert1222 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.pre1223 = load double, ptr %.phi.trans.insert1222, align 8, !tbaa !301 ; 3 uses
  %.phi.trans.insert1224 = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %.pre1225 = load ptr, ptr %.phi.trans.insert1224, align 8, !tbaa !372 ; 2 uses
  %.phi.trans.insert1220 = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %.pre1221 = load double, ptr %.phi.trans.insert1220, align 8, !tbaa !308
  %.phi.trans.insert1218 = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %.pre1219 = load float, ptr %.phi.trans.insert1218, align 8, !tbaa !307
  %.pre1217 = load float, ptr %i.vb, align 8, !tbaa !376
  %i.ve = fsub float %.pre1217, %.pre1219
  %i.vf = fpext float %i.ve to double
  %i.vg = fdiv double %i.vf, %.pre1221
  %i.vh = fadd double %.pre1223, %i.vg            ; 2 uses
  %.not.i707.peel = icmp eq ptr %.pre1225, null
  br i1 %.not.i707.peel, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vi = fsub double %i.vh, %.pre1223
  %i.vj = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !276
  %i.vl = fsub double %i.vk, %.pre1223
  %i.vm = fdiv double %i.vi, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !312
  %i.vp = getelementptr inbounds nuw i8, ptr %i.q, i64 304
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !311 ; 2 uses
  %i.vr = fsub double %i.vo, %i.vq
  %i.vs = call double @llvm.fmuladd.f64(double %i.vm, double %i.vr, double %i.vq)
  %i.vt = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !310
  %i.vv = call noundef double %.pre1225(double noundef %i.vs, ptr noundef %i.vu) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel

_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel:       ; preds = %bb.dc, %bb.db
  %.0.i.peel = phi double [ %i.vv, %bb.dc ], [ %i.vh, %bb.db ] ; 2 uses
  br i1 %.not1045, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel
  %i.vw = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.129, double noundef %.0.i.peel) #32 ; 0 uses
  br label %bb.df

bb.de:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.bx, double noundef %.0.i.peel, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull %i.a, ptr noundef null) #32
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.peel.begin
  %exitcond1153.peel.not.not = icmp eq i32 %51, 0 ; 2 uses
  br i1 %exitcond1153.peel.not.not, label %.peel.next, label %.peel.begin1161

.peel.begin1161:                                  ; preds = %bb.ds, %bb.dg
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull @.str.139, ptr noundef null) #32
  %i.vx = getelementptr inbounds nuw i8, ptr %i.v, i64 220 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.q, i64 1152
  %i.vz = load i8, ptr %i.ds, align 4, !tbaa !299, !range !263, !noundef !264
  %i.wa = trunc nuw i8 %i.vz to i1
  br i1 %i.wa, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %.peel.begin1161
  %.phi.trans.insert1234 = getelementptr i8, ptr %i.q, i64 1168
  %.pre1235 = load double, ptr %.phi.trans.insert1234, align 8, !tbaa !301 ; 3 uses
  %.phi.trans.insert1236 = getelementptr i8, ptr %i.q, i64 1408
  %.pre1237 = load ptr, ptr %.phi.trans.insert1236, align 8, !tbaa !372 ; 2 uses
  %.phi.trans.insert1232 = getelementptr i8, ptr %i.q, i64 1448
  %.pre1233 = load double, ptr %.phi.trans.insert1232, align 8, !tbaa !308
  %.phi.trans.insert1230 = getelementptr i8, ptr %i.q, i64 1424
  %.pre1231 = load float, ptr %.phi.trans.insert1230, align 8, !tbaa !307
  %.pre1229 = load float, ptr %i.vx, align 4, !tbaa !377
  %i.wb = fsub float %.pre1229, %.pre1231
  %i.wc = fpext float %i.wb to double
  %i.wd = fdiv double %i.wc, %.pre1233
  %i.we = fadd double %.pre1235, %i.wd            ; 2 uses
  %.not.i708.peel = icmp eq ptr %.pre1237, null
  br i1 %.not.i708.peel, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wf = fsub double %i.we, %.pre1235
  %i.wg = getelementptr i8, ptr %i.q, i64 1176
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !276
  %i.wi = fsub double %i.wh, %.pre1235
  %i.wj = fdiv double %i.wf, %i.wi
  %i.wk = getelementptr i8, ptr %i.q, i64 1440
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !312
  %i.wm = getelementptr i8, ptr %i.q, i64 1432
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !311 ; 2 uses
  %i.wo = fsub double %i.wl, %i.wn
  %i.wp = call double @llvm.fmuladd.f64(double %i.wj, double %i.wo, double %i.wn)
  %i.wq = getelementptr i8, ptr %i.q, i64 1416
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !310
  %i.ws = call noundef double %.pre1237(double noundef %i.wp, ptr noundef %i.wr) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel

_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel:    ; preds = %bb.di, %bb.dh
  %.0.i709.peel = phi double [ %i.ws, %bb.di ], [ %i.we, %bb.dh ] ; 2 uses
  br i1 %.not1045, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel
  %i.wt = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.129, double noundef %.0.i709.peel) #32 ; 0 uses
  br label %bb.dl

bb.dk:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.vy, double noundef %.0.i709.peel, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull %i.a, ptr noundef null) #32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.peel.begin1161
  br i1 %exitcond1153.peel.not.not, label %.peel.next1162, label %.loopexit1165

.peel.next:                                       ; preds = %bb.dg, %bb.ds
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %bb.ds ], [ 1, %bb.dg ] ; 2 uses
  %i.wu = getelementptr inbounds nuw [376 x i8], ptr %i.bx, i64 %indvars.iv1150 ; 10 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 364
  %i.ww = load i8, ptr %i.wv, align 4, !tbaa !299, !range !263, !noundef !264
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %.peel.next
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull @.str.137, ptr noundef null) #32
  %i.wy = load float, ptr %i.vb, align 8, !tbaa !376
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 272
  %i.xa = load float, ptr %i.wz, align 8, !tbaa !307
  %i.xb = fsub float %i.wy, %i.xa
  %i.xc = fpext float %i.xb to double
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wu, i64 296
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !308
  %i.xf = fdiv double %i.xc, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !301 ; 3 uses
  %i.xi = fadd double %i.xh, %i.xf                ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wu, i64 256
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !372 ; 2 uses
  %.not.i707 = icmp eq ptr %i.xk, null
  br i1 %.not.i707, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xl = fsub double %i.xi, %i.xh
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !276
  %i.xo = fsub double %i.xn, %i.xh
  %i.xp = fdiv double %i.xl, %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wu, i64 288
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !312
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wu, i64 280
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !311 ; 2 uses
  %i.xu = fsub double %i.xr, %i.xt
  %i.xv = call double @llvm.fmuladd.f64(double %i.xp, double %i.xu, double %i.xt)
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wu, i64 264
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !310
  %i.xy = call noundef double %i.xk(double noundef %i.xv, ptr noundef %i.xx) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit

_ZNK10ImPlotAxis12PixelsToPlotEf.exit:            ; preds = %bb.dn, %bb.do
  %.0.i = phi double [ %i.xy, %bb.do ], [ %i.xi, %bb.dn ] ; 2 uses
  br i1 %.not1045, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit
  %i.xz = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.129, double noundef %.0.i) #32 ; 0 uses
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.wu, double noundef %.0.i, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull %i.a, ptr noundef null) #32
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull @.str.138, ptr noundef null) #32
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.peel.next
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 1 ; 2 uses
  %exitcond1153.not = icmp eq i64 %indvars.iv.next1151, %wide.trip.count
  br i1 %exitcond1153.not, label %.peel.begin1161, label %.peel.next, !llvm.loop !614

.loopexit1165:                                    ; preds = %bb.dy, %bb.dm
  %i.ya = load i32, ptr %i.va, align 8, !tbaa !225
  %i.yb = icmp slt i32 %i.ya, 2
  br i1 %i.yb, label %bb.el, label %bb.dz

.peel.next1162:                                   ; preds = %bb.dm, %bb.dy
  %indvars.iv1156 = phi i64 [ %indvars.iv.next1157, %bb.dy ], [ 1, %bb.dm ] ; 2 uses
  %i.yc = getelementptr [376 x i8], ptr %i.q, i64 %indvars.iv1156 ; 10 uses
  %i.yd = getelementptr i8, ptr %i.yc, i64 1152
  %i.ye = getelementptr i8, ptr %i.yc, i64 1516
  %i.yf = load i8, ptr %i.ye, align 4, !tbaa !299, !range !263, !noundef !264
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %.peel.next1162
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull @.str.137, ptr noundef null) #32
  %i.yh = load float, ptr %i.vx, align 4, !tbaa !377
  %i.yi = getelementptr i8, ptr %i.yc, i64 1424
  %i.yj = load float, ptr %i.yi, align 8, !tbaa !307
  %i.yk = fsub float %i.yh, %i.yj
  %i.yl = fpext float %i.yk to double
  %i.ym = getelementptr i8, ptr %i.yc, i64 1448
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !308
  %i.yo = fdiv double %i.yl, %i.yn
  %i.yp = getelementptr i8, ptr %i.yc, i64 1168
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !301 ; 3 uses
  %i.yr = fadd double %i.yq, %i.yo                ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yc, i64 1408
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !372 ; 2 uses
  %.not.i708 = icmp eq ptr %i.yt, null
  br i1 %.not.i708, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.yu = fsub double %i.yr, %i.yq
  %i.yv = getelementptr i8, ptr %i.yc, i64 1176
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !276
  %i.yx = fsub double %i.yw, %i.yq
  %i.yy = fdiv double %i.yu, %i.yx
  %i.yz = getelementptr i8, ptr %i.yc, i64 1440
  %i.za = load double, ptr %i.yz, align 8, !tbaa !312
  %i.zb = getelementptr i8, ptr %i.yc, i64 1432
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !311 ; 2 uses
  %i.zd = fsub double %i.za, %i.zc
  %i.ze = call double @llvm.fmuladd.f64(double %i.yy, double %i.zd, double %i.zc)
  %i.zf = getelementptr i8, ptr %i.yc, i64 1416
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !310
  %i.zh = call noundef double %i.yt(double noundef %i.ze, ptr noundef %i.zg) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710

_ZNK10ImPlotAxis12PixelsToPlotEf.exit710:         ; preds = %bb.dt, %bb.du
  %.0.i709 = phi double [ %i.zh, %bb.du ], [ %i.yr, %bb.dt ] ; 2 uses
  br i1 %.not1045, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710
  %i.zi = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.129, double noundef %.0.i709) #32 ; 0 uses
  br label %bb.dx

bb.dw:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.yd, double noundef %.0.i709, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull %i.a, ptr noundef null) #32
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull @.str.138, ptr noundef null) #32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.peel.next1162
  %indvars.iv.next1157 = add nuw nsw i64 %indvars.iv1156, 1 ; 2 uses
  %exitcond1160.not = icmp eq i64 %indvars.iv.next1157, %wide.trip.count
  br i1 %exitcond1160.not, label %.loopexit1165, label %.peel.next1162, !llvm.loop !615

bb.dz:                                            ; preds = %.loopexit1165
  %i.zj = getelementptr inbounds nuw i8, ptr %i.d, i64 1528 ; 2 uses
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !635 ; 2 uses
  %.not.i711 = icmp eq ptr %i.zk, null
  %spec.select.i = select i1 %.not.i711, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.zk
  %i.zl = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %spec.select.i, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  %i.zm = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !390 ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.d, i64 388 ; 2 uses
  %i.zp = and i32 %i.zn, 4
  %.not.i712 = icmp eq i32 %i.zp, 0
  %i.zq = and i32 %i.zn, 8
  %.not45.i = icmp eq i32 %i.zq, 0                ; 2 uses
  br i1 %.not.i712, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %.not45.i, label %bb.eb, label %.thread.i

bb.eb:                                            ; preds = %bb.ea
  %i.zr = load float, ptr %i.by, align 8, !tbaa !244
  %i.zs = load float, ptr %i.zo, align 4, !tbaa !172
  %i.zt = fadd float %i.zr, %i.zs
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  br i1 %.not45.i, label %.thread.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zu = load float, ptr %i.ha, align 8, !tbaa !245
  %i.zv = load float, ptr %i.zo, align 4, !tbaa !172
  %i.zw = fsub float %i.zu, %i.zv
  %.sroa.0964.0.vec.extract966 = extractelement <2 x float> %i.zl, i64 0
  %i.zx = fsub float %i.zw, %.sroa.0964.0.vec.extract966
  br label %bb.ee

.thread.i:                                        ; preds = %bb.ec, %bb.ea
  %i.zy = load float, ptr %i.by, align 8, !tbaa !244
  %i.zz = load float, ptr %i.ha, align 8, !tbaa !245
  %i.aaa = fadd float %i.zy, %i.zz
  %i.aab = fmul float %i.aaa, 5.000000e-01
  %.sroa.0964.0.vec.extract = extractelement <2 x float> %i.zl, i64 0
  %i.aac = fneg float %.sroa.0964.0.vec.extract
  %i.aad = call float @llvm.fmuladd.f32(float %i.aac, float 5.000000e-01, float %i.aab)
  br label %bb.ee

bb.ee:                                            ; preds = %.thread.i, %bb.ed, %bb.eb
  %.sink.i = phi float [ %i.zx, %bb.ed ], [ %i.aad, %.thread.i ], [ %i.zt, %bb.eb ]
  %i.aae = and i32 %i.zn, 1
  %.not47.i = icmp eq i32 %i.aae, 0
  %i.aaf = and i32 %i.zn, 2
  %.not48.i = icmp eq i32 %i.aaf, 0               ; 2 uses
  br i1 %.not47.i, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  br i1 %.not48.i, label %bb.eg, label %.thread44.i

bb.eg:                                            ; preds = %bb.ef
  %i.aag = load float, ptr %i.hh, align 4, !tbaa !246
  %i.aah = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.aai = load float, ptr %i.aah, align 8, !tbaa !173
  %i.aaj = fadd float %i.aag, %i.aai
  br label %_ZN6ImPlot14GetLocationPosERK6ImRectRK6ImVec2iS5_.exit
end_hunk_0
