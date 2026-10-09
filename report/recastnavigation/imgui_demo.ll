Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_demo?download=true
inline.NumInlined: 1163
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle:bb.a
  %i.at = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.188, ptr noundef nonnull %i.b) #26
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %i.b, align 1, !tbaa !38, !range !22, !noundef !23
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = select i1 %i.av, float 1.000000e+00, float 0.000000e+00
  store float %i.aw, ptr %i.ap, align 4, !tbaa !131
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 3 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !365
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.c, align 1, !tbaa !38
  %i.bb = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.189, ptr noundef nonnull %i.c) #26
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = load i8, ptr %i.c, align 1, !tbaa !38, !range !22, !noundef !23
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.bd, float 1.000000e+00, float 0.000000e+00
  store float %i.be, ptr %i.ax, align 4, !tbaa !365
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !50
  %i.bf = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.190, ptr noundef nonnull align 4 dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %i.bf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1232) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style, ptr noundef nonnull align 4 dereferenceable(1232) %i.g, i64 1232, i1 false), !tbaa.struct !361
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1232) %spec.store.select, ptr noundef nonnull align 4 dereferenceable(1232) %i.g, i64 1232, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !50
  %i.bg = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.191, ptr noundef nonnull align 4 dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %i.bg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1232) %i.g, ptr noundef nonnull align 4 dereferenceable(1232) %spec.store.select, i64 1232, i1 false), !tbaa.struct !361
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.bh = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.bh, label %bb.ad, label %_ZL10HelpMarkerPKc.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bi = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.bj = fmul float %i.bi, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bj) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.192, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.ac, %bb.ad
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.193) #26
  %i.bk = call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.194, i32 noundef 0) #26
  br i1 %i.bk, label %bb.ae, label %bb.cw

bb.ae:                                            ; preds = %_ZL10HelpMarkerPKc.exit
  %i.bl = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.195, ptr noundef null, i32 noundef 0) #26
  br i1 %i.bl, label %bb.af, label %bb.ba

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.196) #26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.bn = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.197, ptr noundef nonnull %i.bm, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.bp = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.198, ptr noundef nonnull %i.bo, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %i.br = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.199, ptr noundef nonnull %i.bq, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.bt = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.200, ptr noundef nonnull %i.bs, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.bv = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.bu, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.bx = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.202, ptr noundef nonnull %i.bw, float noundef 0.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.bz = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.203, ptr noundef nonnull %i.by, float noundef 1.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %i.cb = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.204, ptr noundef nonnull %i.ca, float noundef 1.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.205) #26
  %i.cc = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.206, ptr noundef nonnull %i.ah, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ce = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.207, ptr noundef nonnull %i.cd, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cf = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.208, ptr noundef nonnull %i.ax, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cg = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.209, ptr noundef nonnull %i.ap, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.210) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ci = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.211, ptr noundef nonnull %i.ch, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.ck = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.212, ptr noundef nonnull %i.cj, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cl = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.186, ptr noundef nonnull %i.ad, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.cn = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.213, ptr noundef nonnull %i.cm, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.cp = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.214, ptr noundef nonnull %i.co, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.cr = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.215, ptr noundef nonnull %i.cq, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.216) #26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.ct = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.217, ptr noundef nonnull %i.cs, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.cv = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.218, ptr noundef nonnull %i.cu, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.cx = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.cw, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.cy = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.cy, label %bb.ag, label %_ZL10HelpMarkerPKc.exit171

bb.ag:                                            ; preds = %bb.af
  %i.cz = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.da = fmul float %i.cz, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.da) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.220, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit171

_ZL10HelpMarkerPKc.exit171:                       ; preds = %bb.af, %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 164 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !366
  %i.dd = fcmp olt float %i.dc, 0.000000e+00
  %i.de = select i1 %i.dd, ptr @.str.222, ptr @.str.181
  %i.df = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.221, ptr noundef nonnull %i.db, float noundef 1.000000e-01, float noundef -1.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull %i.de, i32 noundef 0) #26 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !367
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  %i.dj = select i1 %i.di, ptr @.str.222, ptr @.str.181
  %i.dk = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.223, ptr noundef nonnull %i.dg, float noundef 1.000000e-01, float noundef -1.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull %i.dj, i32 noundef 0) #26 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %i.dm = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.224, ptr noundef nonnull %i.dl, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.225) #26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.do = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.226, ptr noundef nonnull %i.dn, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.dq = call noundef zeroext i1 @_ZN5ImGui11SliderAngleEPKcPfffS1_i(ptr noundef nonnull @.str.227, ptr noundef nonnull %i.dp, float noundef -5.000000e+01, float noundef 5.000000e+01, ptr noundef nonnull @.str.228, i32 noundef 0) #26 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.ds = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.229, ptr noundef nonnull %i.dr, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.231) #26
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 7 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !368
  switch i32 %i.du, label %bb.aj [
    i32 262144, label %_ZL21GetTreeLinesFlagsNamei.exit
    i32 524288, label %bb.ah
    i32 1048576, label %bb.ai
  ]

bb.ah:                                            ; preds = %_ZL10HelpMarkerPKc.exit171
  br label %_ZL21GetTreeLinesFlagsNamei.exit

bb.ai:                                            ; preds = %_ZL10HelpMarkerPKc.exit171
  br label %_ZL21GetTreeLinesFlagsNamei.exit

bb.aj:                                            ; preds = %_ZL10HelpMarkerPKc.exit171
  br label %_ZL21GetTreeLinesFlagsNamei.exit

_ZL21GetTreeLinesFlagsNamei.exit:                 ; preds = %_ZL10HelpMarkerPKc.exit171, %bb.ah, %bb.ai, %bb.aj
  %.0.i = phi ptr [ @.str.268, %bb.aj ], [ @.str.2016, %bb.ah ], [ @.str.2017, %bb.ai ], [ @.str.2015, %_ZL10HelpMarkerPKc.exit171 ]
  %i.dv = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.232, ptr noundef nonnull %.0.i, i32 noundef 0) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.dw = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.dw, label %bb.ak, label %_ZL10HelpMarkerPKc.exit172

bb.ak:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit
  %i.dx = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.dy = fmul float %i.dx, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.dy) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.233, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit172

_ZL10HelpMarkerPKc.exit172:                       ; preds = %_ZL21GetTreeLinesFlagsNamei.exit, %bb.ak
  br i1 %i.dv, label %_ZL21GetTreeLinesFlagsNamei.exit174, label %bb.ap

_ZL21GetTreeLinesFlagsNamei.exit174:              ; preds = %_ZL10HelpMarkerPKc.exit172
  %i.dz = load i32, ptr %i.dt, align 4, !tbaa !368
  %i.ea = icmp eq i32 %i.dz, 262144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !50
  %i.eb = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2015, i1 noundef zeroext %i.ea, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.eb, label %bb.al, label %_ZL21GetTreeLinesFlagsNamei.exit174.1

bb.al:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit174
  store i32 262144, ptr %i.dt, align 4, !tbaa !368
  br label %_ZL21GetTreeLinesFlagsNamei.exit174.1

_ZL21GetTreeLinesFlagsNamei.exit174.1:            ; preds = %bb.al, %_ZL21GetTreeLinesFlagsNamei.exit174
  %15 = load i32, ptr %i.dt, align 4, !tbaa !368
  %16 = icmp eq i32 %15, 524288
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !50
  %i.ec = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2016, i1 noundef zeroext %16, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.ec, label %bb.am, label %_ZL21GetTreeLinesFlagsNamei.exit174.2

bb.am:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit174.1
  store i32 524288, ptr %i.dt, align 4, !tbaa !368
  br label %_ZL21GetTreeLinesFlagsNamei.exit174.2

_ZL21GetTreeLinesFlagsNamei.exit174.2:            ; preds = %bb.am, %_ZL21GetTreeLinesFlagsNamei.exit174.1
  %17 = load i32, ptr %i.dt, align 4, !tbaa !368
  %18 = icmp eq i32 %17, 1048576
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !50
  %i.ed = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2017, i1 noundef zeroext %18, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.ed, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit174.2
  store i32 1048576, ptr %i.dt, align 4, !tbaa !368
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZL21GetTreeLinesFlagsNamei.exit174.2
  call void @_ZN5ImGui8EndComboEv() #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZL10HelpMarkerPKc.exit172
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  %i.ef = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.234, ptr noundef nonnull %i.ee, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.eh = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.235, ptr noundef nonnull %i.eg, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.50) #26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ej = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.236, ptr noundef nonnull %i.ei, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.el = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.237, ptr noundef nonnull %i.ek, float noundef 1.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !369
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.d, align 4, !tbaa !55
  %i.ep = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.238, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.239, i32 noundef -1) #26
  br i1 %i.ep, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eq = load i32, ptr %i.d, align 4, !tbaa !55
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.em, align 4, !tbaa !369
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.58) #26
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 204
  %i.et = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.240, ptr noundef nonnull %i.es, ptr noundef nonnull @.str.241, i32 noundef -1) #26 ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.ev = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.242, ptr noundef nonnull %i.eu, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ew = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ew, label %bb.as, label %_ZL10HelpMarkerPKc.exit175

bb.as:                                            ; preds = %bb.ar
  %i.ex = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.ey = fmul float %i.ex, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ey) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.243, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit175

_ZL10HelpMarkerPKc.exit175:                       ; preds = %bb.ar, %bb.as
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.fa = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.244, ptr noundef nonnull %i.ez, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.fb = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.fb, label %bb.at, label %_ZL10HelpMarkerPKc.exit176

bb.at:                                            ; preds = %_ZL10HelpMarkerPKc.exit175
  %i.fc = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.fd = fmul float %i.fc, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fd) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.245, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit176

_ZL10HelpMarkerPKc.exit176:                       ; preds = %_ZL10HelpMarkerPKc.exit175, %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.ff = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.246, ptr noundef nonnull %i.fe, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  %i.fh = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.247, ptr noundef nonnull %i.fg, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 236
  %i.fj = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.248, ptr noundef nonnull %i.fi, float noundef 0.000000e+00, float noundef 4.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  %i.fl = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.249, ptr noundef nonnull %i.fk, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.fn = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.fm, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.251) #26
  %i.fo = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.252, i32 noundef 0) #26
  br i1 %i.fo, label %bb.aw, label %bb.ax

bb.au:                                            ; preds = %bb.az
  %i.fp = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.fq = fmul float %i.fp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fq) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.261, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit177

_ZL10HelpMarkerPKc.exit177:                       ; preds = %bb.az, %bb.au
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 252
  %i.fs = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.262, ptr noundef nonnull %i.fr, float noundef 0.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ft = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ft, label %bb.av, label %_ZL10HelpMarkerPKc.exit178

bb.av:                                            ; preds = %_ZL10HelpMarkerPKc.exit177
  %i.fu = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.fv = fmul float %i.fu, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fv) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.263, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit178

_ZL10HelpMarkerPKc.exit178:                       ; preds = %_ZL10HelpMarkerPKc.exit177, %bb.av
  call void @_ZN5ImGui10EndTabItemEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.ba

bb.aw:                                            ; preds = %_ZL10HelpMarkerPKc.exit176
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 1216 ; 5 uses
  %i.fx = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.254, ptr noundef nonnull %i.fw, i32 noundef 16384) #26 ; 0 uses
  %i.fy = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.255, ptr noundef nonnull %i.fw, i32 noundef 32768) #26 ; 0 uses
  %i.fz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.256, ptr noundef nonnull %i.fw, i32 noundef 65536) #26 ; 0 uses
  %i.ga = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.257, ptr noundef nonnull %i.fw, i32 noundef 8192) #26 ; 0 uses
  %i.gb = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.258, ptr noundef nonnull %i.fw, i32 noundef 131072) #26 ; 0 uses
  call void @_ZN5ImGui7TreePopEv() #26
  br label %bb.ax

bb.ax:                                            ; preds = %_ZL10HelpMarkerPKc.exit176, %bb.aw
  %i.gc = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.253, i32 noundef 0) #26
  br i1 %i.gc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 1220 ; 5 uses
  %i.ge = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.254, ptr noundef nonnull %i.gd, i32 noundef 16384) #26 ; 0 uses
  %i.gf = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.255, ptr noundef nonnull %i.gd, i32 noundef 32768) #26 ; 0 uses
  %i.gg = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.256, ptr noundef nonnull %i.gd, i32 noundef 65536) #26 ; 0 uses
  %i.gh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.257, ptr noundef nonnull %i.gd, i32 noundef 8192) #26 ; 0 uses
  %i.gi = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.258, ptr noundef nonnull %i.gd, i32 noundef 131072) #26 ; 0 uses
  call void @_ZN5ImGui7TreePopEv() #26
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.259) #26
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  %i.gk = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.260, ptr noundef nonnull %i.gj, float noundef 0.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.181, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.gl = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.gl, label %bb.au, label %_ZL10HelpMarkerPKc.exit177

bb.ba:                                            ; preds = %_ZL10HelpMarkerPKc.exit178, %bb.ae
  %i.gm = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.264, ptr noundef null, i32 noundef 0) #26
  br i1 %i.gm, label %bb.bb, label %bb.ch

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !50
  %i.gn = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.265, ptr noundef nonnull align 4 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.gn, label %bb.bc, label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %i.go = load i32, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE11output_dest, align 4, !tbaa !55
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5ImGui14LogToClipboardEi(i32 noundef -1) #26
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @_ZN5ImGui8LogToTTYEi(i32 noundef -1) #26
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.266) #26
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 276
  %i.gr = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 276
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bk
  call void @_ZN5ImGui9LogFinishEv() #26
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf, %bb.bk
  %indvars.iv = phi i64 [ 0, %bb.bf ], [ %indvars.iv.next, %bb.bk ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv ; 2 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv to i32
  %i.gu = call noundef ptr @_ZN5ImGui17GetStyleColorNameEi(i32 noundef %i.gt) #26 ; 2 uses
  %i.gv = load i8, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE20output_only_modified, align 1, !tbaa !38, !range !22, !noundef !23
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %indvars.iv
  %i.gy = load i128, ptr %i.gs, align 1
end_hunk_0
