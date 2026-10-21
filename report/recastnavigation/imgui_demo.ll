Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_demo?download=true
inline.NumInlined: 1163
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle:bb.a
  %i.kv = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.kn, float noundef %i.kt) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.294, double noundef %i.ku, i32 noundef %i.kv) #26
  %i.kw = fmul nnan float %i.kt, 2.000000e+00     ; 2 uses
  %i.kx = fcmp oge float %.sroa.012.0.vec.extract, %i.kw
  %i.ky = select i1 %i.kx, float %.sroa.012.0.vec.extract, float %i.kw ; 2 uses
  %i.kz = fmul float %i.ky, 5.000000e-01
  %i.la = call float @llvm.floor.f32(float %i.kz)
  %i.lb = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.lc = insertelement <2 x float> <float poison, float 7.000000e+01>, float %i.la, i64 0
  %i.ld = fadd <2 x float> %i.lc, %i.lb
  store <2 x float> %i.ld, ptr %13, align 8, !tbaa !50
  %i.le = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #26
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.kn, ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %i.kt, i32 noundef %i.le, i32 noundef 0, float noundef 1.000000e+00) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store float %i.ky, ptr %14, align 4, !tbaa !47
  store float 1.400000e+02, ptr %i.kp, align 4, !tbaa !48
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN5ImGui8EndGroupEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.lf = add nuw nsw i32 %.0159188, 1            ; 2 uses
  %exitcond194.not = icmp eq i32 %i.lf, 8
  br i1 %exitcond194.not, label %bb.cr, label %bb.cs, !llvm.loop !359

.critedge:                                        ; preds = %bb.co, %bb.cr, %bb.cp
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.lg = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.lg, label %bb.ct, label %_ZL10HelpMarkerPKc.exit182

bb.ct:                                            ; preds = %.critedge
  %i.lh = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.li = fmul float %i.lh, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.li) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.295, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit182

_ZL10HelpMarkerPKc.exit182:                       ; preds = %.critedge, %bb.ct
  %i.lj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.lk = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.296, ptr noundef nonnull %i.lj, float noundef 5.000000e-03, float noundef 2.000000e-01, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.lm = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.297, ptr noundef nonnull %i.ll, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.230, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ln = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ln, label %bb.cu, label %_ZL10HelpMarkerPKc.exit183

bb.cu:                                            ; preds = %_ZL10HelpMarkerPKc.exit182
  %i.lo = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.lp = fmul float %i.lo, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.lp) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.298, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit183

_ZL10HelpMarkerPKc.exit183:                       ; preds = %_ZL10HelpMarkerPKc.exit182, %bb.cu
  call void @_ZN5ImGui12PopItemWidthEv() #26
  call void @_ZN5ImGui10EndTabItemEv() #26
  br label %bb.cv

bb.cv:                                            ; preds = %_ZL10HelpMarkerPKc.exit183, %bb.cj
  call void @_ZN5ImGui9EndTabBarEv() #26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_ZL10HelpMarkerPKc.exit
  call void @_ZN5ImGui12PopItemWidthEv() #26
  ret void
}

declare void @_ZN5ImGui3EndEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef ptr @_ZN5ImGui15GetMainViewportEv() local_unnamed_addr #1

declare void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef float @_ZN5ImGui11GetFontSizeEv() local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #1

declare void @_ZN5ImGui13PushItemWidthEf(float noundef) local_unnamed_addr #1

declare void @_ZN5ImGui4TextEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN5ImGui7SpacingEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN5ImGui10BulletTextEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN5ImGui8SameLineEff(float noundef, float noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui13ShowUserGuideEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.299) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.300) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.301) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.302) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.303) #26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !371, !range !22, !noundef !23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.304) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.305) #26
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.306) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.307) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.308) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.309) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.310) #26
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.311) #26
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.312) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.313) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.314) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.315) #26
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.316) #26
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00) #26
  ret void
}

declare noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #5

declare noundef double @_ZN5ImGui7GetTimeEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5ImGui11EndDisabledEv() local_unnamed_addr #1

declare void @_ZN5ImGui7TreePopEv() local_unnamed_addr #1

declare void @_ZN5ImGui10LogButtonsEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN5ImGui14LogToClipboardEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui7LogTextEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN5ImGui9LogFinishEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() local_unnamed_addr #1

declare void @_ZN5ImGui8EndTableEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData() unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca float, align 4                    ; 8 uses
  %i.f = alloca float, align 4                    ; 8 uses
  %i.g = alloca float, align 4                    ; 8 uses
  %i.h = alloca float, align 4                    ; 8 uses
  %i.i = alloca float, align 4                    ; 8 uses
  %i.j = alloca float, align 4                    ; 8 uses
  %i.k = alloca float, align 4                    ; 8 uses
  %i.l = alloca float, align 4                    ; 8 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec4, align 16            ; 8 uses
  %3 = alloca %struct.ImVec4, align 16            ; 8 uses
  %4 = alloca %struct.ImVec4, align 16            ; 8 uses
  %5 = alloca %struct.ImVec4, align 16            ; 8 uses
  %6 = alloca %struct.ImVec2, align 8             ; 8 uses
  %7 = alloca %struct.ImVec2, align 8             ; 15 uses
  %8 = alloca %struct.ImVec2, align 8             ; 16 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 11 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImVec2, align 4            ; 5 uses
  %15 = alloca %struct.ImVec4, align 16           ; 4 uses
  %16 = alloca %struct.ImVec4, align 16           ; 4 uses
  %17 = alloca %struct.ImVec2, align 4            ; 9 uses
  %18 = alloca %struct.ImVec2, align 4            ; 9 uses
  %19 = alloca %struct.ImVec2, align 8            ; 8 uses
  %20 = alloca %struct.ImVec2, align 8            ; 8 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca [16 x i8], align 16               ; 5 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 8            ; 4 uses
  %28 = alloca %struct.ImVec2, align 8            ; 4 uses
  %29 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.o = alloca [32 x i8], align 16               ; 40 uses
  %30 = alloca %struct.ImVec2, align 8            ; 40 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.p = alloca [32 x i8], align 16               ; 40 uses
  %32 = alloca %struct.ImVec2, align 8            ; 40 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 32 uses
  %35 = alloca %struct.ImVec2, align 8            ; 36 uses
  %i.q = alloca [32 x i8], align 16               ; 36 uses
  %36 = alloca %struct.ImVec2, align 8            ; 36 uses
  %i.r = alloca [16 x ptr], align 16              ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 4 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %39 = alloca %struct.ImVec2, align 8            ; 4 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.s = alloca [4 x ptr], align 16               ; 4 uses
  %i.t = alloca [4 x ptr], align 16               ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 4 uses
  %41 = alloca %struct.ImVec2, align 4            ; 5 uses
  %42 = alloca %struct.ImVec2, align 8            ; 4 uses
  %43 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.v = alloca [32 x i8], align 16               ; 4 uses
  %44 = alloca %struct.ImVec2, align 8            ; 4 uses
  %45 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.w = alloca [32 x i8], align 16               ; 4 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 4            ; 5 uses
  %49 = alloca %struct.ImVec2, align 8            ; 56 uses
  %50 = alloca %struct.ImVec2, align 8            ; 4 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca %struct.ImVec4, align 16           ; 4 uses
  %54 = alloca %struct.ImVec4, align 16           ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 4 uses
  %56 = alloca %struct.ImVec2, align 8            ; 4 uses
  %57 = alloca %struct.ImVec2, align 8            ; 4 uses
  %58 = alloca %struct.ImVec4, align 16           ; 4 uses
  %59 = alloca %struct.ImVec4, align 16           ; 4 uses
  %60 = alloca %struct.ImVec2, align 4            ; 29 uses
  %61 = alloca %struct.ImVec2, align 8            ; 32 uses
  %62 = alloca %struct.ImVec2, align 8            ; 32 uses
  %63 = alloca %struct.ImVec2, align 8            ; 32 uses
  %64 = alloca %struct.ImVec4, align 16           ; 32 uses
  %65 = alloca %struct.ImVec4, align 16           ; 32 uses
  %i.x = alloca i32, align 4                      ; 14 uses
  %66 = alloca %struct.ImVec2, align 8            ; 4 uses
  %67 = alloca %struct.ImVec2, align 8            ; 20 uses
  %68 = alloca %struct.ImVec2, align 8            ; 8 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.y = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.y(ptr noundef nonnull @.str.4, i32 noundef 4199, ptr noundef nonnull @.str.58, ptr noundef %i.z) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aa = tail call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull @.str.58, i32 noundef 0) #26
  br i1 %i.aa, label %bb.d, label %bb.wf

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 19), align 1, !tbaa !397, !range !22, !noundef !23
  %i.ac = trunc nuw i8 %i.ab to i1                ; 3 uses
  br i1 %i.ac, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true) #26
  tail call fastcc void @_ZL22DemoWindowWidgetsBasicv()
  tail call fastcc void @_ZL24DemoWindowWidgetsBulletsv()
  tail call fastcc void @_ZL34DemoWindowWidgetsCollapsingHeadersv()
  tail call fastcc void @_ZL27DemoWindowWidgetsComboBoxesv()
  tail call fastcc void @_ZL32DemoWindowWidgetsColorAndPickersv()
  tail call fastcc void @_ZL26DemoWindowWidgetsDataTypesv()
  tail call void @_ZN5ImGui11EndDisabledEv() #26
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  tail call fastcc void @_ZL22DemoWindowWidgetsBasicv()
  tail call fastcc void @_ZL24DemoWindowWidgetsBulletsv()
  tail call fastcc void @_ZL34DemoWindowWidgetsCollapsingHeadersv()
  tail call fastcc void @_ZL27DemoWindowWidgetsComboBoxesv()
  tail call fastcc void @_ZL32DemoWindowWidgetsColorAndPickersv()
  tail call fastcc void @_ZL26DemoWindowWidgetsDataTypesv()
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.ad = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.ad(ptr noundef nonnull @.str.4, i32 noundef 1519, ptr noundef nonnull @.str.662, ptr noundef %i.ae) #26, !inline_history !372
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.663) #26
  br i1 %i.af, label %bb.i, label %_ZL30DemoWindowWidgetsDisableBlocksP19ImGuiDemoWindowData.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.664, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 19)) #26 ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ah = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ah, label %bb.j, label %_ZL10HelpMarkerPKc.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.aj = fmul float %i.ai, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.aj) #26
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.665, ptr noundef null) #26
  tail call void @_ZN5ImGui14PopTextWrapPosEv() #26
  tail call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit.i

_ZL10HelpMarkerPKc.exit.i:                        ; preds = %bb.j, %bb.i
  tail call void @_ZN5ImGui7TreePopEv() #26
  br label %_ZL30DemoWindowWidgetsDisableBlocksP19ImGuiDemoWindowData.exit

_ZL30DemoWindowWidgetsDisableBlocksP19ImGuiDemoWindowData.exit: ; preds = %bb.h, %_ZL10HelpMarkerPKc.exit.i
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL30DemoWindowWidgetsDisableBlocksP19ImGuiDemoWindowData.exit
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL30DemoWindowWidgetsDisableBlocksP19ImGuiDemoWindowData.exit
  %i.ak = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.ak(ptr noundef nonnull @.str.4, i32 noundef 1534, ptr noundef nonnull @.str.666, ptr noundef %i.al) #26, !inline_history !373
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.667) #26
  br i1 %i.am, label %bb.o, label %_ZL28DemoWindowWidgetsDragAndDropv.exit

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not34.i = icmp eq ptr %i.an, null
  br i1 %.not34.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.an(ptr noundef nonnull @.str.4, i32 noundef 1537, ptr noundef nonnull @.str.668, ptr noundef %i.ao) #26, !inline_history !373
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ap = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.669) #26
  br i1 %i.ap, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.aq = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.aq, label %bb.s, label %_ZL10HelpMarkerPKc.exit.i9

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.as = fmul float %i.ar, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.as) #26
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.670, ptr noundef null) #26
  tail call void @_ZN5ImGui14PopTextWrapPosEv() #26
  tail call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit.i9

_ZL10HelpMarkerPKc.exit.i9:                       ; preds = %bb.s, %bb.r
  %i.at = tail call noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef nonnull @.str.448, ptr noundef nonnull @_ZZL28DemoWindowWidgetsDragAndDropvE4col1, i32 noundef 0) #26 ; 0 uses
  %i.au = tail call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.450, ptr noundef nonnull @_ZZL28DemoWindowWidgetsDragAndDropvE4col2, i32 noundef 0) #26 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
bb.tm:                                            ; preds = %_ZL10HelpMarkerPKc.exit43.i
  %i.bhp = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.bhq = fmul float %i.bhp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bhq) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1173, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit44.i

_ZL10HelpMarkerPKc.exit44.i:                      ; preds = %bb.tm, %_ZL10HelpMarkerPKc.exit43.i
  %i.bhr = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1174, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 131072) #26 ; 0 uses
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.bhs = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.bhs, label %bb.tn, label %_ZL10HelpMarkerPKc.exit45.i

bb.tn:                                            ; preds = %_ZL10HelpMarkerPKc.exit44.i
  %i.bht = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.bhu = fmul float %i.bht, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bhu) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1149, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit45.i

_ZL10HelpMarkerPKc.exit45.i:                      ; preds = %bb.tn, %_ZL10HelpMarkerPKc.exit44.i
  %i.bhv = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1150, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 262144) #26 ; 0 uses
  %i.bhw = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1151, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 524288) #26 ; 0 uses
  %i.bhx = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1152, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 1048576) #26 ; 0 uses
  %i.bhy = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1175, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position) #26 ; 0 uses
  %i.bhz = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1176, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE18test_drag_and_drop) #26 ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1030) #26
  %i.bia = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position, align 1, !tbaa !38, !range !22, !noundef !23
  %i.bib = trunc nuw i8 %i.bia to i1
  br i1 %i.bib, label %bb.to, label %.preheader

.preheader:                                       ; preds = %bb.to, %_ZL10HelpMarkerPKc.exit45.i
  br label %bb.tq

bb.to:                                            ; preds = %_ZL10HelpMarkerPKc.exit45.i
  %i.bic = call noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv() #26
  call void @_ZN5ImGui8UnindentEf(float noundef %i.bic) #26
  br label %.preheader

bb.tp:                                            ; preds = %bb.ug
  %.not35.i64 = icmp eq i32 %.3.i61, -1
  br i1 %.not35.i64, label %bb.uh, label %.sink.split.i65

bb.tq:                                            ; preds = %.preheader, %bb.ug
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i62, %bb.ug ], [ 0, %.preheader ] ; 6 uses
  %.02647.i = phi i32 [ %.3.i61, %bb.ug ], [ -1, %.preheader ] ; 4 uses
  %i.bid = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !55
  %i.bie = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !55
  %i.bif = trunc nuw nsw i64 %indvars.iv.i58 to i32 ; 5 uses
  %i.big = lshr i32 %i.bie, %i.bif
  %i.bih = and i32 %i.big, 1
  %spec.select.i59 = or i32 %i.bih, %i.bid        ; 2 uses
  %i.bii = icmp samesign ult i64 %indvars.iv.i58, 3
  br i1 %i.bii, label %bb.tr, label %bb.ub

bb.tr:                                            ; preds = %bb.tq
  %i.bij = inttoptr i64 %indvars.iv.i58 to ptr
  %i.bik = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %i.bij, i32 noundef %spec.select.i59, ptr noundef nonnull @.str.1177, i32 noundef %i.bif) #26
  %i.bil = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0) #26
  br i1 %i.bil, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.bim = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv() #26
  %spec.select38.i = select i1 %i.bim, i32 %.02647.i, i32 %i.bif
  br label %bb.tt

bb.tt:                                            ; preds = %bb.ts, %bb.tr
  %.1.i67 = phi i32 [ %spec.select38.i, %bb.ts ], [ %.02647.i, %bb.tr ] ; 2 uses
  %i.bin = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE18test_drag_and_drop, align 1, !tbaa !38, !range !22, !noundef !23
  %i.bio = trunc nuw i8 %i.bin to i1
  br i1 %i.bio, label %bb.tu, label %bb.tw

bb.tu:                                            ; preds = %bb.tt
  %i.bip = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0) #26
  br i1 %i.bip, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %bb.tu
  %i.biq = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1178, ptr noundef null, i64 noundef 0, i32 noundef 0) #26 ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1179) #26
  call void @_ZN5ImGui17EndDragDropSourceEv() #26
  br label %bb.tw

bb.tw:                                            ; preds = %bb.tv, %bb.tu, %bb.tt
  %i.bir = icmp eq i64 %indvars.iv.i58, 2
  br i1 %i.bir, label %bb.tx, label %bb.tz

bb.tx:                                            ; preds = %bb.tw
  %i.bis = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !55
  %i.bit = and i32 %i.bis, 8192
  %.not37.i68 = icmp eq i32 %i.bit, 0
  br i1 %.not37.i68, label %bb.tz, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.biu = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1146) #26 ; 0 uses
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx, %bb.tw
  br i1 %i.bik, label %bb.ua, label %bb.ug

bb.ua:                                            ; preds = %bb.tz
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1180) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.biv = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.383) #26 ; 0 uses
  call void @_ZN5ImGui7TreePopEv() #26
  br label %bb.ug

bb.ub:                                            ; preds = %bb.tq
  %i.biw = or i32 %spec.select.i59, 264
  %i.bix = inttoptr i64 %indvars.iv.i58 to ptr
  %i.biy = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull %i.bix, i32 noundef %i.biw, ptr noundef nonnull @.str.1181, i32 noundef %i.bif) #26 ; 0 uses
  %i.biz = call noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef 0) #26
  br i1 %i.biz, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.bja = call noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv() #26
  %spec.select39.i = select i1 %i.bja, i32 %.02647.i, i32 %i.bif
  br label %bb.ud

bb.ud:                                            ; preds = %bb.uc, %bb.ub
  %.2.i60 = phi i32 [ %spec.select39.i, %bb.uc ], [ %.02647.i, %bb.ub ] ; 3 uses
  %i.bjb = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE18test_drag_and_drop, align 1, !tbaa !38, !range !22, !noundef !23
  %i.bjc = trunc nuw i8 %i.bjb to i1
  br i1 %i.bjc, label %bb.ue, label %bb.ug

bb.ue:                                            ; preds = %bb.ud
  %i.bjd = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0) #26
  br i1 %i.bjd, label %bb.uf, label %bb.ug

bb.uf:                                            ; preds = %bb.ue
  %i.bje = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1178, ptr noundef null, i64 noundef 0, i32 noundef 0) #26 ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1179) #26
  call void @_ZN5ImGui17EndDragDropSourceEv() #26
  br label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue, %bb.ud, %bb.ua, %bb.tz
  %.3.i61 = phi i32 [ %.2.i60, %bb.ud ], [ %.2.i60, %bb.uf ], [ %.2.i60, %bb.ue ], [ %.1.i67, %bb.ua ], [ %.1.i67, %bb.tz ] ; 3 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, 6
  br i1 %exitcond.not.i63, label %bb.tp, label %bb.tq, !llvm.loop !394

.sink.split.i65:                                  ; preds = %bb.tp
  %i.bjf = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 244
  %i.bjh = load i8, ptr %i.bjg, align 4, !tbaa !110, !range !22, !noundef !23
  %i.bji = trunc nuw i8 %i.bjh to i1
  %i.bjj = shl nuw i32 1, %.3.i61
  %i.bjk = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4
  %i.bjl = select i1 %i.bji, i32 %i.bjk, i32 0
  %.sink.i66 = xor i32 %i.bjl, %i.bjj
  store i32 %.sink.i66, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE14selection_mask, align 4, !tbaa !55
  br label %bb.uh

bb.uh:                                            ; preds = %.sink.split.i65, %bb.tp
  %i.bjm = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position, align 1, !tbaa !38, !range !22, !noundef !23
  %i.bjn = trunc nuw i8 %i.bjm to i1
  br i1 %i.bjn, label %bb.ui, label %bb.uj

bb.ui:                                            ; preds = %bb.uh
  %i.bjo = call noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv() #26
  call void @_ZN5ImGui6IndentEf(float noundef %i.bjo) #26
  br label %bb.uj

bb.uj:                                            ; preds = %bb.ui, %bb.uh
  call void @_ZN5ImGui7TreePopEv() #26
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.tg
  call void @_ZN5ImGui7TreePopEv() #26
  br label %_ZL26DemoWindowWidgetsTreeNodesv.exit

_ZL26DemoWindowWidgetsTreeNodesv.exit:            ; preds = %bb.se, %bb.uk
  %i.bjp = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not.i70 = icmp eq ptr %i.bjp, null
  br i1 %.not.i70, label %bb.um, label %bb.ul

bb.ul:                                            ; preds = %_ZL26DemoWindowWidgetsTreeNodesv.exit
  %i.bjq = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.bjp(ptr noundef nonnull @.str.4, i32 noundef 4127, ptr noundef nonnull @.str.1182, ptr noundef %i.bjq) #26, !inline_history !395
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %_ZL26DemoWindowWidgetsTreeNodesv.exit
  %i.bjr = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1183) #26
  br i1 %i.bjr, label %bb.un, label %_ZL32DemoWindowWidgetsVerticalSlidersv.exit

bb.un:                                            ; preds = %bb.um
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> splat (float 4.000000e+00), ptr %0, align 8, !tbaa !50
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x float> <float 1.800000e+01, float 1.600000e+02>, ptr %1, align 8, !tbaa !50
  %i.bjs = call noundef zeroext i1 @_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_i(ptr noundef nonnull @.str.1184, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE9int_value, i32 noundef 0, i32 noundef 5, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1185) #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #26
  %i.bjt = load float, ptr %i.j, align 4, !tbaa !50
  %i.bju = load float, ptr %i.k, align 4, !tbaa !50
  %i.bjv = load float, ptr %i.l, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i.peel.i = insertelement <2 x float> poison, float %i.bjt, i64 0
  %.sroa.0.4.vec.insert.i.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel.i, float %i.bju, i64 1
  %.sroa.3.12.vec.insert.i.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bjv, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %70 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i.peel.i, <2 x float> %.sroa.3.12.vec.insert.i.peel.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %70, ptr %2, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 7, ptr noundef nonnull align 4 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.bjw = load float, ptr %i.g, align 4, !tbaa !50
  %i.bjx = load float, ptr %i.h, align 4, !tbaa !50
  %i.bjy = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i33.peel.i = insertelement <2 x float> poison, float %i.bjw, i64 0
  %.sroa.0.4.vec.insert.i34.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i33.peel.i, float %i.bjx, i64 1
  %.sroa.3.12.vec.insert.i36.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bjy, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %71 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i34.peel.i, <2 x float> %.sroa.3.12.vec.insert.i36.peel.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %71, ptr %3, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.bjz = load float, ptr %i.d, align 4, !tbaa !50
  %i.bka = load float, ptr %i.e, align 4, !tbaa !50
  %i.bkb = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i44.peel.i = insertelement <2 x float> poison, float %i.bjz, i64 0
  %.sroa.0.4.vec.insert.i45.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i44.peel.i, float %i.bka, i64 1
  %.sroa.3.12.vec.insert.i47.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bkb, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %72 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i45.peel.i, <2 x float> %.sroa.3.12.vec.insert.i47.peel.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %72, ptr %4, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 9, ptr noundef nonnull align 4 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F666666, float noundef f0x3F666666, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.bkc = load float, ptr %i.a, align 4, !tbaa !50
  %i.bkd = load float, ptr %i.b, align 4, !tbaa !50
  %i.bke = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i55.peel.i = insertelement <2 x float> poison, float %i.bkc, i64 0
  %.sroa.0.4.vec.insert.i56.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i55.peel.i, float %i.bkd, i64 1
  %.sroa.3.12.vec.insert.i58.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bke, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %73 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i56.peel.i, <2 x float> %.sroa.3.12.vec.insert.i58.peel.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %73, ptr %5, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store <2 x float> <float 1.800000e+01, float 1.600000e+02>, ptr %6, align 8, !tbaa !50
  %i.bkf = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bkg = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bkg, label %bb.up, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.bkh = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bkh, label %bb.up, label %.peel.next.i71

bb.up:                                            ; preds = %bb.uo, %bb.un
  %i.bki = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, align 16, !tbaa !50
  %i.bkj = fpext float %i.bki to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bkj) #26
  br label %.peel.next.i71

.peel.next.i71:                                   ; preds = %bb.up, %bb.uo
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 4) #26
  call void @_ZN5ImGui5PopIDEv() #26
  br label %bb.uz

bb.uq:                                            ; preds = %bb.vc
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1187) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store <2 x float> <float 1.800000e+01, float 5.000000e+01>, ptr %7, align 8, !tbaa !50
  call void @_ZN5ImGui10BeginGroupEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0) #26
  %i.bkk = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bkl = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bkl, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.bkm = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bkm, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %i.bkn = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, align 16, !tbaa !50
  %i.bko = fpext float %i.bkn to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bko) #26
  br label %bb.ut

bb.ut:                                            ; preds = %bb.us, %bb.ur
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1) #26
  %i.bkp = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bkq = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bkq, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.bkr = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bkr, label %bb.uv, label %bb.uw

bb.uv:                                            ; preds = %bb.uu, %bb.ut
  %i.bks = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, align 16, !tbaa !50
  %i.bkt = fpext float %i.bks to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bkt) #26
  br label %bb.uw

bb.uw:                                            ; preds = %bb.uv, %bb.uu
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2) #26
  %i.bku = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bkv = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bkv, label %bb.uy, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.bkw = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bkw, label %bb.uy, label %.peel.next84.i

bb.uy:                                            ; preds = %bb.ux, %bb.uw
  %i.bkx = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, align 16, !tbaa !50
  %i.bky = fpext float %i.bkx to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bky) #26
  br label %.peel.next84.i

.peel.next84.i:                                   ; preds = %bb.uy, %bb.ux
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8EndGroupEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui10BeginGroupEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3) #26
  %i.bkz = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bla = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bla, label %bb.ve, label %bb.vd

bb.uz:                                            ; preds = %bb.vc, %.peel.next.i71
  %indvars.iv.i72 = phi i64 [ 1, %.peel.next.i71 ], [ %indvars.iv.next.i73, %bb.vc ] ; 3 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.blb = trunc nuw nsw i64 %indvars.iv.i72 to i32 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.blb) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.blc = uitofp nneg i32 %i.blb to float
  %i.bld = fdiv float %i.blc, 7.000000e+00        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.bld, float noundef 5.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l) #26
  %i.ble = load float, ptr %i.j, align 4, !tbaa !50
  %i.blf = load float, ptr %i.k, align 4, !tbaa !50
  %i.blg = load float, ptr %i.l, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ble, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.blf, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.blg, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %74 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %74, ptr %2, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 7, ptr noundef nonnull align 4 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.bld, float noundef 6.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.blh = load float, ptr %i.g, align 4, !tbaa !50
  %i.bli = load float, ptr %i.h, align 4, !tbaa !50
  %i.blj = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i33.i = insertelement <2 x float> poison, float %i.blh, i64 0
  %.sroa.0.4.vec.insert.i34.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i33.i, float %i.bli, i64 1
  %.sroa.3.12.vec.insert.i36.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.blj, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %75 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i34.i, <2 x float> %.sroa.3.12.vec.insert.i36.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %75, ptr %3, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.bld, float noundef f0x3F333333, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.blk = load float, ptr %i.d, align 4, !tbaa !50
  %i.bll = load float, ptr %i.e, align 4, !tbaa !50
  %i.blm = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i44.i = insertelement <2 x float> poison, float %i.blk, i64 0
  %.sroa.0.4.vec.insert.i45.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i44.i, float %i.bll, i64 1
  %.sroa.3.12.vec.insert.i47.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.blm, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %76 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i45.i, <2 x float> %.sroa.3.12.vec.insert.i47.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %76, ptr %4, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 9, ptr noundef nonnull align 4 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.bld, float noundef f0x3F666666, float noundef f0x3F666666, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.bln = load float, ptr %i.a, align 4, !tbaa !50
  %i.blo = load float, ptr %i.b, align 4, !tbaa !50
  %i.blp = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i55.i = insertelement <2 x float> poison, float %i.bln, i64 0
  %.sroa.0.4.vec.insert.i56.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i55.i, float %i.blo, i64 1
  %.sroa.3.12.vec.insert.i58.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.blp, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %77 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i56.i, <2 x float> %.sroa.3.12.vec.insert.i58.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %77, ptr %5, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store <2 x float> <float 1.800000e+01, float 1.600000e+02>, ptr %6, align 8, !tbaa !50
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 %indvars.iv.i72 ; 2 uses
  %i.blr = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull %i.blq, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bls = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bls, label %bb.vb, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.blt = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.blt, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va, %bb.uz
  %i.blu = load float, ptr %i.blq, align 4, !tbaa !50
  %i.blv = fpext float %i.blu to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.blv) #26
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.va
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 4) #26
  call void @_ZN5ImGui5PopIDEv() #26
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, 7
  br i1 %exitcond.not.i74, label %bb.uq, label %bb.uz, !llvm.loop !396

bb.vd:                                            ; preds = %.peel.next84.i
  %i.blw = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.blw, label %bb.ve, label %bb.vf

bb.ve:                                            ; preds = %bb.vd, %.peel.next84.i
  %i.blx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), align 4, !tbaa !50
  %i.bly = fpext float %i.blx to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bly) #26
  br label %bb.vf

bb.vf:                                            ; preds = %bb.ve, %bb.vd
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 4) #26
  %i.blz = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bma = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bma, label %bb.vh, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.bmb = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bmb, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %i.bmc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), align 4, !tbaa !50
  %i.bmd = fpext float %i.bmc to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bmd) #26
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %bb.vg
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 5) #26
  %i.bme = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bmf = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bmf, label %bb.vk, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.bmg = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bmg, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj, %bb.vi
  %i.bmh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), align 4, !tbaa !50
  %i.bmi = fpext float %i.bmh to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bmi) #26
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8EndGroupEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui10BeginGroupEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 6) #26
  %i.bmj = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bmk = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bmk, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.bml = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bml, label %bb.vn, label %bb.vo

bb.vn:                                            ; preds = %bb.vm, %bb.vl
  %i.bmm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), align 8, !tbaa !50
  %i.bmn = fpext float %i.bmm to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bmn) #26
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 7) #26
  %i.bmo = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bmp = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bmp, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.bmq = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bmq, label %bb.vq, label %bb.vr

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  %i.bmr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), align 8, !tbaa !50
  %i.bms = fpext float %i.bmr to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bms) #26
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vq, %bb.vp
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 8) #26
  %i.bmt = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bmu = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bmu, label %bb.vt, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.bmv = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bmv, label %bb.vt, label %bb.vu

bb.vt:                                            ; preds = %bb.vs, %bb.vr
  %i.bmw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), align 8, !tbaa !50
  %i.bmx = fpext float %i.bmw to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bmx) #26
  br label %bb.vu

bb.vu:                                            ; preds = %bb.vt, %bb.vs
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8EndGroupEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui10BeginGroupEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 9) #26
  %i.bmy = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bmz = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bmz, label %bb.vw, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.bna = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bna, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %bb.vv, %bb.vu
  %i.bnb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), align 4, !tbaa !50
  %i.bnc = fpext float %i.bnb to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bnc) #26
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %bb.vv
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 10) #26
  %i.bnd = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bne = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bne, label %bb.vz, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.bnf = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bnf, label %bb.vz, label %bb.wa

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  %i.bng = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), align 4, !tbaa !50
  %i.bnh = fpext float %i.bng to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bnh) #26
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 11) #26
  %i.bni = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.268, i32 noundef 0) #26 ; 0 uses
  %i.bnj = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.bnj, label %bb.wc, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.bnk = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0) #26
  br i1 %i.bnk, label %bb.wc, label %bb.wd

bb.wc:                                            ; preds = %bb.wb, %bb.wa
  %i.bnl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), align 4, !tbaa !50
  %i.bnm = fpext float %i.bnl to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.184, double noundef %i.bnm) #26
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %bb.wb
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8EndGroupEv() #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1188) #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0) #26
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 20, float noundef 4.000000e+01) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !50
  %i.bnn = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1189, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1) #26
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 20, float noundef 4.000000e+01) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !50
  %i.bno = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1189, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2) #26
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 20, float noundef 4.000000e+01) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !50
  %i.bnp = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1189, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3) #26
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 20, float noundef 4.000000e+01) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !50
  %i.bnq = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1186, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1189, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #26
  call void @_ZN5ImGui7TreePopEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZL32DemoWindowWidgetsVerticalSlidersv.exit

_ZL32DemoWindowWidgetsVerticalSlidersv.exit:      ; preds = %bb.um, %bb.wd
  br i1 %i.ac, label %bb.we, label %bb.wf

bb.we:                                            ; preds = %_ZL32DemoWindowWidgetsVerticalSlidersv.exit
  call void @_ZN5ImGui11EndDisabledEv() #26
  br label %bb.wf

bb.wf:                                            ; preds = %_ZL32DemoWindowWidgetsVerticalSlidersv.exit, %bb.we, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL16DemoWindowLayoutv() unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca float, align 4                    ; 8 uses
  %i.f = alloca float, align 4                    ; 8 uses
  %i.g = alloca float, align 4                    ; 8 uses
  %i.h = alloca float, align 4                    ; 8 uses
  %i.i = alloca float, align 4                    ; 8 uses
  %0 = alloca %struct.ImVec2, align 4             ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.j = alloca [32 x i8], align 16               ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec4, align 16            ; 4 uses
  %10 = alloca %struct.ImVec4, align 16           ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.k = alloca [4 x ptr], align 16               ; 8 uses
  %14 = alloca %struct.ImVec2, align 8            ; 9 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %20 = alloca %struct.ImVec2, align 8            ; 8 uses
  %i.l = alloca [5 x float], align 16             ; 4 uses
  %21 = alloca %struct.ImVec2, align 4            ; 5 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %23 = alloca %struct.ImVec2, align 8            ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 8            ; 4 uses
  %28 = alloca %struct.ImVec2, align 8            ; 4 uses
  %29 = alloca %struct.ImVec2, align 8            ; 4 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %32 = alloca %struct.ImVec2, align 8            ; 4 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %35 = alloca %struct.ImVec2, align 8            ; 4 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 4 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %39 = alloca %struct.ImVec2, align 8            ; 4 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 4            ; 5 uses
  %42 = alloca %struct.ImVec4, align 16           ; 4 uses
  %43 = alloca %struct.ImVec2, align 4            ; 5 uses
  %44 = alloca %struct.ImVec4, align 16           ; 8 uses
  %45 = alloca %struct.ImVec2, align 8            ; 4 uses
  %46 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 7 uses
  %47 = alloca %struct.ImVec4, align 16           ; 8 uses
  %48 = alloca %struct.ImVec4, align 16           ; 8 uses
  %49 = alloca %struct.ImVec4, align 16           ; 8 uses
  %50 = alloca %struct.ImVec2, align 8            ; 8 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca %struct.ImVec2, align 8            ; 4 uses
  %54 = alloca %struct.ImVec2, align 8            ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 7 uses
  %56 = alloca %struct.ImVec2, align 8            ; 4 uses
  %57 = alloca %struct.ImVec2, align 4            ; 5 uses
  %58 = alloca %struct.ImVec2, align 8            ; 4 uses
  %59 = alloca %struct.ImVec2, align 8            ; 4 uses
  %60 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %61 = alloca %struct.ImVec2, align 8            ; 4 uses
  %62 = alloca %struct.ImVec2, align 8            ; 4 uses
  %63 = alloca %struct.ImVec2, align 8            ; 18 uses
  %64 = alloca %struct.ImVec2, align 8            ; 15 uses
  %65 = alloca %struct.ImVec2, align 8            ; 12 uses
  %66 = alloca %struct.ImVec4, align 16           ; 4 uses
  %67 = alloca %struct.ImVec2, align 8            ; 4 uses
  %68 = alloca %struct.ImVec2, align 8            ; 4 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %70 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.o = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.o(ptr noundef nonnull @.str.4, i32 noundef 4250, ptr noundef nonnull @.str.1190, ptr noundef %i.p) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull @.str.1191, i32 noundef 0) #26
  br i1 %i.q, label %bb.d, label %bb.gm

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not195 = icmp eq ptr %i.r, null
  br i1 %.not195, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.r(ptr noundef nonnull @.str.4, i32 noundef 4254, ptr noundef nonnull @.str.1192, ptr noundef %i.s) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1193) #26
  br i1 %i.t, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1193) #26
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.u, label %bb.h, label %_ZL10HelpMarkerPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.w = fmul float %i.v, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.w) #26
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1194, ptr noundef null) #26
  tail call void @_ZN5ImGui14PopTextWrapPosEv() #26
  tail call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.g, %bb.h
  %i.x = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1195, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE19disable_mouse_wheel) #26 ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1196, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12disable_menu) #26 ; 0 uses
  %i.z = load i8, ptr @_ZZL16DemoWindowLayoutvE19disable_mouse_wheel, align 1, !tbaa !38, !range !22, !noundef !23
  %i.aa = trunc nuw i8 %i.z to i1
  %spec.select = select i1 %i.aa, i32 2064, i32 2048
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.ab = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() #26
  %.sroa.0153.0.vec.extract = extractelement <2 x float> %i.ab, i64 0
  %i.ac = fmul float %.sroa.0153.0.vec.extract, 5.000000e-01
  store float %i.ac, ptr %0, align 4, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 2.600000e+02, ptr %i.ad, align 4, !tbaa !48
  %i.ae = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1197, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0, i32 noundef %spec.select) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @_ZN5ImGui8EndChildEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.af = load i8, ptr @_ZZL16DemoWindowLayoutvE19disable_mouse_wheel, align 1, !tbaa !38, !range !22, !noundef !23
  %i.ag = shl nuw nsw i8 %i.af, 4
  %spec.select223 = zext nneg i8 %i.ag to i32     ; 2 uses
  %i.ah = load i8, ptr @_ZZL16DemoWindowLayoutvE12disable_menu, align 1, !tbaa !38, !range !22, !noundef !23
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = or disjoint i32 %spec.select223, 1024
  %.1164 = select i1 %i.ai, i32 %spec.select223, i32 %i.aj
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef 5.000000e+00) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x float> <float 0.000000e+00, float 2.600000e+02>, ptr %1, align 8, !tbaa !50
  %i.ak = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1199, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 1, i32 noundef %.1164) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.al = load i8, ptr @_ZZL16DemoWindowLayoutvE12disable_menu, align 1, !tbaa !38, !range !22, !noundef !23
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.o, label %bb.k

bb.j:                                             ; preds = %_ZL10HelpMarkerPKc.exit, %bb.j
  %.0160283 = phi i32 [ 0, %_ZL10HelpMarkerPKc.exit ], [ %i.an, %bb.j ] ; 2 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1198, i32 noundef %.0160283) #26
  %i.an = add nuw nsw i32 %.0160283, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, 100
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !402

bb.k:                                             ; preds = %bb.i
  %i.ao = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() #26
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.318, i1 noundef zeroext true) #26
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZL19ShowExampleMenuFilev()
  call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN5ImGui10EndMenuBarEv() #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !50
  %i.aq = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.106, i32 noundef 2, i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef 0.000000e+00) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %i.aq, label %.preheader282, label %bb.q

bb.p:                                             ; preds = %.preheader282
  call void @_ZN5ImGui8EndTableEv() #26
  br label %bb.q

.preheader282:                                    ; preds = %bb.o, %.preheader282
  %.0165284 = phi i32 [ %i.au, %.preheader282 ], [ 0, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.ar = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) @.str.1200, i32 noundef %.0165284) #26 ; 0 uses
  %i.as = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x float> <float f0x80800000, float 0.000000e+00>, ptr %3, align 8, !tbaa !50
  %i.at = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull %i.j, ptr noundef nonnull align 4 dereferenceable(8) %3) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %i.au = add nuw nsw i32 %.0165284, 1            ; 2 uses
  %exitcond304.not = icmp eq i32 %i.au, 100
  br i1 %exitcond304.not, label %bb.p, label %.preheader282, !llvm.loop !403

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN5ImGui8EndChildEv() #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #26
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1201) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.av = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.av, label %bb.r, label %_ZL10HelpMarkerPKc.exit228

bb.r:                                             ; preds = %bb.q
  %i.aw = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.ax = fmul float %i.aw, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ax) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1202, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit228

_ZL10HelpMarkerPKc.exit228:                       ; preds = %bb.q, %bb.r
  %i.ay = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 7) #26
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.ay) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.az = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv() #26
  %i.ba = fmul float %i.az, 8.000000e+00
  store float f0x80800000, ptr %4, align 4, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !48
  %i.bc = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1203, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 9, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.bc, label %.preheader280.preheader, label %.loopexit281

.preheader280.preheader:                          ; preds = %_ZL10HelpMarkerPKc.exit228
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 0) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 1) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 2) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 3) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 4) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 5) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 6) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 7) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 8) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1204, i32 noundef 9) #26
  br label %.loopexit281

.loopexit281:                                     ; preds = %.preheader280.preheader, %_ZL10HelpMarkerPKc.exit228
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1) #26
  call void @_ZN5ImGui8EndChildEv() #26
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1205) #26
  %i.bd = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.be = fmul float %i.bd, 8.000000e+00
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.be) #26
  %i.bf = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.1206, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE10draw_lines, float noundef 2.000000e-01, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZL16DemoWindowLayoutv:bb.a

bb.cz:                                            ; preds = %bb.cx
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.864, i32 noundef %.0171292) #26
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.lv = add nuw nsw i32 %.0171292, 1            ; 2 uses
  %exitcond313.not = icmp eq i32 %i.lv, 100
  br i1 %exitcond313.not, label %.loopexit275, label %bb.cx, !llvm.loop !406

.loopexit275:                                     ; preds = %bb.da, %bb.cw
  %i.lw = call noundef float @_ZN5ImGui10GetScrollYEv() #26
  %i.lx = call noundef float @_ZN5ImGui13GetScrollMaxYEv() #26
  call void @_ZN5ImGui8EndChildEv() #26
  %i.ly = fpext float %i.lw to double
  %i.lz = fpext float %i.lx to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1352, double noundef %i.ly, double noundef %i.lz) #26
  call void @_ZN5ImGui8EndGroupEv() #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond315.not, label %bb.cn, label %bb.co, !llvm.loop !407

bb.db:                                            ; preds = %bb.cn
  %i.ma = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.kx(ptr noundef nonnull @.str.4, i32 noundef 4815, ptr noundef nonnull @.str.1353, ptr noundef %i.ma) #26
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cn
  call void @_ZN5ImGui7SpacingEv() #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.mb = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.mb, label %bb.dd, label %_ZL10HelpMarkerPKc.exit240

bb.dd:                                            ; preds = %bb.dc
  %i.mc = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.md = fmul float %i.mc, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.md) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1354, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit240

_ZL10HelpMarkerPKc.exit240:                       ; preds = %bb.dc, %bb.dd
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1355) #26
  %i.me = getelementptr inbounds nuw i8, ptr %i.kp, i64 132
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %43, i64 4
  br label %bb.df

bb.de:                                            ; preds = %.loopexit
  call void @_ZN5ImGui5PopIDEv() #26
  %i.mh = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not209 = icmp eq ptr %i.mh, null
  br i1 %.not209, label %bb.dr, label %bb.dq

bb.df:                                            ; preds = %_ZL10HelpMarkerPKc.exit240, %.loopexit
  %indvars.iv320 = phi i64 [ 0, %_ZL10HelpMarkerPKc.exit240 ], [ %indvars.iv.next321, %.loopexit ] ; 5 uses
  %i.mi = call noundef float @_ZN5ImGui17GetTextLineHeightEv() #26
  %i.mj = load float, ptr %i.me, align 4, !tbaa !413
  %i.mk = fadd float %i.mi, %i.mj
  %i.ml = load float, ptr %i.mf, align 4, !tbaa !127
  %i.mm = call float @llvm.fmuladd.f32(float %i.ml, float 2.000000e+00, float %i.mk)
  %i.mn = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !38, !range !22, !noundef !23
  %i.mo = zext nneg i8 %i.mn to i32
  %i.mp = shl nuw nsw i32 %i.mo, 14
  %i.mq = or disjoint i32 %i.mp, 2048
  %i.mr = inttoptr i64 %indvars.iv320 to ptr
  %i.ms = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.mr) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  store float -1.000000e+02, ptr %43, align 4, !tbaa !47
  store float %i.mm, ptr %i.mg, align 4, !tbaa !48
  %i.mt = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.ms, ptr noundef nonnull align 4 dereferenceable(8) %43, i32 noundef 1, i32 noundef %i.mq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  br i1 %i.kl, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.mu = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !50
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.mu) #26
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  br i1 %i.ko, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.mv = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv() #26
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
  br i1 %i.ob, label %bb.dt, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit328, %_ZL10HelpMarkerPKc.exit241
  %i.oc = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.od = call noundef float @_ZN5ImGui13GetScrollMaxXEv() #26
  call void @_ZN5ImGui8EndChildEv() #26
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2) #26
  %i.oe = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.997) #26 ; 0 uses
  %i.of = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.of, label %bb.dx, label %bb.dy

bb.dt:                                            ; preds = %_ZL10HelpMarkerPKc.exit241, %.loopexit328
  %.0162297 = phi i32 [ %i.oy, %.loopexit328 ], [ 0, %_ZL10HelpMarkerPKc.exit241 ] ; 6 uses
  %i.og = and i32 %.0162297, 1
  %.not214 = icmp eq i32 %i.og, 0
  %.v = select i1 %.not214, i32 3, i32 9
  %i.oh = mul nuw nsw i32 %.0162297, 1000         ; 2 uses
  %i.oi = mul i32 %.v, %.0162297
  %i.oj = add i32 %i.oi, 10                       ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.oh) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.ok = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.399, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.ol = load float, ptr %i.g, align 4, !tbaa !50
  %i.om = load float, ptr %i.h, align 4, !tbaa !50
  %i.on = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.ol, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.om, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.on, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %71 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i.peel, <2 x float> %.sroa.3.12.vec.insert.i.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %71, ptr %47, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.oo = load float, ptr %i.d, align 4, !tbaa !50
  %i.op = load float, ptr %i.e, align 4, !tbaa !50
  %i.oq = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i244.peel = insertelement <2 x float> poison, float %i.oo, i64 0
  %.sroa.0.4.vec.insert.i245.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i244.peel, float %i.op, i64 1
  %.sroa.3.12.vec.insert.i247.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oq, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %72 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i245.peel, <2 x float> %.sroa.3.12.vec.insert.i247.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %72, ptr %48, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.or = load float, ptr %i.a, align 4, !tbaa !50
  %i.os = load float, ptr %i.b, align 4, !tbaa !50
  %i.ot = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i255.peel = insertelement <2 x float> poison, float %i.or, i64 0
  %.sroa.0.4.vec.insert.i256.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i255.peel, float %i.os, i64 1
  %.sroa.3.12.vec.insert.i258.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ot, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %73 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i256.peel, <2 x float> %.sroa.3.12.vec.insert.i258.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %73, ptr %49, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.ou = uitofp nneg i32 %.0162297 to float
  %i.ov = call float @sinf(float noundef %i.ou) #26
  %.scalar = call float @llvm.fmuladd.f32(float %i.ov, float 2.000000e+01, float 4.000000e+01)
  %i.ow = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.ow, ptr %50, align 8, !tbaa !50
  %i.ox = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1363, ptr noundef nonnull align 4 dereferenceable(8) %50) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %exitcond324.peel.not = icmp ult i32 %i.oj, 2
  br i1 %exitcond324.peel.not, label %.loopexit328, label %.peel.next326

.loopexit328:                                     ; preds = %bb.dw, %bb.dt
  %i.oy = add nuw nsw i32 %.0162297, 1            ; 2 uses
  %i.oz = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !55
  %i.pa = icmp slt i32 %i.oy, %i.oz
  br i1 %i.pa, label %bb.dt, label %._crit_edge, !llvm.loop !410

.peel.next326:                                    ; preds = %bb.dt, %bb.dw
  %.0161296 = phi i32 [ %i.py, %bb.dw ], [ 1, %bb.dt ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.pb = add nuw nsw i32 %.0161296, %i.oh
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.pb) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.pc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.399, i32 noundef %.0161296) #26 ; 0 uses
  %i.pd = urem i32 %.0161296, 15
  %.not216 = icmp eq i32 %i.pd, 0
  br i1 %.not216, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %.peel.next326
  %i.pe = urem i32 %.0161296, 3
  %.not217 = icmp eq i32 %i.pe, 0
  br i1 %.not217, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pf = urem i32 %.0161296, 5
  %.not218 = icmp eq i32 %i.pf, 0
  %i.pg = select i1 %.not218, ptr @.str.1365, ptr %i.m
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %.peel.next326
  %i.ph = phi ptr [ @.str.1363, %.peel.next326 ], [ %i.pg, %bb.dv ], [ @.str.1364, %bb.du ]
  %i.pi = uitofp nneg i32 %.0161296 to float
  %i.pj = fmul nnan float %i.pi, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pj, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.pk = load float, ptr %i.g, align 4, !tbaa !50
  %i.pl = load float, ptr %i.h, align 4, !tbaa !50
  %i.pm = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.pk, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.pl, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pm, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %74 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %74, ptr %47, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pj, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.pn = load float, ptr %i.d, align 4, !tbaa !50
  %i.po = load float, ptr %i.e, align 4, !tbaa !50
  %i.pp = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i244 = insertelement <2 x float> poison, float %i.pn, i64 0
  %.sroa.0.4.vec.insert.i245 = insertelement <2 x float> %.sroa.0.0.vec.insert.i244, float %i.po, i64 1
  %.sroa.3.12.vec.insert.i247 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pp, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %75 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i245, <2 x float> %.sroa.3.12.vec.insert.i247, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %75, ptr %48, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.pj, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.pq = load float, ptr %i.a, align 4, !tbaa !50
  %i.pr = load float, ptr %i.b, align 4, !tbaa !50
  %i.ps = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i255 = insertelement <2 x float> poison, float %i.pq, i64 0
  %.sroa.0.4.vec.insert.i256 = insertelement <2 x float> %.sroa.0.0.vec.insert.i255, float %i.pr, i64 1
  %.sroa.3.12.vec.insert.i258 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ps, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %76 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i256, <2 x float> %.sroa.3.12.vec.insert.i258, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %76, ptr %49, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.pt = add nuw nsw i32 %.0161296, %.0162297
  %i.pu = uitofp nneg i32 %i.pt to float
  %i.pv = call float @sinf(float noundef %i.pu) #26
  %.scalar374 = call float @llvm.fmuladd.f32(float %i.pv, float 2.000000e+01, float 4.000000e+01)
  %i.pw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar374, i64 0
  store <2 x float> %i.pw, ptr %50, align 8, !tbaa !50
  %i.px = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.ph, ptr noundef nonnull align 4 dereferenceable(8) %50) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #26
  call void @_ZN5ImGui5PopIDEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %i.py = add nuw i32 %.0161296, 1                ; 2 uses
  %exitcond324.not = icmp eq i32 %i.oj, %i.py
  br i1 %exitcond324.not, label %.loopexit328, label %.peel.next326, !llvm.loop !411

bb.dx:                                            ; preds = %._crit_edge
  %i.pz = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load float, ptr %i.qa, align 8, !tbaa !138
  %i.qc = fmul float %i.qb, -1.000000e+03
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %._crit_edge
  %.0159 = phi float [ %i.qc, %bb.dx ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1366) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.qd = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.994) #26 ; 0 uses
  %i.qe = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #26
  br i1 %i.qe, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qf = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load float, ptr %i.qg, align 8, !tbaa !138
  %i.qi = fmul float %i.qh, 1.000000e+03
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.1 = phi float [ %i.qi, %bb.dz ], [ %.0159, %bb.dy ] ; 2 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.qj = fpext float %i.oc to double
  %i.qk = fpext float %i.od to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1352, double noundef %i.qj, double noundef %i.qk) #26
  %i.ql = fcmp une float %.1, 0.000000e+00
  br i1 %i.ql, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  store <2 x float> zeroinitializer, ptr %51, align 8, !tbaa !50
  %i.qm = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1362, ptr noundef nonnull align 4 dereferenceable(8) %51, i32 noundef 0, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %i.qn = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.qo = fadd float %.1, %i.qn
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.qo) #26
  call void @_ZN5ImGui8EndChildEv() #26
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  call void @_ZN5ImGui7SpacingEv() #26
  %i.qp = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1367, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window) #26 ; 0 uses
  %i.qq = load i8, ptr @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, align 1, !tbaa !38, !range !22, !noundef !23
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.ed, label %bb.fl

bb.ed:                                            ; preds = %bb.ec
  %i.qs = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !38, !range !22, !noundef !23
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  %i.qu = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !50
  %i.qv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qu, i64 0
  store <2 x float> %i.qv, ptr %52, align 8, !tbaa !50
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %52) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.qw = load i8, ptr @_ZZL16DemoWindowLayoutvE16show_h_scrollbar, align 1, !tbaa !38, !range !22, !noundef !23
  %i.qx = zext nneg i8 %i.qw to i32
  %i.qy = shl nuw nsw i32 %i.qx, 11
  %i.qz = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1368, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, i32 noundef %i.qy) #26 ; 0 uses
  %i.ra = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not210 = icmp eq ptr %i.ra, null
  br i1 %.not210, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rb = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.ra(ptr noundef nonnull @.str.4, i32 noundef 4936, ptr noundef nonnull @.str.1369, ptr noundef %i.rb) #26
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
  %i.rc = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.rc, label %bb.ei, label %_ZL10HelpMarkerPKc.exit266

bb.ei:                                            ; preds = %bb.eh
  %i.rd = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.re = fmul float %i.rd, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.re) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1370, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit266

_ZL10HelpMarkerPKc.exit266:                       ; preds = %bb.eh, %bb.ei
  %i.rf = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1371, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE16show_h_scrollbar) #26 ; 0 uses
  %i.rg = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.383, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE11show_button) #26 ; 0 uses
  %i.rh = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.939, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15show_tree_nodes) #26 ; 0 uses
  %i.ri = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1372, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE17show_text_wrapped) #26 ; 0 uses
  %i.rj = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1373, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_columns) #26 ; 0 uses
  %i.rk = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1374, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_tab_bar) #26 ; 0 uses
  %i.rl = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1375, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE10show_child) #26 ; 0 uses
  %i.rm = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1376, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE21explicit_content_size) #26 ; 0 uses
  %i.rn = call noundef float @_ZN5ImGui10GetScrollXEv() #26
  %i.ro = fpext float %i.rn to double
  %i.rp = call noundef float @_ZN5ImGui13GetScrollMaxXEv() #26
  %i.rq = fpext float %i.rp to double
  %i.rr = call noundef float @_ZN5ImGui10GetScrollYEv() #26
  %i.rs = fpext float %i.rr to double
  %i.rt = call noundef float @_ZN5ImGui13GetScrollMaxYEv() #26
  %i.ru = fpext float %i.rt to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1377, double noundef %i.ro, double noundef %i.rq, double noundef %i.rs, double noundef %i.ru) #26
  %i.rv = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !38, !range !22, !noundef !23
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_ZL10HelpMarkerPKc.exit266
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef 1.000000e+02) #26
  %i.rx = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1378, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15contents_size_x, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.ry = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() #26
  store <2 x float> %i.ry, ptr %55, align 8
  %i.rz = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  %i.sa = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.sb = load <2 x float>, ptr %55, align 8, !tbaa !50
  %i.sc = fadd <2 x float> %i.sb, splat (float 1.000000e+01)
  store <2 x float> %i.sc, ptr %56, align 8, !tbaa !50
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.rz, ptr noundef nonnull align 4 dereferenceable(8) %55, ptr noundef nonnull align 4 dereferenceable(8) %56, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.sd = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  %i.se = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !50
  %i.sf = getelementptr inbounds nuw i8, ptr %57, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  %i.sg = load float, ptr %i.sa, align 4, !tbaa !48
  %i.sh = load <2 x float>, ptr %55, align 8, !tbaa !50
  %i.si = insertelement <2 x float> <float poison, float 1.000000e+01>, float %i.se, i64 0
  %i.sj = fadd <2 x float> %i.sh, %i.si           ; 2 uses
  %i.sk = extractelement <2 x float> %i.sj, i64 0
  %i.sl = fadd float %i.sk, -1.000000e+01
  store float %i.sl, ptr %57, align 4, !tbaa !47
  store float %i.sg, ptr %i.sf, align 4, !tbaa !48
  store <2 x float> %i.sj, ptr %58, align 8, !tbaa !50
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.sd, ptr noundef nonnull align 4 dereferenceable(8) %57, ptr noundef nonnull align 4 dereferenceable(8) %58, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0) #26
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
  %i.sm = load i8, ptr @_ZZL16DemoWindowLayoutvE11show_button, align 1, !tbaa !38, !range !22, !noundef !23
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  store <2 x float> <float 3.000000e+02, float 0.000000e+00>, ptr %60, align 8, !tbaa !50
  %i.so = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1379, ptr noundef nonnull align 4 dereferenceable(8) %60) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.sp = load i8, ptr @_ZZL16DemoWindowLayoutvE15show_tree_nodes, align 1, !tbaa !38, !range !22, !noundef !23
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %bb.en, label %bb.es

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
end_hunk_2
begin_hunk_3_@_ZN5ImGui14PopTextWrapPosEv
declare void @_ZN5ImGui14PopTextWrapPosEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19ShowExampleMenuFilev() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.a(ptr noundef nonnull @.str.4, i32 noundef 8607, ptr noundef nonnull @.str.349, ptr noundef %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.350, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #26 ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.351, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.353, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.354, i1 noundef zeroext true) #26
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.355, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.356, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.357, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.358, i1 noundef zeroext true) #26
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.359, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.361, i1 noundef zeroext true) #26
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL19ShowExampleMenuFilev()
  tail call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  tail call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.362, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.363, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  tail call void @_ZN5ImGui9SeparatorEv() #26
  %i.p = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not16 = icmp eq ptr %i.p, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.p(ptr noundef nonnull @.str.4, i32 noundef 8633, ptr noundef nonnull @.str.364, ptr noundef %i.q) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.365, i1 noundef zeroext true) #26
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_Pbb(ptr noundef nonnull @.str.366, ptr noundef nonnull @.str.268, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE7enabled, i1 noundef zeroext true) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> <float 0.000000e+00, float 6.000000e+01>, ptr %0, align 8, !tbaa !50
  %i.t = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.367, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 0) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 1) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 2) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 3) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 4) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 5) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 6) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 7) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 8) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368, i32 noundef 9) #26
  call void @_ZN5ImGui8EndChildEv() #26
  %i.u = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.369, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  %i.v = call noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef nonnull @.str.370, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1f, float noundef 1.000000e-01, float noundef 0.000000e+00, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  %i.w = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.371, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1n, ptr noundef nonnull @.str.372, i32 noundef -1) #26 ; 0 uses
  call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.x = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not17 = icmp eq ptr %i.x, null
  br i1 %.not17, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.x(ptr noundef nonnull @.str.4, i32 noundef 8650, ptr noundef nonnull @.str.373, ptr noundef %i.y) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.z = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.264, i1 noundef zeroext true) #26
  br i1 %i.z, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aa = call noundef float @_ZN5ImGui17GetTextLineHeightEv() #26
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.r
  %.01120 = phi i32 [ 0, %bb.p ], [ %i.ak, %bb.r ] ; 3 uses
  %i.ad = call noundef ptr @_ZN5ImGui17GetStyleColorNameEi(i32 noundef %.01120) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ae = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() #26
  store <2 x float> %i.ae, ptr %1, align 8
  %i.af = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ag = load <2 x float>, ptr %1, align 8, !tbaa !50
  %i.ah = fadd <2 x float> %i.ac, %i.ag
  store <2 x float> %i.ah, ptr %2, align 8, !tbaa !50
  %i.ai = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %.01120, float noundef 1.000000e+00) #26
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.af, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.ai, float noundef 0.000000e+00, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store <2 x float> %i.ac, ptr %3, align 8, !tbaa !50
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.aj = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef %i.ad, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ak = add nuw nsw i32 %.01120, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, 58
  br i1 %exitcond.not, label %bb.q, label %bb.r, !llvm.loop !446

bb.s:                                             ; preds = %bb.q, %bb.o
  %i.al = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.365, i1 noundef zeroext true) #26
  br i1 %i.al, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not18 = icmp eq ptr %i.am, null
  br i1 %.not18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.am(ptr noundef nonnull @.str.4, i32 noundef 8671, ptr noundef nonnull @.str.374, ptr noundef %i.an) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ao = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.375, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1b) #26 ; 0 uses
  call void @_ZN5ImGui7EndMenuEv() #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ap = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.376, i1 noundef zeroext false) #26 ; 0 uses
  %i.aq = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.377, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) #26 ; 0 uses
  call void @_ZN5ImGui9SeparatorEv() #26
  %i.ar = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.379, i1 noundef zeroext false, i1 noundef zeroext true) #26 ; 0 uses
  ret void
}

declare void @_ZN5ImGui7EndMenuEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_Pbb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5ImGui20DebugStartItemPickerEv() local_unnamed_addr #1

declare void @_ZN5ImGui10EndMenuBarEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef float @_ZN5ImGui17GetTextLineHeightEv() local_unnamed_addr #1

declare void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL22DemoWindowWidgetsBasicv() unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca float, align 4                    ; 8 uses
  %i.f = alloca float, align 4                    ; 8 uses
  %i.g = alloca float, align 4                    ; 8 uses
  %i.h = alloca float, align 4                    ; 8 uses
  %i.i = alloca float, align 4                    ; 8 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 16            ; 8 uses
  %2 = alloca %struct.ImVec4, align 16            ; 8 uses
  %3 = alloca %struct.ImVec4, align 16            ; 8 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.j = alloca [11 x ptr], align 16              ; 4 uses
  %i.k = alloca [9 x ptr], align 16               ; 4 uses
  %i.l = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.l(ptr noundef nonnull @.str.4, i32 noundef 820, ptr noundef nonnull @.str.380, ptr noundef %i.m) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.381) #26
  br i1 %i.n, label %bb.d, label %bb.ay

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.21) #26
  %i.o = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.o(ptr noundef nonnull @.str.4, i32 noundef 825, ptr noundef nonnull @.str.382, ptr noundef %i.p) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !50
  %i.q = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.383, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !55 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %.pre, 1                     ; 2 uses
  store i32 %i.r, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i32 [ %i.r, %bb.g ], [ %.pre, %bb.f ]
  %i.t = and i32 %i.s, 1
  %.not26 = icmp eq i32 %i.t, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.384) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.u = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.u(ptr noundef nonnull @.str.4, i32 noundef 835, ptr noundef nonnull @.str.385, ptr noundef %i.v) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.w = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.386, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5check) #26 ; 0 uses
  %i.x = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.x(ptr noundef nonnull @.str.4, i32 noundef 839, ptr noundef nonnull @.str.387, ptr noundef %i.y) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.z = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.388, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.aa = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.389, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 1) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.ab = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.390, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 2) #26 ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv() #26
  %i.ac = call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.391, ptr noundef nonnull @.str.392) #26 ; 0 uses
  %i.ad = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not29 = icmp eq ptr %i.ad, null
  br i1 %.not29, label %.peel.next, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.ad(ptr noundef nonnull @.str.4, i32 noundef 849, ptr noundef nonnull @.str.393, ptr noundef %i.ae) #26
  br label %.peel.next

.peel.next:                                       ; preds = %bb.n, %bb.o
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.af = load float, ptr %i.g, align 4, !tbaa !50
  %i.ag = load float, ptr %i.h, align 4, !tbaa !50
  %i.ah = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.af, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.ag, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ah, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %6 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i.peel, <2 x float> %.sroa.3.12.vec.insert.i.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %1, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.ai = load float, ptr %i.d, align 4, !tbaa !50
  %i.aj = load float, ptr %i.e, align 4, !tbaa !50
  %i.ak = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i43.peel = insertelement <2 x float> poison, float %i.ai, i64 0
  %.sroa.0.4.vec.insert.i44.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i43.peel, float %i.aj, i64 1
  %.sroa.3.12.vec.insert.i46.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ak, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %7 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i44.peel, <2 x float> %.sroa.3.12.vec.insert.i46.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %2, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.al = load float, ptr %i.a, align 4, !tbaa !50
  %i.am = load float, ptr %i.b, align 4, !tbaa !50
  %i.an = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i54.peel = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert.i55.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i54.peel, float %i.am, i64 1
  %.sroa.3.12.vec.insert.i57.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.an, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %8 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i55.peel, <2 x float> %.sroa.3.12.vec.insert.i57.peel, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %3, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !50
  %i.ao = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.394, ptr noundef nonnull align 4 dereferenceable(8) %4) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #26
  call void @_ZN5ImGui5PopIDEv() #26
  br label %bb.p

.loopexit:                                        ; preds = %bb.p
  call void @_ZN5ImGui23AlignTextToFramePaddingEv() #26
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.395) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.ap = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not30 = icmp eq ptr %i.ap, null
  br i1 %.not30, label %bb.r, label %bb.q

bb.p:                                             ; preds = %.peel.next, %bb.p
  %.076 = phi i32 [ 1, %.peel.next ], [ %i.bc, %bb.p ] ; 3 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void @_ZN5ImGui6PushIDEi(i32 noundef %.076) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.aq = uitofp nneg i32 %.076 to float
  %i.ar = fdiv float %i.aq, 7.000000e+00          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ar, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i) #26
  %i.as = load float, ptr %i.g, align 4, !tbaa !50
  %i.at = load float, ptr %i.h, align 4, !tbaa !50
  %i.au = load float, ptr %i.i, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.at, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.au, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %9 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %1, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ar, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #26
  %i.av = load float, ptr %i.d, align 4, !tbaa !50
  %i.aw = load float, ptr %i.e, align 4, !tbaa !50
  %i.ax = load float, ptr %i.f, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i43 = insertelement <2 x float> poison, float %i.av, i64 0
  %.sroa.0.4.vec.insert.i44 = insertelement <2 x float> %.sroa.0.0.vec.insert.i43, float %i.aw, i64 1
  %.sroa.3.12.vec.insert.i46 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ax, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %10 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i44, <2 x float> %.sroa.3.12.vec.insert.i46, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %2, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ar, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26
  %i.ay = load float, ptr %i.a, align 4, !tbaa !50
  %i.az = load float, ptr %i.b, align 4, !tbaa !50
  %i.ba = load float, ptr %i.c, align 4, !tbaa !50
  %.sroa.0.0.vec.insert.i54 = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.0.4.vec.insert.i55 = insertelement <2 x float> %.sroa.0.0.vec.insert.i54, float %i.az, i64 1
  %.sroa.3.12.vec.insert.i57 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ba, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %11 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i55, <2 x float> %.sroa.3.12.vec.insert.i57, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %3, align 16
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !50
  %i.bb = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.394, ptr noundef nonnull align 4 dereferenceable(8) %4) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3) #26
  call void @_ZN5ImGui5PopIDEv() #26
  %i.bc = add nuw nsw i32 %.076, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !447

bb.q:                                             ; preds = %.loopexit
  %i.bd = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.ap(ptr noundef nonnull @.str.4, i32 noundef 871, ptr noundef nonnull @.str.396, ptr noundef %i.bd) #26
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q
  %i.be = call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 100
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !53
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 8, i1 noundef zeroext true) #26
  %i.bh = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.397, i32 noundef 0) #26
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !55
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !55
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.bg) #26
  %i.bk = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.398, i32 noundef 1) #26
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !55
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !55
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @_ZN5ImGui11PopItemFlagEv() #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  %i.bn = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !55
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.399, i32 noundef %i.bn) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !50
  %i.bo = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.400, ptr noundef nonnull align 4 dereferenceable(8) %5) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull @.str.401) #26
  call void (ptr, ptr, ...) @_ZN5ImGui9LabelTextEPKcS1_z(ptr noundef nonnull @.str.402, ptr noundef nonnull @.str.369) #26
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.403) #26
  %i.bp = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not31 = icmp eq ptr %i.bp, null
  br i1 %.not31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.bp(ptr noundef nonnull @.str.4, i32 noundef 892, ptr noundef nonnull @.str.404, ptr noundef %i.bq) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.405, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4str0, i64 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.bs = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.bs, label %bb.y, label %_ZL10HelpMarkerPKc.exit

bb.y:                                             ; preds = %bb.x
  %i.bt = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.bu = fmul float %i.bt, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.bu) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.406, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.x, %bb.y
  %i.bv = call noundef zeroext i1 @_ZN5ImGui17InputTextWithHintEPKcS1_PcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.407, ptr noundef nonnull @.str.408, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4str1, i64 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) #26 ; 0 uses
  %i.bw = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not32 = icmp eq ptr %i.bw, null
  br i1 %.not32, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZL10HelpMarkerPKc.exit
  %i.bx = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.bw(ptr noundef nonnull @.str.4, i32 noundef 911, ptr noundef nonnull @.str.409, ptr noundef %i.bx) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZL10HelpMarkerPKc.exit
  %i.by = call noundef zeroext i1 @_ZN5ImGui8InputIntEPKcPiiii(ptr noundef nonnull @.str.410, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i0, i32 noundef 1, i32 noundef 100, i32 noundef 0) #26 ; 0 uses
  %i.bz = call noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef nonnull @.str.411, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f0, float noundef f0x3C23D70A, float noundef 1.000000e+00, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  %i.ca = call noundef zeroext i1 @_ZN5ImGui11InputDoubleEPKcPdddS1_i(ptr noundef nonnull @.str.412, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2d0, double noundef f0x3F847AE140000000, double noundef 1.000000e+00, ptr noundef nonnull @.str.413, i32 noundef 0) #26 ; 0 uses
  %i.cb = call noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef nonnull @.str.414, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.415, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.cc = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.cc, label %bb.ab, label %_ZL10HelpMarkerPKc.exit65

bb.ab:                                            ; preds = %bb.aa
  %i.cd = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.ce = fmul float %i.cd, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ce) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.416, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit65

_ZL10HelpMarkerPKc.exit65:                        ; preds = %bb.aa, %bb.ab
  %i.cf = call noundef zeroext i1 @_ZN5ImGui11InputFloat3EPKcPfS1_i(ptr noundef nonnull @.str.417, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5vec4a, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.418) #26
  %i.cg = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not33 = icmp eq ptr %i.cg, null
  br i1 %.not33, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZL10HelpMarkerPKc.exit65
  %i.ch = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.cg(ptr noundef nonnull @.str.4, i32 noundef 934, ptr noundef nonnull @.str.419, ptr noundef %i.ch) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZL10HelpMarkerPKc.exit65
  %i.ci = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.420, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i1, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.cj = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.cj, label %bb.ae, label %_ZL10HelpMarkerPKc.exit66

bb.ae:                                            ; preds = %bb.ad
  %i.ck = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.cl = fmul float %i.ck, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cl) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.421, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit66

_ZL10HelpMarkerPKc.exit66:                        ; preds = %bb.ad, %bb.ae
  %i.cm = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.422, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i2, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.423, i32 noundef 1536) #26 ; 0 uses
  %i.cn = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.424, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i3, float noundef 1.000000e+00, i32 noundef 100, i32 noundef 200, ptr noundef nonnull @.str.399, i32 noundef 256) #26 ; 0 uses
  %i.co = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.425, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f1_0, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.184, i32 noundef 0) #26 ; 0 uses
  %i.cp = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.426, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f2, float noundef f0x38D1B717, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.427, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.428) #26
  %i.cq = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not34 = icmp eq ptr %i.cq, null
  br i1 %.not34, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL10HelpMarkerPKc.exit66
  %i.cr = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.cq(ptr noundef nonnull @.str.4, i32 noundef 953, ptr noundef nonnull @.str.429, ptr noundef %i.cr) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZL10HelpMarkerPKc.exit66
  %i.cs = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.430, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i1_0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ct = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ct, label %bb.ah, label %_ZL10HelpMarkerPKc.exit67

bb.ah:                                            ; preds = %bb.ag
  %i.cu = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.cv = fmul float %i.cu, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.cv) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.431, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit67

_ZL10HelpMarkerPKc.exit67:                        ; preds = %bb.ag, %bb.ah
  %i.cw = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.432, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f1_1, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.433, i32 noundef 0) #26 ; 0 uses
  %i.cx = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.434, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f2_0, float noundef -1.000000e+01, float noundef 1.000000e+01, ptr noundef nonnull @.str.435, i32 noundef 32) #26 ; 0 uses
  %i.cy = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not35 = icmp eq ptr %i.cy, null
  br i1 %.not35, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZL10HelpMarkerPKc.exit67
  %i.cz = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.cy(ptr noundef nonnull @.str.4, i32 noundef 962, ptr noundef nonnull @.str.436, ptr noundef %i.cz) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL10HelpMarkerPKc.exit67
  %i.da = call noundef zeroext i1 @_ZN5ImGui11SliderAngleEPKcPfffS1_i(ptr noundef nonnull @.str.437, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5angle, float noundef -3.600000e+02, float noundef 3.600000e+02, ptr noundef nonnull @.str.228, i32 noundef 0) #26 ; 0 uses
  %i.db = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not36 = icmp eq ptr %i.db, null
  br i1 %.not36, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.db(ptr noundef nonnull @.str.4, i32 noundef 969, ptr noundef nonnull @.str.438, ptr noundef %i.dc) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dd = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE4elem, align 4, !tbaa !55 ; 2 uses
  %or.cond = icmp ult i32 %i.dd, 4
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL22DemoWindowWidgetsBasicv.elems_names, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !88
end_hunk_3
begin_hunk_4_@_ZL26DemoWindowWidgetsDataTypesv:bb.a
  %i.do = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.613, i32 noundef 3, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u16_v, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.611, i32 noundef 0) #26 ; 0 uses
  %i.dp = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.614, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef nonnull %i.u, ptr noundef nonnull %i.w, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  %i.dq = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.615, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  %i.dr = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.616, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  %i.ds = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.617, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef nonnull %i.u, ptr noundef nonnull %i.w, ptr noundef nonnull @.str.618, i32 noundef 0) #26 ; 0 uses
  %i.dt = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.619, i32 noundef 5, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u32_v, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.611, i32 noundef 0) #26 ; 0 uses
  %i.du = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.620, i32 noundef 5, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u32_v, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.611, i32 noundef 0) #26 ; 0 uses
  %i.dv = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.621, i32 noundef 5, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u32_v, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull @.str.611, i32 noundef 0) #26 ; 0 uses
  %i.dw = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.622, i32 noundef 6, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s64_v, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.623, i32 noundef 0) #26 ; 0 uses
  %i.dx = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.624, i32 noundef 6, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s64_v, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.623, i32 noundef 0) #26 ; 0 uses
  %i.dy = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.625, i32 noundef 6, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s64_v, ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull @.str.623, i32 noundef 0) #26 ; 0 uses
  %i.dz = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.626, i32 noundef 7, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u64_v, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.627, i32 noundef 0) #26 ; 0 uses
  %i.ea = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.628, i32 noundef 7, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u64_v, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull @.str.627, i32 noundef 0) #26 ; 0 uses
  %i.eb = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.629, i32 noundef 7, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u64_v, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull @.str.627, i32 noundef 0) #26 ; 0 uses
  %i.ec = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.630, i32 noundef 8, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f32_v, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef null, i32 noundef 0) #26 ; 0 uses
  %i.ed = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.631, i32 noundef 8, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f32_v, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.632, i32 noundef 32) #26 ; 0 uses
  %i.ee = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.633, i32 noundef 8, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f32_v, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef nonnull @.str.415, i32 noundef 0) #26 ; 0 uses
  %i.ef = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.634, i32 noundef 9, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f64_v, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.605, i32 noundef 0) #26 ; 0 uses
  %i.eg = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.635, i32 noundef 9, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f64_v, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.632, i32 noundef 32) #26 ; 0 uses
  %i.eh = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.636, i32 noundef 9, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f64_v, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull @.str.637, i32 noundef 0) #26 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.638) #26
  %i.ei = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.639, i32 noundef 0, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE4s8_v, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  %i.ej = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.640, i32 noundef 1, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE4u8_v, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.611, i32 noundef 0) #26 ; 0 uses
  %i.ek = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.641, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.399, i32 noundef 0) #26 ; 0 uses
  %i.el = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.642, i32 noundef 5, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u32_v, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.611, i32 noundef 0) #26 ; 0 uses
  %i.em = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.643, i32 noundef 6, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s64_v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.623, i32 noundef 0) #26 ; 0 uses
  %i.en = call noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.644, i32 noundef 7, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u64_v, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.627, i32 noundef 0) #26 ; 0 uses
  %i.eo = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not7 = icmp eq ptr %i.eo, null
  br i1 %.not7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.eo(ptr noundef nonnull @.str.4, i32 noundef 1488, ptr noundef nonnull @.str.645, ptr noundef %i.ep) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.403) #26
  %i.eq = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.646, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step) #26 ; 0 uses
  %i.er = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.647, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5flags, i32 noundef 512) #26 ; 0 uses
  %i.es = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.648, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5flags, i32 noundef 8192) #26 ; 0 uses
  %i.et = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.649, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5flags, i32 noundef 16384) #26 ; 0 uses
  %i.eu = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.ev = trunc nuw i8 %i.eu to i1
  %.1 = select i1 %i.ev, ptr %i.b, ptr null
  %i.ew = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.ex = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.650, i32 noundef 0, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE4s8_v, ptr noundef %.1, ptr noundef null, ptr noundef nonnull @.str.399, i32 noundef %i.ew) #26 ; 0 uses
  %i.ey = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = select i1 %i.ez, ptr %i.g, ptr null
  %i.fb = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.fc = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.651, i32 noundef 1, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE4u8_v, ptr noundef %i.fa, ptr noundef null, ptr noundef nonnull @.str.611, i32 noundef %i.fb) #26 ; 0 uses
  %i.fd = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = select i1 %i.fe, ptr %i.l, ptr null
  %i.fg = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.fh = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.652, i32 noundef 2, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s16_v, ptr noundef %i.ff, ptr noundef null, ptr noundef nonnull @.str.399, i32 noundef %i.fg) #26 ; 0 uses
  %i.fi = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.fj = trunc nuw i8 %i.fi to i1
  %i.fk = select i1 %i.fj, ptr %i.q, ptr null
  %i.fl = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.fm = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.653, i32 noundef 3, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u16_v, ptr noundef %i.fk, ptr noundef null, ptr noundef nonnull @.str.611, i32 noundef %i.fl) #26 ; 0 uses
  %i.fn = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = select i1 %i.fo, ptr %i.v, ptr null
  %i.fq = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.fr = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.654, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef %i.fp, ptr noundef null, ptr noundef nonnull @.str.399, i32 noundef %i.fq) #26 ; 0 uses
  %i.fs = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = select i1 %i.ft, ptr %i.v, ptr null
  %i.fv = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.fw = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.655, i32 noundef 4, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s32_v, ptr noundef %i.fu, ptr noundef null, ptr noundef nonnull @.str.656, i32 noundef %i.fv) #26 ; 0 uses
  %i.fx = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = select i1 %i.fy, ptr %i.ac, ptr null
  %i.ga = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.gb = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.657, i32 noundef 5, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u32_v, ptr noundef %i.fz, ptr noundef null, ptr noundef nonnull @.str.611, i32 noundef %i.ga) #26 ; 0 uses
  %i.gc = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = select i1 %i.gd, ptr %i.ac, ptr null
  %i.gf = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.gg = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.658, i32 noundef 5, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u32_v, ptr noundef %i.ge, ptr noundef null, ptr noundef nonnull @.str.659, i32 noundef %i.gf) #26 ; 0 uses
  %i.gh = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = select i1 %i.gi, ptr %i.aj, ptr null
  %i.gk = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.gl = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.660, i32 noundef 6, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5s64_v, ptr noundef %i.gj, ptr noundef null, ptr noundef null, i32 noundef %i.gk) #26 ; 0 uses
  %i.gm = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = select i1 %i.gn, ptr %i.aq, ptr null
  %i.gp = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.gq = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.661, i32 noundef 7, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5u64_v, ptr noundef %i.go, ptr noundef null, ptr noundef null, i32 noundef %i.gp) #26 ; 0 uses
  %i.gr = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = select i1 %i.gs, ptr %i.ax, ptr null
  %i.gu = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.gv = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.411, i32 noundef 8, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f32_v, ptr noundef %i.gt, ptr noundef null, ptr noundef null, i32 noundef %i.gu) #26 ; 0 uses
  %i.gw = load i8, ptr @_ZZL26DemoWindowWidgetsDataTypesvE11inputs_step, align 1, !tbaa !38, !range !22, !noundef !23
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = select i1 %i.gx, ptr %i.bb, ptr null
  %i.gz = load i32, ptr @_ZZL26DemoWindowWidgetsDataTypesvE5flags, align 4, !tbaa !55
  %i.ha = call noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef nonnull @.str.412, i32 noundef 9, ptr noundef nonnull @_ZZL26DemoWindowWidgetsDataTypesvE5f64_v, ptr noundef %i.gy, ptr noundef null, ptr noundef null, i32 noundef %i.gz) #26 ; 0 uses
  call void @_ZN5ImGui7TreePopEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData() unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 20 uses
  %0 = alloca %struct.ImVec2, align 8             ; 20 uses
  %i.b = alloca [32 x i8], align 16               ; 20 uses
  %1 = alloca %struct.ImVec2, align 8             ; 20 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImGuiListClipper, align 8   ; 10 uses
  %i.d = alloca [64 x i8], align 16               ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImGuiListClipper, align 8  ; 10 uses
  %i.f = alloca [64 x i8], align 16               ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImGuiSelectionExternalStorage, align 8 ; 7 uses
  %i.g = alloca [32 x i8], align 16               ; 80 uses
  %i.h = alloca [64 x i8], align 16               ; 32 uses
  %15 = alloca %struct.ImVec2, align 8            ; 32 uses
  %16 = alloca %struct.ImVec2, align 4            ; 5 uses
  %17 = alloca %struct.ImVec2, align 4            ; 5 uses
  %18 = alloca %struct.ImVec2, align 4            ; 5 uses
  %19 = alloca %struct.ImVec2, align 4            ; 5 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImGuiListClipper, align 8  ; 10 uses
  %i.i = alloca [64 x i8], align 16               ; 7 uses
  %23 = alloca %struct.ImVec4, align 16           ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.l = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.l(ptr noundef nonnull @.str.4, i32 noundef 2645, ptr noundef nonnull @.str.874, ptr noundef %i.m) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.875) #26
  br i1 %i.n, label %bb.d, label %bb.if

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.o, label %bb.e, label %_ZL10HelpMarkerPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.q = fmul float %i.p, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.q) #26
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.876, ptr noundef null) #26
  tail call void @_ZN5ImGui14PopTextWrapPosEv() #26
  tail call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.d, %bb.e
  %i.r = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not204 = icmp eq ptr %i.r, null
  br i1 %.not204, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL10HelpMarkerPKc.exit
  %i.s = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  tail call void %i.r(ptr noundef nonnull @.str.4, i32 noundef 2651, ptr noundef nonnull @.str.877, ptr noundef %i.s) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZL10HelpMarkerPKc.exit, %bb.f
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.878) #26
  br i1 %i.t, label %.preheader48, label %bb.r

.preheader48:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.u = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 0) #26 ; 0 uses
  %i.v = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  %i.w = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !50
  %i.x = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.w, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader48
  store i32 0, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.y = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 1) #26 ; 0 uses
  %i.z = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  %i.aa = icmp eq i32 %i.z, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !50
  %i.ab = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.aa, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ac = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 2) #26 ; 0 uses
  %i.ad = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  %i.ae = icmp eq i32 %i.ad, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !50
  %i.af = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.ae, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ag = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 3) #26 ; 0 uses
  %i.ah = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  %i.ai = icmp eq i32 %i.ah, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !50
  %i.aj = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.ai, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 3, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ak = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 4) #26 ; 0 uses
  %i.al = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  %i.am = icmp eq i32 %i.al, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !50
  %i.an = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.am, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 4, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZN5ImGui7TreePopEv() #26
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q
  %i.ao = load ptr, ptr @GImGuiDemoMarkerCallback, align 8, !tbaa !49 ; 2 uses
  %.not205 = icmp eq ptr %i.ao, null
  br i1 %.not205, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr @GImGuiDemoMarkerCallbackUserData, align 8, !tbaa !49
  call void %i.ao(ptr noundef nonnull @.str.4, i32 noundef 2667, ptr noundef nonnull @.str.880, ptr noundef %i.ap) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.aq = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.881) #26
  br i1 %i.aq, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.317) #26
  %i.ar = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv() #26
  br i1 %i.ar, label %bb.v, label %_ZL10HelpMarkerPKc.exit240

bb.v:                                             ; preds = %bb.u
  %i.as = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.at = fmul float %i.as, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.at) #26
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.882, ptr noundef null) #26
  call void @_ZN5ImGui14PopTextWrapPosEv() #26
  call void @_ZN5ImGui10EndTooltipEv() #26
  br label %_ZL10HelpMarkerPKc.exit240

_ZL10HelpMarkerPKc.exit240:                       ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.au = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 0) #26 ; 0 uses
  %i.av = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, align 4, !tbaa !38, !range !22, !noundef !23
  %i.aw = trunc nuw i8 %i.av to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !50
  %i.ax = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext %i.aw, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %i.ax, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZL10HelpMarkerPKc.exit240
  %i.ay = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 244
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !110, !range !22, !noundef !23
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %._crit_edge130, label %bb.x

._crit_edge130:                                   ; preds = %bb.w
  %.pre = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, align 4, !tbaa !38, !range !22
  %i.bc = xor i8 %.pre, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i64 1), align 1
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge130, %bb.x
  %i.bd = phi i8 [ %i.bc, %._crit_edge130 ], [ 1, %bb.x ]
  store i8 %i.bd, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, align 4, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZL10HelpMarkerPKc.exit240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.be = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.879, i32 noundef 1) #26 ; 0 uses
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i64 1), align 1, !tbaa !38, !range !22, !noundef !23
  %i.bg = trunc nuw i8 %i.bf to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !50
  %i.bh = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext %i.bg, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %1) #26
end_hunk_4
begin_hunk_5_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  %i.uy = add nsw i32 %i.ux, 1                    ; 2 uses
  store i32 %i.uy, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.uz = add nuw nsw i32 %.016279, 1             ; 2 uses
  %exitcond121.not = icmp eq i32 %i.uz, 1000
  br i1 %exitcond121.not, label %.loopexit35, label %.preheader34, !llvm.loop !461

.loopexit35:                                      ; preds = %_ZN8ImVectorIiE9push_backERKi.exit, %bb.fu
  %i.va = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5 acquire, align 8
  %i.vb = icmp eq i8 %i.va, 0
  br i1 %i.vb, label %bb.fz, label %bb.gb, !prof !17

bb.fz:                                            ; preds = %.loopexit35
  %i.vc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #26
  %.not234 = icmp eq i32 %i.vc, 0
  br i1 %.not234, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #26
  %i.vd = call i32 @__cxa_atexit(ptr nonnull @_ZN26ImGuiSelectionBasicStorageD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #26
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %.loopexit35
  %i.ve = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !168
  %i.vf = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.903, i32 noundef %i.ve, i32 noundef %i.vf) #26
  %.b200 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b200, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.vg = call noundef float @_ZN5ImGui17GetTextLineHeightEv() #26
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.vh = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv() #26
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.vi = phi float [ %i.vg, %bb.gc ], [ %i.vh, %bb.gd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.vj = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.vk = sitofp i32 %i.vj to float
  %i.vl = fmul float %i.vi, %i.vk
  store float 0.000000e+00, ptr %17, align 4, !tbaa !47
  %i.vm = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.vl, ptr %i.vm, align 4, !tbaa !48
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.vn = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.vo = fmul float %i.vn, 2.000000e+01
  store float f0x80800000, ptr %18, align 4, !tbaa !47
  %i.vp = getelementptr inbounds nuw i8, ptr %18, i64 4
  store float %i.vo, ptr %i.vp, align 4, !tbaa !48
  %i.vq = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.894, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef 136, i32 noundef 0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br i1 %i.vq, label %bb.gf, label %bb.id

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.vr = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  %i.vs = call noundef float @_ZN5ImGui11GetFontSizeEv() #26
  store float %i.vr, ptr %19, align 4, !tbaa !47
  %i.vt = getelementptr inbounds nuw i8, ptr %19, i64 4
  store float %i.vs, ptr %i.vt, align 4, !tbaa !48
  %.b199 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b199, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef 0.000000e+00) #26
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.vu = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5flags_1, align 4, !tbaa !55
  %i.vv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !168
  %i.vw = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.vx = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.vu, i32 noundef %i.vv, i32 noundef %i.vw) #26 ; 5 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.vx) #26
  %i.vy = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1) #26
  %i.vz = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8 ; 2 uses
  %i.wa = icmp sgt i32 %i.vz, 0
  %or.cond3 = select i1 %i.vy, i1 %i.wa, i1 false
  %.b203 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.wb = select i1 %or.cond3, i1 true, i1 %.b203 ; 2 uses
  br i1 %i.wb, label %bb.gi, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270

bb.gi:                                            ; preds = %bb.gh
  %i.wc = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141 ; 3 uses
  %i.wd = icmp eq i32 %i.vz, 0
  br i1 %i.wd, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !179
  %i.wg = trunc i64 %i.wf to i32                  ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.wi = load i8, ptr %i.wh, align 8, !tbaa !180, !range !22, !noundef !23
  %i.wj = icmp eq i8 %i.wi, 0
  br i1 %i.wj, label %bb.gk, label %.preheader.i262.preheader

.preheader.i262.preheader:                        ; preds = %bb.gj
  %.022.i264216 = add nsw i32 %i.wg, 1            ; 2 uses
  %.not.i265217 = icmp slt i32 %.022.i264216, %i.wc
  br i1 %.not.i265217, label %.lr.ph219, label %.critedge.i266

bb.gk:                                            ; preds = %bb.gj
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vx, i64 33
  store i8 1, ptr %i.wk, align 1, !tbaa !181
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270

.preheader.i262:                                  ; preds = %.lr.ph219
  %.022.i264 = add nsw i32 %.022.i264218, 1       ; 2 uses
  %.not.i265 = icmp slt i32 %.022.i264, %i.wc
  br i1 %.not.i265, label %.lr.ph219, label %.critedge.i266, !llvm.loop !0

.lr.ph219:                                        ; preds = %.preheader.i262.preheader, %.preheader.i262
  %.022.i264218 = phi i32 [ %.022.i264, %.preheader.i262 ], [ %.022.i264216, %.preheader.i262.preheader ] ; 3 uses
  %i.wl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !174
  %i.wm = call noundef i32 %i.wl(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.022.i264218) #26, !inline_history !1
  %i.wn = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wm) #26
  br i1 %i.wn, label %.preheader.i262, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270, !llvm.loop !0

.critedge.i266:                                   ; preds = %.preheader.i262, %.preheader.i262.preheader
  %i.wo = call i32 @llvm.smin.i32(i32 %i.wc, i32 %i.wg) ; 2 uses
  %i.wp = icmp slt i32 %i.wo, 1
  br i1 %i.wp, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270, label %.lr.ph221

bb.gl:                                            ; preds = %.lr.ph221
  %i.wq = icmp slt i32 %.0.in.i267220, 2
  br i1 %i.wq, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270, label %.lr.ph221, !llvm.loop !2

.lr.ph221:                                        ; preds = %.critedge.i266, %bb.gl
  %.0.in.i267220 = phi i32 [ %.0.i268, %bb.gl ], [ %i.wo, %.critedge.i266 ] ; 2 uses
  %.0.i268 = add nsw i32 %.0.in.i267220, -1       ; 3 uses
  %i.wr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !174
  %i.ws = call noundef i32 %i.wr(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.0.i268) #26, !inline_history !1
  %i.wt = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.ws) #26
  br i1 %i.wt, label %bb.gl, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270.loopexit_crit_edge223, !llvm.loop !2

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270.loopexit_crit_edge223: ; preds = %.lr.ph221
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270, !llvm.loop !2

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270: ; preds = %.lr.ph219, %bb.gl, %.critedge.i266, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270.loopexit_crit_edge223, %bb.gk, %bb.gi, %bb.gh
  %i.wu = phi i32 [ -1, %bb.gh ], [ -1, %bb.gi ], [ %i.wg, %bb.gk ], [ -1, %bb.gl ], [ %.0.i268, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270.loopexit_crit_edge223 ], [ -1, %.critedge.i266 ], [ %.022.i264218, %.lr.ph219 ] ; 5 uses
  store i1 false, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.wv = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !38, !range !22, !noundef !23
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270
  %.b198 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b198, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !50
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !50
  %i.wx = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.955, i32 noundef 2, i32 noundef 4194321, ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef 0.000000e+00) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.268, i32 noundef 8, float noundef f0x3F333333, i32 noundef 0) #26
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.268, i32 noundef 8, float noundef 3.000000e-01, i32 noundef 0) #26
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %22) #26
  %i.wy = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !38, !range !22, !noundef !23
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  %i.xa = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  call void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(48) %22, i32 noundef %i.xa, float noundef -1.000000e+00) #26
  %.not235 = icmp eq i32 %i.wu, -1
  br i1 %.not235, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.xb = add nuw nsw i32 %i.wu, 1
  call void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(48) %22, i32 noundef %i.wu, i32 noundef %i.xb) #26
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !172 ; 2 uses
  %.not236 = icmp eq i64 %i.xd, -1
  br i1 %.not236, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.xe = trunc i64 %i.xd to i32                  ; 2 uses
  %i.xf = add nsw i32 %i.xe, 1
  call void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(48) %22, i32 noundef %i.xe, i32 noundef %i.xf) #26
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gp
  %i.xg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.xh = getelementptr inbounds nuw i8, ptr %22, i64 12
  %.pre142 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !38, !range !22
  %i.xi = trunc nuw i8 %.pre142 to i1
  %sext = sext i32 %i.wu to i64
  br i1 %i.xi, label %.backedge, label %.thread

.thread:                                          ; preds = %bb.gu
  %i.xj = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.backedge:                                        ; preds = %._crit_edge87.loopexit, %._crit_edge87, %bb.gu
  %i.xk = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %22) #26
  br i1 %i.xk, label %.critedge, label %bb.hv

.critedge:                                        ; preds = %.backedge
  %.pre143 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !38, !range !22
  %.pre143.fr = freeze i8 %.pre143
  %i.xl = trunc i8 %.pre143.fr to i1
  %i.xm = load i32, ptr %i.xg, align 8
  %i.xn = load i32, ptr %i.xh, align 4
  br i1 %i.xl, label %.split, label %bb.gv

bb.gv:                                            ; preds = %.critedge
  %i.xo = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.split:                                           ; preds = %bb.gv, %.critedge, %.thread
  %i.xp = phi i32 [ 0, %.thread ], [ 0, %bb.gv ], [ %i.xm, %.critedge ] ; 2 uses
  %i.xq = phi i1 [ false, %.thread ], [ false, %bb.gv ], [ true, %.critedge ]
  %i.xr = phi i32 [ %i.xj, %.thread ], [ %i.xo, %bb.gv ], [ %i.xn, %.critedge ] ; 2 uses
  %i.xs = icmp slt i32 %i.xp, %i.xr
  br i1 %i.xs, label %.lr.ph86.preheader, label %._crit_edge87

.lr.ph86.preheader:                               ; preds = %.split
  %i.xt = sext i32 %i.xp to i64
  br label %.lr.ph86

._crit_edge87.loopexit:                           ; preds = %bb.hu
  %.pre144 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !38, !range !22
  %.pre145 = trunc nuw i8 %.pre144 to i1
  br i1 %.pre145, label %.backedge, label %bb.hv

._crit_edge87:                                    ; preds = %.split
  br i1 %i.xq, label %.backedge, label %bb.hv

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %bb.hu
  %indvars.iv126 = phi i64 [ %i.xt, %.lr.ph86.preheader ], [ %indvars.iv.next127, %bb.hu ] ; 5 uses
  %i.xu = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !38, !range !22, !noundef !23
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %.lr.ph86
  %i.xw = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() #26 ; 0 uses
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.lr.ph86
  %i.xx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xx, i64 %indvars.iv126
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !55 ; 4 uses
  %i.ya = srem i32 %i.xz, 28
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.yb
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.ye = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.895, i32 noundef %i.xz, ptr noundef %i.yd) #26 ; 0 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.xz) #26
  %i.yf = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE17show_color_button, align 1, !tbaa !38, !range !22, !noundef !23
  %i.yg = trunc nuw i8 %i.yf to i1
  %i.yh = trunc nsw i64 %indvars.iv126 to i32     ; 2 uses
  br i1 %i.yg, label %bb.gy, label %._crit_edge146

bb.gy:                                            ; preds = %bb.gx
  %i.yi = mul i32 %i.yh, 5289803                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.yj = and i32 %i.yi, 255
  %i.yk = uitofp nneg i32 %i.yj to float
  %i.yl = fmul nnan float %i.yk, f0x3B808081
  %i.ym = lshr i32 %i.yi, 8
  %i.yn = and i32 %i.ym, 255
  %i.yo = uitofp nneg i32 %i.yn to float
  %i.yp = fmul nnan float %i.yo, f0x3B808081
  %i.yq = lshr i32 %i.yi, 16
  %i.yr = and i32 %i.yq, 255
  %i.ys = uitofp nneg i32 %i.yr to float
  %i.yt = fmul nnan float %i.ys, f0x3B808081
  %.sroa.022.0.vec.insert = insertelement <2 x float> poison, float %i.yl, i64 0
  %.sroa.022.4.vec.insert = insertelement <2 x float> %.sroa.022.0.vec.insert, float %i.yp, i64 1
  %.sroa.5.12.vec.insert = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.yt, i64 0
  %28 = shufflevector <2 x float> %.sroa.022.4.vec.insert, <2 x float> %.sroa.5.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %28, ptr %23, align 16
  %i.yu = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.956, ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %19) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00) #26
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %bb.gx, %bb.gy
  %i.yv = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.yh) #26 ; 3 uses
  call void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv126) #26
  %.b197 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b197, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge146
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store <2 x float> zeroinitializer, ptr %24, align 8, !tbaa !50
  %i.yw = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.i, i1 noundef zeroext %i.yv, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %24) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.hb

bb.ha:                                            ; preds = %._crit_edge146
  %spec.select = select i1 %i.yv, i32 2241, i32 2240
  %i.yx = call noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull %i.i, i32 noundef %spec.select) #26
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.0159 = phi i1 [ false, %bb.gz ], [ %i.yx, %bb.ha ]
  %i.yy = icmp eq i64 %indvars.iv126, %sext
  br i1 %i.yy, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1) #26
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.yz = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13use_drag_drop, align 1, !tbaa !38, !range !22, !noundef !23
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.he, label %bb.hm

bb.he:                                            ; preds = %bb.hd
  %i.zb = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0) #26
  br i1 %i.zb, label %bb.hf, label %bb.hm

bb.hf:                                            ; preds = %bb.he
  %i.zc = call noundef ptr @_ZN5ImGui18GetDragDropPayloadEv() #26
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %bb.hg, label %_ZN8ImVectorIiED2Ev.exit

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store ptr null, ptr %i.j, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i32 0, ptr %i.k, align 4, !tbaa !55
  br i1 %i.yv, label %.preheader, label %_ZN8ImVectorIiE9push_backERKi.exit277

.preheader:                                       ; preds = %bb.hg
  %i.ze = call noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #26
  br i1 %i.ze, label %_ZN8ImVectorIiE9push_backERKi.exit285.peel, label %.loopexit

_ZN8ImVectorIiE9push_backERKi.exit285.peel:       ; preds = %.preheader
  %i.zf = load i32, ptr %i.k, align 4, !tbaa !55
  %i.zg = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 32) #26 ; 3 uses
  store i32 %i.zf, ptr %i.zg, align 4
  %i.zh = call noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #26
  br i1 %i.zh, label %.lr.ph83, label %bb.hi

_ZN8ImVectorIiE9push_backERKi.exit277:            ; preds = %bb.hg
  %i.zi = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 32) #26 ; 2 uses
  store i32 %i.xz, ptr %i.zi, align 4
  br label %bb.hi

.lr.ph83:                                         ; preds = %_ZN8ImVectorIiE9push_backERKi.exit285.peel, %_ZN8ImVectorIiE9push_backERKi.exit285
  %indvars.iv122 = phi i64 [ %i.zm, %_ZN8ImVectorIiE9push_backERKi.exit285 ], [ 1, %_ZN8ImVectorIiE9push_backERKi.exit285.peel ] ; 5 uses
  %.sroa.18.182 = phi ptr [ %.sroa.18.2, %_ZN8ImVectorIiE9push_backERKi.exit285 ], [ %i.zg, %_ZN8ImVectorIiE9push_backERKi.exit285.peel ] ; 3 uses
  %.sroa.14.081 = phi i32 [ %.sroa.14.1, %_ZN8ImVectorIiE9push_backERKi.exit285 ], [ 8, %_ZN8ImVectorIiE9push_backERKi.exit285.peel ] ; 2 uses
  %i.zj = load i32, ptr %i.k, align 4, !tbaa !55
  %i.zk = zext i32 %.sroa.14.081 to i64
  %i.zl = icmp eq i64 %indvars.iv122, %i.zk
  %i.zm = add nuw nsw i64 %indvars.iv122, 1       ; 3 uses
  br i1 %i.zl, label %bb.hh, label %_ZN8ImVectorIiE9push_backERKi.exit285

bb.hh:                                            ; preds = %.lr.ph83
  %i.zn = trunc nuw nsw i64 %indvars.iv122 to i32 ; 2 uses
  %i.zo = lshr i32 %i.zn, 1
  %i.zp = add nuw nsw i32 %i.zo, %i.zn
  %i.zq = trunc nuw i64 %i.zm to i32
  %i.zr = call noundef i32 @llvm.smax.i32(i32 %i.zp, i32 %i.zq) ; 2 uses
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zs, 2
  %i.zu = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.zt) #26 ; 2 uses
  %i.zv = shl nuw nsw i64 %indvars.iv122, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.zu, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.18.182, i64 %i.zv, i1 false)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.sroa.18.182) #26
  br label %_ZN8ImVectorIiE9push_backERKi.exit285

_ZN8ImVectorIiE9push_backERKi.exit285:            ; preds = %.lr.ph83, %bb.hh
  %.sroa.14.1 = phi i32 [ %i.zr, %bb.hh ], [ %.sroa.14.081, %.lr.ph83 ]
  %.sroa.18.2 = phi ptr [ %i.zu, %bb.hh ], [ %.sroa.18.182, %.lr.ph83 ] ; 3 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.2, i64 %indvars.iv122
  store i32 %i.zj, ptr %i.zw, align 4
  %i.zx = call noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #26
  br i1 %i.zx, label %.lr.ph83, label %.loopexit.loopexit.loopexit, !llvm.loop !462

.loopexit.loopexit.loopexit:                      ; preds = %_ZN8ImVectorIiE9push_backERKi.exit285
  %i.zy = shl i64 %i.zm, 2
  %i.zz = and i64 %i.zy, 4294967292
  br label %bb.hi

.loopexit:                                        ; preds = %.preheader
  %i.aaa = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.957, ptr noundef null, i64 noundef 0, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %_ZN8ImVectorIiED2Ev.exit

bb.hi:                                            ; preds = %_ZN8ImVectorIiE9push_backERKi.exit277, %_ZN8ImVectorIiE9push_backERKi.exit285.peel, %.loopexit.loopexit.loopexit
  %.sroa.0.1.ph = phi i64 [ %i.zz, %.loopexit.loopexit.loopexit ], [ 4, %_ZN8ImVectorIiE9push_backERKi.exit285.peel ], [ 4, %_ZN8ImVectorIiE9push_backERKi.exit277 ]
  %.sroa.18.3.ph = phi ptr [ %.sroa.18.2, %.loopexit.loopexit.loopexit ], [ %i.zg, %_ZN8ImVectorIiE9push_backERKi.exit285.peel ], [ %i.zi, %_ZN8ImVectorIiE9push_backERKi.exit277 ] ; 2 uses
  %i.aab = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.957, ptr noundef nonnull %.sroa.18.3.ph, i64 noundef %.sroa.0.1.ph, i32 noundef 0) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.sroa.18.3.ph) #26
  br label %_ZN8ImVectorIiED2Ev.exit

_ZN8ImVectorIiED2Ev.exit:                         ; preds = %.loopexit, %bb.hi, %bb.hf
  %i.aac = call noundef ptr @_ZN5ImGui18GetDragDropPayloadEv() #26 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !184 ; 2 uses
  %i.aaf = and i32 %i.aae, -4
  %i.aag = icmp eq i32 %i.aaf, 4
  br i1 %i.aag, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %_ZN8ImVectorIiED2Ev.exit
  %i.aah = load ptr, ptr %i.aac, align 8, !tbaa !135
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !55 ; 2 uses
  %i.aaj = srem i32 %i.aai, 28
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.aak
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !88
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.895, i32 noundef %i.aai, ptr noundef %i.aam) #26
  br label %bb.hl

bb.hk:                                            ; preds = %_ZN8ImVectorIiED2Ev.exit
  %i.aan = sdiv i32 %i.aae, 4
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.958, i32 noundef %i.aan) #26
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  call void @_ZN5ImGui17EndDragDropSourceEv() #26
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.he, %bb.hd
  %.b196 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  %or.cond5 = and i1 %.0159, %.b196
  br i1 %or.cond5, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN5ImGui7TreePopEv() #26
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.aao = call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 1) #26
  br i1 %i.aao, label %bb.hp, label %bb.hs

bb.hp:                                            ; preds = %bb.ho
  %i.aap = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE12use_deletion, align 1, !tbaa !38, !range !22, !noundef !23
  %i.aaq = trunc nuw i8 %i.aap to i1
  %i.aar = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8
  %i.aas = icmp eq i32 %i.aar, 0
  %not. = xor i1 %i.aaq, true
  %i.aat = select i1 %not., i1 true, i1 %i.aas
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.aat) #26
  %i.aau = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !168
  %i.aav = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.959, i32 noundef %i.aau) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store <2 x float> zeroinitializer, ptr %25, align 8, !tbaa !50
  %i.aaw = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.i, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br i1 %i.aaw, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  store i1 true, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  call void @_ZN5ImGui11EndDisabledEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  store <2 x float> zeroinitializer, ptr %26, align 8, !tbaa !50
  %i.aax = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.844, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %26) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @_ZN5ImGui8EndPopupEv() #26
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.ho
  %i.aay = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !38, !range !22, !noundef !23
  %i.aaz = trunc nuw i8 %i.aay to i1
  br i1 %i.aaz, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.aba = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() #26 ; 0 uses
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef f0x80800000) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store <2 x float> zeroinitializer, ptr %27, align 8, !tbaa !50
end_hunk_5
