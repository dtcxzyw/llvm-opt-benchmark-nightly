Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #41
  br label %.thread598

.thread598:                                       ; preds = %bb.cg, %bb.cp, %bb.cw
  %.12603 = phi i8 [ %.11, %bb.cw ], [ %.11, %bb.cp ], [ %.8, %bb.cg ]
  %i.qf = trunc nuw i8 %.12603 to i1              ; 2 uses
  br i1 %i.qf, label %bb.cx, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.cx:                                            ; preds = %.thread598
  br i1 %.not451, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qg = load float, ptr %1, align 4, !tbaa !190 ; 2 uses
  store float %i.qg, ptr %i.m, align 4, !tbaa !190
  %i.qh = load float, ptr %i.dp, align 4, !tbaa !190 ; 2 uses
  store float %i.qh, ptr %i.n, align 4, !tbaa !190
  %i.qi = load float, ptr %i.dr, align 4, !tbaa !190 ; 2 uses
  store float %i.qi, ptr %i.o, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.qg, float noundef %i.qh, float noundef %i.qi, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.qj = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 9728
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !462
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 9724
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !458
  %.not.i510 = icmp eq i32 %i.ql, %i.qn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  br i1 %.not.i510, label %bb.cz, label %.critedge.i511

bb.cz:                                            ; preds = %bb.cy
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 9740
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !463
  %i.qq = load float, ptr %i.dr, align 4, !tbaa !190
  %i.qr = load <2 x float>, ptr %1, align 4, !tbaa !190
  store <2 x float> %i.qr, ptr %4, align 8, !tbaa !190
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.qq, ptr %i.qs, align 8, !tbaa !312
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.qt, align 4, !tbaa !254
  %i.qu = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.not14.i512 = icmp eq i32 %i.qp, %i.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %.not14.i512, label %bb.da, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

.critedge.i511:                                   ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.da:                                            ; preds = %bb.cz
  %i.qv = load float, ptr %i.k, align 4, !tbaa !190
  %i.qw = fcmp oeq float %i.qv, 0.000000e+00
  br i1 %i.qw, label %._crit_edge.i513, label %bb.db

._crit_edge.i513:                                 ; preds = %bb.da
  %.phi.trans.insert.i514 = getelementptr inbounds nuw i8, ptr %i.qj, i64 9732
  %.pre.i515 = load float, ptr %.phi.trans.insert.i514, align 4, !tbaa !464
  br label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.qx = load float, ptr %i.j, align 4, !tbaa !190
  %i.qy = fcmp oeq float %i.qx, 0.000000e+00
  br i1 %i.qy, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qj, i64 9732
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !464
  %i.rb = fcmp oeq float %i.ra, 1.000000e+00
  br i1 %i.rb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i513
  %i.rc = phi float [ %.pre.i515, %._crit_edge.i513 ], [ 1.000000e+00, %bb.dc ]
  store float %i.rc, ptr %i.j, align 4, !tbaa !190
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.rd = load float, ptr %i.l, align 4, !tbaa !190
  %i.re = fcmp oeq float %i.rd, 0.000000e+00
  br i1 %i.re, label %bb.df, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.df:                                            ; preds = %bb.de
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qj, i64 9736
  %i.rg = load float, ptr %i.rf, align 8, !tbaa !465
  store float %i.rg, ptr %i.k, align 4, !tbaa !190
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.dg:                                            ; preds = %bb.cx
  %i.rh = and i32 %.3, 536870912
  %.not466 = icmp eq i32 %i.rh, 0
  br i1 %.not466, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ri = load float, ptr %1, align 4, !tbaa !190 ; 2 uses
  store float %i.ri, ptr %i.j, align 4, !tbaa !190
  %i.rj = load float, ptr %i.dp, align 4, !tbaa !190 ; 2 uses
  store float %i.rj, ptr %i.k, align 4, !tbaa !190
  %i.rk = load float, ptr %i.dr, align 4, !tbaa !190 ; 2 uses
  store float %i.rk, ptr %i.l, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ri, float noundef %i.rj, float noundef %i.rk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516:       ; preds = %bb.df, %bb.de, %.critedge.i511, %bb.cz, %bb.dh, %bb.dg, %.thread598
  %i.rl = getelementptr inbounds nuw i8, ptr %i.w, i64 3220 ; 4 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !771 ; 4 uses
  %i.rn = fcmp olt float %i.rm, 0.000000e+00
  %i.ro = fcmp ogt float %i.rm, 1.000000e+00
  %i.rp = select i1 %i.ro, float 1.000000e+00, float %i.rm
  %i.rq = call float @llvm.fmuladd.f32(float %i.rp, float 2.550000e+02, float 5.000000e-01)
  %i.rr = select i1 %i.rn, float 5.000000e-01, float %i.rq
  %i.rs = fptosi float %i.rr to i32
  %i.rt = shl i32 %i.rs, 24                       ; 11 uses
  %i.ru = or disjoint i32 %i.rt, 16711680         ; 5 uses
  %i.rv = or disjoint i32 %i.rt, 16776960         ; 5 uses
  %i.rw = or disjoint i32 %i.rt, 16777215         ; 6 uses
  %i.rx = or disjoint i32 %i.rt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  %i.ry = or disjoint i32 %i.rt, 255              ; 7 uses
  store i32 %i.ry, ptr %i.v, align 16, !tbaa !208
  %i.rz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.sa = or disjoint i32 %i.rt, 65280            ; 5 uses
  %i.sb = or disjoint i32 %i.rt, 65535            ; 5 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !208
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.sa, ptr %i.sc, align 8, !tbaa !208
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.rv, ptr %i.sd, align 4, !tbaa !208
  %i.se = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.ru, ptr %i.se, align 16, !tbaa !208
  %i.sf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.sg = or disjoint i32 %i.rt, 16711935         ; 5 uses
  store i32 %i.sg, ptr %i.sf, align 4, !tbaa !208
  %i.sh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ry, ptr %i.sh, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !190
  %i.sj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.sj, align 8, !tbaa !312
  %i.sk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.rm, ptr %i.sk, align 4, !tbaa !254
  %i.sl = load float, ptr %i.j, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.sl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.si, ptr noundef nonnull align 4 dereferenceable(4) %i.sj)
  %i.sm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.sn = load float, ptr %i.m, align 4, !tbaa !190
  %i.so = load float, ptr %i.n, align 4, !tbaa !190
  %i.sp = load float, ptr %i.o, align 4, !tbaa !190
  %i.sq = load float, ptr %i.rl, align 4, !tbaa !771
  store float %i.sn, ptr %30, align 4, !tbaa !310
  %i.sr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.so, ptr %i.sr, align 4, !tbaa !311
  %i.ss = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.sp, ptr %i.ss, align 4, !tbaa !312
  %i.st = getelementptr inbounds nuw i8, ptr %30, i64 12
  store float %i.sq, ptr %i.st, align 4, !tbaa !254
  %i.su = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %30) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #41
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !190
  br i1 %.not453, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.sv = fdiv float 5.000000e-01, %i.cj          ; 2 uses
  %i.sw = fptosi float %i.cj to i32
  %i.sx = sdiv i32 %i.sw, 12
  %i.sy = call noundef i32 @llvm.smax.i32(i32 %i.sx, i32 4)
  %i.sz = fneg float %i.sv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.tb = fadd float %i.cj, %i.ck                 ; 2 uses
  %i.tc = fmul float %i.tb, 5.000000e-01
  %i.td = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.tf = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.th = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.ti = insertelement <2 x float> %i.th, float %i.sv, i64 1
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.tj = load float, ptr %i.j, align 4, !tbaa !190
  %i.tk = fmul float %i.tj, 2.000000e+00
  %i.tl = fmul float %i.tk, f0x40490FDB           ; 2 uses
  %i.tm = call float @cosf(float noundef %i.tl) #41
  %i.tn = call float @sinf(float noundef %i.tl) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #41
  %i.to = load <2 x float>, ptr %16, align 8, !tbaa !190
  %i.tp = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %i.tn, i64 1 ; 2 uses
  %i.tt = fmul <2 x float> %i.tq, %i.ts
  %i.tu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tt, <2 x float> splat (float 5.000000e-01), <2 x float> %i.to)
  store <2 x float> %i.tu, ptr %32, align 8, !tbaa !190
  %.v = select i1 %i.nn, float 6.500000e-01, float 5.500000e-01
  %i.tv = fmul float %i.ci, %.v                   ; 4 uses
  %i.tw = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.tv) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tv, i32 noundef %i.sm, i32 noundef %i.tw)
  %i.tx = fadd float %i.tv, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tx, i32 noundef %i.rx, i32 noundef %i.tw, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tv, i32 noundef %i.rw, i32 noundef %i.tw, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #41
  %i.ty = insertelement <2 x i1> poison, i1 %i.cz, i64 0
  %i.tz = shufflevector <2 x i1> %i.ty, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ua = select <2 x i1> %i.tz, <2 x float> %i.ts, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 5 uses
  %41 = shufflevector <2 x float> %i.ua, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %42 = extractelement <2 x float> %i.ua, i64 1
  %43 = load <2 x float>, ptr %17, align 8, !tbaa !190 ; 2 uses
  %i.ub = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 3 uses
  %44 = fneg float %42                            ; 2 uses
  %i.uc = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %45 = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x float> %45, float %44, i64 0
  %i.ud = fmul <2 x float> %i.uc, %46
  %i.ue = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ue, <2 x float> %i.ua, <2 x float> %i.ud)
  %i.ug = fadd <2 x float> %i.ub, %i.uf           ; 2 uses
  store <2 x float> %i.ug, ptr %33, align 8
  %i.uh = load <2 x float>, ptr %18, align 8, !tbaa !190 ; 2 uses
  %47 = load <2 x float>, ptr %19, align 8, !tbaa !190 ; 2 uses
  %48 = shufflevector <2 x float> %47, <2 x float> %i.ua, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %49 = insertelement <4 x float> %48, float %44, i64 0 ; 2 uses
  %50 = shufflevector <2 x float> %i.uh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> %49, <4 x i32> <i32 1, i32 4, i32 1, i32 6>
  %52 = fmul <4 x float> %49, %51
  %53 = shufflevector <2 x float> %i.uh, <2 x float> %47, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %54 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %41, <4 x float> %52) ; 2 uses
  %55 = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %56 = fadd <2 x float> %i.ub, %55               ; 2 uses
  store <2 x float> %56, ptr %34, align 8
  %57 = shufflevector <4 x float> %54, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ui = fadd <2 x float> %i.ub, %57             ; 2 uses
  store <2 x float> %i.ui, ptr %35, align 8
  %i.uj = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() ; 3 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 3, i32 noundef 3)
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !772 ; 3 uses
  %i.um = trunc i32 %i.ul to i16
  %i.un = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !773 ; 3 uses
  store i16 %i.um, ptr %i.uo, align 2, !tbaa !219
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !774 ; 10 uses
  store <2 x float> %i.ug, ptr %i.ur, align 4, !tbaa !190
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store <2 x float> %i.uj, ptr %i.us, align 4, !tbaa !190
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  store i32 %i.sm, ptr %i.ut, align 4, !tbaa !776
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 20
  store <2 x float> %56, ptr %i.uu, align 4, !tbaa !190
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 28
  store <2 x float> %i.uj, ptr %i.uv, align 4, !tbaa !190
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ur, i64 36
  store i32 %i.rt, ptr %i.uw, align 4, !tbaa !776
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  %i.uy = trunc i32 %i.ul to i16
  %i.uz = insertelement <2 x i16> poison, i16 %i.uy, i64 0
  %i.va = shufflevector <2 x i16> %i.uz, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vb = add <2 x i16> %i.va, <i16 1, i16 2>
  store <2 x i16> %i.vb, ptr %i.up, align 2, !tbaa !219
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uo, i64 6
  store ptr %i.vc, ptr %i.un, align 8, !tbaa !773
  store <2 x float> %i.ui, ptr %i.ux, align 4, !tbaa !190
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ur, i64 48
  store <2 x float> %i.uj, ptr %i.vd, align 4, !tbaa !190
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ur, i64 56
  store i32 %i.rw, ptr %i.ve, align 4, !tbaa !776
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ur, i64 60
  store ptr %i.vf, ptr %i.uq, align 8, !tbaa !774
  %i.vg = add i32 %i.ul, 3
  store i32 %i.vg, ptr %i.uk, align 4, !tbaa !772
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef %i.rx, float noundef 1.500000e+00)
  %i.vh = load float, ptr %i.k, align 4, !tbaa !190
  %i.vi = load float, ptr %i.l, align 4, !tbaa !190
  %i.vj = fsub float 1.000000e+00, %i.vi
  %i.vk = load <2 x float>, ptr %35, align 8, !tbaa !190 ; 2 uses
  %i.vl = load <2 x float>, ptr %33, align 8, !tbaa !190
  %i.vm = fsub <2 x float> %i.vl, %i.vk
  %i.vn = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vo = insertelement <2 x float> %i.vn, float %i.vj, i64 1 ; 3 uses
  %i.vp = fcmp olt <2 x float> %i.vo, zeroinitializer
  %i.vq = fcmp ogt <2 x float> %i.vo, splat (float 1.000000e+00)
  %i.vr = select <2 x i1> %i.vq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vo
  %i.vs = select <2 x i1> %i.vp, <2 x float> zeroinitializer, <2 x float> %i.vr ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vm, <2 x float> %i.vt, <2 x float> %i.vk) ; 2 uses
  %i.vv = load <2 x float>, ptr %34, align 8, !tbaa !190
  %i.vw = fsub <2 x float> %i.vv, %i.vu
  %i.vx = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vw, <2 x float> %i.vx, <2 x float> %i.vu)
  store <2 x float> %i.vy, ptr %31, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #41
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di, %bb.dk
  %i.vz = phi i32 [ %i.ry, %bb.di ], [ %i.xa, %bb.dk ]
  %indvars.iv = phi i64 [ 0, %bb.di ], [ %indvars.iv.next, %bb.dk ] ; 2 uses
  %i.wa = trunc nuw nsw i64 %indvars.iv to i32
  %i.wb = uitofp nneg i32 %i.wa to float
  %i.wc = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.we = fadd nnan <2 x float> %i.wd, <float -0.000000e+00, float 1.000000e+00>
  %i.wf = fdiv nnan <2 x float> %i.we, splat (float 6.000000e+00)
  %i.wg = fmul nnan <2 x float> %i.wf, splat (float 2.000000e+00)
  %i.wh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> splat (float f0x40490FDB), <2 x float> %i.ti) ; 2 uses
  %i.wi = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.wj = extractelement <2 x float> %i.wh, i64 0 ; 3 uses
  %i.wk = extractelement <2 x float> %i.wh, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.tc, float noundef %i.wj, float noundef %i.wk, i32 noundef %i.sy)
  %i.wl = load ptr, ptr %i.te, align 8, !tbaa !467
  %i.wm = load i32, ptr %i.td, align 8, !tbaa !468
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef %i.wl, i32 noundef %i.wm, i32 noundef %i.rw, float noundef %i.ci, i32 noundef 0)
  store i32 0, ptr %i.td, align 8, !tbaa !468
  %i.wn = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.wo = call float @cosf(float noundef %i.wj) #41
  %i.wp = call float @sinf(float noundef %i.wj) #41
  %i.wq = call float @cosf(float noundef %i.wk) #41
  %i.wr = call float @sinf(float noundef %i.wk) #41
  %i.ws = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 2 uses
  %i.wt = insertelement <2 x float> poison, float %i.wo, i64 0
  %i.wu = insertelement <2 x float> %i.wt, float %i.wp, i64 1
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wu, <2 x float> %i.tg, <2 x float> %i.ws)
  %i.ww = insertelement <2 x float> poison, float %i.wq, i64 0
  %i.wx = insertelement <2 x float> %i.ww, float %i.wr, i64 1
  %i.wy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wx, <2 x float> %i.tg, <2 x float> %i.ws)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !208 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.wi, i32 noundef %i.wn, <2 x float> %i.wv, <2 x float> %i.wy, i32 noundef %i.vz, i32 noundef %i.xa)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !770

bb.dl:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.xb = and i32 %.3, 33554432
  %.not467 = icmp eq i32 %i.xb, 0
  br i1 %.not467, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  %i.xc = extractelement <2 x float> %i.cp, i64 1
  %i.xd = fadd float %i.cd, %i.xc
  %.sroa.0.0.vec.insert.i533 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i534 = insertelement <2 x float> %.sroa.0.0.vec.insert.i533, float %i.xd, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i534, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.rw, i32 noundef %i.sm, i32 noundef %i.sm, i32 noundef %i.rw)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #41
  %i.xe = load <2 x float>, ptr %15, align 8, !tbaa !190
  %i.xf = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xh = fadd <2 x float> %i.xg, %i.xe
  store <2 x float> %i.xh, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.rt, i32 noundef %i.rt)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.xi = fadd <2 x float> %i.xg, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.xi, float noundef 0.000000e+00)
  %i.xj = load float, ptr %i.k, align 4, !tbaa !190
  %i.xk = load float, ptr %i.l, align 4, !tbaa !190
  %i.xl = fsub float 1.000000e+00, %i.xk
  %i.xm = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.xn = load <2 x float>, ptr %15, align 8, !tbaa !190 ; 3 uses
  %i.xo = insertelement <2 x float> poison, float %i.xj, i64 0
  %i.xp = insertelement <2 x float> %i.xo, float %i.xl, i64 1 ; 3 uses
  %i.xq = fcmp olt <2 x float> %i.xp, zeroinitializer
  %i.xr = fcmp ogt <2 x float> %i.xp, splat (float 1.000000e+00)
  %i.xs = select <2 x i1> %i.xr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.xp
  %i.xt = select <2 x i1> %i.xq, <2 x float> zeroinitializer, <2 x float> %i.xs
  %i.xu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xt, <2 x float> %i.xg, <2 x float> %i.xn)
  %i.xv = fadd <2 x float> %i.xu, splat (float 5.000000e-01)
  %i.xw = fptosi <2 x float> %i.xv to <2 x i32>
  %i.xx = sitofp <2 x i32> %i.xw to <2 x float>   ; 3 uses
  %i.xy = fadd <2 x float> %i.xn, splat (float 2.000000e+00) ; 2 uses
  %i.xz = fadd <2 x float> %i.xg, %i.xn
  %i.ya = fadd <2 x float> %i.xz, splat (float -2.000000e+00) ; 2 uses
  %i.yb = fcmp ogt <2 x float> %i.xy, %i.xx
  %i.yc = fcmp olt <2 x float> %i.ya, %i.xx
  %i.yd = select <2 x i1> %i.yc, <2 x float> %i.ya, <2 x float> %i.xx
  %i.ye = select <2 x i1> %i.yb, <2 x float> %i.xy, <2 x float> %i.yd
  store <2 x float> %i.ye, ptr %31, align 8, !tbaa !190
  %i.yf = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yi = call float @llvm.fmuladd.f32(float %i.yf, float 0.000000e+00, float %i.xm)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yi, ptr %i.yg, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yj = fadd float %i.yf, %i.xm
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.yj, ptr %i.yh, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ry, i32 noundef %i.ry, i32 noundef %i.sb, i32 noundef %i.sb)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yk = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yl = fadd float %i.yf, %i.yk
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yl, ptr %i.yg, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.ym = call float @llvm.fmuladd.f32(float %i.yf, float 2.000000e+00, float %i.yk)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.ym, ptr %i.yh, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sb, i32 noundef %i.sb, i32 noundef %i.sa, i32 noundef %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yn = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yo = call float @llvm.fmuladd.f32(float %i.yf, float 2.000000e+00, float %i.yn)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yo, ptr %i.yg, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yp = call float @llvm.fmuladd.f32(float %i.yf, float 3.000000e+00, float %i.yn)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.yp, ptr %i.yh, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sa, i32 noundef %i.sa, i32 noundef %i.rv, i32 noundef %i.rv)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yq = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yr = call float @llvm.fmuladd.f32(float %i.yf, float 3.000000e+00, float %i.yq)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yr, ptr %i.yg, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.ys = call float @llvm.fmuladd.f32(float %i.yf, float 4.000000e+00, float %i.yq)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.ys, ptr %i.yh, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rv, i32 noundef %i.rv, i32 noundef %i.ru, i32 noundef %i.ru)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yt = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yu = call float @llvm.fmuladd.f32(float %i.yf, float 4.000000e+00, float %i.yt)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yu, ptr %i.yg, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yv = call float @llvm.fmuladd.f32(float %i.yf, float 5.000000e+00, float %i.yt)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.yv, ptr %i.yh, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ru, i32 noundef %i.ru, i32 noundef %i.sg, i32 noundef %i.sg)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yw = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yx = call float @llvm.fmuladd.f32(float %i.yf, float 5.000000e+00, float %i.yw)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yx, ptr %i.yg, align 4, !tbaa !197
end_hunk_0
