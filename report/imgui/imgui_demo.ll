Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle:bb.a
  %exitcond220.not = icmp eq i32 %i.md, 8
  br i1 %exitcond220.not, label %bb.cq, label %bb.cr, !llvm.loop !354

.critedge:                                        ; preds = %bb.cn, %bb.cq, %bb.co
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.me = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.me, label %bb.cs, label %_ZL10HelpMarkerPKc.exit208

bb.cs:                                            ; preds = %.critedge
  %i.mf = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.mg = fmul float %i.mf, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.mg)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.320, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit208

_ZL10HelpMarkerPKc.exit208:                       ; preds = %.critedge, %bb.cs
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.mi = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.321, ptr noundef nonnull %i.mh, float noundef 5.000000e-03, float noundef 2.000000e-01, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.mk = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.322, ptr noundef nonnull %i.mj, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.253, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ml = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ml, label %bb.ct, label %_ZL10HelpMarkerPKc.exit209

bb.ct:                                            ; preds = %_ZL10HelpMarkerPKc.exit208
  %i.mm = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.mn = fmul float %i.mm, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.mn)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.323, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit209

_ZL10HelpMarkerPKc.exit209:                       ; preds = %_ZL10HelpMarkerPKc.exit208, %bb.ct
  call void @_ZN5ImGui12PopItemWidthEv()
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.cu

bb.cu:                                            ; preds = %_ZL10HelpMarkerPKc.exit209, %bb.ci
  call void @_ZN5ImGui9EndTabBarEv()
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZL10HelpMarkerPKc.exit
  call void @_ZN5ImGui12PopItemWidthEv()
  ret void

bb.cw:                                            ; preds = %bb.bo, %bb.g
  %.pn = phi { ptr, i32 } [ %i.iy, %bb.bo ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN5ImGui3EndEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare noundef ptr @_ZN5ImGui15GetMainViewportEv() local_unnamed_addr #1

declare void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef float @_ZN5ImGui11GetFontSizeEv() local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #1

declare void @_ZN5ImGui13PushItemWidthEf(float noundef) local_unnamed_addr #1

declare void @_ZN5ImGui4TextEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN5ImGui7SpacingEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN5ImGui10BulletTextEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN5ImGui8SameLineEff(float noundef, float noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui13ShowUserGuideEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.324)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.325)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.326)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.327)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.328)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i8, ptr %i.b, align 8, !tbaa !366, !range !19, !noundef !20
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.329)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.330)
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.331)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.332)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.333)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.334)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.335)
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.336)
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.337)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.338)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.339)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.340)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.341)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.342)
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.343)
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.344)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 73 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !367, !range !19, !noundef !20
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, ptr @.str.346, ptr @.str.347
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.345, ptr noundef nonnull %i.h)
  %i.i = load i8, ptr %i.e, align 1, !tbaa !367, !range !19, !noundef !20
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.j, ptr @.str.347, ptr @.str.346
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.348, ptr noundef nonnull %i.k)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.349)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.350)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.351)
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  ret void
}

declare noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #6

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

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %2 = alloca %struct.ImVec4, align 8             ; 9 uses
  %3 = alloca %struct.ImVec4, align 8             ; 9 uses
  %4 = alloca %struct.ImVec4, align 8             ; 9 uses
  %5 = alloca %struct.ImVec4, align 8             ; 9 uses
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
  %29 = alloca %struct.ImVec2, align 8            ; 20 uses
  %30 = alloca %struct.ImVec4, align 16           ; 20 uses
  %31 = alloca %struct.ImVec2, align 4            ; 21 uses
  %32 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.o = alloca [32 x i8], align 16               ; 40 uses
  %33 = alloca %struct.ImVec2, align 8            ; 40 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.p = alloca [32 x i8], align 16               ; 40 uses
  %35 = alloca %struct.ImVec2, align 8            ; 40 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 32 uses
  %38 = alloca %struct.ImVec2, align 8            ; 36 uses
  %i.q = alloca [32 x i8], align 16               ; 36 uses
  %39 = alloca %struct.ImVec2, align 4            ; 37 uses
  %i.r = alloca [16 x ptr], align 16              ; 4 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca %struct.ImVec2, align 8            ; 4 uses
  %43 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.s = alloca [4 x ptr], align 16               ; 4 uses
  %i.t = alloca [4 x ptr], align 16               ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 4 uses
  %44 = alloca %struct.ImVec2, align 4            ; 5 uses
  %45 = alloca %struct.ImVec2, align 8            ; 4 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.v = alloca [32 x i8], align 16               ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.w = alloca [32 x i8], align 16               ; 4 uses
  %49 = alloca %struct.ImVec2, align 8            ; 4 uses
  %50 = alloca %struct.ImVec2, align 8            ; 4 uses
  %51 = alloca %struct.ImVec2, align 4            ; 5 uses
  %52 = alloca %struct.ImVec2, align 8            ; 56 uses
  %53 = alloca %struct.ImVec2, align 8            ; 4 uses
  %54 = alloca %struct.ImVec2, align 8            ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 4 uses
  %56 = alloca %struct.ImVec4, align 16           ; 4 uses
  %57 = alloca %struct.ImVec4, align 16           ; 4 uses
  %58 = alloca %struct.ImVec2, align 4            ; 29 uses
  %59 = alloca %struct.ImVec2, align 8            ; 32 uses
  %60 = alloca %struct.ImVec2, align 8            ; 32 uses
  %61 = alloca %struct.ImVec2, align 8            ; 32 uses
  %62 = alloca %struct.ImVec4, align 16           ; 32 uses
  %63 = alloca %struct.ImVec4, align 16           ; 32 uses
  %i.x = alloca i32, align 4                      ; 14 uses
  %64 = alloca %struct.ImVec2, align 8            ; 4 uses
  %65 = alloca %struct.ImVec2, align 8            ; 20 uses
  %66 = alloca %struct.ImVec2, align 8            ; 8 uses
  %67 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i8, align 1                      ; 5 uses
  %i.ac = alloca i8, align 1                      ; 5 uses
  %i.ad = alloca i8, align 1                      ; 4 uses
  %i.ae = alloca i8, align 1                      ; 4 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %i.ag = alloca i8, align 1                      ; 5 uses
  %i.ah = alloca i8, align 1                      ; 5 uses
  %i.ai = alloca i16, align 2                     ; 4 uses
  %i.aj = alloca i16, align 2                     ; 4 uses
  %i.ak = alloca i16, align 2                     ; 4 uses
  %i.al = alloca i16, align 2                     ; 4 uses
  %i.am = alloca i16, align 2                     ; 4 uses
  %i.an = alloca i16, align 2                     ; 4 uses
  %i.ao = alloca i16, align 2                     ; 4 uses
  %i.ap = alloca i16, align 2                     ; 4 uses
  %i.aq = alloca i16, align 2                     ; 4 uses
  %i.ar = alloca i16, align 2                     ; 4 uses
  %i.as = alloca i32, align 4                     ; 8 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = alloca i32, align 4                     ; 8 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = alloca i32, align 4                     ; 4 uses
  %i.ax = alloca i32, align 4                     ; 4 uses
  %i.ay = alloca i32, align 4                     ; 4 uses
  %i.az = alloca i32, align 4                     ; 6 uses
  %i.ba = alloca i32, align 4                     ; 5 uses
  %i.bb = alloca i32, align 4                     ; 6 uses
  %i.bc = alloca i32, align 4                     ; 4 uses
  %i.bd = alloca i32, align 4                     ; 4 uses
  %i.be = alloca i32, align 4                     ; 4 uses
  %i.bf = alloca i32, align 4                     ; 4 uses
  %i.bg = alloca i64, align 8                     ; 6 uses
  %i.bh = alloca i64, align 8                     ; 4 uses
  %i.bi = alloca i64, align 8                     ; 6 uses
  %i.bj = alloca i64, align 8                     ; 4 uses
  %i.bk = alloca i64, align 8                     ; 4 uses
  %i.bl = alloca i64, align 8                     ; 4 uses
  %i.bm = alloca i64, align 8                     ; 4 uses
  %i.bn = alloca i64, align 8                     ; 6 uses
  %i.bo = alloca i64, align 8                     ; 4 uses
  %i.bp = alloca i64, align 8                     ; 6 uses
  %i.bq = alloca i64, align 8                     ; 4 uses
  %i.br = alloca i64, align 8                     ; 4 uses
  %i.bs = alloca i64, align 8                     ; 4 uses
  %i.bt = alloca i64, align 8                     ; 4 uses
  %i.bu = alloca float, align 4                   ; 7 uses
  %i.bv = alloca float, align 4                   ; 8 uses
  %i.bw = alloca float, align 4                   ; 4 uses
  %i.bx = alloca float, align 4                   ; 4 uses
  %i.by = alloca double, align 8                  ; 7 uses
  %i.bz = alloca double, align 8                  ; 7 uses
  %i.ca = alloca double, align 8                  ; 4 uses
  %i.cb = alloca double, align 8                  ; 4 uses
  %68 = alloca %struct.ImVec2, align 8            ; 4 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %70 = alloca %struct.ImVec2, align 8            ; 4 uses
  %71 = alloca %struct.ImVec2, align 8            ; 4 uses
  %72 = alloca %struct.ImVec2, align 8            ; 4 uses
  %73 = alloca %struct.ImVec2, align 8            ; 4 uses
  %74 = alloca %struct.ImVec2, align 8            ; 4 uses
  %75 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.cc = alloca [14 x ptr], align 16             ; 21 uses
  %76 = alloca %struct.ImVec2, align 8            ; 56 uses
  %77 = alloca %struct.ImVec2, align 8            ; 56 uses
  %i.cd = alloca float, align 4                   ; 8 uses
  %i.ce = alloca float, align 4                   ; 8 uses
  %i.cf = alloca float, align 4                   ; 8 uses
  %i.cg = alloca float, align 4                   ; 8 uses
  %i.ch = alloca float, align 4                   ; 8 uses
  %i.ci = alloca float, align 4                   ; 8 uses
  %i.cj = alloca float, align 4                   ; 8 uses
  %i.ck = alloca float, align 4                   ; 8 uses
  %i.cl = alloca float, align 4                   ; 8 uses
  %78 = alloca %struct.ImVec2, align 8            ; 4 uses
  %79 = alloca %struct.ImVec4, align 8            ; 9 uses
  %80 = alloca %struct.ImVec4, align 8            ; 9 uses
  %81 = alloca %struct.ImVec4, align 8            ; 9 uses
  %82 = alloca %struct.ImVec2, align 8            ; 8 uses
  %83 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.cm = alloca [11 x ptr], align 16             ; 4 uses
  %i.cn = alloca [9 x ptr], align 16              ; 4 uses
  %i.co = tail call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull @.str.60, i32 noundef 0)
  br i1 %i.co, label %bb.b, label %bb.abu

bb.b:                                             ; preds = %bb.a
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 20), align 4, !tbaa !377, !range !19, !noundef !20
  %i.cq = trunc nuw i8 %i.cp to i1                ; 3 uses
  %i.cr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21), align 1, !tbaa !378, !range !19, !noundef !20
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !379
  %i.cu = and i32 %i.ct, 128
  %i.cv = icmp ne i32 %i.cu, 0
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 128, i1 noundef zeroext %i.cv)
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !379
  %i.cx = and i32 %i.cw, 256
  %i.cy = icmp ne i32 %i.cx, 0
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 256, i1 noundef zeroext %i.cy)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cz = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.416)
  br i1 %i.cz, label %bb.g, label %_ZL22DemoWindowWidgetsBasicv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 929, ptr noundef nonnull @.str.417)
  tail call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.23)
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 932, ptr noundef nonnull @.str.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #30
  store <2 x float> zeroinitializer, ptr %78, align 8, !tbaa !46
  %i.da = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.419, ptr noundef nonnull align 4 dereferenceable(8) %78)
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #30
  %.pre.i = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !51 ; 2 uses
  br i1 %i.da, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = add nsw i32 %.pre.i, 1                  ; 2 uses
  store i32 %i.db, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dc = phi i32 [ %i.db, %bb.h ], [ %.pre.i, %bb.g ]
  %i.dd = and i32 %i.dc, 1
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %.peel.next.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.420)
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.j, %bb.i
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 942, ptr noundef nonnull @.str.421)
  %i.de = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.422, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5check) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 946, ptr noundef nonnull @.str.423)
  %i.df = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.424, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.dg = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.425, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.dh = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.426, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 2) ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  %i.di = call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.427, ptr noundef nonnull @.str.428) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 956, ptr noundef nonnull @.str.429)
  %84 = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %85 = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.cl)
  %i.dj = load float, ptr %i.cj, align 4, !tbaa !46
  %i.dk = load float, ptr %i.ck, align 4, !tbaa !46
  %i.dl = load float, ptr %i.cl, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.peel.i = insertelement <2 x float> poison, float %i.dj, i64 0
  %.sroa.0.4.vec.insert.i.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel.i, float %i.dk, i64 1
  %.sroa.3.12.vec.insert.i.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dl, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.peel.i, ptr %79, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel.i, ptr %84, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.ci)
  %i.dm = load float, ptr %i.cg, align 4, !tbaa !46
  %i.dn = load float, ptr %i.ch, align 4, !tbaa !46
  %i.do = load float, ptr %i.ci, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i13.peel.i = insertelement <2 x float> poison, float %i.dm, i64 0
  %.sroa.0.4.vec.insert.i14.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i13.peel.i, float %i.dn, i64 1
  %.sroa.3.12.vec.insert.i16.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.do, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #30
  store <2 x float> %.sroa.0.4.vec.insert.i14.peel.i, ptr %80, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.peel.i, ptr %85, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cd, ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.cf)
  %i.dp = load float, ptr %i.cd, align 4, !tbaa !46
  %i.dq = load float, ptr %i.ce, align 4, !tbaa !46
  %i.dr = load float, ptr %i.cf, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i24.peel.i = insertelement <2 x float> poison, float %i.dp, i64 0
  %.sroa.0.4.vec.insert.i25.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i24.peel.i, float %i.dq, i64 1
  %.sroa.3.12.vec.insert.i27.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dr, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #30
  store <2 x float> %.sroa.0.4.vec.insert.i25.peel.i, ptr %81, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.peel.i, ptr %86, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #30
  store <2 x float> zeroinitializer, ptr %82, align 8, !tbaa !46
  %i.ds = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.430, ptr noundef nonnull align 4 dereferenceable(8) %82) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.431)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 978, ptr noundef nonnull @.str.432)
  %i.dt = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 100
  %i.dv = load float, ptr %i.du, align 4, !tbaa !49
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 8, i1 noundef zeroext true)
  %i.dw = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.433, i32 noundef 0)
  br i1 %i.dw, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.k, %.peel.next.i
  %.046.i = phi i32 [ 1, %.peel.next.i ], [ %i.ej, %bb.k ] ; 3 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef %.046.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #30
  %i.dx = uitofp nneg i32 %.046.i to float
  %i.dy = fdiv float %i.dx, 7.000000e+00          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.dy, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.cl)
  %i.dz = load float, ptr %i.cj, align 4, !tbaa !46
  %i.ea = load float, ptr %i.ck, align 4, !tbaa !46
  %i.eb = load float, ptr %i.cl, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dz, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.ea, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.eb, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %79, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %84, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.dy, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.ci)
  %i.ec = load float, ptr %i.cg, align 4, !tbaa !46
  %i.ed = load float, ptr %i.ch, align 4, !tbaa !46
  %i.ee = load float, ptr %i.ci, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i13.i = insertelement <2 x float> poison, float %i.ec, i64 0
  %.sroa.0.4.vec.insert.i14.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i13.i, float %i.ed, i64 1
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ee, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #30
  store <2 x float> %.sroa.0.4.vec.insert.i14.i, ptr %80, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.i, ptr %85, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.dy, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cd, ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.cf)
  %i.ef = load float, ptr %i.cd, align 4, !tbaa !46
  %i.eg = load float, ptr %i.ce, align 4, !tbaa !46
  %i.eh = load float, ptr %i.cf, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i24.i = insertelement <2 x float> poison, float %i.ef, i64 0
  %.sroa.0.4.vec.insert.i25.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i24.i, float %i.eg, i64 1
  %.sroa.3.12.vec.insert.i27.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.eh, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #30
  store <2 x float> %.sroa.0.4.vec.insert.i25.i, ptr %81, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i, ptr %86, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #30
  store <2 x float> zeroinitializer, ptr %82, align 8, !tbaa !46
  %i.ei = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.430, ptr noundef nonnull align 4 dereferenceable(8) %82) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  %i.ej = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ej, 7
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.k, !llvm.loop !368

bb.l:                                             ; preds = %.loopexit.i
  %i.ek = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  %i.el = add nsw i32 %i.ek, -1
  store i32 %i.el, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit.i
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.dv)
  %i.em = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.434, i32 noundef 1)
  br i1 %i.em, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.en = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ep = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.435, i32 noundef %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #30
  store <2 x float> zeroinitializer, ptr %83, align 8, !tbaa !46
  %i.eq = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.436, ptr noundef nonnull align 4 dereferenceable(8) %83) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #30
  call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull @.str.437)
  call void (ptr, ptr, ...) @_ZN5ImGui9LabelTextEPKcS1_z(ptr noundef nonnull @.str.438, ptr noundef nonnull @.str.405)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.439)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1000, ptr noundef nonnull @.str.440)
  %i.er = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.441, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4str0, i64 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.es = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.es, label %bb.p, label %_ZL10HelpMarkerPKc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.et = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.eu = fmul float %i.et, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.eu)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.442, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i

_ZL10HelpMarkerPKc.exit.i:                        ; preds = %bb.p, %bb.o
  %i.ev = call noundef zeroext i1 @_ZN5ImGui17InputTextWithHintEPKcS1_PcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.443, ptr noundef nonnull @.str.444, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4str1, i64 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1019, ptr noundef nonnull @.str.445)
  %i.ew = call noundef zeroext i1 @_ZN5ImGui8InputIntEPKcPiiii(ptr noundef nonnull @.str.446, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i0, i32 noundef 1, i32 noundef 100, i32 noundef 0) ; 0 uses
  %i.ex = call noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef nonnull @.str.447, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f0, float noundef f0x3C23D70A, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.ey = call noundef zeroext i1 @_ZN5ImGui11InputDoubleEPKcPdddS1_i(ptr noundef nonnull @.str.448, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2d0, double noundef f0x3F847AE140000000, double noundef 1.000000e+00, ptr noundef nonnull @.str.449, i32 noundef 0) ; 0 uses
  %i.ez = call noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef nonnull @.str.450, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.451, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.fa = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.fa, label %bb.q, label %_ZL10HelpMarkerPKc.exit35.i

bb.q:                                             ; preds = %_ZL10HelpMarkerPKc.exit.i
  %i.fb = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.fc = fmul float %i.fb, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fc)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.452, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit35.i

_ZL10HelpMarkerPKc.exit35.i:                      ; preds = %bb.q, %_ZL10HelpMarkerPKc.exit.i
  %i.fd = call noundef zeroext i1 @_ZN5ImGui11InputFloat3EPKcPfS1_i(ptr noundef nonnull @.str.453, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5vec4a, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.454)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1042, ptr noundef nonnull @.str.455)
  %i.fe = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.456, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i1, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ff = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ff, label %bb.r, label %_ZL10HelpMarkerPKc.exit36.i

bb.r:                                             ; preds = %_ZL10HelpMarkerPKc.exit35.i
  %i.fg = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.fh = fmul float %i.fg, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fh)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.457, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit36.i

_ZL10HelpMarkerPKc.exit36.i:                      ; preds = %bb.r, %_ZL10HelpMarkerPKc.exit35.i
  %i.fi = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.458, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i2, float noundef 1.000000e+00, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.459, i32 noundef 1536) ; 0 uses
  %i.fj = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.460, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i3, float noundef 1.000000e+00, i32 noundef 100, i32 noundef 200, ptr noundef nonnull @.str.435, i32 noundef 256) ; 0 uses
  %i.fk = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.461, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f1_0, float noundef 5.000000e-03, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.fl = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.462, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f2, float noundef f0x38D1B717, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.463, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.464)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1061, ptr noundef nonnull @.str.465)
  %i.fm = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.466, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2i1_0, i32 noundef -1, i32 noundef 3, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.fn = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.fn, label %bb.s, label %_ZL10HelpMarkerPKc.exit37.i

bb.s:                                             ; preds = %_ZL10HelpMarkerPKc.exit36.i
  %i.fo = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.fp = fmul float %i.fo, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.fp)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.467, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit37.i

_ZL10HelpMarkerPKc.exit37.i:                      ; preds = %bb.s, %_ZL10HelpMarkerPKc.exit36.i
  %i.fq = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.468, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f1_1, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.469, i32 noundef 0) ; 0 uses
  %i.fr = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.470, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE2f2_0, float noundef -1.000000e+01, float noundef 1.000000e+01, ptr noundef nonnull @.str.471, i32 noundef 32) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1070, ptr noundef nonnull @.str.472)
  %i.fs = call noundef zeroext i1 @_ZN5ImGui11SliderAngleEPKcPfffS1_i(ptr noundef nonnull @.str.473, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5angle, float noundef -3.600000e+02, float noundef 3.600000e+02, ptr noundef nonnull @.str.251, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1077, ptr noundef nonnull @.str.474)
  %i.ft = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE4elem, align 4, !tbaa !51 ; 2 uses
  %or.cond.i = icmp ult i32 %i.ft, 4
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZL10HelpMarkerPKc.exit37.i
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL22DemoWindowWidgetsBasicv.elems_names, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !101
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZL10HelpMarkerPKc.exit37.i
  %i.fx = phi ptr [ %i.fw, %bb.t ], [ @.str.479, %_ZL10HelpMarkerPKc.exit37.i ]
  %i.fy = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.480, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4elem, i32 noundef 0, i32 noundef 3, ptr noundef %i.fx, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.fz = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.fz, label %bb.v, label %_ZL10HelpMarkerPKc.exit38.i

bb.v:                                             ; preds = %bb.u
  %i.ga = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.gb = fmul float %i.ga, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.gb)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.481, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit38.i

_ZL10HelpMarkerPKc.exit38.i:                      ; preds = %bb.v, %bb.u
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.482)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1089, ptr noundef nonnull @.str.483)
  %i.gc = call noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef nonnull @.str.484, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4col1, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.gd = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.gd, label %bb.w, label %_ZL10HelpMarkerPKc.exit39.i

bb.w:                                             ; preds = %_ZL10HelpMarkerPKc.exit38.i
  %i.ge = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.gf = fmul float %i.ge, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.gf)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.485, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit39.i

_ZL10HelpMarkerPKc.exit39.i:                      ; preds = %bb.w, %_ZL10HelpMarkerPKc.exit38.i
  %i.gg = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.486, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4col2, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1105, ptr noundef nonnull @.str.487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.cm, ptr noundef nonnull align 16 dereferenceable(88) @__const._ZL22DemoWindowWidgetsBasicv.items, i64 88, i1 false)
  %i.gh = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPKS1_ii(ptr noundef nonnull @.str.499, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE12item_current, ptr noundef nonnull %i.cm, i32 noundef 11, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.gi = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.gi, label %bb.x, label %_ZL10HelpMarkerPKc.exit40.i

bb.x:                                             ; preds = %_ZL10HelpMarkerPKc.exit39.i
  %i.gj = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.gk = fmul float %i.gj, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.gk)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.500, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit40.i

_ZL10HelpMarkerPKc.exit40.i:                      ; preds = %bb.x, %_ZL10HelpMarkerPKc.exit39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm) #30
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1117, ptr noundef nonnull @.str.501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.cn, ptr noundef nonnull align 16 dereferenceable(72) @__const._ZL22DemoWindowWidgetsBasicv.items.511, i64 72, i1 false)
  %i.gl = call noundef zeroext i1 @_ZN5ImGui7ListBoxEPKcPiPKS1_ii(ptr noundef nonnull @.str.512, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE12item_current_0, ptr noundef nonnull %i.cn, i32 noundef 9, i32 noundef 4) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.gm = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.gm, label %bb.y, label %_ZL10HelpMarkerPKc.exit41.i
end_hunk_0
begin_hunk_1_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1239, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit41.i80

_ZL10HelpMarkerPKc.exit41.i80:                    ; preds = %bb.yz, %_ZL10HelpMarkerPKc.exit40.i79
  %i.cjj = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1240, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 262144) ; 0 uses
  %i.cjk = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1241, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 524288) ; 0 uses
  %i.cjl = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1242, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, i32 noundef 1048576) ; 0 uses
  %i.cjm = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1273, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position) ; 0 uses
  %i.cjn = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1274, ptr noundef nonnull @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop) ; 0 uses
  %i.cjo = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cjp = trunc nuw i8 %i.cjo to i1
  br i1 %i.cjp, label %bb.za, label %.peel.begin.i

bb.za:                                            ; preds = %_ZL10HelpMarkerPKc.exit41.i80
  %i.cjq = call noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv()
  call void @_ZN5ImGui8UnindentEf(float noundef %i.cjq)
  br label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.za, %_ZL10HelpMarkerPKc.exit41.i80
  %i.cjr = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.cjs = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef null, i32 noundef %i.cjr, ptr noundef nonnull @.str.1255, i32 noundef 0)
  %i.cjt = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cju = trunc nuw i8 %i.cjt to i1
  br i1 %i.cju, label %bb.zb, label %bb.zd

bb.zb:                                            ; preds = %.peel.begin.i
  %i.cjv = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.cjv, label %bb.zc, label %bb.zd

bb.zc:                                            ; preds = %bb.zb
  %i.cjw = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zd

bb.zd:                                            ; preds = %bb.zc, %bb.zb, %.peel.begin.i
  br i1 %i.cjs, label %bb.ze, label %.peel.next.i81

bb.ze:                                            ; preds = %bb.zd
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cjx = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next.i81

.peel.next.i81:                                   ; preds = %bb.ze, %bb.zd
  %i.cjy = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.cjz = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %i.cjy, ptr noundef nonnull @.str.1255, i32 noundef 1)
  %i.cka = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ckb = trunc nuw i8 %i.cka to i1
  br i1 %i.ckb, label %bb.zf, label %bb.zh

bb.zf:                                            ; preds = %.peel.next.i81
  %i.ckc = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.ckc, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  %i.ckd = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf, %.peel.next.i81
  br i1 %i.cjz, label %bb.zi, label %.peel.next48.i

bb.zi:                                            ; preds = %bb.zh
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cke = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next48.i

.peel.next48.i:                                   ; preds = %bb.zi, %bb.zh
  %i.ckf = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.ckg = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 2 to ptr), i32 noundef %i.ckf, ptr noundef nonnull @.str.1255, i32 noundef 2)
  %i.ckh = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cki = trunc nuw i8 %i.ckh to i1
  br i1 %i.cki, label %bb.zj, label %bb.zl

bb.zj:                                            ; preds = %.peel.next48.i
  %i.ckj = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.ckj, label %bb.zk, label %bb.zl

bb.zk:                                            ; preds = %bb.zj
  %i.ckk = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zj, %.peel.next48.i
  %i.ckl = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.ckm = and i32 %i.ckl, 8192
  %.not33.peel53.i = icmp eq i32 %i.ckm, 0
  br i1 %.not33.peel53.i, label %bb.zn, label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ckn = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1236) ; 0 uses
  br label %bb.zn

bb.zn:                                            ; preds = %bb.zm, %bb.zl
  br i1 %i.ckg, label %bb.zo, label %.peel.next52.i

bb.zo:                                            ; preds = %bb.zn
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1277)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cko = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.419) ; 0 uses
  call void @_ZN5ImGui7TreePopEv()
  br label %.peel.next52.i

.peel.next52.i:                                   ; preds = %bb.zo, %bb.zn
  %i.ckp = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.ckq = or i32 %i.ckp, 264
  %i.ckr = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 3 to ptr), i32 noundef %i.ckq, ptr noundef nonnull @.str.1278, i32 noundef 3) ; 0 uses
  %i.cks = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ckt = trunc nuw i8 %i.cks to i1
  br i1 %i.ckt, label %bb.zp, label %bb.zr

bb.zp:                                            ; preds = %.peel.next52.i
  %i.cku = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.cku, label %bb.zq, label %bb.zr

bb.zq:                                            ; preds = %bb.zp
  %i.ckv = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zr

bb.zr:                                            ; preds = %bb.zq, %bb.zp, %.peel.next52.i
  %i.ckw = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.ckx = or i32 %i.ckw, 264
  %i.cky = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 4 to ptr), i32 noundef %i.ckx, ptr noundef nonnull @.str.1278, i32 noundef 4) ; 0 uses
  %i.ckz = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cla = trunc nuw i8 %i.ckz to i1
  br i1 %i.cla, label %bb.zs, label %bb.zu

bb.zs:                                            ; preds = %bb.zr
  %i.clb = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.clb, label %bb.zt, label %bb.zu

bb.zt:                                            ; preds = %bb.zs
  %i.clc = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zt, %bb.zs, %bb.zr
  %i.cld = load i32, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE10base_flags_0, align 4, !tbaa !51
  %i.cle = or i32 %i.cld, 264
  %i.clf = call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef nonnull inttoptr (i64 5 to ptr), i32 noundef %i.cle, ptr noundef nonnull @.str.1278, i32 noundef 5) ; 0 uses
  %i.clg = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE17use_drag_and_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.clh = trunc nuw i8 %i.clg to i1
  br i1 %i.clh, label %bb.zv, label %.loopexit.i85

bb.zv:                                            ; preds = %bb.zu
  %i.cli = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.cli, label %bb.zw, label %.loopexit.i85

bb.zw:                                            ; preds = %bb.zv
  %i.clj = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1275, ptr noundef null, i64 noundef 0, i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1276)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %.loopexit.i85

.loopexit.i85:                                    ; preds = %bb.zw, %bb.zv, %bb.zu
  %i.clk = load i8, ptr @_ZZL26DemoWindowWidgetsTreeNodesvE35align_label_with_current_x_position, align 1, !tbaa !35, !range !19, !noundef !20
  %i.cll = trunc nuw i8 %i.clk to i1
  br i1 %i.cll, label %bb.zx, label %bb.zy

bb.zx:                                            ; preds = %.loopexit.i85
  %i.clm = call noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv()
  call void @_ZN5ImGui6IndentEf(float noundef %i.clm)
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zx, %.loopexit.i85
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.yt
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL26DemoWindowWidgetsTreeNodesv.exit

_ZL26DemoWindowWidgetsTreeNodesv.exit:            ; preds = %_ZL25DemoWindowWidgetsTooltipsv.exit, %bb.zz
  %i.cln = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1279)
  br i1 %i.cln, label %bb.aaa, label %_ZL32DemoWindowWidgetsVerticalSlidersv.exit

bb.aaa:                                           ; preds = %_ZL26DemoWindowWidgetsTreeNodesv.exit
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4404, ptr noundef nonnull @.str.1280)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store <2 x float> splat (float 4.000000e+00), ptr %0, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> <float 1.800000e+01, float 1.600000e+02>, ptr %1, align 8, !tbaa !46
  %i.clo = call noundef zeroext i1 @_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_i(ptr noundef nonnull @.str.1281, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE9int_value, i32 noundef 0, i32 noundef 5, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1282)
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.clp = load float, ptr %i.j, align 4, !tbaa !46
  %i.clq = load float, ptr %i.k, align 4, !tbaa !46
  %i.clr = load float, ptr %i.l, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.peel.i93 = insertelement <2 x float> poison, float %i.clp, i64 0
  %.sroa.0.4.vec.insert.i.peel.i94 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel.i93, float %i.clq, i64 1
  %.sroa.3.12.vec.insert.i.peel.i95 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.clr, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.peel.i94, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel.i95, ptr %87, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 7, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.cls = load float, ptr %i.g, align 4, !tbaa !46
  %i.clt = load float, ptr %i.h, align 4, !tbaa !46
  %i.clu = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i31.peel.i = insertelement <2 x float> poison, float %i.cls, i64 0
  %.sroa.0.4.vec.insert.i32.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i31.peel.i, float %i.clt, i64 1
  %.sroa.3.12.vec.insert.i34.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.clu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i32.peel.i, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.peel.i, ptr %88, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.clv = load float, ptr %i.d, align 4, !tbaa !46
  %i.clw = load float, ptr %i.e, align 4, !tbaa !46
  %i.clx = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i42.peel.i = insertelement <2 x float> poison, float %i.clv, i64 0
  %.sroa.0.4.vec.insert.i43.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i42.peel.i, float %i.clw, i64 1
  %.sroa.3.12.vec.insert.i45.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.clx, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i43.peel.i, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i45.peel.i, ptr %89, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 9, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F666666, float noundef f0x3F666666, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.cly = load float, ptr %i.a, align 4, !tbaa !46
  %i.clz = load float, ptr %i.b, align 4, !tbaa !46
  %i.cma = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i53.peel.i = insertelement <2 x float> poison, float %i.cly, i64 0
  %.sroa.0.4.vec.insert.i54.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i53.peel.i, float %i.clz, i64 1
  %.sroa.3.12.vec.insert.i56.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cma, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i54.peel.i, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i56.peel.i, ptr %90, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <2 x float> <float 1.800000e+01, float 1.600000e+02>, ptr %6, align 8, !tbaa !46
  %i.cmb = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cmc = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cmc, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.cmd = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cmd, label %bb.aac, label %.peel.next.i96

bb.aac:                                           ; preds = %bb.aab, %bb.aaa
  %i.cme = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, align 16, !tbaa !46
  %i.cmf = fpext float %i.cme to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cmf)
  br label %.peel.next.i96

.peel.next.i96:                                   ; preds = %bb.aac, %bb.aab
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 4)
  call void @_ZN5ImGui5PopIDEv()
  br label %bb.aam

bb.aad:                                           ; preds = %bb.aap
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1284)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store <2 x float> <float 1.800000e+01, float 5.000000e+01>, ptr %7, align 8, !tbaa !46
  call void @_ZN5ImGui10BeginGroupEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  %i.cmg = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cmh = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cmh, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.cmi = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cmi, label %bb.aaf, label %bb.aag

bb.aaf:                                           ; preds = %bb.aae, %bb.aad
  %i.cmj = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, align 16, !tbaa !46
  %i.cmk = fpext float %i.cmj to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cmk)
  br label %bb.aag

bb.aag:                                           ; preds = %bb.aaf, %bb.aae
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  %i.cml = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cmm = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cmm, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.cmn = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cmn, label %bb.aai, label %bb.aaj

bb.aai:                                           ; preds = %bb.aah, %bb.aag
  %i.cmo = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, align 16, !tbaa !46
  %i.cmp = fpext float %i.cmo to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cmp)
  br label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai, %bb.aah
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2)
  %i.cmq = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cmr = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cmr, label %bb.aal, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  %i.cms = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cms, label %bb.aal, label %.peel.next82.i

bb.aal:                                           ; preds = %bb.aak, %bb.aaj
  %i.cmt = load float, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, align 16, !tbaa !46
  %i.cmu = fpext float %i.cmt to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cmu)
  br label %.peel.next82.i

.peel.next82.i:                                   ; preds = %bb.aal, %bb.aak
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3)
  %i.cmv = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cmw = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cmw, label %bb.aar, label %bb.aaq

bb.aam:                                           ; preds = %bb.aap, %.peel.next.i96
  %indvars.iv.i97 = phi i64 [ 1, %.peel.next.i96 ], [ %indvars.iv.next.i101, %bb.aap ] ; 3 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.cmx = trunc nuw nsw i64 %indvars.iv.i97 to i32 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.cmx)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.cmy = uitofp nneg i32 %i.cmx to float
  %i.cmz = fdiv float %i.cmy, 7.000000e+00        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.cmz, float noundef 5.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.cna = load float, ptr %i.j, align 4, !tbaa !46
  %i.cnb = load float, ptr %i.k, align 4, !tbaa !46
  %i.cnc = load float, ptr %i.l, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.i98 = insertelement <2 x float> poison, float %i.cna, i64 0
  %.sroa.0.4.vec.insert.i.i99 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i98, float %i.cnb, i64 1
  %.sroa.3.12.vec.insert.i.i100 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cnc, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.i99, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i100, ptr %87, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 7, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.cmz, float noundef 6.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.cnd = load float, ptr %i.g, align 4, !tbaa !46
  %i.cne = load float, ptr %i.h, align 4, !tbaa !46
  %i.cnf = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i31.i = insertelement <2 x float> poison, float %i.cnd, i64 0
  %.sroa.0.4.vec.insert.i32.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i31.i, float %i.cne, i64 1
  %.sroa.3.12.vec.insert.i34.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cnf, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i32.i, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i34.i, ptr %88, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.cmz, float noundef f0x3F333333, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.cng = load float, ptr %i.d, align 4, !tbaa !46
  %i.cnh = load float, ptr %i.e, align 4, !tbaa !46
  %i.cni = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i42.i = insertelement <2 x float> poison, float %i.cng, i64 0
  %.sroa.0.4.vec.insert.i43.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i42.i, float %i.cnh, i64 1
  %.sroa.3.12.vec.insert.i45.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cni, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i43.i, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i45.i, ptr %89, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 9, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.cmz, float noundef f0x3F666666, float noundef f0x3F666666, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.cnj = load float, ptr %i.a, align 4, !tbaa !46
  %i.cnk = load float, ptr %i.b, align 4, !tbaa !46
  %i.cnl = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i53.i = insertelement <2 x float> poison, float %i.cnj, i64 0
  %.sroa.0.4.vec.insert.i54.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i53.i, float %i.cnk, i64 1
  %.sroa.3.12.vec.insert.i56.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cnl, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i54.i, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i56.i, ptr %90, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <2 x float> <float 1.800000e+01, float 1.600000e+02>, ptr %6, align 8, !tbaa !46
  %i.cnm = getelementptr inbounds nuw [4 x i8], ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 %indvars.iv.i97 ; 2 uses
  %i.cnn = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull %i.cnm, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cno = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cno, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.cnp = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cnp, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %bb.aan, %bb.aam
  %i.cnq = load float, ptr %i.cnm, align 4, !tbaa !46
  %i.cnr = fpext float %i.cnq to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cnr)
  br label %bb.aap

bb.aap:                                           ; preds = %bb.aao, %bb.aan
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 4)
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, 7
  br i1 %exitcond.not.i102, label %bb.aad, label %bb.aam, !llvm.loop !376

bb.aaq:                                           ; preds = %.peel.next82.i
  %i.cns = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cns, label %bb.aar, label %bb.aas

bb.aar:                                           ; preds = %bb.aaq, %.peel.next82.i
  %i.cnt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), align 4, !tbaa !46
  %i.cnu = fpext float %i.cnt to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cnu)
  br label %bb.aas

bb.aas:                                           ; preds = %bb.aar, %bb.aaq
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 4)
  %i.cnv = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cnw = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cnw, label %bb.aau, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  %i.cnx = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cnx, label %bb.aau, label %bb.aav

bb.aau:                                           ; preds = %bb.aat, %bb.aas
  %i.cny = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), align 4, !tbaa !46
  %i.cnz = fpext float %i.cny to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cnz)
  br label %bb.aav

bb.aav:                                           ; preds = %bb.aau, %bb.aat
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 5)
  %i.coa = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cob = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cob, label %bb.aax, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.coc = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.coc, label %bb.aax, label %bb.aay

bb.aax:                                           ; preds = %bb.aaw, %bb.aav
  %i.cod = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 4), align 4, !tbaa !46
  %i.coe = fpext float %i.cod to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.coe)
  br label %bb.aay

bb.aay:                                           ; preds = %bb.aax, %bb.aaw
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 6)
  %i.cof = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cog = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cog, label %bb.aba, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.coh = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.coh, label %bb.aba, label %bb.abb

bb.aba:                                           ; preds = %bb.aaz, %bb.aay
  %i.coi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), align 8, !tbaa !46
  %i.coj = fpext float %i.coi to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.coj)
  br label %bb.abb

bb.abb:                                           ; preds = %bb.aba, %bb.aaz
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 7)
  %i.cok = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.col = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.col, label %bb.abd, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  %i.com = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.com, label %bb.abd, label %bb.abe

bb.abd:                                           ; preds = %bb.abc, %bb.abb
  %i.con = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), align 8, !tbaa !46
  %i.coo = fpext float %i.con to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.coo)
  br label %bb.abe

bb.abe:                                           ; preds = %bb.abd, %bb.abc
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 8)
  %i.cop = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.coq = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.coq, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  %i.cor = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cor, label %bb.abg, label %bb.abh

bb.abg:                                           ; preds = %bb.abf, %bb.abe
  %i.cos = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 8), align 8, !tbaa !46
  %i.cot = fpext float %i.cos to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cot)
  br label %bb.abh

bb.abh:                                           ; preds = %bb.abg, %bb.abf
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 9)
  %i.cou = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cov = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cov, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.cow = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cow, label %bb.abj, label %bb.abk

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %i.cox = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), align 4, !tbaa !46
  %i.coy = fpext float %i.cox to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.coy)
  br label %bb.abk

bb.abk:                                           ; preds = %bb.abj, %bb.abi
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 10)
  %i.coz = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cpa = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cpa, label %bb.abm, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  %i.cpb = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cpb, label %bb.abm, label %bb.abn

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %i.cpc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), align 4, !tbaa !46
  %i.cpd = fpext float %i.cpc to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cpd)
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %bb.abl
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui6PushIDEi(i32 noundef 11)
  %i.cpe = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.157, i32 noundef 0) ; 0 uses
  %i.cpf = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.cpf, label %bb.abp, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  %i.cpg = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.cpg, label %bb.abp, label %bb.abq

bb.abp:                                           ; preds = %bb.abo, %bb.abn
  %i.cph = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE7values2, i64 12), align 4, !tbaa !46
  %i.cpi = fpext float %i.cph to double
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.201, double noundef %i.cpi)
  br label %bb.abq

bb.abq:                                           ; preds = %bb.abp, %bb.abo
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1285)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 21, float noundef 4.000000e+01)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !46
  %i.cpj = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1286, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 21, float noundef 4.000000e+01)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !46
  %i.cpk = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 4), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1286, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 2)
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 21, float noundef 4.000000e+01)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !46
  %i.cpl = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 8), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1286, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef 3)
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 21, float noundef 4.000000e+01)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store <2 x float> <float 4.000000e+01, float 1.600000e+02>, ptr %8, align 8, !tbaa !46
  %i.cpm = call noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef nonnull @.str.1283, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZL32DemoWindowWidgetsVerticalSlidersvE6values, i64 12), float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.1286, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZL32DemoWindowWidgetsVerticalSlidersv.exit

_ZL32DemoWindowWidgetsVerticalSlidersv.exit:      ; preds = %_ZL26DemoWindowWidgetsTreeNodesv.exit, %bb.abq
  br i1 %i.cs, label %bb.abr, label %bb.abs

bb.abr:                                           ; preds = %_ZL32DemoWindowWidgetsVerticalSlidersv.exit
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui11PopItemFlagEv()
  br label %bb.abs

bb.abs:                                           ; preds = %bb.abr, %_ZL32DemoWindowWidgetsVerticalSlidersv.exit
  br i1 %i.cq, label %bb.abt, label %bb.abu

bb.abt:                                           ; preds = %bb.abs
  call void @_ZN5ImGui11EndDisabledEv()
  br label %bb.abu

bb.abu:                                           ; preds = %bb.abs, %bb.abt, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
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
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca %struct.ImVec2, align 4            ; 5 uses
  %43 = alloca %struct.ImVec4, align 16           ; 4 uses
  %44 = alloca %struct.ImVec2, align 4            ; 5 uses
  %45 = alloca %struct.ImVec4, align 16           ; 8 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.m = alloca [16 x i8], align 16               ; 7 uses
  %48 = alloca %struct.ImVec4, align 8            ; 9 uses
  %49 = alloca %struct.ImVec4, align 8            ; 9 uses
  %50 = alloca %struct.ImVec4, align 8            ; 9 uses
  %51 = alloca %struct.ImVec2, align 8            ; 9 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca %struct.ImVec2, align 8            ; 4 uses
  %54 = alloca %struct.ImVec2, align 8            ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 4 uses
  %56 = alloca %struct.ImVec2, align 8            ; 7 uses
  %57 = alloca %struct.ImVec2, align 8            ; 4 uses
  %58 = alloca %struct.ImVec2, align 4            ; 5 uses
  %59 = alloca %struct.ImVec2, align 8            ; 4 uses
  %60 = alloca %struct.ImVec2, align 8            ; 4 uses
  %61 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %62 = alloca %struct.ImVec2, align 8            ; 4 uses
  %63 = alloca %struct.ImVec2, align 8            ; 4 uses
  %64 = alloca %struct.ImVec2, align 8            ; 18 uses
  %65 = alloca %struct.ImVec2, align 8            ; 15 uses
  %66 = alloca %struct.ImVec2, align 8            ; 12 uses
  %67 = alloca %struct.ImVec4, align 16           ; 4 uses
  %68 = alloca %struct.ImVec2, align 8            ; 4 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %70 = alloca %struct.ImVec2, align 8            ; 4 uses
  %71 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull @.str.1287, i32 noundef 0)
  br i1 %i.o, label %bb.b, label %bb.fe

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1288)
  br i1 %i.p, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 4542, ptr noundef nonnull @.str.1289)
  tail call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1288)
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.q, label %bb.d, label %_ZL10HelpMarkerPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.s = fmul float %i.r, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.s)
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1290, ptr noundef null)
  tail call void @_ZN5ImGui14PopTextWrapPosEv()
  tail call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.c, %bb.d
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1291, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE19disable_mouse_wheel) ; 0 uses
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1292, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12disable_menu) ; 0 uses
  %i.v = load i8, ptr @_ZZL16DemoWindowLayoutvE19disable_mouse_wheel, align 1, !tbaa !35, !range !19, !noundef !20
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select = select i1 %i.w, i32 2064, i32 2048
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.x = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0159.0.vec.extract = extractelement <2 x float> %i.x, i64 0
  %i.y = fmul float %.sroa.0159.0.vec.extract, 5.000000e-01
  store float %i.y, ptr %0, align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 2.600000e+02, ptr %i.z, align 4, !tbaa !45
  %i.aa = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1293, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0, i32 noundef %spec.select) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ab = load i8, ptr @_ZZL16DemoWindowLayoutvE19disable_mouse_wheel, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ac = shl nuw nsw i8 %i.ab, 4
  %spec.select193 = zext nneg i8 %i.ac to i32     ; 2 uses
  %i.ad = load i8, ptr @_ZZL16DemoWindowLayoutvE12disable_menu, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = or disjoint i32 %spec.select193, 1024
  %.1168 = select i1 %i.ae, i32 %spec.select193, i32 %i.af
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef 5.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> <float 0.000000e+00, float 2.600000e+02>, ptr %1, align 8, !tbaa !46
  %i.ag = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1295, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 1, i32 noundef %.1168) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.ah = load i8, ptr @_ZZL16DemoWindowLayoutvE12disable_menu, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %bb.g

bb.f:                                             ; preds = %_ZL10HelpMarkerPKc.exit, %bb.f
  %.0165253 = phi i32 [ 0, %_ZL10HelpMarkerPKc.exit ], [ %i.aj, %bb.f ] ; 2 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1294, i32 noundef %.0165253)
  %i.aj = add nuw nsw i32 %.0165253, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, 100
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !387

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.353, i1 noundef zeroext true)
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZL19ShowExampleMenuFilev()
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !46
  %i.am = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.110, i32 noundef 2, i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.am, label %.preheader252, label %bb.m

bb.l:                                             ; preds = %.preheader252
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.m

.preheader252:                                    ; preds = %bb.k, %.preheader252
  %.0171254 = phi i32 [ %i.aq, %.preheader252 ], [ 0, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.an = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) @.str.1296, i32 noundef %.0171254) #30 ; 0 uses
  %i.ao = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store <2 x float> <float f0x80800000, float 0.000000e+00>, ptr %3, align 8, !tbaa !46
  %i.ap = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull %i.j, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.aq = add nuw nsw i32 %.0171254, 1            ; 2 uses
  %exitcond274.not = icmp eq i32 %i.aq, 100
  br i1 %exitcond274.not, label %bb.l, label %.preheader252, !llvm.loop !388

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1297)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ar = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ar, label %bb.n, label %_ZL10HelpMarkerPKc.exit198

bb.n:                                             ; preds = %bb.m
  %i.as = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.at = fmul float %i.as, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.at)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1298, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit198

_ZL10HelpMarkerPKc.exit198:                       ; preds = %bb.m, %bb.n
  %i.au = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 7)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.av = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.aw = fmul float %i.av, 8.000000e+00
  store float f0x80800000, ptr %4, align 4, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !45
  %i.ay = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1299, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 9, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.ay, label %.preheader250.preheader, label %.loopexit251

.preheader250.preheader:                          ; preds = %_ZL10HelpMarkerPKc.exit198
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 3)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 4)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 5)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 6)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 7)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 8)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1300, i32 noundef 9)
  br label %.loopexit251

.loopexit251:                                     ; preds = %.preheader250.preheader, %_ZL10HelpMarkerPKc.exit198
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1301)
  %i.az = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ba = fmul float %i.az, 8.000000e+00
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.ba)
  %i.bb = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.1302, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE10draw_lines, float noundef 2.000000e-01, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  %i.bc = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.bd = fmul float %i.bc, 8.000000e+00
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %i.bd)
  %i.be = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.1303, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE19max_height_in_lines, float noundef 2.000000e-01, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bf = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  store float 0.000000e+00, ptr %5, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bf, ptr %i.bg, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bh = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.bi = load i32, ptr @_ZZL16DemoWindowLayoutvE19max_height_in_lines, align 4, !tbaa !51
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fmul float %i.bh, %i.bj
  store float f0x7F7FFFFF, ptr %6, align 4, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bk, ptr %i.bl, align 4, !tbaa !45
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
end_hunk_1
begin_hunk_2_@_ZL16DemoWindowLayoutv:bb.a
  %i.jq = or i8 %i.jo, %i.jp
  store i8 %i.jq, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.jr = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1436, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12enable_track) ; 0 uses
  %i.js = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1437, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.1438, i32 noundef 0)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  store <2 x float> zeroinitializer, ptr %40, align 8, !tbaa !46
  %i.jt = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1439, ptr noundef nonnull align 4 dereferenceable(8) %40)
  %i.ju = or i1 %i.js, %i.jt                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  %i.jv = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1440, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, float noundef 1.000000e+00, float noundef -1.000000e+01, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.1441, i32 noundef 0)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #30
  store <2 x float> zeroinitializer, ptr %41, align 8, !tbaa !46
  %i.jw = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1442, ptr noundef nonnull align 4 dereferenceable(8) %41)
  %i.jx = or i1 %i.jv, %i.jw                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #30
  call void @_ZN5ImGui12PopItemWidthEv()
  %or.cond = or i1 %i.ju, %i.jx
  br i1 %or.cond, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZL10HelpMarkerPKc.exit209
  store i8 0, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35
  br label %bb.bo

bb.bo:                                            ; preds = %_ZL10HelpMarkerPKc.exit209, %bb.bn
  %i.jy = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 3 uses
  %i.jz = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.087.0.vec.extract = extractelement <2 x float> %i.jz, i64 0
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 92
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !131
  %i.kc = call float @llvm.fmuladd.f32(float %i.kb, float -4.000000e+00, float %.sroa.087.0.vec.extract)
  %i.kd = fdiv float %i.kc, 5.000000e+00          ; 2 uses
  %i.ke = fcmp olt float %i.kd, 1.000000e+00
  %spec.store.select = select i1 %i.ke, float 1.000000e+00, float %i.kd
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1443)
  %i.kf = getelementptr inbounds nuw i8, ptr %42, i64 4
  br label %bb.br

bb.bp:                                            ; preds = %.loopexit245
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 5109, ptr noundef nonnull @.str.1451)
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.kg = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.kg, label %bb.bq, label %_ZL10HelpMarkerPKc.exit210

bb.bq:                                            ; preds = %bb.bp
  %i.kh = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ki = fmul float %i.kh, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ki)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1452, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit210

_ZL10HelpMarkerPKc.exit210:                       ; preds = %bb.bp, %bb.bq
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1453)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jy, i64 132
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %44, i64 4
  br label %bb.cg

bb.br:                                            ; preds = %bb.bo, %.loopexit245
  %indvars.iv = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next, %.loopexit245 ] ; 6 uses
  %.not190 = icmp eq i64 %indvars.iv, 0
  br i1 %.not190, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @_ZN5ImGui10BeginGroupEv()
  %i.km = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowLayoutv.names, i64 %indvars.iv
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !101
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef %i.kn, ptr noundef null)
  %i.ko = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !35, !range !19, !noundef !20
  %i.kp = zext nneg i8 %i.ko to i32
  %i.kq = shl nuw nsw i32 %i.kp, 10
  %i.kr = inttoptr i64 %indvars.iv to ptr
  %i.ks = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.kr)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #30
  store float %spec.store.select, ptr %42, align 4, !tbaa !44
  store float 2.000000e+02, ptr %i.kf, align 4, !tbaa !45
  %i.kt = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.ks, ptr noundef nonnull align 4 dereferenceable(8) %42, i32 noundef 1, i32 noundef %i.kq)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #30
  %i.ku = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.ku, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1449, ptr noundef null)
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %i.ju, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kv = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !46
  call void @_ZN5ImGui10SetScrollYEf(float noundef %i.kv)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.jx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.kw = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv()
  %.sroa.076.4.vec.extract = extractelement <2 x float> %i.kw, i64 1
  %i.kx = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !46
  %i.ky = fadd float %.sroa.076.4.vec.extract, %i.kx
  %i.kz = trunc nuw nsw i64 %indvars.iv to i32
  %i.la = uitofp nneg i32 %i.kz to float
  %i.lb = fmul nnan float %i.la, 2.500000e-01
  call void @_ZN5ImGui17SetScrollFromPosYEff(float noundef %i.ky, float noundef %i.lb)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  br i1 %i.kt, label %.preheader244, label %.loopexit245

.preheader244:                                    ; preds = %bb.bz
  %i.lc = trunc nuw nsw i64 %indvars.iv to i32
  %i.ld = uitofp nneg i32 %i.lc to float
  %i.le = fmul nnan float %i.ld, 2.500000e-01
  br label %bb.ca

bb.ca:                                            ; preds = %.preheader244, %bb.cd
  %.0177262 = phi i32 [ 0, %.preheader244 ], [ %i.lj, %bb.cd ] ; 4 uses
  %i.lf = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19, !noundef !20
  %i.lg = trunc nuw i8 %i.lf to i1
  %i.lh = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.li = icmp eq i32 %.0177262, %i.lh
  %or.cond195 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond195, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %43, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull @.str.932, i32 noundef %.0177262)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #30
  call void @_ZN5ImGui14SetScrollHereYEf(float noundef %i.le)
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef %.0177262)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.lj = add nuw nsw i32 %.0177262, 1            ; 2 uses
  %exitcond283.not = icmp eq i32 %i.lj, 100
  br i1 %exitcond283.not, label %.loopexit245, label %bb.ca, !llvm.loop !391

.loopexit245:                                     ; preds = %bb.cd, %bb.bz
  %i.lk = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.ll = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  call void @_ZN5ImGui8EndChildEv()
  %i.lm = fpext float %i.lk to double
  %i.ln = fpext float %i.ll to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1450, double noundef %i.lm, double noundef %i.ln)
  call void @_ZN5ImGui8EndGroupEv()
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond285.not, label %bb.bp, label %bb.br, !llvm.loop !392

bb.ce:                                            ; preds = %.loopexit
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 5155, ptr noundef nonnull @.str.1458)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.lo = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.lo, label %bb.cf, label %_ZL10HelpMarkerPKc.exit211

bb.cf:                                            ; preds = %bb.ce
  %i.lp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.lq = fmul float %i.lp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.lq)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1459, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit211

_ZL10HelpMarkerPKc.exit211:                       ; preds = %bb.ce, %bb.cf
  %i.lr = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.842, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE5lines, i32 noundef 1, i32 noundef 15, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 12, float noundef 3.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #30
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %46, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  %i.ls = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.lt = call float @llvm.fmuladd.f32(float %i.ls, float 7.000000e+00, float 3.000000e+01)
  store float 0.000000e+00, ptr %47, align 4, !tbaa !44
  %i.lu = getelementptr inbounds nuw i8, ptr %47, i64 4
  store float %i.lt, ptr %i.lu, align 4, !tbaa !45
  %i.lv = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1460, ptr noundef nonnull align 4 dereferenceable(8) %47, i32 noundef 1, i32 noundef 2048) ; 0 uses
  %i.lw = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !51
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph268, label %._crit_edge

.lr.ph268:                                        ; preds = %_ZL10HelpMarkerPKc.exit211
  %72 = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %73 = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %74 = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %51, i64 4
  br label %bb.cr

bb.cg:                                            ; preds = %_ZL10HelpMarkerPKc.exit210, %.loopexit
  %indvars.iv290 = phi i64 [ 0, %_ZL10HelpMarkerPKc.exit210 ], [ %indvars.iv.next291, %.loopexit ] ; 5 uses
  %i.lz = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.ma = load float, ptr %i.kj, align 4, !tbaa !398
  %i.mb = fadd float %i.lz, %i.ma
  %i.mc = load float, ptr %i.kk, align 4, !tbaa !126
  %i.md = call float @llvm.fmuladd.f32(float %i.mc, float 2.000000e+00, float %i.mb)
  %i.me = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !35, !range !19, !noundef !20
  %i.mf = zext nneg i8 %i.me to i32
  %i.mg = shl nuw nsw i32 %i.mf, 14
  %i.mh = or disjoint i32 %i.mg, 2048
  %i.mi = inttoptr i64 %indvars.iv290 to ptr
  %i.mj = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.mi)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  store float -1.000000e+02, ptr %44, align 4, !tbaa !44
  store float %i.md, ptr %i.kl, align 4, !tbaa !45
  %i.mk = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.mj, ptr noundef nonnull align 4 dereferenceable(8) %44, i32 noundef 1, i32 noundef %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br i1 %i.ju, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ml = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !46
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.ml)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.jx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mm = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv()
  %.sroa.058.0.vec.extract = extractelement <2 x float> %i.mm, i64 0
  %i.mn = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !46
  %i.mo = fadd float %.sroa.058.0.vec.extract, %i.mn
  %i.mp = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.mq = uitofp nneg i32 %i.mp to float
  %i.mr = fmul nnan float %i.mq, 2.500000e-01
  call void @_ZN5ImGui17SetScrollFromPosXEff(float noundef %i.mo, float noundef %i.mr)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.mk, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %bb.ck
  %i.ms = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.mt = uitofp nneg i32 %i.ms to float
  %i.mu = fmul nnan float %i.mt, 2.500000e-01     ; 2 uses
  %.pre310 = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %.pre = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19
  %i.mv = trunc nuw i8 %.pre to i1
  %i.mw = icmp eq i32 %.pre310, 0
  %or.cond197.peel = select i1 %i.mv, i1 %i.mw, i1 false
  br i1 %or.cond197.peel, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef 0)
  br label %.peel.next288.preheader

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mu)
  br label %.peel.next288.preheader

.peel.next288.preheader:                          ; preds = %bb.cm, %bb.cn
  br label %.peel.next288

.peel.next288:                                    ; preds = %.peel.next288.preheader, %bb.cq
  %.0173264 = phi i32 [ %i.nb, %bb.cq ], [ 1, %.peel.next288.preheader ] ; 4 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.mx = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19, !noundef !20
  %i.my = trunc nuw i8 %i.mx to i1
  %i.mz = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.na = icmp eq i32 %.0173264, %i.mz
  %or.cond197 = select i1 %i.my, i1 %i.na, i1 false
  br i1 %or.cond197, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.peel.next288
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef %.0173264)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mu)
  br label %bb.cq

bb.cp:                                            ; preds = %.peel.next288
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef %.0173264)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.nb = add nuw nsw i32 %.0173264, 1            ; 2 uses
  %exitcond286.not = icmp eq i32 %i.nb, 100
  br i1 %exitcond286.not, label %.loopexit, label %.peel.next288, !llvm.loop !393

.loopexit:                                        ; preds = %bb.cq, %bb.ck
  %i.nc = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.nd = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowLayoutv.names.1456, i64 %indvars.iv290
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !101
  %i.ng = fpext float %i.nc to double
  %i.nh = fpext float %i.nd to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1457, ptr noundef %i.nf, double noundef %i.ng, double noundef %i.nh)
  call void @_ZN5ImGui7SpacingEv()
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next291, 5
  br i1 %exitcond293.not, label %bb.ce, label %bb.cg, !llvm.loop !394

._crit_edge:                                      ; preds = %.loopexit298, %_ZL10HelpMarkerPKc.exit211
  %i.ni = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.nj = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.nk = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1072) ; 0 uses
  %i.nl = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.nl, label %bb.cv, label %bb.cw

bb.cr:                                            ; preds = %.lr.ph268, %.loopexit298
  %.0170267 = phi i32 [ 0, %.lr.ph268 ], [ %i.oh, %.loopexit298 ] ; 6 uses
  %i.nm = and i32 %.0170267, 1
  %.not184 = icmp eq i32 %i.nm, 0
  %.v = select i1 %.not184, i32 3, i32 9
  %i.nn = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.no = fmul float %i.nn, 3.000000e+00          ; 4 uses
  %i.np = mul nuw nsw i32 %.0170267, 1000         ; 2 uses
  %i.nq = mul i32 %.v, %.0170267
  %i.nr = add i32 %i.nq, 10                       ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.np)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.ns = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef 0) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.nt = load float, ptr %i.g, align 4, !tbaa !46
  %i.nu = load float, ptr %i.h, align 4, !tbaa !46
  %i.nv = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.nt, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.nu, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.nv, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %72, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.nw = load float, ptr %i.d, align 4, !tbaa !46
  %i.nx = load float, ptr %i.e, align 4, !tbaa !46
  %i.ny = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214.peel = insertelement <2 x float> poison, float %i.nw, i64 0
  %.sroa.0.4.vec.insert.i215.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i214.peel, float %i.nx, i64 1
  %.sroa.3.12.vec.insert.i217.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ny, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i215.peel, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i217.peel, ptr %73, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.nz = load float, ptr %i.a, align 4, !tbaa !46
  %i.oa = load float, ptr %i.b, align 4, !tbaa !46
  %i.ob = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225.peel = insertelement <2 x float> poison, float %i.nz, i64 0
  %.sroa.0.4.vec.insert.i226.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i225.peel, float %i.oa, i64 1
  %.sroa.3.12.vec.insert.i228.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ob, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226.peel, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228.peel, ptr %74, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.oc = uitofp nneg i32 %.0170267 to float
  %i.od = call float @sinf(float noundef %i.oc) #30
  %i.oe = fmul float %i.no, %i.od
  %i.of = call float @llvm.fmuladd.f32(float %i.oe, float 5.000000e-01, float %i.no)
  store float %i.of, ptr %51, align 8, !tbaa !44
  store float 0.000000e+00, ptr %i.ly, align 4, !tbaa !45
  %i.og = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1461, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %exitcond294.peel.not = icmp ult i32 %i.nr, 2
  br i1 %exitcond294.peel.not, label %.loopexit298, label %.peel.next296

.loopexit298:                                     ; preds = %bb.cu, %bb.cr
  %i.oh = add nuw nsw i32 %.0170267, 1            ; 2 uses
  %i.oi = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !51
  %i.oj = icmp slt i32 %i.oh, %i.oi
  br i1 %i.oj, label %bb.cr, label %._crit_edge, !llvm.loop !395

.peel.next296:                                    ; preds = %bb.cr, %bb.cu
  %.0169266 = phi i32 [ %i.pi, %bb.cu ], [ 1, %bb.cr ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ok = add nuw nsw i32 %.0169266, %i.np
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.ok)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.ol = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef %.0169266) #30 ; 0 uses
  %i.om = urem i32 %.0169266, 15
  %.not186 = icmp eq i32 %i.om, 0
  br i1 %.not186, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.peel.next296
  %i.on = urem i32 %.0169266, 3
  %.not187 = icmp eq i32 %i.on, 0
  br i1 %.not187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oo = urem i32 %.0169266, 5
  %.not188 = icmp eq i32 %i.oo, 0
  %i.op = select i1 %.not188, ptr @.str.1463, ptr %i.m
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.peel.next296
  %i.oq = phi ptr [ @.str.1461, %.peel.next296 ], [ %i.op, %bb.ct ], [ @.str.1462, %bb.cs ]
  %i.or = uitofp nneg i32 %.0169266 to float
  %i.os = fmul nnan float %i.or, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.os, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.ot = load float, ptr %i.g, align 4, !tbaa !46
  %i.ou = load float, ptr %i.h, align 4, !tbaa !46
  %i.ov = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ot, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ou, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ov, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %72, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.os, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.ow = load float, ptr %i.d, align 4, !tbaa !46
  %i.ox = load float, ptr %i.e, align 4, !tbaa !46
  %i.oy = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214 = insertelement <2 x float> poison, float %i.ow, i64 0
  %.sroa.0.4.vec.insert.i215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i214, float %i.ox, i64 1
  %.sroa.3.12.vec.insert.i217 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oy, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i215, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i217, ptr %73, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.os, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.oz = load float, ptr %i.a, align 4, !tbaa !46
  %i.pa = load float, ptr %i.b, align 4, !tbaa !46
  %i.pb = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225 = insertelement <2 x float> poison, float %i.oz, i64 0
  %.sroa.0.4.vec.insert.i226 = insertelement <2 x float> %.sroa.0.0.vec.insert.i225, float %i.pa, i64 1
  %.sroa.3.12.vec.insert.i228 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pb, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228, ptr %74, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.pc = add nuw nsw i32 %.0169266, %.0170267
  %i.pd = uitofp nneg i32 %i.pc to float
  %i.pe = call float @sinf(float noundef %i.pd) #30
  %i.pf = fmul float %i.no, %i.pe
  %.scalar = call float @llvm.fmuladd.f32(float %i.pf, float 5.000000e-01, float %i.no)
  %i.pg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.pg, ptr %51, align 8, !tbaa !46
  %i.ph = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.oq, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.pi = add nuw i32 %.0169266, 1                ; 2 uses
  %exitcond294.not = icmp eq i32 %i.nr, %i.pi
  br i1 %exitcond294.not, label %.loopexit298, label %.peel.next296, !llvm.loop !396

bb.cv:                                            ; preds = %._crit_edge
  %i.pj = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load float, ptr %i.pk, align 8, !tbaa !138
  %i.pm = fmul float %i.pl, -1.000000e+03
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge
  %.0166 = phi float [ %i.pm, %bb.cv ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1464)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.pn = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1069) ; 0 uses
  %i.po = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.po, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.pp = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load float, ptr %i.pq, align 8, !tbaa !138
  %i.ps = fmul float %i.pr, 1.000000e+03
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.1 = phi float [ %i.ps, %bb.cx ], [ %.0166, %bb.cw ] ; 2 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.pt = fpext float %i.ni to double
  %i.pu = fpext float %i.nj to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1450, double noundef %i.pt, double noundef %i.pu)
  %i.pv = fcmp une float %.1, 0.000000e+00
  br i1 %i.pv, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #30
  store <2 x float> zeroinitializer, ptr %52, align 8, !tbaa !46
  %i.pw = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1460, ptr noundef nonnull align 4 dereferenceable(8) %52, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #30
  %i.px = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.py = fadd float %.1, %i.px
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.py)
  call void @_ZN5ImGui8EndChildEv()
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @_ZN5ImGui7SpacingEv()
  %i.pz = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1465, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window) ; 0 uses
  %i.qa = load i8, ptr @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.db, label %bb.eh

bb.db:                                            ; preds = %bb.da
  %i.qc = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #30
  %i.qe = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !46
  %i.qf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qe, i64 0
  store <2 x float> %i.qf, ptr %53, align 8, !tbaa !46
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %53)
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #30
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.qg = load i8, ptr @_ZZL16DemoWindowLayoutvE16show_h_scrollbar, align 1, !tbaa !35, !range !19, !noundef !20
  %i.qh = zext nneg i8 %i.qg to i32
  %i.qi = shl nuw nsw i32 %i.qh, 11
  %i.qj = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1466, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE41show_horizontal_contents_size_demo_window, i32 noundef %i.qi) ; 0 uses
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
  %i.qk = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.qk, label %bb.de, label %_ZL10HelpMarkerPKc.exit236

bb.de:                                            ; preds = %bb.dd
  %i.ql = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.qm = fmul float %i.ql, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.qm)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1468, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit236

_ZL10HelpMarkerPKc.exit236:                       ; preds = %bb.dd, %bb.de
  %i.qn = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1469, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE16show_h_scrollbar) ; 0 uses
  %i.qo = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.419, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE11show_button) ; 0 uses
  %i.qp = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1010, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15show_tree_nodes) ; 0 uses
  %i.qq = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1470, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE17show_text_wrapped) ; 0 uses
  %i.qr = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1471, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_columns) ; 0 uses
  %i.qs = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1472, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE12show_tab_bar) ; 0 uses
  %i.qt = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1473, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE10show_child) ; 0 uses
  %i.qu = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1474, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE21explicit_content_size) ; 0 uses
  %i.qv = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.qw = fpext float %i.qv to double
  %i.qx = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  %i.qy = fpext float %i.qx to double
  %i.qz = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.ra = fpext float %i.qz to double
  %i.rb = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  %i.rc = fpext float %i.rb to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1475, double noundef %i.qw, double noundef %i.qy, double noundef %i.ra, double noundef %i.rc)
  %i.rd = load i8, ptr @_ZZL16DemoWindowLayoutvE21explicit_content_size, align 1, !tbaa !35, !range !19, !noundef !20
  %i.re = trunc nuw i8 %i.rd to i1
  br i1 %i.re, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZL10HelpMarkerPKc.exit236
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.rf = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.935, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.021.0.vec.extract = extractelement <2 x float> %i.rf, i64 0
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef %.sroa.021.0.vec.extract)
  %i.rg = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1476, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE15contents_size_x, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  %i.rh = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  store <2 x float> %i.rh, ptr %56, align 8
  %i.ri = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #30
  %i.rj = getelementptr inbounds nuw i8, ptr %56, i64 4
  %i.rk = load <2 x float>, ptr %56, align 8, !tbaa !46
  %i.rl = fadd <2 x float> %i.rk, splat (float 1.000000e+01)
  store <2 x float> %i.rl, ptr %57, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ri, ptr noundef nonnull align 4 dereferenceable(8) %56, ptr noundef nonnull align 4 dereferenceable(8) %57, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  %i.rm = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #30
  %i.rn = load float, ptr @_ZZL16DemoWindowLayoutvE15contents_size_x, align 4, !tbaa !46
  %i.ro = getelementptr inbounds nuw i8, ptr %58, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #30
  %i.rp = load float, ptr %i.rj, align 4, !tbaa !45
  %i.rq = load <2 x float>, ptr %56, align 8, !tbaa !46
  %i.rr = insertelement <2 x float> <float poison, float 1.000000e+01>, float %i.rn, i64 0
  %i.rs = fadd <2 x float> %i.rq, %i.rr           ; 2 uses
  %i.rt = extractelement <2 x float> %i.rs, i64 0
  %i.ru = fadd float %i.rt, -1.000000e+01
  store float %i.ru, ptr %58, align 4, !tbaa !44
  store float %i.rp, ptr %i.ro, align 4, !tbaa !45
  store <2 x float> %i.rs, ptr %59, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.rm, ptr noundef nonnull align 4 dereferenceable(8) %58, ptr noundef nonnull align 4 dereferenceable(8) %59, i32 noundef -1, float noundef 0.000000e+00, i32 noundef 0)
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
  %i.rv = load i8, ptr @_ZZL16DemoWindowLayoutvE11show_button, align 1, !tbaa !35, !range !19, !noundef !20
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  store <2 x float> <float 3.000000e+02, float 0.000000e+00>, ptr %61, align 8, !tbaa !46
  %i.rx = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1477, ptr noundef nonnull align 4 dereferenceable(8) %61) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ry = load i8, ptr @_ZZL16DemoWindowLayoutvE15show_tree_nodes, align 1, !tbaa !35, !range !19, !noundef !20
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #30
  store i8 1, ptr %i.n, align 1, !tbaa !35
  %i.sa = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1478)
  br i1 %i.sa, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.sb = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1479)
end_hunk_2
begin_hunk_3_@_ZL19ShowExampleMenuFilev:bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.393, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.394, i1 noundef zeroext true)
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.395, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.396, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.397, i1 noundef zeroext true)
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL19ShowExampleMenuFilev()
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.398, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.399, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.400, i1 noundef zeroext true)
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9003, ptr noundef nonnull @.str.401)
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_Pbb(ptr noundef nonnull @.str.402, ptr noundef nonnull @.str.157, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE7enabled, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.p = tail call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.q = fmul float %i.p, 5.000000e+00
  store float 0.000000e+00, ptr %0, align 4, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.q, ptr %i.r, align 4, !tbaa !45
  %i.s = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.403, ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 3)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 4)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 5)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 6)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 7)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 8)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef 9)
  call void @_ZN5ImGui8EndChildEv()
  %i.t = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.405, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1f, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.u = call noundef zeroext i1 @_ZN5ImGui10InputFloatEPKcPfffS1_i(ptr noundef nonnull @.str.406, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1f, float noundef 1.000000e-01, float noundef 0.000000e+00, ptr noundef nonnull @.str.201, i32 noundef 0) ; 0 uses
  %i.v = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.407, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1n, ptr noundef nonnull @.str.408, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.290, i1 noundef zeroext true)
  br i1 %i.w, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9020, ptr noundef nonnull @.str.409)
  %i.x = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.l
  %.01113 = phi i32 [ 0, %bb.j ], [ %i.ah, %bb.l ] ; 3 uses
  %i.aa = call noundef ptr @_ZN5ImGui17GetStyleColorNameEi(i32 noundef %.01113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ab = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  store <2 x float> %i.ab, ptr %1, align 8
  %i.ac = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ad = load <2 x float>, ptr %1, align 8, !tbaa !46
  %i.ae = fadd <2 x float> %i.z, %i.ad
  store <2 x float> %i.ae, ptr %2, align 8, !tbaa !46
  %i.af = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %.01113, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %i.af, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store <2 x float> %i.z, ptr %3, align 8, !tbaa !46
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ag = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef %i.aa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.ah = add nuw nsw i32 %.01113, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, 61
  br i1 %exitcond.not, label %bb.k, label %bb.l, !llvm.loop !430

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.ai = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.400, i1 noundef zeroext true)
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9039, ptr noundef nonnull @.str.410)
  %i.aj = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.411, ptr noundef nonnull @_ZZL19ShowExampleMenuFilevE1b) ; 0 uses
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.412, i1 noundef zeroext false) ; 0 uses
  %i.al = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.413, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) ; 0 uses
  call void @_ZN5ImGui9SeparatorEv()
  %i.am = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.414, ptr noundef nonnull @.str.415, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
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

declare void @_ZN5ImGui12PushItemFlagEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL30DemoWindowWidgetsDisableBlocksP19ImGuiDemoWindowData() unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.700)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1631, ptr noundef nonnull @.str.701)
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.702, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 20)) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.c, label %bb.c, label %_ZL10HelpMarkerPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.e = fmul float %i.d, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.e)
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.703, ptr noundef null)
  tail call void @_ZN5ImGui14PopTextWrapPosEv()
  tail call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.b, %bb.c
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.d

bb.d:                                             ; preds = %_ZL10HelpMarkerPKc.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 20 uses
  %0 = alloca %struct.ImVec2, align 8             ; 20 uses
  %i.b = alloca [32 x i8], align 16               ; 20 uses
  %1 = alloca %struct.ImVec2, align 8             ; 20 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImGuiListClipper, align 8   ; 11 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.e = alloca [64 x i8], align 16               ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImGuiListClipper, align 8  ; 11 uses
  %i.f = alloca [64 x i8], align 16               ; 5 uses
  %12 = alloca %struct.ImVec2, align 8            ; 5 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImGuiSelectionExternalStorage, align 8 ; 7 uses
  %i.g = alloca [32 x i8], align 16               ; 80 uses
  %i.h = alloca [64 x i8], align 16               ; 32 uses
  %15 = alloca %struct.ImVec2, align 8            ; 32 uses
  %16 = alloca %struct.ImVec2, align 4            ; 5 uses
  %17 = alloca %struct.ImVec2, align 4            ; 5 uses
  %18 = alloca %struct.ImVec2, align 4            ; 5 uses
  %19 = alloca %struct.ImVec2, align 4            ; 6 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImGuiListClipper, align 8  ; 12 uses
  %i.i = alloca [64 x i8], align 16               ; 8 uses
  %23 = alloca %struct.ImVec4, align 8            ; 6 uses
  %24 = alloca %struct.ImVec2, align 8            ; 5 uses
  %25 = alloca %struct.ImVector.21, align 8       ; 11 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %26 = alloca %struct.ImVec2, align 8            ; 5 uses
  %27 = alloca %struct.ImVec2, align 8            ; 5 uses
  %28 = alloca %struct.ImVec2, align 8            ; 5 uses
  %i.l = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.942)
  br i1 %i.l, label %bb.b, label %bb.kk

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2846, ptr noundef nonnull @.str.943)
  tail call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.m, label %bb.c, label %_ZL10HelpMarkerPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.o = fmul float %i.n, 3.500000e+01
  tail call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.o)
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.944, ptr noundef null)
  tail call void @_ZN5ImGui14PopTextWrapPosEv()
  tail call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.b, %bb.c
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.945)
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.946, ptr noundef nonnull @.str.947) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.948)
  br i1 %i.q, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_ZL10HelpMarkerPKc.exit
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2856, ptr noundef nonnull @.str.949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 0) #30 ; 0 uses
  %i.s = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  %i.t = icmp eq i32 %i.s, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !46
  %i.u = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.t, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.v = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 1) #30 ; 0 uses
  %i.w = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  %i.x = icmp eq i32 %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !46
  %i.y = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.x, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.z = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 2) #30 ; 0 uses
  %i.aa = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  %i.ab = icmp eq i32 %i.aa, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !46
  %i.ac = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.ab, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ad = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 3) #30 ; 0 uses
  %i.ae = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  %i.af = icmp eq i32 %i.ae, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !46
  %i.ag = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.af, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 4) #30 ; 0 uses
  %i.ai = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  %i.aj = icmp eq i32 %i.ai, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !46
  %i.ak = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext %i.aj, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 4, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE8selected, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZL10HelpMarkerPKc.exit
  %i.al = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.951)
  br i1 %i.al, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 2872, ptr noundef nonnull @.str.952)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.am = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.am, label %bb.q, label %_ZL10HelpMarkerPKc.exit252

bb.q:                                             ; preds = %bb.p
  %i.an = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ao = fmul float %i.an, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ao)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.953, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit252

_ZL10HelpMarkerPKc.exit252:                       ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ap = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 0) #30 ; 0 uses
  %i.aq = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ar = trunc nuw i8 %i.aq to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !46
  %i.as = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext %i.ar, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.as, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZL10HelpMarkerPKc.exit252
  %i.at = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 260
  %i.av = load i8, ptr %i.au, align 4, !tbaa !124, !range !19, !noundef !20
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %._crit_edge133, label %bb.s

._crit_edge133:                                   ; preds = %bb.r
  %.pre = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, align 1, !tbaa !35, !range !19
  %i.ax = xor i8 %.pre, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i8 0, i64 5, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge133, %bb.s
  %i.ay = phi i8 [ %i.ax, %._crit_edge133 ], [ 1, %bb.s ]
  store i8 %i.ay, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, align 1, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZL10HelpMarkerPKc.exit252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.az = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.950, i32 noundef 1) #30 ; 0 uses
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i64 1), align 1, !tbaa !35, !range !19, !noundef !20
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !46
  %i.bc = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.b, i1 noundef zeroext %i.bb, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.bc, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bd = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 260
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !124, !range !19, !noundef !20
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %._crit_edge134, label %bb.w

._crit_edge134:                                   ; preds = %bb.v
  %.pre135 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i64 1), align 1, !tbaa !35, !range !19
  %i.bh = xor i8 %.pre135, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i8 0, i64 5, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge134, %bb.w
  %i.bi = phi i8 [ %i.bh, %._crit_edge134 ], [ 1, %bb.w ]
  store i8 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection, i64 1), align 1, !tbaa !35
  br label %bb.y
end_hunk_3
begin_hunk_4_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  %i.uz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  %.not228 = icmp eq i32 %i.uz, 0
  br i1 %.not228, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5)
          to label %_ZN28ExampleSelectionWithDeletionC2Ev.exit277 unwind label %bb.hc

_ZN28ExampleSelectionWithDeletionC2Ev.exit277:    ; preds = %bb.gv
  %i.va = call i32 @__cxa_atexit(ptr nonnull @_ZN26ImGuiSelectionBasicStorageD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.gw

bb.gw:                                            ; preds = %_ZN28ExampleSelectionWithDeletionC2Ev.exit277, %bb.gu, %.loopexit22
  %i.vb = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !166
  %i.vc = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.974, i32 noundef %i.vb, i32 noundef %i.vc)
  %.b208 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b208, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.vd = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.ve = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.vf = phi float [ %i.vd, %bb.gx ], [ %i.ve, %bb.gy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.vg = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.vh = sitofp i32 %i.vg to float
  %i.vi = fmul float %i.vf, %i.vh
  store float 0.000000e+00, ptr %17, align 4, !tbaa !44
  %i.vj = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.vi, ptr %i.vj, align 4, !tbaa !45
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.vk = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vl = fmul float %i.vk, 2.000000e+01
  store float f0x80800000, ptr %18, align 4, !tbaa !44
  %i.vm = getelementptr inbounds nuw i8, ptr %18, i64 4
  store float %i.vl, ptr %i.vm, align 4, !tbaa !45
  %i.vn = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br i1 %i.vn, label %bb.ha, label %bb.ki

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.vo = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  store float %i.vo, ptr %19, align 4, !tbaa !44
  %i.vq = getelementptr inbounds nuw i8, ptr %19, i64 4
  store float %i.vp, ptr %i.vq, align 4, !tbaa !45
  %.b207 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b207, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef 0.000000e+00)
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gv
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.kl

bb.hd:                                            ; preds = %bb.hb, %bb.ha
  %i.vs = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5flags_1, align 4, !tbaa !51
  %i.vt = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !166
  %i.vu = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.vv = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.vs, i32 noundef %i.vt, i32 noundef %i.vu) ; 5 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.vv)
  %i.vw = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.vx = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8 ; 2 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  %or.cond3 = select i1 %i.vw, i1 %i.vy, i1 false
  %.b211 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.vz = select i1 %or.cond3, i1 true, i1 %.b211 ; 2 uses
  br i1 %i.vz, label %bb.he, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

bb.he:                                            ; preds = %bb.hd
  %i.wa = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141 ; 3 uses
  %i.wb = icmp eq i32 %i.vx, 0
  br i1 %i.wb, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !177
  %i.we = trunc i64 %i.wd to i32                  ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %i.wg = load i8, ptr %i.wf, align 8, !tbaa !178, !range !19, !noundef !20
  %i.wh = icmp eq i8 %i.wg, 0
  br i1 %i.wh, label %bb.hg, label %.preheader.i278.preheader

.preheader.i278.preheader:                        ; preds = %bb.hf
  %.022.i280239 = add nsw i32 %i.we, 1            ; 2 uses
  %.not.i281240 = icmp slt i32 %.022.i280239, %i.wa
  br i1 %.not.i281240, label %.lr.ph242, label %.critedge.i282

bb.hg:                                            ; preds = %bb.hf
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vv, i64 33
  store i8 1, ptr %i.wi, align 1, !tbaa !179
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

.preheader.i278:                                  ; preds = %.lr.ph242
  %.022.i280 = add nsw i32 %.022.i280241, 1       ; 2 uses
  %.not.i281 = icmp slt i32 %.022.i280, %i.wa
  br i1 %.not.i281, label %.lr.ph242, label %.critedge.i282, !llvm.loop !0

.lr.ph242:                                        ; preds = %.preheader.i278.preheader, %.preheader.i278
  %.022.i280241 = phi i32 [ %.022.i280, %.preheader.i278 ], [ %.022.i280239, %.preheader.i278.preheader ] ; 3 uses
  %i.wj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !172
  %i.wk = call noundef i32 %i.wj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.022.i280241), !inline_history !1
  %i.wl = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wk)
  br i1 %i.wl, label %.preheader.i278, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !0

.critedge.i282:                                   ; preds = %.preheader.i278, %.preheader.i278.preheader
  %i.wm = call i32 @llvm.smin.i32(i32 %i.wa, i32 %i.we) ; 2 uses
  %i.wn = icmp slt i32 %i.wm, 1
  br i1 %i.wn, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph244

bb.hh:                                            ; preds = %.lr.ph244
  %i.wo = icmp slt i32 %.0.in.i283243, 2
  br i1 %i.wo, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph244, !llvm.loop !2

.lr.ph244:                                        ; preds = %.critedge.i282, %bb.hh
  %.0.in.i283243 = phi i32 [ %.0.i284, %bb.hh ], [ %i.wm, %.critedge.i282 ] ; 2 uses
  %.0.i284 = add nsw i32 %.0.in.i283243, -1       ; 3 uses
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !172
  %i.wq = call noundef i32 %i.wp(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.0.i284), !inline_history !1
  %i.wr = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wq)
  br i1 %i.wr, label %bb.hh, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246, !llvm.loop !2

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246: ; preds = %.lr.ph244
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !2

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286: ; preds = %.lr.ph242, %bb.hh, %.critedge.i282, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246, %bb.hg, %bb.he, %bb.hd
  %i.ws = phi i32 [ -1, %bb.hd ], [ -1, %bb.he ], [ %i.we, %bb.hg ], [ -1, %bb.hh ], [ %.0.i284, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246 ], [ -1, %.critedge.i282 ], [ %.022.i280241, %.lr.ph242 ] ; 5 uses
  store i1 false, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.wt = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !35, !range !19, !noundef !20
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.hi, label %bb.hl

bb.hi:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  %.b206 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b206, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !46
  %i.wv = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1030, i32 noundef 2, i32 noundef 4194321, ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef 0.000000e+00) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef f0x3F333333, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 3.000000e-01, i32 noundef 0)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %22)
  %i.ww = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19, !noundef !20
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.hm, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288

bb.hm:                                            ; preds = %bb.hl
  %i.wy = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.wy, float noundef -1.000000e+00)
          to label %bb.hn unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hn:                                            ; preds = %bb.hm
  %.not229 = icmp eq i32 %i.ws, -1
  br i1 %.not229, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.wz = add nuw nsw i32 %i.ws, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.ws, i32 noundef %i.wz)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287 unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287: ; preds = %bb.ho, %bb.hn
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !170 ; 2 uses
  %.not230 = icmp eq i64 %i.xb, -1
  br i1 %.not230, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288, label %bb.hp

bb.hp:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287
  %i.xc = trunc i64 %i.xb to i32                  ; 2 uses
  %i.xd = add nsw i32 %i.xc, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.xc, i32 noundef %i.xd)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288 unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288: ; preds = %bb.hp, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, %bb.hl
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.xe = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %.pre145 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19
  %i.xg = trunc nuw i8 %.pre145 to i1
  %sext = sext i32 %i.ws to i64
  br i1 %i.xg, label %.backedge, label %.thread194

.thread194:                                       ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xh = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.backedge:                                        ; preds = %._crit_edge79.loopexit, %._crit_edge79, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xi = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.hq unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hq:                                            ; preds = %.backedge
  br i1 %i.xi, label %.critedge, label %bb.jx

.critedge:                                        ; preds = %bb.hq
  %.pre146 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19
  %.pre146.fr = freeze i8 %.pre146
  %i.xj = trunc i8 %.pre146.fr to i1
  %i.xk = load i32, ptr %22, align 8
  %i.xl = load i32, ptr %29, align 4
  br i1 %i.xj, label %.split, label %bb.hr

bb.hr:                                            ; preds = %.critedge
  %i.xm = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.split:                                           ; preds = %bb.hr, %.critedge, %.thread194
  %i.xn = phi i32 [ 0, %.thread194 ], [ 0, %bb.hr ], [ %i.xk, %.critedge ] ; 2 uses
  %i.xo = phi i1 [ false, %.thread194 ], [ false, %bb.hr ], [ true, %.critedge ]
  %i.xp = phi i32 [ %i.xh, %.thread194 ], [ %i.xm, %bb.hr ], [ %i.xl, %.critedge ] ; 2 uses
  %i.xq = icmp slt i32 %i.xn, %i.xp
  br i1 %i.xq, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %.split
  %i.xr = sext i32 %i.xn to i64
  br label %.lr.ph78

._crit_edge79.loopexit:                           ; preds = %bb.jv
  %.pre147 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19
  %.pre151 = trunc nuw i8 %.pre147 to i1
  br i1 %.pre151, label %.backedge, label %bb.jx

._crit_edge79:                                    ; preds = %.split
  br i1 %i.xo, label %.backedge, label %bb.jx

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %bb.jv
  %indvars.iv129 = phi i64 [ %i.xr, %.lr.ph78.preheader ], [ %indvars.iv.next130, %bb.jv ] ; 5 uses
  %i.xs = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !35, !range !19, !noundef !20
  %i.xt = trunc nuw i8 %i.xs to i1
  br i1 %i.xt, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %.lr.ph78
  %i.xu = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %bb.ht unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hs, %bb.kg, %bb.ke, %bb.kc, %bb.kb, %bb.ka, %bb.jy, %bb.hm, %bb.ho, %bb.hp, %.backedge
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp13.loopexit.split-lp

bb.ht:                                            ; preds = %bb.hs, %.lr.ph78
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %indvars.iv129
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !51 ; 4 uses
  %i.xy = srem i32 %i.xx, 28
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.xz
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !101 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.yc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.966, i32 noundef %i.xx, ptr noundef %i.yb) #30 ; 0 uses
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.xx)
          to label %bb.hu unwind label %bb.ix

bb.hu:                                            ; preds = %bb.ht
  %i.yd = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE17show_color_button, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ye = trunc nuw i8 %i.yd to i1
  %i.yf = trunc nsw i64 %indvars.iv129 to i32     ; 2 uses
  br i1 %i.ye, label %bb.hv, label %._crit_edge152

bb.hv:                                            ; preds = %bb.hu
  %i.yg = mul i32 %i.yf, 5289803                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.yh = and i32 %i.yg, 255
  %i.yi = uitofp nneg i32 %i.yh to float
  %i.yj = fmul nnan float %i.yi, f0x3B808081
  %i.yk = lshr i32 %i.yg, 8
  %i.yl = and i32 %i.yk, 255
  %i.ym = uitofp nneg i32 %i.yl to float
  %i.yn = fmul nnan float %i.ym, f0x3B808081
  %i.yo = lshr i32 %i.yg, 16
  %i.yp = and i32 %i.yo, 255
  %i.yq = uitofp nneg i32 %i.yp to float
  %i.yr = fmul nnan float %i.yq, f0x3B808081
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.yj, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.yn, i64 1
  %.sroa.6.12.vec.insert = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.yr, i64 0
  store <2 x float> %.sroa.0.4.vec.insert, ptr %23, align 8
  store <2 x float> %.sroa.6.12.vec.insert, ptr %i.xe, align 8
  %i.ys = invoke noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.1031, ptr noundef nonnull align 4 dereferenceable(16) %23, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %19)
          to label %bb.hw unwind label %bb.hx     ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  invoke void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
          to label %._crit_edge152 unwind label %bb.ix

bb.hx:                                            ; preds = %bb.hv
  %i.yt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.jw

._crit_edge152:                                   ; preds = %bb.hu, %bb.hw
  %i.yu = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.yf)
          to label %bb.hy unwind label %bb.ix     ; 3 uses

bb.hy:                                            ; preds = %._crit_edge152
  invoke void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv129)
          to label %bb.hz unwind label %bb.ix

bb.hz:                                            ; preds = %bb.hy
  %.b205 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b205, label %bb.id, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store <2 x float> zeroinitializer, ptr %24, align 8, !tbaa !46
  %i.yv = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.i, i1 noundef zeroext %i.yu, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %24)
          to label %bb.ib unwind label %bb.ic     ; 0 uses

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.ie

bb.ic:                                            ; preds = %bb.ia
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.jw

bb.id:                                            ; preds = %bb.hz
  %spec.select = select i1 %i.yu, i32 2241, i32 2240
  %i.yx = invoke noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef nonnull %i.i, i32 noundef %spec.select)
          to label %bb.ie unwind label %bb.ix

bb.ie:                                            ; preds = %bb.id, %bb.ib
  %.0162 = phi i1 [ false, %bb.ib ], [ %i.yx, %bb.id ]
  %i.yy = icmp eq i64 %indvars.iv129, %sext
  br i1 %i.yy, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  invoke void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
          to label %bb.ig unwind label %bb.ix

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.yz = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13use_drag_drop, align 1, !tbaa !35, !range !19, !noundef !20
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %bb.ih, label %bb.ja

bb.ih:                                            ; preds = %bb.ig
  %i.zb = invoke noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
          to label %bb.ii unwind label %bb.ix

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.zb, label %bb.ij, label %bb.ja

bb.ij:                                            ; preds = %bb.ii
  %i.zc = invoke noundef ptr @_ZN5ImGui18GetDragDropPayloadEv()
          to label %bb.ik unwind label %bb.ix

bb.ik:                                            ; preds = %bb.ij
  %i.zd = icmp eq ptr %i.zc, null
  br i1 %i.zd, label %bb.il, label %bb.iu

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  store ptr null, ptr %i.j, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  store i32 0, ptr %i.k, align 4, !tbaa !51
  br i1 %i.yu, label %.preheader, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292:     ; preds = %bb.il
  %i.ze = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 32)
          to label %_ZN8ImVectorIiE9push_backERKi.exit296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN8ImVectorIiE9push_backERKi.exit296:            ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i292
  store ptr %i.ze, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  store i32 8, ptr %i.xf, align 4, !tbaa !142
  store i32 %i.xx, ptr %i.ze, align 4
  store i32 1, ptr %25, align 8, !tbaa !141
  br label %.loopexit11

.preheader:                                       ; preds = %bb.il, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297
  %i.zf = phi ptr [ %.pre.i299149, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297 ], [ null, %bb.il ] ; 5 uses
  %i.zg = phi i32 [ %i.zv, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297 ], [ 0, %bb.il ] ; 8 uses
  %i.zh = phi i32 [ %i.aaa, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297 ], [ 0, %bb.il ] ; 3 uses
  %i.zi = invoke noundef zeroext i1 @_ZN26ImGuiSelectionBasicStorage19GetNextSelectedItemEPPvPj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
          to label %bb.im unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.im:                                            ; preds = %.preheader
  br i1 %i.zi, label %bb.in, label %.loopexit11.loopexit

bb.in:                                            ; preds = %bb.im
  %i.zj = load i32, ptr %i.k, align 4, !tbaa !51
  %i.zk = icmp eq i32 %i.zh, %i.zg
  br i1 %i.zk, label %bb.io, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297

bb.io:                                            ; preds = %bb.in
  %i.zl = add nsw i32 %i.zg, 1
  %.not.i.i300 = icmp eq i32 %i.zg, 0
  br i1 %.not.i.i300, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.zm = sdiv i32 %i.zg, 2
  %i.zn = add nsw i32 %i.zm, %i.zg
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301:     ; preds = %bb.ip, %bb.io
  %i.zo = phi i32 [ %i.zn, %bb.ip ], [ 8, %bb.io ]
  %i.zp = call noundef i32 @llvm.smax.i32(i32 %i.zo, i32 %i.zl) ; 3 uses
  %i.zq = sext i32 %i.zp to i64
  %i.zr = shl nsw i64 %i.zq, 2
  %i.zs = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.zr)
          to label %.noexc304 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc304:                                        ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i301
  %.not6.i.i302 = icmp eq ptr %i.zf, null
  br i1 %.not6.i.i302, label %.noexc305, label %bb.iq

bb.iq:                                            ; preds = %.noexc304
  %i.zt = sext i32 %i.zg to i64
  %i.zu = shl nsw i64 %i.zt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.zs, ptr nonnull align 4 %i.zf, i64 %i.zu, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.zf)
          to label %..noexc305_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc305_crit_edge:                             ; preds = %bb.iq
  %.pre3.i303.pre = load i32, ptr %25, align 8, !tbaa !141
  br label %.noexc305

.noexc305:                                        ; preds = %..noexc305_crit_edge, %.noexc304
  %.pre3.i303 = phi i32 [ %.pre3.i303.pre, %..noexc305_crit_edge ], [ %i.zg, %.noexc304 ]
  store ptr %i.zs, ptr %.phi.trans.insert.i, align 8, !tbaa !143
  store i32 %i.zp, ptr %i.xf, align 4, !tbaa !142
  br label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297

._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i297:   ; preds = %bb.in, %.noexc305
  %.pre.i299149 = phi ptr [ %i.zs, %.noexc305 ], [ %i.zf, %bb.in ] ; 2 uses
  %i.zv = phi i32 [ %i.zp, %.noexc305 ], [ %i.zg, %bb.in ]
  %i.zw = phi i32 [ %.pre3.i303, %.noexc305 ], [ %i.zh, %bb.in ]
  %i.zx = sext i32 %i.zw to i64
  %i.zy = getelementptr inbounds [4 x i8], ptr %.pre.i299149, i64 %i.zx
  store i32 %i.zj, ptr %i.zy, align 4
  %i.zz = load i32, ptr %25, align 8, !tbaa !141
  %i.aaa = add nsw i32 %i.zz, 1                   ; 2 uses
  store i32 %i.aaa, ptr %25, align 8, !tbaa !141
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
  %i.aab = shl nsw i32 %i.zh, 2
  %i.aac = sext i32 %i.aab to i64
  br label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit11.loopexit, %_ZN8ImVectorIiE9push_backERKi.exit296
  %i.aad = phi i64 [ %i.aac, %.loopexit11.loopexit ], [ 4, %_ZN8ImVectorIiE9push_backERKi.exit296 ]
  %i.aae = phi ptr [ %i.zf, %.loopexit11.loopexit ], [ %i.ze, %_ZN8ImVectorIiE9push_backERKi.exit296 ]
  %i.aaf = invoke noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.1032, ptr noundef %i.aae, i64 noundef %i.aad, i32 noundef 0)
          to label %bb.ir unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ir:                                            ; preds = %.loopexit11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  %i.aag = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !143 ; 2 uses
  %.not.i307 = icmp eq ptr %i.aag, null
  br i1 %.not.i307, label %_ZN8ImVectorIiED2Ev.exit, label %bb.is

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.aag)
          to label %_ZN8ImVectorIiED2Ev.exit unwind label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aah = landingpad { ptr, i32 }
          catch ptr null
  %i.aai = extractvalue { ptr, i32 } %i.aah, 0
  call void @__clang_call_terminate(ptr %i.aai) #31
  unreachable

end_hunk_4
