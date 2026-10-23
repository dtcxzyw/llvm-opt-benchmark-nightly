Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
bb.ln:                                            ; preds = %bb.lm
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %i.akk = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  %i.akl = icmp eq i32 %i.akk, 10                 ; 2 uses
  %i.akm = icmp eq i64 %.2.i30, 10
  %i.akn = select i1 %i.akm, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !46
  %i.ako = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.539, i1 noundef zeroext %i.akl, i32 noundef %i.akn, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.ako, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  store i32 10, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  br i1 %i.akl, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq
  %i.akp = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  %i.akq = icmp eq i32 %i.akp, 11                 ; 2 uses
  %i.akr = icmp eq i64 %.2.i30, 11
  %i.aks = select i1 %i.akr, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !46
  %i.akt = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.540, i1 noundef zeroext %i.akq, i32 noundef %i.aks, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.akt, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  store i32 11, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  br i1 %i.akq, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.aku = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  %i.akv = icmp eq i32 %i.aku, 12                 ; 2 uses
  %i.akw = icmp eq i64 %.2.i30, 12
  %i.akx = select i1 %i.akw, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !46
  %i.aky = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.541, i1 noundef zeroext %i.akv, i32 noundef %i.akx, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.aky, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  store i32 12, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  br i1 %i.akv, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %bb.ly
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %i.akz = load i32, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  %i.ala = icmp eq i32 %i.akz, 13                 ; 2 uses
  %i.alb = icmp eq i64 %.2.i30, 13
  %i.alc = select i1 %i.alb, i32 32, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !46
  %i.ald = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.542, i1 noundef zeroext %i.ala, i32 noundef %i.alc, ptr noundef nonnull align 4 dereferenceable(8) %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  br i1 %i.ald, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  store i32 13, ptr @_ZZL26DemoWindowWidgetsListBoxesvE17item_selected_idx, align 4, !tbaa !51
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  br i1 %i.ala, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  call void @_ZN5ImGui19SetItemDefaultFocusEv()
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  call void @_ZN5ImGui10EndListBoxEv()
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %_ZL10HelpMarkerPKc.exit.i31
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL26DemoWindowWidgetsListBoxesv.exit

_ZL26DemoWindowWidgetsListBoxesv.exit:            ; preds = %_ZL23DemoWindowWidgetsImagesv.exit, %bb.mf
  %i.ale = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.791)
  br i1 %i.ale, label %bb.mg, label %_ZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowData.exit

bb.mg:                                            ; preds = %_ZL26DemoWindowWidgetsListBoxesv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2023, ptr noundef nonnull @.str.792)
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.793)
  %i.alf = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.794, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21)) ; 0 uses
  %i.alg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21), align 1, !tbaa !378, !range !19, !noundef !20
  %i.alh = trunc nuw i8 %i.alg to i1
  br i1 %i.alh, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.ali = call noundef i32 @_ZN5ImGui12GetItemFlagsEv()
  store i32 %i.ali, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !379
  %.pre.i38 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21), align 1, !tbaa !378, !range !19
  %i.alj = icmp eq i8 %.pre.i38, 0
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.alk = phi i1 [ %i.alj, %bb.mh ], [ false, %bb.mg ]
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.alk)
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.all = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.795, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), i32 noundef 128) ; 0 uses
  %i.alm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.796, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), i32 noundef 256) ; 0 uses
  call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  call void @_ZN5ImGui11EndDisabledEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.797)
  %i.aln = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.798, ptr noundef nonnull @_ZZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowDataE3str, i64 noundef 32, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.799, ptr noundef nonnull @_ZZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowDataE3str)
  %i.alo = call noundef zeroext i1 @_ZN5ImGui8InputIntEPKcPiiii(ptr noundef nonnull @.str.800, ptr noundef nonnull @_ZZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowDataE1i, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.alp = load i32, ptr @_ZZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowDataE1i, align 4, !tbaa !51
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.801, i32 noundef %i.alp)
  %i.alq = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.802, ptr noundef nonnull @_ZZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowDataE1f, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.alr = load float, ptr @_ZZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowDataE1f, align 4, !tbaa !46
  %i.als = fpext float %i.alr to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.803, double noundef %i.als)
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowData.exit

_ZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowData.exit: ; preds = %_ZL26DemoWindowWidgetsListBoxesv.exit, %bb.mi
  %i.alt = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.804)
  br i1 %i.alt, label %bb.mj, label %_ZL32DemoWindowWidgetsMultiComponentsv.exit

bb.mj:                                            ; preds = %_ZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowData.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2061, ptr noundef nonnull @.str.805)
  %i.alu = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.758, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, i32 noundef 4096) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.806)
  %i.alv = call noundef zeroext i1 @_ZN5ImGui11InputFloat2EPKcPfS1_i(ptr noundef nonnull @.str.807, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.alw = call noundef zeroext i1 @_ZN5ImGui9InputInt2EPKcPii(ptr noundef nonnull @.str.808, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, i32 noundef 0) ; 0 uses
  %i.alx = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.aly = call noundef zeroext i1 @_ZN5ImGui10DragFloat2EPKcPffffS1_i(ptr noundef nonnull @.str.809, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef %i.alx) ; 0 uses
  %i.alz = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.ama = call noundef zeroext i1 @_ZN5ImGui8DragInt2EPKcPifiiS1_i(ptr noundef nonnull @.str.810, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 255, ptr noundef null, i32 noundef %i.alz) ; 0 uses
  %i.amb = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amc = call noundef zeroext i1 @_ZN5ImGui12SliderFloat2EPKcPfffS1_i(ptr noundef nonnull @.str.811, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef %i.amb) ; 0 uses
  %i.amd = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.ame = call noundef zeroext i1 @_ZN5ImGui10SliderInt2EPKcPiiiS1_i(ptr noundef nonnull @.str.812, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, i32 noundef 0, i32 noundef 255, ptr noundef null, i32 noundef %i.amd) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.813)
  %i.amf = call noundef zeroext i1 @_ZN5ImGui11InputFloat3EPKcPfS1_i(ptr noundef nonnull @.str.453, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.amg = call noundef zeroext i1 @_ZN5ImGui9InputInt3EPKcPii(ptr noundef nonnull @.str.814, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, i32 noundef 0) ; 0 uses
  %i.amh = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.ami = call noundef zeroext i1 @_ZN5ImGui10DragFloat3EPKcPffffS1_i(ptr noundef nonnull @.str.815, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef %i.amh) ; 0 uses
  %i.amj = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amk = call noundef zeroext i1 @_ZN5ImGui8DragInt3EPKcPifiiS1_i(ptr noundef nonnull @.str.816, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 255, ptr noundef null, i32 noundef %i.amj) ; 0 uses
  %i.aml = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amm = call noundef zeroext i1 @_ZN5ImGui12SliderFloat3EPKcPfffS1_i(ptr noundef nonnull @.str.817, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef %i.aml) ; 0 uses
  %i.amn = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amo = call noundef zeroext i1 @_ZN5ImGui10SliderInt3EPKcPiiiS1_i(ptr noundef nonnull @.str.818, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, i32 noundef 0, i32 noundef 255, ptr noundef null, i32 noundef %i.amn) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.819)
  %i.amp = call noundef zeroext i1 @_ZN5ImGui11InputFloat4EPKcPfS1_i(ptr noundef nonnull @.str.820, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.amq = call noundef zeroext i1 @_ZN5ImGui9InputInt4EPKcPii(ptr noundef nonnull @.str.821, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, i32 noundef 0) ; 0 uses
  %i.amr = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.ams = call noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef nonnull @.str.822, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, float noundef f0x3C23D70A, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef %i.amr) ; 0 uses
  %i.amt = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amu = call noundef zeroext i1 @_ZN5ImGui8DragInt4EPKcPifiiS1_i(ptr noundef nonnull @.str.823, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 255, ptr noundef null, i32 noundef %i.amt) ; 0 uses
  %i.amv = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amw = call noundef zeroext i1 @_ZN5ImGui12SliderFloat4EPKcPfffS1_i(ptr noundef nonnull @.str.824, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef null, i32 noundef %i.amv) ; 0 uses
  %i.amx = load i32, ptr @_ZZL32DemoWindowWidgetsMultiComponentsvE5flags, align 4, !tbaa !51
  %i.amy = call noundef zeroext i1 @_ZN5ImGui10SliderInt4EPKcPiiiS1_i(ptr noundef nonnull @.str.825, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5vec4i, i32 noundef 0, i32 noundef 255, ptr noundef null, i32 noundef %i.amx) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.826)
  %i.amz = call noundef zeroext i1 @_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_i(ptr noundef nonnull @.str.827, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5begin, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE3end, float noundef 2.500000e-01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.828, ptr noundef nonnull @.str.829, i32 noundef 1536) ; 0 uses
  %i.ana = call noundef zeroext i1 @_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i(ptr noundef nonnull @.str.830, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE7begin_i, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5end_i, float noundef 5.000000e+00, i32 noundef 0, i32 noundef 1000, ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.832, i32 noundef 0) ; 0 uses
  %i.anb = call noundef zeroext i1 @_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i(ptr noundef nonnull @.str.833, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE7begin_i, ptr noundef nonnull @_ZZL32DemoWindowWidgetsMultiComponentsvE5end_i, float noundef 5.000000e+00, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.832, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL32DemoWindowWidgetsMultiComponentsv.exit

_ZL32DemoWindowWidgetsMultiComponentsv.exit:      ; preds = %_ZL25DemoWindowWidgetsLiveEditP19ImGuiDemoWindowData.exit, %bb.mj
  %i.anc = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.834)
  br i1 %i.anc, label %bb.mk, label %_ZL25DemoWindowWidgetsPlottingv.exit

bb.mk:                                            ; preds = %_ZL32DemoWindowWidgetsMultiComponentsv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2114, ptr noundef nonnull @.str.835)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.836)
  %i.and = call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.837, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui9SeparatorEv()
  %i.ane = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.838, ptr noundef nonnull @_ZZL25DemoWindowWidgetsPlottingvE7animate) ; 0 uses
  call void @_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i(ptr noundef nonnull @.str.839, ptr noundef nonnull @_ZZL25DemoWindowWidgetsPlottingvE3arr, i32 noundef 7, i32 noundef 0, ptr noundef null, float noundef f0x7F7FFFFF, float noundef f0x7F7FFFFF, <2 x float> zeroinitializer, i32 noundef 4)
  call void @_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i(ptr noundef nonnull @.str.840, ptr noundef nonnull @_ZZL25DemoWindowWidgetsPlottingvE3arr, i32 noundef 7, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 1.000000e+00, <2 x float> <float 0.000000e+00, float 8.000000e+01>, i32 noundef 4)
  %i.anf = load i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE7animate, align 1, !tbaa !35, !range !19, !noundef !20
  %84 = trunc nuw i8 %i.anf to i1
  %i.ang = load double, ptr @_ZZL25DemoWindowWidgetsPlottingvE12refresh_time, align 8 ; 2 uses
  %85 = fcmp une double %i.ang, 0.000000e+00
  %or.cond.not.i = select i1 %84, i1 %85, i1 false
  br i1 %or.cond.not.i, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.anh = call noundef double @_ZN5ImGui7GetTimeEv() ; 2 uses
  store double %i.anh, ptr @_ZZL25DemoWindowWidgetsPlottingvE12refresh_time, align 8, !tbaa !381
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %i.ani = phi double [ %i.ang, %bb.mk ], [ %i.anh, %bb.ml ]
  %i.anj = call noundef double @_ZN5ImGui7GetTimeEv()
  %i.ank = fcmp olt double %i.ani, %i.anj
  br i1 %i.ank, label %.lr.ph.i, label %.preheader.i39

.preheader.i39:                                   ; preds = %.lr.ph.i, %bb.mm
  %i.anl = load float, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, align 16, !tbaa !46
  %i.anm = fadd float %i.anl, 0.000000e+00
  %i.ann = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 4), align 4, !tbaa !46
  %i.ano = fadd float %i.anm, %i.ann
  %i.anp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 8), align 8, !tbaa !46
  %i.anq = fadd float %i.ano, %i.anp
  %i.anr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 12), align 4, !tbaa !46
  %i.ans = fadd float %i.anq, %i.anr
  %i.ant = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 16), align 16, !tbaa !46
  %i.anu = fadd float %i.ans, %i.ant
  %i.anv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 20), align 4, !tbaa !46
  %i.anw = fadd float %i.anu, %i.anv
  %i.anx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 24), align 8, !tbaa !46
  %i.any = fadd float %i.anw, %i.anx
  %i.anz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 28), align 4, !tbaa !46
  %i.aoa = fadd float %i.any, %i.anz
  %i.aob = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 32), align 16, !tbaa !46
  %i.aoc = fadd float %i.aoa, %i.aob
  %i.aod = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 36), align 4, !tbaa !46
  %i.aoe = fadd float %i.aoc, %i.aod
  %i.aof = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 40), align 8, !tbaa !46
  %i.aog = fadd float %i.aoe, %i.aof
  %i.aoh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 44), align 4, !tbaa !46
  %i.aoi = fadd float %i.aog, %i.aoh
  %i.aoj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 48), align 16, !tbaa !46
  %i.aok = fadd float %i.aoi, %i.aoj
  %i.aol = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 52), align 4, !tbaa !46
  %i.aom = fadd float %i.aok, %i.aol
  %i.aon = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 56), align 8, !tbaa !46
  %i.aoo = fadd float %i.aom, %i.aon
  %i.aop = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 60), align 4, !tbaa !46
  %i.aoq = fadd float %i.aoo, %i.aop
  %i.aor = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 64), align 16, !tbaa !46
  %i.aos = fadd float %i.aoq, %i.aor
  %i.aot = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 68), align 4, !tbaa !46
  %i.aou = fadd float %i.aos, %i.aot
  %i.aov = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 72), align 8, !tbaa !46
  %i.aow = fadd float %i.aou, %i.aov
  %i.aox = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 76), align 4, !tbaa !46
  %i.aoy = fadd float %i.aow, %i.aox
  %i.aoz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 80), align 16, !tbaa !46
  %i.apa = fadd float %i.aoy, %i.aoz
  %i.apb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 84), align 4, !tbaa !46
  %i.apc = fadd float %i.apa, %i.apb
  %i.apd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 88), align 8, !tbaa !46
  %i.ape = fadd float %i.apc, %i.apd
  %i.apf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 92), align 4, !tbaa !46
  %i.apg = fadd float %i.ape, %i.apf
  %i.aph = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 96), align 16, !tbaa !46
  %i.api = fadd float %i.apg, %i.aph
  %i.apj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 100), align 4, !tbaa !46
  %i.apk = fadd float %i.api, %i.apj
  %i.apl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 104), align 8, !tbaa !46
  %i.apm = fadd float %i.apk, %i.apl
  %i.apn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 108), align 4, !tbaa !46
  %i.apo = fadd float %i.apm, %i.apn
  %i.app = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 112), align 16, !tbaa !46
  %i.apq = fadd float %i.apo, %i.app
  %i.apr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 116), align 4, !tbaa !46
  %i.aps = fadd float %i.apq, %i.apr
  %i.apt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 120), align 8, !tbaa !46
  %i.apu = fadd float %i.aps, %i.apt
  %i.apv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 124), align 4, !tbaa !46
  %i.apw = fadd float %i.apu, %i.apv
  %i.apx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 128), align 16, !tbaa !46
  %i.apy = fadd float %i.apw, %i.apx
  %i.apz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 132), align 4, !tbaa !46
  %i.aqa = fadd float %i.apy, %i.apz
  %i.aqb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 136), align 8, !tbaa !46
  %i.aqc = fadd float %i.aqa, %i.aqb
  %i.aqd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 140), align 4, !tbaa !46
  %i.aqe = fadd float %i.aqc, %i.aqd
  %i.aqf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 144), align 16, !tbaa !46
  %i.aqg = fadd float %i.aqe, %i.aqf
  %i.aqh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 148), align 4, !tbaa !46
  %i.aqi = fadd float %i.aqg, %i.aqh
  %i.aqj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 152), align 8, !tbaa !46
  %i.aqk = fadd float %i.aqi, %i.aqj
  %i.aql = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 156), align 4, !tbaa !46
  %i.aqm = fadd float %i.aqk, %i.aql
  %i.aqn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 160), align 16, !tbaa !46
  %i.aqo = fadd float %i.aqm, %i.aqn
  %i.aqp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 164), align 4, !tbaa !46
  %i.aqq = fadd float %i.aqo, %i.aqp
  %i.aqr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 168), align 8, !tbaa !46
  %i.aqs = fadd float %i.aqq, %i.aqr
  %i.aqt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 172), align 4, !tbaa !46
  %i.aqu = fadd float %i.aqs, %i.aqt
  %i.aqv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 176), align 16, !tbaa !46
  %i.aqw = fadd float %i.aqu, %i.aqv
  %i.aqx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 180), align 4, !tbaa !46
  %i.aqy = fadd float %i.aqw, %i.aqx
  %i.aqz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 184), align 8, !tbaa !46
  %i.ara = fadd float %i.aqy, %i.aqz
  %i.arb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 188), align 4, !tbaa !46
  %i.arc = fadd float %i.ara, %i.arb
  %i.ard = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 192), align 16, !tbaa !46
  %i.are = fadd float %i.arc, %i.ard
  %i.arf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 196), align 4, !tbaa !46
  %i.arg = fadd float %i.are, %i.arf
  %i.arh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 200), align 8, !tbaa !46
  %i.ari = fadd float %i.arg, %i.arh
  %i.arj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 204), align 4, !tbaa !46
  %i.ark = fadd float %i.ari, %i.arj
  %i.arl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 208), align 16, !tbaa !46
  %i.arm = fadd float %i.ark, %i.arl
  %i.arn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 212), align 4, !tbaa !46
  %i.aro = fadd float %i.arm, %i.arn
  %i.arp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 216), align 8, !tbaa !46
  %i.arq = fadd float %i.aro, %i.arp
  %i.arr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 220), align 4, !tbaa !46
  %i.ars = fadd float %i.arq, %i.arr
  %i.art = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 224), align 16, !tbaa !46
  %i.aru = fadd float %i.ars, %i.art
  %i.arv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 228), align 4, !tbaa !46
  %i.arw = fadd float %i.aru, %i.arv
  %i.arx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 232), align 8, !tbaa !46
  %i.ary = fadd float %i.arw, %i.arx
  %i.arz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 236), align 4, !tbaa !46
  %i.asa = fadd float %i.ary, %i.arz
  %i.asb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 240), align 16, !tbaa !46
  %i.asc = fadd float %i.asa, %i.asb
  %i.asd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 244), align 4, !tbaa !46
  %i.ase = fadd float %i.asc, %i.asd
  %i.asf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 248), align 8, !tbaa !46
  %i.asg = fadd float %i.ase, %i.asf
  %i.ash = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 252), align 4, !tbaa !46
  %i.asi = fadd float %i.asg, %i.ash
  %i.asj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 256), align 16, !tbaa !46
  %i.ask = fadd float %i.asi, %i.asj
  %i.asl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 260), align 4, !tbaa !46
  %i.asm = fadd float %i.ask, %i.asl
  %i.asn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 264), align 8, !tbaa !46
  %i.aso = fadd float %i.asm, %i.asn
  %i.asp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 268), align 4, !tbaa !46
  %i.asq = fadd float %i.aso, %i.asp
  %i.asr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 272), align 16, !tbaa !46
  %i.ass = fadd float %i.asq, %i.asr
  %i.ast = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 276), align 4, !tbaa !46
  %i.asu = fadd float %i.ass, %i.ast
  %i.asv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 280), align 8, !tbaa !46
  %i.asw = fadd float %i.asu, %i.asv
  %i.asx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 284), align 4, !tbaa !46
  %i.asy = fadd float %i.asw, %i.asx
  %i.asz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 288), align 16, !tbaa !46
  %i.ata = fadd float %i.asy, %i.asz
  %i.atb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 292), align 4, !tbaa !46
  %i.atc = fadd float %i.ata, %i.atb
  %i.atd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 296), align 8, !tbaa !46
  %i.ate = fadd float %i.atc, %i.atd
  %i.atf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 300), align 4, !tbaa !46
  %i.atg = fadd float %i.ate, %i.atf
  %i.ath = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 304), align 16, !tbaa !46
  %i.ati = fadd float %i.atg, %i.ath
  %i.atj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 308), align 4, !tbaa !46
  %i.atk = fadd float %i.ati, %i.atj
  %i.atl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 312), align 8, !tbaa !46
  %i.atm = fadd float %i.atk, %i.atl
  %i.atn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 316), align 4, !tbaa !46
  %i.ato = fadd float %i.atm, %i.atn
  %i.atp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 320), align 16, !tbaa !46
  %i.atq = fadd float %i.ato, %i.atp
  %i.atr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 324), align 4, !tbaa !46
  %i.ats = fadd float %i.atq, %i.atr
  %i.att = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 328), align 8, !tbaa !46
  %i.atu = fadd float %i.ats, %i.att
  %i.atv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 332), align 4, !tbaa !46
  %i.atw = fadd float %i.atu, %i.atv
  %i.atx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 336), align 16, !tbaa !46
  %i.aty = fadd float %i.atw, %i.atx
  %i.atz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 340), align 4, !tbaa !46
  %i.aua = fadd float %i.aty, %i.atz
  %i.aub = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 344), align 8, !tbaa !46
  %i.auc = fadd float %i.aua, %i.aub
  %i.aud = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 348), align 4, !tbaa !46
  %i.aue = fadd float %i.auc, %i.aud
  %i.auf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 352), align 16, !tbaa !46
  %i.aug = fadd float %i.aue, %i.auf
  %i.auh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL25DemoWindowWidgetsPlottingvE6values, i64 356), align 4, !tbaa !46
  %i.aui = fadd float %i.aug, %i.auh
  %i.auj = fdiv float %i.aui, 9.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #30
  %i.auk = fpext float %i.auj to double
  %i.aul = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) @.str.841, double noundef %i.auk) #30 ; 0 uses
  %i.aum = load i32, ptr @_ZZL25DemoWindowWidgetsPlottingvE13values_offset, align 4, !tbaa !51
  call void @_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i(ptr noundef nonnull @.str.842, ptr noundef nonnull @_ZZL25DemoWindowWidgetsPlottingvE6values, i32 noundef 90, i32 noundef %i.aum, ptr noundef nonnull %i.w, float noundef -1.000000e+00, float noundef 1.000000e+00, <2 x float> <float 0.000000e+00, float 8.000000e+01>, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #30
end_hunk_0
begin_hunk_1_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  %i.za = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13use_drag_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %bb.ih, label %bb.ja

bb.ih:                                            ; preds = %bb.ig
  %i.zc = invoke noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
          to label %bb.ii unwind label %bb.ix

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.zc, label %bb.ij, label %bb.ja

bb.ij:                                            ; preds = %bb.ii
  %i.zd = invoke noundef ptr @_ZN5ImGui18GetDragDropPayloadEv()
          to label %bb.ik unwind label %bb.ix

bb.ik:                                            ; preds = %bb.ij
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %bb.il, label %bb.iu

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store ptr null, ptr %i.j, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i32 0, ptr %i.k, align 4, !tbaa !51
  br i1 %i.yv, label %.preheader, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292:     ; preds = %bb.il
  %i.zf = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 32)
          to label %_ZN8ImVectorIiE9push_backERKi.exit296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN8ImVectorIiE9push_backERKi.exit296:            ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292
  store ptr %i.zf, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  store i32 8, ptr %i.xg, align 4, !tbaa !142
  store i32 %i.xy, ptr %i.zf, align 4
  store i32 1, ptr %25, align 8, !tbaa !141
  br label %.loopexit11

.preheader:                                       ; preds = %bb.il, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297
  %i.zg = phi ptr [ %.pre.i299149, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297 ], [ null, %bb.il ] ; 5 uses
  %i.zh = phi i32 [ %i.zw, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297 ], [ 0, %bb.il ] ; 8 uses
  %i.zi = phi i32 [ %i.aab, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297 ], [ 0, %bb.il ] ; 3 uses
  %i.zj = invoke noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
          to label %bb.im unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.im:                                            ; preds = %.preheader
  br i1 %i.zj, label %bb.in, label %.loopexit11.loopexit

bb.in:                                            ; preds = %bb.im
  %i.zk = load i32, ptr %i.k, align 4, !tbaa !51
  %i.zl = icmp eq i32 %i.zi, %i.zh
  br i1 %i.zl, label %bb.io, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297

bb.io:                                            ; preds = %bb.in
  %i.zm = add nsw i32 %i.zh, 1
  %.not.i.i300 = icmp eq i32 %i.zh, 0
  br i1 %.not.i.i300, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.zn = sdiv i32 %i.zh, 2
  %i.zo = add nsw i32 %i.zn, %i.zh
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301:     ; preds = %bb.ip, %bb.io
  %i.zp = phi i32 [ %i.zo, %bb.ip ], [ 8, %bb.io ]
  %i.zq = call noundef i32 @llvm.smax.i32(i32 %i.zp, i32 %i.zm) ; 3 uses
  %i.zr = sext i32 %i.zq to i64
  %i.zs = shl nsw i64 %i.zr, 2
  %i.zt = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.zs)
          to label %.noexc304 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc304:                                        ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301
  %.not6.i.i302 = icmp eq ptr %i.zg, null
  br i1 %.not6.i.i302, label %.noexc305, label %bb.iq

bb.iq:                                            ; preds = %.noexc304
  %i.zu = sext i32 %i.zh to i64
  %i.zv = shl nsw i64 %i.zu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.zt, ptr nonnull align 4 %i.zg, i64 %i.zv, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.zg)
          to label %..noexc305_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc305_crit_edge:                             ; preds = %bb.iq
  %.pre3.i303.pre = load i32, ptr %25, align 8, !tbaa !141
  br label %.noexc305

.noexc305:                                        ; preds = %..noexc305_crit_edge, %.noexc304
  %.pre3.i303 = phi i32 [ %.pre3.i303.pre, %..noexc305_crit_edge ], [ %i.zh, %.noexc304 ]
  store ptr %i.zt, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  store i32 %i.zq, ptr %i.xg, align 4, !tbaa !142
  br label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297

._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297:   ; preds = %bb.in, %.noexc305
  %.pre.i299149 = phi ptr [ %i.zt, %.noexc305 ], [ %i.zg, %bb.in ] ; 2 uses
  %i.zw = phi i32 [ %i.zq, %.noexc305 ], [ %i.zh, %bb.in ]
  %i.zx = phi i32 [ %.pre3.i303, %.noexc305 ], [ %i.zi, %bb.in ]
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [4 x i8], ptr %.pre.i299149, i64 %i.zy
  store i32 %i.zk, ptr %i.zz, align 4
  %i.aaa = load i32, ptr %25, align 8, !tbaa !141
  %i.aab = add nsw i32 %i.aaa, 1                  ; 2 uses
  store i32 %i.aab, ptr %25, align 8, !tbaa !141
  br label %.preheader, !llvm.loop !443

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %bb.iq, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301, %.loopexit11, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @_ZN8ImVectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %bb.jw

.loopexit11.loopexit:                             ; preds = %bb.im
  %i.aac = shl nsw i32 %i.zi, 2
  %i.aad = sext i32 %i.aac to i64
  br label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit11.loopexit, %_ZN8ImVectorIiE9push_backERKi.exit296
  %i.aae = phi i64 [ %i.aad, %.loopexit11.loopexit ], [ 4, %_ZN8ImVectorIiE9push_backERKi.exit296 ]
  %i.aaf = phi ptr [ %i.zg, %.loopexit11.loopexit ], [ %i.zf, %_ZN8ImVectorIiE9push_backERKi.exit296 ]
  %i.aag = invoke noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1032, ptr noundef %i.aaf, i64 noundef %i.aae, i32 noundef 0)
          to label %bb.ir unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ir:                                            ; preds = %.loopexit11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.aah = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !143 ; 2 uses
  %.not.i307 = icmp eq ptr %i.aah, null
  br i1 %.not.i307, label %_ZN8ImVectorIiED2Ev.exit, label %bb.is

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.aah)
          to label %_ZN8ImVectorIiED2Ev.exit unwind label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aai = landingpad { ptr, i32 }
          catch ptr null
  %i.aaj = extractvalue { ptr, i32 } %i.aai, 0
  call void @__clang_call_terminate(ptr %i.aaj) #31
  unreachable

_ZN8ImVectorIiED2Ev.exit:                         ; preds = %bb.ir, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %bb.iu

bb.iu:                                            ; preds = %_ZN8ImVectorIiED2Ev.exit, %bb.ik
  %i.aak = invoke noundef ptr @_ZN5ImGui18GetDragDropPayloadEv()
          to label %bb.iv unwind label %bb.ix     ; 2 uses

bb.iv:                                            ; preds = %bb.iu
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !183 ; 2 uses
  %i.aan = and i32 %i.aam, -4
  %i.aao = icmp eq i32 %i.aan, 4
  br i1 %i.aao, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %bb.iv
  %i.aap = load ptr, ptr %i.aak, align 8, !tbaa !137
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !51 ; 2 uses
  %i.aar = srem i32 %i.aaq, 28
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.aas
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !101
  invoke void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.966, i32 noundef %i.aaq, ptr noundef %i.aau)
          to label %bb.iz unwind label %bb.ix

bb.ix:                                            ; preds = %bb.id, %bb.ju, %bb.js, %bb.jr, %bb.jp, %bb.jo, %bb.jl, %bb.jj, %bb.je, %bb.jc, %bb.jb, %bb.ij, %bb.ih, %bb.if, %bb.hy, %._crit_edge152, %bb.ht, %bb.hw, %bb.iu, %bb.iz, %bb.iy, %bb.iw
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.iy:                                            ; preds = %bb.iv
  %i.aaw = sdiv i32 %i.aam, 4
  invoke void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1033, i32 noundef %i.aaw)
          to label %bb.iz unwind label %bb.ix

bb.iz:                                            ; preds = %bb.iy, %bb.iw
  invoke void @_ZN5ImGui17EndDragDropSourceEv()
          to label %bb.ja unwind label %bb.ix

bb.ja:                                            ; preds = %bb.iz, %bb.ii, %bb.ig
  %.b204 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  %or.cond5 = and i1 %.0162, %.b204
  br i1 %or.cond5, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  invoke void @_ZN5ImGui7TreePopEv()
          to label %bb.jc unwind label %bb.ix

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.aax = invoke noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 0)
          to label %bb.jd unwind label %bb.ix

bb.jd:                                            ; preds = %bb.jc
  br i1 %i.aax, label %bb.je, label %bb.jn

bb.je:                                            ; preds = %bb.jd
  %i.aay = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE12use_deletion, align 1, !tbaa !35, !range !19, !noundef !20
  %29 = trunc nuw i8 %i.aay to i1
  %i.aaz = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8
  %i.aba = icmp eq i32 %i.aaz, 0
  %not. = xor i1 %29, true
  %i.abb = select i1 %not., i1 true, i1 %i.aba
  invoke void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.abb)
          to label %bb.jf unwind label %bb.ix

bb.jf:                                            ; preds = %bb.je
  %i.abc = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !166
  %i.abd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.1034, i32 noundef %i.abc) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  store <2 x float> zeroinitializer, ptr %26, align 8, !tbaa !46
  %i.abe = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.i, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %26)
          to label %bb.jg unwind label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br i1 %i.abe, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  store i1 true, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jf
  %i.abf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.jw

bb.jj:                                            ; preds = %bb.jh, %bb.jg
  invoke void @_ZN5ImGui11EndDisabledEv()
          to label %bb.jk unwind label %bb.ix

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  store <2 x float> zeroinitializer, ptr %27, align 8, !tbaa !46
  %i.abg = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.907, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %27)
          to label %bb.jl unwind label %bb.jm     ; 0 uses

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  invoke void @_ZN5ImGui8EndPopupEv()
          to label %bb.jn unwind label %bb.ix

bb.jm:                                            ; preds = %bb.jk
  %i.abh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.jw

bb.jn:                                            ; preds = %bb.jl, %bb.jd
  %i.abi = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !35, !range !19, !noundef !20
  %i.abj = trunc nuw i8 %i.abi to i1
  br i1 %i.abj, label %bb.jo, label %bb.ju

bb.jo:                                            ; preds = %bb.jn
  %i.abk = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %bb.jp unwind label %bb.ix     ; 0 uses

bb.jp:                                            ; preds = %bb.jo
  invoke void @_ZN5ImGui16SetNextItemWidthEf(float noundef f0x80800000)
          to label %bb.jq unwind label %bb.ix

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  store <2 x float> zeroinitializer, ptr %28, align 8, !tbaa !46
  invoke void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %28)
          to label %bb.jr unwind label %bb.jt

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  %i.abl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.yc) #32
  %i.abm = invoke noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.1035, ptr noundef nonnull %i.yc, i64 noundef %i.abl, i32 noundef 512, ptr noundef null, ptr noundef null)
          to label %bb.js unwind label %bb.ix     ; 0 uses

bb.js:                                            ; preds = %bb.jr
  invoke void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
          to label %bb.ju unwind label %bb.ix

bb.jt:                                            ; preds = %bb.jq
  %i.abn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.jw

bb.ju:                                            ; preds = %bb.js, %bb.jn
  invoke void @_ZN5ImGui5PopIDEv()
          to label %bb.jv unwind label %bb.ix

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next130 to i32
  %exitcond132.not = icmp eq i32 %i.xq, %lftr.wideiv
  br i1 %exitcond132.not, label %._crit_edge79.loopexit, label %.lr.ph78, !llvm.loop !444

bb.jw:                                            ; preds = %bb.jt, %bb.jm, %bb.ji, %bb.ix, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ic, %bb.hx
  %.pn234.pn.pn.pn = phi { ptr, i32 } [ %i.yu, %bb.hx ], [ %i.yx, %bb.ic ], [ %i.aav, %bb.ix ], [ %i.abf, %bb.ji ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.abh, %bb.jm ], [ %i.abn, %bb.jt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  br label %.loopexit.split-lp13.loopexit.split-lp

bb.jx:                                            ; preds = %._crit_edge79.loopexit, %._crit_edge79, %bb.hq
  %i.abo = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !35, !range !19, !noundef !20
  %i.abp = trunc nuw i8 %i.abo to i1
  br i1 %i.abp, label %bb.jy, label %bb.kb

bb.jy:                                            ; preds = %bb.jx
  invoke void @_ZN5ImGui8EndTableEv()
          to label %bb.jz unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.jz:                                            ; preds = %bb.jy
  %.b203 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b203, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  invoke void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
          to label %bb.kb unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kb:                                            ; preds = %bb.jz, %bb.ka, %bb.jx
  %i.abq = invoke noundef ptr @_ZN5ImGui14EndMultiSelectEv()
          to label %bb.kc unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.kc:                                            ; preds = %bb.kb
  invoke void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.abq)
          to label %bb.kd unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kd:                                            ; preds = %bb.kc
  br i1 %i.vz, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  invoke void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopIiEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.abq, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i32 noundef %i.ws)
          to label %bb.kf unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.b = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  invoke void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
          to label %bb.kh unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.ki

.loopexit.split-lp13.loopexit.split-lp:           ; preds = %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jw
  %.pn234.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234.pn.pn.pn, %bb.jw ], [ %lpad.loopexit.split-lp251, %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.kl

bb.ki:                                            ; preds = %bb.kh, %bb.gz
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.fp
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.a
  ret void

bb.kl:                                            ; preds = %.loopexit.split-lp13.loopexit.split-lp, %bb.hc, %bb.fl, %.loopexit24, %.loopexit.split-lp28.loopexit.split-lp, %bb.do, %bb.da, %bb.cb, %.loopexit.split-lp46, %bb.bf, %bb.at
  %.pn245.pn.pn = phi { ptr, i32 } [ %.pn245.pn, %.loopexit.split-lp46 ], [ %.pn241.pn.pn, %.loopexit.split-lp28.loopexit.split-lp ], [ %.pn234.pn.pn.pn.pn.pn, %.loopexit.split-lp13.loopexit.split-lp ], [ %i.vr, %bb.hc ], [ %i.qz, %bb.fl ], [ %lpad.phi186191, %.loopexit24 ], [ %i.lr, %bb.do ], [ %i.kd, %bb.da ], [ %i.fg, %bb.cb ], [ %i.dy, %bb.bf ], [ %i.da, %bb.at ]
  resume { ptr, i32 } %.pn245.pn.pn
}

declare void @_ZN5ImGui11PopItemFlagEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui23AlignTextToFramePaddingEv() local_unnamed_addr #1

declare void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN5ImGui13PopStyleColorEi(i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui9LabelTextEPKcS1_z(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui17InputTextWithHintEPKcS1_PcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8InputIntEPKcPiiii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11InputDoubleEPKcPdddS1_i(ptr noundef, ptr noundef, double noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11InputFloat3EPKcPfS1_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPKS1_ii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

end_hunk_1
