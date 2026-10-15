Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
bb.co:                                            ; preds = %bb.cn
  %i.oz = load float, ptr %i.k, align 4, !tbaa !193
  %i.pa = fmul float %i.ox, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ot, float noundef %i.oz, float noundef %i.pa, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.dl) #36
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.pb = load float, ptr %i.t, align 4, !tbaa !193
  %i.pc = fcmp ugt float %i.pb, 0.000000e+00
  br i1 %i.pc, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pd = load float, ptr %i.k, align 4
  %i.pe = fmul float %i.pd, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ot, float noundef %i.pe, float noundef %i.ov, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.dl) #36
  br label %bb.cr

bb.cr:                                            ; preds = %bb.co, %bb.cq, %bb.cp, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  br label %.thread

.thread:                                          ; preds = %bb.cb, %bb.ck, %bb.cr
  %.12601 = phi i8 [ %.11, %bb.cr ], [ %.11, %bb.ck ], [ %.8, %bb.cb ]
  %i.pf = trunc nuw i8 %.12601 to i1              ; 2 uses
  br i1 %i.pf, label %bb.cs, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.cs:                                            ; preds = %.thread
  br i1 %.not437, label %bb.db, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pg = load float, ptr %1, align 4, !tbaa !193 ; 2 uses
  store float %i.pg, ptr %i.m, align 4, !tbaa !193
  %i.ph = load float, ptr %i.dj, align 4, !tbaa !193 ; 2 uses
  store float %i.ph, ptr %i.n, align 4, !tbaa !193
  %i.pi = load float, ptr %i.dl, align 4, !tbaa !193 ; 2 uses
  store float %i.pi, ptr %i.o, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.pg, float noundef %i.ph, float noundef %i.pi, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #36
  %i.pj = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 9496
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !432
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 9492
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !428
  %.not.i511 = icmp eq i32 %i.pl, %i.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  br i1 %.not.i511, label %bb.cu, label %.critedge.i512

bb.cu:                                            ; preds = %bb.ct
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 9508
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !433
  %i.pq = load float, ptr %i.dl, align 4, !tbaa !193
  %i.pr = load <2 x float>, ptr %1, align 4, !tbaa !193
  store <2 x float> %i.pr, ptr %4, align 8, !tbaa !193
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.pq, ptr %i.ps, align 8, !tbaa !294
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.pt, align 4, !tbaa !252
  %i.pu = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4) #36
  %.not14.i513 = icmp eq i32 %i.pp, %i.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %.not14.i513, label %bb.cv, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

.critedge.i512:                                   ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.cv:                                            ; preds = %bb.cu
  %i.pv = load float, ptr %i.k, align 4, !tbaa !193
  %i.pw = fcmp oeq float %i.pv, 0.000000e+00
  br i1 %i.pw, label %._crit_edge.i514, label %bb.cw

._crit_edge.i514:                                 ; preds = %bb.cv
  %.phi.trans.insert.i515 = getelementptr inbounds nuw i8, ptr %i.pj, i64 9500
  %.pre.i516 = load float, ptr %.phi.trans.insert.i515, align 4, !tbaa !434
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.px = load float, ptr %i.j, align 4, !tbaa !193
  %i.py = fcmp oeq float %i.px, 0.000000e+00
  br i1 %i.py, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 9500
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !434
  %i.qb = fcmp oeq float %i.qa, 1.000000e+00
  br i1 %i.qb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %._crit_edge.i514
  %i.qc = phi float [ %.pre.i516, %._crit_edge.i514 ], [ 1.000000e+00, %bb.cx ]
  store float %i.qc, ptr %i.j, align 4, !tbaa !193
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.qd = load float, ptr %i.l, align 4, !tbaa !193
  %i.qe = fcmp oeq float %i.qd, 0.000000e+00
  br i1 %i.qe, label %bb.da, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.da:                                            ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pj, i64 9504
  %i.qg = load float, ptr %i.qf, align 8, !tbaa !435
  store float %i.qg, ptr %i.k, align 4, !tbaa !193
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.db:                                            ; preds = %bb.cs
  %i.qh = and i32 %.3, 268435456
  %.not452 = icmp eq i32 %i.qh, 0
  br i1 %.not452, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qi = load float, ptr %1, align 4, !tbaa !193 ; 2 uses
  store float %i.qi, ptr %i.j, align 4, !tbaa !193
  %i.qj = load float, ptr %i.dj, align 4, !tbaa !193 ; 2 uses
  store float %i.qj, ptr %i.k, align 4, !tbaa !193
  %i.qk = load float, ptr %i.dl, align 4, !tbaa !193 ; 2 uses
  store float %i.qk, ptr %i.l, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.qi, float noundef %i.qj, float noundef %i.qk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o) #36
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517:       ; preds = %bb.da, %bb.cz, %.critedge.i512, %bb.cu, %bb.dc, %bb.db, %.thread
  %i.ql = getelementptr inbounds nuw i8, ptr %i.w, i64 3148 ; 4 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !739 ; 4 uses
  %i.qn = fcmp olt float %i.qm, 0.000000e+00
  %i.qo = fcmp ogt float %i.qm, 1.000000e+00
  %i.qp = select i1 %i.qo, float 1.000000e+00, float %i.qm
  %i.qq = call float @llvm.fmuladd.f32(float %i.qp, float 2.550000e+02, float 5.000000e-01)
  %i.qr = select i1 %i.qn, float 5.000000e-01, float %i.qq
  %i.qs = fptosi float %i.qr to i32
  %i.qt = shl i32 %i.qs, 24                       ; 11 uses
  %i.qu = or disjoint i32 %i.qt, 16711680         ; 5 uses
  %i.qv = or disjoint i32 %i.qt, 16776960         ; 5 uses
  %i.qw = or disjoint i32 %i.qt, 16777215         ; 6 uses
  %i.qx = or disjoint i32 %i.qt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  %i.qy = or disjoint i32 %i.qt, 255              ; 7 uses
  store i32 %i.qy, ptr %i.v, align 16, !tbaa !211
  %i.qz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ra = or disjoint i32 %i.qt, 65280            ; 5 uses
  %i.rb = or disjoint i32 %i.qt, 65535            ; 5 uses
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !211
  %i.rc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.ra, ptr %i.rc, align 8, !tbaa !211
  %i.rd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.qv, ptr %i.rd, align 4, !tbaa !211
  %i.re = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.qu, ptr %i.re, align 16, !tbaa !211
  %i.rf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.rg = or disjoint i32 %i.qt, 16711935         ; 5 uses
  store i32 %i.rg, ptr %i.rf, align 4, !tbaa !211
  %i.rh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.qy, ptr %i.rh, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  %i.ri = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !193
  %i.rj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.rj, align 8, !tbaa !294
  %i.rk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.qm, ptr %i.rk, align 4, !tbaa !252
  %i.rl = load float, ptr %i.j, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.rl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.ri, ptr noundef nonnull align 4 dereferenceable(4) %i.rj) #36
  %i.rm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.rn = load float, ptr %i.m, align 4, !tbaa !193
  %i.ro = load float, ptr %i.n, align 4, !tbaa !193
  %i.rp = load float, ptr %i.o, align 4, !tbaa !193
  %i.rq = load float, ptr %i.ql, align 4, !tbaa !739
  store float %i.rn, ptr %30, align 4, !tbaa !292
  %i.rr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.ro, ptr %i.rr, align 4, !tbaa !293
  %i.rs = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.rp, ptr %i.rs, align 4, !tbaa !294
  %i.rt = getelementptr inbounds nuw i8, ptr %30, i64 12
  store float %i.rq, ptr %i.rt, align 4, !tbaa !252
  %i.ru = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %30) #36 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !193
  br i1 %.not439, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517
  %i.rv = fdiv float 5.000000e-01, %i.cj          ; 2 uses
  %i.rw = fptosi float %i.cj to i32
  %i.rx = sdiv i32 %i.rw, 12
  %i.ry = call noundef i32 @llvm.smax.i32(i32 %i.rx, i32 4)
  %i.rz = fneg float %i.rv
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.sb = fadd float %i.cj, %i.ck                 ; 2 uses
  %i.sc = fmul float %i.sb, 5.000000e-01
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.sf = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sh = insertelement <2 x float> poison, float %i.rz, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %i.rv, i64 1
  br label %bb.df

bb.de:                                            ; preds = %bb.df
  %i.sj = load float, ptr %i.j, align 4, !tbaa !193
  %i.sk = fmul float %i.sj, 2.000000e+00
  %i.sl = fmul float %i.sk, f0x40490FDB           ; 2 uses
  %i.sm = call float @cosf(float noundef %i.sl) #36 ; 3 uses
  %i.sn = call float @sinf(float noundef %i.sl) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.so = load <2 x float>, ptr %16, align 8, !tbaa !193
  %i.sp = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %i.sn, i64 1
  %i.st = fmul <2 x float> %i.sq, %i.ss
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.st, <2 x float> splat (float 5.000000e-01), <2 x float> %i.so)
  store <2 x float> %i.su, ptr %32, align 8, !tbaa !193
  %.v = select i1 %i.mn, float 6.500000e-01, float 5.500000e-01
  %i.sv = fmul float %i.ci, %.v                   ; 4 uses
  %i.sw = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.sv) #36 ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.sv, i32 noundef %i.rm, i32 noundef %i.sw) #36
  %i.sx = fadd float %i.sv, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.sx, i32 noundef %i.qx, i32 noundef %i.sw, float noundef 1.000000e+00) #36
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.sv, i32 noundef %i.qw, i32 noundef %i.sw, float noundef 1.000000e+00) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.sy = fneg float %i.sn
  %i.sz = load <2 x float>, ptr %17, align 8, !tbaa !193 ; 2 uses
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tb = insertelement <2 x float> poison, float %i.sy, i64 0
  %i.tc = insertelement <2 x float> %i.tb, float %i.sm, i64 1 ; 3 uses
  %i.td = fmul <2 x float> %i.ta, %i.tc
  %i.te = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.tg = insertelement <2 x float> %i.tf, float %i.sn, i64 1 ; 3 uses
  %i.th = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.te, <2 x float> %i.tg, <2 x float> %i.td)
  %i.ti = load <2 x float>, ptr %16, align 8, !tbaa !193 ; 3 uses
  %i.tj = fadd <2 x float> %i.ti, %i.th           ; 2 uses
  store <2 x float> %i.tj, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  %i.tk = load <2 x float>, ptr %18, align 8, !tbaa !193 ; 2 uses
  %41 = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %42 = fmul <2 x float> %41, %i.tc
  %43 = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %i.tg, <2 x float> %42)
  %45 = fadd <2 x float> %i.ti, %44               ; 2 uses
  store <2 x float> %45, ptr %34, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  %46 = load <2 x float>, ptr %19, align 8, !tbaa !193 ; 2 uses
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %48 = fmul <2 x float> %47, %i.tc
  %49 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %49, <2 x float> %i.tg, <2 x float> %48)
  %i.tl = fadd <2 x float> %i.ti, %50             ; 2 uses
  store <2 x float> %i.tl, ptr %35, align 8
  %i.tm = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() #36 ; 3 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 3, i32 noundef 3) #36
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !740 ; 3 uses
  %i.tp = trunc i32 %i.to to i16
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !741 ; 3 uses
  store i16 %i.tp, ptr %i.tr, align 2, !tbaa !221
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 2
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !742 ; 10 uses
  store <2 x float> %i.tj, ptr %i.tu, align 4, !tbaa !193
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store <2 x float> %i.tm, ptr %i.tv, align 4, !tbaa !193
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store i32 %i.rm, ptr %i.tw, align 4, !tbaa !744
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 20
  store <2 x float> %45, ptr %i.tx, align 4, !tbaa !193
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 28
  store <2 x float> %i.tm, ptr %i.ty, align 4, !tbaa !193
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 36
  store i32 %i.qt, ptr %i.tz, align 4, !tbaa !744
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 40
  %i.ub = trunc i32 %i.to to i16
  %i.uc = insertelement <2 x i16> poison, i16 %i.ub, i64 0
  %i.ud = shufflevector <2 x i16> %i.uc, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ue = add <2 x i16> %i.ud, <i16 1, i16 2>
  store <2 x i16> %i.ue, ptr %i.ts, align 2, !tbaa !221
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tr, i64 6
  store ptr %i.uf, ptr %i.tq, align 8, !tbaa !741
  store <2 x float> %i.tl, ptr %i.ua, align 4, !tbaa !193
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tu, i64 48
  store <2 x float> %i.tm, ptr %i.ug, align 4, !tbaa !193
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  store i32 %i.qw, ptr %i.uh, align 4, !tbaa !744
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tu, i64 60
  store ptr %i.ui, ptr %i.tt, align 8, !tbaa !742
  %i.uj = add i32 %i.to, 3
  store i32 %i.uj, ptr %i.tn, align 4, !tbaa !740
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef %i.qx, float noundef 1.500000e+00) #36
  %i.uk = load float, ptr %i.k, align 4, !tbaa !193
  %i.ul = load float, ptr %i.l, align 4, !tbaa !193
  %i.um = fsub float 1.000000e+00, %i.ul
  %i.un = load <2 x float>, ptr %35, align 8, !tbaa !193 ; 2 uses
  %i.uo = load <2 x float>, ptr %33, align 8, !tbaa !193
  %i.up = fsub <2 x float> %i.uo, %i.un
  %i.uq = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.ur = insertelement <2 x float> %i.uq, float %i.um, i64 1 ; 3 uses
  %i.us = fcmp olt <2 x float> %i.ur, zeroinitializer
  %i.ut = fcmp ogt <2 x float> %i.ur, splat (float 1.000000e+00)
  %i.uu = select <2 x i1> %i.ut, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ur
  %i.uv = select <2 x i1> %i.us, <2 x float> zeroinitializer, <2 x float> %i.uu ; 2 uses
  %i.uw = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.up, <2 x float> %i.uw, <2 x float> %i.un) ; 2 uses
  %i.uy = load <2 x float>, ptr %34, align 8, !tbaa !193
  %i.uz = fsub <2 x float> %i.uy, %i.ux
  %i.va = shufflevector <2 x float> %i.uv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uz, <2 x float> %i.va, <2 x float> %i.ux)
  store <2 x float> %i.vb, ptr %31, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.di

bb.df:                                            ; preds = %bb.dd, %bb.df
  %i.vc = phi i32 [ %i.qy, %bb.dd ], [ %i.wd, %bb.df ]
  %indvars.iv = phi i64 [ 0, %bb.dd ], [ %indvars.iv.next, %bb.df ] ; 2 uses
  %i.vd = trunc nuw nsw i64 %indvars.iv to i32
  %i.ve = uitofp nneg i32 %i.vd to float
  %i.vf = insertelement <2 x float> poison, float %i.ve, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vh = fadd nnan <2 x float> %i.vg, <float -0.000000e+00, float 1.000000e+00>
  %i.vi = fdiv nnan <2 x float> %i.vh, splat (float 6.000000e+00)
  %i.vj = fmul nnan <2 x float> %i.vi, splat (float 2.000000e+00)
  %i.vk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vj, <2 x float> splat (float f0x40490FDB), <2 x float> %i.si) ; 2 uses
  %i.vl = load i32, ptr %i.sa, align 8, !tbaa !745
  %i.vm = extractelement <2 x float> %i.vk, i64 0 ; 3 uses
  %i.vn = extractelement <2 x float> %i.vk, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.sc, float noundef %i.vm, float noundef %i.vn, i32 noundef %i.ry) #36
  %i.vo = load ptr, ptr %i.se, align 8, !tbaa !437
  %i.vp = load i32, ptr %i.sd, align 8, !tbaa !438
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef %i.vo, i32 noundef %i.vp, i32 noundef %i.qw, i32 noundef 0, float noundef %i.ci) #36
  store i32 0, ptr %i.sd, align 8, !tbaa !438
  %i.vq = load i32, ptr %i.sa, align 8, !tbaa !745
  %i.vr = call float @cosf(float noundef %i.vm) #36
  %i.vs = call float @sinf(float noundef %i.vm) #36
  %i.vt = call float @cosf(float noundef %i.vn) #36
  %i.vu = call float @sinf(float noundef %i.vn) #36
  %i.vv = load <2 x float>, ptr %16, align 8, !tbaa !193 ; 2 uses
  %i.vw = insertelement <2 x float> poison, float %i.vr, i64 0
  %i.vx = insertelement <2 x float> %i.vw, float %i.vs, i64 1
  %i.vy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vx, <2 x float> %i.sg, <2 x float> %i.vv)
  %i.vz = insertelement <2 x float> poison, float %i.vt, i64 0
  %i.wa = insertelement <2 x float> %i.vz, float %i.vu, i64 1
  %i.wb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wa, <2 x float> %i.sg, <2 x float> %i.vv)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !211 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.vl, i32 noundef %i.vq, <2 x float> %i.vy, <2 x float> %i.wb, i32 noundef %i.vc, i32 noundef %i.wd) #36
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.de, label %bb.df, !llvm.loop !738

bb.dg:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517
  %i.we = and i32 %.3, 33554432
  %.not453 = icmp eq i32 %i.we, 0
  br i1 %.not453, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.wf = extractelement <2 x float> %i.cp, i64 1
  %i.wg = fadd float %i.cd, %i.wf
  %.sroa.0.0.vec.insert.i534 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i535 = insertelement <2 x float> %.sroa.0.0.vec.insert.i534, float %i.wg, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i535, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.qw, i32 noundef %i.rm, i32 noundef %i.rm, i32 noundef %i.qw) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.wh = load <2 x float>, ptr %15, align 8, !tbaa !193
  %i.wi = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wk = fadd <2 x float> %i.wj, %i.wh
  store <2 x float> %i.wk, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.qt, i32 noundef %i.qt) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.wl = fadd <2 x float> %i.wj, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.wl, float noundef 0.000000e+00) #36
  %i.wm = load float, ptr %i.k, align 4, !tbaa !193
  %i.wn = load float, ptr %i.l, align 4, !tbaa !193
  %i.wo = fsub float 1.000000e+00, %i.wn
  %i.wp = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.wq = load <2 x float>, ptr %15, align 8, !tbaa !193 ; 3 uses
  %i.wr = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.ws = insertelement <2 x float> %i.wr, float %i.wo, i64 1 ; 3 uses
  %i.wt = fcmp olt <2 x float> %i.ws, zeroinitializer
  %i.wu = fcmp ogt <2 x float> %i.ws, splat (float 1.000000e+00)
  %i.wv = select <2 x i1> %i.wu, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ws
  %i.ww = select <2 x i1> %i.wt, <2 x float> zeroinitializer, <2 x float> %i.wv
  %i.wx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ww, <2 x float> %i.wj, <2 x float> %i.wq)
  %i.wy = fadd <2 x float> %i.wx, splat (float 5.000000e-01)
  %i.wz = fptosi <2 x float> %i.wy to <2 x i32>
  %i.xa = sitofp <2 x i32> %i.wz to <2 x float>   ; 3 uses
  %i.xb = fadd <2 x float> %i.wq, splat (float 2.000000e+00) ; 2 uses
  %i.xc = fadd <2 x float> %i.wj, %i.wq
  %i.xd = fadd <2 x float> %i.xc, splat (float -2.000000e+00) ; 2 uses
  %i.xe = fcmp ogt <2 x float> %i.xb, %i.xa
  %i.xf = fcmp olt <2 x float> %i.xd, %i.xa
  %i.xg = select <2 x i1> %i.xf, <2 x float> %i.xd, <2 x float> %i.xa
  %i.xh = select <2 x i1> %i.xe, <2 x float> %i.xb, <2 x float> %i.xg
  store <2 x float> %i.xh, ptr %31, align 8, !tbaa !193
  %i.xi = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xl = call float @llvm.fmuladd.f32(float %i.xi, float 0.000000e+00, float %i.wp)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.xl, ptr %i.xj, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.xm = fadd float %i.xi, %i.wp
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.xm, ptr %i.xk, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.qy, i32 noundef %i.qy, i32 noundef %i.rb, i32 noundef %i.rb) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xn = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.xo = fadd float %i.xi, %i.xn
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.xo, ptr %i.xj, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.xp = call float @llvm.fmuladd.f32(float %i.xi, float 2.000000e+00, float %i.xn)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.xp, ptr %i.xk, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rb, i32 noundef %i.rb, i32 noundef %i.ra, i32 noundef %i.ra) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xq = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.xr = call float @llvm.fmuladd.f32(float %i.xi, float 2.000000e+00, float %i.xq)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.xr, ptr %i.xj, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.xs = call float @llvm.fmuladd.f32(float %i.xi, float 3.000000e+00, float %i.xq)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.xs, ptr %i.xk, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ra, i32 noundef %i.ra, i32 noundef %i.qv, i32 noundef %i.qv) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xt = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.xu = call float @llvm.fmuladd.f32(float %i.xi, float 3.000000e+00, float %i.xt)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.xu, ptr %i.xj, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.xv = call float @llvm.fmuladd.f32(float %i.xi, float 4.000000e+00, float %i.xt)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.xv, ptr %i.xk, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.qv, i32 noundef %i.qv, i32 noundef %i.qu, i32 noundef %i.qu) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xw = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.xx = call float @llvm.fmuladd.f32(float %i.xi, float 4.000000e+00, float %i.xw)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.xx, ptr %i.xj, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.xy = call float @llvm.fmuladd.f32(float %i.xi, float 5.000000e+00, float %i.xw)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.xy, ptr %i.xk, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.qu, i32 noundef %i.qu, i32 noundef %i.rg, i32 noundef %i.rg) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xz = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.ya = call float @llvm.fmuladd.f32(float %i.xi, float 5.000000e+00, float %i.xz)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.ya, ptr %i.xj, align 4, !tbaa !200
end_hunk_0
