Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
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
  %i.cgo = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, align 4, !tbaa !51
  %i.cgp = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.1243, i32 noundef %i.cgo)
  br i1 %i.cgp, label %bb.xj, label %bb.xo

bb.xj:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i92
  %i.cgq = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, align 4, !tbaa !51
  %i.cgr = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.1244, i32 noundef %i.cgq)
  br i1 %i.cgr, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !46
  %i.cgs = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1245, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xj
  %i.cgt = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags, align 4, !tbaa !51
  %i.cgu = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull @.str.1246, i32 noundef %i.cgt)
  br i1 %i.cgu, label %bb.xm, label %bb.xn

bb.xm:                                            ; preds = %bb.xl
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !46
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
  %i.chb = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
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
  %i.chg = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
  %84 = and i32 %i.chg, 2
  %.not34.1.i = icmp eq i32 %84, 0
  %spec.select.1.i = select i1 %.not34.1.i, i32 2240, i32 2241
  %i.chh = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %spec.select.1.i, ptr noundef nonnull @.str.1255, i32 noundef 1)
  %i.chi = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chi, label %bb.xy, label %bb.xz

bb.xy:                                            ; preds = %bb.xx
  %i.chj = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.1.i = select i1 %i.chj, i32 %.1.i88, i32 1
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %.1.1.i = phi i32 [ %spec.select35.1.i, %bb.xy ], [ %.1.i88, %bb.xx ] ; 2 uses
  br i1 %i.chh, label %bb.ya, label %bb.yb

bb.ya:                                            ; preds = %bb.xz
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yb

bb.yb:                                            ; preds = %bb.ya, %bb.xz
  %i.chk = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
  %85 = and i32 %i.chk, 4
  %.not34.2.i = icmp eq i32 %85, 0
  %spec.select.2.i = select i1 %.not34.2.i, i32 2240, i32 2241
  %i.chl = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 2 to ptr), i32 noundef %spec.select.2.i, ptr noundef nonnull @.str.1255, i32 noundef 2)
  %i.chm = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chm, label %bb.yc, label %bb.yd

bb.yc:                                            ; preds = %bb.yb
  %i.chn = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.2.i = select i1 %i.chn, i32 %.1.1.i, i32 2
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.1.2.i = phi i32 [ %spec.select35.2.i, %bb.yc ], [ %.1.1.i, %bb.yb ] ; 2 uses
  br i1 %i.chl, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yd
  %i.cho = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
  %86 = and i32 %i.cho, 8
  %.not34.3.i = icmp eq i32 %86, 0
  %spec.select.3.i = select i1 %.not34.3.i, i32 2240, i32 2241
  %i.chp = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 3 to ptr), i32 noundef %spec.select.3.i, ptr noundef nonnull @.str.1255, i32 noundef 3)
  %i.chq = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chq, label %bb.yg, label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  %i.chr = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.3.i = select i1 %i.chr, i32 %.1.2.i, i32 3
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  %.1.3.i = phi i32 [ %spec.select35.3.i, %bb.yg ], [ %.1.2.i, %bb.yf ] ; 2 uses
  br i1 %i.chp, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %i.chs = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
  %87 = and i32 %i.chs, 16
  %.not34.4.i = icmp eq i32 %87, 0
  %spec.select.4.i = select i1 %.not34.4.i, i32 2240, i32 2241
  %i.cht = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 4 to ptr), i32 noundef %spec.select.4.i, ptr noundef nonnull @.str.1255, i32 noundef 4)
  %i.chu = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chu, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  %i.chv = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.4.i = select i1 %i.chv, i32 %.1.3.i, i32 4
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  %.1.4.i = phi i32 [ %spec.select35.4.i, %bb.yk ], [ %.1.3.i, %bb.yj ] ; 2 uses
  br i1 %i.cht, label %bb.ym, label %bb.yn

bb.ym:                                            ; preds = %bb.yl
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yl
  %i.chw = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
  %88 = and i32 %i.chw, 32
  %.not34.5.i = icmp eq i32 %88, 0
  %spec.select.5.i = select i1 %.not34.5.i, i32 2240, i32 2241
  %i.chx = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 5 to ptr), i32 noundef %spec.select.5.i, ptr noundef nonnull @.str.1255, i32 noundef 5)
  %i.chy = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0)
  br i1 %i.chy, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  %i.chz = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv()
  %spec.select35.5.i = select i1 %i.chz, i32 %.1.4.i, i32 5
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yo, %bb.yn
  %.1.5.i = phi i32 [ %spec.select35.5.i, %bb.yo ], [ %.1.4.i, %bb.yn ] ; 2 uses
  br i1 %i.chx, label %bb.yq, label %bb.yr

bb.yq:                                            ; preds = %bb.yp
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1256)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yp
  %.not.i89 = icmp eq i32 %.1.5.i, -1
  br i1 %.not.i89, label %bb.ys, label %.sink.split.i90

.sink.split.i90:                                  ; preds = %bb.yr
  %i.cia = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 260
  %i.cic = load i8, ptr %i.cib, align 4, !tbaa !124, !range !19, !noundef !20
  %i.cid = trunc nuw i8 %i.cic to i1
  %i.cie = shl nuw nsw i32 1, %.1.5.i
  %i.cif = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4
  %i.cig = select i1 %i.cid, i32 %i.cif, i32 0
  %.sink.i91 = xor i32 %i.cig, %i.cie
  store i32 %.sink.i91, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !51
  br label %bb.ys

bb.ys:                                            ; preds = %.sink.split.i90, %bb.yr
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.xr
  %i.cih = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1257)
  br i1 %i.cih, label %bb.yu, label %bb.zz

bb.yu:                                            ; preds = %bb.yt
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4321, ptr noundef nonnull @.str.1258)
  %i.cii = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1259, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 128) ; 0 uses
  %i.cij = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1260, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 64) ; 0 uses
  %i.cik = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1261, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 2048) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.cil = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.cil, label %bb.yv, label %_ZL10HelpMarkerPKc.exit37.i76

bb.yv:                                            ; preds = %bb.yu
  %i.cim = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cin = fmul float %i.cim, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cin)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1262, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit37.i76

_ZL10HelpMarkerPKc.exit37.i76:                    ; preds = %bb.yv, %bb.yu
  %i.cio = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1263, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 4096) ; 0 uses
  %i.cip = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1264, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 8192) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ciq = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ciq, label %bb.yw, label %_ZL10HelpMarkerPKc.exit38.i77

bb.yw:                                            ; preds = %_ZL10HelpMarkerPKc.exit37.i76
  %i.cir = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cis = fmul float %i.cir, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cis)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1265, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit38.i77

_ZL10HelpMarkerPKc.exit38.i77:                    ; preds = %bb.yw, %_ZL10HelpMarkerPKc.exit37.i76
  %i.cit = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1266, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 16384) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ciu = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ciu, label %bb.yx, label %_ZL10HelpMarkerPKc.exit39.i78

bb.yx:                                            ; preds = %_ZL10HelpMarkerPKc.exit38.i77
  %i.civ = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ciw = fmul float %i.civ, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ciw)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1267, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit39.i78

_ZL10HelpMarkerPKc.exit39.i78:                    ; preds = %bb.yx, %_ZL10HelpMarkerPKc.exit38.i77
  %i.cix = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1268, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 4) ; 0 uses
  %i.ciy = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1269, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 2) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ciz = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ciz, label %bb.yy, label %_ZL10HelpMarkerPKc.exit40.i79

bb.yy:                                            ; preds = %_ZL10HelpMarkerPKc.exit39.i78
  %i.cja = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cjb = fmul float %i.cja, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cjb)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1270, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit40.i79

_ZL10HelpMarkerPKc.exit40.i79:                    ; preds = %bb.yy, %_ZL10HelpMarkerPKc.exit39.i78
  %i.cjc = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1271, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 1024) ; 0 uses
  %i.cjd = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1272, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 131072) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.cje = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.cje, label %bb.yz, label %_ZL10HelpMarkerPKc.exit41.i80

bb.yz:                                            ; preds = %_ZL10HelpMarkerPKc.exit40.i79
  %i.cjf = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.cjg = fmul float %i.cjf, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cjg)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1239, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit41.i80

_ZL10HelpMarkerPKc.exit41.i80:                    ; preds = %bb.yz, %_ZL10HelpMarkerPKc.exit40.i79
  %i.cjh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1240, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 262144) ; 0 uses
  %i.cji = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1241, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 524288) ; 0 uses
  %i.cjj = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1242, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 1048576) ; 0 uses
  %i.cjk = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1273, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position) ; 0 uses
  %i.cjl = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1274, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop) ; 0 uses
  %i.cjm = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cjn = trunc nuw i8 %i.cjm to i1
  br i1 %i.cjn, label %bb.za, label %.peel.begin.i

bb.za:                                            ; preds = %_ZL10HelpMarkerPKc.exit41.i80
  %i.cjo = call noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv()
  call void @_ZN5ImGui8UnindentEf(float noundef %i.cjo)
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.za, %_ZL10HelpMarkerPKc.exit41.i80
  %i.cjp = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.cjq = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef null, i32 noundef %i.cjp, ptr noundef nonnull @.str.1255, i32 noundef 0)
  %i.cjr = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cjs = trunc nuw i8 %i.cjr to i1
  br i1 %i.cjs, label %bb.zb, label %bb.zd

bb.zb:                                            ; preds = %.peel.begin.i
  %i.cjt = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.cjt, label %bb.zc, label %bb.zd

bb.zc:                                            ; preds = %bb.zb
  %i.cju = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %bb.zb, %.peel.begin.i
  br i1 %i.cjq, label %bb.ze, label %.peel.next.i81

bb.ze:                                            ; preds = %bb.zd
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cjv = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next.i81

.peel.next.i81:                                   ; preds = %bb.ze, %bb.zd
  %i.cjw = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.cjx = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %i.cjw, ptr noundef nonnull @.str.1255, i32 noundef 1)
  %i.cjy = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cjz = trunc nuw i8 %i.cjy to i1
  br i1 %i.cjz, label %bb.zf, label %bb.zh

bb.zf:                                            ; preds = %.peel.next.i81
  %i.cka = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.cka, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  %i.ckb = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf, %.peel.next.i81
  br i1 %i.cjx, label %bb.zi, label %.peel.next48.i

bb.zi:                                            ; preds = %bb.zh
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ckc = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next48.i

.peel.next48.i:                                   ; preds = %bb.zi, %bb.zh
  %i.ckd = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.cke = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 2 to ptr), i32 noundef %i.ckd, ptr noundef nonnull @.str.1255, i32 noundef 2)
  %i.ckf = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
end_hunk_0
