Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #30
  %i.bgy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 9) #30 ; 0 uses
  %i.bgz = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  store <2 x float> zeroinitializer, ptr %33, align 8, !tbaa !46
  %i.bha = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.o, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 9), i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %33) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #30
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.pp

bb.pp:                                            ; preds = %.preheader73.i, %bb.po
  call void @_ZN5ImGui7SpacingEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  store <2 x float> zeroinitializer, ptr %34, align 8, !tbaa !46
  %i.bhb = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.933, i32 noundef 3, i32 noundef 1937, ptr noundef nonnull align 4 dereferenceable(8) %34, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br i1 %i.bhb, label %.preheader72.i, label %bb.pq

.preheader72.i:                                   ; preds = %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bhc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 0) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bhd = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bhe = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bhf = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bhg = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bhh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 1) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bhi = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bhj = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 1), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bhk = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bhl = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bhm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 2) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bhn = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bho = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 2), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bhp = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bhq = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bhr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 3) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bhs = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bht = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 3), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bhu = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bhv = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bhw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 4) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bhx = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bhy = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 4), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bhz = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bia = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bib = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 5) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bic = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bid = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 5), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bie = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bif = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.big = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 6) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bih = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bii = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 6), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bij = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bik = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.bil = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 7) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bim = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bin = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 7), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bio = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.bip = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.biq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 8) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.bir = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bis = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 8), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.bit = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.biu = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  %i.biv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.932, i32 noundef 9) #30 ; 0 uses
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.biw = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.bix = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef nonnull %i.p, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_0, i64 9), i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %35) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  %i.biy = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.934)
  %i.biz = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.935)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.pq

bb.pq:                                            ; preds = %.preheader72.i, %bb.pp
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pn
  %i.bja = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.780)
  br i1 %i.bja, label %bb.ps, label %bb.qo

bb.ps:                                            ; preds = %bb.pr
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2549, ptr noundef nonnull @.str.936)
  %i.bjb = call noundef double @_ZN5ImGui7GetTimeEv()
  %i.bjc = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZZL28DemoWindowWidgetsSelectablesvE8selected_1, i32 noundef 0, i64 noundef 16) #32
  %i.bjd = icmp eq ptr %i.bjc, null               ; 2 uses
  br i1 %i.bjd, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  %i.bje = fptrunc double %i.bjb to float         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  %i.bjf = fmul float %i.bje, 2.000000e+00
  %i.bjg = call float @cosf(float noundef %i.bjf) #30
  %i.bjh = fmul float %i.bje, 3.000000e+00
  %i.bji = call float @sinf(float noundef %i.bjh) #30
  %i.bjj = insertelement <2 x float> poison, float %i.bjg, i64 0
  %i.bjk = insertelement <2 x float> %i.bjj, float %i.bji, i64 1
  %i.bjl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bjk, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float 5.000000e-01))
  store <2 x float> %i.bjl, ptr %36, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 39, ptr noundef nonnull align 4 dereferenceable(8) %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.bjm = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.396, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %i.bjn = shufflevector <2 x float> %i.bjm, <2 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %.preheader71.i

.preheader71.i:                                   ; preds = %.split.us.i, %bb.pu
  %indvars.iv.i50 = phi i64 [ 0, %bb.pu ], [ %indvars.iv.next.i51, %.split.us.i ] ; 5 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr @_ZZL28DemoWindowWidgetsSelectablesvE8selected_1, i64 %indvars.iv.i50 ; 32 uses
  %cond.i = icmp eq i64 %indvars.iv.i50, 0
  %i.bjp = getelementptr i8, ptr %i.bjo, i64 -4   ; 2 uses
  %.not67.i = icmp eq i64 %indvars.iv.i50, 3      ; 4 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjo, i64 4 ; 4 uses
  br i1 %cond.i, label %.preheader71.split.us.preheader.i, label %.preheader71.split.preheader.i

.preheader71.split.us.preheader.i:                ; preds = %.preheader71.i
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  %i.bjr = load i8, ptr %i.bjo, align 16, !tbaa !120
  %i.bjs = icmp ne i8 %i.bjr, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.bjt = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.bjs, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.bjt, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %.preheader71.split.us.preheader.i
  %i.bju = load i8, ptr %i.bjo, align 16, !tbaa !120
  %i.bjv = xor i8 %i.bju, 1
  store i8 %i.bjv, ptr %i.bjo, align 16, !tbaa !120
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1 ; 2 uses
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !120
  %i.bjy = xor i8 %i.bjx, 1
  store i8 %i.bjy, ptr %i.bjw, align 1, !tbaa !120
  %i.bjz = load i8, ptr %i.bjq, align 4, !tbaa !120
  %i.bka = xor i8 %i.bjz, 1
  store i8 %i.bka, ptr %i.bjq, align 4, !tbaa !120
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %.preheader71.split.us.preheader.i
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1 ; 5 uses
  %i.bkc = load i8, ptr %i.bkb, align 1, !tbaa !120
  %i.bkd = icmp ne i8 %i.bkc, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.bke = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.bkd, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.bke, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.bkf = load i8, ptr %i.bkb, align 1, !tbaa !120
  %i.bkg = xor i8 %i.bkf, 1
  store i8 %i.bkg, ptr %i.bkb, align 1, !tbaa !120
  %i.bkh = load i8, ptr %i.bjo, align 16, !tbaa !120
  %i.bki = xor i8 %i.bkh, 1
  store i8 %i.bki, ptr %i.bjo, align 16, !tbaa !120
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjo, i64 2 ; 2 uses
  %i.bkk = load i8, ptr %i.bkj, align 2, !tbaa !120
  %i.bkl = xor i8 %i.bkk, 1
  store i8 %i.bkl, ptr %i.bkj, align 2, !tbaa !120
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bjo, i64 5 ; 2 uses
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !120
  %i.bko = xor i8 %i.bkn, 1
  store i8 %i.bko, ptr %i.bkm, align 1, !tbaa !120
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pw
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2)
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 2 ; 5 uses
  %i.bkq = load i8, ptr %i.bkp, align 2, !tbaa !120
  %i.bkr = icmp ne i8 %i.bkq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.bks = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.bkr, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.bks, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.bkt = load i8, ptr %i.bkp, align 2, !tbaa !120
  %i.bku = xor i8 %i.bkt, 1
  store i8 %i.bku, ptr %i.bkp, align 2, !tbaa !120
  %i.bkv = load i8, ptr %i.bkb, align 1, !tbaa !120
  %i.bkw = xor i8 %i.bkv, 1
  store i8 %i.bkw, ptr %i.bkb, align 1, !tbaa !120
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bjo, i64 3 ; 2 uses
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !120
  %i.bkz = xor i8 %i.bky, 1
  store i8 %i.bkz, ptr %i.bkx, align 1, !tbaa !120
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bjo, i64 6 ; 2 uses
  %i.blb = load i8, ptr %i.bla, align 2, !tbaa !120
  %i.blc = xor i8 %i.blb, 1
  store i8 %i.blc, ptr %i.bla, align 2, !tbaa !120
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3)
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bjo, i64 3 ; 3 uses
  %i.ble = load i8, ptr %i.bld, align 1, !tbaa !120
  %i.blf = icmp ne i8 %i.ble, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.blg = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.blf, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.blg, label %bb.qb, label %.split.us.i

bb.qb:                                            ; preds = %bb.qa
  %i.blh = load i8, ptr %i.bld, align 1, !tbaa !120
  %i.bli = xor i8 %i.blh, 1
  store i8 %i.bli, ptr %i.bld, align 1, !tbaa !120
  %i.blj = load i8, ptr %i.bkp, align 2, !tbaa !120
  %i.blk = xor i8 %i.blj, 1
  store i8 %i.blk, ptr %i.bkp, align 2, !tbaa !120
  br label %.split.us.sink.split.i

.loopexit:                                        ; preds = %.split.us.i, %.split.us.i.thread
  br i1 %i.bjd, label %bb.qm, label %bb.qn

.split.us.sink.split.i:                           ; preds = %bb.ql, %bb.qb
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bjo, i64 7 ; 2 uses
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !120
  %i.bln = xor i8 %i.blm, 1
  store i8 %i.bln, ptr %i.bll, align 1, !tbaa !120
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.qk, %.split.us.sink.split.i, %bb.qa
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, 4
  br i1 %exitcond.not.i52, label %.loopexit, label %.preheader71.i, !llvm.loop !374

.preheader71.split.preheader.i:                   ; preds = %.preheader71.i
  %indvars.iv.i50.tr = trunc nuw nsw i64 %indvars.iv.i50 to i32
  %i.blo = shl nuw nsw i32 %indvars.iv.i50.tr, 2  ; 4 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.blo)
  %i.blp = load i8, ptr %i.bjo, align 4, !tbaa !120
  %i.blq = icmp ne i8 %i.blp, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.blr = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.blq, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.blr, label %bb.qc, label %bb.qe

bb.qc:                                            ; preds = %.preheader71.split.preheader.i
  %i.bls = load i8, ptr %i.bjo, align 4, !tbaa !120
  %i.blt = xor i8 %i.bls, 1
  store i8 %i.blt, ptr %i.bjo, align 4, !tbaa !120
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1 ; 2 uses
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !120
  %i.blw = xor i8 %i.blv, 1
  store i8 %i.blw, ptr %i.blu, align 1, !tbaa !120
  %i.blx = load i8, ptr %i.bjp, align 4, !tbaa !120
  %i.bly = xor i8 %i.blx, 1
  store i8 %i.bly, ptr %i.bjp, align 4, !tbaa !120
  br i1 %.not67.i, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.blz = load i8, ptr %i.bjq, align 4, !tbaa !120
  %i.bma = xor i8 %i.blz, 1
  store i8 %i.bma, ptr %i.bjq, align 4, !tbaa !120
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc, %.preheader71.split.preheader.i
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bmb = or disjoint i32 %i.blo, 1
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bmb)
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bjo, i64 1 ; 5 uses
  %i.bmd = load i8, ptr %i.bmc, align 1, !tbaa !120
  %i.bme = icmp ne i8 %i.bmd, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.bmf = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.bme, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.bmf, label %bb.qf, label %bb.qh

bb.qf:                                            ; preds = %bb.qe
  %i.bmg = load i8, ptr %i.bmc, align 1, !tbaa !120
  %i.bmh = xor i8 %i.bmg, 1
  store i8 %i.bmh, ptr %i.bmc, align 1, !tbaa !120
  %i.bmi = load i8, ptr %i.bjo, align 4, !tbaa !120
  %i.bmj = xor i8 %i.bmi, 1
  store i8 %i.bmj, ptr %i.bjo, align 4, !tbaa !120
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bjo, i64 2 ; 2 uses
  %i.bml = load i8, ptr %i.bmk, align 2, !tbaa !120
  %i.bmm = xor i8 %i.bml, 1
  store i8 %i.bmm, ptr %i.bmk, align 2, !tbaa !120
  %i.bmn = getelementptr i8, ptr %i.bjo, i64 -3   ; 2 uses
  %i.bmo = load i8, ptr %i.bmn, align 1, !tbaa !120
  %i.bmp = xor i8 %i.bmo, 1
  store i8 %i.bmp, ptr %i.bmn, align 1, !tbaa !120
  br i1 %.not67.i, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bjo, i64 5 ; 2 uses
  %i.bmr = load i8, ptr %i.bmq, align 1, !tbaa !120
  %i.bms = xor i8 %i.bmr, 1
  store i8 %i.bms, ptr %i.bmq, align 1, !tbaa !120
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qf, %bb.qe
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bmt = or disjoint i32 %i.blo, 2
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bmt)
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bjo, i64 2 ; 5 uses
  %i.bmv = load i8, ptr %i.bmu, align 2, !tbaa !120
  %i.bmw = icmp ne i8 %i.bmv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.bmx = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.bmw, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.bmx, label %bb.qi, label %bb.qk

bb.qi:                                            ; preds = %bb.qh
  %i.bmy = load i8, ptr %i.bmu, align 2, !tbaa !120
  %i.bmz = xor i8 %i.bmy, 1
  store i8 %i.bmz, ptr %i.bmu, align 2, !tbaa !120
  %i.bna = load i8, ptr %i.bmc, align 1, !tbaa !120
  %i.bnb = xor i8 %i.bna, 1
  store i8 %i.bnb, ptr %i.bmc, align 1, !tbaa !120
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bjo, i64 3 ; 2 uses
  %i.bnd = load i8, ptr %i.bnc, align 1, !tbaa !120
  %i.bne = xor i8 %i.bnd, 1
  store i8 %i.bne, ptr %i.bnc, align 1, !tbaa !120
  %i.bnf = getelementptr i8, ptr %i.bjo, i64 -2   ; 2 uses
  %i.bng = load i8, ptr %i.bnf, align 2, !tbaa !120
  %i.bnh = xor i8 %i.bng, 1
  store i8 %i.bnh, ptr %i.bnf, align 2, !tbaa !120
  br i1 %.not67.i, label %bb.qk, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bjo, i64 6 ; 2 uses
  %i.bnj = load i8, ptr %i.bni, align 2, !tbaa !120
  %i.bnk = xor i8 %i.bnj, 1
  store i8 %i.bnk, ptr %i.bni, align 2, !tbaa !120
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.qi, %bb.qh
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bnl = or disjoint i32 %i.blo, 3
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.bnl)
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bjo, i64 3 ; 3 uses
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !120
  %i.bno = icmp ne i8 %i.bnn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  store <2 x float> %i.bjn, ptr %37, align 8, !tbaa !46
  %i.bnp = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.396, i1 noundef zeroext %i.bno, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #30
  br i1 %i.bnp, label %bb.ql, label %.split.us.i

bb.ql:                                            ; preds = %bb.qk
end_hunk_0
