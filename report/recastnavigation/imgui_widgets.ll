Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui15TextLinkOpenURLEPKcS1_:bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noundef %spec.select) #36 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9992
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = select i1 %.not.i, ptr @.str.132, ptr %i.i
  tail call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull %i.j, ptr noundef %spec.select) #36
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 1) #36
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10000
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201  ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  %i.o = select i1 %.not.i12, ptr @.str.132, ptr %i.n
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef nonnull %i.o, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef %spec.select) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN5ImGui8EndPopupEv() #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret i1 %i.c
}

declare void @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef %0, ptr noundef null, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

declare void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui8EndPopupEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui7SpacingEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !193
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !193 ; 2 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !193
  %i.k = fadd <2 x float> %i.i, %i.j
  store <2 x float> %i.i, ptr %1, align 8, !tbaa !193
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.k, ptr %i.l, align 8, !tbaa !193
  tail call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00) #36
  %i.m = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui7NewLineEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !297
  store i32 1, ptr %i.h, align 4, !tbaa !297
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.j, align 8, !tbaa !298
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.l = load float, ptr %i.k, align 4, !tbaa !291
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !193
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.o = load float, ptr %i.n, align 8, !tbaa !208
  store float 0.000000e+00, ptr %1, align 4, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.o, ptr %i.p, align 4, !tbaa !200
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.i, ptr %i.h, align 4, !tbaa !297
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui23AlignTextToFramePaddingEv() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 324 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !291 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.k = load float, ptr %i.j, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3216
  %i.m = load float, ptr %i.l, align 8, !tbaa !236 ; 3 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 2.000000e+00, float %i.k) ; 2 uses
  %i.o = fcmp oge float %i.i, %i.n
  %i.p = select i1 %i.o, float %i.i, float %i.n
  store float %i.p, ptr %i.h, align 4, !tbaa !291
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !191 ; 2 uses
  %i.s = fcmp oge float %i.r, %i.m
  %i.t = select i1 %i.s, float %i.r, float %i.m
  store float %i.t, ptr %i.q, align 8, !tbaa !191
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui11SeparatorExEif(i32 noundef %0, float noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.ImRect, align 16            ; 7 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 4             ; 9 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %0, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.k = load float, ptr %i.j, align 4, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.l = load <2 x float>, ptr %i.i, align 8, !tbaa !193
  %6 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float poison>, float %1, i64 2
  %8 = insertelement <4 x float> %7, float %i.k, i64 3
  %9 = fadd <4 x float> %6, %8
  store <4 x float> %9, ptr %2, align 16, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.m = insertelement <2 x float> <float poison, float 0.000000e+00>, float %1, i64 0
  store <2 x float> %i.m, ptr %3, align 8, !tbaa !193
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.n = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 0, ptr noundef null, i32 noundef 0) #36
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205
  %i.q = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00) #36
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.q, float noundef 0.000000e+00, i32 noundef 0) #36
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.s = load i8, ptr %i.r, align 8, !tbaa !194, !range !187, !noundef !188
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.12) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.u = and i32 %0, 1
  %.not39 = icmp eq i32 %i.u, 0
  br i1 %.not39, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.w = load float, ptr %i.v, align 8, !tbaa !189 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.y = load float, ptr %i.x, align 8, !tbaa !299 ; 2 uses
  %i.z = and i32 %0, 4
  %.not40 = icmp eq i32 %i.z, 0
  br i1 %.not40, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !300 ; 2 uses
  %.not41 = icmp eq ptr %i.ab, null
  br i1 %.not41, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !241 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.af = load float, ptr %i.ae, align 4, !tbaa !622
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !243
  %i.aj = fadd float %i.ad, %i.ai
  tail call void @_ZN5ImGui21PushColumnsBackgroundEv() #36
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.j, %bb.i
  %.not4153 = phi i1 [ false, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  %i.ak = phi ptr [ %i.ab, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  %.036 = phi float [ %i.ag, %bb.j ], [ %i.w, %bb.i ], [ %i.w, %bb.h ]
  %.0 = phi float [ %i.aj, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  %i.al = fcmp oeq float %1, 1.000000e+00
  %i.am = select i1 %i.al, float 0.000000e+00, float %1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !190 ; 2 uses
  %i.ap = fadd float %1, %i.ao
  store float %.036, ptr %4, align 4, !tbaa !193
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.ao, ptr %.sroa_idx43, align 4, !tbaa !193
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %.0, ptr %i.aq, align 4, !tbaa !193
  %.sroa_idx42 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.ap, ptr %.sroa_idx42, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store float 0.000000e+00, ptr %5, align 4, !tbaa !197
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.am, ptr %i.ar, align 4, !tbaa !200
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.as = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null, i32 noundef 0) #36
  br i1 %i.as, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !205
  %i.av = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00) #36
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.aq, i32 noundef %i.av, float noundef 0.000000e+00, i32 noundef 0) #36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !194, !range !187, !noundef !188
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef null) #36
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.thread
  br i1 %.not4153, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5ImGui20PopColumnsBackgroundEv() #36
  %i.az = load float, ptr %i.an, align 4, !tbaa !190
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float %i.az, ptr %i.ba, align 4, !tbaa !626
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.p

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %.critedge, %bb.g, %bb.o, %bb.a
  ret void
}

declare void @_ZN5ImGui7LogTextEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN5ImGui21PushColumnsBackgroundEv() local_unnamed_addr #3

declare void @_ZN5ImGui20PopColumnsBackgroundEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !186, !range !187, !noundef !188
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  %i.h = load i32, ptr %i.g, align 4, !tbaa !297
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 2, i32 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !300
  %.not = icmp eq ptr %i.l, null
  %i.m = or disjoint i32 %i.j, 4
  %spec.select = select i1 %.not, i32 %i.j, i32 %i.m
  tail call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select, float noundef 1.000000e+00)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui15SeparatorTextExEjPKcS1_f(i32 noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImRect, align 4             ; 7 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec2, align 4            ; 5 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.d = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, float noundef -1.000000e+00) #36 ; 3 uses
  store <2 x float> %i.d, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %.sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.g = load i32, ptr %.sroa_idx68, align 4      ; 2 uses
  %i.h = bitcast i32 %i.f to float                ; 3 uses
  %i.i = bitcast i32 %i.g to float                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3372
  %.sroa.0.0.copyload = load float, ptr %i.j, align 4, !tbaa !193 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3376
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3360
  %i.l = load float, ptr %i.k, align 8, !tbaa !627 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.m = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.n = fadd float %3, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float 2.000000e+00, float %i.n)
  %i.p = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float 2.000000e+00, float %i.p) ; 2 uses
  %i.r = fcmp oge float %i.q, %i.l
  %i.s = select i1 %i.r, float %i.q, float %i.l   ; 2 uses
  store float %i.o, ptr %5, align 4, !tbaa !197
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.s, ptr %i.t, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.v = load i32, ptr %i.u, align 8, !tbaa !299
  %i.w = fadd float %i.s, %i.i                    ; 2 uses
  store i32 %i.f, ptr %6, align 4, !tbaa !193
  %.sroa_idx67 = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %i.g, ptr %.sroa_idx67, align 4, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.v, ptr %i.x, align 4, !tbaa !193
  %.sroa_idx66 = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store float %i.w, ptr %.sroa_idx66, align 4, !tbaa !193
  %i.y = fsub float %i.w, %i.i
  %i.z = fsub float %i.y, %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3368
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !628
end_hunk_0
