Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_demo?download=true
inline.NumInlined: 1163
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZL16DemoWindowLayoutv:bb.a
  %.sroa.055.0.vec.extract = extractelement <2 x float> %i.mv, i64 0
  %i.mw = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !50
  %i.mx = fadd float %.sroa.055.0.vec.extract, %i.mw
  %i.my = trunc nuw nsw i64 %indvars.iv320 to i32
  %i.mz = uitofp nneg i32 %i.my to float
  %i.na = fmul nnan float %i.mz, 2.500000e-01
  call void @_ZN5ImGui17SetScrollFromPosXEff(float noundef %i.mx, float noundef %i.na) #26
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  br i1 %i.mt, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  %i.nb = trunc nuw nsw i64 %indvars.iv320 to i32
  %i.nc = uitofp nneg i32 %i.nb to float
  %i.nd = fmul nnan float %i.nc, 2.500000e-01     ; 2 uses
  %.pre340 = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %.pre = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !38, !range !22
  %i.ne = trunc nuw i8 %.pre to i1
  %i.nf = icmp eq i32 %.pre340, 0
  %or.cond227.peel = select i1 %i.ne, i1 %i.nf, i1 false
  br i1 %or.cond227.peel, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.864, i32 noundef 0) #26
  br label %.peel.next318.preheader

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %44, align 16, !tbaa !50
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %44, ptr noundef nonnull @.str.864, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.nd) #26
  br label %.peel.next318.preheader

.peel.next318.preheader:                          ; preds = %bb.dl, %bb.dm
  br label %.peel.next318

.peel.next318:                                    ; preds = %.peel.next318.preheader, %bb.dp
  %.0166294 = phi i32 [ %i.nk, %bb.dp ], [ 1, %.peel.next318.preheader ] ; 4 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.ng = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !38, !range !22, !noundef !23
  %i.nh = trunc nuw i8 %i.ng to i1
  %i.ni = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.nj = icmp eq i32 %.0166294, %i.ni
  %or.cond227 = select i1 %i.nh, i1 %i.nj, i1 false
  br i1 %or.cond227, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.peel.next318
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %44, align 16, !tbaa !50
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %44, ptr noundef nonnull @.str.864, i32 noundef %.0166294) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.nd) #26
  br label %bb.dp

bb.do:                                            ; preds = %.peel.next318
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.864, i32 noundef %.0166294) #26
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.nk = add nuw nsw i32 %.0166294, 1            ; 2 uses
  %exitcond316.not = icmp eq i32 %i.nk, 100
  br i1 %exitcond316.not, label %.loopexit, label %.peel.next318, !llvm.loop !408

.loopexit:                                        ; preds = %bb.dp, %bb.dj
  %i.nl = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.nm = call noundef float @_ZN5ImGui13GetScrollMaxXEv() #26
  call void @_ZN5ImGui8EndChildEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowLayoutv.names.1358, i64 %indvars.iv320
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !88
  %i.np = fpext float %i.nl to double
  %i.nq = fpext float %i.nm to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1359, ptr noundef %i.no, double noundef %i.np, double noundef %i.nq) #26
  call void @_ZN5ImGui7SpacingEv() #26
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next321, 5
  br i1 %exitcond323.not, label %bb.de, label %bb.df, !llvm.loop !409

bb.dq:                                            ; preds = %bb.de
  %i.nr = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.mh(ptr noundef nonnull @.str.4, i32 noundef 4861, ptr noundef nonnull @.str.1360, ptr noundef %i.nr) #26
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.de
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ns = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ns, label %bb.ds, label %_ZL10HelpMarkerPKc.exit241

bb.ds:                                            ; preds = %bb.dr
  %i.nt = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.nu = fmul float %i.nt, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.nu) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1361, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit241

_ZL10HelpMarkerPKc.exit241:                       ; preds = %bb.dr, %bb.ds
  %i.nv = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.783, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE5lines, i32 noundef 1, i32 noundef 15, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 12, float noundef 3.000000e+00) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %45, align 8, !tbaa !50
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %45) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  %i.nw = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv() #26
  %i.nx = call float @llvm.fmuladd.f32(float %i.nw, float 7.000000e+00, float 3.000000e+01)
  store float 0.000000e+00, ptr %46, align 4, !tbaa !47
  %i.ny = getelementptr inbounds nuw i8, ptr %46, i64 4
  store float %i.nx, ptr %i.ny, align 4, !tbaa !48
  %i.nz = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1362, ptr noundef nonnull align 4 dereferenceable(8) %46, i32 noundef 1, i32 noundef 2048) #26 ; 0 uses
  %i.oa = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !55
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph298, label %._crit_edge

.lr.ph298:                                        ; preds = %_ZL10HelpMarkerPKc.exit241
  %i.oc = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  br label %bb.dt

._crit_edge:                                      ; preds = %.loopexit328, %_ZL10HelpMarkerPKc.exit241
  %i.of = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.og = call noundef float @_ZN5ImGui13GetScrollMaxXEv() #26
  call void @_ZN5ImGui8EndChildEv() #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2) #26
  %i.oh = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.997) #26 ; 0 uses
  %i.oi = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.oi, label %bb.dx, label %bb.dy

bb.dt:                                            ; preds = %.lr.ph298, %.loopexit328
  %.0162297 = phi i32 [ 0, %.lr.ph298 ], [ %i.pa, %.loopexit328 ] ; 6 uses
  %i.oj = and i32 %.0162297, 1
  %.not214 = icmp eq i32 %i.oj, 0
  %.v = select i1 %.not214, i32 3, i32 9
  %i.ok = mul nuw nsw i32 %.0162297, 1000         ; 2 uses
  %i.ol = mul i32 %.v, %.0162297
  %i.om = add i32 %i.ol, 10                       ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.ok) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.on = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.399, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.oo = load float, ptr %i.g, align 4, !tbaa !50
  %i.op = load float, ptr %i.h, align 4, !tbaa !50
  %i.oq = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.oo, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.op, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oq, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %47, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.oc, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.or = load float, ptr %i.d, align 4, !tbaa !50
  %i.os = load float, ptr %i.e, align 4, !tbaa !50
  %i.ot = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i244.peel = insertelement <2 x float> poison, float %i.or, i64 0
  %.sroa.0.4.vec.insert.i245.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i244.peel, float %i.os, i64 1
  %.sroa.3.12.vec.insert.i247.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ot, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  store <2 x float> %.sroa.0.4.vec.insert.i245.peel, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i247.peel, ptr %i.od, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.ou = load float, ptr %i.a, align 4, !tbaa !50
  %i.ov = load float, ptr %i.b, align 4, !tbaa !50
  %i.ow = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i255.peel = insertelement <2 x float> poison, float %i.ou, i64 0
  %.sroa.0.4.vec.insert.i256.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i255.peel, float %i.ov, i64 1
  %.sroa.3.12.vec.insert.i258.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ow, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store <2 x float> %.sroa.0.4.vec.insert.i256.peel, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i258.peel, ptr %i.oe, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.ox = uitofp nneg i32 %.0162297 to float
  %i.oy = call float @sinf(float noundef %i.ox) #26
  %71 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.oy, i64 0
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> <float 2.000000e+01, float 0.000000e+00>, <2 x float> <float 4.000000e+01, float 0.000000e+00>)
  store <2 x float> %72, ptr %50, align 8, !tbaa !50
  %i.oz = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1363, ptr noundef nonnull align 4 dereferenceable(8) %50) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %exitcond324.peel.not = icmp ult i32 %i.om, 2
  br i1 %exitcond324.peel.not, label %.loopexit328, label %.peel.next326

.loopexit328:                                     ; preds = %bb.dw, %bb.dt
  %i.pa = add nuw nsw i32 %.0162297, 1            ; 2 uses
  %i.pb = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !55
  %i.pc = icmp slt i32 %i.pa, %i.pb
  br i1 %i.pc, label %bb.dt, label %._crit_edge, !llvm.loop !410

.peel.next326:                                    ; preds = %bb.dt, %bb.dw
  %.0161296 = phi i32 [ %i.pz, %bb.dw ], [ 1, %bb.dt ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.pd = add nuw nsw i32 %.0161296, %i.ok
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.pd) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.pe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.399, i32 noundef %.0161296) #26 ; 0 uses
  %i.pf = urem i32 %.0161296, 15
  %.not216 = icmp eq i32 %i.pf, 0
  br i1 %.not216, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %.peel.next326
  %i.pg = urem i32 %.0161296, 3
  %.not217 = icmp eq i32 %i.pg, 0
  br i1 %.not217, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ph = urem i32 %.0161296, 5
  %.not218 = icmp eq i32 %i.ph, 0
  %i.pi = select i1 %.not218, ptr @.str.1365, ptr %i.m
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %.peel.next326
  %i.pj = phi ptr [ @.str.1363, %.peel.next326 ], [ %i.pi, %bb.dv ], [ @.str.1364, %bb.du ]
  %i.pk = uitofp nneg i32 %.0161296 to float
  %i.pl = fmul nnan float %i.pk, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pl, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.pm = load float, ptr %i.g, align 4, !tbaa !50
  %i.pn = load float, ptr %i.h, align 4, !tbaa !50
  %i.po = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.pm, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.pn, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.po, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %47, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.oc, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pl, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.pp = load float, ptr %i.d, align 4, !tbaa !50
  %i.pq = load float, ptr %i.e, align 4, !tbaa !50
  %i.pr = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i244 = insertelement <2 x float> poison, float %i.pp, i64 0
  %.sroa.0.4.vec.insert.i245 = insertelement <2 x float> %.sroa.0.0.vec.insert.i244, float %i.pq, i64 1
  %.sroa.3.12.vec.insert.i247 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pr, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  store <2 x float> %.sroa.0.4.vec.insert.i245, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i247, ptr %i.od, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pl, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.ps = load float, ptr %i.a, align 4, !tbaa !50
  %i.pt = load float, ptr %i.b, align 4, !tbaa !50
  %i.pu = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i255 = insertelement <2 x float> poison, float %i.ps, i64 0
  %.sroa.0.4.vec.insert.i256 = insertelement <2 x float> %.sroa.0.0.vec.insert.i255, float %i.pt, i64 1
  %.sroa.3.12.vec.insert.i258 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store <2 x float> %.sroa.0.4.vec.insert.i256, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i258, ptr %i.oe, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.pv = add nuw nsw i32 %.0161296, %.0162297
  %i.pw = uitofp nneg i32 %i.pv to float
  %i.px = call float @sinf(float noundef %i.pw) #26
  %73 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.px, i64 0
  %74 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> <float 2.000000e+01, float 0.000000e+00>, <2 x float> <float 4.000000e+01, float 0.000000e+00>)
  store <2 x float> %74, ptr %50, align 8, !tbaa !50
  %i.py = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.pj, ptr noundef nonnull align 4 dereferenceable(8) %50) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %i.pz = add nuw i32 %.0161296, 1                ; 2 uses
  %exitcond324.not = icmp eq i32 %i.om, %i.pz
  br i1 %exitcond324.not, label %.loopexit328, label %.peel.next326, !llvm.loop !411

bb.dx:                                            ; preds = %._crit_edge
  %i.qa = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qc = load float, ptr %i.qb, align 8, !tbaa !138
  %i.qd = fmul float %i.qc, -1.000000e+03
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %._crit_edge
  %.0159 = phi float [ %i.qd, %bb.dx ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1366) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.qe = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.994) #26 ; 0 uses
  %i.qf = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.qf, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qg = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !138
  %i.qj = fmul float %i.qi, 1.000000e+03
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.1 = phi float [ %i.qj, %bb.dz ], [ %.0159, %bb.dy ] ; 2 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.qk = fpext float %i.of to double
  %i.ql = fpext float %i.og to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1352, double noundef %i.qk, double noundef %i.ql) #26
  %i.qm = fcmp une float %.1, 0.000000e+00
  br i1 %i.qm, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  store <2 x float> zeroinitializer, ptr %51, align 8, !tbaa !50
  %i.qn = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1362, ptr noundef nonnull align 4 dereferenceable(8) %51, i32 noundef 0, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %i.qo = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.qp = fadd float %.1, %i.qo
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.qp) #26
  call void @_ZN5ImGui8EndChildEv() #26
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  call void @_ZN5ImGui7SpacingEv() #26
  %i.qq = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1367, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window) #26 ; 0 uses
  %i.qr = load i8, ptr @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, align 1, !tbaa !38, !range !22, !noundef !23
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %bb.ed, label %bb.fl

bb.ed:                                            ; preds = %bb.ec
  %i.qt = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !38, !range !22, !noundef !23
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  %i.qv = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !50
  %i.qw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qv, i64 0
  store <2 x float> %i.qw, ptr %52, align 8, !tbaa !50
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.qx = load i8, ptr @_ZZL16DemoWindowLayoutvE16show_h_scrollbar, align 1, !tbaa !38, !range !22, !noundef !23
  %i.qy = zext nneg i8 %i.qx to i32
  %i.qz = shl nuw nsw i32 %i.qy, 11
  %i.ra = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1368, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, i32 noundef %i.qz) #26 ; 0 uses
  %i.rb = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not210 = icmp eq ptr %i.rb, null
  br i1 %.not210, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rc = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.rb(ptr noundef nonnull @.str.4, i32 noundef 4936, ptr noundef nonnull @.str.1369, ptr noundef %i.rc) #26
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %53, align 8, !tbaa !50
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %54, align 8, !tbaa !50
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %54) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.rd = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.rd, label %bb.ei, label %_ZL10HelpMarkerPKc.exit266

bb.ei:                                            ; preds = %bb.eh
  %i.re = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.rf = fmul float %i.re, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.rf) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1370, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit266

_ZL10HelpMarkerPKc.exit266:                       ; preds = %bb.eh, %bb.ei
  %i.rg = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1371, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE16show_h_scrollbar) #26 ; 0 uses
  %i.rh = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.383, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE11show_button) #26 ; 0 uses
  %i.ri = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.939, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15show_tree_nodes) #26 ; 0 uses
  %i.rj = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1372, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE17show_text_wrapped) #26 ; 0 uses
  %i.rk = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1373, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_columns) #26 ; 0 uses
  %i.rl = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1374, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_tab_bar) #26 ; 0 uses
  %i.rm = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1375, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE10show_child) #26 ; 0 uses
  %i.rn = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1376, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE21explicit_content_size) #26 ; 0 uses
  %i.ro = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.rp = fpext float %i.ro to double
  %i.rq = call noundef float @_ZN5ImGui13GetScrollMaxXEv() #26
  %i.rr = fpext float %i.rq to double
  %i.rs = call noundef float @_ZN5ImGui10GetScrollYEv() #26
  %i.rt = fpext float %i.rs to double
  %i.ru = call noundef float @_ZN5ImGui13GetScrollMaxYEv() #26
  %i.rv = fpext float %i.ru to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1377, double noundef %i.rp, double noundef %i.rr, double noundef %i.rt, double noundef %i.rv) #26
  %i.rw = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !38, !range !22, !noundef !23
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_ZL10HelpMarkerPKc.exit266
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef 1.000000e+02) #26
  %i.ry = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1378, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15contents_size_x, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.rz = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() #26
  store <2 x float> %i.rz, ptr %55, align 8
  %i.sa = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  %i.sb = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.sc = load <2 x float>, ptr %55, align 8, !tbaa !50
  %i.sd = fadd <2 x float> %i.sc, splat (float 1.000000e+01)
  store <2 x float> %i.sd, ptr %56, align 8, !tbaa !50
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.sa, ptr noundef nonnull align 4 dereferenceable(8) %55, ptr noundef nonnull align 4 dereferenceable(8) %56, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.se = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  %i.sf = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !50
  %i.sg = getelementptr inbounds nuw i8, ptr %57, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  %i.sh = load float, ptr %i.sb, align 4, !tbaa !48
  %i.si = load <2 x float>, ptr %55, align 8, !tbaa !50
  %i.sj = insertelement <2 x float> <float poison, float 1.000000e+01>, float %i.sf, i64 0
  %i.sk = fadd <2 x float> %i.si, %i.sj           ; 2 uses
  %i.sl = extractelement <2 x float> %i.sk, i64 0
  %i.sm = fadd float %i.sl, -1.000000e+01
  store float %i.sm, ptr %57, align 4, !tbaa !47
  store float %i.sh, ptr %i.sg, align 4, !tbaa !48
  store <2 x float> %i.sk, ptr %58, align 8, !tbaa !50
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.se, ptr noundef nonnull align 4 dereferenceable(8) %57, ptr noundef nonnull align 4 dereferenceable(8) %58, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  store <2 x float> <float 0.000000e+00, float 1.000000e+01>, ptr %59, align 8, !tbaa !50
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %59) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_ZL10HelpMarkerPKc.exit266
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2) #26
  call void @_ZN5ImGui9SeparatorEv() #26
  %i.sn = load i8, ptr @_ZZL16DemoWindowLayoutvE11show_button, align 1, !tbaa !38, !range !22, !noundef !23
  %i.so = trunc nuw i8 %i.sn to i1
  br i1 %i.so, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  store <2 x float> <float 3.000000e+02, float 0.000000e+00>, ptr %60, align 8, !tbaa !50
  %i.sp = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1379, ptr noundef nonnull align 4 dereferenceable(8) %60) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.sq = load i8, ptr @_ZZL16DemoWindowLayoutvE15show_tree_nodes, align 1, !tbaa !38, !range !22, !noundef !23
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.en, label %bb.es

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i8 1, ptr %i.n, align 1, !tbaa !38
  %i.ss = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1380) #26
  br i1 %i.ss, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.st = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1381) #26
  br i1 %i.st, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
end_hunk_0
