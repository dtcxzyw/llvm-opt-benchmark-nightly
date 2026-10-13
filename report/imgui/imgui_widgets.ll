Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui12TextAlignedVEffPKcP13__va_list_tag:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.l = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.j, ptr noundef %i.k, i1 noundef zeroext false, float noundef -1.000000e+00) ; 4 uses
  store <2 x float> %i.l, ptr %4, align 8
  %.sroa.024.4.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %1, i64 0
  %i.m = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.n = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.024.4.vec.insert, float noundef 0.000000e+00, float noundef %i.m) ; 2 uses
  %.sroa.01.0.vec.extract = extractelement <2 x float> %i.n, i64 0 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.p = load float, ptr %i.o, align 8, !tbaa !186 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.r = load float, ptr %i.q, align 4, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.t = load float, ptr %i.s, align 8, !tbaa !188
  %i.u = fadd float %i.r, %i.t
  store float %i.p, ptr %5, align 8, !tbaa !194
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.u, ptr %i.v, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.w = fadd float %.sroa.01.0.vec.extract, %i.p ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 628
  %i.y = load float, ptr %i.x, align 4, !tbaa !199
  store float %i.w, ptr %6, align 4, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.aa = extractelement <2 x float> %i.l, i64 0  ; 4 uses
  %i.ab = fcmp olt float %.sroa.01.0.vec.extract, %i.aa
  %i.ac = select i1 %i.ab, float %.sroa.01.0.vec.extract, float %i.aa
  store float %i.ac, ptr %7, align 8, !tbaa !194
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.m, ptr %i.ad, align 4, !tbaa !197
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 4 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !200 ; 2 uses
  %i.ag = fadd float %i.p, %i.aa                  ; 4 uses
  %i.ah = fcmp oge float %i.af, %i.ag
  %i.ai = select i1 %i.ah, float %i.af, float %i.ag
  store float %i.ai, ptr %i.ae, align 8, !tbaa !200
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !201 ; 2 uses
  %i.al = fcmp oge float %i.ak, %i.ag
  %i.am = select i1 %i.al, float %i.ak, float %i.ag
  store float %i.am, ptr %i.aj, align 8, !tbaa !201
  %i.an = fcmp ogt float %0, 0.000000e+00
  %i.ao = fcmp olt float %i.aa, %.sroa.01.0.vec.extract
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fsub <2 x float> %i.n, %i.l
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aq = fmul float %0, %i.ap
  %i.ar = fptosi float %i.aq to i32
  %i.as = sitofp i32 %i.ar to float
  %i.at = fadd float %i.p, %i.as
  store float %i.at, ptr %5, align 8, !tbaa !194
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !202
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef %i.av, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef %i.w, ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef nonnull %4)
  %.sroa.0.0.copyload = load float, ptr %i.ae, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %7, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ay = load <2 x float>, ptr %5, align 8, !tbaa !190 ; 2 uses
  %i.az = load <2 x float>, ptr %7, align 8, !tbaa !190
  %i.ba = fadd <2 x float> %i.ay, %i.az
  store <2 x float> %i.ay, ptr %8, align 8, !tbaa !190
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %i.ba, ptr %i.bb, align 8, !tbaa !190
  %i.bc = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  store float %.sroa.0.0.copyload, ptr %i.ae, align 8, !tbaa !200
  %i.bd = load float, ptr %4, align 8, !tbaa !194
  %i.be = fcmp olt float %.sroa.01.0.vec.extract, %i.bd
  br i1 %i.be, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bf = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 7168)
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.1, i32 noundef %i.bl, ptr noundef %i.bh)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float>, float noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10SetTooltipEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9LabelTextEPKcS1_z(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @_ZN5ImGui10LabelTextVEPKcS1_P13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10LabelTextVEPKcS1_P13__va_list_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 5 uses
  %6 = alloca %struct.ImRect, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3284
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3288 ; 2 uses
  %i.m = tail call noundef float @_ZN5ImGui13CalcItemWidthEv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.p = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.n, ptr noundef %i.o, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.p, ptr %4, align 8
  %i.q = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.r = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %i.s = load <2 x i32>, ptr %i.j, align 8        ; 3 uses
  %i.t = bitcast <2 x i32> %i.s to <2 x float>    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.u = extractelement <2 x float> %i.p, i64 1   ; 3 uses
  %i.v = load float, ptr %i.l, align 8, !tbaa !203 ; 3 uses
  %i.w = call float @llvm.fmuladd.f32(float %i.v, float 2.000000e+00, float %i.u)
  %i.x = insertelement <2 x float> poison, float %i.m, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = fadd <2 x float> %i.y, %i.t
  %.sroa_idx33 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x i32> %i.s, ptr %5, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %i.z, ptr %i.aa, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 2 uses
  %i.ab = fcmp ogt float %.sroa.0.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !204
  %i.ae = fadd float %.sroa.0.0.vec.extract, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.af = phi float [ %i.ae, %bb.c ], [ 0.000000e+00, %bb.b ]
  %9 = fadd float %i.m, %i.af
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.r, i64 1 ; 2 uses
  %i.ag = fcmp oge float %i.u, %.sroa.0.4.vec.extract
  %i.ah = select i1 %i.ag, float %i.u, float %.sroa.0.4.vec.extract
  store <2 x i32> %i.s, ptr %6, align 8, !tbaa !190
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.aj = call float @llvm.fmuladd.f32(float %i.v, float 2.000000e+00, float %i.ah)
  %i.ak = insertelement <2 x float> poison, float %9, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.aj, i64 1
  %i.am = fadd <2 x float> %i.al, %i.t            ; 2 uses
  store <2 x float> %i.am, ptr %i.ai, align 8, !tbaa !190
  %i.an = fsub <2 x float> %i.am, %i.t
  store <2 x float> %i.an, ptr %3, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ao = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.ao, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.ap = load <2 x float>, ptr %i.k, align 4, !tbaa !190
  %i.aq = fadd <2 x float> %i.ap, %i.t
  store <2 x float> %i.aq, ptr %7, align 8
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.aa, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.au = load float, ptr %i.at, align 4, !tbaa !204
  %i.av = load float, ptr %i.l, align 8, !tbaa !203
  %i.aw = load <2 x float>, ptr %.sroa_idx33, align 4, !tbaa !190
  %i.ax = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.au, i64 1
  %i.az = fadd <2 x float> %i.aw, %i.ay
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.ba, ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare noundef float @_ZN5ImGui13CalcItemWidthEv() local_unnamed_addr #3

declare noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10BulletTextEPKcz(ptr noundef %0, ...) local_unnamed_addr #5 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN5ImGui11BulletTextVEPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11BulletTextVEPKcP13__va_list_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 6 uses
  %3 = alloca %struct.ImRect, align 8             ; 8 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef %1)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.l = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.j, ptr noundef %i.k, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4568 ; 3 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !205
  %.sroa.02.0.vec.extract = extractelement <2 x float> %i.l, i64 0 ; 2 uses
  %i.o = fcmp ogt float %.sroa.02.0.vec.extract, 0.000000e+00
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 3284
  %i.q = load float, ptr %i.p, align 4, !tbaa !206
  %i.r = call float @llvm.fmuladd.f32(float %i.q, float 2.000000e+00, float %.sroa.02.0.vec.extract)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = phi float [ %i.r, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.t = fadd float %i.n, %i.s
  %.sroa.02.4.vec.extract = extractelement <2 x float> %i.l, i64 1
  store float %i.t, ptr %2, align 8, !tbaa !194
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sroa.02.4.vec.extract, ptr %i.u, align 4, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.x = load float, ptr %.sroa_idx26, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.z = load float, ptr %i.y, align 8, !tbaa !188
  %i.aa = fadd float %i.x, %i.z                   ; 2 uses
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ab = load <2 x float>, ptr %2, align 8, !tbaa !190
  %i.ac = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.ad = bitcast <2 x i32> %i.ac to <2 x float>
  %i.ae = insertelement <2 x float> %i.ad, float %i.aa, i64 1
  %i.af = fadd <2 x float> %i.ab, %i.ae
  store i32 %i.w, ptr %3, align 8, !tbaa !190
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.aa, ptr %.sroa_idx25, align 4, !tbaa !190
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.af, ptr %i.ag, align 8, !tbaa !190
  %i.ah = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 3284 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !206
  %i.an = load float, ptr %i.m, align 8, !tbaa !205 ; 2 uses
  %4 = fmul float %i.an, 5.000000e-01
  %5 = call float @llvm.fmuladd.f32(float %i.an, float 5.000000e-01, float %i.am)
  %i.ao = load <2 x float>, ptr %3, align 8, !tbaa !190
  %i.ap = insertelement <2 x float> poison, float %5, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %4, i64 1
  %i.ar = fadd <2 x float> %i.ao, %i.aq
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.ak, <2 x float> %i.ar, i32 noundef %i.ai)
  %i.as = load float, ptr %i.m, align 8, !tbaa !205
  %i.at = load float, ptr %i.al, align 4, !tbaa !206
  %i.au = call float @llvm.fmuladd.f32(float %i.at, float 2.000000e+00, float %i.as)
  %i.av = load <2 x float>, ptr %3, align 8, !tbaa !190
  %i.aw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.ax = fadd <2 x float> %i.av, %i.aw
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.ax, ptr noundef %i.ay, ptr noundef %i.az, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef, <2 x float>, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 56 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.f = load i32, ptr %i.e, align 8, !tbaa !207
  %i.g = icmp eq i32 %i.f, %1
  %.in.v = select i1 %i.g, i64 7852, i64 7784
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.h = load i32, ptr %.in, align 4, !tbaa !208  ; 4 uses
  %i.i = shl i32 %4, 2
  %i.j = and i32 %i.i, 16384
  %.0218 = or i32 %i.h, %i.j
  %i.k = and i32 %i.h, 131072
  %.not242 = icmp eq i32 %i.k, 0
  %i.l = or i32 %4, 4456448
  %.0 = select i1 %.not242, i32 %4, i32 %i.l      ; 25 uses
  %i.m = and i32 %.0, 7
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = and i32 %.0, 1008
  %i.q = icmp eq i32 %i.p, 0
  %i.r = and i32 %i.h, 8
  %.not243 = icmp eq i32 %i.r, 0                  ; 5 uses
  %i.s = select i1 %.not243, i32 32, i32 16
  %i.t = select i1 %i.q, i32 %i.s, i32 0
  %i.u = or disjoint i32 %i.t, %i.o
  %.2 = or i32 %i.u, %.0                          ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5320 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209  ; 3 uses
  %i.x = and i32 %.0, 2048
  %.not244 = icmp eq i32 %i.x, 0
  %.not245 = icmp eq ptr %i.w, null
  %or.cond278 = select i1 %.not244, i1 true, i1 %.not245
  br i1 %or.cond278, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 960
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !210
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !210
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.v, align 8, !tbaa !209
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.ad = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %.0218)
  %i.af = zext i1 %i.ae to i8                     ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8776 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !211, !range !184, !noundef !185
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %bb.k

bb.d:                                             ; preds = %.thread
  %i.aj = and i32 %.0, 512
  %.not246 = icmp eq i32 %i.aj, 0
  br i1 %.not246, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8780
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !619
  %i.am = and i32 %i.al, 4
  %.not247 = icmp eq i32 %i.am, 0
  br i1 %.not247, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.an = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 128)
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui12SetHoveredIDEj(i32 noundef %1)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5416
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !212 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !213
  %i.as = fsub float %i.ap, %i.ar
  %i.at = fcmp ugt float %i.as, f0x3F333333
  %i.au = fcmp ult float %i.ap, f0x3F333333
  %or.cond279 = or i1 %i.au, %i.at
  br i1 %or.cond279, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8920
  store i32 %1, ptr %i.av, align 8, !tbaa !214
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.c, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e, %bb.d
  %.0229 = phi i8 [ 0, %bb.e ], [ 1, %bb.h ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.0226 = phi i8 [ %i.af, %bb.e ], [ 1, %bb.h ], [ %i.af, %bb.d ], [ 1, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8912
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !620
  %i.ay = icmp eq i32 %i.ax, %1
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8900
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !621
  %i.bb = and i32 %i.ba, 8192
  %.not248 = icmp eq i32 %i.bb, 0
  %spec.select = select i1 %.not248, i8 %.0226, i8 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.thread
  %.1230 = phi i8 [ 0, %.thread ], [ %.0229, %bb.j ], [ %.0229, %bb.i ] ; 8 uses
  %.1227 = phi i8 [ %i.af, %.thread ], [ %spec.select, %bb.j ], [ %.0226, %bb.i ] ; 6 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.w, ptr %i.v, align 8, !tbaa !209
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = and i32 %.0, 2097152
  %.not249 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not249, i32 %1, i32 0       ; 9 uses
  %i.be = trunc nuw i8 %.1227 to i1
  br i1 %i.be, label %.preheader.preheader, label %bb.ay

.preheader.preheader:                             ; preds = %bb.m
  %i.bf = and i32 %.2, 1
  %.not277 = icmp eq i32 %i.bf, 0
  br i1 %.not277, label %.preheader.1, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader
  %i.bg = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 0, i32 noundef 0, i32 noundef %i.bd)
  %not. = xor i1 %i.bg, true
  %spec.select280 = sext i1 %not. to i32
  %i.bh = tail call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEij(i32 noundef 0, i32 noundef %i.bd)
  %not.304 = xor i1 %i.bh, true
  %spec.select290 = sext i1 %not.304 to i32
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.n, %.preheader.preheader
  %.2225 = phi i32 [ -1, %.preheader.preheader ], [ %spec.select280, %bb.n ] ; 3 uses
  %.1222 = phi i32 [ -1, %.preheader.preheader ], [ %spec.select290, %bb.n ] ; 3 uses
  %i.bi = and i32 %.0, 2
  %.not277.1 = icmp eq i32 %i.bi, 0
  br i1 %.not277.1, label %.preheader.2, label %bb.o

bb.o:                                             ; preds = %.preheader.1
  %i.bj = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 1, i32 noundef 0, i32 noundef %i.bd)
  %i.bk = icmp eq i32 %.2225, -1
  %or.cond.1 = and i1 %i.bj, %i.bk
  %spec.select280.1 = select i1 %or.cond.1, i32 1, i32 %.2225
  %i.bl = tail call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEij(i32 noundef 1, i32 noundef %i.bd)
  %i.bm = icmp eq i32 %.1222, -1
  %or.cond3.1 = and i1 %i.bl, %i.bm
  %spec.select290.1 = select i1 %or.cond3.1, i32 1, i32 %.1222
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.o, %.preheader.1
  %.2225.1 = phi i32 [ %.2225, %.preheader.1 ], [ %spec.select280.1, %bb.o ] ; 3 uses
  %.1222.1 = phi i32 [ %.1222, %.preheader.1 ], [ %spec.select290.1, %bb.o ] ; 3 uses
  %i.bn = and i32 %.0, 4
  %.not277.2 = icmp eq i32 %i.bn, 0
  br i1 %.not277.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.2
  %i.bo = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 2, i32 noundef 0, i32 noundef %i.bd)
  %i.bp = icmp eq i32 %.2225.1, -1
  %or.cond.2 = select i1 %i.bo, i1 %i.bp, i1 false
  %spec.select280.2 = select i1 %or.cond.2, i32 2, i32 %.2225.1
  %i.bq = tail call noundef zeroext i1 @_ZN5ImGui15IsMouseReleasedEij(i32 noundef 2, i32 noundef %i.bd)
end_hunk_0
begin_hunk_1_@_ZN5ImGui13ImageButtonExEj12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_i:bb.a
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3284
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 9 uses
  %i.l = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !190 ; 3 uses
  %i.p = load <2 x float>, ptr %3, align 4, !tbaa !190
  %i.q = fadd <2 x float> %i.o, %i.p
  %i.r = fmul <2 x float> %i.k, splat (float 2.000000e+00)
  %i.s = fadd <2 x float> %i.r, %i.q              ; 2 uses
  store <2 x float> %i.o, ptr %10, align 8, !tbaa !190
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store <2 x float> %i.s, ptr %i.t, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.u = fsub <2 x float> %i.s, %i.o
  store <2 x float> %i.u, ptr %9, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.v = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %0, ptr noundef null, i32 noundef 0)
  br i1 %i.v, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.w = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %8)
  %i.x = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i8, ptr %i.a, align 1, !range !184
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.y, i32 24, i32 23
  %i.ac = select i1 %i.aa, i32 %i.ab, i32 22
  %i.ad = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ac, float noundef 1.000000e+00)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %0, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.06.0.copyload = load <2 x float>, ptr %10, align 8, !tbaa !190
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.t, align 8, !tbaa !190
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3292 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !235
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.06.0.copyload, <2 x float> %.sroa.05.0.copyload, i32 noundef %i.ad, i1 noundef zeroext true, float noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !254
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.al = load <2 x float>, ptr %10, align 8, !tbaa !190
  %i.am = fadd <2 x float> %i.k, %i.al
  store <2 x float> %i.am, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.an = load <2 x float>, ptr %i.t, align 8, !tbaa !190
  %i.ao = fsub <2 x float> %i.an, %i.k
  store <2 x float> %i.ao, ptr %12, align 8
  %i.ap = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, i32 noundef %i.ap, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !235
  %i.ar = fcmp oge float %i.m, %i.l
  %i.as = select i1 %i.ar, float %i.m, float %i.l
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 3364
  %i.av = load float, ptr %i.au, align 4, !tbaa !253 ; 2 uses
  %i.aw = fcmp oge float %i.at, %i.av
  %i.ax = select i1 %i.aw, float %i.at, float %i.av ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 0.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !202 ; 2 uses
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.bb = load <2 x float>, ptr %10, align 8, !tbaa !190
  %i.bc = fadd <2 x float> %i.k, %i.bb
  store <2 x float> %i.bc, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.bd = load <2 x float>, ptr %i.t, align 8, !tbaa !190
  %i.be = fsub <2 x float> %i.bd, %i.k
  store <2 x float> %i.be, ptr %14, align 8
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @_ZN10ImDrawList15AddImageRoundedE12ImTextureRefRK6ImVec2S3_S3_S3_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ba, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.bf, float noundef %i.ax, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.bg = load <2 x float>, ptr %10, align 8, !tbaa !190
  %i.bh = fadd <2 x float> %i.k, %i.bg
  store <2 x float> %i.bh, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.bi = load <2 x float>, ptr %i.t, align 8, !tbaa !190
  %i.bj = fsub <2 x float> %i.bi, %i.k
  store <2 x float> %i.bj, ptr %16, align 8
  %i.bk = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.ba, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.0 = phi i1 [ %i.w, %bb.h ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.1 = phi i1 [ %.0, %bb.i ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !183, !range !184, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null)
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui13ImageButtonExEj12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_i(i32 noundef %i.g, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImRect, align 4             ; 11 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 6 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5312
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 206
  store i8 1, ptr %i.h, align 2, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 209
  %i.j = load i8, ptr %i.i, align 1, !tbaa !183, !range !184, !noundef !185
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.g, ptr noundef %0, ptr noundef null) ; 7 uses
  %i.m = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.n = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.m, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %i.o = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 10 uses
  %bc110 = bitcast <2 x float> %i.q to <2 x i32>
  %i.r = extractelement <2 x i32> %bc110, i64 0
  %bc = bitcast <2 x float> %i.q to <2 x i32>
  %i.s = extractelement <2 x i32> %bc, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %.sroa.028.0.vec.extract = extractelement <2 x float> %i.n, i64 0 ; 2 uses
  %i.t = fcmp ogt float %.sroa.028.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3308
  %i.v = load float, ptr %i.u, align 4, !tbaa !204
  %i.w = fadd float %.sroa.028.0.vec.extract, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi float [ %i.w, %bb.c ], [ 0.000000e+00, %bb.b ]
  %7 = fadd float %i.o, %i.x
  %.sroa.028.4.vec.extract = extractelement <2 x float> %i.n, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 3288 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !203 ; 2 uses
  store i32 %i.r, ptr %3, align 4, !tbaa !190
  %.sroa_idx100 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.s, ptr %.sroa_idx100, align 4, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float 2.000000e+00, float %.sroa.028.4.vec.extract)
  %i.ad = insertelement <2 x float> poison, float %7, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.ac, i64 1
  %i.af = fadd <2 x float> %i.ae, %i.q            ; 2 uses
  store <2 x float> %i.af, ptr %i.aa, align 4, !tbaa !190
  %i.ag = fsub <2 x float> %i.af, %i.q
  store <2 x float> %i.ag, ptr %2, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.ah = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.l, ptr noundef null, i32 noundef 0) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 7852 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !255
  %i.ak = and i32 %i.aj, 4194304
  %.not = icmp eq i32 %i.ak, 0                    ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 9216
  %i.am = load i8, ptr %i.al, align 8, !tbaa !256, !range !184, !noundef !185
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 9220
  %i.ap = load float, ptr %.sroa_idx100, align 4, !tbaa !195
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 9228
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 9232
  %i.as = load float, ptr %i.ar, align 8, !tbaa !196
  %i.at = fcmp olt float %i.ap, %i.as
  br i1 %i.at, label %bb.h, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.au = load float, ptr %i.ab, align 4, !tbaa !196
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 9224
  %i.aw = load float, ptr %i.av, align 8, !tbaa !195
  %i.ax = fcmp ogt float %i.au, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ay = load float, ptr %3, align 4, !tbaa !237
  %i.az = load float, ptr %i.aq, align 4, !tbaa !238
  %i.ba = fcmp olt float %i.ay, %i.az
  br i1 %i.ba, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.i
  %i.bb = load float, ptr %i.aa, align 4, !tbaa !238
  %i.bc = load float, ptr %i.ao, align 4, !tbaa !237
  %i.bd = fcmp ogt float %i.bb, %i.bc
  br i1 %i.bd, label %.thread, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

.thread:                                          ; preds = %_ZNK6ImRect8OverlapsERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.be = load i8, ptr %1, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  store i8 %i.be, ptr %i.a, align 1, !tbaa !231
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bf = load i8, ptr %1, align 1, !tbaa !231, !range !184, !noundef !185 ; 3 uses
  store i8 %i.bf, ptr %i.a, align 1, !tbaa !231
  br i1 %.not, label %bb.v, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bg = phi i8 [ %i.be, %.thread ], [ %i.bf, %bb.j ]
  %i.bh = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 9304
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !257 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 82
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !262, !range !184, !noundef !185
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !263 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 7808
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !264 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !265 ; 2 uses
  %.not.i = icmp eq i8 %i.bs, -1
  %i.bt = icmp eq i8 %i.bs, 1
  %i.bu = zext i1 %i.bt to i8
  %.045.i = select i1 %.not.i, i8 %i.bg, i8 %i.bu ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 83
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !266, !range !184, !noundef !185
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 86 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !267, !range !184, !noundef !185 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 8684
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !268
  %i.cd = icmp eq i32 %i.cc, %i.l
  br i1 %i.cd, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.by, align 2, !tbaa !267
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !270
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %bb.p, label %.critedge.thread.i

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %i.ce, align 8, !tbaa !270
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i8 %.045.i, ptr %i.ch, align 4, !tbaa !271
  br label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !270
  %i.ck = icmp eq i64 %i.cj, %i.bq
  br i1 %i.ck, label %.critedge.thread.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 85
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !272, !range !184, !noundef !185
  %.not48.i = icmp eq i8 %i.cm, %i.bz
  br i1 %.not48.i, label %bb.r, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.q, %.critedge.i, %bb.p, %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !271
  %i.cp = icmp ne i8 %i.co, 0
  %i.cq = zext i1 %i.cp to i8
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 76
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !273
  %i.ct = and i32 %i.cs, 4096
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !274
  %i.cx = and i32 %i.cw, 16
  %i.cy = icmp eq i32 %i.cx, 0
  %spec.select.i = select i1 %i.cy, i8 0, i8 %.045.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.critedge.thread.i, %bb.l
  %.2.i = phi i8 [ %.045.i, %bb.l ], [ %i.cq, %.critedge.thread.i ], [ %.045.i, %bb.r ], [ %spec.select.i, %bb.s ]
  store i8 %.2.i, ptr %i.a, align 1, !tbaa !231
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.cz = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.da = zext i1 %i.cz to i8
  store i8 %i.da, ptr %i.d, align 1, !tbaa !231
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_i(i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef 1048576)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !231, !range !184
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.db = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.dc = zext i1 %i.db to i8
  store i8 %i.dc, ptr %i.d, align 1, !tbaa !231
  %i.dd = zext i1 %i.db to i8
  %spec.select = xor i8 %i.bf, %i.dd
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.de = phi i8 [ %spec.select, %bb.v ], [ %.pre, %bb.u ] ; 3 uses
  %i.df = load i8, ptr %1, align 1, !tbaa !231, !range !184, !noundef !185
  %.not69 = icmp eq i8 %i.df, %i.de
  br i1 %.not69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %i.de, ptr %1, align 1, !tbaa !231
  store i8 1, ptr %i.d, align 1, !tbaa !231
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.l)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dg = extractelement <2 x float> %i.q, i64 0
  %i.dh = fadd float %i.o, %i.dg                  ; 3 uses
  %i.di = extractelement <2 x float> %i.q, i64 1
  %i.dj = fadd float %i.o, %i.di                  ; 2 uses
  %i.dk = load i32, ptr %i.ai, align 4, !tbaa !255
  %i.dl = and i32 %i.dk, 4096
  %i.dm = icmp ne i32 %i.dl, 0                    ; 3 uses
  br i1 %i.ah, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
end_hunk_1
begin_hunk_2_@_ZN5ImGui13CheckboxFlagsEPKcPjj:bb.a
  %i.c = and i32 %i.b, %2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, %2                     ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !231
  %i.f = icmp eq i32 %i.c, 0
  %or.cond.not.i = or i1 %i.f, %i.d
  br i1 %or.cond.not.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 7796 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !306
  %i.j = or i32 %i.i, 4096
  store i32 %i.j, ptr %i.h, align 4, !tbaa !306
  %i.k = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIjEEbPKcPT_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.l, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIjEEbPKcPT_S3_.exit

bb.c:                                             ; preds = %bb.b, %.split.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 4, !tbaa !208
  %i.p = or i32 %i.o, %2
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.q = xor i32 %2, -1
  %i.r = load i32, ptr %1, align 4, !tbaa !208
  %i.s = and i32 %i.r, %i.q
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  store i32 %.sink.i, ptr %1, align 4, !tbaa !208
  br label %_ZN5ImGui14CheckboxFlagsTIjEEbPKcPT_S3_.exit

_ZN5ImGui14CheckboxFlagsTIjEEbPKcPT_S3_.exit:     ; preds = %.split.i, %bb.b, %.sink.split.i
  %.0.in16.i = phi i1 [ false, %.split.i ], [ false, %bb.b ], [ true, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i1 %.0.in16.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPxx(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = load i64, ptr %1, align 8, !tbaa !249
  %i.c = and i64 %i.b, %2                         ; 2 uses
  %i.d = icmp eq i64 %i.c, %2                     ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !231
  %i.f = icmp eq i64 %i.c, 0
  %or.cond.not.i = or i1 %i.f, %i.d
  br i1 %or.cond.not.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 7796 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !306
  %i.j = or i32 %i.i, 4096
  store i32 %i.j, ptr %i.h, align 4, !tbaa !306
  %i.k = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIxEEbPKcPT_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.l, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIxEEbPKcPT_S3_.exit

bb.c:                                             ; preds = %bb.b, %.split.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !249
  %i.p = or i64 %i.o, %2
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.q = xor i64 %2, -1
  %i.r = load i64, ptr %1, align 8, !tbaa !249
  %i.s = and i64 %i.r, %i.q
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  store i64 %.sink.i, ptr %1, align 8, !tbaa !249
  br label %_ZN5ImGui14CheckboxFlagsTIxEEbPKcPT_S3_.exit

_ZN5ImGui14CheckboxFlagsTIxEEbPKcPT_S3_.exit:     ; preds = %.split.i, %bb.b, %.sink.split.i
  %.0.in16.i = phi i1 [ false, %.split.i ], [ false, %bb.b ], [ true, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i1 %.0.in16.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPyy(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = load i64, ptr %1, align 8, !tbaa !249
  %i.c = and i64 %i.b, %2                         ; 2 uses
  %i.d = icmp eq i64 %i.c, %2                     ; 2 uses
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !231
  %i.f = icmp eq i64 %i.c, 0
  %or.cond.not.i = or i1 %i.f, %i.d
  br i1 %or.cond.not.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 7796 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !306
  %i.j = or i32 %i.i, 4096
  store i32 %i.j, ptr %i.h, align 4, !tbaa !306
  %i.k = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.k, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIyEEbPKcPT_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %i.l, label %bb.c, label %_ZN5ImGui14CheckboxFlagsTIyEEbPKcPT_S3_.exit

bb.c:                                             ; preds = %bb.b, %.split.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !249
  %i.p = or i64 %i.o, %2
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.q = xor i64 %2, -1
  %i.r = load i64, ptr %1, align 8, !tbaa !249
  %i.s = and i64 %i.r, %i.q
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.p, %bb.d ], [ %i.s, %bb.e ]
  store i64 %.sink.i, ptr %1, align 8, !tbaa !249
  br label %_ZN5ImGui14CheckboxFlagsTIyEEbPKcPT_S3_.exit

_ZN5ImGui14CheckboxFlagsTIyEEbPKcPT_S3_.exit:     ; preds = %.split.i, %bb.b, %.sink.split.i
  %.0.in16.i = phi i1 [ false, %.split.i ], [ false, %bb.b ], [ true, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i1 %.0.in16.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImRect, align 8             ; 7 uses
  %4 = alloca %struct.ImVec2, align 8             ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 6 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.k = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.l = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.k, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %i.m = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.o = load <2 x i32>, ptr %i.n, align 8        ; 2 uses
  %i.p = bitcast <2 x i32> %i.o to <2 x float>    ; 5 uses
  %i.q = insertelement <2 x float> poison, float %i.m, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fadd <2 x float> %i.r, %i.p              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %.sroa.016.0.vec.extract = extractelement <2 x float> %i.l, i64 0 ; 2 uses
  %i.t = fcmp ogt float %.sroa.016.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.v = load float, ptr %i.u, align 4, !tbaa !204
  %i.w = fadd float %.sroa.016.0.vec.extract, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.x = phi float [ %i.w, %bb.c ], [ 0.000000e+00, %bb.b ]
  %7 = fadd float %i.m, %i.x
  %.sroa.016.4.vec.extract = extractelement <2 x float> %i.l, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3288 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !203 ; 2 uses
  store <2 x i32> %i.o, ptr %3, align 8, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.z, float 2.000000e+00, float %.sroa.016.4.vec.extract)
  %i.ac = insertelement <2 x float> poison, float %7, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fadd <2 x float> %i.ad, %i.p            ; 2 uses
  store <2 x float> %i.ae, ptr %i.aa, align 8, !tbaa !190
  %i.af = fsub <2 x float> %i.ae, %i.p
  store <2 x float> %i.af, ptr %2, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.ag = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.j, ptr noundef null, i32 noundef 0)
  br i1 %i.ag, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ah = fadd <2 x float> %i.s, %i.p
  %i.ai = fmul <2 x float> %i.ah, splat (float 5.000000e-01)
  %i.aj = fadd <2 x float> %i.ai, splat (float 5.000000e-01)
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>
  %i.al = sitofp <2 x i32> %i.ak to <2 x float>
  store <2 x float> %i.al, ptr %4, align 8, !tbaa !190
  %i.am = fadd float %i.m, -1.000000e+00
  %i.an = fmul float %i.am, 5.000000e-01          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ao = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.j, i32 noundef 0, float noundef -1.000000e+00)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !202
  %i.ar = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, float noundef %i.an) ; 3 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !202
  %i.at = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = load i8, ptr %i.a, align 1, !range !184
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.au, i32 9, i32 8
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 7
  %i.az = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ay, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.an, i32 noundef %i.az, i32 noundef %i.ar)
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = fdiv float %i.m, 6.000000e+00
  %i.bb = fptosi float %i.ba to i32
  %i.bc = sitofp i32 %i.bb to float               ; 2 uses
  %i.bd = fcmp ole float %i.bc, 1.000000e+00
  %i.be = select i1 %i.bd, float 1.000000e+00, float %i.bc
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !202
  %i.bg = fsub float %i.an, %i.be
  %i.bh = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 18, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.bg, i32 noundef %i.bh, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 3296 ; 3 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !307
  %i.bk = fcmp ogt float %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.bm = load <2 x float>, ptr %4, align 8, !tbaa !190
  %i.bn = fadd <2 x float> %i.bm, splat (float 1.000000e+00)
  store <2 x float> %i.bn, ptr %5, align 8
  %i.bo = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 6, float noundef 1.000000e+00)
  %i.bp = load float, ptr %i.bi, align 8, !tbaa !307
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.bl, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef %i.an, i32 noundef %i.bo, i32 noundef %i.ar, float noundef %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !202
  %i.br = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 5, float noundef 1.000000e+00)
  %i.bs = load float, ptr %i.bi, align 8, !tbaa !307
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.an, i32 noundef %i.br, i32 noundef %i.ar, float noundef %i.bs)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !204
  %i.bv = extractelement <2 x float> %i.s, i64 0
  %i.bw = fadd float %i.bv, %i.bu
  %i.bx = load float, ptr %i.y, align 8, !tbaa !203
  %i.by = extractelement <2 x float> %i.p, i64 1
  %i.bz = fadd float %i.bx, %i.by
  store float %i.bw, ptr %6, align 8, !tbaa !194
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !197
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 10264
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !191, !range !184, !noundef !185
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.str.9..str.10 = select i1 %1, ptr @.str.9, ptr @.str.10
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %6, ptr noundef nonnull %.str.9..str.10, ptr noundef null)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload = load <2 x float>, ptr %6, align 8, !tbaa !190
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0.0.copyload, ptr noundef %0, ptr noundef %i.k, i1 noundef zeroext false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o
  %.0 = phi i1 [ %i.ao, %bb.o ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  %.1 = phi i1 [ %.0, %bb.p ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224), float noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !208
  %i.b = icmp eq i32 %i.a, %2
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %0, i1 noundef zeroext %i.b) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %1, align 4, !tbaa !208
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11ProgressBarEfRK6ImVec2PKc(float noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 16            ; 13 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 206
  store i8 1, ptr %i.e, align 2, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !183, !range !184, !noundef !185
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %.sroa.015.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !190
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4568
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3288 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.i, align 8        ; 3 uses
  %i.m = bitcast <2 x i32> %i.l to <2 x float>
  %i.n = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.o = load float, ptr %i.j, align 8, !tbaa !205
  %i.p = load float, ptr %i.k, align 8, !tbaa !203
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 2.000000e+00, float %i.o)
  %i.r = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.015.0.copyload, float noundef %i.n, float noundef %i.q) ; 2 uses
  store <2 x float> %i.r, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.s = fadd <2 x float> %i.r, %i.m
  %i.t = extractelement <2 x i32> %i.l, i64 0
  store i32 %i.t, ptr %4, align 16, !tbaa !190
  %.sroa_idx52 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = extractelement <2 x i32> %i.l, i64 1
  store i32 %i.u, ptr %.sroa_idx52, align 4, !tbaa !190
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store <2 x float> %i.s, ptr %i.v, align 8, !tbaa !190
  %i.w = load float, ptr %i.k, align 8, !tbaa !203
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
  %.sroa.07.0.copyload = load <2 x float>, ptr %4, align 16, !tbaa !190
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.v, align 8, !tbaa !190
  %i.ap = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 3292 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.ap, i1 noundef zeroext true, float noundef %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 3296
  %i.at = load float, ptr %i.as, align 8, !tbaa !307
  %i.au = load <4 x float>, ptr %4, align 16, !tbaa !190 ; 2 uses
  %i.av = insertelement <4 x float> poison, float %i.at, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ax = fadd <4 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = fsub <4 x float> %i.au, %i.aw           ; 2 uses
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  store <4 x float> %i.az, ptr %4, align 16, !tbaa !190
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !202
  %i.bi = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 44, float noundef 1.000000e+00)
  %i.bj = load float, ptr %i.aq, align 4, !tbaa !233
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
  %i.br = load float, ptr %4, align 16, !tbaa !237 ; 2 uses
  %i.bs = load float, ptr %i.v, align 8, !tbaa !238 ; 2 uses
  %i.bt = fadd float %i.br, %i.bs
  %i.bu = fsub float %i.bt, %i.bp
  %i.bv = fmul float %i.bu, 5.000000e-01
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 3300
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !308
  %i.by = fadd float %i.be, %i.bx
  %.pre = load float, ptr %4, align 16, !tbaa !237
  %.pre59 = load float, ptr %i.v, align 8, !tbaa !238
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = phi float [ %i.bs, %bb.l ], [ %.pre59, %bb.m ]
  %i.ca = phi float [ %i.br, %bb.l ], [ %.pre, %bb.m ] ; 2 uses
  %i.cb = phi float [ %i.bv, %bb.l ], [ %i.by, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.cc = fsub float %i.bz, %i.bp
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 3308
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !204
  %i.cf = fsub float %i.cc, %i.ce                 ; 2 uses
  %i.cg = fcmp olt float %i.cb, %i.ca
  %i.ch = fcmp ogt float %i.cb, %i.cf
  %i.ci = select i1 %i.ch, float %i.cf, float %i.cb
  %i.cj = select i1 %i.cg, float %i.ca, float %i.ci
  %i.ck = load float, ptr %.sroa_idx52, align 4, !tbaa !195
  store float %i.cj, ptr %6, align 4, !tbaa !194
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %7, align 8, !tbaa !190
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
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.j = load float, ptr %i.i, align 4, !tbaa !309 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4568 ; 2 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !205 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3284 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.o = load float, ptr %i.n, align 8, !tbaa !203
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float %i.l) ; 2 uses
  %i.q = fcmp olt float %i.j, %i.p
  %i.r = select i1 %i.q, float %i.j, float %i.p   ; 2 uses
  %i.s = fcmp oge float %i.r, %i.l
  %i.t = select i1 %i.s, float %i.r, float %i.l   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.u = load <2 x float>, ptr %i.h, align 4, !tbaa !190 ; 3 uses
  %i.v = insertelement <2 x float> poison, float %i.l, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1
  %i.x = fadd <2 x float> %i.u, %i.w              ; 2 uses
  store <2 x float> %i.u, ptr %1, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.x, ptr %i.y, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.z = fsub <2 x float> %i.x, %i.u
  store <2 x float> %i.z, ptr %0, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  %i.aa = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !202
  %i.ae = load float, ptr %i.m, align 4, !tbaa !206
  %i.af = load float, ptr %i.k, align 8, !tbaa !205
  %2 = fmul float %i.t, 5.000000e-01
  %3 = call float @llvm.fmuladd.f32(float %i.af, float 5.000000e-01, float %i.ae)
  %i.ag = load <2 x float>, ptr %1, align 8, !tbaa !190
  %i.ah = insertelement <2 x float> poison, float %3, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %2, i64 1
  %i.aj = fadd <2 x float> %i.ag, %i.ai
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.ad, <2 x float> %i.aj, i32 noundef %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ak = load float, ptr %i.m, align 4, !tbaa !206
  %i.al = fmul float %i.ak, 2.000000e+00
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.al)
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
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 206
  store i8 1, ptr %i.i, align 2, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 209
  %i.k = load i8, ptr %i.j, align 1, !tbaa !183, !range !184, !noundef !185
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.h, ptr noundef %0, ptr noundef null) ; 3 uses
  %i.n = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.p = load float, ptr %i.o, align 8, !tbaa !186 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 284
  %i.r = load float, ptr %i.q, align 4, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.t = load float, ptr %i.s, align 8, !tbaa !188
  %i.u = fadd float %i.r, %i.t                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.v = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.n, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  store <2 x float> %i.v, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.w = insertelement <2 x float> poison, float %i.p, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.u, i64 1
  %i.y = fadd <2 x float> %i.x, %i.v
  store float %i.p, ptr %2, align 8, !tbaa !190
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.u, ptr %.sroa_idx22, align 4, !tbaa !190
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> %i.y, ptr %i.z, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef 0.000000e+00)
  %i.aa = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.m, ptr noundef null, i32 noundef 0)
  br i1 %i.aa, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ab = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.m, i32 noundef 0, float noundef -1.000000e+00)
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 4348 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !236
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.af = load float, ptr %3, align 4, !tbaa !310
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !311
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !312
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.af, float noundef %i.ah, float noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.ak = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.al = or i8 %i.ak, %i.ac
  %or.cond.not = icmp eq i8 %i.al, 0
  %.pre = load float, ptr %i.c, align 4, !tbaa !190 ; 2 uses
  %.pre24 = load float, ptr %i.e, align 4, !tbaa !190 ; 2 uses
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = trunc nuw i8 %i.ak to i1
  %i.an = select i1 %i.am, float 4.000000e-01, float 3.000000e-01
  %i.ao = fadd float %i.an, %.pre24               ; 3 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %i.aq = fcmp ogt float %i.ao, 1.000000e+00
  %i.ar = select i1 %i.aq, float 1.000000e+00, float %i.ao
  %i.as = select i1 %i.ap, float 0.000000e+00, float %i.ar ; 2 uses
  store float %i.as, ptr %i.e, align 4, !tbaa !190
  %i.at = fadd float %.pre, 2.000000e-02
  %i.au = call float @fmodf(float noundef %i.at, float noundef 1.000000e+00) #41 ; 2 uses
  store float %i.au, ptr %i.c, align 4, !tbaa !190
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.av = phi float [ %.pre24, %bb.e ], [ %i.as, %bb.f ]
  %i.aw = phi float [ %.pre, %bb.e ], [ %i.au, %bb.f ]
  %i.ax = load float, ptr %i.d, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.aw, float noundef %i.ax, float noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
  %i.ay = load float, ptr %i.e, align 4, !tbaa !190
  %i.az = fadd float %i.ay, -2.000000e-01         ; 3 uses
  %i.ba = fcmp olt float %i.az, 0.000000e+00
  %i.bb = fcmp ogt float %i.az, 1.000000e+00
  %i.bc = select i1 %i.bb, float 1.000000e+00, float %i.az
  %i.bd = select i1 %i.ba, float 0.000000e+00, float %i.bc ; 2 uses
  store float %i.bd, ptr %i.e, align 4, !tbaa !190
  %i.be = load float, ptr %i.c, align 4, !tbaa !190
  %i.bf = load float, ptr %i.d, align 4, !tbaa !190
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.be, float noundef %i.bf, float noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !196
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 4560
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !313
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !641
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 4576
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !314
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
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !202
  %i.cc = load float, ptr %2, align 8, !tbaa !237
  %i.cd = load float, ptr %i.z, align 8, !tbaa !238
  %i.ce = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 4528
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !239
  %i.ch = fptosi float %i.cg to i32
  %i.ci = sitofp i32 %i.ch to float
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.cb, float noundef %i.cc, float noundef %i.cd, float noundef %i.bz, i32 noundef %i.ce, float noundef %i.ci)
  %i.cj = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 0, i32 noundef %i.cj)
  %.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8, !tbaa !190
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
}

declare void @_ZN5ImGui14SetMouseCursorEi(i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef, float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef, float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui14PushStyleColorEij(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = icmp eq ptr %1, null
end_hunk_2
