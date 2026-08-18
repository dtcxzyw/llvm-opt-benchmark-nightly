inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui5ImageEPvRK6ImVec2S3_S3_RK6ImVec4S6_:bb.a
bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13ImageButtonExEjPvRK6ImVec2S3_S3_S3_RK6ImVec4S6_(i32 noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ImRect, align 8             ; 11 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i8 1, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 147
  %i.h = load i8, ptr %i.g, align 1, !tbaa !123, !range !124, !noundef !125
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.k = load <2 x float>, ptr %i.j, align 8, !tbaa !130 ; 2 uses
  %i.l = load <2 x float>, ptr %2, align 4, !tbaa !130
  %i.m = fadd <2 x float> %i.k, %i.l
  %i.n = load <2 x float>, ptr %5, align 4, !tbaa !130
  %i.o = fmul <2 x float> %i.n, splat (float 2.000000e+00)
  %i.p = fadd <2 x float> %i.m, %i.o
  store <2 x float> %i.k, ptr %8, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store <2 x float> %i.p, ptr %i.q, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImRectf(ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef -1.000000e+00)
  %i.r = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef null, i32 noundef 0)
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.t = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.u = load i8, ptr %i.b, align 1, !tbaa !160, !range !124, !noundef !125
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i8, ptr %i.a, align 1, !range !124
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = select i1 %i.v, i32 23, i32 22
  %i.z = select i1 %i.x, i32 %i.y, i32 21
  %i.aa = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.z, float noundef 1.000000e+00)
  call void @_ZN5ImGui18RenderNavHighlightERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %0, i32 noundef 1)
  %.sroa.02.0.copyload = load <2 x float>, ptr %8, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 8
  %i.ab = load float, ptr %5, align 4, !tbaa !135 ; 2 uses
  %i.ac = load float, ptr %i.s, align 4, !tbaa !140 ; 2 uses
  %i.ad = fcmp olt float %i.ab, %i.ac
  %i.ae = select i1 %i.ad, float %i.ab, float %i.ac ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 5540
  %i.ag = load float, ptr %i.af, align 4, !tbaa !176 ; 2 uses
  %i.ah = fcmp olt float %i.ae, 0.000000e+00
  %i.ai = fcmp ogt float %i.ae, %i.ag
  %i.aj = select i1 %i.ai, float %i.ag, float %i.ae
  %i.ak = select i1 %i.ah, float 0.000000e+00, float %i.aj
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.02.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.aa, i1 noundef zeroext true, float noundef %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !193
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.aq = load <2 x float>, ptr %8, align 8, !tbaa !130
  %i.ar = load <2 x float>, ptr %5, align 4, !tbaa !130 ; 2 uses
  %i.as = fadd <2 x float> %i.aq, %i.ar
  store <2 x float> %i.as, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.at = load <2 x float>, ptr %i.q, align 8, !tbaa !130
  %i.au = fsub <2 x float> %i.at, %i.ar
  store <2 x float> %i.au, ptr %10, align 8
  %i.av = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.ap, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.av, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.ay = load <2 x float>, ptr %8, align 8, !tbaa !130
  %i.az = load <2 x float>, ptr %5, align 4, !tbaa !130 ; 2 uses
  %i.ba = fadd <2 x float> %i.ay, %i.az
  store <2 x float> %i.ba, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.bb = load <2 x float>, ptr %i.q, align 8, !tbaa !130
  %i.bc = fsub <2 x float> %i.bb, %i.az
  store <2 x float> %i.bc, ptr %12, align 8
  %i.bd = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @_ZN10ImDrawList8AddImageEPvRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(196) %i.ax, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.0 = phi i1 [ %i.t, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11ImageButtonEPvRK6ImVec2S3_S3_iRK6ImVec4S6_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.ImVec2, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !123, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui6PushIDEPKv(ptr noundef %0)
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.c, ptr noundef nonnull @.str.5, ptr noundef null)
  tail call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.h = icmp sgt i32 %4, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = uitofp nneg i32 %4 to float              ; 2 uses
  store float %i.i, ptr %7, align 8, !tbaa !135
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.i, ptr %i.j, align 4, !tbaa !140
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5532
  %i.l = load i64, ptr %i.k, align 4
  store i64 %i.l, ptr %7, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = call noundef zeroext i1 @_ZN5ImGui13ImageButtonExEjPvRK6ImVec2S3_S3_S3_RK6ImVec4S6_(i32 noundef %i.g, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i1 [ %i.m, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN5ImGui6PushIDEPKv(ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui5PopIDEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 4             ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store i8 1, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 147
  %i.h = load i8, ptr %i.g, align 1, !tbaa !123, !range !124, !noundef !125
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.k = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  %i.l = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.n = load <2 x float>, ptr %i.m, align 8      ; 11 uses
  %bc103 = bitcast <2 x float> %i.n to <2 x i32>
  %i.o = extractelement <2 x i32> %bc103, i64 0
  %bc = bitcast <2 x float> %i.n to <2 x i32>
  %i.p = extractelement <2 x i32> %bc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %.sroa.019.0.vec.extract = extractelement <2 x float> %i.k, i64 0 ; 2 uses
  %i.q = fcmp ogt float %.sroa.019.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 5556
  %i.s = load float, ptr %i.r, align 4, !tbaa !144
  %i.t = fadd float %.sroa.019.0.vec.extract, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi float [ %i.t, %bb.c ], [ 0.000000e+00, %bb.b ]
  %.sroa.019.4.vec.extract = extractelement <2 x float> %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 5536 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !143 ; 2 uses
  %6 = fadd float %i.l, %i.u
  %7 = tail call float @llvm.fmuladd.f32(float %i.w, float 2.000000e+00, float %.sroa.019.4.vec.extract)
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %8, float %7, i64 1
  %9 = fadd <2 x float> %.sroa.0.0.vec.insert.i, %i.n
  store i32 %i.o, ptr %2, align 4
  %.sroa_idx98 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.p, ptr %.sroa_idx98, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %9, ptr %i.x, align 4
  call void @_ZN5ImGui8ItemSizeERK6ImRectf(ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.w)
  %i.y = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.j, ptr noundef null, i32 noundef 0)
  br i1 %i.y, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.z = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %1, align 1, !tbaa !160, !range !124, !noundef !125
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %1, align 1, !tbaa !160
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %10 = extractelement <2 x float> %i.n, i64 0
  %i.ac = fadd float %i.l, %10                    ; 3 uses
  %11 = extractelement <2 x float> %i.n, i64 1
  %i.ad = fadd float %i.l, %11                    ; 2 uses
  %.sroa.0.0.vec.insert.i70 = insertelement <2 x float> poison, float %i.ac, i64 0
  %.sroa.0.4.vec.insert.i71 = insertelement <2 x float> %.sroa.0.0.vec.insert.i70, float %i.ad, i64 1
  call void @_ZN5ImGui18RenderNavHighlightERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.j, i32 noundef 1)
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !160, !range !124, !noundef !125
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr %i.a, align 1, !range !124
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = select i1 %i.af, i32 9, i32 8
  %i.aj = select i1 %i.ah, i32 %i.ai, i32 7
  %i.ak = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.aj, float noundef 1.000000e+00)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 5540 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !174
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %i.n, <2 x float> %.sroa.0.4.vec.insert.i71, i32 noundef %i.ak, i1 noundef zeroext true, float noundef %i.am)
  %i.an = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 18, float noundef 1.000000e+00) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 7372
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !173
  %i.aq = and i32 %i.ap, 64
  %.not = icmp eq i32 %i.aq, 0                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = fdiv float %i.l, 3.600000e+00
  %i.as = fptosi float %i.ar to i32
  %i.at = sitofp i32 %i.as to float               ; 2 uses
  %i.au = fcmp ole float %i.at, 1.000000e+00
  %i.av = select i1 %i.au, float 1.000000e+00, float %i.at ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.sroa.082.4.vec.extract90 = extractelement <2 x float> %i.n, i64 1
  %i.ay = insertelement <2 x float> poison, float %i.av, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fadd <2 x float> %i.n, %i.az
  store <2 x float> %i.ba, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.bb = fsub float %i.ac, %i.av
  %i.bc = fsub float %i.ad, %i.av
  %.sroa.0.0.vec.insert.i74 = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.0.4.vec.insert.i75 = insertelement <2 x float> %.sroa.0.0.vec.insert.i74, float %i.bc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i75, ptr %4, align 8
  %i.bd = load float, ptr %i.al, align 4, !tbaa !174
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.ax, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.an, float noundef %i.bd, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.be = load i8, ptr %1, align 1, !tbaa !160, !range !124, !noundef !125
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = extractelement <2 x float> %i.n, i64 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = fdiv float %i.l, 6.000000e+00
  %i.bh = fptosi float %i.bg to i32
  %i.bi = sitofp i32 %i.bh to float               ; 2 uses
  %i.bj = fcmp ole float %i.bi, 1.000000e+00
  %i.bk = select i1 %i.bj, float 1.000000e+00, float %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !147
  %.sroa.082.4.vec.extract88 = extractelement <2 x float> %i.n, i64 1
  %i.bn = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fadd <2 x float> %i.n, %i.bo
  %i.bq = fneg float %i.bk
  %i.br = call float @llvm.fmuladd.f32(float %i.bq, float 2.000000e+00, float %i.l)
  call void @_ZN5ImGui15RenderCheckMarkEP10ImDrawList6ImVec2jf(ptr noundef %i.bm, <2 x float> %i.bp, i32 noundef %i.an, float noundef %i.br)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.h
  %.sroa.082.4.vec.extract.pre-phi = phi float [ %.pre, %._crit_edge ], [ %.sroa.082.4.vec.extract88, %bb.j ], [ %.sroa.082.4.vec.extract90, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 5556
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !144
  %i.bu = fadd float %i.ac, %i.bt
  %i.bv = load float, ptr %i.v, align 8, !tbaa !143
  %i.bw = fadd float %.sroa.082.4.vec.extract.pre-phi, %i.bv
  store float %i.bu, ptr %5, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !140
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 12524
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !131, !range !124, !noundef !125
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = load i8, ptr %1, align 1, !tbaa !160, !range !124, !noundef !125
  %i.cc = trunc nuw i8 %i.cb to i1
  %.str.7..str.8 = select i1 %i.cc, ptr @.str.7, ptr @.str.8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cd = phi ptr [ %.str.7..str.8, %bb.m ], [ @.str.6, %bb.l ]
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %5, ptr noundef nonnull %i.cd, ptr noundef null)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  br i1 %i.q, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload = load <2 x float>, ptr %5, align 8
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.0.copyload, ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.q
  %.0 = phi i1 [ %i.z, %bb.q ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.1 = phi i1 [ %.0, %bb.r ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN5ImGui14MarkItemEditedEj(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui15RenderCheckMarkEP10ImDrawList6ImVec2jf(ptr noundef, <2 x float>, i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = load i32, ptr %1, align 4, !tbaa !194
  %i.c = and i32 %i.b, %2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, %2                     ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !160
  %i.f = icmp eq i32 %i.c, 0
  %or.cond.not.i = or i1 %i.f, %i.d
  br i1 %or.cond.not.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 7344 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !195  ; 2 uses
  %i.j = or i32 %i.i, 64
  store i32 %i.j, ptr %i.h, align 8, !tbaa !195
  %i.k = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  store i32 %i.i, ptr %i.h, align 8, !tbaa !195
  br i1 %i.k, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIiEEbPKcPT_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.l, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIiEEbPKcPT_S3_.exit

bb.c:                                             ; preds = %bb.b, %.split.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !160, !range !124, !noundef !125
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 4, !tbaa !194
  %i.p = or i32 %i.o, %2
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.q = xor i32 %2, -1
  %i.r = load i32, ptr %1, align 4, !tbaa !194
  %i.s = and i32 %i.r, %i.q
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  store i32 %.sink.i, ptr %1, align 4, !tbaa !194
  br label %_ZN5ImGui14CheckboxFlagsTIiEEbPKcPT_S3_.exit

_ZN5ImGui14CheckboxFlagsTIiEEbPKcPT_S3_.exit:     ; preds = %.split.i, %bb.b, %.sink.split.i
  %.0.in19.i = phi i1 [ false, %.split.i ], [ false, %bb.b ], [ true, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i1 %.0.in19.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPjj(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = load i32, ptr %1, align 4, !tbaa !194
  %i.c = and i32 %i.b, %2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, %2                     ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !160
  %i.f = icmp eq i32 %i.c, 0
  %or.cond.not.i = or i1 %i.f, %i.d
  br i1 %or.cond.not.i, label %bb.b, label %.split.i
end_hunk_0
begin_hunk_1_@_ZN5ImGui7TreePopEv:bb.a
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %bb.a
  %i.ae = add i32 %i.g, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 348 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !457
  %i.ah = and i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !457
  call void @_ZN5ImGui5PopIDEv()
  ret void
}

declare void @_ZN5ImGui8UnindentEf(float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() local_unnamed_addr #3

declare void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN5ImGui25GetTreeNodeToLabelSpacingEv() local_unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.c = load float, ptr %i.b, align 8, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5532
  %i.e = load float, ptr %i.d, align 4, !tbaa !231
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float 2.000000e+00, float %i.c)
  ret float %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !123, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i1 %0 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7348 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !462
  %i.j = or i32 %i.i, 2
  store i32 %i.j, ptr %i.h, align 4, !tbaa !462
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7364
  store i8 %i.g, ptr %i.k, align 4, !tbaa !464
  %i.l = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7360
  store i32 %i.l, ptr %i.m, align 8, !tbaa !463
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !123, !range !124, !noundef !125
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.c, ptr noundef %0, ptr noundef null)
  %i.i = or i32 %1, 26
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.h, i32 noundef %i.i, ptr noundef %0, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKcPbi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.ImGuiLastItemData, align 4  ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !123, !range !124, !noundef !125
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !160, !range !124, !noundef !125
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.select.v = phi i32 [ 1048606, %bb.c ], [ 26, %bb.b ]
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.c, ptr noundef %0, ptr noundef null) ; 2 uses
  %spec.select = or i32 %spec.select.v, %2
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %spec.select, ptr noundef %0, ptr noundef null) ; 2 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 7368 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef nonnull align 8 dereferenceable(60) %i.m, i64 60, i1 false), !tbaa.struct !469
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 6528
  %i.o = load float, ptr %i.n, align 8, !tbaa !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 7380
  %i.q = load float, ptr %i.p, align 4, !tbaa !470 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 7388
  %i.s = load float, ptr %i.r, align 4, !tbaa !471
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 5532
  %i.u = load float, ptr %i.t, align 4, !tbaa !231
  %i.v = fneg float %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.000000e+00, float %i.s)
  %i.x = fsub float %i.w, %i.o                    ; 2 uses
  %i.y = fcmp oge float %i.q, %i.x
  %i.z = select i1 %i.y, float %i.q, float %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 7384
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !472
  %i.ac = tail call noundef i32 @_ZN5ImGui13GetIDWithSeedEPKcS1_j(ptr noundef nonnull @.str.92, ptr noundef null, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store float %i.z, ptr %4, align 4, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.ab, ptr %i.ad, align 4, !tbaa !140
  %i.ae = call noundef zeroext i1 @_ZN5ImGui11CloseButtonEjRK6ImVec2(i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %1, align 1, !tbaa !160
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.m, ptr noundef nonnull align 4 dereferenceable(60) %3, i64 60, i1 false), !tbaa.struct !469
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ %i.k, %bb.g ], [ %i.k, %bb.d ]
  ret i1 %.0
}

declare noundef i32 @_ZN5ImGui13GetIDWithSeedEPKcS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui26TablePushBackgroundChannelEv() local_unnamed_addr #3

declare void @_ZN5ImGui25TablePopBackgroundChannelEv() local_unnamed_addr #3

declare void @_ZN5ImGui17CloseCurrentPopupEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !160, !range !124, !noundef !125
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %0, i1 noundef zeroext %i.b, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !160, !range !124, !noundef !125
  %i.e = xor i8 %i.d, 1
  store i8 %i.e, ptr %1, align 1, !tbaa !160
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 5 uses
  %3 = alloca %struct.ImRect, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !123, !range !124, !noundef !125
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef %0)
  %i.i = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 3 uses
  %.sroa.02.0.copyload = load <2 x float>, ptr %1, align 4
  %i.j = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.k = tail call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5536 ; 3 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !143
  %i.n = fmul float %i.m, 2.000000e+00
  %i.o = tail call float @llvm.fmuladd.f32(float %i.k, float 7.250000e+00, float %i.n)
  %i.p = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.02.0.copyload, float noundef %i.j, float noundef %i.o) ; 2 uses
  %.sroa.059.0.vec.extract = extractelement <2 x float> %i.p, i64 0
  %.sroa.059.4.vec.extract = extractelement <2 x float> %i.p, i64 1
  %i.q = fptosi float %.sroa.059.0.vec.extract to i32
  %i.r = sitofp i32 %i.q to float
  %i.s = fptosi float %.sroa.059.4.vec.extract to i32
  %i.t = sitofp i32 %i.s to float                 ; 2 uses
  %.sroa.060.4.vec.extract = extractelement <2 x float> %i.i, i64 1 ; 2 uses
  %i.u = fcmp ole float %.sroa.060.4.vec.extract, %i.t
  %i.v = select i1 %i.u, float %i.t, float %.sroa.060.4.vec.extract
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %6 = load <2 x float>, ptr %i.w, align 8, !tbaa !130 ; 5 uses
  %.sroa.0.0.vec.insert.i38 = insertelement <2 x float> poison, float %i.r, i64 0
  %.sroa.0.4.vec.insert.i39 = insertelement <2 x float> %.sroa.0.0.vec.insert.i38, float %i.v, i64 1
  %7 = fadd <2 x float> %6, %.sroa.0.4.vec.insert.i39 ; 5 uses
  store <2 x float> %6, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %7, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.sroa.060.0.vec.extract = extractelement <2 x float> %i.i, i64 0 ; 2 uses
  %i.y = fcmp ogt float %.sroa.060.0.vec.extract, 0.000000e+00 ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0       ; 2 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5556
  %i.aa = load float, ptr %i.z, align 4, !tbaa !144
  %i.ab = fadd float %.sroa.060.0.vec.extract, %i.aa
  %i.ac = fadd float %i.ab, %8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ad = phi float [ %i.ac, %bb.c ], [ %8, %bb.b ]
  %9 = extractelement <2 x float> %7, i64 1
  %i.ae = fadd float %9, 0.000000e+00
  %.sroa.0.0.vec.insert.i40 = insertelement <2 x float> poison, float %i.ad, i64 0
  %.sroa.0.4.vec.insert.i41 = insertelement <2 x float> %.sroa.0.0.vec.insert.i40, float %i.ae, i64 1
  store <2 x float> %6, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i41, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7348
  store i32 0, ptr %i.ag, align 4, !tbaa !431
  %i.ah = call noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2S2_(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.af) ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.ai = load <2 x float>, ptr %i.af, align 8, !tbaa !130
  %i.aj = load <2 x float>, ptr %3, align 8, !tbaa !130
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  store <2 x float> %i.ak, ptr %4, align 8
  %i.al = load float, ptr %i.l, align 8, !tbaa !143
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.am = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @_ZN5ImGui10BeginGroupEv()
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 5556
  %i.ao = load float, ptr %i.an, align 4, !tbaa !144
  %i.ap = load float, ptr %i.l, align 8, !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %10 = shufflevector <2 x float> %7, <2 x float> %6, <2 x i32> <i32 0, i32 3>
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.ap, i64 1
  %i.at = fadd <2 x float> %10, %i.as             ; 2 uses
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.at, ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  %i.au = fadd <2 x float> %i.i, %i.at            ; 2 uses
  %i.av = load <2 x float>, ptr %i.aq, align 8, !tbaa !130 ; 2 uses
  %i.aw = fcmp oge <2 x float> %i.av, %i.au
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> %i.au
  store <2 x float> %i.ax, ptr %i.aq, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %11 = fsub <2 x float> %7, %6
  store <2 x float> %11, ptr %5, align 8
  %i.ay = call noundef zeroext i1 @_ZN5ImGui15BeginChildFrameEjRK6ImVec2i(i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i1 [ %i.ah, %bb.i ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef) local_unnamed_addr #3

declare noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2S2_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui15BeginChildFrameEjRK6ImVec2i(i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui10EndListBoxEv() local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN5ImGui13EndChildFrameEv()
  tail call void @_ZN5ImGui8EndGroupEv()
  ret void
}

declare void @_ZN5ImGui13EndChildFrameEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui7ListBoxEPKcPiPKS1_ii(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.ImVec2, align 4             ; 6 uses
  %6 = alloca %struct.ImGuiListClipper, align 4   ; 10 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 2 uses
  %i.b = icmp slt i32 %4, 0
  %i.c = tail call i32 @llvm.smin.i32(i32 %3, i32 7)
  %.032.i = select i1 %i.b, i32 %i.c, i32 %4
  %i.d = sitofp i32 %.032.i to float
  %i.e = fadd float %i.d, 2.500000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.f = tail call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5536
  %i.h = load float, ptr %i.g, align 4, !tbaa !175
  %i.i = fmul float %i.h, 2.000000e+00
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.e, float %i.i)
  %i.k = fptosi float %i.j to i32
  %i.l = sitofp i32 %i.k to float
  store float 0.000000e+00, ptr %5, align 4, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !140
  %i.n = call noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  br i1 %i.n, label %bb.b, label %_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 4 dereferenceable(28) %6)
  %i.o = invoke noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
          to label %bb.c unwind label %.loopexit.split-lp.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 4 dereferenceable(28) %6, i32 noundef %3, float noundef %i.o)
          to label %.preheader.i unwind label %.loopexit.split-lp.i

.preheader.i:                                     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  br label %bb.d

.loopexit.i:                                      ; preds = %bb.p, %bb.f
  %.130.lcssa.i = phi i1 [ %.029.i, %bb.f ], [ %.231.i, %bb.p ]
  br label %bb.d, !llvm.loop !473

bb.d:                                             ; preds = %.loopexit.i, %.preheader.i
  %.029.i = phi i1 [ %.130.lcssa.i, %.loopexit.i ], [ false, %.preheader.i ] ; 4 uses
  %i.q = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 4 dereferenceable(28) %6)
          to label %bb.e unwind label %.loopexit38.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %6, align 4, !tbaa !474    ; 2 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !476
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.preheader.preheader, label %.loopexit.i

.preheader.preheader:                             ; preds = %bb.f
  %i.u = sext i32 %i.r to i64
  br label %.preheader

.loopexit38.i:                                    ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.i:                             ; preds = %bb.r, %.noexc.i, %bb.q, %bb.c, %bb.b
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.g:                                             ; preds = %.preheader
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.u, %.preheader.preheader ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.13046.i = phi i1 [ %.029.i, %.preheader.preheader ], [ %.231.i, %bb.p ]
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142
  %i.y = trunc nsw i64 %indvars.iv to i32         ; 3 uses
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.y)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %.preheader
  %i.z = load i32, ptr %1, align 4, !tbaa !194
  %i.aa = icmp eq i32 %i.z, %i.y                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !130
  %i.ab = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.x, i1 noundef zeroext %i.aa, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i32 %i.y, ptr %1, align 4, !tbaa !194
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.t

bb.l:                                             ; preds = %bb.j, %bb.i
  %.231.i = phi i1 [ true, %bb.j ], [ %.13046.i, %bb.i ] ; 2 uses
  br i1 %i.aa, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5ImGui19SetItemDefaultFocusEv()
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN5ImGui5PopIDEv()
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !476
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.preheader, label %.loopexit.i, !llvm.loop !477

bb.q:                                             ; preds = %bb.e
  invoke void @_ZN5ImGui13EndChildFrameEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZN5ImGui8EndGroupEv()
          to label %_ZN5ImGui10EndListBoxEv.exit.i unwind label %.loopexit.split-lp.i

_ZN5ImGui10EndListBoxEv.exit.i:                   ; preds = %.noexc.i
  br i1 %.029.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui10EndListBoxEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7368
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !242
  invoke void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.ai)
          to label %bb.s unwind label %.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui10EndListBoxEv.exit.i
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 4 dead_on_return(28) dereferenceable(28) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii.exit

bb.t:                                             ; preds = %bb.g, %bb.k, %bb.n, %.loopexit.split-lp.i, %.loopexit38.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit38.i ], [ %i.v, %bb.g ], [ %i.ad, %bb.n ], [ %i.ac, %bb.k ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 4 dead_on_return(28) dereferenceable(28) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %.pn.pn.pn.i

_ZN5ImGui7ListBoxEPKcPiPFbPviPS1_ES3_ii.exit:     ; preds = %bb.a, %bb.s
  %.0.i = phi i1 [ %.029.i, %bb.s ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@_ZN5ImGui11BeginMenuExEPKcS1_b:bb.a
  %not.or.cond13 = xor i1 %or.cond13, true
  %.0180 = select i1 %or.cond8, i1 true, i1 %not.or.cond13 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !165
  %i.kn = icmp eq i32 %i.km, %i.h
  br i1 %i.kn, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !460
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %.sink.split, label %bb.ax

bb.at:                                            ; preds = %bb.ae
  %or.cond15 = and i1 %i.i, %.0184.in
  %or.cond17 = and i1 %i.bv, %or.cond15           ; 3 uses
  %not.or.cond17 = xor i1 %or.cond17, true
  %.mux203 = xor i1 %i.i, %or.cond17
  br i1 %.0184.in, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %or.cond19 = and i1 %i.bv, %i.hi
  %or.cond19.not = xor i1 %or.cond19, true
  %or.cond21 = or i1 %i.i, %or.cond19.not
  br i1 %or.cond21, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !165
  %i.kt = icmp eq i32 %i.ks, %i.h
  br i1 %i.kt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !460
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %.sink.split, label %bb.ax

.sink.split:                                      ; preds = %bb.aw, %bb.as
  %.1178.ph = phi i1 [ %.0177, %bb.as ], [ false, %bb.aw ]
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.at, %bb.au, %bb.ar, %bb.as, %bb.av, %bb.aw
  %.2182 = phi i1 [ false, %bb.av ], [ %.0180, %bb.ar ], [ %not.or.cond17, %bb.at ], [ %.0180, %bb.as ], [ false, %bb.aw ], [ true, %bb.au ], [ true, %.sink.split ] ; 2 uses
  %.1178 = phi i1 [ false, %bb.av ], [ %.0177, %bb.ar ], [ %or.cond17, %bb.at ], [ %.0177, %bb.as ], [ false, %bb.aw ], [ false, %bb.au ], [ %.1178.ph, %.sink.split ]
  %.1174 = phi i1 [ %i.i, %bb.av ], [ %i.i, %bb.ar ], [ %.mux203, %bb.at ], [ %i.i, %bb.as ], [ %i.i, %bb.aw ], [ false, %bb.au ], [ %i.i, %.sink.split ] ; 2 uses
  %not. = xor i1 %2, true
  %spec.select201 = or i1 %.1178, %not.
  br i1 %spec.select201, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.kx = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.h, i32 noundef 0)
  br i1 %i.kx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !228
  call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %i.kz, i1 noundef zeroext true)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  call void @_ZN5ImGui5PopIDEv()
  %.not22 = xor i1 %.1174, true
  %or.cond24 = and i1 %.2182, %.not22
  br i1 %or.cond24, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !510
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !228
  %i.le = icmp sgt i32 %i.lb, %i.ld
  br i1 %i.le, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef 0)
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.2182, label %.thread261, label %bb.be

.thread261:                                       ; preds = %bb.bd
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef 0)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br i1 %.1174, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread261, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !130
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.lf = call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %i.h, i32 noundef %spec.select)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 7432
  store i32 0, ptr %i.lg, align 8, !tbaa !224
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.bc
  %.0 = phi i1 [ false, %bb.bc ], [ %i.lf, %bb.bf ], [ false, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.g, %bb.f, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.0, %bb.bh ], [ %i.w, %bb.f ], [ false, %bb.g ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui11BeginMenuExEPKcS1_b(ptr noundef %0, ptr noundef null, i1 noundef zeroext %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui7EndMenuEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.e = load i32, ptr %i.d, align 4, !tbaa !460
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv()
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.i = load i32, ptr %i.h, align 4, !tbaa !200
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !252  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 856
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !519  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !184
  %i.q = and i32 %i.p, 67108864
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 824
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !491
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.v = load i32, ptr %i.u, align 8, !tbaa !228
  tail call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %i.v, i1 noundef zeroext true)
  tail call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.c, %bb.b, %bb.a
  tail call void @_ZN5ImGui8EndPopupEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !123, !range !124, !noundef !125
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 5 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %8 = load <2 x float>, ptr %i.h, align 8        ; 4 uses
  %i.i = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 316
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.l = load i32, ptr %i.k, align 4, !tbaa !200
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.022.0.vec.extract = extractelement <2 x float> %i.i, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 5548 ; 2 uses
  %i.o = load float, ptr %i.h, align 8, !tbaa !126
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.q = load i16, ptr %i.p, align 8, !tbaa !484
  %i.r = uitofp i16 %i.q to float
  %i.s = load float, ptr %.sroa_idx, align 4, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.u = load float, ptr %i.t, align 8, !tbaa !128
  %i.v = fadd float %i.s, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.w = load <2 x float>, ptr %i.n, align 4, !tbaa !130 ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fmul float %i.x, 5.000000e-01
  %i.z = fptosi float %i.y to i32
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fadd float %i.o, %i.aa                  ; 2 uses
  store float %i.ab, ptr %i.h, align 8, !tbaa !126
  %i.ac = fadd float %i.ab, %i.r
  %.sroa.096.0.vec.insert = insertelement <2 x float> poison, float %i.ac, i64 0
  %.sroa.096.4.vec.insert = insertelement <2 x float> %.sroa.096.0.vec.insert, float %i.v, i64 1
  %i.ad = fmul <2 x float> %i.w, <float 2.000000e+00, float 1.000000e+00>
  store <2 x float> %i.ad, ptr %5, align 8, !tbaa !130
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store float %.sroa.022.0.vec.extract, ptr %6, align 4, !tbaa !135
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !140
  %i.af = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str, i1 noundef zeroext %3, i32 noundef 75497472, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.096.4.vec.insert, ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  %i.ag = load float, ptr %i.n, align 4, !tbaa !198
  %i.ah = fmul float %i.ag, -5.000000e-01
  %i.ai = fptosi float %i.ah to i32
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = load float, ptr %i.h, align 8, !tbaa !126
  %i.al = fadd float %i.ak, %i.aj
  store float %i.al, ptr %i.h, align 8, !tbaa !126
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i8, ptr %1, align 1, !tbaa !141
  %.not66 = icmp eq i8 %i.am, 0
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.012.0.vec.extract = extractelement <2 x float> %i.an, i64 0
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ao = phi float [ %.sroa.012.0.vec.extract, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.not67 = icmp eq ptr %2, null
  br i1 %.not67, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %2, align 1, !tbaa !141
  %.not68 = icmp eq i8 %i.ap, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %2, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.09.0.vec.extract = extractelement <2 x float> %i.aq, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.ar = phi float [ %.sroa.09.0.vec.extract, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 6528 ; 3 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !145
  %i.au = fmul float %i.at, 1.200000e+00
  %i.av = fptosi float %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 334 ; 2 uses
  %i.ax = fptoui float %i.ao to i16
  %i.ay = insertelement <2 x float> %i.i, float %i.ar, i64 1
  %i.az = trunc i32 %i.av to i16
  %i.ba = load <4 x i16>, ptr %i.aw, align 2, !tbaa !258
  %i.bb = insertelement <4 x i16> poison, i16 %i.ax, i64 0
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = fptoui <4 x float> %i.bc to <4 x i16>
  %i.be = shufflevector <4 x i16> %i.bb, <4 x i16> %i.bd, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bf = insertelement <4 x i16> %i.be, i16 %i.az, i64 3
  %i.bg = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.ba, <4 x i16> %i.bf) ; 5 uses
  store <4 x i16> %i.bg, ptr %i.aw, align 2, !tbaa !258
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.bi = load i16, ptr %i.bh, align 4            ; 3 uses
  %i.bj = extractelement <4 x i16> %i.bg, i64 0   ; 3 uses
  %i.bk = icmp ne i16 %i.bj, 0
  %i.bl = extractelement <4 x i16> %i.bg, i64 1   ; 3 uses
  %i.bm = icmp ne i16 %i.bl, 0
  %or.cond.us.1.i.i = and i1 %i.bk, %i.bm
  %i.bn = select i1 %or.cond.us.1.i.i, i16 %i.bi, i16 0
  %i.bo = or i16 %i.bl, %i.bj                     ; 2 uses
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = extractelement <4 x i16> %i.bg, i64 2   ; 3 uses
  %i.br = icmp ne i16 %i.bq, 0
  %or.cond.2.i.i = and i1 %i.bp, %i.br
  %i.bs = select i1 %or.cond.2.i.i, i16 %i.bi, i16 0
  %i.bt = or i16 %i.bq, %i.bo
  %i.bu = icmp ne i16 %i.bt, 0
  %i.bv = extractelement <4 x i16> %i.bg, i64 3   ; 2 uses
  %i.bw = icmp ne i16 %i.bv, 0
  %or.cond.3.i.i = and i1 %i.bu, %i.bw
  %i.bx = select i1 %or.cond.3.i.i, i16 %i.bi, i16 0
  %spec.select.1.i.i = add i16 %i.bl, %i.bj
  %i.by = add i16 %spec.select.1.i.i, %i.bq
  %spec.select27.2.i.i = add i16 %i.by, %i.bv
  %i.bz = add i16 %spec.select27.2.i.i, %i.bn
  %spec.select27.3.i.i = add i16 %i.bz, %i.bs
  %i.ca = add i16 %spec.select27.3.i.i, %i.bx
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !488
  %i.cd = load i32, ptr %i.j, align 4, !tbaa !487
  %i.ce = tail call noundef i32 @llvm.umax.i32(i32 %i.cd, i32 %i.cb)
  %i.cf = uitofp i32 %i.ce to float               ; 2 uses
  %i.cg = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.04.0.vec.extract = extractelement <2 x float> %i.cg, i64 0
  %i.ch = fsub float %.sroa.04.0.vec.extract, %i.cf ; 2 uses
  %i.ci = fcmp ole float %i.ch, 0.000000e+00
  %i.cj = select i1 %i.ci, float 0.000000e+00, float %i.ch ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store float %i.cf, ptr %7, align 4, !tbaa !135
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !140
  %i.cl = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str, i1 noundef zeroext false, i32 noundef 92274688, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !484
  %i.co = uitofp i16 %i.cn to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  %9 = fadd <2 x float> %8, %.sroa.0.0.vec.insert.i ; 3 uses
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %9, ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  %i.cp = fcmp ogt float %i.ao, 0.000000e+00
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 326
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !515
  %i.cs = uitofp i16 %i.cr to float
  %10 = extractelement <2 x float> %8, i64 0
  %11 = fadd float %10, %i.cs
  %.sroa.0.4.vec.insert.i85 = insertelement <2 x float> %9, float %11, i64 0
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.4.vec.insert.i85, ptr noundef %1, ptr noundef null, i1 noundef zeroext true)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ct = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 5688
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 330
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !485
  %i.cx = uitofp i16 %i.cw to float
  %i.cy = fadd float %i.cj, %i.cx
  %12 = extractelement <2 x float> %8, i64 0
  %13 = fadd float %12, %i.cy
  %.sroa.0.4.vec.insert.i87 = insertelement <2 x float> %9, float %13, i64 0
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.4.vec.insert.i87, ptr noundef %2, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !147
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 332
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !486
  %i.dd = uitofp i16 %i.dc to float
  %i.de = fadd float %i.cj, %i.dd
  %i.df = load float, ptr %i.as, align 8, !tbaa !145 ; 2 uses
  %i.dg = fmul float %i.df, 1.340000e-01
  %i.dh = fmul float %i.dg, 5.000000e-01
  %14 = tail call float @llvm.fmuladd.f32(float %i.df, float 4.000000e-01, float %i.de)
  %15 = insertelement <2 x float> poison, float %14, i64 0
  %.sroa.0.0.vec.insert.i88 = insertelement <2 x float> %15, float %i.dh, i64 1
  %16 = fadd <2 x float> %8, %.sroa.0.0.vec.insert.i88
  %i.di = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.dj = load float, ptr %i.as, align 8, !tbaa !145
  %i.dk = fmul float %i.dj, f0x3F5DB22D
  tail call void @_ZN5ImGui15RenderCheckMarkEP10ImDrawList6ImVec2jf(ptr noundef %i.da, <2 x float> %16, i32 noundef %i.di, float noundef %i.dk)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.e
  %.063.in = phi i1 [ %i.af, %bb.e ], [ %i.cl, %bb.q ], [ %i.cl, %bb.p ]
  br i1 %4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5ImGui11EndDisabledEv()
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @_ZN5ImGui5PopIDEv()
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.t
  %.0 = phi i1 [ %.063.in, %bb.t ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef %0, ptr noundef null, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_Pbb(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef %0, ptr noundef null, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext %3)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !160, !range !124, !noundef !125
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef %0, ptr noundef null, ptr noundef %1, i1 noundef zeroext %i.c, i1 noundef zeroext %3)
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %2, align 1, !tbaa !160, !range !124, !noundef !125
  %i.f = xor i8 %i.e, 1
  store i8 %i.f, ptr %2, align 1, !tbaa !160
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %bb.c
  %i.g = phi i1 [ %i.a, %.thread ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11ImGuiTabBarC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((0, 152)) %0) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  store i32 -1, ptr %i.a, align 8, !tbaa !520
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 -1, ptr %i.b, align 4, !tbaa !524
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 -1, ptr %i.c, align 8, !tbaa !525
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !123, !range !124, !noundef !125
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.c, ptr noundef %0, ptr noundef null) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8336
  %i.i = tail call noundef ptr @_ZN6ImPoolI11ImGuiTabBarE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef %i.g) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.m = load float, ptr %i.l, align 8, !tbaa !453
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.o = load float, ptr %i.n, align 8, !tbaa !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5536
  %i.q = load float, ptr %i.p, align 8, !tbaa !175
  %i.r = load float, ptr %i.k, align 4, !tbaa !127
  %i.s = load <2 x float>, ptr %i.j, align 8, !tbaa !130
  %i.t = fadd float %i.r, %i.o
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float 2.000000e+00, float %i.t)
  store <2 x float> %i.s, ptr %2, align 8, !tbaa !130
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.m, ptr %i.v, align 8, !tbaa !135
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.u, ptr %i.w, align 4, !tbaa !140
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.g, ptr %i.x, align 4, !tbaa !526
  %i.y = or i32 %1, 2097152
  %i.z = call noundef zeroext i1 @_ZN5ImGui13BeginTabBarExEP11ImGuiTabBarRK6ImRecti(ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.z, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN6ImPoolI11ImGuiTabBarE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !194  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !527
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [152 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !528  ; 6 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !194
  %i.j = load i32, ptr %0, align 8, !tbaa !529
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.i, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !530  ; 4 uses
  %.not.i = icmp slt i32 %i.i, %i.n
  br i1 %.not.i, label %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i, label %bb.e

._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre7.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !527
  br label %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sdiv i32 %i.n, 2
  %i.p = add nsw i32 %i.o, %i.n
  br label %_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %i.p, %bb.f ], [ 8, %bb.e ]
  %i.r = tail call noundef i32 @llvm.smax.i32(i32 %i.q, i32 %i.l) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 152
  %i.u = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.t) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !527  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i
  %i.x = load i32, ptr %0, align 8, !tbaa !531
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !527
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i
  store ptr %i.u, ptr %i.v, align 8, !tbaa !527
  store i32 %i.r, ptr %i.m, align 4, !tbaa !530
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !528
  %.pre9.i = add nsw i32 %.pre.i, 1
  br label %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i

_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i:      ; preds = %bb.h, %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %i.l, %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i ], [ %.pre9.i, %bb.h ]
  %.pre7.i = phi ptr [ %.pre7.pre.i, %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i ], [ %i.u, %bb.h ]
  store i32 %i.l, ptr %0, align 8, !tbaa !531
  %.pre10.i = sext i32 %i.i to i64
  br label %_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !527 ; 2 uses
  %i.ad = sext i32 %i.i to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [152 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !194
  br label %_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit

_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit:             ; preds = %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i, %bb.i
end_hunk_2
