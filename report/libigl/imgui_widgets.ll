Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui11SeparatorExEi:bb.a
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
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.n = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float 1.000000e+00, float poison>, float %i.k, i64 3
  %i.o = fadd <4 x float> %i.m, %i.n
  store <4 x float> %i.o, ptr %1, align 16
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
  store float %.0, ptr %5, align 4
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store float %i.ba, ptr %.sroa_idx43, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.af, ptr %i.bc, align 4
  %.sroa_idx42 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.bb, ptr %.sroa_idx42, align 4
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
  %9 = alloca %struct.ImRect, align 16            ; 8 uses
  %10 = alloca %struct.ImRect, align 16           ; 11 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 11 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !182
  %i.j = icmp eq i32 %2, 1                        ; 5 uses
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.668.0 = select i1 %i.j, float %7, float 0.000000e+00
  %.sroa.066.0 = select i1 %i.j, float 0.000000e+00, float %7
  %i.k = load <4 x float>, ptr %9, align 16, !tbaa !141 ; 2 uses
  %i.l = insertelement <4 x float> poison, float %.sroa.066.0, i64 0
  %i.m = insertelement <4 x float> %i.l, float %.sroa.668.0, i64 1
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.o = fsub <4 x float> %i.k, %i.n
  %i.p = fadd <4 x float> %i.k, %i.n
  %i.q = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.q, ptr %9, align 16, !tbaa !141
  %i.r = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 6144) ; 0 uses
  %i.s = load i8, ptr %i.a, align 1, !tbaa !164, !range !135, !noundef !136
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 7376 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !198
  %i.w = or i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 7260
  %i.y = load i32, ptr %i.x, align 4, !tbaa !165
  %.not = icmp eq i32 %i.y, %1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui19SetItemAllowOverlapEv()
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = load i8, ptr %i.b, align 1, !tbaa !164, !range !135, !noundef !136
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  br i1 %i.aa, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 7244
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !160
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.i, label %.thread73

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 7252
  %i.af = load float, ptr %i.ae, align 4, !tbaa !157
  %i.ag = fcmp ult float %i.af, %8
  br i1 %i.ag, label %.thread73, label %.thread72

.thread72:                                        ; preds = %bb.i
  %i.ah = select i1 %i.j, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.ah)
  br label %.thread73

.critedge:                                        ; preds = %bb.f
  %i.ai = select i1 %i.j, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !182
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 7296
  %.val57 = load float, ptr %i.aj, align 8, !tbaa !144
  %12 = getelementptr i8, ptr %i.c, i64 300
  %.val58 = load float, ptr %12, align 4, !tbaa !147
  %.val59 = load float, ptr %i.ak, align 8, !tbaa !144
  %13 = getelementptr i8, ptr %i.c, i64 7300
  %.val60 = load float, ptr %13, align 4, !tbaa !147
  %14 = fsub float %.val57, %.val59
  %15 = fsub float %.val58, %.val60
  %.val55 = load float, ptr %9, align 16, !tbaa !144
  %.val56 = load float, ptr %11, align 4, !tbaa !147
  %16 = fsub float %14, %.val55
  %17 = fsub float %15, %.val56
  %i.al = select i1 %i.j, float %17, float %16    ; 2 uses
  %i.am = load float, ptr %3, align 4, !tbaa !141 ; 2 uses
  %i.an = fsub float %i.am, %5                    ; 2 uses
  %i.ao = fcmp ole float %i.an, 0.000000e+00
  %i.ap = load float, ptr %4, align 4, !tbaa !141
  %i.aq = fsub float %i.ap, %6                    ; 2 uses
  %i.ar = fcmp ole float %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, float 0.000000e+00, float %i.aq ; 2 uses
  %.neg = fneg float %i.an
  %i.at = select i1 %i.ao, float -0.000000e+00, float %.neg ; 2 uses
  %i.au = fcmp olt float %i.al, %i.at
  %.0 = select i1 %i.au, float %i.at, float %i.al ; 2 uses
  %i.av = fcmp ogt float %.0, %i.as
  %.1 = select i1 %i.av, float %i.as, float %.0   ; 5 uses
  %i.aw = fcmp une float %.1, 0.000000e+00
  br i1 %i.aw, label %bb.j, label %.thread71

bb.j:                                             ; preds = %.critedge
  %i.ax = fadd float %i.am, %.1
  store float %i.ax, ptr %3, align 4, !tbaa !141
  %i.ay = load float, ptr %4, align 4, !tbaa !141
  %i.az = fsub float %i.ay, %.1
  store float %i.az, ptr %4, align 4, !tbaa !141
  %i.ba = icmp eq i32 %2, 0
  %i.bb = insertelement <2 x i1> poison, i1 %i.ba, i64 0
  %i.bc = shufflevector <2 x i1> %i.bb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1, i64 0
  %i.be = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.1, i64 1
  %i.bf = select <2 x i1> %i.bc, <2 x float> %i.bd, <2 x float> %i.be
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bh = load <4 x float>, ptr %10, align 16, !tbaa !141
  %i.bi = fadd <4 x float> %i.bg, %i.bh
  store <4 x float> %i.bi, ptr %10, align 16, !tbaa !141
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %1)
  br label %.thread71

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !182
  br label %.thread71

.thread73:                                        ; preds = %bb.i, %bb.h, %.thread72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 7252
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !157
  %i.bl = fcmp oge float %i.bk, %8
  %i.bm = select i1 %i.bl, i32 28, i32 27
  br label %.thread71

.thread71:                                        ; preds = %bb.k, %bb.j, %.critedge, %.thread73
  %i.bn = phi i32 [ %i.bm, %.thread73 ], [ 27, %bb.k ], [ 29, %.critedge ], [ 29, %bb.j ]
  %i.bo = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bn, float noundef 1.000000e+00)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !154
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %i.br, i32 noundef %i.bo, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.thread71
  %.050 = phi i1 [ %i.aa, %.thread71 ], [ false, %bb.a ]
  ret i1 %.050
}

declare void @_ZN5ImGui19SetItemAllowOverlapEv() local_unnamed_addr #3

declare void @_ZN5ImGui14SetMouseCursorEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree uwtable
define dso_local void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemif(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !200 ; 2 uses
  %i.d = fcmp ult float %i.c, 0.000000e+00
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fsub float %i.c, %2                      ; 2 uses
  %i.f = fcmp oge float %i.e, 1.000000e+00
  %i.g = select i1 %i.f, float %i.e, float 1.000000e+00
  store float %i.g, ptr %i.b, align 4, !tbaa !200
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64                       ; 2 uses
  tail call void @qsort(ptr noundef %0, i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull @_ZL23ShrinkWidthItemComparerPKvS0_)
  %i.i = fcmp ogt float %2, 0.000000e+00
  %i.j = icmp sgt i32 %1, 1
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %.preheader71.lr.ph, label %.thread

.preheader71.lr.ph:                               ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.lr.ph, %._crit_edge
  %.05879 = phi float [ %2, %.preheader71.lr.ph ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.06278 = phi i32 [ 1, %.preheader71.lr.ph ], [ %.16373, %._crit_edge ]
  %i.m = load float, ptr %i.l, align 4, !tbaa !200 ; 3 uses
  %i.n = sext i32 %.06278 to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader71, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader71 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !200 ; 3 uses
  %i.r = fcmp ugt float %i.m, %i.q
  br i1 %i.r, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.s = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.s, label %bb.e, label %.critedge68.loopexit, !llvm.loop !413

.critedge:                                        ; preds = %bb.e
  %i.t = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.u = fcmp ult float %i.q, 0.000000e+00
  br i1 %i.u, label %.critedge68, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.v = fsub float %i.m, %i.q
  br label %bb.h

.critedge68.loopexit:                             ; preds = %bb.f
  %i.w = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge68

.critedge68:                                      ; preds = %.critedge68.loopexit, %.critedge
  %.16374 = phi i32 [ %i.t, %.critedge ], [ %i.w, %.critedge68.loopexit ]
  %i.x = fadd float %i.m, -1.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %.critedge68, %bb.g
  %.16373 = phi i32 [ %i.t, %bb.g ], [ %.16374, %.critedge68 ] ; 6 uses
  %i.y = phi float [ %i.v, %bb.g ], [ %i.x, %.critedge68 ] ; 3 uses
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = sitofp i32 %.16373 to float             ; 2 uses
  %i.ab = fdiv float %.05879, %i.aa               ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.y
  %i.ad = select i1 %i.ac, float %i.ab, float %i.y ; 3 uses
  %i.ae = icmp sgt i32 %.16373, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %.16373 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.16373, 5
  br i1 %min.iters.check, label %.lr.ph.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.af = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 4, i64 %i.af
  %n.vec = sub nsw i64 %wide.trip.count, %i.ah    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %wide.vec = load <8 x float>, ptr %i.am, align 4, !tbaa !200
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aq = fsub <4 x float> %strided.vec, %broadcast.splat ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  store float %i.ar, ptr %i.am, align 4, !tbaa !200
  %i.as = extractelement <4 x float> %i.aq, i64 1
  store float %i.as, ptr %i.an, align 4, !tbaa !200
  %i.at = extractelement <4 x float> %i.aq, i64 2
  store float %i.at, ptr %i.ao, align 4, !tbaa !200
  %i.au = extractelement <4 x float> %i.aq, i64 3
  store float %i.au, ptr %i.ap, align 4, !tbaa !200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %.lr.ph.preheader119, label %vector.body, !llvm.loop !414

.lr.ph.preheader119:                              ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader119, %.lr.ph
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %.lr.ph ], [ %indvars.iv92.ph, %.lr.ph.preheader119 ] ; 2 uses
end_hunk_0
