Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui6BulletEv:bb.a
  %i.aa = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !154
  %i.ad = load float, ptr %i.m, align 4, !tbaa !153
  %i.ae = load float, ptr %i.k, align 8, !tbaa !152
  %i.af = call float @llvm.fmuladd.f32(float %i.ae, float 5.000000e-01, float %i.ad)
  %i.ag = fmul float %i.t, 5.000000e-01
  %i.ah = load <2 x float>, ptr %0, align 8, !tbaa !141
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.ac, <2 x float> %i.ak, i32 noundef %i.aa)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.al = load float, ptr %i.m, align 4, !tbaa !153
  %i.am = fmul float %i.al, 2.000000e+00
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN5ImGui8SameLineEff(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui7SpacingEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !134, !range !135, !noundef !136
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !141
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !134, !range !135, !noundef !136
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.i = load <2 x float>, ptr %i.h, align 8, !tbaa !141 ; 2 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !141
  %i.k = fadd <2 x float> %i.i, %i.j
  store <2 x float> %i.i, ptr %1, align 8, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.k, ptr %i.l, align 8, !tbaa !141
  tail call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  %i.m = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui7NewLineEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !134, !range !135, !noundef !136
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 388 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !194
  store i32 1, ptr %i.h, align 4, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  %i.k = load float, ptr %i.j, align 4, !tbaa !193
  %i.l = fcmp ogt float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !141
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.n = load float, ptr %i.m, align 8, !tbaa !152
  store float 0.000000e+00, ptr %1, align 4, !tbaa !144
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.n, ptr %i.o, align 4, !tbaa !147
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.i, ptr %i.h, align 4, !tbaa !194
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui23AlignTextToFramePaddingEv() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !134, !range !135, !noundef !136
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 260 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !193 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.k = load float, ptr %i.j, align 8, !tbaa !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5536
  %i.m = load float, ptr %i.l, align 8, !tbaa !174 ; 3 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 2.000000e+00, float %i.k) ; 2 uses
  %i.o = fcmp oge float %i.i, %i.n
  %i.p = select i1 %i.o, float %i.i, float %i.n
  store float %i.p, ptr %i.h, align 4, !tbaa !193
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !139 ; 2 uses
  %i.s = fcmp oge float %i.r, %i.m
  %i.t = select i1 %i.s, float %i.r, float %i.m
  store float %i.t, ptr %i.q, align 8, !tbaa !139
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui11SeparatorExEi(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImRect, align 16            ; 7 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImRect, align 4             ; 9 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !134, !range !135, !noundef !136
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %0, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  %i.k = load float, ptr %i.j, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.l = load <2 x float>, ptr %i.i, align 8, !tbaa !141
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.n = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.k, i64 3
  %i.o = fadd <4 x float> %i.m, %i.n
  %8 = shufflevector <4 x float> %i.m, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %8, ptr %1, align 16, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !141
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %2, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.p = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.p, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.s = load <2 x float>, ptr %1, align 16, !tbaa !141 ; 2 uses
  store <2 x float> %i.s, ptr %3, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.t = load float, ptr %.sroa_idx46, align 4, !tbaa !146
  %i.u = extractelement <2 x float> %i.s, i64 0
  store float %i.u, ptr %4, align 4, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.t, ptr %i.v, align 4, !tbaa !147
  %i.w = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.w, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.y = load i8, ptr %i.x, align 4, !tbaa !142, !range !135, !noundef !136
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.s

bb.g:                                             ; preds = %bb.b
  %i.aa = and i32 %0, 1
  %.not39 = icmp eq i32 %i.aa, 0
  br i1 %.not39, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !179 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !180
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7624
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !405 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 7632
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !195
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = getelementptr [48 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !406
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !407
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.at = load float, ptr %i.as, align 8, !tbaa !408
  %i.au = fadd float %i.ac, %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0 = phi float [ %i.au, %bb.j ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ]
  %i.av = and i32 %0, 4
  %.not40 = icmp eq i32 %i.av, 0
  br i1 %.not40, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !197 ; 2 uses
  %.not41 = icmp eq ptr %i.ax, null
  br i1 %.not41, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5ImGui21PushColumnsBackgroundEv()
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.not4153 = phi i1 [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.k ]
  %i.ay = phi ptr [ null, %bb.l ], [ %i.ax, %bb.m ], [ null, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !138 ; 2 uses
  %i.bb = fadd float %i.ba, 1.000000e+00
  store float %.0, ptr %5, align 4, !tbaa !141
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store float %i.ba, ptr %.sroa_idx43, align 4, !tbaa !141
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.af, ptr %i.bc, align 4, !tbaa !141
  %.sroa_idx42 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bb, ptr %.sroa_idx42, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !141
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.bd = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bg = load <2 x float>, ptr %.sroa_idx43, align 4, !tbaa !141
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bh, ptr %7, align 8, !tbaa !141
  %i.bi = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.bi, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !142, !range !135, !noundef !136
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef null)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.thread
  br i1 %.not4153, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5ImGui20PopColumnsBackgroundEv()
  %i.bm = load float, ptr %i.az, align 4, !tbaa !138
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store float %i.bm, ptr %i.bn, align 4, !tbaa !412
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.s

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.f, %.critedge, %bb.g, %bb.r, %bb.a
  ret void
}

declare void @_ZN5ImGui7LogTextEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN5ImGui21PushColumnsBackgroundEv() local_unnamed_addr #3

declare void @_ZN5ImGui20PopColumnsBackgroundEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.e = load i8, ptr %i.d, align 1, !tbaa !134, !range !135, !noundef !136
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.h = load i32, ptr %i.g, align 4, !tbaa !194
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 6, i32 5
  tail call void @_ZN5ImGui11SeparatorExEi(i32 noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16SplitterBehaviorERK6ImRectj9ImGuiAxisPfS4_ffff(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %9 = alloca %struct.ImRect, align 16            ; 7 uses
  %10 = alloca %struct.ImRect, align 16           ; 11 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 7344 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !189  ; 2 uses
  %i.h = or i32 %i.g, 24
  store i32 %i.h, ptr %i.f, align 8, !tbaa !189
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 0)
  store i32 %i.g, ptr %i.f, align 8, !tbaa !189
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
end_hunk_0
begin_hunk_1_@_ZN5ImGui11BeginMenuExEPKcS1_b:bb.a
  %.not197 = icmp eq i32 %i.kj, 0
  br i1 %.not197, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kk = icmp eq i32 %i.kj, %i.h
  %or.cond5 = or i1 %.0173, %i.kk
  %not.or.cond5 = xor i1 %or.cond5, true
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.0174 = phi i1 [ false, %bb.an ], [ %not.or.cond5, %bb.aq ], [ false, %bb.ao ], [ false, %bb.ap ] ; 3 uses
  %or.cond8 = and i1 %.0184.in, %.not
  %.not198 = xor i1 %i.hi, true
  %or.cond11.not = select i1 %i.i, i1 true, i1 %.not198
  %or.cond13 = or i1 %or.cond11.not, %.0173
  %not.or.cond13 = xor i1 %or.cond13, true
  %.0177 = select i1 %or.cond8, i1 true, i1 %not.or.cond13 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !167
  %i.kn = icmp eq i32 %i.km, %i.h
  br i1 %i.kn, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !312
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %.sink.split, label %bb.ax

bb.at:                                            ; preds = %bb.ae
  %or.cond15 = and i1 %i.i, %.0184.in
  %or.cond17 = and i1 %i.bv, %or.cond15           ; 3 uses
  %.mux = xor i1 %i.i, %or.cond17
  %not.or.cond17 = xor i1 %or.cond17, true
  br i1 %.0184.in, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %or.cond19 = and i1 %i.bv, %i.hi
  %or.cond19.not = xor i1 %or.cond19, true
  %or.cond21 = or i1 %i.i, %or.cond19.not
  br i1 %or.cond21, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 7696
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !167
  %i.kt = icmp eq i32 %i.ks, %i.h
  br i1 %i.kt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !312
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %.sink.split, label %bb.ax

.sink.split:                                      ; preds = %bb.aw, %bb.as
  %.1175.ph = phi i1 [ %.0174, %bb.as ], [ false, %bb.aw ]
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.at, %bb.au, %bb.ar, %bb.as, %bb.av, %bb.aw
  %.1181 = phi i1 [ %i.i, %bb.av ], [ %i.i, %bb.ar ], [ %.mux, %bb.at ], [ %i.i, %bb.as ], [ %i.i, %bb.aw ], [ false, %bb.au ], [ %i.i, %.sink.split ] ; 2 uses
  %.2179 = phi i1 [ false, %bb.av ], [ %.0177, %bb.ar ], [ %not.or.cond17, %bb.at ], [ %.0177, %bb.as ], [ false, %bb.aw ], [ true, %bb.au ], [ true, %.sink.split ] ; 2 uses
  %.1175 = phi i1 [ false, %bb.av ], [ %.0174, %bb.ar ], [ %or.cond17, %bb.at ], [ %.0174, %bb.as ], [ false, %bb.aw ], [ false, %bb.au ], [ %.1175.ph, %.sink.split ]
  %not. = xor i1 %2, true
  %spec.select201 = or i1 %.1175, %not.
  br i1 %spec.select201, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.kx = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.h, i32 noundef 0)
  br i1 %i.kx, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !208
  call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %i.kz, i1 noundef zeroext true)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  call void @_ZN5ImGui5PopIDEv()
  %.not22 = xor i1 %.1181, true
  %or.cond24 = and i1 %.2179, %.not22
  br i1 %or.cond24, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !566
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !208
  %i.le = icmp sgt i32 %i.lb, %i.ld
  br i1 %i.le, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef 0)
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.2179, label %.thread261, label %bb.be

.thread261:                                       ; preds = %bb.bd
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef 0)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br i1 %.1181, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread261, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !141
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.lf = call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %i.h, i32 noundef %spec.select)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 7432
  store i32 0, ptr %i.lg, align 8, !tbaa !205
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
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7804
  %i.e = load i32, ptr %i.d, align 4, !tbaa !312
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv()
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.i = load i32, ptr %i.h, align 4, !tbaa !194
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 856
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !573  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !181
  %i.q = and i32 %i.p, 67108864
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 824
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !333
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.v = load i32, ptr %i.u, align 8, !tbaa !208
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
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !134, !range !135, !noundef !136
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 5 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.i = load <2 x float>, ptr %i.h, align 8      ; 4 uses
  %i.j = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 316
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  %i.m = load i32, ptr %i.l, align 4, !tbaa !194
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.022.0.vec.extract = extractelement <2 x float> %i.j, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5548 ; 2 uses
  %8 = load float, ptr %i.o, align 4, !tbaa !192  ; 2 uses
  %9 = fmul float %8, 5.000000e-01
  %10 = fptosi float %9 to i32
  %11 = sitofp i32 %10 to float
  %i.p = load float, ptr %i.h, align 8, !tbaa !137
  %12 = fadd float %i.p, %11                      ; 2 uses
  store float %12, ptr %i.h, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.r = load i16, ptr %i.q, align 8, !tbaa !326
  %i.s = uitofp i16 %i.r to float
  %13 = fadd float %12, %i.s
  %i.t = load float, ptr %.sroa_idx, align 4, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.v = load float, ptr %i.u, align 8, !tbaa !139
  %i.w = fadd float %i.t, %i.v
  %.sroa.096.0.vec.insert = insertelement <2 x float> poison, float %13, i64 0
  %.sroa.096.4.vec.insert = insertelement <2 x float> %.sroa.096.0.vec.insert, float %i.w, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.x = fmul float %8, 2.000000e+00
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 5552
  %15 = load float, ptr %14, align 8, !tbaa !214
  store float %i.x, ptr %5, align 4, !tbaa !144
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %15, ptr %16, align 4, !tbaa !147
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store float %.sroa.022.0.vec.extract, ptr %6, align 4, !tbaa !144
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !147
  %i.z = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str, i1 noundef zeroext %3, i32 noundef 75497472, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.096.4.vec.insert, ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  %i.aa = load float, ptr %i.o, align 4, !tbaa !192
  %i.ab = fmul float %i.aa, -5.000000e-01
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = load float, ptr %i.h, align 8, !tbaa !137
  %i.af = fadd float %i.ae, %i.ad
  store float %i.af, ptr %i.h, align 8, !tbaa !137
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %1, align 1, !tbaa !148
  %.not66 = icmp eq i8 %i.ag, 0
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.012.0.vec.extract = extractelement <2 x float> %i.ah, i64 0
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = phi float [ %.sroa.012.0.vec.extract, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.not67 = icmp eq ptr %2, null
  br i1 %.not67, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %2, align 1, !tbaa !148
  %.not68 = icmp eq i8 %i.aj, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %2, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.09.0.vec.extract = extractelement <2 x float> %i.ak, i64 0
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.al = phi float [ %.sroa.09.0.vec.extract, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 6528 ; 3 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !152
  %i.ao = fmul float %i.an, 1.200000e+00
  %i.ap = fptosi float %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 334 ; 2 uses
  %i.ar = fptoui float %i.ai to i16
  %i.as = insertelement <2 x float> %i.j, float %i.al, i64 1
  %i.at = trunc i32 %i.ap to i16
  %i.au = load <4 x i16>, ptr %i.aq, align 2, !tbaa !220
  %i.av = insertelement <4 x i16> poison, i16 %i.ar, i64 0
  %i.aw = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = fptoui <4 x float> %i.aw to <4 x i16>
  %i.ay = shufflevector <4 x i16> %i.av, <4 x i16> %i.ax, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.az = insertelement <4 x i16> %i.ay, i16 %i.at, i64 3
  %i.ba = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.au, <4 x i16> %i.az) ; 5 uses
  store <4 x i16> %i.ba, ptr %i.aq, align 2, !tbaa !220
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.bc = load i16, ptr %i.bb, align 4            ; 3 uses
  %i.bd = extractelement <4 x i16> %i.ba, i64 0   ; 3 uses
  %i.be = icmp ne i16 %i.bd, 0
  %i.bf = extractelement <4 x i16> %i.ba, i64 1   ; 3 uses
  %i.bg = icmp ne i16 %i.bf, 0
  %or.cond.us.1.i.i = and i1 %i.be, %i.bg
  %i.bh = select i1 %or.cond.us.1.i.i, i16 %i.bc, i16 0
  %i.bi = or i16 %i.bf, %i.bd                     ; 2 uses
  %i.bj = icmp ne i16 %i.bi, 0
  %i.bk = extractelement <4 x i16> %i.ba, i64 2   ; 3 uses
  %i.bl = icmp ne i16 %i.bk, 0
  %or.cond.2.i.i = and i1 %i.bj, %i.bl
  %i.bm = select i1 %or.cond.2.i.i, i16 %i.bc, i16 0
  %i.bn = or i16 %i.bk, %i.bi
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = extractelement <4 x i16> %i.ba, i64 3   ; 2 uses
  %i.bq = icmp ne i16 %i.bp, 0
  %or.cond.3.i.i = and i1 %i.bo, %i.bq
  %i.br = select i1 %or.cond.3.i.i, i16 %i.bc, i16 0
  %.1.us.1.i.i = add i16 %i.bf, %i.bd
  %i.bs = add i16 %.1.us.1.i.i, %i.bk
  %.1.2.i.i = add i16 %i.bs, %i.bp
  %i.bt = add i16 %.1.2.i.i, %i.bh
  %.1.3.i.i = add i16 %i.bt, %i.bm
  %i.bu = add i16 %.1.3.i.i, %i.br
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !330
  %i.bx = load i32, ptr %i.k, align 4, !tbaa !329
  %i.by = tail call noundef i32 @llvm.umax.i32(i32 %i.bx, i32 %i.bv)
  %i.bz = uitofp i32 %i.by to float               ; 2 uses
  %i.ca = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.04.0.vec.extract = extractelement <2 x float> %i.ca, i64 0
  %i.cb = fsub float %.sroa.04.0.vec.extract, %i.bz ; 2 uses
  %i.cc = fcmp ole float %i.cb, 0.000000e+00
  %i.cd = select i1 %i.cc, float 0.000000e+00, float %i.cb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store float %i.bz, ptr %7, align 4, !tbaa !144
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !147
  %i.cf = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str, i1 noundef zeroext false, i32 noundef 92274688, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.ch = load i16, ptr %i.cg, align 8, !tbaa !326
  %i.ci = uitofp i16 %i.ch to float
  %i.cj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  %i.ck = fadd <2 x float> %i.i, %i.cj            ; 3 uses
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.ck, ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  %i.cl = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 326
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !337
  %i.co = uitofp i16 %i.cn to float
  %i.cp = extractelement <2 x float> %i.i, i64 0
  %i.cq = fadd float %i.cp, %i.co
  %i.cr = insertelement <2 x float> %i.ck, float %i.cq, i64 0
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.cr, ptr noundef %1, ptr noundef null, i1 noundef zeroext true)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cs = fcmp ogt float %i.al, 0.000000e+00
  br i1 %i.cs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 5688
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 330
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !327
  %i.cw = uitofp i16 %i.cv to float
  %i.cx = fadd float %i.cd, %i.cw
  %i.cy = extractelement <2 x float> %i.i, i64 0
  %i.cz = fadd float %i.cy, %i.cx
  %i.da = insertelement <2 x float> %i.ck, float %i.cz, i64 0
  tail call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.da, ptr noundef %2, ptr noundef null, i1 noundef zeroext false)
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !154
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 332
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !328
  %i.df = uitofp i16 %i.de to float
  %i.dg = fadd float %i.cd, %i.df
  %i.dh = load float, ptr %i.am, align 8, !tbaa !152 ; 2 uses
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 4.000000e-01, float %i.dg)
  %i.dj = fmul float %i.dh, 1.340000e-01
  %i.dk = fmul float %i.dj, 5.000000e-01
  %i.dl = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dk, i64 1
  %i.dn = fadd <2 x float> %i.i, %i.dm
  %i.do = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.dp = load float, ptr %i.am, align 8, !tbaa !152
  %i.dq = fmul float %i.dp, f0x3F5DB22D
  tail call void @_ZN5ImGui15RenderCheckMarkEP10ImDrawList6ImVec2jf(ptr noundef %i.dc, <2 x float> %i.dn, i32 noundef %i.do, float noundef %i.dq)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.e
  %.063.in = phi i1 [ %i.z, %bb.e ], [ %i.cf, %bb.q ], [ %i.cf, %bb.p ]
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
end_hunk_1
