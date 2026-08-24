Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2:bb.a
  %i.as = and i32 %spec.select, 1024
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load <4 x float>, ptr %7, align 16, !tbaa !130
  %i.av = fadd <4 x float> %i.au, <float 7.500000e-01, float 7.500000e-01, float -7.500000e-01, float -7.500000e-01>
  store <4 x float> %i.av, ptr %7, align 16, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.065 = phi float [ -7.500000e-01, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.aw = and i32 %spec.select, 262144
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp olt float %i.az, 1.000000e+00
  %or.cond = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load float, ptr %7, align 16, !tbaa !190 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !191
  %i.be = fadd float %i.bb, %i.bd
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float 5.000000e-01, float 5.000000e-01)
  %i.bg = fptosi float %i.bf to i32
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !147
  %i.bk = fadd float %i.am, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !136
  %.sroa.079.0.vec.insert = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.079.4.vec.insert = insertelement <2 x float> %.sroa.079.0.vec.insert, float %i.bm, i64 1
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.bc, align 8
  %i.bn = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.bo = fsub float %.065, %i.am
  %.sroa.077.0.vec.insert = insertelement <2 x float> poison, float %i.bo, i64 0
  %.sroa.077.4.vec.insert = insertelement <2 x float> %.sroa.077.0.vec.insert, float %.065, i64 1
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.bj, <2 x float> %.sroa.079.4.vec.insert, <2 x float> %.sroa.08.0.copyload, i32 noundef %i.bn, float noundef %i.am, <2 x float> %.sroa.077.4.vec.insert, float noundef %i.ar, i32 noundef 160)
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !137
  store float %i.bh, ptr %8, align 4, !tbaa !135
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.br, ptr %i.bs, align 4, !tbaa !140
  %i.bt = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bp, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.bt, float noundef %i.ar, i32 noundef 80)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.bu = and i32 %spec.select, 131072
  %.not67 = icmp eq i32 %i.bu, 0
  %. = select i1 %.not67, ptr %6, ptr %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %., i64 16, i1 false), !tbaa.struct !186
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !193
  %i.bx = fcmp olt float %i.bw, 1.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !147 ; 2 uses
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.07.0.copyload = load <2 x float>, ptr %7, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.ca, align 8
  %i.cb = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  %.sroa.075.0.vec.insert = insertelement <2 x float> poison, float %.065, i64 0
  %.sroa.075.4.vec.insert = shufflevector <2 x float> %.sroa.075.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.bz, <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.06.0.copyload, i32 noundef %i.cb, float noundef %i.am, <2 x float> %.sroa.075.4.vec.insert, float noundef %i.ar, i32 noundef 0)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.cc, i32 noundef %i.cd, float noundef %i.ar, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  call void @_ZN5ImGui18RenderNavHighlightERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.j, i32 noundef 1)
  br i1 %i.at, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 5544
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !442
  %i.cg = fcmp ogt float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.05.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.q, align 8
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.ar)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !147
  %i.cj = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.ci, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.q, i32 noundef %i.cj, float noundef %i.ar, i32 noundef 0, float noundef 1.000000e+00)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 7260
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !161
  %i.cm = icmp eq i32 %i.cl, %i.j
  %i.cn = and i32 %spec.select, 512
  %.not68 = icmp eq i32 %i.cn, 0
  %or.cond70 = and i1 %.not68, %i.cm
  br i1 %or.cond70, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.co = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.co, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cp = and i32 %spec.select, 2
  %.not69 = icmp eq i32 %i.cp, 0
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.59, ptr noundef nonnull %5, i64 noundef 12, i32 noundef 2) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cr = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.60, ptr noundef nonnull %5, i64 noundef 16, i32 noundef 2) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cs = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %spec.select, <2 x float> zeroinitializer) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef nonnull @.str.72, ptr noundef null, i32 noundef 0)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t, %bb.s
  %i.ct = and i32 %spec.select, 64
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = load i8, ptr %i.a, align 1, !range !124
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond4 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = and i32 %spec.select, 403046402
  call void @_ZN5ImGui12ColorTooltipEPKcPKfi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.cx)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.aa
  %.0 = phi i1 [ %i.w, %bb.aa ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  %.1 = phi i1 [ %.0, %bb.ab ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN5ImGui9OpenPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec4, align 8             ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImRect, align 8            ; 6 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImRect, align 8            ; 6 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %13 = alloca %struct.ImVec4, align 8            ; 6 uses
  %14 = alloca %struct.ImVec2, align 8            ; 9 uses
  %i.i = alloca [4 x float], align 16             ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 8 uses
  %16 = alloca %struct.ImVec2, align 4            ; 9 uses
  %17 = alloca %struct.ImVec2, align 4            ; 9 uses
  %18 = alloca %struct.ImVec2, align 4            ; 9 uses
  %i.j = alloca float, align 4                    ; 21 uses
  %i.k = alloca float, align 4                    ; 19 uses
  %i.l = alloca float, align 4                    ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %i.n = alloca float, align 4                    ; 7 uses
  %i.o = alloca float, align 4                    ; 7 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %20 = alloca %struct.ImVec2, align 8            ; 7 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca float, align 4                    ; 3 uses
  %21 = alloca %struct.ImVec4, align 8            ; 6 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %23 = alloca %struct.ImVec2, align 4            ; 5 uses
  %24 = alloca %struct.ImVec4, align 8            ; 6 uses
  %25 = alloca %struct.ImVec4, align 8            ; 6 uses
  %26 = alloca %struct.ImVec4, align 8            ; 6 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca float, align 4                    ; 4 uses
  %i.u = alloca float, align 4                    ; 4 uses
  %i.v = alloca [7 x i32], align 16               ; 10 uses
  %27 = alloca %struct.ImVec4, align 8            ; 8 uses
  %28 = alloca %struct.ImVec4, align 4            ; 7 uses
  %29 = alloca %struct.ImVec2, align 8            ; 8 uses
  %30 = alloca %struct.ImVec2, align 8            ; 6 uses
  %31 = alloca %struct.ImVec2, align 8            ; 5 uses
  %32 = alloca %struct.ImVec2, align 8            ; 5 uses
  %33 = alloca %struct.ImVec2, align 8            ; 6 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %35 = alloca %struct.ImVec2, align 8            ; 4 uses
  %36 = alloca %struct.ImVec2, align 4            ; 25 uses
  %37 = alloca %struct.ImVec2, align 4            ; 25 uses
  %38 = alloca %struct.ImRect, align 8            ; 9 uses
  %i.w = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 22 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 7184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  store i8 1, ptr %i.z, align 8, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 147
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !123, !range !124, !noundef !125
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.dj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 616
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 35 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 5472 ; 4 uses
  %i.ag = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 7348
  store i32 0, ptr %i.ah, align 4, !tbaa !431
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  tail call void @_ZN5ImGui10BeginGroupEv()
  %i.ai = lshr i32 %2, 4
  %i.aj = and i32 %i.ai, 16
  %i.ak = xor i32 %i.aj, 16
  %spec.select = or i32 %i.ak, %2                 ; 3 uses
  %i.al = and i32 %2, 8
  %.not405 = icmp eq i32 %i.al, 0
  br i1 %.not405, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui23ColorPickerOptionsPopupEPKfi(ptr noundef %1, i32 noundef %spec.select)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = and i32 %2, 100663296
  %.not406 = icmp eq i32 %i.am, 0
  br i1 %.not406, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 12268
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !432
  %i.ap = and i32 %i.ao, 100663296                ; 2 uses
  %.not407 = icmp eq i32 %i.ap, 0
  %spec.select430 = select i1 %.not407, i32 33554432, i32 %i.ap
  %i.aq = or disjoint i32 %spec.select430, %spec.select
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.d ], [ %i.aq, %bb.e ] ; 3 uses
  %i.ar = and i32 %.1, 402653184
  %.not408 = icmp eq i32 %i.ar, 0
  br i1 %.not408, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 12268
  %i.at = load i32, ptr %i.as, align 4, !tbaa !432
  %i.au = and i32 %i.at, 402653184                ; 2 uses
  %.not409 = icmp eq i32 %i.au, 0
  %spec.select431 = select i1 %.not409, i32 134217728, i32 %i.au
  %i.av = or disjoint i32 %spec.select431, %.1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.av, %bb.g ]  ; 3 uses
  %i.aw = and i32 %.2, 8
  %.not410 = icmp eq i32 %i.aw, 0
  br i1 %.not410, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 12268
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !432
  %i.az = and i32 %i.ay, 65536
  %i.ba = or i32 %i.az, %.2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi i32 [ %.2, %bb.h ], [ %i.ba, %bb.i ]  ; 22 uses
  %i.bb = and i32 %.3, 2
  %.not411 = icmp eq i32 %i.bb, 0                 ; 3 uses
  %i.bc = and i32 %.3, 65538
  %spec.select432 = icmp eq i32 %i.bc, 65536      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  store i64 %i.be, ptr %14, align 8
  %i.bf = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 14 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 5556 ; 4 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !144 ; 3 uses
  %i.bi = fadd float %i.bf, %i.bh
  %i.bj = select i1 %spec.select432, float -2.000000e+00, float -1.000000e+00
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bi, float %i.ag) ; 2 uses
  %i.bl = fcmp oge float %i.bf, %i.bk
  %i.bm = select i1 %i.bl, float %i.bf, float %i.bk ; 21 uses
  %i.bn = fmul float %i.bf, 2.000000e-01
  %i.bo = fptosi float %i.bn to i32
  %i.bp = sitofp i32 %i.bo to float               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.bq = select i1 %.not411, i64 16, i64 12      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 %i.bq, i1 false)
  %i.br = fmul float %i.bm, 8.000000e-02          ; 3 uses
  %i.bs = fmul float %i.bm, 5.000000e-01          ; 5 uses
  %i.bt = fsub float %i.bs, %i.br                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.bu = fadd float %i.bf, %i.bm
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 9 uses
  %i.bw = lshr i64 %i.be, 32
  %i.bx = trunc nuw i64 %i.bw to i32              ; 2 uses
  %i.by = bitcast i64 %i.be to <2 x float>        ; 6 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.ca = fadd float %i.bm, %i.bz                 ; 2 uses
  %i.cb = fadd float %i.bh, %i.ca                 ; 11 uses
  %i.cc = fadd float %i.bf, %i.cb                 ; 8 uses
  %i.cd = fadd float %i.bh, %i.cc                 ; 5 uses
  %i.ce = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bm, i64 1
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> splat (float 5.000000e-01), <2 x float> %i.by) ; 2 uses
  %39 = extractelement <2 x float> %i.cg, i64 0   ; 3 uses
  store float %39, ptr %15, align 8, !tbaa !135
  %40 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %41 = extractelement <2 x float> %i.cg, i64 1   ; 3 uses
  store float %41, ptr %40, align 4, !tbaa !140
  %i.ch = fmul float %i.bm, 2.700000e-02
  %i.ci = fptosi float %i.ch to i32
  %i.cj = sitofp i32 %i.ci to float
  %i.ck = fsub float %i.bt, %i.cj                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  store float %i.ck, ptr %16, align 4, !tbaa !135
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.cm = fmul float %i.ck, -5.000000e-01         ; 2 uses
  %i.cn = fmul float %i.ck, f0xBF5DB3D0
  store float %i.cm, ptr %17, align 4, !tbaa !135
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  store float %i.cn, ptr %i.co, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.cp = fmul float %i.ck, f0x3F5DB3D0
  store float %i.cm, ptr %18, align 4, !tbaa !135
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  store float %i.cp, ptr %i.cq, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.cr = load float, ptr %1, align 4, !tbaa !130 ; 4 uses
  store float %i.cr, ptr %i.j, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !130 ; 4 uses
  store float %i.ct, ptr %i.k, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !130 ; 4 uses
  store float %i.cv, ptr %i.l, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #36
  store float %i.cr, ptr %i.m, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #36
  store float %i.ct, ptr %i.n, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #36
  store float %i.cv, ptr %i.o, align 4, !tbaa !130
  %i.cw = and i32 %.3, 134217728
  %.not413 = icmp eq i32 %i.cw, 0                 ; 4 uses
  br i1 %.not413, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.cr, float noundef %i.ct, float noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.cx = load ptr, ptr @GImGui, align 8, !tbaa !9 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12280
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.da = load float, ptr %i.cu, align 4, !tbaa !130
  %i.db = load <2 x float>, ptr %1, align 4, !tbaa !130
  store <2 x float> %i.db, ptr %13, align 8, !tbaa !130
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.da, ptr %i.dc, align 8, !tbaa !390
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 12
  store float 0.000000e+00, ptr %i.dd, align 4, !tbaa !193
  %i.de = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %13)
  %.not.i = icmp eq i32 %i.cz, %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br i1 %.not.i, label %bb.l, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.l:                                             ; preds = %bb.k
  %i.df = load float, ptr %i.k, align 4, !tbaa !130
  %i.dg = fcmp oeq float %i.df, 0.000000e+00
  br i1 %i.dg, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 12272
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 8, !tbaa !434
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dh = load float, ptr %i.j, align 4, !tbaa !130
  %i.di = fcmp oeq float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 12272
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !434
  %i.dl = fcmp oeq float %i.dk, 1.000000e+00
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %i.dm = phi float [ %.pre.i, %._crit_edge.i ], [ 1.000000e+00, %bb.n ]
  store float %i.dm, ptr %i.j, align 4, !tbaa !130
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.dn = load float, ptr %i.l, align 4, !tbaa !130
  %i.do = fcmp oeq float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.q, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 12276
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !435
  store float %i.dq, ptr %i.k, align 4, !tbaa !130
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.r:                                             ; preds = %bb.j
  %i.dr = and i32 %.3, 268435456
  %.not414 = icmp eq i32 %i.dr, 0
  br i1 %.not414, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.cr, float noundef %i.ct, float noundef %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit:          ; preds = %bb.q, %bb.p, %bb.k, %bb.r, %bb.s
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 8, i1 noundef zeroext true)
  %i.ds = and i32 %.3, 67108864
  %.not415 = icmp eq i32 %i.ds, 0                 ; 2 uses
  br i1 %.not415, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.dt = load float, ptr %i.bg, align 4, !tbaa !144
  %i.du = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 7184
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !12 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  store i8 1, ptr %i.dx, align 8, !tbaa !101
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 147
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !123, !range !124, !noundef !125
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = fadd float %i.bm, %i.dt
  %i.ec = fadd float %i.bf, %i.eb
  %.sroa.0609.0.vec.insert = insertelement <2 x float> poison, float %i.ec, i64 0
  %.sroa.0609.4.vec.insert = insertelement <2 x float> %.sroa.0609.0.vec.insert, float %i.bm, i64 1
  %i.ed = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.dw, ptr noundef nonnull @.str.61, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.ee = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0609.4.vec.insert, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.ee, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 216
  %i.eg = load <2 x float>, ptr %i.ef, align 8, !tbaa !130 ; 2 uses
  %i.eh = fadd <2 x float> %i.ee, %i.eg
  store <2 x float> %i.eg, ptr %12, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x float> %i.eh, ptr %i.ei, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef -1.000000e+00)
  %i.ej = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.ed, ptr noundef null, i32 noundef 0)
  br i1 %i.ej, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  %i.ek = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.ed, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit:    ; preds = %bb.t, %bb.w
  %i.el = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.el, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 976
  %.val466 = load float, ptr %i.em, align 8, !tbaa !135
  %i.en = getelementptr i8, ptr %i.w, i64 980
  %.val467 = load float, ptr %i.en, align 4, !tbaa !140
  %i.eo = fsub float %.val466, %39                ; 3 uses
  %i.ep = fsub float %.val467, %41                ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %.val462 = load float, ptr %i.eq, align 8, !tbaa !135
  %i.er = getelementptr i8, ptr %i.w, i64 300
  %.val463 = load float, ptr %i.er, align 4, !tbaa !140
  %i.es = fsub float %.val462, %39                ; 2 uses
  %i.et = fsub float %.val463, %41                ; 2 uses
  %i.eu = fmul float %i.ep, %i.ep
  %i.ev = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.eu) ; 2 uses
  %i.ew = fadd float %i.bt, -1.000000e+00         ; 2 uses
  %i.ex = fmul float %i.ew, %i.ew
  %i.ey = fcmp ult float %i.ev, %i.ex
  br i1 %i.ey, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = fadd float %i.bs, 1.000000e+00          ; 2 uses
  %i.fa = fmul float %i.ez, %i.ez
  %i.fb = fcmp ugt float %i.ev, %i.fa
  br i1 %i.fb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fc = call float @atan2f(float noundef %i.et, float noundef %i.es) #36
  %i.fd = fdiv float %i.fc, f0x40490FDB
  %i.fe = fmul float %i.fd, 5.000000e-01          ; 3 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  %i.fg = fadd float %i.fe, 1.000000e+00
  %storemerge = select i1 %i.ff, float %i.fg, float %i.fe
  store float %storemerge, ptr %i.j, align 4, !tbaa !130
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0390 = phi i8 [ 1, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.fh = load float, ptr %i.j, align 4, !tbaa !130
  %i.fi = fmul float %i.fh, -2.000000e+00
  %i.fj = fmul float %i.fi, f0x40490FDB           ; 2 uses
  %i.fk = call float @cosf(float noundef %i.fj) #36 ; 2 uses
  %i.fl = call float @sinf(float noundef %i.fj) #36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.fm = fneg float %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.fk, i64 1 ; 2 uses
  %i.fr = fmul <2 x float> %i.fo, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fl, i64 1 ; 2 uses
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fv, <2 x float> %i.fr)
  store <2 x float> %i.fw, ptr %19, align 8
  %i.fx = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br i1 %i.fx, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.fy = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %i.fz, %i.fq
  %i.gb = insertelement <2 x float> poison, float %i.es, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.fv, <2 x float> %i.ga)
  store <2 x float> %i.gd, ptr %20, align 8
  %i.ge = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %20)
  br i1 %i.ge, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gf = call <2 x float> @_Z22ImTriangleClosestPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %20)
  store <2 x float> %i.gf, ptr %20, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #36
  call void @_Z27ImTriangleBarycentricCoordsRK6ImVec2S1_S1_S1_RfS2_S2_(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %i.gg = load float, ptr %i.q, align 4, !tbaa !130
  %i.gh = fsub float 1.000000e+00, %i.gg          ; 3 uses
  %i.gi = fcmp olt float %i.gh, f0x38D1B717
  %i.gj = fcmp ogt float %i.gh, 1.000000e+00
  %i.gk = select i1 %i.gj, float 1.000000e+00, float %i.gh
  %i.gl = select i1 %i.gi, float f0x38D1B717, float %i.gk ; 2 uses
  store float %i.gl, ptr %i.l, align 4, !tbaa !130
  %i.gm = load float, ptr %i.p, align 4, !tbaa !130
  %i.gn = fdiv float %i.gm, %i.gl                 ; 3 uses
  %i.go = fcmp olt float %i.gn, f0x38D1B717
  %i.gp = fcmp ogt float %i.gn, 1.000000e+00
  %i.gq = select i1 %i.gp, float 1.000000e+00, float %i.gn
  %i.gr = select i1 %i.go, float f0x38D1B717, float %i.gq
  store float %i.gr, ptr %i.k, align 4, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit
  %.2395 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ 1, %bb.ad ], [ %.0390, %bb.aa ] ; 2 uses
  %.1391 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ %.0390, %bb.ad ], [ %.0390, %bb.aa ] ; 2 uses
  %.1387 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ 1, %bb.ad ], [ 0, %bb.aa ] ; 2 uses
  %i.gs = and i32 %.3, 8
  %.not418 = icmp eq i32 %i.gs, 0
  br i1 %.not418, label %bb.af, label %bb.au

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.50, i32 noundef 1)
  br label %bb.au

bb.ag:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.gt = and i32 %.3, 33554432
  %.not416 = icmp eq i32 %i.gt, 0
  br i1 %.not416, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gu = load ptr, ptr @GImGui, align 8, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 7184
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !12 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 144
  store i8 1, ptr %i.gx, align 8, !tbaa !101
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 147
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !123, !range !124, !noundef !125
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit503, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0597.0.vec.insert = insertelement <2 x float> poison, float %i.bm, i64 0
  %.sroa.0597.4.vec.insert = shufflevector <2 x float> %.sroa.0597.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.gw, ptr noundef nonnull @.str.62, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.hc = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0597.4.vec.insert, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.hc, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 216
  %i.he = load <2 x float>, ptr %i.hd, align 8, !tbaa !130 ; 2 uses
  %i.hf = fadd <2 x float> %i.hc, %i.he
  store <2 x float> %i.he, ptr %10, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %i.hf, ptr %i.hg, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef -1.000000e+00)
  %i.hh = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %i.hb, ptr noundef null, i32 noundef 0)
  br i1 %i.hh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.hi = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %i.hb, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit503

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit503: ; preds = %bb.ah, %bb.ak
  %i.hj = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.hj, label %bb.al, label %bb.an

bb.al:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit503
  %i.hk = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.hl = fadd float %i.bm, -1.000000e+00
  %i.hm = load <2 x float>, ptr %i.hk, align 8, !tbaa !130
  %i.hn = fsub <2 x float> %i.hm, %i.by
  %i.ho = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = fdiv <2 x float> %i.hn, %i.hp           ; 3 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.hs = fcmp ogt float %i.hr, 1.000000e+00
  %i.ht = select i1 %i.hs, float 1.000000e+00, float %i.hr
  %i.hu = fcmp olt <2 x float> %i.hq, zeroinitializer ; 2 uses
  %i.hv = extractelement <2 x i1> %i.hu, i64 0
  %i.hw = select i1 %i.hv, float 0.000000e+00, float %i.ht
  store float %i.hw, ptr %i.k, align 4, !tbaa !130
  %i.hx = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %i.hy = fcmp ogt float %i.hx, 1.000000e+00
  %i.hz = select i1 %i.hy, float 1.000000e+00, float %i.hx
  %i.ia = fsub float 1.000000e+00, %i.hz
  %i.ib = extractelement <2 x i1> %i.hu, i64 1
  %i.ic = select i1 %i.ib, float 1.000000e+00, float %i.ia
  store float %i.ic, ptr %i.l, align 4, !tbaa !130
  %i.id = getelementptr inbounds nuw i8, ptr %i.w, i64 12280
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  %i.if = load float, ptr %i.cu, align 4, !tbaa !130
  %i.ig = load <2 x float>, ptr %1, align 4, !tbaa !130
  store <2 x float> %i.ig, ptr %21, align 8, !tbaa !130
  %i.ih = getelementptr inbounds nuw i8, ptr %21, i64 8
  store float %i.if, ptr %i.ih, align 8, !tbaa !390
  %i.ii = getelementptr inbounds nuw i8, ptr %21, i64 12
  store float 0.000000e+00, ptr %i.ii, align 4, !tbaa !193
  %i.ij = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %21)
  %i.ik = icmp eq i32 %i.ie, %i.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br i1 %i.ik, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.il = getelementptr inbounds nuw i8, ptr %i.w, i64 12272
  %i.im = load float, ptr %i.il, align 8, !tbaa !434
  store float %i.im, ptr %i.j, align 4, !tbaa !130
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit503
  %.2388 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit503 ], [ 1, %bb.am ], [ 1, %bb.al ] ; 3 uses
  %i.in = and i32 %.3, 8
  %.not417 = icmp eq i32 %i.in, 0
  br i1 %.not417, label %bb.ao, label %bb.ap
end_hunk_0
