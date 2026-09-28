Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZL16DemoWindowLayoutv:bb.a
  br label %bb.cr

bb.cg:                                            ; preds = %_ZL10HelpMarkerPKc.exit210, %.loopexit
  %indvars.iv290 = phi i64 [ 0, %_ZL10HelpMarkerPKc.exit210 ], [ %indvars.iv.next291, %.loopexit ] ; 5 uses
  %i.mc = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.md = load float, ptr %i.kj, align 4, !tbaa !398
  %i.me = fadd float %i.mc, %i.md
  %i.mf = load float, ptr %i.kk, align 4, !tbaa !126
  %i.mg = call float @llvm.fmuladd.f32(float %i.mf, float 2.000000e+00, float %i.me)
  %i.mh = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !35, !range !19, !noundef !20
  %i.mi = zext nneg i8 %i.mh to i32
  %i.mj = shl nuw nsw i32 %i.mi, 14
  %i.mk = or disjoint i32 %i.mj, 2048
  %i.ml = inttoptr i64 %indvars.iv290 to ptr
  %i.mm = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.ml)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  store float -1.000000e+02, ptr %44, align 4, !tbaa !44
  store float %i.mg, ptr %i.kl, align 4, !tbaa !45
  %i.mn = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.mm, ptr noundef nonnull align 4 dereferenceable(8) %44, i32 noundef 1, i32 noundef %i.mk)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br i1 %i.ju, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mo = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !46
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.mo)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.jx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mp = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv()
  %.sroa.058.0.vec.extract = extractelement <2 x float> %i.mp, i64 0
  %i.mq = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !46
  %i.mr = fadd float %.sroa.058.0.vec.extract, %i.mq
  %i.ms = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.mt = uitofp nneg i32 %i.ms to float
  %i.mu = fmul nnan float %i.mt, 2.500000e-01
  call void @_ZN5ImGui17SetScrollFromPosXEff(float noundef %i.mr, float noundef %i.mu)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.mn, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %bb.ck
  %i.mv = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.mw = uitofp nneg i32 %i.mv to float
  %i.mx = fmul nnan float %i.mw, 2.500000e-01     ; 2 uses
  %.pre310 = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %.pre = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19
  %i.my = trunc nuw i8 %.pre to i1
  %i.mz = icmp eq i32 %.pre310, 0
  %or.cond197.peel = select i1 %i.my, i1 %i.mz, i1 false
  br i1 %or.cond197.peel, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef 0)
  br label %.peel.next288.preheader

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mx)
  br label %.peel.next288.preheader

.peel.next288.preheader:                          ; preds = %bb.cm, %bb.cn
  br label %.peel.next288

.peel.next288:                                    ; preds = %.peel.next288.preheader, %bb.cq
  %.0173264 = phi i32 [ %i.ne, %bb.cq ], [ 1, %.peel.next288.preheader ] ; 4 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.na = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19, !noundef !20
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.nd = icmp eq i32 %.0173264, %i.nc
  %or.cond197 = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %or.cond197, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.peel.next288
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef %.0173264)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mx)
  br label %bb.cq

bb.cp:                                            ; preds = %.peel.next288
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef %.0173264)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.ne = add nuw nsw i32 %.0173264, 1            ; 2 uses
  %exitcond286.not = icmp eq i32 %i.ne, 100
  br i1 %exitcond286.not, label %.loopexit, label %.peel.next288, !llvm.loop !393

.loopexit:                                        ; preds = %bb.cq, %bb.ck
  %i.nf = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.ng = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowLayoutv.names.1456, i64 %indvars.iv290
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !101
  %i.nj = fpext float %i.nf to double
  %i.nk = fpext float %i.ng to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1457, ptr noundef %i.ni, double noundef %i.nj, double noundef %i.nk)
  call void @_ZN5ImGui7SpacingEv()
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next291, 5
  br i1 %exitcond293.not, label %bb.ce, label %bb.cg, !llvm.loop !394

._crit_edge:                                      ; preds = %.loopexit298, %_ZL10HelpMarkerPKc.exit211
  %i.nl = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.nm = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.nn = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1072) ; 0 uses
  %i.no = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.no, label %bb.cv, label %bb.cw

bb.cr:                                            ; preds = %.lr.ph268, %.loopexit298
  %.0170267 = phi i32 [ 0, %.lr.ph268 ], [ %i.ol, %.loopexit298 ] ; 6 uses
  %i.np = and i32 %.0170267, 1
  %.not184 = icmp eq i32 %i.np, 0
  %.v = select i1 %.not184, i32 3, i32 9
  %i.nq = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.nr = fmul float %i.nq, 3.000000e+00          ; 4 uses
  %i.ns = mul nuw nsw i32 %.0170267, 1000         ; 2 uses
  %i.nt = mul i32 %.v, %.0170267
  %i.nu = add i32 %i.nt, 10                       ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.ns)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.nv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef 0) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.nw = load float, ptr %i.g, align 4, !tbaa !46
  %i.nx = load float, ptr %i.h, align 4, !tbaa !46
  %i.ny = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.nw, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.nx, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ny, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.ly, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.nz = load float, ptr %i.d, align 4, !tbaa !46
  %i.oa = load float, ptr %i.e, align 4, !tbaa !46
  %i.ob = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214.peel = insertelement <2 x float> poison, float %i.nz, i64 0
  %.sroa.0.4.vec.insert.i215.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i214.peel, float %i.oa, i64 1
  %.sroa.3.12.vec.insert.i217.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ob, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i215.peel, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i217.peel, ptr %i.lz, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.oc = load float, ptr %i.a, align 4, !tbaa !46
  %i.od = load float, ptr %i.b, align 4, !tbaa !46
  %i.oe = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225.peel = insertelement <2 x float> poison, float %i.oc, i64 0
  %.sroa.0.4.vec.insert.i226.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i225.peel, float %i.od, i64 1
  %.sroa.3.12.vec.insert.i228.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oe, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226.peel, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228.peel, ptr %i.ma, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.of = uitofp nneg i32 %.0170267 to float
  %i.og = call float @sinf(float noundef %i.of) #30
  %i.oh = fmul float %i.nr, %i.og
  %i.oi = call float @llvm.fmuladd.f32(float %i.oh, float 5.000000e-01, float %i.nr)
  store float %i.oi, ptr %51, align 8, !tbaa !44
  store float 0.000000e+00, ptr %i.mb, align 4, !tbaa !45
  %i.oj = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1461, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %exitcond294.peel.not = icmp eq i32 %i.nu, 1
  br i1 %exitcond294.peel.not, label %.loopexit298, label %.peel.next296.preheader

.peel.next296.preheader:                          ; preds = %bb.cr
  %i.ok = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nr, i64 0
  br label %.peel.next296

.loopexit298:                                     ; preds = %bb.cu, %bb.cr
  %i.ol = add nuw nsw i32 %.0170267, 1            ; 2 uses
  %i.om = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !51
  %i.on = icmp slt i32 %i.ol, %i.om
  br i1 %i.on, label %bb.cr, label %._crit_edge, !llvm.loop !395

.peel.next296:                                    ; preds = %.peel.next296.preheader, %bb.cu
  %.0169266 = phi i32 [ %i.pn, %bb.cu ], [ 1, %.peel.next296.preheader ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.oo = add nuw nsw i32 %.0169266, %i.ns
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.oo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.op = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef %.0169266) #30 ; 0 uses
  %i.oq = urem i32 %.0169266, 15
  %.not186 = icmp eq i32 %i.oq, 0
  br i1 %.not186, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.peel.next296
  %i.or = urem i32 %.0169266, 3
  %.not187 = icmp eq i32 %i.or, 0
  br i1 %.not187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.os = urem i32 %.0169266, 5
  %.not188 = icmp eq i32 %i.os, 0
  %i.ot = select i1 %.not188, ptr @.str.1463, ptr %i.m
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.peel.next296
  %i.ou = phi ptr [ @.str.1461, %.peel.next296 ], [ %i.ot, %bb.ct ], [ @.str.1462, %bb.cs ]
  %i.ov = uitofp nneg i32 %.0169266 to float
  %i.ow = fmul nnan float %i.ov, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ow, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.ox = load float, ptr %i.g, align 4, !tbaa !46
  %i.oy = load float, ptr %i.h, align 4, !tbaa !46
  %i.oz = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ox, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.oy, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oz, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ly, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ow, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.pa = load float, ptr %i.d, align 4, !tbaa !46
  %i.pb = load float, ptr %i.e, align 4, !tbaa !46
  %i.pc = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214 = insertelement <2 x float> poison, float %i.pa, i64 0
  %.sroa.0.4.vec.insert.i215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i214, float %i.pb, i64 1
  %.sroa.3.12.vec.insert.i217 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pc, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i215, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i217, ptr %i.lz, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ow, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.pd = load float, ptr %i.a, align 4, !tbaa !46
  %i.pe = load float, ptr %i.b, align 4, !tbaa !46
  %i.pf = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225 = insertelement <2 x float> poison, float %i.pd, i64 0
  %.sroa.0.4.vec.insert.i226 = insertelement <2 x float> %.sroa.0.0.vec.insert.i225, float %i.pe, i64 1
  %.sroa.3.12.vec.insert.i228 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pf, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228, ptr %i.ma, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.pg = add nuw nsw i32 %.0169266, %.0170267
  %i.ph = uitofp nneg i32 %i.pg to float
  %i.pi = call float @sinf(float noundef %i.ph) #30
  %i.pj = fmul float %i.nr, %i.pi
  %i.pk = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.pj, i64 0
  %i.pl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pk, <2 x float> <float 5.000000e-01, float 0.000000e+00>, <2 x float> %i.ok)
  store <2 x float> %i.pl, ptr %51, align 8, !tbaa !46
  %i.pm = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.ou, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.pn = add nuw i32 %.0169266, 1                ; 2 uses
  %exitcond294.not = icmp eq i32 %i.pn, %i.nu
  br i1 %exitcond294.not, label %.loopexit298, label %.peel.next296, !llvm.loop !396

bb.cv:                                            ; preds = %._crit_edge
  %i.po = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pq = load float, ptr %i.pp, align 8, !tbaa !138
  %i.pr = fmul float %i.pq, -1.000000e+03
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge
  %.0166 = phi float [ %i.pr, %bb.cv ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1464)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ps = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1069) ; 0 uses
  %i.pt = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.pt, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.pu = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.pw = load float, ptr %i.pv, align 8, !tbaa !138
  %i.px = fmul float %i.pw, 1.000000e+03
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.1 = phi float [ %i.px, %bb.cx ], [ %.0166, %bb.cw ] ; 2 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.py = fpext float %i.nl to double
  %i.pz = fpext float %i.nm to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1450, double noundef %i.py, double noundef %i.pz)
  %i.qa = fcmp une float %.1, 0.000000e+00
  br i1 %i.qa, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !46
  %i.qb = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1460, ptr noundef nonnull align 4 dereferenceable(8) %52, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  %i.qc = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.qd = fadd float %.1, %i.qc
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.qd)
  call void @_ZN5ImGui8EndChildEv()
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @_ZN5ImGui7SpacingEv()
  %i.qe = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1465, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window) ; 0 uses
  %i.qf = load i8, ptr @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %bb.db, label %bb.eh

bb.db:                                            ; preds = %bb.da
  %i.qh = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30
  %i.qj = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !46
  %i.qk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qj, i64 0
  store <2 x float> %i.qk, ptr %53, align 8, !tbaa !46
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ql = load i8, ptr @_ZZL16DemoWindowLayoutvE16show_h_scrollbar, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qm = zext nneg i8 %i.ql to i32
  %i.qn = shl nuw nsw i32 %i.qm, 11
  %i.qo = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1466, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, i32 noundef %i.qn) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 5231, ptr noundef nonnull @.str.1467)
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #30
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %54, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %54)
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #30
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %55, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %55)
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #30
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.qp = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.qp, label %bb.de, label %_ZL10HelpMarkerPKc.exit236

bb.de:                                            ; preds = %bb.dd
  %i.qq = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.qr = fmul float %i.qq, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.qr)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1468, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit236

_ZL10HelpMarkerPKc.exit236:                       ; preds = %bb.dd, %bb.de
  %i.qs = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1469, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE16show_h_scrollbar) ; 0 uses
  %i.qt = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.419, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE11show_button) ; 0 uses
  %i.qu = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1010, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15show_tree_nodes) ; 0 uses
  %i.qv = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1470, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE17show_text_wrapped) ; 0 uses
  %i.qw = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1471, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_columns) ; 0 uses
  %i.qx = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1472, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_tab_bar) ; 0 uses
  %i.qy = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1473, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE10show_child) ; 0 uses
  %i.qz = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1474, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE21explicit_content_size) ; 0 uses
  %i.ra = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.rb = fpext float %i.ra to double
  %i.rc = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  %i.rd = fpext float %i.rc to double
  %i.re = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.rf = fpext float %i.re to double
  %i.rg = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  %i.rh = fpext float %i.rg to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1475, double noundef %i.rb, double noundef %i.rd, double noundef %i.rf, double noundef %i.rh)
  %i.ri = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !35, !range !19, !noundef !20
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZL10HelpMarkerPKc.exit236
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.rk = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.935, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.021.0.vec.extract = extractelement <2 x float> %i.rk, i64 0
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %.sroa.021.0.vec.extract)
  %i.rl = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1476, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15contents_size_x, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  %i.rm = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  store <2 x float> %i.rm, ptr %56, align 8
  %i.rn = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #30
  %i.ro = getelementptr inbounds nuw i8, ptr %56, i64 4
  %i.rp = load <2 x float>, ptr %56, align 8, !tbaa !46
  %i.rq = fadd <2 x float> %i.rp, splat (float 1.000000e+01)
  store <2 x float> %i.rq, ptr %57, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.rn, ptr noundef nonnull align 4 dereferenceable(8) %56, ptr noundef nonnull align 4 dereferenceable(8) %57, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  %i.rr = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  %i.rs = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !46
  %i.rt = getelementptr inbounds nuw i8, ptr %58, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  %i.ru = load float, ptr %i.ro, align 4, !tbaa !45
  %i.rv = load <2 x float>, ptr %56, align 8, !tbaa !46
  %i.rw = insertelement <2 x float> <float poison, float 1.000000e+01>, float %i.rs, i64 0
  %i.rx = fadd <2 x float> %i.rv, %i.rw           ; 2 uses
  %i.ry = extractelement <2 x float> %i.rx, i64 0
  %i.rz = fadd float %i.ry, -1.000000e+01
  store float %i.rz, ptr %58, align 4, !tbaa !44
  store float %i.ru, ptr %i.rt, align 4, !tbaa !45
  store <2 x float> %i.rx, ptr %59, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.rr, ptr noundef nonnull align 4 dereferenceable(8) %58, ptr noundef nonnull align 4 dereferenceable(8) %59, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  store <2 x float> <float 0.000000e+00, float 1.000000e+01>, ptr %60, align 8, !tbaa !46
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #30
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZL10HelpMarkerPKc.exit236
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  call void @_ZN5ImGui9SeparatorEv()
  %i.sa = load i8, ptr @_ZZL16DemoWindowLayoutvE11show_button, align 1, !tbaa !35, !range !19, !noundef !20
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> <float 3.000000e+02, float 0.000000e+00>, ptr %61, align 8, !tbaa !46
  %i.sc = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1477, ptr noundef nonnull align 4 dereferenceable(8) %61) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.sd = load i8, ptr @_ZZL16DemoWindowLayoutvE15show_tree_nodes, align 1, !tbaa !35, !range !19, !noundef !20
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  store i8 1, ptr %i.n, align 1, !tbaa !35
  %i.sf = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1478)
  br i1 %i.sf, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.sg = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1479)
  br i1 %i.sg, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1480)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dj
  %i.sh = call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKcPbi(ptr noundef nonnull @.str.1481, ptr noundef nonnull %i.n, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.di
end_hunk_0
