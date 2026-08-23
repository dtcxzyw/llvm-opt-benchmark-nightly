Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 134
begin_hunk_0_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wq, %bb.wp
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  %i.cft = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1229, ptr noundef nonnull align 4 dereferenceable(8) %11) ; 0 uses
  %i.cfu = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.cfu, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %bb.wr
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.1230)
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.wr
  call void @_ZN5ImGui11EndDisabledEv()
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZL25DemoWindowWidgetsTooltipsv.exit

_ZL25DemoWindowWidgetsTooltipsv.exit:             ; preds = %_ZL26DemoWindowWidgetsTextInputv.exit, %bb.wt
  %i.cfv = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1231)
  br i1 %i.cfv, label %bb.wu, label %_ZL26DemoWindowWidgetsTreeNodesv.exit

bb.wu:                                            ; preds = %_ZL25DemoWindowWidgetsTooltipsv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4207, ptr noundef nonnull @.str.1232)
  %i.cfw = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1233)
  br i1 %i.cfw, label %bb.wv, label %bb.xg

bb.wv:                                            ; preds = %bb.wu
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4211, ptr noundef nonnull @.str.1234)
  call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext true, i32 noundef 2)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  %i.cfx = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1076, i32 noundef 0)
  br i1 %i.cfx, label %bb.ww, label %bb.wx

bb.ww:                                            ; preds = %bb.wv
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1235)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cfy = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1236) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.wx

bb.wx:                                            ; preds = %bb.ww, %bb.wv
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  %i.cfz = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1076, i32 noundef 1)
  br i1 %i.cfz, label %bb.wy, label %bb.wz

bb.wy:                                            ; preds = %bb.wx
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1235)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cga = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1236) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.wz

bb.wz:                                            ; preds = %bb.wy, %bb.wx
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2)
  %i.cgb = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1076, i32 noundef 2)
  br i1 %i.cgb, label %bb.xa, label %bb.xb

bb.xa:                                            ; preds = %bb.wz
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1235)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cgc = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1236) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xb

bb.xb:                                            ; preds = %bb.xa, %bb.wz
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3)
  %i.cgd = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1076, i32 noundef 3)
  br i1 %i.cgd, label %bb.xc, label %bb.xd

bb.xc:                                            ; preds = %bb.xb
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1235)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cge = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1236) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xd

bb.xd:                                            ; preds = %bb.xc, %bb.xb
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 4)
  %i.cgf = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1076, i32 noundef 4)
  br i1 %i.cgf, label %bb.xe, label %bb.xf

bb.xe:                                            ; preds = %bb.xd
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1235)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cgg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1236) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xf

bb.xf:                                            ; preds = %bb.xe, %bb.xd
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xg

bb.xg:                                            ; preds = %bb.xf, %bb.wu
  %i.cgh = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1237)
  br i1 %i.cgh, label %bb.xh, label %bb.xp

bb.xh:                                            ; preds = %bb.xg
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4237, ptr noundef nonnull @.str.1238)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.cgi = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.cgi, label %bb.xi, label %_ZL10HelpMarkerPKc.exit.i92

bb.xi:                                            ; preds = %bb.xh
  %i.cgj = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cgk = fmul float %i.cgj, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cgk)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1239, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i92

_ZL10HelpMarkerPKc.exit.i92:                      ; preds = %bb.xi, %bb.xh
  %i.cgl = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1240, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, i32 noundef 262144) ; 0 uses
  %i.cgm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1241, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, i32 noundef 524288) ; 0 uses
  %i.cgn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1242, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, i32 noundef 1048576) ; 0 uses
  %i.cgo = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, align 4, !tbaa !61
  %i.cgp = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.1243, i32 noundef %i.cgo)
  br i1 %i.cgp, label %bb.xj, label %bb.xo

bb.xj:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i92
  %i.cgq = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, align 4, !tbaa !61
  %i.cgr = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.1244, i32 noundef %i.cgq)
  br i1 %i.cgr, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !56
  %i.cgs = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1245, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xj
  %i.cgt = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, align 4, !tbaa !61
  %i.cgu = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.1246, i32 noundef %i.cgt)
  br i1 %i.cgu, label %bb.xm, label %bb.xn

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !56
  %i.cgv = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1247, ptr noundef nonnull align 4 dereferenceable(8) %10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xm, %bb.xl
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1248)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1248)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xn, %_ZL10HelpMarkerPKc.exit.i92
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xo, %bb.xg
  %i.cgw = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1249)
  br i1 %i.cgw, label %bb.xq, label %bb.xr

bb.xq:                                            ; preds = %bb.xp
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4266, ptr noundef nonnull @.str.1250)
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.1251)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xq, %bb.xp
  %i.cgx = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1252)
  br i1 %i.cgx, label %bb.xs, label %bb.yt

bb.xs:                                            ; preds = %bb.xr
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4276, ptr noundef nonnull @.str.1253)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.cgy = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.cgy, label %bb.xt, label %_ZL10HelpMarkerPKc.exit36.i86

bb.xt:                                            ; preds = %bb.xs
  %i.cgz = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cha = fmul float %i.cgz, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cha)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1254, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit36.i86

_ZL10HelpMarkerPKc.exit36.i86:                    ; preds = %bb.xt, %bb.xs
  %i.chb = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  %i.chc = and i32 %i.chb, 1
  %spec.select.i87 = or disjoint i32 %i.chc, 2240
  %i.chd = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef null, i32 noundef %spec.select.i87, ptr noundef nonnull @.str.1255, i32 noundef 0)
  %i.che = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.che, label %bb.xu, label %bb.xv

bb.xu:                                            ; preds = %_ZL10HelpMarkerPKc.exit36.i86
  %i.chf = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.i = sext i1 %i.chf to i32
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xu, %_ZL10HelpMarkerPKc.exit36.i86
  %.1.i88 = phi i32 [ %spec.select35.i, %bb.xu ], [ -1, %_ZL10HelpMarkerPKc.exit36.i86 ] ; 2 uses
  br i1 %i.chd, label %bb.xw, label %bb.xx

bb.xw:                                            ; preds = %bb.xv
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xx

bb.xx:                                            ; preds = %bb.xw, %bb.xv
  %i.chg = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  %i.chh = and i32 %i.chg, 2
  %.not34.1.i = icmp eq i32 %i.chh, 0
  %spec.select.1.i = select i1 %.not34.1.i, i32 2240, i32 2241
  %i.chi = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %spec.select.1.i, ptr noundef nonnull @.str.1255, i32 noundef 1)
  %i.chj = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chj, label %bb.xy, label %bb.xz

bb.xy:                                            ; preds = %bb.xx
  %i.chk = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.1.i = select i1 %i.chk, i32 %.1.i88, i32 1
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %.1.1.i = phi i32 [ %spec.select35.1.i, %bb.xy ], [ %.1.i88, %bb.xx ] ; 2 uses
  br i1 %i.chi, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yb

bb.yb:                                            ; preds = %bb.ya, %bb.xz
  %i.chl = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  %i.chm = and i32 %i.chl, 4
  %.not34.2.i = icmp eq i32 %i.chm, 0
  %spec.select.2.i = select i1 %.not34.2.i, i32 2240, i32 2241
  %i.chn = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 2 to ptr), i32 noundef %spec.select.2.i, ptr noundef nonnull @.str.1255, i32 noundef 2)
  %i.cho = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.cho, label %bb.yc, label %bb.yd

bb.yc:                                            ; preds = %bb.yb
  %i.chp = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.2.i = select i1 %i.chp, i32 %.1.1.i, i32 2
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.1.2.i = phi i32 [ %spec.select35.2.i, %bb.yc ], [ %.1.1.i, %bb.yb ] ; 2 uses
  br i1 %i.chn, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yd
  %i.chq = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  %i.chr = and i32 %i.chq, 8
  %.not34.3.i = icmp eq i32 %i.chr, 0
  %spec.select.3.i = select i1 %.not34.3.i, i32 2240, i32 2241
  %i.chs = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 3 to ptr), i32 noundef %spec.select.3.i, ptr noundef nonnull @.str.1255, i32 noundef 3)
  %i.cht = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.cht, label %bb.yg, label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  %i.chu = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.3.i = select i1 %i.chu, i32 %.1.2.i, i32 3
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  %.1.3.i = phi i32 [ %spec.select35.3.i, %bb.yg ], [ %.1.2.i, %bb.yf ] ; 2 uses
  br i1 %i.chs, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %i.chv = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  %i.chw = and i32 %i.chv, 16
  %.not34.4.i = icmp eq i32 %i.chw, 0
  %spec.select.4.i = select i1 %.not34.4.i, i32 2240, i32 2241
  %i.chx = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 4 to ptr), i32 noundef %spec.select.4.i, ptr noundef nonnull @.str.1255, i32 noundef 4)
  %i.chy = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chy, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  %i.chz = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.4.i = select i1 %i.chz, i32 %.1.3.i, i32 4
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  %.1.4.i = phi i32 [ %spec.select35.4.i, %bb.yk ], [ %.1.3.i, %bb.yj ] ; 2 uses
  br i1 %i.chx, label %bb.ym, label %bb.yn

bb.ym:                                            ; preds = %bb.yl
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yl
  %i.cia = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  %i.cib = and i32 %i.cia, 32
  %.not34.5.i = icmp eq i32 %i.cib, 0
  %spec.select.5.i = select i1 %.not34.5.i, i32 2240, i32 2241
  %i.cic = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 5 to ptr), i32 noundef %spec.select.5.i, ptr noundef nonnull @.str.1255, i32 noundef 5)
  %i.cid = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.cid, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  %i.cie = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.5.i = select i1 %i.cie, i32 %.1.4.i, i32 5
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yo, %bb.yn
  %.1.5.i = phi i32 [ %spec.select35.5.i, %bb.yo ], [ %.1.4.i, %bb.yn ] ; 2 uses
  br i1 %i.cic, label %bb.yq, label %bb.yr

bb.yq:                                            ; preds = %bb.yp
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yp
  %.not.i89 = icmp eq i32 %.1.5.i, -1
  br i1 %.not.i89, label %bb.ys, label %.sink.split.i90

.sink.split.i90:                                  ; preds = %bb.yr
  %i.cif = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.cig = getelementptr inbounds nuw i8, ptr %i.cif, i64 260
  %i.cih = load i8, ptr %i.cig, align 4, !tbaa !169, !range !14, !noundef !15
  %i.cii = trunc nuw i8 %i.cih to i1
  %i.cij = shl nuw nsw i32 1, %.1.5.i
  %i.cik = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4
  %i.cil = select i1 %i.cii, i32 %i.cik, i32 0
  %.sink.i91 = xor i32 %i.cil, %i.cij
  store i32 %.sink.i91, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !61
  br label %bb.ys

bb.ys:                                            ; preds = %.sink.split.i90, %bb.yr
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.xr
  %i.cim = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1257)
  br i1 %i.cim, label %bb.yu, label %bb.zz

bb.yu:                                            ; preds = %bb.yt
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4321, ptr noundef nonnull @.str.1258)
  %i.cin = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1259, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 128) ; 0 uses
  %i.cio = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1260, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 64) ; 0 uses
  %i.cip = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1261, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 2048) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ciq = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ciq, label %bb.yv, label %_ZL10HelpMarkerPKc.exit37.i76

bb.yv:                                            ; preds = %bb.yu
  %i.cir = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cis = fmul float %i.cir, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cis)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1262, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit37.i76

_ZL10HelpMarkerPKc.exit37.i76:                    ; preds = %bb.yv, %bb.yu
  %i.cit = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1263, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 4096) ; 0 uses
  %i.ciu = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1264, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 8192) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.civ = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.civ, label %bb.yw, label %_ZL10HelpMarkerPKc.exit38.i77

bb.yw:                                            ; preds = %_ZL10HelpMarkerPKc.exit37.i76
  %i.ciw = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cix = fmul float %i.ciw, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cix)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1265, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit38.i77

_ZL10HelpMarkerPKc.exit38.i77:                    ; preds = %bb.yw, %_ZL10HelpMarkerPKc.exit37.i76
  %i.ciy = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1266, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 16384) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ciz = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ciz, label %bb.yx, label %_ZL10HelpMarkerPKc.exit39.i78

bb.yx:                                            ; preds = %_ZL10HelpMarkerPKc.exit38.i77
  %i.cja = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cjb = fmul float %i.cja, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cjb)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1267, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit39.i78

_ZL10HelpMarkerPKc.exit39.i78:                    ; preds = %bb.yx, %_ZL10HelpMarkerPKc.exit38.i77
  %i.cjc = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1268, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 4) ; 0 uses
  %i.cjd = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1269, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 2) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.cje = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.cje, label %bb.yy, label %_ZL10HelpMarkerPKc.exit40.i79

bb.yy:                                            ; preds = %_ZL10HelpMarkerPKc.exit39.i78
  %i.cjf = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cjg = fmul float %i.cjf, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cjg)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1270, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit40.i79

_ZL10HelpMarkerPKc.exit40.i79:                    ; preds = %bb.yy, %_ZL10HelpMarkerPKc.exit39.i78
  %i.cjh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1271, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 1024) ; 0 uses
  %i.cji = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1272, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 131072) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.cjj = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.cjj, label %bb.yz, label %_ZL10HelpMarkerPKc.exit41.i80

bb.yz:                                            ; preds = %_ZL10HelpMarkerPKc.exit40.i79
  %i.cjk = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cjl = fmul float %i.cjk, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cjl)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1239, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit41.i80

_ZL10HelpMarkerPKc.exit41.i80:                    ; preds = %bb.yz, %_ZL10HelpMarkerPKc.exit40.i79
  %i.cjm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1240, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 262144) ; 0 uses
  %i.cjn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1241, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 524288) ; 0 uses
  %i.cjo = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1242, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 1048576) ; 0 uses
  %i.cjp = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1273, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position) ; 0 uses
  %i.cjq = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1274, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop) ; 0 uses
  %i.cjr = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position, align 1, !tbaa !33, !range !14, !noundef !15
  %i.cjs = trunc nuw i8 %i.cjr to i1
  br i1 %i.cjs, label %bb.za, label %.peel.begin.i

bb.za:                                            ; preds = %_ZL10HelpMarkerPKc.exit41.i80
  %i.cjt = call noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv()
  call void @_ZN5ImGui8UnindentEf(float noundef %i.cjt)
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.za, %_ZL10HelpMarkerPKc.exit41.i80
  %i.cju = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !61
  %i.cjv = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef null, i32 noundef %i.cju, ptr noundef nonnull @.str.1255, i32 noundef 0)
  %i.cjw = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !33, !range !14, !noundef !15
  %i.cjx = trunc nuw i8 %i.cjw to i1
  br i1 %i.cjx, label %bb.zb, label %bb.zd

bb.zb:                                            ; preds = %.peel.begin.i
  %i.cjy = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.cjy, label %bb.zc, label %bb.zd

bb.zc:                                            ; preds = %bb.zb
  %i.cjz = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %bb.zb, %.peel.begin.i
  br i1 %i.cjv, label %bb.ze, label %.peel.next.i81

bb.ze:                                            ; preds = %bb.zd
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cka = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next.i81

.peel.next.i81:                                   ; preds = %bb.ze, %bb.zd
  %i.ckb = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !61
  %i.ckc = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %i.ckb, ptr noundef nonnull @.str.1255, i32 noundef 1)
  %i.ckd = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !33, !range !14, !noundef !15
  %i.cke = trunc nuw i8 %i.ckd to i1
  br i1 %i.cke, label %bb.zf, label %bb.zh

bb.zf:                                            ; preds = %.peel.next.i81
  %i.ckf = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.ckf, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  %i.ckg = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf, %.peel.next.i81
  br i1 %i.ckc, label %bb.zi, label %.peel.next48.i

bb.zi:                                            ; preds = %bb.zh
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ckh = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next48.i

.peel.next48.i:                                   ; preds = %bb.zi, %bb.zh
  %i.cki = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !61
  %i.ckj = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 2 to ptr), i32 noundef %i.cki, ptr noundef nonnull @.str.1255, i32 noundef 2)
  %i.ckk = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !33, !range !14, !noundef !15
  %i.ckl = trunc nuw i8 %i.ckk to i1
  br i1 %i.ckl, label %bb.zj, label %bb.zl

bb.zj:                                            ; preds = %.peel.next48.i
  %i.ckm = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.ckm, label %bb.zk, label %bb.zl

bb.zk:                                            ; preds = %bb.zj
  %i.ckn = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
end_hunk_0
begin_hunk_1_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i, %bb.cg
  %i.fz = phi i32 [ %i.fh, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.cg ]
  %i.ga = phi ptr [ %.pre.i, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.ft, %bb.cg ]
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %i.fi, ptr %i.gc, align 4
  %i.gd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.ge = add nsw i32 %i.gd, 1                    ; 2 uses
  store i32 %i.ge, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.gf = add nuw nsw i32 %.017752, 1             ; 2 uses
  %exitcond88.not = icmp eq i32 %i.gf, 50
  br i1 %exitcond88.not, label %.loopexit37, label %.preheader36, !llvm.loop !343

.loopexit37:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit, %bb.cb
  %i.gg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.975)
  br i1 %i.gg, label %.preheader34.preheader, label %.loopexit35

.preheader34.preheader:                           ; preds = %.loopexit37
  %.pre124 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  br label %.preheader34

.preheader34:                                     ; preds = %.preheader34.preheader, %_ZN8ImVectorIjE9push_backERKj.exit259
  %i.gh = phi i32 [ %i.he, %_ZN8ImVectorIjE9push_backERKj.exit259 ], [ %.pre124, %.preheader34.preheader ] ; 6 uses
  %.017653 = phi i32 [ %i.hf, %_ZN8ImVectorIjE9push_backERKj.exit259 ], [ 0, %.preheader34.preheader ]
  %i.gi = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !61 ; 2 uses
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !61
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !341
  %i.gl = icmp eq i32 %i.gh, %i.gk
  br i1 %i.gl, label %bb.ch, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253:   ; preds = %.preheader34
  %.pre.i254 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  br label %_ZN8ImVectorIjE9push_backERKj.exit259

bb.ch:                                            ; preds = %.preheader34
  %i.gm = add nsw i32 %i.gh, 1
  %.not.i.i255 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i255, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gn = sdiv i32 %i.gh, 2
  %i.go = add nsw i32 %i.gn, %i.gh
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256:     ; preds = %bb.ci, %bb.ch
  %i.gp = phi i32 [ %i.go, %bb.ci ], [ 8, %bb.ch ]
  %i.gq = call noundef i32 @llvm.smax.i32(i32 %i.gp, i32 %i.gm) ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 2
  %i.gt = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.gs) ; 3 uses
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342 ; 2 uses
  %.not6.i.i257 = icmp eq ptr %i.gu, null
  br i1 %.not6.i.i257, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256
  %i.gv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gt, ptr nonnull align 4 %i.gu, i64 %i.gx, i1 false)
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.gy)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256
  store ptr %i.gt, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  store i32 %i.gq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !341
  %.pre3.i258 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  br label %_ZN8ImVectorIjE9push_backERKj.exit259

_ZN8ImVectorIjE9push_backERKj.exit259:            ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253, %bb.ck
  %i.gz = phi i32 [ %i.gh, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253 ], [ %.pre3.i258, %bb.ck ]
  %i.ha = phi ptr [ %.pre.i254, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253 ], [ %i.gt, %bb.ck ]
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb
  store i32 %i.gi, ptr %i.hc, align 4
  %i.hd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.he = add nsw i32 %i.hd, 1                    ; 2 uses
  store i32 %i.he, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hf = add nuw nsw i32 %.017653, 1             ; 2 uses
  %exitcond89.not = icmp eq i32 %i.hf, 20
  br i1 %exitcond89.not, label %.loopexit35, label %.preheader34, !llvm.loop !344

.loopexit35:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit259, %.loopexit37
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.hg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.976)
  br i1 %i.hg, label %bb.cl, label %.loopexit33

bb.cl:                                            ; preds = %.loopexit35
  %i.hh = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph55.preheader, label %.loopexit33

.lr.ph55.preheader:                               ; preds = %bb.cl
  %i.hj = call i32 @llvm.umin.i32(i32 %i.hh, i32 20)
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %i.hk = phi i32 [ %i.hr, %.lr.ph55 ], [ %i.hh, %.lr.ph55.preheader ]
  %.017554 = phi i32 [ %i.hs, %.lr.ph55 ], [ %i.hj, %.lr.ph55.preheader ] ; 2 uses
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !61
  call void @_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.hp, i1 noundef zeroext false)
  %i.hq = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hr = add nsw i32 %i.hq, -1                   ; 2 uses
  store i32 %i.hr, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hs = add nsw i32 %.017554, -1
  %i.ht = icmp samesign ugt i32 %.017554, 1
  br i1 %i.ht, label %.lr.ph55, label %.loopexit33, !llvm.loop !345

.loopexit33:                                      ; preds = %.lr.ph55, %bb.cl, %.loopexit35
  %i.hu = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.hv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = fmul float %i.hu, %i.hw
  store float 0.000000e+00, ptr %7, align 4, !tbaa !49
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.hx, ptr %i.hy, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.hz = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ia = fmul float %i.hz, 2.000000e+01
  store float f0x80800000, ptr %8, align 4, !tbaa !49
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ia, ptr %i.ib, align 4, !tbaa !51
  %i.ic = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %i.ic, label %bb.cm, label %bb.cu

bb.cm:                                            ; preds = %.loopexit33
  %i.id = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, align 8, !tbaa !325
  %i.ie = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.if = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef 576, i32 noundef %i.id, i32 noundef %i.ie) ; 4 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.if)
  %i.ig = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.ih = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, align 8
  %i.ii = icmp sgt i32 %i.ih, 0
  %i.ij = select i1 %i.ig, i1 %i.ii, i1 false     ; 2 uses
  br i1 %i.ij, label %bb.cn, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

bb.cn:                                            ; preds = %bb.cm
  %i.ik = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !346
  %i.in = trunc i64 %i.im to i32                  ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !347, !range !14, !noundef !15
  %i.iq = icmp eq i8 %i.ip, 0
  br i1 %i.iq, label %bb.co, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.cn
  %.022.i199 = add nsw i32 %i.in, 1               ; 2 uses
  %.not.i200 = icmp slt i32 %.022.i199, %i.ik
  br i1 %.not.i200, label %.lr.ph202, label %.critedge.i

bb.co:                                            ; preds = %bb.cn
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 33
  store i8 1, ptr %i.ir, align 1, !tbaa !348
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

.preheader.i:                                     ; preds = %.lr.ph202
  %.022.i = add nsw i32 %.022.i201, 1             ; 2 uses
  %.not.i = icmp slt i32 %.022.i, %i.ik
  br i1 %.not.i, label %.lr.ph202, label %.critedge.i, !llvm.loop !349

.lr.ph202:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.022.i201 = phi i32 [ %.022.i, %.preheader.i ], [ %.022.i199, %.preheader.i.preheader ] ; 3 uses
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i64 16), align 8, !tbaa !338
  %i.it = call noundef i32 %i.is(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %.022.i201), !inline_history !350
  %i.iu = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.it)
  br i1 %i.iu, label %.preheader.i, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !349

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.preheader
  %i.iv = call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.in) ; 2 uses
  %i.iw = icmp slt i32 %i.iv, 1
  br i1 %i.iw, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph204

bb.cp:                                            ; preds = %.lr.ph204
  %i.ix = icmp slt i32 %.0.in.i203, 2
  br i1 %i.ix, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph204, !llvm.loop !351

.lr.ph204:                                        ; preds = %.critedge.i, %bb.cp
  %.0.in.i203 = phi i32 [ %.0.i, %bb.cp ], [ %i.iv, %.critedge.i ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i203, -1             ; 3 uses
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i64 16), align 8, !tbaa !338
  %i.iz = call noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %.0.i), !inline_history !350
  %i.ja = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.iz)
  br i1 %i.ja, label %bb.cp, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205, !llvm.loop !351

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205: ; preds = %.lr.ph204
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !351

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit: ; preds = %.lr.ph202, %bb.cp, %.critedge.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205, %bb.co, %bb.cm
  %i.jb = phi i32 [ -1, %bb.cm ], [ -1, %bb.cp ], [ %i.in, %bb.co ], [ %.0.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205 ], [ -1, %.critedge.i ], [ %.022.i201, %.lr.ph202 ] ; 2 uses
  %i.jc = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %i.je = zext i32 %i.jb to i64
  br label %bb.cq

._crit_edge:                                      ; preds = %bb.cs, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %i.jf = call noundef ptr @_ZN5ImGui14EndMultiSelectEv() ; 2 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.jf)
  br i1 %i.ij, label %bb.ct, label %bb.cu

bb.cq:                                            ; preds = %.lr.ph57, %bb.cs
  %indvars.iv90 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next91, %bb.cs ] ; 4 uses
  %i.jg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv90
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.jj = urem i32 %i.ji, 28
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr @_ZL12ExampleNames, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !121
  %i.jn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.977, i32 noundef %i.ji, ptr noundef %i.jm) #30 ; 0 uses
  %i.jo = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.ji)
  call void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv90)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !56
  %i.jp = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.e, i1 noundef zeroext %i.jo, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.jq = icmp eq i64 %indvars.iv90, %i.je
  br i1 %i.jq, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.jr = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.js = sext i32 %i.jr to i64
  %i.jt = icmp slt i64 %indvars.iv.next91, %i.js
  br i1 %i.jt, label %bb.cq, label %._crit_edge, !llvm.loop !352

bb.ct:                                            ; preds = %._crit_edge
  call void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopIjEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.jf, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i32 noundef %i.jb)
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge, %bb.ct, %.loopexit33
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.bu
  %i.ju = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.978)
  br i1 %i.ju, label %bb.cw, label %bb.dg

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 3043, ptr noundef nonnull @.str.979)
  %i.jv = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb acquire, align 8
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %bb.cx, label %bb.da, !prof !8

bb.cx:                                            ; preds = %bb.cw
  %i.jx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  %.not216 = icmp eq i32 %i.jx, 0
  br i1 %.not216, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN18ExampleDualListBoxC2Ev(ptr noundef nonnull align 8 dereferenceable(129) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.jy = call i32 @__cxa_atexit(ptr nonnull @_ZN18ExampleDualListBoxD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cx, %bb.cw
  %i.jz = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.ka = icmp eq i32 %i.jz, 0
  %i.kb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 16), align 8
  %i.kc = icmp eq i32 %i.kb, 0
  %or.cond = select i1 %i.ka, i1 %i.kc, i1 false
  br i1 %or.cond, label %.preheader29, label %.loopexit30

bb.db:                                            ; preds = %bb.cy
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  br label %bb.ky

.preheader29:                                     ; preds = %bb.da, %_ZN8ImVectorIjE9push_backERKj.exit266
  %i.ke = phi i32 [ %i.kz, %_ZN8ImVectorIjE9push_backERKj.exit266 ], [ 0, %bb.da ] ; 6 uses
  %.017358 = phi i32 [ %i.la, %_ZN8ImVectorIjE9push_backERKj.exit266 ], [ 0, %bb.da ] ; 2 uses
  %i.kf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 4), align 4, !tbaa !341
  %i.kg = icmp eq i32 %i.ke, %i.kf
  br i1 %i.kg, label %bb.dc, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260:   ; preds = %.preheader29
  %.pre.i261 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342
  br label %_ZN8ImVectorIjE9push_backERKj.exit266

bb.dc:                                            ; preds = %.preheader29
  %i.kh = add nsw i32 %i.ke, 1
  %.not.i.i262 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i262, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ki = sdiv i32 %i.ke, 2
  %i.kj = add nsw i32 %i.ki, %i.ke
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263:     ; preds = %bb.dd, %bb.dc
  %i.kk = phi i32 [ %i.kj, %bb.dd ], [ 8, %bb.dc ]
  %i.kl = call noundef i32 @llvm.smax.i32(i32 %i.kk, i32 %i.kh) ; 2 uses
  %i.km = sext i32 %i.kl to i64
  %i.kn = shl nsw i64 %i.km, 2
  %i.ko = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.kn) ; 3 uses
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342 ; 2 uses
  %.not6.i.i264 = icmp eq ptr %i.kp, null
  br i1 %.not6.i.i264, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263
  %i.kq = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.kr = sext i32 %i.kq to i64
  %i.ks = shl nsw i64 %i.kr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ko, ptr nonnull align 4 %i.kp, i64 %i.ks, i1 false)
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.kt)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263
  store ptr %i.ko, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342
  store i32 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 4), align 4, !tbaa !341
  %.pre3.i265 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  br label %_ZN8ImVectorIjE9push_backERKj.exit266

_ZN8ImVectorIjE9push_backERKj.exit266:            ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260, %bb.df
  %i.ku = phi i32 [ %i.ke, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260 ], [ %.pre3.i265, %bb.df ]
  %i.kv = phi ptr [ %.pre.i261, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260 ], [ %i.ko, %bb.df ]
  %i.kw = sext i32 %i.ku to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.kw
  store i32 %.017358, ptr %i.kx, align 4
  %i.ky = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.kz = add nsw i32 %i.ky, 1                    ; 2 uses
  store i32 %i.kz, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.la = add nuw nsw i32 %.017358, 1             ; 2 uses
  %exitcond93.not = icmp eq i32 %i.la, 28
  br i1 %exitcond93.not, label %.loopexit30, label %.preheader29, !llvm.loop !353

.loopexit30:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit266, %bb.da
  call void @_ZN18ExampleDualListBox4ShowEv(ptr noundef nonnull align 8 dereferenceable(129) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.dg

bb.dg:                                            ; preds = %.loopexit30, %bb.cv
  %i.lb = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.980)
  br i1 %i.lb, label %bb.dh, label %bb.em

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 3059, ptr noundef nonnull @.str.981)
  %i.lc = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3 acquire, align 8
  %i.ld = icmp eq i8 %i.lc, 0
  br i1 %i.ld, label %bb.di, label %bb.dl, !prof !8

bb.di:                                            ; preds = %bb.dh
  %i.le = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3) #30
  %.not217 = icmp eq i32 %i.le, 0
  br i1 %.not217, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN26ImGuiSelectionBasicStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3)
          to label %bb.dk unwind label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %i.lf = call i32 @__cxa_atexit(ptr nonnull @_ZN26ImGuiSelectionBasicStorageD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3) #30
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.di, %bb.dh
  %i.lg = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3, align 8, !tbaa !325
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.964, i32 noundef %i.lg, i32 noundef 10000)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.lh = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.li = fmul float %i.lh, 2.000000e+01
  store float 0.000000e+00, ptr %10, align 4, !tbaa !49
  %i.lj = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.li, ptr %i.lj, align 4, !tbaa !51
  %i.lk = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.965, i32 noundef 2, i32 noundef 33555776, ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br i1 %i.lk, label %bb.dm, label %bb.el

bb.dm:                                            ; preds = %bb.dl
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.982, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.983, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui22TableSetupScrollFreezeEii(i32 noundef 0, i32 noundef 1)
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.ll = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_3, align 8, !tbaa !325
  %i.lm = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef 576, i32 noundef %i.ll, i32 noundef 10000) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  br i1 %i.ud, label %bb.gt, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i:      ; preds = %.preheader18
  %.pre.i273 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  br label %_ZN8ImVectorIiE9push_backERKi.exit

bb.gt:                                            ; preds = %.preheader18
  %i.ue = add nsw i32 %i.tz, 1
  %.not.i.i274 = icmp eq i32 %i.tz, 0
  br i1 %.not.i.i274, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.uf = sdiv i32 %i.tz, 2
  %i.ug = add nsw i32 %i.uf, %i.tz
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i:        ; preds = %bb.gu, %bb.gt
  %i.uh = phi i32 [ %i.ug, %bb.gu ], [ 8, %bb.gt ]
  %i.ui = call noundef i32 @llvm.smax.i32(i32 %i.uh, i32 %i.ue) ; 2 uses
  %i.uj = sext i32 %i.ui to i64
  %i.uk = shl nsw i64 %i.uj, 2
  %i.ul = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.uk) ; 3 uses
  %i.um = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256 ; 2 uses
  %.not6.i.i275 = icmp eq ptr %i.um, null
  br i1 %.not6.i.i275, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  %i.un = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.uo = sext i32 %i.un to i64
  %i.up = shl nsw i64 %i.uo, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ul, ptr nonnull align 4 %i.um, i64 %i.up, i1 false)
  %i.uq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.uq)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  store ptr %i.ul, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  store i32 %i.ui, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 4), align 4, !tbaa !255
  %.pre3.i276 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  br label %_ZN8ImVectorIiE9push_backERKi.exit

_ZN8ImVectorIiE9push_backERKi.exit:               ; preds = %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i, %bb.gw
  %i.ur = phi i32 [ %i.tz, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %.pre3.i276, %bb.gw ]
  %i.us = phi ptr [ %.pre.i273, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %i.ul, %bb.gw ]
  %i.ut = sext i32 %i.ur to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.us, i64 %i.ut
  store i32 %i.ua, ptr %i.uu, align 4
  %i.uv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.uw = add nsw i32 %i.uv, 1                    ; 2 uses
  store i32 %i.uw, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.ux = add nuw nsw i32 %.016470, 1             ; 2 uses
  %exitcond109.not = icmp eq i32 %i.ux, 1000
  br i1 %exitcond109.not, label %.loopexit19, label %.preheader18, !llvm.loop !362

.loopexit19:                                      ; preds = %_ZN8ImVectorIiE9push_backERKi.exit, %bb.gs
  %i.uy = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5 acquire, align 8
  %i.uz = icmp eq i8 %i.uy, 0
  br i1 %i.uz, label %bb.gx, label %bb.gz, !prof !8

bb.gx:                                            ; preds = %.loopexit19
  %i.va = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  %.not228 = icmp eq i32 %i.va, 0
  br i1 %.not228, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5)
          to label %_ZN28ExampleSelectionWithDeletionC2Ev.exit277 unwind label %bb.hf

_ZN28ExampleSelectionWithDeletionC2Ev.exit277:    ; preds = %bb.gy
  %i.vb = call i32 @__cxa_atexit(ptr nonnull @_ZN26ImGuiSelectionBasicStorageD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.gz

bb.gz:                                            ; preds = %_ZN28ExampleSelectionWithDeletionC2Ev.exit277, %bb.gx, %.loopexit19
  %i.vc = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !325
  %i.vd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.974, i32 noundef %i.vc, i32 noundef %i.vd)
  %.b208 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b208, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.ve = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.vf = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.vg = phi float [ %i.ve, %bb.ha ], [ %i.vf, %bb.hb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.vh = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.vi = sitofp i32 %i.vh to float
  %i.vj = fmul float %i.vg, %i.vi
  store float 0.000000e+00, ptr %17, align 4, !tbaa !49
  %i.vk = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.vj, ptr %i.vk, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.vl = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vm = fmul float %i.vl, 2.000000e+01
  store float f0x80800000, ptr %18, align 4, !tbaa !49
  %i.vn = getelementptr inbounds nuw i8, ptr %18, i64 4
  store float %i.vm, ptr %i.vn, align 4, !tbaa !51
  %i.vo = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br i1 %i.vo, label %bb.hd, label %bb.kv

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.vp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vq = call noundef float @_ZN5ImGui11GetFontSizeEv()
  store float %i.vp, ptr %19, align 4, !tbaa !49
  %i.vr = getelementptr inbounds nuw i8, ptr %19, i64 4
  store float %i.vq, ptr %i.vr, align 4, !tbaa !51
  %.b207 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b207, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef 0.000000e+00)
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gy
  %i.vs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.ky

bb.hg:                                            ; preds = %bb.he, %bb.hd
  %i.vt = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5flags_1, align 4, !tbaa !61
  %i.vu = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !325
  %i.vv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.vw = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.vt, i32 noundef %i.vu, i32 noundef %i.vv) ; 5 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.vw)
  %i.vx = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.vy = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8 ; 2 uses
  %i.vz = icmp sgt i32 %i.vy, 0
  %or.cond3 = select i1 %i.vx, i1 %i.vz, i1 false
  %.b211 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.wa = select i1 %or.cond3, i1 true, i1 %.b211 ; 2 uses
  br i1 %i.wa, label %bb.hh, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

bb.hh:                                            ; preds = %bb.hg
  %i.wb = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252 ; 3 uses
  %i.wc = icmp eq i32 %i.vy, 0
  br i1 %i.wc, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !346
  %i.wf = trunc i64 %i.we to i32                  ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.wh = load i8, ptr %i.wg, align 8, !tbaa !347, !range !14, !noundef !15
  %i.wi = icmp eq i8 %i.wh, 0
  br i1 %i.wi, label %bb.hj, label %.preheader.i278.preheader

.preheader.i278.preheader:                        ; preds = %bb.hi
  %.022.i280207 = add nsw i32 %i.wf, 1            ; 2 uses
  %.not.i281208 = icmp slt i32 %.022.i280207, %i.wb
  br i1 %.not.i281208, label %.lr.ph210, label %.critedge.i282

bb.hj:                                            ; preds = %bb.hi
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vw, i64 33
  store i8 1, ptr %i.wj, align 1, !tbaa !348
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

.preheader.i278:                                  ; preds = %.lr.ph210
  %.022.i280 = add nsw i32 %.022.i280209, 1       ; 2 uses
  %.not.i281 = icmp slt i32 %.022.i280, %i.wb
  br i1 %.not.i281, label %.lr.ph210, label %.critedge.i282, !llvm.loop !349

.lr.ph210:                                        ; preds = %.preheader.i278.preheader, %.preheader.i278
  %.022.i280209 = phi i32 [ %.022.i280, %.preheader.i278 ], [ %.022.i280207, %.preheader.i278.preheader ] ; 3 uses
  %i.wk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !338
  %i.wl = call noundef i32 %i.wk(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.022.i280209), !inline_history !350
  %i.wm = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wl)
  br i1 %i.wm, label %.preheader.i278, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !349

.critedge.i282:                                   ; preds = %.preheader.i278, %.preheader.i278.preheader
  %i.wn = call i32 @llvm.smin.i32(i32 %i.wb, i32 %i.wf) ; 2 uses
  %i.wo = icmp slt i32 %i.wn, 1
  br i1 %i.wo, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph212

bb.hk:                                            ; preds = %.lr.ph212
  %i.wp = icmp slt i32 %.0.in.i283211, 2
  br i1 %i.wp, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph212, !llvm.loop !351

.lr.ph212:                                        ; preds = %.critedge.i282, %bb.hk
  %.0.in.i283211 = phi i32 [ %.0.i284, %bb.hk ], [ %i.wn, %.critedge.i282 ] ; 2 uses
  %.0.i284 = add nsw i32 %.0.in.i283211, -1       ; 3 uses
  %i.wq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !338
  %i.wr = call noundef i32 %i.wq(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.0.i284), !inline_history !350
  %i.ws = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wr)
  br i1 %i.ws, label %bb.hk, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214, !llvm.loop !351

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214: ; preds = %.lr.ph212
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !351

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286: ; preds = %.lr.ph210, %bb.hk, %.critedge.i282, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214, %bb.hj, %bb.hh, %bb.hg
  %i.wt = phi i32 [ -1, %bb.hg ], [ -1, %bb.hh ], [ %i.wf, %bb.hj ], [ -1, %bb.hk ], [ %.0.i284, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214 ], [ -1, %.critedge.i282 ], [ %.022.i280209, %.lr.ph210 ] ; 5 uses
  store i1 false, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.wu = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !33, !range !14, !noundef !15
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  %.b206 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b206, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !56
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !56
  %i.ww = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1030, i32 noundef 2, i32 noundef 4194321, ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef 0.000000e+00) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef f0x3F333333, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 3.000000e-01, i32 noundef 0)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %22)
  %i.wx = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14, !noundef !15
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.hp, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288

bb.hp:                                            ; preds = %bb.ho
  %i.wz = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.wz, float noundef -1.000000e+00)
          to label %bb.hq unwind label %.loopexit.split-lp13

bb.hq:                                            ; preds = %bb.hp
  %.not229 = icmp eq i32 %i.wt, -1
  br i1 %.not229, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.xa = add nuw nsw i32 %i.wt, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.wt, i32 noundef %i.xa)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287 unwind label %.loopexit.split-lp13

.loopexit12:                                      ; preds = %.backedge
  %lpad.loopexit14 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

.loopexit.split-lp13:                             ; preds = %bb.hp, %bb.kk, %bb.km, %bb.kn, %bb.ko, %bb.kq, %bb.ks, %bb.hr, %bb.hs
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287: ; preds = %bb.hr, %bb.hq
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !331 ; 2 uses
  %.not230 = icmp eq i64 %i.xc, -1
  br i1 %.not230, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288, label %bb.hs

bb.hs:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287
  %i.xd = trunc i64 %i.xc to i32                  ; 2 uses
  %i.xe = add nsw i32 %i.xd, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.xd, i32 noundef %i.xe)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288 unwind label %.loopexit.split-lp13

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288: ; preds = %bb.hs, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, %bb.ho
  %i.xf = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.xg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.xh = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %.pre126 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14
  %i.xi = trunc nuw i8 %.pre126 to i1
  %sext = sext i32 %i.wt to i64
  br i1 %i.xi, label %.backedge, label %.thread174

.thread174:                                       ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xj = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.backedge:                                        ; preds = %._crit_edge73.loopexit, %._crit_edge73, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xk = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.ht unwind label %.loopexit12

bb.ht:                                            ; preds = %.backedge
  br i1 %i.xk, label %.critedge, label %bb.kj

.critedge:                                        ; preds = %bb.ht
  %.pre127 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14
  %.pre127.fr = freeze i8 %.pre127
  %i.xl = trunc i8 %.pre127.fr to i1
  %i.xm = load i32, ptr %22, align 8
  %i.xn = load i32, ptr %i.xf, align 4
  br i1 %i.xl, label %.split, label %bb.hu

bb.hu:                                            ; preds = %.critedge
  %i.xo = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.split:                                           ; preds = %bb.hu, %.critedge, %.thread174
  %i.xp = phi i32 [ 0, %.thread174 ], [ 0, %bb.hu ], [ %i.xm, %.critedge ] ; 2 uses
  %i.xq = phi i1 [ false, %.thread174 ], [ false, %bb.hu ], [ true, %.critedge ]
  %i.xr = phi i32 [ %i.xj, %.thread174 ], [ %i.xo, %bb.hu ], [ %i.xn, %.critedge ] ; 2 uses
  %i.xs = icmp slt i32 %i.xp, %i.xr
  br i1 %i.xs, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.split
  %i.xt = sext i32 %i.xp to i64
  br label %.lr.ph72

._crit_edge73.loopexit:                           ; preds = %bb.kh
  %.pre128 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14
  %.pre132 = trunc nuw i8 %.pre128 to i1
  br i1 %.pre132, label %.backedge, label %bb.kj

._crit_edge73:                                    ; preds = %.split
  br i1 %i.xq, label %.backedge, label %bb.kj

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.kh
  %indvars.iv110 = phi i64 [ %i.xt, %.lr.ph72.preheader ], [ %indvars.iv.next111, %bb.kh ] ; 5 uses
  %i.xu = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !33, !range !14, !noundef !15
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %.lr.ph72
  %i.xw = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %bb.hx unwind label %bb.hw     ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.hx:                                            ; preds = %bb.hv, %.lr.ph72
  %i.xy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %indvars.iv110
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !61 ; 4 uses
  %i.yb = srem i32 %i.ya, 28
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.yc
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !121 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.yf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.966, i32 noundef %i.ya, ptr noundef %i.ye) #30 ; 0 uses
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.ya)
          to label %bb.hy unwind label %bb.ib

bb.hy:                                            ; preds = %bb.hx
  %i.yg = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE17show_color_button, align 1, !tbaa !33, !range !14, !noundef !15
  %i.yh = trunc nuw i8 %i.yg to i1
  %i.yi = trunc nsw i64 %indvars.iv110 to i32     ; 2 uses
  br i1 %i.yh, label %bb.hz, label %._crit_edge133

bb.hz:                                            ; preds = %bb.hy
  %i.yj = mul i32 %i.yi, 5289803                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.yk = and i32 %i.yj, 255
  %i.yl = uitofp nneg i32 %i.yk to float
  %i.ym = fmul nnan float %i.yl, f0x3B808081
  %i.yn = lshr i32 %i.yj, 8
  %i.yo = and i32 %i.yn, 255
  %i.yp = uitofp nneg i32 %i.yo to float
  %i.yq = fmul nnan float %i.yp, f0x3B808081
  %i.yr = lshr i32 %i.yj, 16
  %i.ys = and i32 %i.yr, 255
  %i.yt = uitofp nneg i32 %i.ys to float
  %i.yu = fmul nnan float %i.yt, f0x3B808081
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ym, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.yq, i64 1
  %.sroa.6.12.vec.insert = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.yu, i64 0
  store <2 x float> %.sroa.0.4.vec.insert, ptr %23, align 8
  store <2 x float> %.sroa.6.12.vec.insert, ptr %i.xg, align 8
  %i.yv = invoke noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.1031, ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %19)
          to label %bb.ia unwind label %bb.ic     ; 0 uses

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  invoke void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
          to label %._crit_edge133 unwind label %bb.id

bb.ib:                                            ; preds = %bb.hx
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.ic:                                            ; preds = %bb.hz
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.ki

bb.id:                                            ; preds = %bb.ia
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

._crit_edge133:                                   ; preds = %bb.hy, %bb.ia
  %i.yz = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.yi)
          to label %bb.ie unwind label %bb.ii     ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN18ExampleDualListBoxC2Ev:.preheader14.preheader

.preheader14.1:                                   ; preds = %.preheader14.preheader
  %.ptr7.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN26ImGuiSelectionBasicStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %.ptr7.ptr.1)
          to label %bb.a unwind label %.preheader.preheader

bb.a:                                             ; preds = %.preheader14.1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.b, align 8, !tbaa !383
  ret void

.preheader.preheader:                             ; preds = %.preheader14.1
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.ptr13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN26ImGuiSelectionBasicStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.ptr13) #30
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.thread
  %i.d = phi { ptr, i32 } [ %i.a, %.thread ], [ %i.c, %.preheader.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8ImVectorIjED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #30
  tail call void @_ZN8ImVectorIjED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN18ExampleDualListBoxD2Ev(ptr noundef nonnull align 8 dead_on_return(129) dereferenceable(129) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN26ImGuiSelectionBasicStorageD2Ev.exit:         ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !380  ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.1, label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN26ImGuiSelectionBasicStorageD2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.f)
          to label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1 unwind label %bb.c

_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1:       ; preds = %bb.d, %_ZN26ImGuiSelectionBasicStorageD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN8ImVectorIjED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.h)
          to label %_ZN8ImVectorIjED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZN8ImVectorIjED2Ev.exit:                         ; preds = %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !342  ; 2 uses
  %.not.i.1 = icmp eq ptr %i.l, null
  br i1 %.not.i.1, label %_ZN8ImVectorIjED2Ev.exit.1, label %bb.g

bb.g:                                             ; preds = %_ZN8ImVectorIjED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.l)
          to label %_ZN8ImVectorIjED2Ev.exit.1 unwind label %bb.f

_ZN8ImVectorIjED2Ev.exit.1:                       ; preds = %bb.g, %_ZN8ImVectorIjED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN18ExampleDualListBox4ShowEv(ptr noundef nonnull align 8 dereferenceable(129) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 4             ; 9 uses
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 8 uses
  %8 = alloca %struct.ImVec2, align 4             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !56
  %i.a = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.110, i32 noundef 3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.a, label %.split, label %bb.r

.split:                                           ; preds = %bb.a
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 16, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !339
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1064, ptr noundef nonnull @.str.1065, i32 noundef %i.e)
  %i.f = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.g = load i32, ptr %0, align 8, !tbaa !339
  %i.h = sitofp i32 %i.g to float
  %i.i = fmul float %i.f, %i.h
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  store float %i.i, ptr %i.c, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.l = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.m = fmul float %i.l, 4.000000e+00
  store float 0.000000e+00, ptr %3, align 4, !tbaa !49
  store float %i.m, ptr %i.k, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x float> splat (float f0x7F7FFFFF), ptr %4, align 8, !tbaa !56
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.n = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.o = fmul float %i.n, 2.000000e+01
  store float f0x80800000, ptr %5, align 4, !tbaa !49
  store float %i.o, ptr %i.j, align 4, !tbaa !51
  %i.p = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1067, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.q = call <2 x float> @_ZN5ImGui13GetWindowSizeEv()
  br i1 %i.p, label %.split._crit_edge, label %bb.g

.split._crit_edge:                                ; preds = %.split
  %.pre61 = load i32, ptr %0, align 8, !tbaa !339
  %.pre = load i32, ptr %i.b, align 8, !tbaa !325
  %i.r = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef 64, i32 noundef %.pre, i32 noundef %.pre61)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !342
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !337
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr @_ZZN18ExampleDualListBox22ApplySelectionRequestsEP18ImGuiMultiSelectIOiENUlP26ImGuiSelectionBasicStorageiE_8__invokeES3_i, ptr %i.v, align 8, !tbaa !338
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.r)
  %i.w = load i32, ptr %0, align 8, !tbaa !339
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.split._crit_edge
  %.1.lcssa = phi i32 [ -1, %.split._crit_edge ], [ %.3, %bb.f ]
  %i.y = call noundef ptr @_ZN5ImGui14EndMultiSelectEv()
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !342
  store ptr %i.z, ptr %i.u, align 8, !tbaa !337
  store ptr @_ZZN18ExampleDualListBox22ApplySelectionRequestsEP18ImGuiMultiSelectIOiENUlP26ImGuiSelectionBasicStorageiE_8__invokeES3_i, ptr %i.v, align 8, !tbaa !338
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.y)
  br label %bb.g

.lr.ph:                                           ; preds = %.split._crit_edge, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.split._crit_edge ] ; 3 uses
  %.149 = phi i32 [ %.3, %bb.f ], [ -1, %.split._crit_edge ] ; 2 uses
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !342
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !61 ; 2 uses
  %i.ad = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.ac)
  call void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv)
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZL12ExampleNames, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !56
  %i.ah = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.ag, i1 noundef zeroext %i.ad, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ai = call noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
  br i1 %i.ai, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.aj = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 525, i1 noundef zeroext true)
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 627, i1 noundef zeroext true)
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.d ], [ %.149, %bb.c ]
  %i.al = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0)
  %spec.select45 = select i1 %i.al, i32 0, i32 %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.3 = phi i32 [ %.149, %.lr.ph ], [ %spec.select45, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %0, align 8, !tbaa !339
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !385

bb.g:                                             ; preds = %._crit_edge, %.split
  %.4 = phi i32 [ %.1.lcssa, %._crit_edge ], [ -1, %.split ] ; 3 uses
  call void @_ZN5ImGui8EndChildEv()
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ar = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !339
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1064, ptr noundef nonnull @.str.1066, i32 noundef %i.as)
  %i.at = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.au = load i32, ptr %i.ap, align 8, !tbaa !339
  %i.av = sitofp i32 %i.au to float
  %i.aw = fmul float %i.at, %i.av
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  store float %i.aw, ptr %i.c, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ax = insertelement <2 x float> %i.q, float f0x80800000, i64 0
  store <2 x float> %i.ax, ptr %6, align 8, !tbaa !56
  %i.ay = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1068, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 128, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %i.ay, label %._crit_edge63, label %bb.m

._crit_edge63:                                    ; preds = %bb.g
  %.pre65 = load i32, ptr %i.ap, align 8, !tbaa !339
  %.pre64 = load i32, ptr %i.aq, align 8, !tbaa !325
  %i.az = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef 64, i32 noundef %.pre64, i32 noundef %.pre65)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !342
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !337
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr @_ZZN18ExampleDualListBox22ApplySelectionRequestsEP18ImGuiMultiSelectIOiENUlP26ImGuiSelectionBasicStorageiE_8__invokeES3_i, ptr %i.bd, align 8, !tbaa !338
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.az)
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !339
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge63, %bb.l
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %bb.l ], [ 0, %._crit_edge63 ] ; 3 uses
  %.149.1 = phi i32 [ %.3.1, %bb.l ], [ %.4, %._crit_edge63 ] ; 2 uses
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !342
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.1
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !61 ; 2 uses
  %i.bj = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i32 noundef %i.bi)
  call void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv.1)
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @_ZL12ExampleNames, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !56
  %i.bn = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.bm, i1 noundef zeroext %i.bj, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.bo = call noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
  br i1 %i.bo, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.1
  %i.bp = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 525, i1 noundef zeroext true)
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 627, i1 noundef zeroext true)
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi i32 [ 1, %bb.j ], [ %.149.1, %bb.i ]
  %i.br = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0)
  %spec.select45.1 = select i1 %i.br, i32 1, i32 %.2.1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.1
  %.3.1 = phi i32 [ %.149.1, %.lr.ph.1 ], [ %spec.select45.1, %bb.k ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.bs = load i32, ptr %i.ap, align 8, !tbaa !339
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next.1, %i.bt
  br i1 %i.bu, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !385

._crit_edge.1:                                    ; preds = %bb.l, %._crit_edge63
  %.1.lcssa.1 = phi i32 [ %.4, %._crit_edge63 ], [ %.3.1, %bb.l ]
  %i.bv = call noundef ptr @_ZN5ImGui14EndMultiSelectEv()
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !342
  store ptr %i.bw, ptr %i.bc, align 8, !tbaa !337
  store ptr @_ZZN18ExampleDualListBox22ApplySelectionRequestsEP18ImGuiMultiSelectIOiENUlP26ImGuiSelectionBasicStorageiE_8__invokeES3_i, ptr %i.bd, align 8, !tbaa !338
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef %i.bv)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.1, %bb.g
  %.4.1 = phi i32 [ %.1.lcssa.1, %._crit_edge.1 ], [ %.4, %bb.g ]
  call void @_ZN5ImGui8EndChildEv()
  %i.bx = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void @_ZN5ImGui7NewLineEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.by = call noundef float @_ZN5ImGui14GetFrameHeightEv()
  %i.bz = call noundef float @_ZN5ImGui14GetFrameHeightEv()
  store float %i.by, ptr %8, align 4, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !51
  %i.cb = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1069, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 2 uses
  %i.cc = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1070, ptr noundef nonnull align 4 dereferenceable(8) %8)
  %.5 = select i1 %i.cc, i32 0, i32 %.4.1
  %i.cd = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1071, ptr noundef nonnull align 4 dereferenceable(8) %8)
  %.6 = select i1 %i.cd, i32 1, i32 %.5           ; 3 uses
  %i.ce = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1072, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 2 uses
  %.not.not = or i1 %i.cb, %i.ce
  br i1 %.not.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %not. = xor i1 %i.cb, true
  %spec.select = sext i1 %not. to i32
  %.143 = select i1 %i.ce, i32 1, i32 %spec.select ; 2 uses
  %i.cf = xor i32 %.143, 1
  call void @_ZN18ExampleDualListBox7MoveAllEii(ptr noundef nonnull align 8 dereferenceable(129) %0, i32 noundef %.143, i32 noundef %i.cf)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not44 = icmp eq i32 %.6, -1
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = xor i32 %.6, 1
  call void @_ZN18ExampleDualListBox12MoveSelectedEii(ptr noundef nonnull align 8 dereferenceable(129) %0, i32 noundef %.6, i32 noundef %i.cg)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN5ImGui8EndTableEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  ret void
}

declare void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui22TableSetupScrollFreezeEii(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui15TableHeadersRowEv() local_unnamed_addr #1

declare void @_ZN29ImGuiSelectionExternalStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN29ImGuiSelectionExternalStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #19 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE15selections_data, i64 136), align 8, !tbaa !380 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #31
  unreachable

_ZN26ImGuiSelectionBasicStorageD2Ev.exit:         ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE15selections_data, i64 88), align 8, !tbaa !380 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.1, label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1, label %bb.d

bb.d:                                             ; preds = %_ZN26ImGuiSelectionBasicStorageD2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.d)
          to label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1 unwind label %bb.c

_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1:       ; preds = %bb.d, %_ZN26ImGuiSelectionBasicStorageD2Ev.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE15selections_data, i64 40), align 8, !tbaa !380 ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.2, label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.2, label %bb.e

bb.e:                                             ; preds = %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.e)
          to label %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.2 unwind label %bb.c

_ZN26ImGuiSelectionBasicStorageD2Ev.exit.2:       ; preds = %bb.e, %_ZN26ImGuiSelectionBasicStorageD2Ev.exit.1
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL26ExampleTree_CreateDemoTreev() unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 80) ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 61
  store i8 1, ptr %i.c, align 1, !tbaa !386
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 128, ptr %i.d, align 8, !tbaa !388
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store <2 x float> <float 0.000000e+00, float f0x40490FD8>, ptr %i.e, align 4, !tbaa !56
  %i.f = getelementptr i8, ptr %i.b, i64 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.f, i8 0, i64 54, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.1074, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 1, ptr %i.g, align 4, !tbaa !389
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.h, align 8, !tbaa !390
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.01935 = phi i32 [ 0, %bb.a ], [ %i.co, %._crit_edge ] ; 3 uses
  %.02034 = phi i32 [ 1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.i = lshr i32 %.01935, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZL26ExampleTree_CreateDemoTreevE14category_names, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !121
  %i.m = and i32 %.01935, 1
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 28, ptr noundef nonnull @.str.1075, ptr noundef %i.l, i32 noundef %i.m) #30 ; 0 uses
  %i.o = add nsw i32 %.02034, 1                   ; 2 uses
  %i.p = call fastcc noundef ptr @_ZL22ExampleTree_CreateNodePKciP15ExampleTreeNode(ptr noundef nonnull %i.a, i32 noundef %i.o, ptr noundef nonnull %i.b) ; 6 uses
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #32
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 44 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 8 uses
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 28, ptr noundef nonnull @.str.1076, i32 noundef 0) #30 ; 0 uses
  %i.w = add nsw i32 %.02034, 2
  %i.x = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 80) ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.x, i8 0, i64 61, i1 false)
  store i8 1, ptr %i.y, align 1, !tbaa !386
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i32 128, ptr %i.z, align 8, !tbaa !388
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  store <2 x float> <float 0.000000e+00, float f0x40490FD8>, ptr %i.aa, align 4, !tbaa !56
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 28, ptr noundef nonnull @.str.1078, ptr noundef nonnull %i.a) #30 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 %i.w, ptr %i.ac, align 4, !tbaa !389
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.p, ptr %i.ad, align 8, !tbaa !391
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !392 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !390
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !393
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %._ZN8ImVectorIP15ExampleTreeNodeE7reserveEi.exit_crit_edge.i.i.peel

._ZN8ImVectorIP15ExampleTreeNodeE7reserveEi.exit_crit_edge.i.i.peel: ; preds = %.lr.ph
  %.pre.i.i.peel = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !319
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ai = add nsw i32 %i.ae, 1
  %.not.i.i.i.peel = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.peel, label %_ZNK8ImVectorIP15ExampleTreeNodeE14_grow_capacityEi.exit.i.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = sdiv i32 %i.ae, 2
  %i.ak = add nsw i32 %i.aj, %i.ae
  br label %_ZNK8ImVectorIP15ExampleTreeNodeE14_grow_capacityEi.exit.i.i.peel

_ZNK8ImVectorIP15ExampleTreeNodeE14_grow_capacityEi.exit.i.i.peel: ; preds = %bb.e, %bb.d
  %i.al = phi i32 [ %i.ak, %bb.e ], [ 8, %bb.d ]
  %i.am = call noundef i32 @llvm.smax.i32(i32 %i.al, i32 %i.ai) ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ao) ; 3 uses
  %i.aq = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !319 ; 2 uses
  %.not6.i.i.i.peel = icmp eq ptr %i.aq, null
end_hunk_3
