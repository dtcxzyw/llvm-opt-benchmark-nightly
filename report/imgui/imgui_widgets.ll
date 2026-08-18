inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui24LogSetNextTextDecorationEPKcS1_
; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui8ButtonExEPKcRK6ImVec2i(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3288 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !229
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !171
  %i.d = call noundef zeroext i1 @_ZN5ImGui8ButtonExEPKcRK6ImVec2i(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 32768)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  store float %i.c, ptr %i.b, align 4, !tbaa !229
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 8             ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !164, !range !165, !noundef !166
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !171 ; 2 uses
  %i.k = fcmp une <2 x float> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x float> %i.j, <2 x float> splat (float f0x80800000)
  %i.m = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %i.l, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.m, ptr %3, align 8
  %i.n = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !171 ; 2 uses
  %i.q = fadd <2 x float> %i.p, %i.m
  store <2 x float> %i.p, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.q, ptr %i.r, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef -1.000000e+00)
  %i.s = lshr i32 %2, 2
  %i.t = and i32 %i.s, 2
  %i.u = xor i32 %i.t, 2
  %i.v = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.n, ptr noundef null, i32 noundef %i.u)
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.w = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.n, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ %i.w, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.0, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui13ArrowButtonExEPKc8ImGuiDir6ImVec2i(ptr noundef %0, i32 noundef %1, <2 x float> %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 3 uses
  %5 = alloca %struct.ImRect, align 8             ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  store <2 x float> %2, ptr %4, align 8
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !164, !range !165, !noundef !166
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = extractelement <2 x float> %2, i64 1
  %i.k = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !171 ; 2 uses
  %i.n = fadd <2 x float> %i.m, %2
  store <2 x float> %i.m, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %i.n, ptr %i.o, align 8
  %i.p = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  %i.q = fcmp ult float %i.j, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 3288
  %i.s = load float, ptr %i.r, align 8, !tbaa !229
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.t = phi float [ %i.s, %bb.c ], [ -1.000000e+00, %bb.b ]
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.t)
  %i.u = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.k, ptr noundef null, i32 noundef 0)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.v = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %3)
  %i.w = load i8, ptr %i.b, align 1, !tbaa !225, !range !165, !noundef !166
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr %i.a, align 1, !range !165
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.x, i32 24, i32 23
  %i.ab = select i1 %i.z, i32 %i.aa, i32 22
  %i.ac = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ab, float noundef 1.000000e+00)
  %i.ad = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.k, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.03.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.02.0.copyload = load <2 x float>, ptr %i.o, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.af = load float, ptr %i.ae, align 4, !tbaa !230
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.03.0.copyload, <2 x float> %.sroa.02.0.copyload, i32 noundef %i.ac, i1 noundef zeroext true, float noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4568
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !189
  %i.ak = load <2 x float>, ptr %4, align 8, !tbaa !171
  %i.al = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fsub <2 x float> %i.ak, %i.am
  %i.ao = fmul <2 x float> %i.an, splat (float 5.000000e-01) ; 2 uses
  %i.ap = fcmp ole <2 x float> %i.ao, zeroinitializer
  %i.aq = select <2 x i1> %i.ap, <2 x float> zeroinitializer, <2 x float> %i.ao
  %i.ar = load <2 x float>, ptr %5, align 8, !tbaa !171
  %i.as = fadd <2 x float> %i.ar, %i.aq
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ah, <2 x float> %i.as, i32 noundef %i.ad, i32 noundef %1, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ %i.v, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef float @_ZN5ImGui14GetFrameHeightEv() local_unnamed_addr #3

declare void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef, <2 x float>, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.a, i64 0
  %.sroa.0.4.vec.insert = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui13ArrowButtonExEPKc8ImGuiDir6ImVec2i(ptr noundef %0, i32 noundef %1, <2 x float> %.sroa.0.4.vec.insert, i32 noundef 0)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11CloseButtonEjRK6ImVec2(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 10 uses
  %3 = alloca %struct.ImRect, align 16            ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 4568 ; 2 uses
  %9 = load float, ptr %8, align 8, !tbaa !189    ; 2 uses
  %10 = load float, ptr %1, align 4, !tbaa !176
  %11 = fadd float %9, %10                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !181
  %12 = fadd float %9, %i.g                       ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %11, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %12, i64 1
  %13 = load i64, ptr %1, align 4                 ; 3 uses
  store i64 %13, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !231
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !171
  %i.l = load <2 x float>, ptr %i.i, align 4, !tbaa !171
  %i.m = fsub <2 x float> %i.k, %i.l              ; 2 uses
  %shift = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.m, %shift
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %14 = trunc i64 %13 to i32
  %15 = bitcast i32 %14 to float
  %16 = fsub float %11, %15
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %17 = lshr i64 %13, 32
  %18 = trunc nuw i64 %17 to i32
  %19 = bitcast i32 %18 to float
  %20 = fsub float %12, %19
  %21 = fmul float %16, %20
  %i.q = fdiv float %i.n, %21
  %i.r = fcmp olt float %i.q, 1.500000e+00
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load <4 x float>, ptr %3, align 16, !tbaa !171 ; 4 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.v = fsub <2 x float> %i.t, %i.u
  %i.w = fmul <2 x float> %i.v, splat (float -2.500000e-01)
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.y = fptosi <4 x float> %i.x to <4 x i32>
  %i.z = sitofp <4 x i32> %i.y to <4 x float>     ; 2 uses
  %i.aa = fsub <4 x float> %i.s, %i.z
  %i.ab = fadd <4 x float> %i.s, %i.z
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ac, ptr %3, align 16, !tbaa !171
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %0, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ae = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  br i1 %i.ad, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.b, align 1, !tbaa !225, !range !165, !noundef !166
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = select i1 %i.ag, i32 24, i32 23
  %i.ai = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ah, float noundef 1.000000e+00)
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !225, !range !165, !noundef !166
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !186
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.am, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.h, i32 noundef %i.ai, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, i32 noundef 2, float noundef -1.000000e+00)
  %i.an = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) ; 2 uses
  %i.ao = load float, ptr %2, align 8, !tbaa !232
  %i.ap = load float, ptr %i.h, align 8, !tbaa !233
  %i.aq = fadd float %i.ao, %i.ap
  %i.ar = fmul float %i.aq, 5.000000e-01
  %i.as = load float, ptr %i.p, align 4, !tbaa !177
  %i.at = load float, ptr %i.o, align 4, !tbaa !178
  %i.au = fadd float %i.as, %i.at
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fadd float %i.ar, -5.000000e-01         ; 2 uses
  %i.ax = fadd float %i.av, -5.000000e-01         ; 2 uses
  %i.ay = load float, ptr %8, align 8, !tbaa !189
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = call float @llvm.fmuladd.f32(float %i.az, float f0x3F350481, float -1.000000e+00) ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4528
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !234
  %i.bd = fptosi float %i.bc to i32
  %i.be = sitofp i32 %i.bd to float               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.bh = fadd float %i.aw, %i.ba
  %i.bi = fadd float %i.ax, %i.ba                 ; 2 uses
  %.sroa.0.0.vec.insert.i41 = insertelement <2 x float> poison, float %i.bh, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i41, float %i.bi, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i42, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.bj = fsub float %i.aw, %i.ba
  %i.bk = fsub float %i.ax, %i.ba                 ; 2 uses
  %.sroa.0.0.vec.insert.i43 = insertelement <2 x float> poison, float %i.bj, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i44 = insertelement <2 x float> %.sroa.0.0.vec.insert.i43, float %i.bk, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i44, ptr %5, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bg, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.an, float noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i41, float %i.bk, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i46, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %.sroa.0.4.vec.insert.i48 = insertelement <2 x float> %.sroa.0.0.vec.insert.i43, float %i.bi, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i48, ptr %7, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.an, float noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %i.ae
}

declare void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui14CollapseButtonEjRK6ImVec2(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4568
  %i.g = load float, ptr %i.f, align 8, !tbaa !189
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !171 ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fadd <2 x float> %i.j, %i.h
  store <2 x float> %i.h, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> %i.k, ptr %i.l, align 8
  %i.m = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.n = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.b, align 1, !tbaa !225, !range !165, !noundef !166 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr %i.a, align 1, !range !165  ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.p, i32 24, i32 23
  %i.t = select i1 %i.r, i32 %i.s, i32 22
  %i.u = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.t, float noundef 1.000000e+00)
  %i.v = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.w = or i8 %i.q, %i.o
  %or.cond3.not = icmp eq i8 %i.w, 0
  br i1 %or.cond3.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.l, i32 noundef %i.u, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, i32 noundef 2, float noundef -1.000000e+00)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !186
  %.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 207
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !235, !range !165, !noundef !166
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 1, i32 3
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.aa, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.v, i32 noundef %i.ae, float noundef 1.000000e+00)
  %i.af = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow(ptr noundef nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %i.n
}

declare noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5ImGui20GetWindowScrollbarIDEP11ImGuiWindow9ImGuiAxis(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.str.4..str.5 = select i1 %i.a, ptr @.str.4, ptr @.str.5
  %i.b = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %0, ptr noundef nonnull %.str.4..str.5, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !236 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !237 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !238
  %i.g = fadd float %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !239
  %i.j = fadd float %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.sroa.0.0.copyload = load float, ptr %i.k, align 8, !tbaa !171
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !171
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !171
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !171
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = xor i32 %1, 1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !171 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = load float, ptr %i.q, align 4, !tbaa !240
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 5.000000e-01, float 5.000000e-01)
  %i.t = fptosi float %i.s to i32
  %i.u = sitofp i32 %i.t to float                 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !241  ; 2 uses
  %i.x = and i32 %i.w, 1024
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3296
  %i.aa = load float, ptr %i.z, align 8, !tbaa !242
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 5.000000e-01, float 5.000000e-01)
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sitofp i32 %i.ac to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = and i32 %i.w, 1
  %.not26 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not26, float 0.000000e+00, float %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = phi float [ %i.ad, %bb.b ], [ %i.af, %bb.c ]
  %i.ah = icmp eq i32 %1, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = fadd float %.sroa.0.0.copyload, %i.u
  %i.aj = fadd float %i.d, %i.u                   ; 2 uses
  %i.ak = fsub float %i.j, %i.u                   ; 2 uses
  %i.al = fsub float %i.ak, %i.p                  ; 2 uses
  %i.am = fcmp oge float %i.aj, %i.al
  %i.an = select i1 %i.am, float %i.aj, float %i.al
  %i.ao = fsub float %.sroa.5.0.copyload, %i.u
  br label %bb.g
end_hunk_0
begin_hunk_1_@_ZN5ImGui11ProgressBarEfRK6ImVec2PKc:bb.a
  %i.p = load float, ptr %i.k, align 8, !tbaa !187
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 2.000000e+00, float %i.o)
  %i.r = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.015.0.copyload, float noundef %i.n, float noundef %i.q) ; 2 uses
  store <2 x float> %i.r, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.s = fadd <2 x float> %i.r, %i.m
  %i.t = extractelement <2 x i32> %i.l, i64 0
  store i32 %i.t, ptr %4, align 16
  %.sroa_idx52 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = extractelement <2 x i32> %i.l, i64 1
  store i32 %i.u, ptr %.sroa_idx52, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store <2 x float> %i.s, ptr %i.v, align 8
  %i.w = load float, ptr %i.k, align 8, !tbaa !187
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.w)
  %i.x = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.x, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.y = fcmp uge float %0, 0.000000e+00          ; 3 uses
  br i1 %i.y, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.z = fcmp ogt float %0, 1.000000e+00
  %i.aa = select i1 %i.z, float 1.000000e+00, float %0 ; 3 uses
  %i.ab = fcmp ord float %i.aa, 0.000000e+00
  %i.ac = select i1 %i.ab, float %i.aa, float 0.000000e+00
  %i.ad = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ac, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = fneg float %0
  %i.af = call float @fmodf(float noundef %i.ae, float noundef 1.000000e+00) #41
  %i.ag = call float @llvm.fmuladd.f32(float %i.af, float 1.200000e+00, float -2.000000e-01)
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fadd <2 x float> %i.ai, <float -0.000000e+00, float 2.000000e-01> ; 3 uses
  %i.ak = fcmp olt <2 x float> %i.aj, zeroinitializer
  %i.al = fcmp ogt <2 x float> %i.aj, splat (float 1.000000e+00)
  %i.am = select <2 x i1> %i.al, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aj
  %i.an = select <2 x i1> %i.ak, <2 x float> zeroinitializer, <2 x float> %i.am
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.058 = phi float [ %0, %bb.d ], [ %i.aa, %.thread ]
  %i.ao = phi <2 x float> [ %i.an, %bb.d ], [ %i.ad, %.thread ]
  %.sroa.07.0.copyload = load <2 x float>, ptr %4, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.v, align 8
  %i.ap = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 3292 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !228
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.ap, i1 noundef zeroext true, float noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 3296
  %i.at = load float, ptr %i.as, align 8, !tbaa !313
  %i.au = load <4 x float>, ptr %4, align 16, !tbaa !171 ; 2 uses
  %i.av = insertelement <4 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ax = fadd <4 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = fsub <4 x float> %i.au, %i.aw           ; 2 uses
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  store <4 x float> %i.az, ptr %4, align 16, !tbaa !171
  %shift = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.az
  %i.ba = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ao, <2 x float> %i.bb) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.be = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.bf = fcmp olt float %i.bd, %i.be
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !186
  %i.bi = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 44, float noundef 1.000000e+00)
  %i.bj = load float, ptr %i.aq, align 4, !tbaa !228
  call void @_ZN5ImGui24RenderRectFilledInRangeHEP10ImDrawListRK6ImRectjfff(ptr noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.bi, float noundef %i.bd, float noundef %i.be, float noundef %i.bj)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bk = icmp ne ptr %2, null                    ; 2 uses
  %or.cond = or i1 %i.y, %i.bk
  br i1 %or.cond, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  br i1 %i.bk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = call float @llvm.fmuladd.f32(float %.058, float 1.000000e+02, float f0x3C23D70A)
  %i.bm = fpext float %i.bl to double
  %i.bn = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.11, double noundef %i.bm) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.041 = phi ptr [ %2, %bb.h ], [ %i.a, %bb.i ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.bo = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %.041, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.bo, ptr %5, align 8
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 3 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load float, ptr %4, align 16, !tbaa !232 ; 2 uses
  %i.bs = load float, ptr %i.v, align 8, !tbaa !233 ; 2 uses
  %i.bt = fadd float %i.br, %i.bs
  %i.bu = fsub float %i.bt, %i.bp
  %i.bv = fmul float %i.bu, 5.000000e-01
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 3300
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !314
  %i.by = fadd float %i.be, %i.bx
  %.pre = load float, ptr %4, align 16, !tbaa !232
  %.pre59 = load float, ptr %i.v, align 8, !tbaa !233
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = phi float [ %i.bs, %bb.l ], [ %.pre59, %bb.m ]
  %i.ca = phi float [ %i.br, %bb.l ], [ %.pre, %bb.m ] ; 2 uses
  %i.cb = phi float [ %i.bv, %bb.l ], [ %i.by, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.cc = fsub float %i.bz, %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 3308
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !188
  %i.cf = fsub float %i.cc, %i.ce                 ; 2 uses
  %i.cg = fcmp olt float %i.cb, %i.ca
  %i.ch = fcmp ogt float %i.cb, %i.cf
  %i.ci = select i1 %i.ch, float %i.cf, float %i.cb
  %i.cj = select i1 %i.cg, float %i.ca, float %i.ci
  %i.ck = load float, ptr %.sroa_idx52, align 4, !tbaa !177
  store float %i.cj, ptr %6, align 4, !tbaa !176
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %7, align 8, !tbaa !171
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.v, ptr noundef nonnull %.041, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #10

declare void @_ZN5ImGui24RenderRectFilledInRangeHEP10ImDrawListRK6ImRectjfff(ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui6BulletEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !164, !range !165, !noundef !166
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.j = load float, ptr %i.i, align 4, !tbaa !315 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4568 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !189 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3284 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.o = load float, ptr %i.n, align 8, !tbaa !187
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float %i.l) ; 2 uses
  %i.q = fcmp olt float %i.j, %i.p
  %i.r = select i1 %i.q, float %i.j, float %i.p   ; 2 uses
  %i.s = fcmp oge float %i.r, %i.l
  %i.t = select i1 %i.s, float %i.r, float %i.l   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %2 = load i64, ptr %i.h, align 4                ; 3 uses
  store i64 %2, ptr %1, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %.cast = bitcast i64 %2 to <2 x float>
  %4 = insertelement <2 x float> poison, float %i.l, i64 0
  %5 = insertelement <2 x float> %4, float %i.t, i64 1
  %6 = fadd <2 x float> %5, %.cast                ; 2 uses
  store <2 x float> %6, ptr %3, align 8
  %7 = bitcast i64 %2 to <2 x float>
  %i.u = fsub <2 x float> %6, %7
  store <2 x float> %i.u, ptr %0, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  %i.v = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !186
  %i.z = load float, ptr %i.m, align 4, !tbaa !190
  %i.aa = load float, ptr %i.k, align 8, !tbaa !189
  %i.ab = fmul float %i.t, 5.000000e-01
  %i.ac = call float @llvm.fmuladd.f32(float %i.aa, float 5.000000e-01, float %i.z)
  %i.ad = load <2 x float>, ptr %1, align 8, !tbaa !171
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ab, i64 1
  %i.ag = fadd <2 x float> %i.ad, %i.af
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.y, <2 x float> %i.ag, i32 noundef %i.w)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ah = load float, ptr %i.m, align 4, !tbaa !190
  %i.ai = fmul float %i.ah, 2.000000e+00
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN5ImGui8SameLineEff(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TextLinkEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImRect, align 8             ; 11 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.ImVec4, align 4             ; 8 uses
  %4 = alloca %struct.ImVec4, align 4             ; 7 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 7 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 206
  store i8 1, ptr %i.i, align 2, !tbaa !140
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 209
  %i.k = load i8, ptr %i.j, align 1, !tbaa !164, !range !165, !noundef !166
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.h, ptr noundef %0, ptr noundef null) ; 3 uses
  %i.n = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.p = load float, ptr %i.o, align 8, !tbaa !167 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 284
  %i.r = load float, ptr %i.q, align 4, !tbaa !168
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.t = load float, ptr %i.s, align 8, !tbaa !169
  %i.u = fadd float %i.r, %i.t                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.v = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.n, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.v, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.w = insertelement <2 x float> poison, float %i.p, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.u, i64 1
  %i.y = fadd <2 x float> %i.x, %i.v
  store float %i.p, ptr %2, align 8
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.u, ptr %.sroa_idx22, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> %i.y, ptr %i.z, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef 0.000000e+00)
  %i.aa = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.m, ptr noundef null, i32 noundef 0)
  br i1 %i.aa, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ab = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.m, i32 noundef 0, float noundef -1.000000e+00)
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !225, !range !165, !noundef !166 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 4348 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !231
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.af = load float, ptr %3, align 4, !tbaa !316
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !317
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !318
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.af, float noundef %i.ah, float noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.ak = load i8, ptr %i.b, align 1, !tbaa !225, !range !165, !noundef !166 ; 2 uses
  %i.al = or i8 %i.ak, %i.ac
  %or.cond.not = icmp eq i8 %i.al, 0
  %.pre = load float, ptr %i.c, align 4, !tbaa !171 ; 2 uses
  %.pre24 = load float, ptr %i.e, align 4, !tbaa !171 ; 2 uses
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = trunc nuw i8 %i.ak to i1
  %i.an = select i1 %i.am, float 4.000000e-01, float 3.000000e-01
  %i.ao = fadd float %i.an, %.pre24               ; 3 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %i.aq = fcmp ogt float %i.ao, 1.000000e+00
  %i.ar = select i1 %i.aq, float 1.000000e+00, float %i.ao
  %i.as = select i1 %i.ap, float 0.000000e+00, float %i.ar ; 2 uses
  store float %i.as, ptr %i.e, align 4, !tbaa !171
  %i.at = fadd float %.pre, 2.000000e-02
  %i.au = call float @fmodf(float noundef %i.at, float noundef 1.000000e+00) #41 ; 2 uses
  store float %i.au, ptr %i.c, align 4, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.av = phi float [ %.pre24, %bb.e ], [ %i.as, %bb.f ]
  %i.aw = phi float [ %.pre, %bb.e ], [ %i.au, %bb.f ]
  %i.ax = load float, ptr %i.d, align 4, !tbaa !171
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.aw, float noundef %i.ax, float noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
  %i.ay = load float, ptr %i.e, align 4, !tbaa !171
  %i.az = fadd float %i.ay, -2.000000e-01         ; 3 uses
  %i.ba = fcmp olt float %i.az, 0.000000e+00
  %i.bb = fcmp ogt float %i.az, 1.000000e+00
  %i.bc = select i1 %i.bb, float 1.000000e+00, float %i.az
  %i.bd = select i1 %i.ba, float 0.000000e+00, float %i.bc ; 2 uses
  store float %i.bd, ptr %i.e, align 4, !tbaa !171
  %i.be = load float, ptr %i.c, align 4, !tbaa !171
  %i.bf = load float, ptr %i.d, align 4, !tbaa !171
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.be, float noundef %i.bf, float noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !178
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 4560
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !319
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !320
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 4576
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !321
  %i.bq = fmul float %i.bn, %i.bp
  %i.br = fmul float %i.bq, 2.000000e-01          ; 3 uses
  %i.bs = fcmp ult float %i.br, 0.000000e+00
  %i.bt = fptosi float %i.br to i32               ; 2 uses
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = fcmp une float %i.br, %i.bu
  %or.cond.not.i = and i1 %i.bs, %i.bv
  %i.bw = sext i1 %or.cond.not.i to i32
  %i.bx = add nsw i32 %i.bw, %i.bt
  %i.by = sitofp i32 %i.bx to float
  %i.bz = fadd float %i.bj, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !186
  %i.cc = load float, ptr %2, align 8, !tbaa !232
  %i.cd = load float, ptr %i.z, align 8, !tbaa !233
  %i.ce = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 4528
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !234
  %i.ch = fptosi float %i.cg to i32
  %i.ci = sitofp i32 %i.ch to float
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.cb, float noundef %i.cc, float noundef %i.cd, float noundef %i.bz, i32 noundef %i.ce, float noundef %i.ci)
  %i.cj = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 0, i32 noundef %i.cj)
  %.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.0.copyload, ptr noundef %0, ptr noundef %i.n, i1 noundef zeroext false)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.0 = phi i1 [ %i.ab, %bb.g ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.1 = phi i1 [ %.0, %bb.h ], [ false, %bb.a ]
  ret i1 %.1
end_hunk_1
begin_hunk_2_@_Z32ImParseFormatSanitizeForPrintingPKcPcm:bb.a
._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.m, %bb.a, %_Z20ImParseFormatFindEndPKc.exit
  %.014.lcssa = phi ptr [ %1, %_Z20ImParseFormatFindEndPKc.exit ], [ %1, %bb.a ], [ %.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1.3, %bb.m ]
  store i8 0, ptr %.014.lcssa, align 1, !tbaa !387
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z22ImParseFormatPrecisionPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !387     ; 2 uses
  %.not24.i = icmp eq i8 %i.a, 0
  br i1 %.not24.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pr = phi i8 [ %i.f, %bb.c ], [ %i.a, %bb.a ]
  %.01125.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.b = icmp eq i8 %.pr, 37                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.01125.i, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !387
  %.not15.i = icmp eq i8 %i.d, 37
  br i1 %.not15.i, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %spec.select.idx.i = zext i1 %i.b to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.01125.i, i64 %spec.select.idx.i
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !387   ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %.pn = phi ptr [ %.018, %.preheader ], [ %.01125.i, %bb.b ] ; 2 uses
  %.018 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.g = load i8, ptr %.018, align 1, !tbaa !387  ; 3 uses
  %i.h = add i8 %i.g, -48
  %or.cond23 = icmp ult i8 %i.h, 10
  br i1 %or.cond23, label %.preheader, label %.critedge, !llvm.loop !400

.critedge:                                        ; preds = %.preheader
  %i.i = icmp eq i8 %i.g, 46
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !387
  %.not.i24 = icmp eq i8 %i.k, 45                 ; 2 uses
  %spec.select.idx.i25 = zext i1 %.not.i24 to i64
  %spec.select.i26 = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i25 ; 2 uses
  %i.l = load i8, ptr %spec.select.i26, align 1, !tbaa !387
  %i.m = icmp eq i8 %i.l, 43
  %.1.idx.i = zext i1 %i.m to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %spec.select.i26, i64 %.1.idx.i ; 2 uses
  %i.n = load i8, ptr %.1.i, align 1, !tbaa !387  ; 3 uses
  %i.o = add i8 %i.n, -48
  %or.cond15.i = icmp ult i8 %i.o, 10
  br i1 %or.cond15.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit

.lr.ph.i27:                                       ; preds = %bb.d, %.lr.ph.i27
  %i.p = phi i8 [ %i.u, %.lr.ph.i27 ], [ %i.n, %bb.d ]
  %.017.i = phi i32 [ %i.t, %.lr.ph.i27 ], [ 0, %bb.d ]
  %.216.i = phi ptr [ %i.r, %.lr.ph.i27 ], [ %.1.i, %bb.d ]
  %i.q = mul nsw i32 %.017.i, 10
  %i.r = getelementptr inbounds nuw i8, ptr %.216.i, i64 1 ; 2 uses
  %narrow.i = add nsw i8 %i.p, -48
  %i.s = zext nneg i8 %narrow.i to i32
  %i.t = add nsw i32 %i.q, %i.s                   ; 2 uses
  %i.u = load i8, ptr %i.r, align 1, !tbaa !387   ; 3 uses
  %i.v = add i8 %i.u, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit, !llvm.loop !401

_ZL6ImAtoiIiEPKcS1_PT_.exit:                      ; preds = %.lr.ph.i27, %bb.d
  %i.w = phi i8 [ %i.n, %bb.d ], [ %i.u, %.lr.ph.i27 ]
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.t, %.lr.ph.i27 ] ; 2 uses
  %i.x = sub nsw i32 0, %.0.lcssa.i
  %i.y = select i1 %.not.i24, i32 %i.x, i32 %.0.lcssa.i ; 2 uses
  %or.cond = icmp ugt i32 %i.y, 99
  %spec.select = select i1 %or.cond, i32 %1, i32 %i.y
  %i.z = freeze i32 %spec.select
  br label %bb.e

bb.e:                                             ; preds = %_ZL6ImAtoiIiEPKcS1_PT_.exit, %.critedge
  %i.aa = phi i8 [ %i.g, %.critedge ], [ %i.w, %_ZL6ImAtoiIiEPKcS1_PT_.exit ] ; 2 uses
  %.031 = phi i32 [ 2147483647, %.critedge ], [ %i.z, %_ZL6ImAtoiIiEPKcS1_PT_.exit ] ; 4 uses
  switch i8 %i.aa, label %bb.f [
    i8 101, label %_Z22ImParseFormatFindStartPKc.exit.thread
    i8 69, label %_Z22ImParseFormatFindStartPKc.exit.thread
    i8 103, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i8 %i.aa, 71
  %i.ac = icmp eq i32 %.031, 2147483647           ; 2 uses
  %or.cond3 = and i1 %i.ac, %i.ab
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old2 = icmp eq i32 %.031, 2147483647
  br i1 %.old2, label %bb.h, label %_Z22ImParseFormatFindStartPKc.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.g
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

bb.i:                                             ; preds = %bb.f
  %spec.select43 = select i1 %i.ac, i32 %1, i32 %.031
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

_Z22ImParseFormatFindStartPKc.exit.thread:        ; preds = %bb.c, %bb.i, %bb.e, %bb.e, %bb.g, %bb.h, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ %.031, %bb.g ], [ -1, %bb.e ], [ %spec.select43, %bb.i ], [ %1, %bb.a ], [ -1, %bb.h ], [ %1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui13TempInputTextERK6ImRectjPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9568
  %i.e = load i32, ptr %i.d, align 8, !tbaa !408
  %i.f = icmp eq i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9704 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !407
  %i.i = icmp eq i32 %i.h, %1                     ; 2 uses
  %or.cond = select i1 %i.i, i1 true, i1 %i.f     ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = load i64, ptr %0, align 4
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7852 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !256
  %i.o = or i32 %i.n, 32
  store i32 %i.o, ptr %i.m, align 4, !tbaa !256
  %i.p = trunc i64 %4 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !171
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !171
  %i.t = fsub <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %8, align 8
  %i.u = or i32 %5, 134221824
  %i.v = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.u, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %1)
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.x = load i32, ptr %i.w, align 4, !tbaa !205
  store i32 %i.x, ptr %i.g, align 8, !tbaa !407
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.z = load i32, ptr %i.y, align 4, !tbaa !205
  %.not = icmp eq i32 %i.z, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !407
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %i.k, ptr %i.j, align 8
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %struct.ImRect, align 8             ; 5 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 8            ; 16 uses
  %12 = alloca %struct.ImRect, align 8            ; 8 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %15 = alloca %struct.ImVector.37, align 8       ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [5 x i8], align 1                 ; 6 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %16 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 18 uses
  %17 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 13 uses
  %18 = alloca %struct.ImVec2, align 8            ; 16 uses
  %19 = alloca %struct.ImRect, align 16           ; 10 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 16 uses
  %20 = alloca %struct.ImRect, align 8            ; 6 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.i = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 132 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 5312 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 206
  store i8 1, ptr %i.l, align 2, !tbaa !140
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.n = load i8, ptr %i.m, align 1, !tbaa !164, !range !165, !noundef !166
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.qr, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = and i32 %5, 67108864
  %i.r = icmp ne i32 %i.q, 0                      ; 31 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.k, ptr noundef %0, ptr noundef null) ; 77 uses
  %i.t = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.u = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.t, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %.sroa.0810.0.copyload = load <2 x float>, ptr %4, align 4
  %i.v = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 4568
  %i.x = load float, ptr %i.w, align 8, !tbaa !189
  %i.y = fmul float %i.x, 8.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0811.4.vec.extract = extractelement <2 x float> %i.u, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi float [ %i.y, %bb.e ], [ %.sroa.0811.4.vec.extract, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 3284 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 3288 ; 8 uses
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !187
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.000000e+00, float %i.z)
  %i.ae = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0810.0.copyload, float noundef %i.v, float noundef %i.ad) ; 6 uses
  %.sroa.01509.0.vec.extract1511 = extractelement <2 x float> %i.ae, i64 0 ; 4 uses
  %.sroa.0811.0.vec.extract = extractelement <2 x float> %i.u, i64 0 ; 2 uses
  %i.af = fcmp ogt float %.sroa.0811.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 3308
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !188
  %i.ai = fadd float %.sroa.0811.0.vec.extract, %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aj = phi float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ak = fadd float %.sroa.01509.0.vec.extract1511, %i.aj
  %.sroa.01509.4.vec.extract1517 = extractelement <2 x float> %i.ae, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 4, !tbaa !171 ; 6 uses
  %i.an = fadd <2 x float> %i.ae, %i.am
  store <2 x float> %i.am, ptr %11, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store <2 x float> %i.an, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 4
  store <2 x float> %i.am, ptr %12, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = load float, ptr %i.ab, align 8, !tbaa !187 ; 2 uses
  %i.as = insertelement <2 x float> %i.ae, float %i.ak, i64 0
  %i.at = fadd <2 x float> %i.as, %i.am           ; 2 uses
  store <2 x float> %i.at, ptr %i.aq, align 8
  %i.au = fsub <2 x float> %i.at, %i.am           ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> %i.au, ptr %10, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 9568
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !408
  %i.ax = icmp eq i32 %i.aw, %i.s
  br i1 %i.ax, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 5428
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !205
  %i.ba = icmp eq i32 %i.az, %i.s
  br i1 %i.ba, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k, %bb.j
  %i.bb = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8244
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !214
  %i.be = icmp eq i32 %i.s, %i.bd                 ; 2 uses
  %i.bf = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576)
  %or.cond = select i1 %i.bf, i1 true, i1 %i.be
  br i1 %or.cond, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.l
  call void @_ZN5ImGui8EndGroupEv()
  br label %bb.qq

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bg = phi i1 [ true, %.thread ], [ %i.be, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 7848
  %.sroa.51497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 7852 ; 2 uses
  %.sroa.51497.0.copyload = load i32, ptr %.sroa.51497.0..sroa_idx, align 4, !tbaa !192 ; 2 uses
  %.sroa.71499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 7856 ; 2 uses
  %.sroa.71499.0.copyload = load i32, ptr %.sroa.71499.0..sroa_idx, align 8, !tbaa !192 ; 2 uses
  store <2 x float> %i.am, ptr %i.al, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8244 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !214 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %i.s
  br i1 %i.bk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8256
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !222
  %i.bn = and i32 %i.bm, 40
  %or.cond1345 = icmp ne i32 %i.bn, 8
  %i.bo = and i32 %5, 32
  %.not1289 = icmp eq i32 %i.bo, 0
  %or.cond1346 = or i1 %.not1289, %or.cond1345
  br i1 %or.cond1346, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bi, align 4, !tbaa !214
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bp = phi i32 [ 0, %bb.o ], [ %i.s, %bb.n ], [ %i.bj, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 5428
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !205
  %i.bs = icmp eq i32 %i.br, %i.s
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bi, align 4, !tbaa !214
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 3644
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 3292
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !228
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 3296
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !313
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 8, float noundef %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !171
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.by = load <2 x float>, ptr %i.ao, align 8, !tbaa !171
  %i.bz = load <2 x float>, ptr %11, align 8, !tbaa !171
  %i.ca = fsub <2 x float> %i.by, %i.bz
  store <2 x float> %i.ca, ptr %14, align 8
  %i.cb = call noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef 1, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !214
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 3)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  %or.cond3 = select i1 %i.cb, i1 true, i1 %i.bg
  br i1 %or.cond3, label %.thread1521, label %bb.s

.thread1521:                                      ; preds = %bb.r
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !11  ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 280 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 368
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !382
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 374 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !426
  %i.cj = trunc i32 %i.cg to i16
  %i.ck = or i16 %i.ci, %i.cj
  store i16 %i.ck, ptr %i.ch, align 2, !tbaa !426
  %i.cl = load <2 x float>, ptr %i.aa, align 4, !tbaa !171
  %i.cm = load <2 x float>, ptr %i.cd, align 8, !tbaa !171
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  store <2 x float> %i.cn, ptr %i.cd, align 8, !tbaa !171
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 192
  %i.cp = load float, ptr %i.co, align 8, !tbaa !427
  %i.cq = fsub float %.sroa.01509.0.vec.extract1511, %i.cp
  store i32 %i.s, ptr %i.bh, align 8, !tbaa !191
  store i32 %.sroa.51497.0.copyload, ptr %.sroa.51497.0..sroa_idx, align 4, !tbaa !256
end_hunk_2
begin_hunk_3_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.bgu = fmul float %i.bgt, 5.000000e-01
  %i.bgv = fptosi float %i.bgu to i32
  %i.bgw = sitofp i32 %i.bgv to float
  %i.bgx = getelementptr inbounds nuw i8, ptr %.012071539, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !439 ; 2 uses
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 4
  %i.bha = load i32, ptr %i.bgz, align 4, !tbaa !466 ; 2 uses
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  %i.bhc = load i32, ptr %i.bhb, align 4, !tbaa !467 ; 2 uses
  %i.bhd = call noundef i32 @llvm.smin.i32(i32 %i.bha, i32 %i.bhc)
  %i.bhe = sext i32 %i.bhd to i64
  %i.bhf = getelementptr inbounds i8, ptr %.012521595, i64 %i.bhe ; 3 uses
  %i.bhg = call noundef i32 @llvm.smax.i32(i32 %i.bha, i32 %i.bhc)
  %i.bhh = sext i32 %i.bhg to i64
  %i.bhi = getelementptr inbounds i8, ptr %.012521595, i64 %i.bhh ; 3 uses
  %i.bhj = load i32, ptr %i.g, align 4, !tbaa !192 ; 2 uses
  %i.bhk = load i32, ptr %i.h, align 4, !tbaa !192
  %i.bhl = icmp slt i32 %i.bhj, %i.bhk
  br i1 %i.bhl, label %.lr.ph1663, label %.loopexit

.lr.ph1663:                                       ; preds = %bb.oz
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.i, i64 9552 ; 2 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bho = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.21203, i64 712
  %i.bhq = sext i32 %i.bhj to i64
  br label %bb.pa

bb.pa:                                            ; preds = %.lr.ph1663, %bb.pi
  %indvars.iv1671 = phi i64 [ %i.bhq, %.lr.ph1663 ], [ %indvars.iv.next1672, %bb.pi ] ; 3 uses
  %i.bhr = load i32, ptr %i.auf, align 8, !tbaa !545 ; 2 uses
  %.not.i1442 = icmp eq i32 %i.bhr, 0
  br i1 %.not.i1442, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bhs = load ptr, ptr %i.bhm, align 8, !tbaa !536
  %i.bht = getelementptr inbounds [4 x i8], ptr %i.bhs, i64 %indvars.iv1671
  %i.bhu = load i32, ptr %i.bht, align 4, !tbaa !192
  %i.bhv = sext i32 %i.bhu to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit:    ; preds = %bb.pa, %bb.pb
  %i.bhw = phi i64 [ %i.bhv, %bb.pb ], [ 0, %bb.pa ]
  %i.bhx = getelementptr inbounds i8, ptr %.012521595, i64 %i.bhw ; 3 uses
  %indvars.iv.next1672 = add nsw i64 %indvars.iv1671, 1 ; 4 uses
  %i.bhy = sext i32 %i.bhr to i64
  %i.bhz = icmp slt i64 %indvars.iv.next1672, %i.bhy
  br i1 %i.bhz, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bia = load ptr, ptr %i.bhm, align 8, !tbaa !536
  %i.bib = getelementptr inbounds [4 x i8], ptr %i.bia, i64 %indvars.iv.next1672
  %i.bic = load i32, ptr %i.bib, align 4, !tbaa !192
  %i.bid = add nsw i32 %i.bic, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

bb.pd:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bie = load i32, ptr %i.bbl, align 8, !tbaa !541
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

_ZN14ImGuiTextIndex12get_line_endEPKci.exit:      ; preds = %bb.pc, %bb.pd
  %i.bif = phi i32 [ %i.bid, %bb.pc ], [ %i.bie, %bb.pd ]
  %i.big = sext i32 %i.bif to i64
  %i.bih = getelementptr inbounds i8, ptr %.012521595, i64 %i.big ; 4 uses
  %i.bii = icmp ult ptr %i.bih, %.41679
  br i1 %i.bii, label %bb.pe, label %.thread1613

bb.pe:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bij = load i8, ptr %i.bih, align 1, !tbaa !387
  %.fr = freeze i8 %i.bij
  %i.bik = icmp ne i8 %.fr, 10                    ; 2 uses
  %spec.select1619.idx = zext i1 %i.bik to i64
  %spec.select1619 = getelementptr inbounds nuw i8, ptr %i.bih, i64 %spec.select1619.idx
  br label %.thread1613

.thread1613:                                      ; preds = %bb.pe, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bil = phi i1 [ false, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %i.bik, %bb.pe ]
  %i.bim = phi ptr [ %i.bih, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %spec.select1619, %bb.pe ] ; 4 uses
  %i.bin = icmp ugt ptr %i.bhf, %i.bhx
  %i.bio = select i1 %i.bin, ptr %i.bhf, ptr %i.bhx ; 3 uses
  %i.bip = icmp ult ptr %i.bhi, %i.bim
  %i.biq = select i1 %i.bip, ptr %i.bhi, ptr %i.bim ; 2 uses
  %i.bir = icmp ult ptr %i.bio, %i.biq
  br i1 %i.bir, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %.thread1613
  %i.bis = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bio, ptr noundef nonnull %i.biq, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0217.0.vec.extract = extractelement <2 x float> %i.bis, i64 0
  %i.bit = fadd float %.sroa.0217.0.vec.extract, 0.000000e+00
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %.thread1613
  %.01204 = phi float [ %i.bit, %bb.pf ], [ 0.000000e+00, %.thread1613 ] ; 2 uses
  %.not1344 = icmp ugt ptr %i.bhf, %i.bim
  %i.biu = icmp ule ptr %i.bhi, %i.bim
  %or.cond178 = or i1 %i.bil, %i.biu
  %or.cond1393 = select i1 %.not1344, i1 true, i1 %or.cond178
  %i.biv = fadd float %.01204, %i.bgw
  %.11205 = select i1 %or.cond1393, float %.01204, float %i.biv ; 2 uses
  %i.biw = fcmp oeq float %.11205, 0.000000e+00
  br i1 %i.biw, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.bix = load float, ptr %18, align 8, !tbaa !176
  %i.biy = fsub float %i.bix, %i.bgl
  %i.biz = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bhx, ptr noundef %i.bio, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.biz, i64 0
  %i.bja = fadd float %i.biy, %.sroa.0216.0.vec.extract ; 2 uses
  %i.bjb = load float, ptr %i.bhn, align 4, !tbaa !181
  %i.bjc = trunc nsw i64 %indvars.iv1671 to i32
  %i.bjd = sitofp i32 %i.bjc to float
  %i.bje = load float, ptr %i.bbp, align 8, !tbaa !189 ; 2 uses
  %i.bjf = call float @llvm.fmuladd.f32(float %i.bjd, float %i.bje, float %i.bjb) ; 2 uses
  %i.bjg = fadd float %.11205, %i.bja
  %i.bjh = fadd float %i.bgq, %i.bjf
  %i.bji = fadd float %i.bje, %i.bjh
  %i.bjj = fadd float %i.bgp, %i.bjf
  %i.bjk = load <4 x float>, ptr %19, align 16, !tbaa !171 ; 3 uses
  %i.bjl = insertelement <4 x float> poison, float %i.bja, i64 0
  %i.bjm = insertelement <4 x float> %i.bjl, float %i.bjj, i64 1
  %i.bjn = insertelement <4 x float> %i.bjm, float %i.bjg, i64 2
  %i.bjo = insertelement <4 x float> %i.bjn, float %i.bji, i64 3 ; 3 uses
  %i.bjp = fcmp oge <4 x float> %i.bjo, %i.bjk
  %i.bjq = fcmp olt <4 x float> %i.bjo, %i.bjk
  %i.bjr = shufflevector <4 x i1> %i.bjp, <4 x i1> %i.bjq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bjs = select <4 x i1> %i.bjr, <4 x float> %i.bjo, <4 x float> %i.bjk ; 2 uses
  %i.bjt = shufflevector <4 x float> %i.bjs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bjt, ptr %20, align 8
  %i.bju = shufflevector <4 x float> %i.bjs, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.bju, ptr %i.bho, align 8
  %i.bjv = load ptr, ptr %i.bhp, align 8, !tbaa !186
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bjv, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %i.bho, i32 noundef %i.bgo, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %i.bjw = load i32, ptr %i.h, align 4, !tbaa !192
  %i.bjx = sext i32 %i.bjw to i64
  %i.bjy = icmp slt i64 %indvars.iv.next1672, %i.bjx
  br i1 %i.bjy, label %bb.pa, label %.loopexit, !llvm.loop !546

.loopexit:                                        ; preds = %bb.pi, %bb.oz, %bb.oy, %bb.od
  %i.bjz = phi i1 [ false, %bb.od ], [ false, %bb.oy ], [ true, %bb.oz ], [ true, %bb.pi ]
  %i.bka = phi i32 [ %i.bdu, %bb.od ], [ %i.bfg, %bb.oy ], [ %i.bfg, %bb.oz ], [ %i.bfg, %bb.pi ] ; 3 uses
  %.sroa.01483.01607 = phi <2 x float> [ zeroinitializer, %bb.od ], [ %.sroa.01483.01606, %bb.oy ], [ %.sroa.01483.01606, %bb.oz ], [ %.sroa.01483.01606, %bb.pi ] ; 2 uses
  %.sroa.01478.0 = phi float [ 0.000000e+00, %bb.od ], [ %i.bgl, %bb.oy ], [ %i.bgl, %bb.oz ], [ %i.bgl, %bb.pi ] ; 2 uses
  %.41227 = phi i8 [ 0, %bb.od ], [ %.31226, %bb.oy ], [ %.31226, %bb.oz ], [ %.31226, %bb.pi ] ; 2 uses
  %i.bkb = load i32, ptr %i.ei, align 4, !tbaa !205
  %.not1340 = icmp eq i32 %i.bkb, %i.s
  br i1 %.not1340, label %bb.pl, label %bb.pj

bb.pj:                                            ; preds = %.loopexit
  %i.bkc = and i32 %5, 131072
  %i.bkd = icmp eq i32 %i.bkc, 0
  %i.bke = trunc nuw i8 %.41227 to i1
  %or.cond181 = select i1 %i.bkd, i1 true, i1 %i.bke
  %or.cond184 = or i1 %i.bjz, %or.cond181
  br i1 %or.cond184, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bkf = load float, ptr %18, align 8, !tbaa !176 ; 2 uses
  %i.bkg = load float, ptr %i.ao, align 8, !tbaa !233
  %i.bkh = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.012521595, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0215.0.vec.extract = extractelement <2 x float> %i.bkh, i64 0
  %i.bki = fsub float %i.bkg, %.sroa.0215.0.vec.extract
  %i.bkj = load float, ptr %i.aa, align 4, !tbaa !190
  %i.bkk = fsub float %i.bki, %i.bkj              ; 2 uses
  %i.bkl = fcmp olt float %i.bkf, %i.bkk
  %i.bkm = select i1 %i.bkl, float %i.bkf, float %i.bkk
  store float %i.bkm, ptr %18, align 8, !tbaa !176
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj, %.loopexit
  br i1 %i.r, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bkn = icmp sgt i64 %i.bbj, 2097151
  %.not1341 = icmp ult i32 %i.bka, 16777216
  %or.cond1394 = or i1 %.not1341, %i.bkn
  br i1 %or.cond1394, label %bb.pt, label %bb.po

bb.pn:                                            ; preds = %bb.pl
  %.not1341.old = icmp ult i32 %i.bka, 16777216
  br i1 %.not1341.old, label %bb.pt, label %bb.po

bb.po:                                            ; preds = %bb.pm, %bb.pn
  %i.bko = load i32, ptr %i.g, align 4, !tbaa !192 ; 3 uses
  %i.bkp = load i32, ptr %i.h, align 4, !tbaa !192 ; 3 uses
  %i.bkq = icmp slt i32 %i.bko, %i.bkp
  br i1 %i.bkq, label %bb.pp, label %bb.pt

bb.pp:                                            ; preds = %bb.po
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !477
  %i.bkt = getelementptr inbounds nuw i8, ptr %.21203, i64 712
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !186
  %i.bkv = load float, ptr %i.bbp, align 8, !tbaa !189 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %23 = load float, ptr %18, align 8, !tbaa !176
  %24 = fsub float %23, %.sroa.01478.0
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %26 = load float, ptr %25, align 4, !tbaa !181
  %27 = sitofp i32 %i.bko to float
  %28 = fmul float %i.bkv, %27
  %29 = fadd float %24, 0.000000e+00
  %30 = fadd float %28, %26
  %.sroa.0.0.vec.insert.i1453 = insertelement <2 x float> poison, float %29, i64 0
  %.sroa.0.4.vec.insert.i1454 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1453, float %30, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i1454, ptr %21, align 8
  %i.bkw = load i32, ptr %i.auf, align 8, !tbaa !545 ; 2 uses
  %.not.i1455 = icmp eq i32 %i.bkw, 0
  br i1 %.not.i1455, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !536
  %i.bkz = sext i32 %i.bko to i64
  %i.bla = getelementptr inbounds [4 x i8], ptr %i.bky, i64 %i.bkz
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !192
  %i.blc = sext i32 %i.blb to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456: ; preds = %bb.pp, %bb.pq
  %i.bld = phi i64 [ %i.blc, %bb.pq ], [ 0, %bb.pp ]
  %i.ble = getelementptr inbounds i8, ptr %.012521595, i64 %i.bld
  %i.blf = icmp slt i32 %i.bkp, %i.bkw
  br i1 %i.blf, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.blg = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !536
  %i.bli = sext i32 %i.bkp to i64
  %i.blj = getelementptr inbounds [4 x i8], ptr %i.blh, i64 %i.bli
  %i.blk = load i32, ptr %i.blj, align 4, !tbaa !192
  %i.bll = add nsw i32 %i.blk, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

bb.ps:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.blm = load i32, ptr %i.bbl, align 8, !tbaa !541
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457:  ; preds = %bb.pr, %bb.ps
  %i.bln = phi i32 [ %i.bll, %bb.pr ], [ %i.blm, %bb.ps ]
  %i.blo = sext i32 %i.bln to i64
  %i.blp = getelementptr inbounds i8, ptr %.012521595, i64 %i.blo
  call void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76) %i.bks, ptr noundef %i.bku, float noundef %i.bkv, ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef %i.bka, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef %i.ble, ptr noundef %i.blp, float noundef %.01209, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.pt

bb.pt:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457, %bb.po, %bb.pn, %bb.pm
  %i.blq = trunc nuw i8 %.41227 to i1
  br i1 %i.blq, label %bb.pu, label %bb.qa

bb.pu:                                            ; preds = %bb.pt
  %i.blr = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bls = load float, ptr %i.blr, align 8, !tbaa !547
  %i.blt = getelementptr inbounds nuw i8, ptr %.012071539, i64 108 ; 2 uses
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !457
  %i.blv = fadd float %i.bls, %i.blu              ; 3 uses
  store float %i.blv, ptr %i.blt, align 4, !tbaa !457
  %i.blw = getelementptr inbounds nuw i8, ptr %i.i, i64 122
  %i.blx = load i8, ptr %i.blw, align 2, !tbaa !548, !range !165, !noundef !166
  %i.bly = trunc nuw i8 %i.blx to i1
  %i.blz = fcmp ugt float %i.blv, 0.000000e+00
  %or.cond1395 = select i1 %i.bly, i1 %i.blz, i1 false
  br i1 %or.cond1395, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.bma = call float @fmodf(float noundef %i.blv, float noundef 1.200000e+00) #41
  %i.bmb = fcmp ole float %i.bma, 8.000000e-01
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %i.bmc = phi i1 [ %i.bmb, %bb.pv ], [ true, %bb.pu ]
  %i.bmd = load float, ptr %18, align 8, !tbaa !176
  %.sroa.01483.0.vec.extract1486 = extractelement <2 x float> %.sroa.01483.01607, i64 0
  %i.bme = fadd float %.sroa.01483.0.vec.extract1486, %i.bmd
  %i.bmf = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bmg = load float, ptr %i.bmf, align 4, !tbaa !181
  %.sroa.01483.4.vec.extract1491 = extractelement <2 x float> %.sroa.01483.01607, i64 1
  %i.bmh = load float, ptr %i.bbp, align 8, !tbaa !189
  %i.bmi = fsub float %i.bme, %.sroa.01478.0
  %i.bmj = fadd float %.sroa.01483.4.vec.extract1491, %i.bmg
  %i.bmk = insertelement <2 x float> poison, float %i.bmj, i64 0
  %i.bml = insertelement <2 x float> %i.bmk, float %i.bmi, i64 1
  %i.bmm = shufflevector <2 x float> %i.bml, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.bmn = fptosi <4 x float> %i.bmm to <4 x i32>
  %i.bmo = sitofp <4 x i32> %i.bmn to <4 x float> ; 4 uses
  %i.bmp = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bmh, i64 3
  %i.bmq = fsub <4 x float> %i.bmo, %i.bmp
  %i.bmr = fadd <4 x float> %i.bmq, <float 1.000000e+00, float -1.500000e+00, float -0.000000e+00, float 5.000000e-01> ; 4 uses
  %i.bms = load <4 x float>, ptr %19, align 16    ; 2 uses
  %i.bmt = fcmp ogt <4 x float> %i.bms, %i.bmr
  %i.bmu = fcmp olt <4 x float> %i.bms, %i.bmr
  %i.bmv = shufflevector <4 x i1> %i.bmu, <4 x i1> %i.bmt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bmw = freeze <4 x i1> %i.bmv
  %i.bmx = bitcast <4 x i1> %i.bmw to i4
  %i.bmy = icmp eq i4 %i.bmx, -1
  %op.rdx = select i1 %i.bmy, i1 %i.bmc, i1 false
  br i1 %op.rdx, label %bb.px, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.px:                                            ; preds = %bb.pw
  %i.bmz = getelementptr inbounds nuw i8, ptr %.21203, i64 712
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !186
  %i.bnb = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 34, float noundef 1.000000e+00)
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.i, i64 3472
  %i.bnd = load float, ptr %i.bnc, align 8, !tbaa !549
  %i.bne = extractelement <4 x float> %i.bmr, i64 1
  %i.bnf = extractelement <4 x float> %i.bmr, i64 3
  %i.bng = extractelement <4 x float> %i.bmo, i64 0
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bna, float noundef %i.bng, float noundef %i.bnf, float noundef %i.bne, i32 noundef %i.bnb, float noundef %i.bnd)
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.px, %bb.pw
  br i1 %i.dl, label %bb.qa, label %bb.py

bb.py:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.bnh = load i32, ptr %i.ei, align 4, !tbaa !205
  %i.bni = icmp eq i32 %i.bnh, %i.s
  br i1 %i.bni, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.i, i64 10008
  store i8 1, ptr %i.bnj, align 8, !tbaa !550
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.i, i64 10009
  store i8 1, ptr %i.bnk, align 1, !tbaa !551
  %i.bnl = extractelement <4 x float> %i.bmo, i64 0
  %i.bnm = fadd float %i.bnl, -1.000000e+00
  %i.bnn = load float, ptr %i.bbp, align 8, !tbaa !189 ; 2 uses
  %i.bno = extractelement <4 x float> %i.bmo, i64 1
  %i.bnp = fsub float %i.bno, %i.bnn
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.i, i64 10012
  store float %i.bnm, ptr %i.bnq, align 4
  %.sroa_idx1467 = getelementptr inbounds nuw i8, ptr %i.i, i64 10016
  store float %i.bnp, ptr %.sroa_idx1467, align 8
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.i, i64 10020
  store float %i.bnn, ptr %i.bnr, align 4, !tbaa !552
  %i.bns = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !243
  %i.bnu = load i32, ptr %i.bnt, align 8, !tbaa !553
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.i, i64 10024
  store i32 %i.bnu, ptr %i.bnv, align 8, !tbaa !555
  br label %bb.qa

bb.qa:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread, %bb.py, %bb.pz, %bb.pt
  %or.cond188 = or i1 %i.dn, %.01241.in15841591   ; 2 uses
  br i1 %or.cond188, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.bnw = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 9 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9592 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9696
  %i.bnz = load i32, ptr %i.bny, align 8, !tbaa !482
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnw, i64 4552
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !477
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 16
  store i32 %i.bnz, ptr %i.boc, align 8, !tbaa !478
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9656
  %i.boe = load i32, ptr %i.bod, align 8, !tbaa !483
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnw, i64 4560
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !319 ; 7 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 64
  store i32 %i.boe, ptr %i.boh, align 8, !tbaa !483
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9608
  %i.boj = load float, ptr %i.boi, align 8, !tbaa !484
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bog, i64 16
  store float %i.boj, ptr %i.bok, align 8, !tbaa !484
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bog, i64 32 ; 2 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9624 ; 2 uses
  %i.bon = load <2 x i32>, ptr %i.bom, align 8, !tbaa !192
  %i.boo = load <2 x i32>, ptr %i.bol, align 8, !tbaa !192
  store <2 x i32> %i.boo, ptr %i.bom, align 8, !tbaa !192
  store <2 x i32> %i.bon, ptr %i.bol, align 8, !tbaa !192
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9632 ; 2 uses
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !485
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bog, i64 40 ; 2 uses
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !485
  store ptr %i.bos, ptr %i.bop, align 8, !tbaa !485
  store ptr %i.boq, ptr %i.bor, align 8, !tbaa !485
  %i.bot = load <2 x i32>, ptr %i.bnx, align 8, !tbaa !192
  %i.bou = load <2 x i32>, ptr %i.bog, align 8, !tbaa !192
  store <2 x i32> %i.bou, ptr %i.bnx, align 8, !tbaa !192
  store <2 x i32> %i.bot, ptr %i.bog, align 8, !tbaa !192
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bnw, i64 9600 ; 2 uses
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !486
  %i.box = getelementptr inbounds nuw i8, ptr %i.bog, i64 8 ; 2 uses
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !486
  store ptr %i.boy, ptr %i.bov, align 8, !tbaa !486
  store ptr %i.bow, ptr %i.box, align 8, !tbaa !486
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  br i1 %i.r, label %bb.qd, label %bb.qh

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.boz = load float, ptr %i.ab, align 8, !tbaa !187
  %i.bpa = fadd float %i.bbr, %i.boz              ; 2 uses
  store float 0.000000e+00, ptr %22, align 4, !tbaa !176
  %i.bpb = getelementptr inbounds nuw i8, ptr %22, i64 4
  store float %i.bpa, ptr %i.bpb, align 4, !tbaa !181
  %i.bpc = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 5312
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !11 ; 3 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 206
  store i8 1, ptr %i.bpf, align 2, !tbaa !140
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpe, i64 209
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !164, !range !165, !noundef !166
  %i.bpi = trunc nuw i8 %i.bph to i1
end_hunk_3
begin_hunk_4_@_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2:bb.a
  %i.dt = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.dt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = and i32 %spec.select, 805335042
  call void @_ZN5ImGui12ColorTooltipEPKcPKfi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.du)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %bb.ae
  %.0 = phi i1 [ %i.ad, %bb.ae ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  %.1 = phi i1 [ %.0, %bb.af ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec4, align 8             ; 7 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 8             ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 7 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %9 = alloca %struct.ImVec4, align 8             ; 7 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 8            ; 7 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImRect, align 8            ; 7 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %14 = alloca %struct.ImVec4, align 8            ; 7 uses
  %15 = alloca %struct.ImVec2, align 8            ; 9 uses
  %i.i = alloca [4 x float], align 16             ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 8 uses
  %17 = alloca %struct.ImVec2, align 4            ; 9 uses
  %18 = alloca %struct.ImVec2, align 4            ; 10 uses
  %19 = alloca %struct.ImVec2, align 4            ; 10 uses
  %i.j = alloca float, align 4                    ; 21 uses
  %i.k = alloca float, align 4                    ; 19 uses
  %i.l = alloca float, align 4                    ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %i.n = alloca float, align 4                    ; 7 uses
  %i.o = alloca float, align 4                    ; 7 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 7 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca float, align 4                    ; 3 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %23 = alloca %struct.ImVec2, align 4            ; 5 uses
  %24 = alloca %struct.ImVec4, align 8            ; 6 uses
  %25 = alloca %struct.ImVec2, align 4            ; 5 uses
  %26 = alloca %struct.ImVec4, align 8            ; 6 uses
  %27 = alloca %struct.ImVec2, align 4            ; 5 uses
  %28 = alloca %struct.ImVec4, align 8            ; 6 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca float, align 4                    ; 4 uses
  %i.u = alloca float, align 4                    ; 4 uses
  %i.v = alloca [7 x i32], align 16               ; 10 uses
  %29 = alloca %struct.ImVec4, align 8            ; 8 uses
  %30 = alloca %struct.ImVec4, align 4            ; 7 uses
  %31 = alloca %struct.ImVec2, align 8            ; 8 uses
  %32 = alloca %struct.ImVec2, align 8            ; 6 uses
  %33 = alloca %struct.ImVec2, align 8            ; 5 uses
  %34 = alloca %struct.ImVec2, align 8            ; 5 uses
  %35 = alloca %struct.ImVec2, align 8            ; 5 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 4 uses
  %38 = alloca %struct.ImVec2, align 4            ; 25 uses
  %39 = alloca %struct.ImVec2, align 4            ; 25 uses
  %40 = alloca %struct.ImRect, align 8            ; 9 uses
  %i.w = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5312
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 206
  store i8 1, ptr %i.z, align 2, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 209
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !164, !range !165, !noundef !166
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.dv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !186 ; 37 uses
  %i.af = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 7792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 7796 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 7784
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !376
  %i.al = or i32 %i.ak, %i.ai
  %i.am = and i32 %i.al, 2048
  %i.an = icmp ne i32 %i.am, 0                    ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !597
  store i32 0, ptr %i.ah, align 4, !tbaa !598
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 9724 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !599
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 272
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !600
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !601
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !192
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  %i.az = lshr i32 %2, 4
  %i.ba = and i32 %i.az, 16
  %i.bb = xor i32 %i.ba, 16
  %spec.select = or i32 %i.bb, %2                 ; 3 uses
  %i.bc = and i32 %2, 8
  %.not443 = icmp eq i32 %i.bc, 0
  br i1 %.not443, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui23ColorPickerOptionsPopupEPKfi(ptr noundef %1, i32 noundef %spec.select)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bd = and i32 %2, 100663296
  %.not444 = icmp eq i32 %i.bd, 0
  br i1 %.not444, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !602
  %i.bg = and i32 %i.bf, 100663296                ; 2 uses
  %.not445 = icmp eq i32 %i.bg, 0
  %spec.select471 = select i1 %.not445, i32 33554432, i32 %i.bg
  %i.bh = or disjoint i32 %spec.select471, %spec.select
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %i.bh, %bb.g ] ; 3 uses
  %i.bi = and i32 %.1, 805306368
  %.not446 = icmp eq i32 %i.bi, 0
  br i1 %.not446, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !602
  %i.bl = and i32 %i.bk, 805306368                ; 2 uses
  %.not447 = icmp eq i32 %i.bl, 0
  %spec.select472 = select i1 %.not447, i32 268435456, i32 %i.bl
  %i.bm = or disjoint i32 %spec.select472, %.1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.bm, %bb.i ]  ; 3 uses
  %i.bn = and i32 %.2, 8
  %.not448 = icmp eq i32 %i.bn, 0
  br i1 %.not448, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !602
  %i.bq = and i32 %i.bp, 262144
  %i.br = or i32 %i.bq, %.2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.br, %bb.k ]  ; 23 uses
  %i.bs = and i32 %.3, 2
  %.not449 = icmp eq i32 %i.bs, 0                 ; 3 uses
  %i.bt = and i32 %.3, 262146
  %spec.select473 = icmp eq i32 %i.bt, 262144     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  store i64 %i.bv, ptr %15, align 8
  %i.bw = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 17 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 3308 ; 4 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !188 ; 3 uses
  %i.bz = fadd float %i.bw, %i.by
  %i.ca = select i1 %spec.select473, float -2.000000e+00, float -1.000000e+00
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bz, float %i.af) ; 2 uses
  %i.cc = fcmp oge float %i.bw, %i.cb
  %i.cd = select i1 %i.cc, float %i.bw, float %i.cb ; 25 uses
  %i.ce = fmul float %i.bw, 2.000000e-01
  %i.cf = fptosi float %i.ce to i32
  %i.cg = sitofp i32 %i.cf to float               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  %i.ch = select i1 %.not449, i64 16, i64 12      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 %i.ch, i1 false)
  %i.ci = fmul float %i.cd, 8.000000e-02          ; 4 uses
  %i.cj = fmul float %i.cd, 5.000000e-01          ; 5 uses
  %i.ck = fsub float %i.cj, %i.ci                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.cl = fadd float %i.bw, %i.cd
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 9 uses
  %i.cn = lshr i64 %i.bv, 32
  %i.co = trunc nuw i64 %i.cn to i32              ; 2 uses
  %i.cp = bitcast i64 %i.bv to <2 x float>        ; 6 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cr = fadd float %i.cd, %i.cq                 ; 2 uses
  %i.cs = fadd float %i.by, %i.cr                 ; 11 uses
  %i.ct = fadd float %i.bw, %i.cs                 ; 8 uses
  %i.cu = fadd float %i.by, %i.ct                 ; 5 uses
  %i.cv = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cd, i64 1
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cp) ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0 ; 3 uses
  store float %i.cy, ptr %16, align 8, !tbaa !176
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.da = extractelement <2 x float> %i.cx, i64 1 ; 3 uses
  store float %i.da, ptr %i.cz, align 4, !tbaa !181
  %i.db = and i32 %.3, 134217728
  %i.dc = icmp eq i32 %i.db, 0                    ; 3 uses
  %i.dd = fmul float %i.cd, 2.700000e-02
  %i.de = fptosi float %i.dd to i32
  %i.df = sitofp i32 %i.de to float
  %i.dg = fsub float %i.ck, %i.df                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.dh = fmul float %i.dg, -5.000000e-01         ; 2 uses
  %i.di = fmul float %i.dg, f0xBF5DB22D
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.dj = fmul float %i.dg, f0x3F5DB22D
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dk = fmul float %i.dg, f0x3F5DB22D
  %i.dl = fmul float %i.dg, 5.000000e-01          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.dm = fneg float %i.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.dn = fmul float %i.dg, f0xBF5DB22D
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink618 = phi float [ %i.dg, %bb.m ], [ %i.dk, %bb.n ]
  %.sink617 = phi float [ 0.000000e+00, %bb.m ], [ %i.dl, %bb.n ]
  %.sink616 = phi float [ %i.dh, %bb.m ], [ 0.000000e+00, %bb.n ]
  %.sink615 = phi float [ %i.di, %bb.m ], [ %i.dm, %bb.n ]
  %.sink614 = phi float [ %i.dh, %bb.m ], [ %i.dn, %bb.n ]
  %.sink = phi float [ %i.dj, %bb.m ], [ %i.dl, %bb.n ]
  store float %.sink618, ptr %17, align 4, !tbaa !176
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  store float %.sink617, ptr %i.do, align 4, !tbaa !181
  store float %.sink616, ptr %18, align 4, !tbaa !176
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  store float %.sink615, ptr %i.dp, align 4, !tbaa !181
  store float %.sink614, ptr %19, align 4, !tbaa !176
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  store float %.sink, ptr %i.dq, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  %i.dr = load float, ptr %1, align 4, !tbaa !171 ; 4 uses
  store float %i.dr, ptr %i.j, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !171 ; 4 uses
  store float %i.dt, ptr %i.k, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !171 ; 4 uses
  store float %i.dv, ptr %i.l, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #41
  store float %i.dr, ptr %i.m, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store float %i.dt, ptr %i.n, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  store float %i.dv, ptr %i.o, align 4, !tbaa !171
  %i.dw = and i32 %.3, 268435456
  %.not451 = icmp eq i32 %i.dw, 0                 ; 4 uses
  br i1 %.not451, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.dr, float noundef %i.dt, float noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.dx = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 9728
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !603
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 9724
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !599
  %.not.i = icmp eq i32 %i.dz, %i.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  br i1 %.not.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 9740
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !604
  %i.ee = load float, ptr %i.du, align 4, !tbaa !171
  %i.ef = load <2 x float>, ptr %1, align 4, !tbaa !171
  store <2 x float> %i.ef, ptr %14, align 8, !tbaa !171
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.ee, ptr %i.eg, align 8, !tbaa !318
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !255
  %i.ei = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14)
  %.not14.i = icmp eq i32 %i.ed, %i.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br i1 %.not14.i, label %bb.r, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

.critedge.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.r:                                             ; preds = %bb.q
  %i.ej = load float, ptr %i.k, align 4, !tbaa !171
  %i.ek = fcmp oeq float %i.ej, 0.000000e+00
  br i1 %i.ek, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 9732
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !605
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.el = load float, ptr %i.j, align 4, !tbaa !171
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 9732
  %i.eo = load float, ptr %i.en, align 4, !tbaa !605
  %i.ep = fcmp oeq float %i.eo, 1.000000e+00
  br i1 %i.ep, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.eq = phi float [ %.pre.i, %._crit_edge.i ], [ 1.000000e+00, %bb.t ]
  store float %i.eq, ptr %i.j, align 4, !tbaa !171
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.er = load float, ptr %i.l, align 4, !tbaa !171
  %i.es = fcmp oeq float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.w, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %i.dx, i64 9736
  %i.eu = load float, ptr %i.et, align 8, !tbaa !606
  store float %i.eu, ptr %i.k, align 4, !tbaa !171
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.x:                                             ; preds = %bb.o
  %i.ev = and i32 %.3, 536870912
  %.not452 = icmp eq i32 %i.ev, 0
  br i1 %.not452, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.dr, float noundef %i.dt, float noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit:          ; preds = %bb.w, %bb.v, %.critedge.i, %bb.q, %bb.x, %bb.y
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 2, i1 noundef zeroext true)
  %i.ew = and i32 %.3, 67108864
  %.not453 = icmp eq i32 %i.ew, 0                 ; 2 uses
  br i1 %.not453, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.ex = load float, ptr %i.bx, align 4, !tbaa !188
  %i.ey = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 5312
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !11 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 206
  store i8 1, ptr %i.fb, align 2, !tbaa !140
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 209
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !164, !range !165, !noundef !166
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = fadd float %i.cd, %i.ex
  %i.fg = fadd float %i.bw, %i.ff                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %41 = fcmp une float %i.fg, 0.000000e+00
  %42 = select i1 %41, float %i.fg, float f0x80800000
  %43 = fcmp une float %i.cd, 0.000000e+00
  %44 = select i1 %43, float %i.cd, float f0x80800000
  %.sroa.017.0.vec.insert.i = insertelement <2 x float> poison, float %42, i64 0
  %.sroa.017.4.vec.insert.i = insertelement <2 x float> %.sroa.017.0.vec.insert.i, float %44, i64 1
  %i.fh = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.017.4.vec.insert.i, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.fh, ptr %12, align 8
  %i.fi = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.fa, ptr noundef nonnull @.str.71, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 280
  %i.fk = load <2 x float>, ptr %i.fj, align 4, !tbaa !171 ; 2 uses
  %i.fl = fadd <2 x float> %i.fh, %i.fk
  store <2 x float> %i.fk, ptr %13, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %i.fl, ptr %i.fm, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef -1.000000e+00)
  %i.fn = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef %i.fi, ptr noundef null, i32 noundef 2)
  br i1 %i.fn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  %i.fo = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef %i.fi, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef %i.fi, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit:    ; preds = %bb.z, %bb.ac
  %i.fp = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  %.not = xor i1 %i.fp, true
  %or.cond = select i1 %.not, i1 true, i1 %i.an
  br i1 %or.cond, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.w, i64 2800
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !176
  %i.fs = fsub float %i.fr, %i.cy                 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.w, i64 2804
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !181
  %i.fv = fsub float %i.fu, %i.da                 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !176
  %i.fy = fsub float %i.fx, %i.cy                 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.w, i64 276
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !181
  %i.gb = fsub float %i.ga, %i.da                 ; 2 uses
  %i.gc = fmul float %i.fv, %i.fv
  %i.gd = call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.gc) ; 2 uses
  %i.ge = fadd float %i.ck, -1.000000e+00         ; 2 uses
  %i.gf = fmul float %i.ge, %i.ge
  %i.gg = fcmp ult float %i.gd, %i.gf
  br i1 %i.gg, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gh = fadd float %i.cj, 1.000000e+00          ; 2 uses
  %i.gi = fmul float %i.gh, %i.gh
  %i.gj = fcmp ugt float %i.gd, %i.gi
  br i1 %i.gj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gk = call float @atan2f(float noundef %i.gb, float noundef %i.fy) #41
  %i.gl = fdiv float %i.gk, f0x40490FDB
  %i.gm = fmul float %i.gl, 5.000000e-01          ; 3 uses
  %i.gn = fcmp olt float %i.gm, 0.000000e+00
  %i.go = fadd float %i.gm, 1.000000e+00
  %storemerge = select i1 %i.gn, float %i.go, float %i.gm
  store float %storemerge, ptr %i.j, align 4, !tbaa !171
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.0416 = phi i8 [ 1, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  br i1 %i.dc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gp = load float, ptr %i.j, align 4, !tbaa !171
  %i.gq = fmul float %i.gp, -2.000000e+00
  %i.gr = fmul float %i.gq, f0x40490FDB           ; 2 uses
  %i.gs = call float @cosf(float noundef %i.gr) #41
  %i.gt = call float @sinf(float noundef %i.gr) #41 ; 2 uses
  %i.gu = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gt, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.gw = phi float [ %i.gt, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.gx = phi <2 x float> [ %i.gv, %bb.ah ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  %i.gy = fneg float %i.gw                        ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hc = insertelement <2 x float> %i.hb, float %i.gy, i64 0
  %i.hd = fmul <2 x float> %i.ha, %i.hc
  %i.he = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.gx, <2 x float> %i.hd)
  store <2 x float> %i.hg, ptr %20, align 8
  %i.hh = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br i1 %i.hh, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.hi = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hl = insertelement <2 x float> %i.hk, float %i.gy, i64 0
  %i.hm = fmul <2 x float> %i.hj, %i.hl
  %i.hn = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.gx, <2 x float> %i.hm)
  store <2 x float> %i.hp, ptr %21, align 8
  %i.hq = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %21)
  br i1 %i.hq, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hr = call <2 x float> @_Z22ImTriangleClosestPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %21)
  store <2 x float> %i.hr, ptr %21, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #41
  call void @_Z27ImTriangleBarycentricCoordsRK6ImVec2S1_S1_S1_RfS2_S2_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %i.hs = load float, ptr %i.q, align 4, !tbaa !171
  %i.ht = fsub float 1.000000e+00, %i.hs          ; 3 uses
  %i.hu = fcmp olt float %i.ht, f0x38D1B717
  %i.hv = fcmp ogt float %i.ht, 1.000000e+00
  %i.hw = select i1 %i.hv, float 1.000000e+00, float %i.ht
  %i.hx = select i1 %i.hu, float f0x38D1B717, float %i.hw ; 2 uses
  store float %i.hx, ptr %i.l, align 4, !tbaa !171
  %i.hy = load float, ptr %i.p, align 4, !tbaa !171
  %i.hz = fdiv float %i.hy, %i.hx                 ; 3 uses
  %i.ia = fcmp olt float %i.hz, f0x38D1B717
  %i.ib = fcmp ogt float %i.hz, 1.000000e+00
  %i.ic = select i1 %i.ib, float 1.000000e+00, float %i.hz
  %i.id = select i1 %i.ia, float f0x38D1B717, float %i.ic
  store float %i.id, ptr %i.k, align 4, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit
  %.1424 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ 1, %bb.al ], [ 0, %bb.ai ] ; 2 uses
  %.1421 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ %.0416, %bb.al ], [ %.0416, %bb.ai ] ; 2 uses
  %.2418 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ 1, %bb.al ], [ %.0416, %bb.ai ] ; 2 uses
  %i.ie = and i32 %.3, 8
  %.not456 = icmp eq i32 %i.ie, 0
  br i1 %.not456, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  %i.if = call noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.60, i32 noundef 8) ; 0 uses
  br label %bb.bc

bb.ao:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.ig = and i32 %.3, 33554432
  %.not454 = icmp eq i32 %i.ig, 0
  br i1 %.not454, label %bb.bc, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ih = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 5312
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !11 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 206
  store i8 1, ptr %i.ik, align 2, !tbaa !140
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 209
  %i.im = load i8, ptr %i.il, align 1, !tbaa !164, !range !165, !noundef !166
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.io = fcmp une float %i.cd, 0.000000e+00
  %i.ip = select i1 %i.io, float %i.cd, float f0x80800000
  %.sroa.017.0.vec.insert.i487 = insertelement <2 x float> poison, float %i.ip, i64 0
  %.sroa.017.4.vec.insert.i488 = shufflevector <2 x float> %.sroa.017.0.vec.insert.i487, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.017.4.vec.insert.i488, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.iq, ptr %10, align 8
  %i.ir = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.ij, ptr noundef nonnull @.str.72, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 280
  %i.it = load <2 x float>, ptr %i.is, align 4, !tbaa !171 ; 2 uses
  %i.iu = fadd <2 x float> %i.iq, %i.it
  store <2 x float> %i.it, ptr %11, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %i.iu, ptr %i.iv, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef -1.000000e+00)
  %i.iw = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ir, ptr noundef null, i32 noundef 2)
  br i1 %i.iw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.ix = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ir, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ir, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493: ; preds = %bb.ap, %bb.as
  %i.iy = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  %.not2 = xor i1 %i.iy, true
  %or.cond4 = select i1 %.not2, i1 true, i1 %i.an
  br i1 %or.cond4, label %_ZL17ColorEditRestoreHPKfPf.exit, label %bb.at

bb.at:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493
  %i.iz = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  %i.ja = fadd float %i.cd, -1.000000e+00
  %i.jb = load <2 x float>, ptr %i.iz, align 8, !tbaa !171
  %i.jc = fsub <2 x float> %i.jb, %i.cp
  %i.jd = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fdiv <2 x float> %i.jc, %i.je           ; 3 uses
  %i.jg = fcmp olt <2 x float> %i.jf, zeroinitializer ; 2 uses
  %i.jh = extractelement <2 x i1> %i.jg, i64 0
  %i.ji = fcmp ogt <2 x float> %i.jf, splat (float 1.000000e+00)
  %i.jj = select <2 x i1> %i.ji, <2 x float> splat (float 1.000000e+00), <2 x float> %i.jf ; 2 uses
  %i.jk = extractelement <2 x float> %i.jj, i64 0
  %i.jl = select i1 %i.jh, float 0.000000e+00, float %i.jk
  store float %i.jl, ptr %i.k, align 4, !tbaa !171
  %i.jm = extractelement <2 x float> %i.jj, i64 1
  %i.jn = fsub float 1.000000e+00, %i.jm
  %i.jo = extractelement <2 x i1> %i.jg, i64 1
  %i.jp = select i1 %i.jo, float 1.000000e+00, float %i.jn
  store float %i.jp, ptr %i.l, align 4, !tbaa !171
  %i.jq = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 9728
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !603
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 9724
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !599
  %.not.i494 = icmp eq i32 %i.js, %i.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  br i1 %.not.i494, label %bb.au, label %.critedge.i495

bb.au:                                            ; preds = %bb.at
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 9740
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !604
  %i.jx = load float, ptr %i.du, align 4, !tbaa !171
  %i.jy = load <2 x float>, ptr %1, align 4, !tbaa !171
  store <2 x float> %i.jy, ptr %9, align 8, !tbaa !171
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.jx, ptr %i.jz, align 8, !tbaa !318
  %i.ka = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float 0.000000e+00, ptr %i.ka, align 4, !tbaa !255
  %i.kb = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  %.not8.i = icmp eq i32 %i.jw, %i.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %.not8.i, label %bb.av, label %_ZL17ColorEditRestoreHPKfPf.exit

.critedge.i495:                                   ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %_ZL17ColorEditRestoreHPKfPf.exit

bb.av:                                            ; preds = %bb.au
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 9732
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !605
  store float %i.kd, ptr %i.j, align 4, !tbaa !171
  br label %_ZL17ColorEditRestoreHPKfPf.exit

_ZL17ColorEditRestoreHPKfPf.exit:                 ; preds = %bb.av, %.critedge.i495, %bb.au, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493
  %.3419 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493 ], [ 1, %bb.au ], [ 1, %.critedge.i495 ], [ 1, %bb.av ] ; 3 uses
  %i.ke = and i32 %.3, 8
  %.not455 = icmp eq i32 %i.ke, 0
  br i1 %.not455, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZL17ColorEditRestoreHPKfPf.exit
  %i.kf = call noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.60, i32 noundef 8) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL17ColorEditRestoreHPKfPf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  store float %i.cs, ptr %22, align 4, !tbaa !176
  %i.kg = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 %i.co, ptr %i.kg, align 4, !tbaa !181
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %i.kh = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 5312
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !11 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 206
  store i8 1, ptr %i.kk, align 2, !tbaa !140
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 209
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !164, !range !165, !noundef !166
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %45 = fcmp une float %i.bw, 0.000000e+00
  %46 = select i1 %45, float %i.bw, float f0x80800000
  %47 = fcmp une float %i.cd, 0.000000e+00
  %48 = select i1 %47, float %i.cd, float f0x80800000
  %.sroa.017.0.vec.insert.i496 = insertelement <2 x float> poison, float %46, i64 0
  %.sroa.017.4.vec.insert.i497 = insertelement <2 x float> %.sroa.017.0.vec.insert.i496, float %48, i64 1
  %i.ko = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.017.4.vec.insert.i497, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.ko, ptr %7, align 8
  %i.kp = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.kj, ptr noundef nonnull @.str.73, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 280
  %i.kr = load <2 x float>, ptr %i.kq, align 4, !tbaa !171 ; 2 uses
  %i.ks = fadd <2 x float> %i.ko, %i.kr
  store <2 x float> %i.kr, ptr %8, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %i.ks, ptr %i.kt, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %7, float noundef -1.000000e+00)
  %i.ku = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %i.kp, ptr noundef null, i32 noundef 2)
  br i1 %i.ku, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.kv = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %i.kp, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %i.kp, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502: ; preds = %bb.ax, %bb.ba
  %i.kw = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  %.not5 = xor i1 %i.kw, true
  %or.cond7 = select i1 %.not5, i1 true, i1 %i.an
  br i1 %or.cond7, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502
  %i.kx = getelementptr inbounds nuw i8, ptr %i.w, i64 276
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !496
  %i.kz = extractelement <2 x float> %i.cp, i64 1
  %i.la = fsub float %i.ky, %i.kz
  %i.lb = fadd float %i.cd, -1.000000e+00
  %i.lc = fdiv float %i.la, %i.lb                 ; 3 uses
  %i.ld = fcmp olt float %i.lc, 0.000000e+00
  %i.le = fcmp ogt float %i.lc, 1.000000e+00
  %i.lf = select i1 %i.le, float 1.000000e+00, float %i.lc
  %i.lg = select i1 %i.ld, float 0.000000e+00, float %i.lf
  store float %i.lg, ptr %i.j, align 4, !tbaa !171
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ao, %bb.bb, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502, %bb.am, %bb.an
  %.3426 = phi i8 [ %.1424, %bb.am ], [ %.1424, %bb.an ], [ %.3419, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502 ], [ %.3419, %bb.bb ], [ 0, %bb.ao ] ; 2 uses
  %.2422 = phi i8 [ %.1421, %bb.am ], [ %.1421, %bb.an ], [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502 ], [ 1, %bb.bb ], [ 0, %bb.ao ] ; 2 uses
  %.4 = phi i8 [ %.2418, %bb.am ], [ %.2418, %bb.an ], [ %.3419, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502 ], [ 1, %bb.bb ], [ 0, %bb.ao ] ; 2 uses
  br i1 %spec.select473, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  store float %i.cu, ptr %23, align 4, !tbaa !176
  %i.lh = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.co, ptr %i.lh, align 4, !tbaa !181
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  %i.li = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 5312
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !11 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 206
  store i8 1, ptr %i.ll, align 2, !tbaa !140
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 209
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !164, !range !165, !noundef !166
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit509, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %49 = fcmp une float %i.bw, 0.000000e+00
  %50 = select i1 %49, float %i.bw, float f0x80800000
  %51 = fcmp une float %i.cd, 0.000000e+00
  %52 = select i1 %51, float %i.cd, float f0x80800000
  %.sroa.017.0.vec.insert.i503 = insertelement <2 x float> poison, float %50, i64 0
  %.sroa.017.4.vec.insert.i504 = insertelement <2 x float> %.sroa.017.0.vec.insert.i503, float %52, i64 1
  %i.lp = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.017.4.vec.insert.i504, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.lp, ptr %5, align 8
  %i.lq = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.lk, ptr noundef nonnull @.str.74, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 280
  %i.ls = load <2 x float>, ptr %i.lr, align 4, !tbaa !171 ; 2 uses
  %i.lt = fadd <2 x float> %i.lp, %i.ls
  store <2 x float> %i.ls, ptr %6, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.lt, ptr %i.lu, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef -1.000000e+00)
  %i.lv = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.lq, ptr noundef null, i32 noundef 2)
  br i1 %i.lv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.lw = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.lq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.lq, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit509

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit509: ; preds = %bb.bd, %bb.bg
  %i.lx = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.lx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit509
  %i.ly = getelementptr inbounds nuw i8, ptr %i.w, i64 276
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !496
  %i.ma = extractelement <2 x float> %i.cp, i64 1
  %i.mb = fsub float %i.lz, %i.ma
  %i.mc = fadd float %i.cd, -1.000000e+00
  %i.md = fdiv float %i.mb, %i.mc                 ; 3 uses
  %i.me = fcmp olt float %i.md, 0.000000e+00
  %i.mf = fcmp ogt float %i.md, 1.000000e+00
  %i.mg = select i1 %i.mf, float 1.000000e+00, float %i.md
  %i.mh = fsub float 1.000000e+00, %i.mg
  %i.mi = select i1 %i.me, float 1.000000e+00, float %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.mi, ptr %i.mj, align 4, !tbaa !171
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit509, %bb.bh, %bb.bc
  %.5 = phi i8 [ 1, %bb.bh ], [ %.4, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit509 ], [ %.4, %bb.bc ] ; 3 uses
  call void @_ZN5ImGui11PopItemFlagEv()
  %i.mk = and i32 %.3, 256
  %.not457 = icmp eq i32 %i.mk, 0                 ; 3 uses
  br i1 %.not457, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ml = load float, ptr %i.bx, align 4, !tbaa !188
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.ml)
  call void @_ZN5ImGui10BeginGroupEv()
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mm = and i32 %.3, 128
  %.not458 = icmp eq i32 %i.mm, 0                 ; 2 uses
  br i1 %.not458, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.mn = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %.not459 = icmp eq ptr %0, %i.mn
  br i1 %.not459, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br i1 %.not457, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mo = load float, ptr %i.bx, align 4, !tbaa !188
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.mo)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %i.mn, i32 noundef 0)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bo, %bb.bk
  br i1 %.not457, label %bb.bq, label %bb.cb

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 4, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  %i.mp = load <2 x float>, ptr %1, align 4, !tbaa !171
  %i.mq = load float, ptr %i.du, align 4, !tbaa !171
  br i1 %.not449, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !171
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.mt = phi float [ %i.ms, %bb.br ], [ 1.000000e+00, %bb.bq ]
  store <2 x float> %i.mp, ptr %24, align 8, !tbaa !171
  %i.mu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store float %i.mq, ptr %i.mu, align 8, !tbaa !318
  %i.mv = getelementptr inbounds nuw i8, ptr %24, i64 12
  store float %i.mt, ptr %i.mv, align 4, !tbaa !255
  br i1 %.not458, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.75)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.mw = and i32 %.3, 805859394                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  %i.mx = fmul float %i.bw, 3.000000e+00          ; 2 uses
  %i.my = fmul float %i.bw, 2.000000e+00          ; 2 uses
  store float %i.mx, ptr %25, align 4, !tbaa !176
  %i.mz = getelementptr inbounds nuw i8, ptr %25, i64 4
  store float %i.my, ptr %i.mz, align 4, !tbaa !181
  %i.na = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(16) %24, i32 noundef %i.mw, ptr noundef nonnull align 4 dereferenceable(8) %25) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  %.not460 = icmp eq ptr %3, null
  br i1 %.not460, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.77)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  %i.nb = load <2 x float>, ptr %3, align 4, !tbaa !171
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !171
  br i1 %.not449, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !171
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.ng = phi float [ %i.nf, %bb.bw ], [ 1.000000e+00, %bb.bv ]
  store <2 x float> %i.nb, ptr %26, align 8, !tbaa !171
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store float %i.nd, ptr %i.nh, align 8, !tbaa !318
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 12
  store float %i.ng, ptr %i.ni, align 4, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  store float %i.mx, ptr %27, align 4, !tbaa !176
  %i.nj = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %i.my, ptr %i.nj, align 4, !tbaa !181
  %i.nk = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.78, ptr noundef nonnull align 4 dereferenceable(16) %26, i32 noundef %i.mw, ptr noundef nonnull align 4 dereferenceable(8) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br i1 %i.nk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 %i.ch, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.6 = phi i8 [ 1, %bb.by ], [ %.5, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bu
  %.7 = phi i8 [ %.6, %bb.bz ], [ %.5, %bb.bu ]
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8EndGroupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bp
  %.8 = phi i8 [ %.5, %bb.bp ], [ %.7, %bb.ca ]   ; 3 uses
  %i.nl = trunc nuw i8 %.2422 to i1
  %i.nm = trunc nuw i8 %.3426 to i1
  %i.nn = or i8 %.2422, %.3426
  %or.cond9.not = icmp eq i8 %i.nn, 0
  br i1 %or.cond9.not, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not451, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.no = load float, ptr %i.j, align 4, !tbaa !171
  %i.np = load float, ptr %i.k, align 4, !tbaa !171
  %i.nq = load float, ptr %i.l, align 4, !tbaa !171
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.no, float noundef %i.np, float noundef %i.nq, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.du)
  %i.nr = load float, ptr %i.j, align 4, !tbaa !171
  %i.ns = getelementptr inbounds nuw i8, ptr %i.w, i64 9732
  store float %i.nr, ptr %i.ns, align 4, !tbaa !605
  %i.nt = load float, ptr %i.k, align 4, !tbaa !171
  %i.nu = getelementptr inbounds nuw i8, ptr %i.w, i64 9736
  store float %i.nt, ptr %i.nu, align 8, !tbaa !606
  %i.nv = load i32, ptr %i.ao, align 4, !tbaa !599
  %i.nw = getelementptr inbounds nuw i8, ptr %i.w, i64 9728
  store i32 %i.nv, ptr %i.nw, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  %i.nx = load float, ptr %i.du, align 4, !tbaa !171
  %i.ny = load <2 x float>, ptr %1, align 4, !tbaa !171
  store <2 x float> %i.ny, ptr %28, align 8, !tbaa !171
  %i.nz = getelementptr inbounds nuw i8, ptr %28, i64 8
  store float %i.nx, ptr %i.nz, align 8, !tbaa !318
  %i.oa = getelementptr inbounds nuw i8, ptr %28, i64 12
  store float 0.000000e+00, ptr %i.oa, align 4, !tbaa !255
end_hunk_4
begin_hunk_5_@_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO:bb.a
  %i.es = load i32, ptr %i.f, align 8, !tbaa !738 ; 6 uses
  %i.et = load i32, ptr %i.j, align 4, !tbaa !736
  %i.eu = icmp eq i32 %i.es, %i.et
  br i1 %i.eu, label %bb.aj, label %_ZN8ImVectorI16ImGuiStoragePairE9push_backERKS0_.exit.i59

bb.aj:                                            ; preds = %bb.ai
  %i.ev = add nsw i32 %i.es, 1
  %.not.i.i.i61 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i61, label %_ZNK8ImVectorI16ImGuiStoragePairE14_grow_capacityEi.exit.i.i62, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = sdiv i32 %i.es, 2
  %i.ex = add nsw i32 %i.ew, %i.es
  br label %_ZNK8ImVectorI16ImGuiStoragePairE14_grow_capacityEi.exit.i.i62

_ZNK8ImVectorI16ImGuiStoragePairE14_grow_capacityEi.exit.i.i62: ; preds = %bb.ak, %bb.aj
  %i.ey = phi i32 [ %i.ex, %bb.ak ], [ 8, %bb.aj ]
  %i.ez = tail call noundef i32 @llvm.smax.i32(i32 %i.ey, i32 %i.ev) ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 4
  %i.fc = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fb) ; 3 uses
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !737 ; 2 uses
  %.not6.i.i.i63 = icmp eq ptr %i.fd, null
  br i1 %.not6.i.i.i63, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNK8ImVectorI16ImGuiStoragePairE14_grow_capacityEi.exit.i.i62
  %i.fe = load i32, ptr %i.f, align 8, !tbaa !738
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.fc, ptr nonnull align 8 %i.fd, i64 %i.fg, i1 false)
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !737
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.fh)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNK8ImVectorI16ImGuiStoragePairE14_grow_capacityEi.exit.i.i62
  store ptr %i.fc, ptr %i.i, align 8, !tbaa !737
  store i32 %i.ez, ptr %i.j, align 4, !tbaa !736
  %.pre3.i.i64 = load i32, ptr %i.f, align 8, !tbaa !738
  br label %_ZN8ImVectorI16ImGuiStoragePairE9push_backERKS0_.exit.i59

_ZN8ImVectorI16ImGuiStoragePairE9push_backERKS0_.exit.i59: ; preds = %bb.am, %bb.ai
  %i.fi = phi i32 [ %.pre3.i.i64, %bb.am ], [ %i.es, %bb.ai ]
  %i.fj = phi ptr [ %i.fc, %bb.am ], [ %i.eh, %bb.ai ]
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [16 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  store i32 %i.eb, ptr %i.fl, align 8
  %.sroa.425.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %.04569, ptr %.sroa.425.0..sroa_idx.i60, align 8
  %i.fm = load i32, ptr %i.f, align 8, !tbaa !738
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.f, align 8, !tbaa !738
  br label %bb.ap

bb.an:                                            ; preds = %bb.ah
  br i1 %.not26.i57, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = select i1 %i.ed, i32 %.04569, i32 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !387
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %_ZN8ImVectorI16ImGuiStoragePairE9push_backERKS0_.exit.i59
  %i.fq = select i1 %i.ed, i32 1, i32 -1
  %i.fr = load i32, ptr %0, align 8, !tbaa !730
  %i.fs = add nsw i32 %i.fr, %i.fq
  store i32 %i.fs, ptr %0, align 8, !tbaa !730
  br label %_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit65

_ZL47ImGuiSelectionBasicStorage_BatchSetItemSelectedP26ImGuiSelectionBasicStoragejbii.exit65: ; preds = %.thread.i56, %bb.ap
  %i.ft = add nsw i32 %.071, 1
  %i.fu = load i8, ptr %i.dp, align 1, !tbaa !719
  %i.fv = sext i8 %i.fu to i32
  %i.fw = add nsw i32 %.04569, %i.fv
  %i.fx = load i64, ptr %i.cn, align 8, !tbaa !718
  %i.fy = trunc i64 %i.fx to i32
  %.not51.not = icmp slt i32 %.071, %i.fy
  br i1 %.not51.not, label %bb.ae, label %._crit_edge, !llvm.loop !750

bb.aq:                                            ; preds = %._crit_edge
  %i.fz = load i32, ptr %i.g, align 8, !tbaa !735
  %i.ga = add nsw i32 %i.fz, %i.cu
  store i32 %i.ga, ptr %i.g, align 8, !tbaa !735
  %i.gb = load i32, ptr %0, align 8, !tbaa !730
  %.not.i66 = icmp eq i32 %i.gb, %i.do
  br i1 %.not.i66, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit, label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit.sink.split

_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit.sink.split: ; preds = %bb.aq, %bb.k
  tail call void @_ZN12ImGuiStorage14BuildSortByKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit

_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit: ; preds = %_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb.exit, %_ZL38ImGuiSelectionBasicStorage_BatchFinishP26ImGuiSelectionBasicStoragebi.exit.sink.split, %bb.z, %bb.aq, %._crit_edge, %bb.k, %._crit_edge78, %bb.b, %_ZN26ImGuiSelectionBasicStorage5ClearEv.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %.04680, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.gc, %i.e
  br i1 %.not, label %._crit_edge83, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN29ImGuiSelectionExternalStorageC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #23 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN29ImGuiSelectionExternalStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279  ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !280    ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = mul nsw i64 %i.d, 24
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %.not27 = icmp eq i32 %i.c, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph30, %.loopexit
  %.02128 = phi ptr [ %i.b, %.lr.ph30 ], [ %i.ah, %.loopexit ] ; 7 uses
  %i.h = load i32, ptr %.02128, align 8, !tbaa !713 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.preheader, label %thread-pre-split

.preheader:                                       ; preds = %bb.b
  %i.j = load i32, ptr %i.f, align 4, !tbaa !745
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.02023 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !751
  %i.n = load i8, ptr %i.l, align 4, !tbaa !716, !range !165, !noundef !166
  %i.o = trunc nuw i8 %i.n to i1
  tail call void %i.m(ptr noundef nonnull %0, i32 noundef %.02023, i1 noundef zeroext %i.o)
  %i.p = add nuw nsw i32 %.02023, 1               ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !745
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %thread-pre-split.loopexit, !llvm.loop !753

thread-pre-split.loopexit:                        ; preds = %bb.c
  %.pr.pre = load i32, ptr %.02128, align 8, !tbaa !713
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.b
  %i.s = phi i32 [ %i.h, %bb.b ], [ %.pr.pre, %thread-pre-split.loopexit ]
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %thread-pre-split
  %i.u = getelementptr inbounds nuw i8, ptr %.02128, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !717
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02128, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !718
  %i.z = trunc i64 %i.y to i32
  %.not2224 = icmp sgt i32 %i.w, %i.z
  br i1 %.not2224, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph26, %bb.e
  %.025 = phi i32 [ %i.w, %.lr.ph26 ], [ %i.ae, %bb.e ] ; 3 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !751
  %i.ac = load i8, ptr %i.aa, align 4, !tbaa !716, !range !165, !noundef !166
  %i.ad = trunc nuw i8 %i.ac to i1
  tail call void %i.ab(ptr noundef nonnull %0, i32 noundef %.025, i1 noundef zeroext %i.ad)
  %i.ae = add nsw i32 %.025, 1
  %i.af = load i64, ptr %i.x, align 8, !tbaa !718
  %i.ag = trunc i64 %i.af to i32
  %.not22.not = icmp slt i32 %.025, %i.ag
  br i1 %.not22.not, label %bb.e, label %.loopexit, !llvm.loop !754

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.d, %thread-pre-split
  %i.ah = getelementptr inbounds nuw i8, ptr %.02128, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 5 uses
  %3 = alloca %struct.ImRect, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !164, !range !165, !noundef !166
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef %0)
  %i.i = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.j = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.i, i1 noundef zeroext false, float noundef -1.000000e+00) ; 3 uses
  %.sroa.02.0.copyload = load <2 x float>, ptr %1, align 4
  %i.k = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.l = tail call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3288 ; 3 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !187
  %i.o = fmul float %i.n, 2.000000e+00
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float 7.250000e+00, float %i.o)
  %i.q = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.02.0.copyload, float noundef %i.k, float noundef %i.p) ; 2 uses
  %.sroa.046.0.vec.extract = extractelement <2 x float> %i.q, i64 0
  %i.r = fptosi float %.sroa.046.0.vec.extract to i32
  %i.s = sitofp i32 %i.r to float
  %.sroa.046.4.vec.extract = extractelement <2 x float> %i.q, i64 1
  %i.t = fptosi float %.sroa.046.4.vec.extract to i32
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %.sroa.047.4.vec.extract = extractelement <2 x float> %i.j, i64 1 ; 2 uses
  %i.v = fcmp ole float %.sroa.047.4.vec.extract, %i.u
  %i.w = select i1 %i.v, float %i.u, float %.sroa.047.4.vec.extract
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %6 = load float, ptr %i.x, align 4, !tbaa !176
  %7 = fadd float %6, %i.s                        ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %9 = load float, ptr %8, align 4, !tbaa !181
  %10 = fadd float %9, %i.w                       ; 3 uses
  %.sroa.0.0.vec.insert.i25 = insertelement <2 x float> poison, float %7, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i26 = insertelement <2 x float> %.sroa.0.0.vec.insert.i25, float %10, i64 1
  %11 = load i64, ptr %i.x, align 4               ; 4 uses
  store i64 %11, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i26, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %.sroa.047.0.vec.extract = extractelement <2 x float> %i.j, i64 0 ; 2 uses
  %i.z = fcmp ogt float %.sroa.047.0.vec.extract, 0.000000e+00 ; 2 uses
  %12 = lshr i64 %11, 32
  %13 = trunc nuw i64 %12 to i32
  %14 = bitcast i32 %13 to float                  ; 2 uses
  %15 = trunc i64 %11 to i32
  %16 = bitcast i32 %15 to float
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3308
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !188
  %i.ac = fadd float %.sroa.047.0.vec.extract, %i.ab
  %i.ad = fadd float %i.ac, %7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ae = phi float [ %i.ad, %bb.c ], [ %7, %bb.b ]
  %i.af = fadd float %10, 0.000000e+00
  %.sroa.0.0.vec.insert.i27 = insertelement <2 x float> poison, float %i.ae, i64 0
  %.sroa.0.4.vec.insert.i28 = insertelement <2 x float> %.sroa.0.0.vec.insert.i27, float %i.af, i64 1
  store i64 %11, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i28, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7792
  store i32 0, ptr %i.ah, align 8, !tbaa !597
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 7796
  store i32 0, ptr %i.ai, align 4, !tbaa !598
  %i.aj = call noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2S2_(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ag) ; 2 uses
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ak = load <2 x float>, ptr %i.ag, align 8, !tbaa !171
  %i.al = load <2 x float>, ptr %3, align 8, !tbaa !171
  %i.am = fsub <2 x float> %i.ak, %i.al
  store <2 x float> %i.am, ptr %4, align 8
  %i.an = load float, ptr %i.m, align 8, !tbaa !187
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ao = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 7928
  store i32 0, ptr %i.ap, align 8, !tbaa !348
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @_ZN5ImGui10BeginGroupEv()
  br i1 %i.z, label %bb.g, label %_ZN5ImGui23AlignTextToFramePaddingEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 3308
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !188
  %i.as = load float, ptr %i.m, align 8, !tbaa !187
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %17 = insertelement <2 x float> %.sroa.0.0.vec.insert.i25, float %14, i64 1
  %i.au = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.as, i64 1
  %i.aw = fadd <2 x float> %17, %i.av             ; 2 uses
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.aw, ptr noundef %0, ptr noundef %i.i, i1 noundef zeroext false)
  %i.ax = fadd <2 x float> %i.j, %i.aw            ; 2 uses
  %i.ay = load <2 x float>, ptr %i.at, align 4, !tbaa !171 ; 2 uses
  %i.az = fcmp oge <2 x float> %i.ay, %i.ax
  %i.ba = select <2 x i1> %i.az, <2 x float> %i.ay, <2 x float> %i.ax
  store <2 x float> %i.ba, ptr %i.at, align 8
  %i.bb = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5312
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 206
  store i8 1, ptr %i.be, align 2, !tbaa !140
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 209
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !164, !range !165, !noundef !166
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN5ImGui23AlignTextToFramePaddingEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 324 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !315 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4568
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !189
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 3288
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !229 ; 3 uses
  %i.bo = call float @llvm.fmuladd.f32(float %i.bn, float 2.000000e+00, float %i.bl) ; 2 uses
  %i.bp = fcmp oge float %i.bj, %i.bo
  %i.bq = select i1 %i.bp, float %i.bj, float %i.bo
  store float %i.bq, ptr %i.bi, align 4, !tbaa !315
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 336 ; 2 uses
  %i.bs = load float, ptr %i.br, align 8, !tbaa !169 ; 2 uses
  %i.bt = fcmp oge float %i.bs, %i.bn
  %i.bu = select i1 %i.bt, float %i.bs, float %i.bn
  store float %i.bu, ptr %i.br, align 8, !tbaa !169
  br label %_ZN5ImGui23AlignTextToFramePaddingEv.exit

_ZN5ImGui23AlignTextToFramePaddingEv.exit:        ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %18 = fsub float %7, %16
  %19 = fsub float %10, %14
  %.sroa.0.0.vec.insert.i35 = insertelement <2 x float> poison, float %18, i64 0
  %.sroa.0.4.vec.insert.i36 = insertelement <2 x float> %.sroa.0.0.vec.insert.i35, float %19, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i36, ptr %5, align 8
  %i.bv = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 128, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.i

bb.i:                                             ; preds = %_ZN5ImGui23AlignTextToFramePaddingEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i1 [ %i.aj, %bb.i ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2S2_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10EndListBoxEv() local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN5ImGui8EndChildEv()
  tail call void @_ZN5ImGui8EndGroupEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui7ListBoxEPKcPiPKS1_ii(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.ImVec2, align 4             ; 6 uses
  %6 = alloca %struct.ImGuiListClipper, align 8   ; 11 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = icmp slt i32 %4, 0
  %i.c = tail call i32 @llvm.smin.i32(i32 %3, i32 7)
  %.035.i = select i1 %i.b, i32 %i.c, i32 %4
  %i.d = sitofp i32 %.035.i to float
  %i.e = fadd float %i.d, 2.500000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.f = tail call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.h = load float, ptr %i.g, align 4, !tbaa !229
  %i.i = fmul float %i.h, 2.000000e+00
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.e, float %i.i)
  %i.k = fptosi float %i.j to i32
  %i.l = sitofp i32 %i.k to float
  store float 0.000000e+00, ptr %5, align 4, !tbaa !176
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !181
  %i.n = call noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  br i1 %i.n, label %bb.b, label %_ZN5ImGui7ListBoxEPKcPiPFS1_PviES3_ii.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.o = invoke noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
          to label %bb.c unwind label %.loopexit.split-lp.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %3, float noundef %i.o)
          to label %bb.d unwind label %.loopexit.split-lp.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %1, align 4, !tbaa !192    ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef %i.p, i32 noundef %i.q)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader.i unwind label %.loopexit.split-lp.i

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  br label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.i

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit.i: ; preds = %bb.p, %bb.f
  %.133.lcssa.i = phi i1 [ %.032.i, %bb.f ], [ %.234.i, %bb.p ]
  br label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.i, !llvm.loop !755

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.i: ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit.i, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader.i
  %.032.i = phi i1 [ %.133.lcssa.i, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit.i ], [ false, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader.i ] ; 4 uses
  %i.s = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.e unwind label %.loopexit.i

bb.e:                                             ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.i
  br i1 %i.s, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %6, align 8, !tbaa !368    ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !370
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.preheader.preheader, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit.i

.preheader.preheader:                             ; preds = %bb.f
  %i.w = sext i32 %i.t to i64
  br label %.preheader

.loopexit.i:                                      ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.i:                             ; preds = %bb.r, %.noexc.i, %bb.q, %bb.d, %bb.c, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.w, %.preheader.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.13348.i = phi i1 [ %.032.i, %.preheader.preheader ], [ %.234.i, %bb.p ]
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !182  ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.z)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %.preheader
  %i.ab = icmp eq ptr %i.y, null
  %spec.store.select.i = select i1 %i.ab, ptr @.str.20, ptr %i.y
  %i.ac = load i32, ptr %1, align 4, !tbaa !192
  %i.ad = icmp eq i32 %i.ac, %i.z                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !171
  %i.ae = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %spec.store.select.i, i1 noundef zeroext %i.ad, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i32 %i.z, ptr %1, align 4, !tbaa !192
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.t

bb.l:                                             ; preds = %bb.j, %bb.i
  %.234.i = phi i1 [ true, %bb.j ], [ %.13348.i, %bb.i ] ; 2 uses
  br i1 %i.ad, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5ImGui19SetItemDefaultFocusEv()
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN5ImGui5PopIDEv()
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !370
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.preheader, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit.i, !llvm.loop !756

bb.q:                                             ; preds = %bb.e
  invoke void @_ZN5ImGui8EndChildEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZN5ImGui8EndGroupEv()
          to label %_ZN5ImGui10EndListBoxEv.exit.i unwind label %.loopexit.split-lp.i

_ZN5ImGui10EndListBoxEv.exit.i:                   ; preds = %.noexc.i
  br i1 %.032.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui10EndListBoxEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !191
  invoke void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.al)
          to label %bb.s unwind label %.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui10EndListBoxEv.exit.i
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %_ZN5ImGui7ListBoxEPKcPiPFS1_PviES3_ii.exit

bb.t:                                             ; preds = %bb.n, %bb.k, %bb.g, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.aa, %bb.g ], [ %i.ag, %bb.n ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %.pn.pn.pn.i

_ZN5ImGui7ListBoxEPKcPiPFS1_PviES3_ii.exit:       ; preds = %bb.a, %bb.s
  %.0.i = phi i1 [ %.032.i, %bb.s ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
end_hunk_5
begin_hunk_6_@_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarP12ImGuiTabItem6ImVec2:bb.a
  %i.aj = getelementptr inbounds nuw [44 x i8], ptr %i.x, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !854 ; 2 uses
  %i.am = and i32 %i.al, 32
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph73
  %i.an = xor i32 %i.al, %i.i
  %i.ao = and i32 %i.an, 192
  %.not48 = icmp eq i32 %i.ao, 0
  br i1 %.not48, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !887
  %i.ar = fadd float %i.q, %i.aq                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !878
  %i.au = fadd float %i.ar, %i.at
  %i.av = fadd float %i.g, %i.au
  %i.aw = fsub float %i.ar, %i.g
  %i.ax = fcmp ule float %.sroa.0.0.vec.extract, %i.aw
  %i.ay = fcmp uge float %.sroa.0.0.vec.extract, %i.av
  %or.cond53 = select i1 %i.u, i1 %i.ay, i1 %i.ax
  %i.az = add nsw i32 %.0465672, %i.v             ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1
  %or.cond = select i1 %or.cond53, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.e, label %..critedge_crit_edge, !llvm.loop !898

..critedge_crit_edge:                             ; preds = %bb.g
  br label %.critedge, !llvm.loop !898

.critedge:                                        ; preds = %.lr.ph73, %bb.f, %bb.e, %..critedge_crit_edge, %.lr.ph
  %.2 = phi i32 [ %.0465672, %..critedge_crit_edge ], [ %i.ac, %.lr.ph ], [ %.0445771, %.lr.ph73 ], [ %.0465672, %bb.e ], [ %.0445771, %bb.f ] ; 2 uses
  %.not49 = icmp eq i32 %.2, %i.ac
  br i1 %.not49, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bb = sub nsw i32 %.2, %i.ac
  %i.bc = load i32, ptr %1, align 4, !tbaa !849
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !862
  %i.be = trunc i32 %i.bb to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 %i.be, ptr %i.bf, align 8, !tbaa !864
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImGuiTabItem, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !862  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !834  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !815  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !863

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %indvars.iv.i ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !849
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !854  ; 2 uses
  %i.m = and i32 %i.l, 32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.n = trunc i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i16, ptr %i.o, align 8, !tbaa !864  ; 2 uses
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = add nsw i32 %i.n, %i.q                   ; 2 uses
  %or.cond = icmp ult i32 %i.r, %i.d
  br i1 %or.cond, label %bb.e, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !854  ; 2 uses
  %i.w = and i32 %i.v, 32
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %bb.f, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = xor i32 %i.v, %i.l
  %i.y = and i32 %i.x, 192
  %.not36 = icmp eq i32 %i.y, 0
  br i1 %.not36, label %bb.g, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %1, ptr noundef nonnull align 4 dereferenceable(44) %i.h, i64 44, i1 false), !tbaa.struct !852
  %i.z = icmp sgt i16 %i.p, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ad = select i1 %i.z, ptr %i.h, ptr %i.ac
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.ab, i64 %i.ag, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.t, ptr noundef nonnull align 4 dereferenceable(41) %1, i64 41, i1 false), !tbaa.struct !852
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !832
  %i.aj = and i32 %i.ai, 4194304
  %.not37 = icmp eq i32 %i.aj, 0
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %bb.d, %bb.f, %bb.e, %bb.i, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %.2 = phi i1 [ false, %bb.f ], [ false, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ], [ false, %bb.d ], [ false, %.preheader.i ], [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.2
}

declare void @_ZN5ImGui20MarkIniSettingsDirtyEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !164, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !826  ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.133) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) ; 2 uses
  %i.k = and i32 %2, 8
  %.not15 = icmp eq i32 %i.k, 0
  %or.cond = and i1 %.not15, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  %i.m = load i16, ptr %i.l, align 2, !tbaa !811
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !815
  %i.p = sext i16 %i.m to i64
  %i.q = getelementptr inbounds [44 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !849
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.e ], [ %i.j, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ImGuiNextItemData, align 8  ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 4 uses
  %7 = alloca %struct.ImRect, align 4             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 14 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.g = load i8, ptr %i.f, align 1, !tbaa !836, !range !165, !noundef !166
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7792 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !tbaa.struct !899
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !899
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.m = load i8, ptr %i.l, align 1, !tbaa !164, !range !165, !noundef !166
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.cl, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %.val = load i32, ptr %i.o, align 8, !tbaa !832
  %i.p = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.q)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.t, ptr noundef %1, ptr noundef null)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.u, %bb.f ] ; 14 uses
  %.not247 = icmp eq ptr %2, null                 ; 2 uses
  br i1 %.not247, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.v = load i8, ptr %2, align 1, !tbaa !225, !range !165, !noundef !166
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.x = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, ptr noundef null, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.cl

bb.i:                                             ; preds = %bb.g, %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.y = and i32 %3, 1048576
  %.not248 = icmp eq i32 %i.y, 0                  ; 2 uses
  %i.z = or disjoint i32 %3, 1048576
  %i.aa = and i1 %.not247, %.not248
  %.0235 = select i1 %i.aa, i32 %i.z, i32 %3      ; 7 uses
  %.not.i271 = icmp ne i32 %.0.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !859 ; 8 uses
  %i.ab = icmp sgt i32 %.pre, 0
  %or.cond372 = select i1 %.not.i271, i1 %i.ab, i1 false
  br i1 %or.cond372, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !815 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.pre to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.k, !llvm.loop !863

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [44 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !849
  %i.ag = icmp eq i32 %i.af, %.0.i
  br i1 %i.ag, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !858
  %i.ak = icmp eq i32 %.pre, %i.aj
  br i1 %i.ak, label %bb.l, label %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i: ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !815
  br label %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit

bb.l:                                             ; preds = %.loopexit
  %i.al = add nsw i32 %.pre, 1
  %.not.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = sdiv i32 %.pre, 2
  %i.an = add nsw i32 %i.am, %.pre
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.m, %bb.l
  %i.ao = phi i32 [ %i.an, %bb.m ], [ 8, %bb.l ]
  %i.ap = tail call noundef i32 @llvm.smax.i32(i32 %i.ao, i32 %i.al) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, 44
  %i.as = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ar) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !815 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.au, null
  br i1 %.not6.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.av = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.aw, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.as, ptr nonnull align 4 %i.au, i64 %i.ax, i1 false)
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !815
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ay)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.as, ptr %i.at, align 8, !tbaa !815
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !858
  %.pre3.i = load i32, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit

_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i, %bb.o
  %i.az = phi i32 [ %.pre, %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.o ]
  %i.ba = phi ptr [ %.pre.i, %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i ], [ %i.as, %bb.o ]
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [44 x i8], ptr %i.ba, i64 %i.bb ; 7 uses
  store i64 0, ptr %i.bc, align 4
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 -1, ptr %.sroa.4336.0..sroa_idx, align 4
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 -1, ptr %.sroa.5337.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  store float -1.000000e+00, ptr %.sroa.6338.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.be, ptr %i.ah, align 8, !tbaa !859
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !815 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr [44 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -44    ; 2 uses
  store i32 %.0.i, ptr %i.bj, align 4, !tbaa !849
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 1, ptr %i.bk, align 1, !tbaa !833
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.k, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit
  %i.bl = phi ptr [ %i.bg, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.ad, %bb.k ]
  %i.bm = phi i1 [ false, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ true, %bb.k ] ; 2 uses
  %.0237 = phi ptr [ %i.bj, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.ae, %bb.k ] ; 21 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = ptrtoint ptr %.0237 to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 44
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !811
  %i.bu = icmp ne ptr %2, null
  %i.bv = and i1 %i.bu, %.not248                  ; 3 uses
  %i.bw = trunc i32 %.0235 to i1                  ; 2 uses
  %i.bx = select i1 %i.bv, i1 true, i1 %i.bw
  %i.by = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.bz = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %1, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 3284
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !357 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow:bb.a
._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.0237, i64 24
  store float %.pre355, ptr %i.db, align 4, !tbaa !876
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !839 ; 2 uses
  %i.de = add i16 %i.dd, 1
  store i16 %i.de, ptr %i.dc, align 8, !tbaa !839
  %i.df = getelementptr inbounds nuw i8, ptr %.0237, i64 36
  store i16 %i.dd, ptr %i.df, align 4, !tbaa !841
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !806
  %i.di = add nsw i32 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !585 ; 3 uses
  %i.dl = icmp slt i32 %i.di, %i.dk               ; 3 uses
  %i.dm = load i32, ptr %i.o, align 8, !tbaa !832
  %i.dn = and i32 %i.dm, 2097152
  %.not250 = icmp eq i32 %i.dn, 0                 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0237, i64 8 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !848
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = icmp sge i32 %i.dq, %i.dk               ; 3 uses
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %.0237, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !854
  %i.du = and i32 %i.dt, 1
  %.not251 = icmp eq i32 %i.du, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.dv = phi i1 [ false, %._crit_edge ], [ %.not251, %bb.t ]
  %i.dw = and i32 %.0235, 2097152
  %i.dx = icmp ne i32 %i.dw, 0                    ; 7 uses
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !848
  %i.dy = getelementptr inbounds nuw i8, ptr %.0237, i64 4 ; 4 uses
  store i32 %.0235, ptr %i.dy, align 4, !tbaa !854
  %.not252 = icmp eq ptr %4, null
  br i1 %.not252, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !901
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ea, i32 1)
  %i.eb = getelementptr inbounds nuw i8, ptr %.0237, i64 32
  store i32 %spec.select.i, ptr %i.eb, align 4, !tbaa !866
  %i.ec = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull %1, ptr noundef nonnull %i.ee)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  br i1 %i.dx, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.dr, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = load i32, ptr %i.o, align 8, !tbaa !832
  %i.eg = and i32 %i.ef, 2
  %.not253 = icmp eq i32 %i.eg, 0
  br i1 %.not253, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !851
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !850
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.en = load i32, ptr %.0237, align 4, !tbaa !849
  store i32 %i.en, ptr %i.eh, align 4, !tbaa !851
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z, %bb.y, %bb.x
  %i.eo = and i32 %.0235, 2
  %.not254 = icmp eq i32 %i.eo, 0
  br i1 %.not254, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !850
  %.not255 = icmp eq i32 %i.eq, %.0.i
  br i1 %.not255, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = load i32, ptr %.0237, align 4, !tbaa !849
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.er, ptr %i.es, align 4, !tbaa !851
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !844
  %i.ev = icmp eq i32 %i.eu, %.0.i
  br i1 %i.ev, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.ew, align 4, !tbaa !843
  br label %bb.ak

.critedge:                                        ; preds = %bb.ag
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !850
  %i.ez = icmp eq i32 %i.ey, 0
  %or.cond = select i1 %i.ez, i1 %i.dl, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.critedge
  %i.fa = load i32, ptr %i.bn, align 8, !tbaa !834
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load i32, ptr %i.o, align 8, !tbaa !832
  %i.fd = and i32 %i.fc, 2
  %.not256 = icmp eq i32 %i.fd, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ai, %.critedge
  %.0239.shrunk = phi i1 [ true, %bb.ah ], [ %.not256, %bb.aj ], [ false, %.critedge ], [ false, %bb.ai ] ; 6 uses
  %or.cond3.not = and i1 %i.bm, %i.dl
  %or.cond267 = select i1 %i.dr, i1 true, i1 %or.cond3.not
  br i1 %or.cond267, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.fe = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %.0.i, ptr noundef null, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %not. = xor i1 %i.dx, true
  %..0239.shrunk = select i1 %not., i1 %.0239.shrunk, i1 false
  br label %bb.cl

bb.am:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !850
  %i.fh = icmp eq i32 %i.fg, %.0.i
  br i1 %i.fh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fi = load i32, ptr %i.dj, align 4, !tbaa !585
  %i.fj = getelementptr inbounds nuw i8, ptr %.0237, i64 12
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !874
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 4 uses
  %i.fl = load i64, ptr %i.fk, align 8            ; 2 uses
  %i.fm = load i32, ptr %i.dy, align 4, !tbaa !854
  %i.fn = and i32 %i.fm, 192
  %i.fo = icmp eq i32 %i.fn, 0                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0237, i64 20
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !878
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0237, i64 16
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !887 ; 2 uses
  br i1 %i.fo, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !891
  %i.fw = fsub float %i.ft, %i.fv
  %i.fx = fptosi float %i.fw to i32
  %i.fy = sitofp i32 %i.fx to float
  %i.fz = load float, ptr %i.fr, align 8, !tbaa !176
  %i.ga = fadd float %i.fz, %i.fy
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.gb = load float, ptr %i.fr, align 8, !tbaa !176
  %i.gc = fadd float %i.ft, %i.gb
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink373 = phi float [ %i.gc, %bb.aq ], [ %i.ga, %bb.ap ] ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !181
  %i.gf = fadd float %i.ge, 0.000000e+00          ; 6 uses
  %.sroa.0.0.vec.insert.i272 = insertelement <2 x float> poison, float %.sink373, i64 0
  %.sroa.0.4.vec.insert.i273 = insertelement <2 x float> %.sroa.0.0.vec.insert.i272, float %i.gf, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i273, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.gg = fadd float %i.fq, %.sink373             ; 4 uses
  %.sroa.0327.4.vec.extract = extractelement <2 x float> %.sroa.0327.0, i64 1
  %i.gh = fadd float %.sroa.0327.4.vec.extract, %i.gf ; 4 uses
  %.sroa.0.0.vec.insert.i274 = insertelement <2 x float> poison, float %i.gg, i64 0
  %.sroa.0.4.vec.insert.i275 = insertelement <2 x float> %.sroa.0.0.vec.insert.i274, float %i.gh, i64 1
  store float %.sink373, ptr %8, align 8
  %.sroa_idx317 = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store float %i.gf, ptr %.sroa_idx317, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store <2 x float> %.sroa.0.4.vec.insert.i275, ptr %i.gi, align 8
  br i1 %i.fo, label %bb.as, label %.thread340

bb.as:                                            ; preds = %bb.ar
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !894 ; 2 uses
  %i.gl = fcmp ogt float %i.gk, %.sink373         ; 2 uses
  %.phi.trans.insert348 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre349 = load float, ptr %.phi.trans.insert348, align 8, !tbaa !895 ; 4 uses
  %i.gm = fcmp ogt float %i.gg, %.pre349
  %or.cond375 = select i1 %i.gl, i1 true, i1 %i.gm
  br i1 %or.cond375, label %.thread, label %.thread340

.thread:                                          ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.gn = fcmp olt float %.pre349, %.sink373
  %i.go = select i1 %i.gn, float %.pre349, float %.sink373
  %i.gp = select i1 %i.gl, float %i.gk, float %i.go
  %i.gq = fadd float %i.gf, -1.000000e+00
  store float %i.gp, ptr %9, align 4, !tbaa !176
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.gq, ptr %i.gr, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %.pre349, ptr %10, align 4, !tbaa !176
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.gh, ptr %i.gt, align 4, !tbaa !181
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %.pre350 = load float, ptr %i.gi, align 8, !tbaa !233
  %.pre351 = load float, ptr %8, align 8, !tbaa !232
  %.pre353 = load float, ptr %i.gs, align 4, !tbaa !178
  %.pre354 = load float, ptr %.sroa_idx317, align 4, !tbaa !177
  br label %.thread340

.thread340:                                       ; preds = %bb.as, %bb.ar, %.thread
  %i.gu = phi float [ %.pre354, %.thread ], [ %i.gf, %bb.as ], [ %i.gf, %bb.ar ]
  %i.gv = phi float [ %.pre353, %.thread ], [ %i.gh, %bb.as ], [ %i.gh, %bb.ar ]
  %i.gw = phi float [ %.pre351, %.thread ], [ %.sink373, %bb.as ], [ %.sink373, %bb.ar ]
  %i.gx = phi float [ %.pre350, %.thread ], [ %i.gg, %bb.as ], [ %i.gg, %bb.ar ]
  %i.gy = phi i1 [ true, %.thread ], [ false, %bb.as ], [ false, %bb.ar ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.k, i64 304 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.hb = fsub float %i.gx, %i.gw
  %i.hc = fsub float %i.gv, %i.gu
  %.sroa.0.0.vec.insert.i276 = insertelement <2 x float> poison, float %i.hb, i64 0
  %.sroa.0.4.vec.insert.i277 = insertelement <2 x float> %.sroa.0.0.vec.insert.i276, float %i.hc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i277, ptr %11, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 3288
  %i.he = load float, ptr %i.hd, align 8, !tbaa !187
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  store i64 %i.ha, ptr %i.gz, align 8
  %i.hf = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0.i, ptr noundef null, i32 noundef 0)
  br i1 %i.hf, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.thread340
  br i1 %i.gy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN5ImGui11PopClipRectEv()
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  store i64 %i.fl, ptr %i.fk, align 8
  br label %bb.ck

bb.aw:                                            ; preds = %.thread340
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 8776 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !195, !range !165, !noundef !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.hi = and i32 %.0235, 4194304
  %.not = icmp eq i32 %i.hi, 0                    ; 2 uses
  br i1 %.not, label %bb.ax, label %.thread341

.thread341:                                       ; preds = %bb.aw
  store i8 0, ptr %i.b, align 1, !tbaa !225
  store i8 0, ptr %i.a, align 1, !tbaa !225
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.hj = select i1 %i.dx, i32 4128, i32 4112
  %i.hk = zext nneg i8 %i.hh to i32
  %i.hl = shl nuw nsw i32 %i.hk, 9
  %spec.select268 = or disjoint i32 %i.hl, %i.hj
  %i.hm = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %spec.select268) ; 2 uses
  %.not4 = xor i1 %i.hm, true
  %or.cond6 = select i1 %.not4, i1 true, i1 %i.dx
  br i1 %or.cond6, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hn = load i32, ptr %.0237, align 4, !tbaa !849
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !851
  br label %bb.az

bb.az:                                            ; preds = %.thread341, %bb.ay, %bb.ax
  %.0241345 = phi i1 [ false, %.thread341 ], [ true, %bb.ay ], [ %i.hm, %bb.ax ]
  %i.hp = load i8, ptr %i.b, align 1, !tbaa !225, !range !165, !noundef !166
  %i.hq = trunc nuw i8 %i.hp to i1                ; 3 uses
  %or.cond9.not = select i1 %i.hq, i1 %i.dr, i1 false
  br i1 %or.cond9.not, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %i.hr = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.hr, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.hs = load i8, ptr %i.hg, align 8, !tbaa !195, !range !165, !noundef !166
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hu = load i32, ptr %i.o, align 8, !tbaa !832
  %i.hv = and i32 %i.hu, 1
  %.not259 = icmp eq i32 %i.hv, 0
  br i1 %.not259, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hw = getelementptr inbounds nuw i8, ptr %i.e, i64 252
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !902 ; 2 uses
  %i.hy = fcmp olt float %i.hx, 0.000000e+00
  br i1 %i.hy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 8, !tbaa !637
  %i.ib = load float, ptr %8, align 8, !tbaa !232
  %i.ic = fcmp olt float %i.ia, %i.ib
  br i1 %i.ic, label %.sink.split, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.id = fcmp ogt float %i.hx, 0.000000e+00
  br i1 %i.id, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.if = load float, ptr %i.ie, align 8, !tbaa !637
  %i.ig = load float, ptr %i.gi, align 8, !tbaa !233
  %i.ih = fcmp ogt float %i.if, %i.ig
  br i1 %i.ih, label %.sink.split, label %bb.bh

.sink.split:                                      ; preds = %bb.bg, %bb.be
  %.sroa.039.0.copyload.sink.in = phi ptr [ %i.hz, %bb.be ], [ %i.ie, %bb.bg ]
  %.sroa.039.0.copyload.sink = load <2 x float>, ptr %.sroa.039.0.copyload.sink.in, align 8
  call void @_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarP12ImGuiTabItem6ImVec2(ptr noundef nonnull %0, ptr noundef nonnull %.0237, <2 x float> %.sroa.039.0.copyload.sink)
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %bb.bb, %bb.bc, %bb.bf, %bb.bg, %bb.ba, %bb.az
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 7856
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !276
  %i.ik = and i32 %i.ij, 256
  %.not260 = icmp ne i32 %i.ik, 0
  %spec.select269 = and i1 %.not, %.not260
  br i1 %spec.select269, label %bb.bi, label %bb.ch

bb.bi:                                            ; preds = %bb.bh
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 712
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !186 ; 8 uses
  %i.in = load i8, ptr %i.a, align 1, !range !165
  %i.io = trunc nuw i8 %i.in to i1
  %or.cond11 = select i1 %i.hq, i1 true, i1 %i.io
  %i.ip = select i1 %.not250, i32 40, i32 37
  %i.iq = select i1 %.not250, i32 39, i32 36
  %i.ir = select i1 %.0239.shrunk, i32 %i.ip, i32 %i.iq
  %i.is = select i1 %or.cond11, i32 35, i32 %i.ir
  %i.it = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.is, float noundef 1.000000e+00)
  call void @_ZN5ImGui17TabItemBackgroundEP10ImDrawListRK6ImRectij(ptr noundef %i.im, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0235, i32 noundef %i.it)
  br i1 %.0239.shrunk, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.iu = load i32, ptr %i.o, align 8, !tbaa !832
  %i.iv = and i32 %i.iu, 64
  %.not261 = icmp eq i32 %i.iv, 0
  br i1 %.not261, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iw = getelementptr inbounds nuw i8, ptr %i.e, i64 3400 ; 3 uses
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !903
  %i.iy = fcmp ogt float %i.ix, 0.000000e+00
  br i1 %i.iy, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.e, i64 4584
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !904 ; 2 uses
  %i.jb = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ja, i64 1
  %i.jc = fadd <2 x float> %.sroa.0.0.copyload.i, %i.jb ; 2 uses
  %16 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %.sroa.0301.0.vec.extract = load float, ptr %i.gi, align 8
  %17 = fadd float %.sroa.0301.0.vec.extract, 0.000000e+00 ; 2 uses
  %18 = fadd float %i.ja, %16                     ; 2 uses
  %i.jd = select i1 %.not250, i32 41, i32 38
  %i.je = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.jd, float noundef 1.000000e+00) ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 3372
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !905 ; 6 uses
  %i.jh = fcmp ogt float %i.jg, 0.000000e+00
  br i1 %i.jh, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ji = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fadd <2 x float> %i.jc, %i.jj
  store <2 x float> %i.jk, ptr %12, align 8
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.im, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.jg, i32 noundef 7, i32 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.jl = fsub float %17, %i.jg
  %i.jm = fadd float %18, %i.jg
  %.sroa.0.0.vec.insert.i286 = insertelement <2 x float> poison, float %i.jl, i64 0
  %.sroa.0.4.vec.insert.i287 = insertelement <2 x float> %.sroa.0.0.vec.insert.i286, float %i.jm, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i287, ptr %13, align 8
  call void @_ZN10ImDrawList13PathArcToFastERK6ImVec2fii(ptr noundef nonnull align 8 dereferenceable(224) %i.im, ptr noundef nonnull align 4 dereferenceable(8) %13, float noundef %i.jg, i32 noundef 9, i32 noundef 11)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.jn = load float, ptr %i.iw, align 8, !tbaa !903
  %i.jo = getelementptr inbounds nuw i8, ptr %i.im, i64 80 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.im, i64 88
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !621
  %i.jr = load i32, ptr %i.jo, align 8, !tbaa !622
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.im, ptr noundef %i.jq, i32 noundef %i.jr, i32 noundef %i.je, float noundef %i.jn, i32 noundef 0)
  store i32 0, ptr %i.jo, align 8, !tbaa !622
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.js = fadd <2 x float> %i.jc, splat (float -5.000000e-01)
  store <2 x float> %i.js, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %19 = fadd float %17, -5.000000e-01
  %20 = fadd float %18, -5.000000e-01
  %.sroa.0.0.vec.insert.i290 = insertelement <2 x float> poison, float %19, i64 0
  %.sroa.0.4.vec.insert.i291 = insertelement <2 x float> %.sroa.0.0.vec.insert.i290, float %20, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i291, ptr %15, align 8
  %i.jt = load float, ptr %i.iw, align 8, !tbaa !903
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.im, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.je, float noundef %i.jt)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bk, %bb.bj, %bb.bi
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0.i, i32 noundef 0, float noundef -1.000000e+00)
  %i.ju = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 32)
  %i.jv = load i32, ptr %i.ff, align 8, !tbaa !850
  %i.jw = load i32, ptr %.0237, align 4, !tbaa !849
  %i.jx = icmp ne i32 %i.jv, %i.jw
  %or.cond13 = and i1 %i.ju, %i.jx
  br i1 %or.cond13, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.jy = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.jy, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jz = call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEi(i32 noundef 1)
  %.not14 = xor i1 %i.jz, true
  %or.cond16 = select i1 %.not14, i1 true, i1 %i.dx
  br i1 %or.cond16, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  br i1 %i.dx, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.ka = load i32, ptr %.0237, align 4, !tbaa !849
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !851
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo
  %i.kc = load i32, ptr %i.o, align 8, !tbaa !832
  %i.kd = lshr i32 %i.kc, 1
  %i.ke = and i32 %i.kd, 4
  %spec.select270 = or i32 %i.ke, %.0235          ; 2 uses
  br i1 %i.bv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kf = call noundef i32 @_ZN5ImGui13GetIDWithSeedEPKcS1_j(ptr noundef nonnull @.str.102, ptr noundef null, i32 noundef %.0.i)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.kg = phi i32 [ %i.kf, %bb.bu ], [ 0, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.kh = and i32 %spec.select270, -4194306
  %i.ki = select i1 %i.dv, i32 %i.kh, i32 %spec.select270
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.kj, align 8
  call void @_ZN5ImGui26TabItemLabelAndCloseButtonEP10ImDrawListRK6ImRecti6ImVec2PKcjjbPbS8_(ptr noundef nonnull %i.im, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %i.ki, <2 x float> %.sroa.0.0.copyload, ptr noundef %1, i32 noundef %.0.i, i32 noundef %i.kg, i1 noundef zeroext %.0239.shrunk, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.kk = load i8, ptr %i.c, align 1, !tbaa !225, !range !165, !noundef !166
  %i.kl = trunc nuw i8 %i.kk to i1
  %or.cond19 = and i1 %i.bv, %i.kl
  br i1 %or.cond19, label %bb.bw, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.bw:                                            ; preds = %bb.bv
  store i8 0, ptr %2, align 1, !tbaa !225
  %i.km = load i32, ptr %i.dy, align 4, !tbaa !854 ; 2 uses
  %i.kn = and i32 %i.km, 2097152
  %.not.i292 = icmp eq i32 %i.kn, 0
  br i1 %.not.i292, label %bb.bx, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.bx:                                            ; preds = %bb.bw
  %i.ko = and i32 %i.km, 257
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.kq = getelementptr inbounds nuw i8, ptr %.0237, i64 40
  store i8 1, ptr %i.kq, align 4, !tbaa !897
  %i.kr = load i32, ptr %i.et, align 4, !tbaa !844
  %i.ks = load i32, ptr %.0237, align 4, !tbaa !849
  %i.kt = icmp eq i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.bz, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.bz:                                            ; preds = %bb.by
  store i32 -1, ptr %i.do, align 4, !tbaa !848
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.ku, align 4, !tbaa !851
  store i32 0, ptr %i.ff, align 8, !tbaa !850
  br label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

bb.ca:                                            ; preds = %bb.bx
  %i.kv = load i32, ptr %i.et, align 4, !tbaa !844
  %i.kw = load i32, ptr %.0237, align 4, !tbaa !849 ; 2 uses
  %.not12.i = icmp eq i32 %i.kv, %i.kw
  br i1 %.not12.i, label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !851
  br label %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit

_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit: ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bw, %bb.bv
  %i.ky = load i8, ptr %i.d, align 1, !tbaa !225, !range !165, !noundef !166
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 5404
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !727
  %i.lc = icmp ne i32 %i.lb, %.0.i
  %or.cond22 = or i1 %i.lc, %i.hq
  br i1 %or.cond22, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ld = load i32, ptr %i.o, align 8, !tbaa !832
  %i.le = and i32 %i.ld, 32
  %.not263 = icmp eq i32 %i.le, 0
  br i1 %.not263, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.lf = load i32, ptr %i.dy, align 4, !tbaa !854
  %i.lg = and i32 %i.lf, 16
  %.not264 = icmp eq i32 %i.lg, 0
  br i1 %.not264, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lh = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %1, ptr noundef null)
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %1 to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = trunc i64 %i.lk to i32
  call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull @.str.1, i32 noundef %i.ll, ptr noundef %1)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cd, %bb.ce, %bb.cf, %bb.cc, %_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.bh
  br i1 %i.gy, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN5ImGui11PopClipRectEv()
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store i64 %i.fl, ptr %i.fk, align 8
  %.0241..0239.shrunk = select i1 %i.dx, i1 %.0241345, i1 %.0239.shrunk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.av
  %.1 = phi i1 [ %.0241..0239.shrunk, %bb.cj ], [ %.0239.shrunk, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.al, %bb.h, %bb.c
  %.4 = phi i1 [ false, %bb.c ], [ false, %bb.h ], [ %..0239.shrunk, %bb.al ], [ %.1, %bb.ck ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10EndTabItemEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !164, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !826  ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.133) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  %i.k = load i16, ptr %i.j, align 2, !tbaa !811
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !815
  %i.n = sext i16 %i.k to i64
  %i.o = getelementptr inbounds [44 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !854
  %i.r = and i32 %i.q, 8
  %.not7 = icmp eq i32 %i.r, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui5PopIDEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  ret void
}
end_hunk_7
