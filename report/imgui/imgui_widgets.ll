inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui14CollapseButtonEjRK6ImVec2:bb.a
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

bb.f:                                             ; preds = %bb.d
  %i.ap = fsub float %i.g, %i.u                   ; 2 uses
  %i.aq = fsub float %i.ap, %i.p                  ; 2 uses
  %i.ar = fcmp oge float %i.b, %i.aq
  %i.as = select i1 %i.ar, float %i.b, float %i.aq
  %i.at = fadd float %.sroa.4.0.copyload, %i.ag
  %i.au = fsub float %.sroa.6.0.copyload, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink39 = phi float [ %i.as, %bb.f ], [ %i.ai, %bb.e ]
  %.sink38 = phi float [ %i.at, %bb.f ], [ %i.an, %bb.e ]
  %.sink37 = phi float [ %i.ap, %bb.f ], [ %i.ao, %bb.e ]
  %.sink = phi float [ %i.au, %bb.f ], [ %i.ak, %bb.e ]
  %.sroa.0.0.vec.insert29 = insertelement <2 x float> poison, float %.sink39, i64 0
  %.sroa.0.4.vec.insert31 = insertelement <2 x float> %.sroa.0.0.vec.insert29, float %.sink38, i64 1
  %.sroa.5.8.vec.insert34 = insertelement <2 x float> poison, float %.sink37, i64 0
  %.sroa.5.12.vec.insert36 = insertelement <2 x float> %.sroa.5.8.vec.insert34, float %.sink, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert31, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5.12.vec.insert36, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ImRect, align 8             ; 5 uses
  %5 = alloca %struct.ImRect, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load <2 x float>, ptr %i.c, align 8, !tbaa !171 ; 2 uses
  %i.f = load <2 x float>, ptr %i.d, align 8, !tbaa !171
  %i.g = fadd <2 x float> %i.e, %i.f
  store <2 x float> %i.e, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <2 x float> %i.g, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !243  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load <2 x float>, ptr %i.k, align 8, !tbaa !171 ; 2 uses
  %i.n = load <2 x float>, ptr %i.l, align 8, !tbaa !171
  %i.o = fadd <2 x float> %i.m, %i.n
  store <2 x float> %i.m, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %i.o, ptr %i.p, align 8
  %6 = sext i32 %3 to i64                         ; 6 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %6
  %i.r = load float, ptr %i.q, align 4, !tbaa !171 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.t = load float, ptr %i.s, align 4, !tbaa !171
  %i.u = fcmp oeq float %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !171 ; 2 uses
  %i.x = fcmp ule float %i.w, %i.r
  %i.y = fsub float %i.w, %2
  %i.z = fcmp ugt float %i.y, %i.r
  %or.cond = or i1 %i.x, %i.z
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.r, ptr %i.v, align 4, !tbaa !171
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %6
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !171 ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %6
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !171
  %i.ae = fcmp oeq float %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %6 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !171 ; 2 uses
  %i.ai = fcmp uge float %i.ah, %i.ab
  %i.aj = fadd float %2, %i.ah
  %i.ak = fcmp ult float %i.aj, %i.ab
  %or.cond33 = or i1 %i.ai, %i.ak
  br i1 %or.cond33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.ab, ptr %i.ag, align 4, !tbaa !171
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 6 uses
  %2 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 13 uses
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %.str.4..str.5.i = select i1 %i.e, ptr @.str.4, ptr @.str.5
  %i.f = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.d, ptr noundef nonnull %.str.4..str.5.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load <2 x float>, ptr %i.g, align 8, !tbaa !171 ; 4 uses
  %i.j = load <2 x float>, ptr %i.h, align 8, !tbaa !171
  %i.k = fadd <2 x float> %i.i, %i.j              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.l, align 8, !tbaa !171
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 556
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !171
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !171
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 564
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !171
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.n = xor i32 %0, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !171 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.s = load float, ptr %i.r, align 4, !tbaa !240
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 5.000000e-01, float 5.000000e-01)
  %i.u = fptosi float %i.t to i32
  %i.v = sitofp i32 %i.u to float                 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !241  ; 2 uses
  %i.y = and i32 %i.x, 1024
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3296
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !242
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.000000e-01, float 5.000000e-01)
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sitofp i32 %i.ad to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = and i32 %i.x, 1
  %.not26.i = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not26.i, float 0.000000e+00, float %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi float [ %i.ae, %bb.b ], [ %i.ag, %bb.c ]
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = fadd float %.sroa.0.0.copyload.i, %i.v
  %i.aj = extractelement <2 x float> %i.i, i64 1
  %i.ak = fadd float %i.aj, %i.v                  ; 2 uses
  %i.al = extractelement <2 x float> %i.k, i64 1
  %i.am = fsub float %i.al, %i.v                  ; 2 uses
  %i.an = fsub float %i.am, %i.q                  ; 2 uses
  %i.ao = fcmp oge float %i.ak, %i.an
  %i.ap = select i1 %i.ao, float %i.ak, float %i.an
  %i.aq = fsub float %.sroa.5.0.copyload.i, %i.v
  br label %_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = extractelement <2 x float> %i.k, i64 0
  %i.as = fsub float %i.ar, %i.v                  ; 2 uses
  %i.at = fsub float %i.as, %i.q                  ; 2 uses
  %i.au = extractelement <2 x float> %i.i, i64 0  ; 2 uses
  %i.av = fcmp oge float %i.au, %i.at
  %i.aw = select i1 %i.av, float %i.au, float %i.at
  %i.ax = fadd float %.sroa.4.0.copyload.i, %i.ah
  %i.ay = fsub float %.sroa.6.0.copyload.i, %i.v
  br label %_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis.exit

_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis.exit: ; preds = %bb.e, %bb.f
  %.sink39.i = phi float [ %i.aw, %bb.f ], [ %i.ai, %bb.e ]
  %.sink38.i = phi float [ %i.ax, %bb.f ], [ %i.ap, %bb.e ]
  %.sink37.i = phi float [ %i.as, %bb.f ], [ %i.aq, %bb.e ]
  %.sink.i = phi float [ %i.ay, %bb.f ], [ %i.am, %bb.e ]
  %.sroa.0.0.vec.insert29.i = insertelement <2 x float> poison, float %.sink39.i, i64 0
  %.sroa.0.4.vec.insert31.i = insertelement <2 x float> %.sroa.0.0.vec.insert29.i, float %.sink38.i, i64 1
  %.sroa.5.8.vec.insert34.i = insertelement <2 x float> poison, float %.sink37.i, i64 0
  %.sroa.5.12.vec.insert36.i = insertelement <2 x float> %.sroa.5.8.vec.insert34.i, float %.sink.i, i64 1
  store <2 x float> %.sroa.0.4.vec.insert31.i, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.5.12.vec.insert36.i, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store <2 x float> %i.i, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.k, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 3240
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !244
  %i.bd = call noundef i32 @_ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.be = sext i32 %0 to i64                      ; 5 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !171
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !171
  %i.bj = fsub float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !171
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.be
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !171
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float 2.000000e+00, float %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.be ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !171
  %i.bu = fptosi float %i.bt to i64
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !245
  %i.bv = fptosi float %i.bj to i64
  %i.bw = fptosi float %i.bq to i64
  %i.bx = call noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.f, i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bv, i64 noundef %i.bw, i32 noundef %i.bd) ; 0 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !245
  %i.bz = sitofp i64 %i.by to float
  store float %i.bz, ptr %i.bs, align 4, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

declare noundef i32 @_ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ImRect, align 8             ; 5 uses
  %8 = alloca %struct.ImRect, align 8             ; 5 uses
  %9 = alloca %struct.ImRect, align 16            ; 6 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 4            ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.ImRect, align 4            ; 7 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !164, !range !165, !noundef !166
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !171
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !171
  %i.l = fsub <2 x float> %i.j, %i.k              ; 3 uses
  %i.m = fcmp ole <2 x float> %i.l, zeroinitializer
  %i.n = bitcast <2 x i1> %i.m to i2
  %or.cond.not = icmp eq i2 %i.n, 0
  br i1 %or.cond.not, label %bb.c, label %.thread133

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %2, 1
  %i.p = extractelement <2 x float> %i.l, i64 0   ; 4 uses
  %i.q = extractelement <2 x float> %i.l, i64 1   ; 4 uses
  %i.r = fcmp olt float %i.q, %i.p
  %or.cond126 = and i1 %i.o, %i.r
  br i1 %or.cond126, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = fmul float %i.p, 2.000000e+00            ; 2 uses
  %i.t = fcmp oge float %i.s, 1.000000e+00
  %i.u = select i1 %i.t, float %i.s, float 1.000000e+00
  %i.v = fdiv float %i.q, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 1.000000e+00
  %i.x = select i1 %i.w, float 1.000000e+00, float %i.v ; 2 uses
  %i.y = fcmp ugt float %i.x, 0.000000e+00
  br i1 %i.y, label %.thread, label %.thread133

.thread:                                          ; preds = %bb.d, %bb.c
  %.0118132 = phi float [ %i.x, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.z = fcmp oge float %.0118132, 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !231
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3348
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !246 ; 2 uses
  %i.ac = fcmp olt float %i.p, %i.q
  %i.ad = select i1 %i.ac, float %i.p, float %i.q
  %i.ae = fmul float %i.ad, 5.000000e-01          ; 2 uses
  %i.af = fcmp olt float %i.ab, %i.ae
  %i.ag = select i1 %i.af, float %i.ab, float %i.ae
  %i.ah = fptosi float %i.ag to i32
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = load <4 x float>, ptr %9, align 16, !tbaa !171 ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fadd <4 x float> %i.aj, %i.al           ; 3 uses
  %i.an = fsub <4 x float> %i.aj, %i.al           ; 3 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ao, ptr %9, align 16, !tbaa !171
  %i.ap = icmp eq i32 %2, 0                       ; 2 uses
  %i.aq = extractelement <4 x float> %i.am, i64 0 ; 3 uses
  %i.ar = extractelement <4 x float> %i.an, i64 2 ; 2 uses
  %i.as = fsub float %i.ar, %i.aq                 ; 3 uses
  %i.at = extractelement <4 x float> %i.am, i64 1 ; 3 uses
  %i.au = extractelement <4 x float> %i.an, i64 3 ; 2 uses
  %i.av = fsub float %i.au, %i.at                 ; 3 uses
  %i.aw = select i1 %i.ap, float %i.as, float %i.av ; 9 uses
  %i.ax = fcmp olt float %i.aw, 1.000000e+00
  br i1 %i.ax, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ay = tail call noundef i64 @llvm.smax.i64(i64 %5, i64 %4)
  %i.az = tail call noundef i64 @llvm.smax.i64(i64 %i.ay, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.av, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  %13 = sext i32 %2 to i64                        ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %13
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !171 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 3352
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !247 ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bd
  %i.bf = select i1 %i.be, float %i.bb, float %i.bd ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.bg = sitofp i64 %4 to float                  ; 3 uses
  %i.bh = uitofp nneg i64 %i.az to float
  %i.bi = fdiv float %i.bg, %i.bh
  %i.bj = fmul float %i.bi, %i.aw                 ; 3 uses
  %i.bk = fcmp olt float %i.bj, %i.bf
  %i.bl = fcmp ogt float %i.bj, %i.aw
  %i.bm = select i1 %i.bl, float %i.aw, float %i.bj
  %i.bn = select i1 %i.bk, float %i.bf, float %i.bm
  %i.bo = fptosi float %i.bn to i32
  %i.bp = sitofp i32 %i.bo to float               ; 4 uses
  %i.bq = fdiv float %i.bp, %i.aw                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !231
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 3240
  %i.bs = load float, ptr %i.br, align 8, !tbaa !244 ; 2 uses
  %i.bt = xor i32 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !194 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.by = load <2 x float>, ptr %i.bw, align 8, !tbaa !171 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bx, align 8, !tbaa !171
  %i.ca = fadd <2 x float> %i.by, %i.bz
  store <2 x float> %i.by, ptr %7, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %i.ca, ptr %i.cb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !243 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load <2 x float>, ptr %i.ce, align 8, !tbaa !171 ; 2 uses
  %i.ch = load <2 x float>, ptr %i.cf, align 8, !tbaa !171
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  store <2 x float> %i.cg, ptr %8, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store <2 x float> %i.ci, ptr %i.cj, align 8
  %14 = sext i32 %i.bt to i64                     ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %14
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !171 ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %14
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !171
  %i.co = fcmp oeq float %i.cl, %i.cn
  br i1 %i.co, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %14 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !171 ; 2 uses
  %i.cr = fcmp ule float %i.cq, %i.cl
  %i.cs = fsub float %i.cq, %i.bs
  %i.ct = fcmp ugt float %i.cs, %i.cl
  %or.cond.i = or i1 %i.cr, %i.ct
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.cl, ptr %i.cp, align 4, !tbaa !171
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %14
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !171 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %14
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !171
  %i.cy = fcmp oeq float %i.cv, %i.cx
  br i1 %i.cy, label %bb.i, label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %14 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !171 ; 2 uses
  %i.dc = fcmp uge float %i.db, %i.cv
  %i.dd = fadd float %i.bs, %i.db
  %i.de = fcmp ult float %i.dd, %i.cv
  %or.cond33.i = or i1 %i.dc, %i.de
  br i1 %or.cond33.i, label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.cv, ptr %i.da, align 4, !tbaa !171
  br label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit

_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i8 0, ptr %i.a, align 1, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i8 0, ptr %i.b, align 1, !tbaa !225
  %i.df = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2) ; 0 uses
  %i.dg = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 262144) ; 0 uses
  %i.dh = sub nsw i64 %5, %4
  %i.di = call noundef i64 @llvm.smax.i64(i64 %i.dh, i64 1) ; 2 uses
  %i.dj = load i64, ptr %3, align 8, !tbaa !245
  %i.dk = sitofp i64 %i.dj to float
  %i.dl = uitofp nneg i64 %i.di to float          ; 3 uses
  %i.dm = fdiv float %i.dk, %i.dl                 ; 3 uses
  %i.dn = fcmp olt float %i.dm, 0.000000e+00
  %i.do = fcmp ogt float %i.dm, 1.000000e+00
  %i.dp = select i1 %i.do, float 1.000000e+00, float %i.dm
  %i.dq = select i1 %i.dn, float 0.000000e+00, float %i.dp
  %i.dr = fsub float %i.aw, %i.bp                 ; 2 uses
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = fdiv float %i.ds, %i.aw                 ; 4 uses
  %i.du = load i8, ptr %i.a, align 1, !tbaa !225, !range !165, !noundef !166
  %i.dv = trunc nuw i8 %i.du to i1                ; 3 uses
  %or.cond3 = and i1 %i.z, %i.dv
  %i.dw = fcmp olt float %i.bq, 1.000000e+00
  %or.cond5 = select i1 %or.cond3, i1 %i.dw, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.x

bb.k:                                             ; preds = %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %13
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !171
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %13
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !171
  %i.ec = fsub float %i.eb, %i.dy
  %i.ed = fdiv float %i.ec, %i.aw                 ; 3 uses
  %i.ee = fcmp olt float %i.ed, 0.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %i.eg = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eh = select i1 %i.ee, float 0.000000e+00, float %i.eg ; 4 uses
  %i.ei = fcmp olt float %i.eh, %i.dt
  %i.ej = fadd float %i.bq, %i.dt
  %i.ek = fcmp ogt float %i.eh, %i.ej
  %i.el = zext i1 %i.ek to i32
  %i.em = select i1 %i.ei, i32 -1, i32 %i.el      ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 5440
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !224, !range !165, !noundef !166
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !248
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !249, !range !165, !noundef !166
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 301
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !203, !range !165, !noundef !166
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = trunc nsw i32 %i.em to i16
  %spec.select = select i1 %i.ev, i16 0, i16 %i.ew
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ex = phi i16 [ %spec.select, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !248
  %i.ez = icmp eq i32 %i.em, 0
  br i1 %i.ez, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 301
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !203, !range !165, !noundef !166
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = fsub float %i.eh, %i.dt
  %i.fe = fneg float %i.bq
  %i.ff = call float @llvm.fmuladd.f32(float %i.fe, float 5.000000e-01, float %i.fd)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.fg = phi float [ %i.ff, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 9828
  store float %i.fg, ptr %i.fh, align 4, !tbaa !250
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.fi = phi i16 [ %.pre, %._crit_edge ], [ %i.ex, %bb.q ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  %i.fk = icmp eq i16 %i.fi, 0
  br i1 %i.fk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 9828
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !250
  %i.fn = fsub float %i.eh, %i.fm
  %i.fo = fneg float %i.bq
  %i.fp = call float @llvm.fmuladd.f32(float %i.fo, float 5.000000e-01, float %i.fn)
  %i.fq = fsub float 1.000000e+00, %i.bq
  %i.fr = fdiv float %i.fp, %i.fq                 ; 3 uses
  %i.fs = fcmp olt float %i.fr, 0.000000e+00
  %i.ft = fcmp ogt float %i.fr, 1.000000e+00
  %i.fu = select i1 %i.ft, float 1.000000e+00, float %i.fr
  %i.fv = select i1 %i.fs, float 0.000000e+00, float %i.fu
  %i.fw = fmul float %i.fv, %i.dl
  %i.fx = fptosi float %i.fw to i64               ; 2 uses
  store i64 %i.fx, ptr %3, align 8, !tbaa !245
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.fy = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br i1 %i.fy, label %bb.u, label %._crit_edge139

._crit_edge139:                                   ; preds = %bb.t
  %.pre140 = load i64, ptr %3, align 8, !tbaa !245
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !248 ; 2 uses
  %i.ga = sext i16 %i.fz to i32
  %i.gb = icmp eq i32 %i.em, %i.ga
  %.pre141 = load i64, ptr %3, align 8, !tbaa !245 ; 2 uses
  br i1 %i.gb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gc = icmp sgt i16 %i.fz, 0
  %i.gd = fneg float %i.bg
  %i.ge = select i1 %i.gc, float %i.bg, float %i.gd
  %i.gf = fptosi float %i.ge to i64
  %i.gg = add nsw i64 %.pre141, %i.gf             ; 2 uses
  %i.gh = icmp slt i64 %i.gg, 0
  %i.gi = call i64 @llvm.smin.i64(i64 %i.gg, i64 %i.di)
  %i.gj = select i1 %i.gh, i64 0, i64 %i.gi       ; 2 uses
  store i64 %i.gj, ptr %3, align 8, !tbaa !245
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge139, %bb.u, %bb.v, %bb.s
  %i.gk = phi i64 [ %.pre140, %._crit_edge139 ], [ %.pre141, %bb.u ], [ %i.gj, %bb.v ], [ %i.fx, %bb.s ]
  %i.gl = sitofp i64 %i.gk to float
  %i.gm = fdiv float %i.gl, %i.dl                 ; 3 uses
  %i.gn = fcmp olt float %i.gm, 0.000000e+00
  %i.go = fcmp ogt float %i.gm, 1.000000e+00
  %i.gp = select i1 %i.go, float 1.000000e+00, float %i.gm
  %i.gq = select i1 %i.gn, float 0.000000e+00, float %i.gp
  %i.gr = fmul float %i.dr, %i.gq
  %i.gs = fdiv float %i.gr, %i.aw
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit
end_hunk_0
begin_hunk_1_@_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDLEFT_IMPLEP19ImGuiInputTextStatei:bb.a

_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit9: ; preds = %bb.c
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !476  ; 2 uses
  %i.q = zext nneg i32 %.010 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = tail call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.p, ptr noundef nonnull %i.r)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !476
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !572

.critedge:                                        ; preds = %bb.c, %bb.b, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit9, %bb.a, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit
  %.0.lcssa = phi i32 [ %i.k, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ], [ -1, %bb.a ], [ -1, %bb.c ], [ %i.x, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit9 ], [ %.010, %bb.b ]
  %i.z = tail call i32 @llvm.smax.i32(i32 %.0.lcssa, i32 0)
  ret i32 %i.z
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL31STB_TEXTEDIT_MOVEWORDRIGHT_IMPLEP19ImGuiInputTextStatei(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !576
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load i8, ptr %i.d, align 8, !tbaa !909, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef i32 @_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_MACEP19ImGuiInputTextStatei(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !436  ; 4 uses
  %.not.i.i = icmp slt i32 %1, %i.i
  br i1 %.not.i.i, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread.i

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread.i: ; preds = %bb.c
  %i.j = add nsw i32 %i.i, 1
  br label %_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !476  ; 2 uses
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = sext i32 %i.i to i64
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef %i.p)
  %i.r = add nsw i32 %i.q, %1                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !436 ; 5 uses
  %i.s = icmp slt i32 %i.r, %.pre.i
  br i1 %i.s, label %.lr.ph.i, label %_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit

.lr.ph.i:                                         ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i
  %.015.i = phi i32 [ %.0.i13.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i ], [ %i.r, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i ] ; 5 uses
  %i.t = call fastcc noundef i32 @_ZN5ImStbL27is_word_boundary_from_rightEP19ImGuiInputTextStatei(ptr noundef nonnull readonly %0, i32 noundef %.015.i)
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.d, label %_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = load i32, ptr %i.h, align 8, !tbaa !436  ; 3 uses
  %.not.i12.i = icmp slt i32 %.015.i, %i.u
  br i1 %.not.i12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.u, 1
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !476  ; 2 uses
  %i.x = sext i32 %.015.i to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %i.y, ptr noundef %i.aa)
  %i.ac = add nsw i32 %i.ab, %.015.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i: ; preds = %bb.f, %bb.e
  %.0.i13.i = phi i32 [ %i.v, %bb.e ], [ %i.ac, %bb.f ] ; 3 uses
  %i.ad = icmp slt i32 %.0.i13.i, %.pre.i
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit, !llvm.loop !910

_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit: ; preds = %.lr.ph.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i
  %i.ae = phi i32 [ %.pre.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i ], [ %i.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread.i ], [ %.pre.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i ], [ %.pre.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.r, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.i ], [ %i.j, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread.i ], [ %.015.i, %.lr.ph.i ], [ %.0.i13.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit14.i ]
  %i.af = call noundef i32 @llvm.smin.i32(i32 %.0.lcssa.i, i32 %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.af, %_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_WINEP19ImGuiInputTextStatei.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL25stb_textedit_find_charposEPNS_12StbFindStateEP19ImGuiInputTextStateii(ptr nofree noundef nonnull captures(none) initializes((4, 8)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 24         ; 5 uses
  %.val = load i32, ptr %i.e, align 8, !tbaa !436
  %.val.fr = freeze i32 %.val                     ; 8 uses
  %i.f = icmp eq i32 %2, %.val.fr
  %i.g = icmp ne i32 %3, 0
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !476  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store ptr null, ptr %i.d, align 8, !tbaa !182
  %i.j = load ptr, ptr %1, align 8, !tbaa !576    ; 3 uses
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !477
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4568
  %i.p = load float, ptr %i.o, align 8, !tbaa !189
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 9520
  %i.r = load float, ptr %i.q, align 8, !tbaa !490
  %i.s = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.n, float noundef %i.p, float noundef f0x7F7FFFFF, float noundef %i.r, ptr noundef %i.i, ptr noundef %i.l, ptr noundef %i.l, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 6) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.s, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !573
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.v, align 4, !tbaa !575
  %i.w = insertelement <2 x float> %i.s, float 0.000000e+00, i64 0
  store <2 x float> %i.w, ptr %i.t, align 4, !tbaa !171
  store float %.sroa.0.0.vec.extract.i, ptr %0, align 4, !tbaa !911
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !912
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 118 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = icmp sgt i32 %.val.fr, 0
  %i.ac = zext nneg i32 %.val.fr to i64
  br i1 %i.ab, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.c, %bb.g
  %.052.us = phi i32 [ %.0.us, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.0.us = phi i32 [ %i.aw, %bb.g ], [ 0, %bb.c ] ; 6 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !476 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store ptr null, ptr %i.c, align 8, !tbaa !182
  %i.ae = load ptr, ptr %1, align 8, !tbaa !576   ; 3 uses
  %i.af = sext i32 %.0.us to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.e, align 8, !tbaa !436
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 4552
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !477
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 4568
  %i.an = load float, ptr %i.am, align 8, !tbaa !189
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 9520
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !490
  %i.aq = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.al, float noundef %i.an, float noundef f0x7F7FFFFF, float noundef %i.ap, ptr noundef %i.ag, ptr noundef %i.aj, ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 6)
  %.sroa.0.4.vec.extract.i66.us = extractelement <2 x float> %i.aq, i64 1 ; 4 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ag to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.aw = add nsw i32 %.0.us, %i.av               ; 5 uses
  %i.ax = icmp slt i32 %2, %i.aw
  br i1 %i.ax, label %.split74.us, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.ay = load i8, ptr %i.z, align 2, !tbaa !543
  %i.az = icmp eq i8 %i.ay, 1
  br i1 %i.az, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !439
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !451 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = icmp eq i32 %i.bb, %i.aw
  %or.cond62.us = and i1 %i.bc, %i.bd
  br i1 %or.cond62.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val64.us = load ptr, ptr %i.y, align 8, !tbaa !476
  %4 = sext i32 %i.aw to i64
  %i.be = getelementptr i8, ptr %.val64.us, i64 %4
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !387
  %.not.us = icmp eq i8 %i.bg, 10
  br i1 %.not.us, label %bb.g, label %.split74.us

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bh = icmp eq i32 %i.aw, %.val.fr
  %i.bi = load float, ptr %i.x, align 4, !tbaa !912
  %i.bj = fadd float %.sroa.0.4.vec.extract.i66.us, %i.bi
  store float %i.bj, ptr %i.x, align 4, !tbaa !912
  br i1 %i.bh, label %.split74.us, label %.split.us, !llvm.loop !913

.split:                                           ; preds = %bb.c, %.split.backedge
  %i.bk = phi i32 [ %.pre, %.split.backedge ], [ %.val.fr, %bb.c ]
  %.052 = phi i32 [ %.0, %.split.backedge ], [ 0, %bb.c ] ; 3 uses
  %.0 = phi i32 [ %i.cd, %.split.backedge ], [ 0, %bb.c ] ; 7 uses
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !476 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store ptr null, ptr %i.c, align 8, !tbaa !182
  %i.bm = load ptr, ptr %1, align 8, !tbaa !576   ; 3 uses
  %i.bn = sext i32 %.0 to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 2 uses
  %i.bp = sext i32 %i.bk to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4552
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !477
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 4568
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !189
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 9520
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !490
  %i.bx = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.bs, float noundef %i.bu, float noundef f0x7F7FFFFF, float noundef %i.bw, ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 6)
  %.sroa.0.4.vec.extract.i66 = extractelement <2 x float> %i.bx, i64 1 ; 6 uses
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !182
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bo to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32                  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.cd = add nsw i32 %.0, %i.cc                  ; 5 uses
  %i.ce = icmp slt i32 %2, %i.cd
  br i1 %i.ce, label %.split74.us, label %bb.h

bb.h:                                             ; preds = %.split
  %i.cf = load i8, ptr %i.z, align 2, !tbaa !543
  %i.cg = icmp eq i8 %i.cf, 1
  br i1 %i.cg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %i.aa, align 8, !tbaa !439
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !451 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  %i.ck = icmp eq i32 %i.ci, %i.cd
  %or.cond62 = and i1 %i.cj, %i.ck
  br i1 %or.cond62, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val64 = load ptr, ptr %i.y, align 8, !tbaa !476
  %5 = sext i32 %i.cd to i64
  %i.cl = getelementptr i8, ptr %.val64, i64 %5
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !387
  %.not = icmp eq i8 %i.cn, 10
  br i1 %.not, label %bb.k, label %.split74.us

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.co = icmp eq i32 %i.cd, %.val.fr
  br i1 %i.co, label %bb.l, label %.split.backedge

bb.l:                                             ; preds = %bb.k
  %.val63 = load ptr, ptr %i.y, align 8, !tbaa !476
  %i.cp = getelementptr i8, ptr %.val63, i64 %i.ac
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !387
  %.not61 = icmp eq i8 %i.cr, 10
  br i1 %.not61, label %bb.m, label %.split74.us

bb.m:                                             ; preds = %bb.l
  %i.cs = load float, ptr %i.x, align 4, !tbaa !912
  %i.ct = fadd float %.sroa.0.4.vec.extract.i66, %i.cs
  store float %i.ct, ptr %i.x, align 4, !tbaa !912
  br label %.split74.us

.split.backedge:                                  ; preds = %bb.k
  %i.cu = load float, ptr %i.x, align 4, !tbaa !912
  %i.cv = fadd float %.sroa.0.4.vec.extract.i66, %i.cu
  store float %i.cv, ptr %i.x, align 4, !tbaa !912
  %.pre = load i32, ptr %i.e, align 8, !tbaa !436
  br label %.split, !llvm.loop !913

.split74.us:                                      ; preds = %.split.us, %bb.f, %bb.g, %.split, %bb.j, %bb.l, %bb.m
  %.us-phi75 = phi float [ %.sroa.0.4.vec.extract.i66, %.split ], [ %.sroa.0.4.vec.extract.i66, %bb.m ], [ %.sroa.0.4.vec.extract.i66, %bb.l ], [ %.sroa.0.4.vec.extract.i66, %bb.j ], [ %.sroa.0.4.vec.extract.i66.us, %bb.g ], [ %.sroa.0.4.vec.extract.i66.us, %bb.f ], [ %.sroa.0.4.vec.extract.i66.us, %.split.us ]
  %.us-phi76 = phi i32 [ %i.cc, %.split ], [ 0, %bb.m ], [ %i.cc, %bb.l ], [ %i.cc, %bb.j ], [ 0, %bb.g ], [ %i.av, %.split.us ], [ %i.av, %bb.f ]
  %.us-phi77 = phi i32 [ %.052, %.split ], [ %.0, %bb.m ], [ %.052, %bb.l ], [ %.052, %bb.j ], [ %.0.us, %bb.g ], [ %.052.us, %.split.us ], [ %.052.us, %bb.f ]
  %.us-phi78 = phi i32 [ %.0, %.split ], [ %.val.fr, %bb.m ], [ %.0, %bb.l ], [ %.0, %bb.j ], [ %.val.fr, %bb.g ], [ %.0.us, %.split.us ], [ %.0.us, %bb.f ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.us-phi78, ptr %i.cw, align 4, !tbaa !573
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.us-phi76, ptr %i.cx, align 4, !tbaa !575
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.us-phi75, ptr %i.cy, align 4, !tbaa !914
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.us-phi77, ptr %i.cz, align 4, !tbaa !578
  store float 0.000000e+00, ptr %0, align 4, !tbaa !911
  %i.da = icmp slt i32 %.us-phi78, %2
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.split74.us
  %i.db = sext i32 %.us-phi78 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit
  %i.dc = phi i32 [ %.us-phi78, %.lr.ph ], [ %.0.i67, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ] ; 3 uses
  %.279 = phi i32 [ 0, %.lr.ph ], [ %i.eh, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.dd = load ptr, ptr %i.y, align 8, !tbaa !476 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.db
  %i.df = sext i32 %.279 to i64
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df
  %i.dh = load i32, ptr %i.e, align 8, !tbaa !436
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.dd, i64 %i.di
  %i.dk = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.b, ptr noundef %i.dg, ptr noundef %i.dj) ; 0 uses
  %i.dl = load i32, ptr %i.b, align 4, !tbaa !192 ; 2 uses
  %i.dm = and i32 %i.dl, 65535
  %i.dn = icmp eq i32 %i.dm, 10
  br i1 %i.dn, label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = trunc i32 %i.dl to i16
  %i.dp = load ptr, ptr %1, align 8, !tbaa !576   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4560
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !319
  %i.ds = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.dr, i16 noundef zeroext %i.do)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4576
  %i.du = load float, ptr %i.dt, align 8, !tbaa !321
  %i.dv = fmul float %i.ds, %i.du
  br label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit

_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit: ; preds = %bb.n, %bb.o
  %.0.i = phi float [ %i.dv, %bb.o ], [ -1.000000e+00, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.dw = load float, ptr %0, align 4, !tbaa !911
  %i.dx = fadd float %.0.i, %i.dw
  store float %i.dx, ptr %0, align 4, !tbaa !911
  %i.dy = load i32, ptr %i.e, align 8, !tbaa !436 ; 3 uses
  %.not.i = icmp slt i32 %i.dc, %i.dy
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit
  %i.dz = add nsw i32 %i.dy, 1
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

bb.q:                                             ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ea = load ptr, ptr %i.y, align 8, !tbaa !476 ; 2 uses
  %i.eb = sext i32 %i.dc to i64
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ed = sext i32 %i.dy to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed
  %i.ef = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %i.ec, ptr noundef %i.ee)
  %i.eg = add nsw i32 %i.ef, %i.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit: ; preds = %bb.p, %bb.q
  %.0.i67 = phi i32 [ %i.dz, %bb.p ], [ %i.eg, %bb.q ] ; 3 uses
  %i.eh = sub nsw i32 %.0.i67, %.us-phi78
  %i.ei = icmp slt i32 %.0.i67, %2
  br i1 %i.ei, label %bb.n, label %.loopexit, !llvm.loop !915

.loopexit:                                        ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %.split74.us, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL31STB_TEXTEDIT_MOVELINESTART_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi(ptr nofree noundef nonnull readonly captures(none) %0, i8 %.23.val, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i8 %.23.val, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !490
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %.thread4

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !576    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !476  ; 2 uses
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g ; 4 uses
  %i.i = tail call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.h, ptr noundef %i.f) ; 4 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !476
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !436
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4552
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4568
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 118
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.i
  %.0459 = phi ptr [ %i.i, %bb.c ], [ %i.af, %bb.i ] ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !477
  %i.t = load float, ptr %i.p, align 8, !tbaa !189
  %i.u = load float, ptr %i.a, align 8, !tbaa !490
  %i.v = tail call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef %i.s, float noundef %i.t, ptr noundef %.0459, ptr noundef %i.n, float noundef %i.u, i32 noundef 2) ; 4 uses
  %i.w = icmp eq ptr %.0459, %i.h
  br i1 %i.w, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, %i.h
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !448
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.g
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !387
  %.not57 = icmp eq i8 %i.aa, 10
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.r, align 2, !tbaa !543
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.not58 = icmp ult ptr %i.v, %i.h
  br i1 %.not58, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !387
  %i.ae = icmp eq i8 %i.ad, 10
  %.idx = zext i1 %i.ae to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx ; 2 uses
  %.not56.not = icmp ult ptr %i.af, %i.i
  br i1 %.not56.not, label %.thread4, label %bb.d, !llvm.loop !916

.thread4:                                         ; preds = %bb.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %.thread4
  %.047 = phi i32 [ %1, %.thread4 ], [ %i.aq, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ] ; 4 uses
  %i.ah = icmp sgt i32 %.047, 0
  br i1 %i.ah, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, label %.loopexit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit: ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !476 ; 2 uses
  %i.aj = zext nneg i32 %.047 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = tail call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.ai, ptr noundef nonnull %i.ak)
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !476 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %sext = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !387
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %.loopexit, label %bb.j

.loopexit.sink.split:                             ; preds = %bb.h, %bb.g, %bb.d
  %.0459.lcssa16.sink = phi ptr [ %i.i, %bb.g ], [ %i.i, %bb.d ], [ %.0459, %bb.h ]
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !476
  %i.aw = ptrtoint ptr %.0459.lcssa16.sink to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %bb.j, %.loopexit.sink.split, %bb.a
  %.3 = phi i32 [ %i.az, %.loopexit.sink.split ], [ 0, %bb.a ], [ %.047, %bb.j ], [ %.047, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !436 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !466  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !467  ; 3 uses
  %.not.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, %.val
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %.val, ptr %i.b, align 4, !tbaa !466
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.val, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %i.h = icmp sgt i32 %i.e, %.val
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.val, ptr %i.d, align 4, !tbaa !467
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %.val, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %1, align 4, !tbaa !451
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a
  %i.k = phi i32 [ %i.g, %bb.g ], [ %i.i, %bb.f ], [ %i.c, %bb.a ] ; 8 uses
  %i.l = phi i32 [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.c, %bb.a ] ; 8 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !451
  %i.n = icmp sgt i32 %i.m, %.val
  br i1 %i.n, label %bb.i, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit

bb.i:                                             ; preds = %bb.h
  store i32 %.val, ptr %1, align 4, !tbaa !451
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit: ; preds = %bb.h, %bb.i
  %.not = icmp eq i32 %i.l, %i.k
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit
  %i.o = icmp slt i32 %i.l, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.q = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.r = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.p, i32 noundef %i.l, i32 noundef %i.q, i32 noundef 0) ; 6 uses
  %.not.i.i.not = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i, label %.lr.ph.i.i

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i: ; preds = %bb.k
  %.pre.i = sext i32 %i.l to i64
  br label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.s = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.t = sext i32 %i.l to i64                     ; 7 uses
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64 ; 2 uses
  %xtraiter49 = and i64 %wide.trip.count.i.i, 3   ; 3 uses
  %i.u = icmp ult i32 %i.q, 4
  br i1 %i.u, label %.epil.preheader48, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter53 = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.l ] ; 6 uses
  %niter54 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter54.next.3, %bb.l ]
  %.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.v = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 %i.t
  %i.x = load i8, ptr %i.w, align 1, !tbaa !387
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !387
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.z = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.t
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !387
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !387
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.ad = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.t
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !387
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !387
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.ah = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.t
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !387
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !387
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !580

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod51.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod51.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %.epil.preheader48

.epil.preheader48:                                ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter49, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader48
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader48 ], [ %indvars.iv.next.i.i.epil, %bb.m ] ; 3 uses
  %epil.iter50 = phi i64 [ 0, %.epil.preheader48 ], [ %epil.iter50.next, %bb.m ]
  %.val.i.i.epil = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.al = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.am = getelementptr i8, ptr %i.al, i64 %i.t
  %i.an = load i8, ptr %i.am, align 1, !tbaa !387
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i.epil
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !387
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter50.next = add i64 %epil.iter50, 1     ; 2 uses
  %epil.iter50.cmp.not = icmp eq i64 %epil.iter50.next, %xtraiter49
  br i1 %epil.iter50.cmp.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %bb.m, !llvm.loop !917

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit: ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %bb.m, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i ], [ %i.t, %bb.m ], [ %i.t, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !435
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %.pre-phi.i ; 2 uses
  %2 = sext i32 %i.q to i64
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %2
  %i.at = load i32, ptr %i.a, align 8, !tbaa !436
  %reass.sub38 = sub i32 %i.at, %i.k
  %i.au = add i32 %reass.sub38, 1
  %i.av = sext i32 %i.au to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.as, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.aw, align 4, !tbaa !492
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ax, align 1, !tbaa !460
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !436
  %i.az = sub nsw i32 %i.ay, %i.q
  store i32 %i.az, ptr %i.a, align 8, !tbaa !436
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !466 ; 2 uses
  store i32 %i.ba, ptr %1, align 4, !tbaa !451
  store i32 %i.ba, ptr %i.d, align 4, !tbaa !467
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.bb = sub nsw i32 %i.l, %i.k                  ; 5 uses
  %i.bc = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.p, i32 noundef %i.k, i32 noundef %i.bb, i32 noundef 0) ; 6 uses
  %.not.i.i24.not = icmp eq ptr %i.bc, null
  br i1 %.not.i.i24.not, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26, label %.lr.ph.i.i30

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26: ; preds = %bb.n
  %.pre.i27 = sext i32 %i.k to i64
  br label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36

.lr.ph.i.i30:                                     ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %i.be = sext i32 %i.k to i64                    ; 7 uses
  %wide.trip.count.i.i31 = zext nneg i32 %i.bb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i31, 3   ; 3 uses
  %i.bf = icmp ult i32 %i.bb, 4
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.i30.new

.lr.ph.i.i30.new:                                 ; preds = %.lr.ph.i.i30
  %unroll_iter = and i64 %wide.trip.count.i.i31, 2147483644
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i30.new
  %indvars.iv.i.i32 = phi i64 [ 0, %.lr.ph.i.i30.new ], [ %indvars.iv.next.i.i34.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i30.new ], [ %niter.next.3, %bb.o ]
  %.val.i.i33 = load ptr, ptr %i.bd, align 8, !tbaa !476
  %i.bg = getelementptr i8, ptr %.val.i.i33, i64 %indvars.iv.i.i32
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.be
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !387
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i32
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !387
  %indvars.iv.next.i.i34 = or disjoint i64 %indvars.iv.i.i32, 1 ; 2 uses
  %.val.i.i33.1 = load ptr, ptr %i.bd, align 8, !tbaa !476
  %i.bk = getelementptr i8, ptr %.val.i.i33.1, i64 %indvars.iv.next.i.i34
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.be
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !387
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.i34
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !387
  %indvars.iv.next.i.i34.1 = or disjoint i64 %indvars.iv.i.i32, 2 ; 2 uses
  %.val.i.i33.2 = load ptr, ptr %i.bd, align 8, !tbaa !476
  %i.bo = getelementptr i8, ptr %.val.i.i33.2, i64 %indvars.iv.next.i.i34.1
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.be
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !387
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.i34.1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !387
  %indvars.iv.next.i.i34.2 = or disjoint i64 %indvars.iv.i.i32, 3 ; 2 uses
  %.val.i.i33.3 = load ptr, ptr %i.bd, align 8, !tbaa !476
  %i.bs = getelementptr i8, ptr %.val.i.i33.3, i64 %indvars.iv.next.i.i34.2
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.be
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !387
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.i34.2
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !387
  %indvars.iv.next.i.i34.3 = add nuw nsw i64 %indvars.iv.i.i32, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, label %bb.o, !llvm.loop !580

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, %.lr.ph.i.i30
  %indvars.iv.i.i32.epil.init = phi i64 [ 0, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i34.3, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i.i32.epil = phi i64 [ %indvars.iv.i.i32.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i34.epil, %bb.p ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %.val.i.i33.epil = load ptr, ptr %i.bd, align 8, !tbaa !476
  %i.bw = getelementptr i8, ptr %.val.i.i33.epil, i64 %indvars.iv.i.i32.epil
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.be
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !387
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.i32.epil
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !387
  %indvars.iv.next.i.i34.epil = add nuw nsw i64 %indvars.iv.i.i32.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, label %bb.p, !llvm.loop !918

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36: ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, %bb.p, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26
  %.pre-phi.i28 = phi i64 [ %.pre.i27, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26 ], [ %i.be, %bb.p ], [ %i.be, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !435
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.pre-phi.i28 ; 2 uses
  %3 = sext i32 %i.bb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %3
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !436
  %reass.sub = sub i32 %i.ce, %i.l
  %i.cf = add i32 %reass.sub, 1
  %i.cg = sext i32 %i.cf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 1 %i.cd, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ch, align 4, !tbaa !492
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ci, align 1, !tbaa !460
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !436
  %i.ck = sub nsw i32 %i.cj, %i.bb
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !436
  %i.cl = load i32, ptr %i.d, align 4, !tbaa !467 ; 2 uses
  store i32 %i.cl, ptr %1, align 4, !tbaa !451
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !466
  br label %bb.q

bb.q:                                             ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.cm, align 2, !tbaa !468
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) initializes((2618, 2620), (2624, 2628)) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 6 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.c, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge: ; preds = %bb.a
  %.pre = sext i32 %2 to i64
  br label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.e = sext i32 %2 to i64                       ; 7 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %3, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.g = getelementptr i8, ptr %.val.i, i64 %indvars.iv.i
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1, !tbaa !387
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.i, ptr %i.j, align 1, !tbaa !387
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i.1 = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.k = getelementptr i8, ptr %.val.i.1, i64 %indvars.iv.next.i
  %i.l = getelementptr i8, ptr %i.k, i64 %i.e
  %i.m = load i8, ptr %i.l, align 1, !tbaa !387
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i
  store i8 %i.m, ptr %i.n, align 1, !tbaa !387
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %.val.i.2 = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.o = getelementptr i8, ptr %.val.i.2, i64 %indvars.iv.next.i.1
  %i.p = getelementptr i8, ptr %i.o, i64 %i.e
  %i.q = load i8, ptr %i.p, align 1, !tbaa !387
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !387
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %.val.i.3 = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.s = getelementptr i8, ptr %.val.i.3, i64 %indvars.iv.next.i.2
  %i.t = getelementptr i8, ptr %i.s, i64 %i.e
  %i.u = load i8, ptr %i.t, align 1, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !387
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !580

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.val.i.epil = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.w = getelementptr i8, ptr %.val.i.epil, i64 %indvars.iv.i.epil
  %i.x = getelementptr i8, ptr %i.w, i64 %i.e
  %i.y = load i8, ptr %i.x, align 1, !tbaa !387
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.epil
  store i8 %i.y, ptr %i.z, align 1, !tbaa !387
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %bb.c, !llvm.loop !919

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit: ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %bb.c, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !435
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre-phi ; 2 uses
  %i.ad = sext i32 %3 to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !436
  %i.ah = add i32 %2, %3
  %reass.sub = sub i32 %i.ag, %i.ah
  %i.ai = add i32 %reass.sub, 1
  %i.aj = sext i32 %i.ai to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ae, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ak, align 4, !tbaa !492
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.al, align 1, !tbaa !460
  %i.am = load i32, ptr %i.af, align 8, !tbaa !436
  %i.an = sub nsw i32 %i.am, %3
  store i32 %i.an, ptr %i.af, align 8, !tbaa !436
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.ao, align 2, !tbaa !468
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL29STB_TEXTEDIT_MOVELINEEND_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi(ptr nofree noundef nonnull readonly captures(none) %0, i8 %.23.val, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !436 ; 3 uses
  %.not = icmp eq i8 %.23.val, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !490
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %.thread9

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !576    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !476  ; 2 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = tail call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.j, ptr noundef %i.h) ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.m = load i32, ptr %i.b, align 8, !tbaa !436
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = icmp ult ptr %i.k, %i.o
  br i1 %i.p, label %.lr.ph, label %.thread9

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4552
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4568
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 118
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.015 = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %bb.g ]
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !477
  %i.u = load float, ptr %i.r, align 8, !tbaa !189
  %i.v = load float, ptr %i.c, align 8, !tbaa !490
  %i.w = tail call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef %i.t, float noundef %i.u, ptr noundef %.015, ptr noundef nonnull %i.o, float noundef %i.v, i32 noundef 2) ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.s, align 2, !tbaa !543
  %.not49 = icmp eq i8 %i.y, 0
  br i1 %.not49, label %bb.f, label %.thread9.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = icmp ugt ptr %i.w, %i.j
  br i1 %i.z, label %.critedge.loopexit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !387
  %i.ab = icmp eq i8 %i.aa, 10
  %.idx = zext i1 %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.o
  br i1 %i.ad, label %bb.d, label %.thread9.sink.split

.thread9.sink.split:                              ; preds = %bb.e, %bb.g
  %.lcssa45.sink = phi ptr [ %i.w, %bb.g ], [ %i.j, %bb.e ]
end_hunk_1
