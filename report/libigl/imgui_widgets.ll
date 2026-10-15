Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  %or.cond3 = select i1 %i.ns, i1 %i.nu, i1 false
  br i1 %or.cond3, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.nv = load float, ptr %i.u, align 4, !tbaa !141 ; 3 uses
  %i.nw = fcmp ugt float %i.nv, 0.000000e+00
  br i1 %i.nw, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nx = load float, ptr %i.l, align 4, !tbaa !141 ; 2 uses
  %i.ny = fcmp une float %i.nx, %i.nv
  br i1 %i.ny, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nz = load float, ptr %i.k, align 4, !tbaa !141
  %i.oa = fmul float %i.nx, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.nt, float noundef %i.nz, float noundef %i.oa, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.cu)
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.ob = load float, ptr %i.t, align 4, !tbaa !141
  %i.oc = fcmp ugt float %i.ob, 0.000000e+00
  br i1 %i.oc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.od = load float, ptr %i.k, align 4
  %i.oe = fmul float %i.od, 5.000000e-01
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.nt, float noundef %i.oe, float noundef %i.nv, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.cu)
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %bb.cn, %bb.cm, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #36
  br label %.thread

.thread:                                          ; preds = %bb.by, %bb.ch, %bb.co
  %.12615 = phi i8 [ %.11, %bb.co ], [ %.11, %bb.ch ], [ %.8, %bb.by ]
  %i.of = trunc nuw i8 %.12615 to i1              ; 2 uses
  br i1 %i.of, label %bb.cp, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cp:                                            ; preds = %.thread
  br i1 %.not413, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.og = load float, ptr %1, align 4, !tbaa !141 ; 2 uses
  store float %i.og, ptr %i.m, align 4, !tbaa !141
  %i.oh = load float, ptr %i.cs, align 4, !tbaa !141 ; 2 uses
  store float %i.oh, ptr %i.n, align 4, !tbaa !141
  %i.oi = load float, ptr %i.cu, align 4, !tbaa !141 ; 2 uses
  store float %i.oi, ptr %i.o, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.og, float noundef %i.oh, float noundef %i.oi, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.oj = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 12280
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.om = load float, ptr %i.cu, align 4, !tbaa !141
  %i.on = load <2 x float>, ptr %1, align 4, !tbaa !141
  store <2 x float> %i.on, ptr %4, align 8, !tbaa !141
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.om, ptr %i.oo, align 8, !tbaa !285
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.op, align 4, !tbaa !187
  %i.oq = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.not.i520 = icmp eq i32 %i.ol, %i.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %.not.i520, label %bb.cr, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cr:                                            ; preds = %bb.cq
  %i.or = load float, ptr %i.k, align 4, !tbaa !141
  %i.os = fcmp oeq float %i.or, 0.000000e+00
  br i1 %i.os, label %._crit_edge.i521, label %bb.cs

._crit_edge.i521:                                 ; preds = %bb.cr
  %.phi.trans.insert.i522 = getelementptr inbounds nuw i8, ptr %i.oj, i64 12272
  %.pre.i523 = load float, ptr %.phi.trans.insert.i522, align 8, !tbaa !302
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.ot = load float, ptr %i.j, align 4, !tbaa !141
  %i.ou = fcmp oeq float %i.ot, 0.000000e+00
  br i1 %i.ou, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 12272
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !302
  %i.ox = fcmp oeq float %i.ow, 1.000000e+00
  br i1 %i.ox, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct, %._crit_edge.i521
  %i.oy = phi float [ %.pre.i523, %._crit_edge.i521 ], [ 1.000000e+00, %bb.ct ]
  store float %i.oy, ptr %i.j, align 4, !tbaa !141
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.oz = load float, ptr %i.l, align 4, !tbaa !141
  %i.pa = fcmp oeq float %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.cw, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cw:                                            ; preds = %bb.cv
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oj, i64 12276
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !303
  store float %i.pc, ptr %i.k, align 4, !tbaa !141
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

bb.cx:                                            ; preds = %bb.cp
  %i.pd = and i32 %.3, 268435456
  %.not428 = icmp eq i32 %i.pd, 0
  br i1 %.not428, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pe = load float, ptr %1, align 4, !tbaa !141 ; 2 uses
  store float %i.pe, ptr %i.j, align 4, !tbaa !141
  %i.pf = load float, ptr %i.cs, align 4, !tbaa !141 ; 2 uses
  store float %i.pf, ptr %i.k, align 4, !tbaa !141
  %i.pg = load float, ptr %i.cu, align 4, !tbaa !141 ; 2 uses
  store float %i.pg, ptr %i.l, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pe, float noundef %i.pf, float noundef %i.pg, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524:       ; preds = %bb.cw, %bb.cv, %bb.cq, %bb.cy, %bb.cx, %.thread
  %i.ph = load float, ptr %i.af, align 8, !tbaa !534 ; 4 uses
  %i.pi = fcmp olt float %i.ph, 0.000000e+00
  %i.pj = fcmp ogt float %i.ph, 1.000000e+00
  %i.pk = select i1 %i.pj, float 1.000000e+00, float %i.ph
  %i.pl = call float @llvm.fmuladd.f32(float %i.pk, float 2.550000e+02, float 5.000000e-01)
  %i.pm = select i1 %i.pi, float 5.000000e-01, float %i.pl
  %i.pn = fptosi float %i.pm to i32
  %i.po = shl i32 %i.pn, 24                       ; 11 uses
  %i.pp = or disjoint i32 %i.po, 16711680         ; 5 uses
  %i.pq = or disjoint i32 %i.po, 16776960         ; 5 uses
  %i.pr = or disjoint i32 %i.po, 16777215         ; 6 uses
  %i.ps = or disjoint i32 %i.po, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  %i.pt = or disjoint i32 %i.po, 255              ; 7 uses
  store i32 %i.pt, ptr %i.v, align 16, !tbaa !188
  %i.pu = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.pv = or disjoint i32 %i.po, 65280            ; 5 uses
  %i.pw = or disjoint i32 %i.po, 65535            ; 5 uses
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !188
  %i.px = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.pv, ptr %i.px, align 8, !tbaa !188
  %i.py = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.pq, ptr %i.py, align 4, !tbaa !188
  %i.pz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.pp, ptr %i.pz, align 16, !tbaa !188
  %i.qa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.qb = or disjoint i32 %i.po, 16711935         ; 5 uses
  store i32 %i.qb, ptr %i.qa, align 4, !tbaa !188
  %i.qc = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.pt, ptr %i.qc, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  %i.qd = getelementptr inbounds nuw i8, ptr %27, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %27, align 8, !tbaa !141
  %i.qe = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.qe, align 8, !tbaa !285
  %i.qf = getelementptr inbounds nuw i8, ptr %27, i64 12
  store float %i.ph, ptr %i.qf, align 4, !tbaa !187
  %i.qg = load float, ptr %i.j, align 4, !tbaa !141
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.qg, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %27, ptr noundef nonnull align 4 dereferenceable(4) %i.qd, ptr noundef nonnull align 4 dereferenceable(4) %i.qe)
  %i.qh = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %27) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  %i.qi = load float, ptr %i.m, align 4, !tbaa !141
  %i.qj = load float, ptr %i.n, align 4, !tbaa !141
  %i.qk = load float, ptr %i.o, align 4, !tbaa !141
  %i.ql = load float, ptr %i.af, align 8, !tbaa !534
  store float %i.qi, ptr %28, align 4, !tbaa !284
  %i.qm = getelementptr inbounds nuw i8, ptr %28, i64 4
  store float %i.qj, ptr %i.qm, align 4, !tbaa !283
  %i.qn = getelementptr inbounds nuw i8, ptr %28, i64 8
  store float %i.qk, ptr %i.qn, align 4, !tbaa !285
  %i.qo = getelementptr inbounds nuw i8, ptr %28, i64 12
  store float %i.ql, ptr %i.qo, align 4, !tbaa !187
  %i.qp = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %28) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  store <2 x float> zeroinitializer, ptr %29, align 8, !tbaa !141
  br i1 %.not415, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524
  %i.qq = fdiv float 5.000000e-01, %i.bs          ; 2 uses
  %i.qr = fptosi float %i.bs to i32
  %i.qs = sdiv i32 %i.qr, 12
  %i.qt = call noundef i32 @llvm.smax.i32(i32 %i.qs, i32 4)
  %i.qu = fneg float %i.qq
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.qw = fadd float %i.bs, %i.bt                 ; 2 uses
  %i.qx = fmul float %i.qw, 5.000000e-01
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ra = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rc = insertelement <2 x float> poison, float %i.qu, i64 0
  %i.rd = insertelement <2 x float> %i.rc, float %i.qq, i64 1
  br label %bb.db

bb.da:                                            ; preds = %bb.db
  %i.re = load float, ptr %i.j, align 4, !tbaa !141
  %i.rf = fmul float %i.re, 2.000000e+00
  %i.rg = fmul float %i.rf, f0x40490FDB           ; 2 uses
  %i.rh = call float @cosf(float noundef %i.rg) #36 ; 4 uses
  %i.ri = call float @sinf(float noundef %i.rg) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.rj = load <2 x float>, ptr %15, align 8, !tbaa !141
  %i.rk = insertelement <2 x float> poison, float %i.qw, i64 0
  %i.rl = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rm = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.rn = insertelement <2 x float> %i.rm, float %i.ri, i64 1
  %i.ro = fmul <2 x float> %i.rl, %i.rn
  %i.rp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ro, <2 x float> splat (float 5.000000e-01), <2 x float> %i.rj)
  store <2 x float> %i.rp, ptr %30, align 8, !tbaa !141
  %.v = select i1 %i.lp, float 6.500000e-01, float 5.500000e-01
  %i.rq = fmul float %i.br, %.v                   ; 4 uses
  %i.rr = fdiv float %i.rq, 1.400000e+00
  %i.rs = fptosi float %i.rr to i32
  %i.rt = call i32 @llvm.smax.i32(i32 %i.rs, i32 9)
  %i.ru = call i32 @llvm.umin.i32(i32 %i.rt, i32 32) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %30, float noundef %i.rq, i32 noundef %i.qh, i32 noundef %i.ru)
  %i.rv = fadd float %i.rq, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %30, float noundef %i.rv, i32 noundef %i.ps, i32 noundef %i.ru, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %30, float noundef %i.rq, i32 noundef %i.pr, i32 noundef %i.ru, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  %i.rw = fneg float %i.ri                        ; 2 uses
  %i.rx = load <2 x float>, ptr %16, align 8, !tbaa !141 ; 2 uses
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rz = insertelement <2 x float> poison, float %i.rw, i64 0
  %i.sa = insertelement <2 x float> %i.rz, float %i.rh, i64 1
  %i.sb = fmul <2 x float> %i.ry, %i.sa
  %i.sc = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sd = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.se = insertelement <2 x float> %i.sd, float %i.ri, i64 1
  %i.sf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sc, <2 x float> %i.se, <2 x float> %i.sb)
  %i.sg = load <2 x float>, ptr %15, align 8, !tbaa !141 ; 3 uses
  %i.sh = fadd <2 x float> %i.sg, %i.sf           ; 3 uses
  store <2 x float> %i.sh, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %39 = load <2 x float>, ptr %17, align 8, !tbaa !141 ; 2 uses
  %i.si = load <2 x float>, ptr %18, align 8, !tbaa !141 ; 2 uses
  %40 = shufflevector <2 x float> %i.si, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 1>
  %41 = insertelement <4 x float> %40, float %i.rw, i64 0
  %42 = insertelement <4 x float> %41, float %i.rh, i64 2 ; 3 uses
  %43 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %44 = shufflevector <4 x float> %43, <4 x float> %42, <4 x i32> <i32 1, i32 4, i32 1, i32 6>
  %45 = fmul <4 x float> %42, %44
  %46 = shufflevector <2 x float> %39, <2 x float> %i.si, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %47 = shufflevector <4 x float> %42, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %48 = insertelement <2 x float> %47, float %i.ri, i64 1
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %50 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %46, <4 x float> %49, <4 x float> %45) ; 2 uses
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %52 = fadd <2 x float> %i.sg, %51               ; 3 uses
  store <2 x float> %52, ptr %32, align 8
  %53 = shufflevector <4 x float> %50, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.sj = fadd <2 x float> %i.sg, %53             ; 3 uses
  store <2 x float> %i.sj, ptr %33, align 8
  %i.sk = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() ; 6 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, i32 noundef 6, i32 noundef 6)
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !535 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !536 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !537 ; 19 uses
  store <2 x float> %i.sh, ptr %i.sq, align 4, !tbaa !141
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store <2 x float> %i.sk, ptr %i.sr, align 4, !tbaa !141
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i32 %i.qh, ptr %i.ss, align 4, !tbaa !539
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 20
  store <2 x float> %52, ptr %i.st, align 4, !tbaa !141
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 28
  store <2 x float> %i.sk, ptr %i.su, align 4, !tbaa !141
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 36
  store i32 %i.qh, ptr %i.sv, align 4, !tbaa !539
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  store <2 x float> %i.sj, ptr %i.sw, align 4, !tbaa !141
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 48
  store <2 x float> %i.sk, ptr %i.sx, align 4, !tbaa !141
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sq, i64 56
  store i32 %i.pr, ptr %i.sy, align 4, !tbaa !539
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 60
  %i.ta = trunc i32 %i.sm to i16
  %i.tb = insertelement <4 x i16> poison, i16 %i.ta, i64 0
  %i.tc = shufflevector <4 x i16> %i.tb, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.td = add <4 x i16> %i.tc, <i16 0, i16 1, i16 2, i16 3>
  store <4 x i16> %i.td, ptr %i.so, align 2, !tbaa !220
  %i.te = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store <2 x float> %i.sh, ptr %i.sz, align 4, !tbaa !141
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sq, i64 68
  store <2 x float> %i.sk, ptr %i.tf, align 4, !tbaa !141
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sq, i64 76
  store i32 0, ptr %i.tg, align 4, !tbaa !539
  %i.th = getelementptr inbounds nuw i8, ptr %i.sq, i64 80
  store <2 x float> %52, ptr %i.th, align 4, !tbaa !141
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sq, i64 88
  store <2 x float> %i.sk, ptr %i.ti, align 4, !tbaa !141
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sq, i64 96
  store i32 %i.po, ptr %i.tj, align 4, !tbaa !539
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sq, i64 100
  %i.tl = trunc i32 %i.sm to i16
  %i.tm = insertelement <2 x i16> poison, i16 %i.tl, i64 0
  %i.tn = shufflevector <2 x i16> %i.tm, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.to = add <2 x i16> %i.tn, <i16 4, i16 5>
  store <2 x i16> %i.to, ptr %i.te, align 2, !tbaa !220
  %i.tp = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  store ptr %i.tp, ptr %i.sn, align 8, !tbaa !536
  store <2 x float> %i.sj, ptr %i.tk, align 4, !tbaa !141
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sq, i64 108
  store <2 x float> %i.sk, ptr %i.tq, align 4, !tbaa !141
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sq, i64 116
  store i32 0, ptr %i.tr, align 4, !tbaa !539
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sq, i64 120
  store ptr %i.ts, ptr %i.sp, align 8, !tbaa !537
  %i.tt = add i32 %i.sm, 6
  store i32 %i.tt, ptr %i.sl, align 4, !tbaa !535
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(8) %33, i32 noundef %i.ps, float noundef 1.500000e+00)
  %i.tu = load float, ptr %i.k, align 4, !tbaa !141
  %i.tv = load float, ptr %i.l, align 4, !tbaa !141
  %i.tw = fsub float 1.000000e+00, %i.tv
  %i.tx = load <2 x float>, ptr %33, align 8, !tbaa !141 ; 2 uses
  %i.ty = load <2 x float>, ptr %31, align 8, !tbaa !141
  %i.tz = fsub <2 x float> %i.ty, %i.tx
  %i.ua = insertelement <2 x float> poison, float %i.tu, i64 0
  %i.ub = insertelement <2 x float> %i.ua, float %i.tw, i64 1 ; 3 uses
  %i.uc = fcmp olt <2 x float> %i.ub, zeroinitializer
  %i.ud = fcmp ogt <2 x float> %i.ub, splat (float 1.000000e+00)
  %i.ue = select <2 x i1> %i.ud, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ub
  %i.uf = select <2 x i1> %i.uc, <2 x float> zeroinitializer, <2 x float> %i.ue ; 2 uses
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tz, <2 x float> %i.ug, <2 x float> %i.tx) ; 2 uses
  %i.ui = load <2 x float>, ptr %32, align 8, !tbaa !141
  %i.uj = fsub <2 x float> %i.ui, %i.uh
  %i.uk = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uj, <2 x float> %i.uk, <2 x float> %i.uh)
  store <2 x float> %i.ul, ptr %29, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.de

bb.db:                                            ; preds = %bb.cz, %bb.db
  %i.um = phi i32 [ %i.pt, %bb.cz ], [ %i.vn, %bb.db ]
  %indvars.iv = phi i64 [ 0, %bb.cz ], [ %indvars.iv.next, %bb.db ] ; 2 uses
  %i.un = trunc nuw nsw i64 %indvars.iv to i32
  %i.uo = uitofp nneg i32 %i.un to float
  %i.up = insertelement <2 x float> poison, float %i.uo, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = fadd nnan <2 x float> %i.uq, <float -0.000000e+00, float 1.000000e+00>
  %i.us = fdiv nnan <2 x float> %i.ur, splat (float 6.000000e+00)
  %i.ut = fmul nnan <2 x float> %i.us, splat (float 2.000000e+00)
  %i.uu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ut, <2 x float> splat (float f0x40490FDB), <2 x float> %i.rd) ; 2 uses
  %i.uv = load i32, ptr %i.qv, align 8, !tbaa !540
  %i.uw = extractelement <2 x float> %i.uu, i64 0 ; 3 uses
  %i.ux = extractelement <2 x float> %i.uu, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, float noundef %i.qx, float noundef %i.uw, float noundef %i.ux, i32 noundef %i.qt)
  %i.uy = load ptr, ptr %i.qz, align 8, !tbaa !304
  %i.uz = load i32, ptr %i.qy, align 8, !tbaa !305
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef %i.uy, i32 noundef %i.uz, i32 noundef %i.pr, i32 noundef 0, float noundef %i.br)
  store i32 0, ptr %i.qy, align 8, !tbaa !305
  %i.va = load i32, ptr %i.qv, align 8, !tbaa !540
  %i.vb = call float @cosf(float noundef %i.uw) #36
  %i.vc = call float @sinf(float noundef %i.uw) #36
  %i.vd = call float @cosf(float noundef %i.ux) #36
  %i.ve = call float @sinf(float noundef %i.ux) #36
  %i.vf = load <2 x float>, ptr %15, align 8, !tbaa !141 ; 2 uses
  %i.vg = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vh = insertelement <2 x float> %i.vg, float %i.vc, i64 1
  %i.vi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vh, <2 x float> %i.rb, <2 x float> %i.vf)
  %i.vj = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vk = insertelement <2 x float> %i.vj, float %i.ve, i64 1
  %i.vl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vk, <2 x float> %i.rb, <2 x float> %i.vf)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !188 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.uv, i32 noundef %i.va, <2 x float> %i.vi, <2 x float> %i.vl, i32 noundef %i.um, i32 noundef %i.vn)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.da, label %bb.db, !llvm.loop !533

bb.dc:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit524
  %i.vo = and i32 %.3, 33554432
  %.not429 = icmp eq i32 %i.vo, 0
  br i1 %.not429, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  %i.vp = extractelement <2 x float> %i.by, i64 1
  %i.vq = fadd float %i.bm, %i.vp
  %.sroa.0.0.vec.insert.i541 = insertelement <2 x float> poison, float %i.ca, i64 0
  %.sroa.0.4.vec.insert.i542 = insertelement <2 x float> %.sroa.0.0.vec.insert.i541, float %i.vq, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i542, ptr %34, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %34, i32 noundef %i.pr, i32 noundef %i.qh, i32 noundef %i.qh, i32 noundef %i.pr)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  %i.vr = load <2 x float>, ptr %14, align 8, !tbaa !141
  %i.vs = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.vu = fadd <2 x float> %i.vt, %i.vr
  store <2 x float> %i.vu, ptr %35, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef 0, i32 noundef 0, i32 noundef %i.po, i32 noundef %i.po)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %.sroa.020.0.copyload = load <2 x float>, ptr %14, align 8 ; 2 uses
  %i.vv = fadd <2 x float> %i.vt, %.sroa.020.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.020.0.copyload, <2 x float> %i.vv, float noundef 0.000000e+00)
  %i.vw = load float, ptr %i.k, align 4, !tbaa !141
  %i.vx = load float, ptr %i.l, align 4, !tbaa !141
  %i.vy = fsub float 1.000000e+00, %i.vx
  %i.vz = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.wa = load <2 x float>, ptr %14, align 8, !tbaa !141 ; 3 uses
  %i.wb = insertelement <2 x float> poison, float %i.vw, i64 0
  %i.wc = insertelement <2 x float> %i.wb, float %i.vy, i64 1 ; 3 uses
  %i.wd = fcmp olt <2 x float> %i.wc, zeroinitializer
  %i.we = fcmp ogt <2 x float> %i.wc, splat (float 1.000000e+00)
  %i.wf = select <2 x i1> %i.we, <2 x float> splat (float 1.000000e+00), <2 x float> %i.wc
  %i.wg = select <2 x i1> %i.wd, <2 x float> zeroinitializer, <2 x float> %i.wf
  %i.wh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.vt, <2 x float> %i.wa)
  %i.wi = fadd <2 x float> %i.wh, splat (float 5.000000e-01)
  %i.wj = fptosi <2 x float> %i.wi to <2 x i32>
  %i.wk = sitofp <2 x i32> %i.wj to <2 x float>   ; 3 uses
  %i.wl = fadd <2 x float> %i.wa, splat (float 2.000000e+00) ; 2 uses
  %i.wm = fadd <2 x float> %i.vt, %i.wa
  %i.wn = fadd <2 x float> %i.wm, splat (float -2.000000e+00) ; 2 uses
  %i.wo = fcmp ogt <2 x float> %i.wl, %i.wk
  %i.wp = fcmp olt <2 x float> %i.wn, %i.wk
  %i.wq = select <2 x i1> %i.wp, <2 x float> %i.wn, <2 x float> %i.wk
  %i.wr = select <2 x i1> %i.wo, <2 x float> %i.wl, <2 x float> %i.wq
  store <2 x float> %i.wr, ptr %29, align 8, !tbaa !141
  %i.ws = fdiv float %i.bm, 6.000000e+00          ; 12 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %36, i64 4 ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %37, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.wv = call float @llvm.fmuladd.f32(float %i.ws, float 0.000000e+00, float %i.vz)
  store float %i.cb, ptr %36, align 4, !tbaa !144
  store float %i.wv, ptr %i.wt, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.ww = fadd float %i.ws, %i.vz
  store float %i.cc, ptr %37, align 4, !tbaa !144
  store float %i.ww, ptr %i.wu, align 4, !tbaa !147
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef %i.pt, i32 noundef %i.pt, i32 noundef %i.pw, i32 noundef %i.pw)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.wx = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.wy = fadd float %i.ws, %i.wx
  store float %i.cb, ptr %36, align 4, !tbaa !144
  store float %i.wy, ptr %i.wt, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.wz = call float @llvm.fmuladd.f32(float %i.ws, float 2.000000e+00, float %i.wx)
  store float %i.cc, ptr %37, align 4, !tbaa !144
  store float %i.wz, ptr %i.wu, align 4, !tbaa !147
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef %i.pw, i32 noundef %i.pw, i32 noundef %i.pv, i32 noundef %i.pv)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.xa = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.xb = call float @llvm.fmuladd.f32(float %i.ws, float 2.000000e+00, float %i.xa)
  store float %i.cb, ptr %36, align 4, !tbaa !144
  store float %i.xb, ptr %i.wt, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.xc = call float @llvm.fmuladd.f32(float %i.ws, float 3.000000e+00, float %i.xa)
  store float %i.cc, ptr %37, align 4, !tbaa !144
  store float %i.xc, ptr %i.wu, align 4, !tbaa !147
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef %i.pv, i32 noundef %i.pv, i32 noundef %i.pq, i32 noundef %i.pq)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.xd = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.xe = call float @llvm.fmuladd.f32(float %i.ws, float 3.000000e+00, float %i.xd)
  store float %i.cb, ptr %36, align 4, !tbaa !144
  store float %i.xe, ptr %i.wt, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.xf = call float @llvm.fmuladd.f32(float %i.ws, float 4.000000e+00, float %i.xd)
  store float %i.cc, ptr %37, align 4, !tbaa !144
  store float %i.xf, ptr %i.wu, align 4, !tbaa !147
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef %i.pq, i32 noundef %i.pq, i32 noundef %i.pp, i32 noundef %i.pp)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.xg = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.xh = call float @llvm.fmuladd.f32(float %i.ws, float 4.000000e+00, float %i.xg)
  store float %i.cb, ptr %36, align 4, !tbaa !144
  store float %i.xh, ptr %i.wt, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.xi = call float @llvm.fmuladd.f32(float %i.ws, float 5.000000e+00, float %i.xg)
  store float %i.cc, ptr %37, align 4, !tbaa !144
  store float %i.xi, ptr %i.wu, align 4, !tbaa !147
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(196) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %36, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef %i.pp, i32 noundef %i.pp, i32 noundef %i.qb, i32 noundef %i.qb)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.xj = load float, ptr %i.bv, align 4, !tbaa !147 ; 2 uses
  %i.xk = call float @llvm.fmuladd.f32(float %i.ws, float 5.000000e+00, float %i.xj)
  store float %i.cb, ptr %36, align 4, !tbaa !144
  store float %i.xk, ptr %i.wt, align 4, !tbaa !147
end_hunk_0
