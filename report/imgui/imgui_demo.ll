Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !360
  %i.be = fcmp ogt float %i.bd, 0.000000e+00
  %i.bf = zext i1 %i.be to i8
  store i8 %i.bf, ptr %i.c, align 1, !tbaa !35
  %i.bg = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.206, ptr noundef nonnull %i.c)
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = load i8, ptr %i.c, align 1, !tbaa !35, !range !19, !noundef !20
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = select i1 %i.bi, float %i.n, float 0.000000e+00
  store float %i.bj, ptr %i.bc, align 4, !tbaa !360
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !46
  %i.bk = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.207, ptr noundef nonnull align 4 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1328) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style, ptr noundef nonnull align 4 dereferenceable(1328) %i.e, i64 1328, i1 false), !tbaa.struct !356
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1328) %spec.store.select, ptr noundef nonnull align 4 dereferenceable(1328) %i.e, i64 1328, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !46
  %i.bl = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.208, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1328) %i.e, ptr noundef nonnull align 4 dereferenceable(1328) %spec.store.select, i64 1328, i1 false), !tbaa.struct !356
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.bm = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.bm, label %bb.aa, label %_ZL10HelpMarkerPKc.exit

bb.aa:                                            ; preds = %bb.z
  %i.bn = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bo = fmul float %i.bn, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bo)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.209, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.z, %bb.aa
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.210)
  %i.bp = call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.211, i32 noundef 0)
  br i1 %i.bp, label %bb.ab, label %bb.cv

bb.ab:                                            ; preds = %_ZL10HelpMarkerPKc.exit
  %i.bq = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.212, ptr noundef null, i32 noundef 0)
  br i1 %i.bq, label %bb.ac, label %bb.ax

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.213)
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.bs = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.214, ptr noundef nonnull %i.br, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.bu = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.215, ptr noundef nonnull %i.bt, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.bw = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.216, ptr noundef nonnull %i.bv, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.by = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.217, ptr noundef nonnull %i.bx, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  %i.ca = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.218, ptr noundef nonnull %i.bz, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.cc = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.219, ptr noundef nonnull %i.cb, float noundef 0.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ce = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.cd, float noundef 1.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.221)
  %i.cf = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.222, ptr noundef nonnull %i.am, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ch = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.223, ptr noundef nonnull %i.cg, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.ci = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.224, ptr noundef nonnull %i.bc, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cj = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.225, ptr noundef nonnull %i.au, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.226)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.cl = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.227, ptr noundef nonnull %i.ck, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.cn = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.228, ptr noundef nonnull %i.cm, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.co = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.203, ptr noundef nonnull %i.ai, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.cq = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.229, ptr noundef nonnull %i.cp, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  %i.cs = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.230, ptr noundef nonnull %i.cr, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 220
  %i.cu = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.ct, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.232)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.cw = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.cv, float noundef 1.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.cy = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.234, ptr noundef nonnull %i.cx, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.da = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.235, ptr noundef nonnull %i.cz, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.236)
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.dc = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.237, ptr noundef nonnull %i.db, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 188
  %i.de = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.238, ptr noundef nonnull %i.dd, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.dg = fcmp ole float %i.p, 3.000000e+00
  %i.dh = select i1 %i.dg, float 3.000000e+00, float %i.p
  %i.di = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.239, ptr noundef nonnull %i.df, float noundef 0.000000e+00, float noundef %i.dh, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.dj = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.dj, label %bb.ad, label %_ZL10HelpMarkerPKc.exit197

bb.ad:                                            ; preds = %bb.ac
  %i.dk = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.dl = fmul float %i.dk, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.dl)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.240, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit197

_ZL10HelpMarkerPKc.exit197:                       ; preds = %bb.ac, %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  %i.dn = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.241, ptr noundef nonnull %i.dm, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 5.000000e+02, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.dp = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.242, ptr noundef nonnull %i.do, float noundef 5.000000e-01, float noundef 1.000000e+00, float noundef 5.000000e+02, ptr noundef nonnull @.str.243, i32 noundef 0) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 180 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !361
  %i.ds = fcmp olt float %i.dr, 0.000000e+00
  %i.dt = select i1 %i.ds, ptr @.str.245, ptr @.str.198
  %i.du = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.244, ptr noundef nonnull %i.dq, float noundef 5.000000e-01, float noundef -1.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull %i.dt, i32 noundef 0) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !362
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  %i.dy = select i1 %i.dx, ptr @.str.245, ptr @.str.198
  %i.dz = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.246, ptr noundef nonnull %i.dv, float noundef 5.000000e-01, float noundef -1.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull %i.dy, i32 noundef 0) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.eb = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.247, ptr noundef nonnull %i.ea, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.248)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.ed = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.249, ptr noundef nonnull %i.ec, float noundef 0.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 196
  %i.ef = call noundef zeroext i1 @_ZN5ImGui11SliderAngleEPKcPfffS1_i(ptr noundef nonnull @.str.250, ptr noundef nonnull %i.ee, float noundef -5.000000e+01, float noundef 5.000000e+01, ptr noundef nonnull @.str.251, i32 noundef 0) ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.eh = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.252, ptr noundef nonnull %i.eg, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.254)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 7 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !363
  switch i32 %i.ej, label %bb.ag [
    i32 262144, label %_ZL21GetTreeLinesFlagsNamei.exit
    i32 524288, label %bb.ae
    i32 1048576, label %bb.af
  ]

bb.ae:                                            ; preds = %_ZL10HelpMarkerPKc.exit197
  br label %_ZL21GetTreeLinesFlagsNamei.exit

bb.af:                                            ; preds = %_ZL10HelpMarkerPKc.exit197
  br label %_ZL21GetTreeLinesFlagsNamei.exit

bb.ag:                                            ; preds = %_ZL10HelpMarkerPKc.exit197
  br label %_ZL21GetTreeLinesFlagsNamei.exit

_ZL21GetTreeLinesFlagsNamei.exit:                 ; preds = %_ZL10HelpMarkerPKc.exit197, %bb.ae, %bb.af, %bb.ag
  %.0.i = phi ptr [ @.str.157, %bb.ag ], [ @.str.2112, %bb.ae ], [ @.str.2113, %bb.af ], [ @.str.2111, %_ZL10HelpMarkerPKc.exit197 ]
  %i.ek = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.255, ptr noundef nonnull %.0.i, i32 noundef 0)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.el = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.el, label %bb.ah, label %_ZL10HelpMarkerPKc.exit198

bb.ah:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit
  %i.em = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.en = fmul float %i.em, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.en)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.256, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit198

_ZL10HelpMarkerPKc.exit198:                       ; preds = %_ZL21GetTreeLinesFlagsNamei.exit, %bb.ah
  br i1 %i.ek, label %_ZL21GetTreeLinesFlagsNamei.exit200, label %bb.am

_ZL21GetTreeLinesFlagsNamei.exit200:              ; preds = %_ZL10HelpMarkerPKc.exit198
  %i.eo = load i32, ptr %i.ei, align 4, !tbaa !363
  %i.ep = icmp eq i32 %i.eo, 262144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !46
  %i.eq = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2111, i1 noundef zeroext %i.ep, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.eq, label %bb.ai, label %_ZL21GetTreeLinesFlagsNamei.exit200.1

bb.ai:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit200
  store i32 262144, ptr %i.ei, align 4, !tbaa !363
  br label %_ZL21GetTreeLinesFlagsNamei.exit200.1

_ZL21GetTreeLinesFlagsNamei.exit200.1:            ; preds = %bb.ai, %_ZL21GetTreeLinesFlagsNamei.exit200
  %15 = load i32, ptr %i.ei, align 4, !tbaa !363
  %16 = icmp eq i32 %15, 524288
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !46
  %i.er = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2112, i1 noundef zeroext %16, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.er, label %bb.aj, label %_ZL21GetTreeLinesFlagsNamei.exit200.2

bb.aj:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit200.1
  store i32 524288, ptr %i.ei, align 4, !tbaa !363
  br label %_ZL21GetTreeLinesFlagsNamei.exit200.2

_ZL21GetTreeLinesFlagsNamei.exit200.2:            ; preds = %bb.aj, %_ZL21GetTreeLinesFlagsNamei.exit200.1
  %17 = load i32, ptr %i.ei, align 4, !tbaa !363
  %18 = icmp eq i32 %17, 1048576
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !46
  %i.es = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.2113, i1 noundef zeroext %18, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZL21GetTreeLinesFlagsNamei.exit200.2
  store i32 1048576, ptr %i.ei, align 4, !tbaa !363
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZL21GetTreeLinesFlagsNamei.exit200.2
  call void @_ZN5ImGui8EndComboEv()
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZL10HelpMarkerPKc.exit198
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %i.eu = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.257, ptr noundef nonnull %i.et, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.ew = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.258, ptr noundef nonnull %i.ev, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.52)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ey = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.259, ptr noundef nonnull %i.ex, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.fa = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.260, ptr noundef nonnull %i.ez, float noundef 1.000000e+00, float noundef 2.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !364
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.d, align 4, !tbaa !51
  %i.fe = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.261, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.262, i32 noundef -1)
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ff = load i32, ptr %i.d, align 4, !tbaa !51
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.fb, align 4, !tbaa !364
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.60)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.fi = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.263, ptr noundef nonnull %i.fh, float noundef 0.000000e+00, float noundef 8.000000e+00, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 244
  %i.fk = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.264, ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.265, i32 noundef -1) ; 0 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.fm = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.266, ptr noundef nonnull %i.fl, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.fn = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.fn, label %bb.ap, label %_ZL10HelpMarkerPKc.exit201

bb.ap:                                            ; preds = %bb.ao
  %i.fo = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.fp = fmul float %i.fo, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fp)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.267, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit201

_ZL10HelpMarkerPKc.exit201:                       ; preds = %bb.ao, %bb.ap
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.fr = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.268, ptr noundef nonnull %i.fq, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.fs = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.fs, label %bb.aq, label %_ZL10HelpMarkerPKc.exit202

bb.aq:                                            ; preds = %_ZL10HelpMarkerPKc.exit201
  %i.ft = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.fu = fmul float %i.ft, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fu)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.269, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit202

_ZL10HelpMarkerPKc.exit202:                       ; preds = %_ZL10HelpMarkerPKc.exit201, %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 268
  %i.fw = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.270, ptr noundef nonnull %i.fv, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.fy = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.271, ptr noundef nonnull %i.fx, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.ga = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.272, ptr noundef nonnull %i.fz, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.gc = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.273, ptr noundef nonnull %i.gb, float noundef 0.000000e+00, float noundef 4.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.ge = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.274, ptr noundef nonnull %i.gd, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  %i.gg = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.275, ptr noundef nonnull %i.gf, float noundef 0.000000e+00, float noundef 1.200000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.gi = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.276, ptr noundef nonnull %i.gh, float noundef 0.000000e+00, float noundef %i.p, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.277)
  %i.gj = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.278, i32 noundef 0)
  br i1 %i.gj, label %bb.at, label %bb.au

bb.ar:                                            ; preds = %bb.aw
  %i.gk = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.gl = fmul float %i.gk, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.gl)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.287, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit203

_ZL10HelpMarkerPKc.exit203:                       ; preds = %bb.aw, %bb.ar
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 300
  %i.gn = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.288, ptr noundef nonnull %i.gm, float noundef 0.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.go = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.go, label %bb.as, label %_ZL10HelpMarkerPKc.exit204

bb.as:                                            ; preds = %_ZL10HelpMarkerPKc.exit203
  %i.gp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.gq = fmul float %i.gp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.gq)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.289, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit204

_ZL10HelpMarkerPKc.exit204:                       ; preds = %_ZL10HelpMarkerPKc.exit203, %bb.as
  call void @_ZN5ImGui10EndTabItemEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.ax

bb.at:                                            ; preds = %_ZL10HelpMarkerPKc.exit202
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 1312 ; 5 uses
  %i.gs = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.280, ptr noundef nonnull %i.gr, i32 noundef 16384) ; 0 uses
  %i.gt = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.281, ptr noundef nonnull %i.gr, i32 noundef 32768) ; 0 uses
  %i.gu = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.282, ptr noundef nonnull %i.gr, i32 noundef 65536) ; 0 uses
  %i.gv = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.gr, i32 noundef 8192) ; 0 uses
  %i.gw = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.284, ptr noundef nonnull %i.gr, i32 noundef 131072) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.au

bb.au:                                            ; preds = %_ZL10HelpMarkerPKc.exit202, %bb.at
  %i.gx = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.279, i32 noundef 0)
  br i1 %i.gx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 1316 ; 5 uses
  %i.gz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.280, ptr noundef nonnull %i.gy, i32 noundef 16384) ; 0 uses
  %i.ha = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.281, ptr noundef nonnull %i.gy, i32 noundef 32768) ; 0 uses
  %i.hb = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.282, ptr noundef nonnull %i.gy, i32 noundef 65536) ; 0 uses
  %i.hc = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.gy, i32 noundef 8192) ; 0 uses
  %i.hd = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.284, ptr noundef nonnull %i.gy, i32 noundef 131072) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.285)
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 292
  %i.hf = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.286, ptr noundef nonnull %i.he, float noundef 0.000000e+00, float noundef 3.000000e+01, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.hg = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.hg, label %bb.ar, label %_ZL10HelpMarkerPKc.exit203

bb.ax:                                            ; preds = %_ZL10HelpMarkerPKc.exit204, %bb.ab
  %i.hh = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.290, ptr noundef null, i32 noundef 0)
  br i1 %i.hh, label %bb.ay, label %bb.cg

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !46
  %i.hi = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.291, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.hi, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.hj = load i32, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE11output_dest, align 4, !tbaa !51
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5ImGui14LogToClipboardEi(i32 noundef -1)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  call void @_ZN5ImGui8LogToTTYEi(i32 noundef -1)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.292)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 324
  %i.hm = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 324
  br label %bb.be

bb.bd:                                            ; preds = %bb.bh
  call void @_ZN5ImGui9LogFinishEv()
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc, %bb.bh
  %indvars.iv = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next, %bb.bh ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %indvars.iv ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv to i32
  %i.hp = call noundef ptr @_ZN5ImGui17GetStyleColorNameEi(i32 noundef %i.ho) ; 2 uses
  %i.hq = load i8, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE20output_only_modified, align 1, !tbaa !35, !range !19, !noundef !20
end_hunk_0
