Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui11RenderFrameE6ImVec2S0_jbf:bb.a
  %i.m = fadd <2 x float> %i.l, splat (float 1.000000e+00)
  store <2 x float> %i.m, ptr %8, align 8
  %i.n = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3628
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 3220
  %i.q = load float, ptr %i.p, align 4, !tbaa !416
  %i.r = load <4 x float>, ptr %i.o, align 4, !tbaa !8
  %i.s = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.q, i64 3
  %i.t = fmul <4 x float> %i.r, %i.s              ; 3 uses
  %i.u = fcmp olt <4 x float> %i.t, zeroinitializer
  %i.v = fcmp ogt <4 x float> %i.t, splat (float 1.000000e+00)
  %i.w = select <4 x i1> %i.v, <4 x float> splat (float 1.000000e+00), <4 x float> %i.t
  %i.x = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.y = select <4 x i1> %i.u, <4 x float> splat (float 5.000000e-01), <4 x float> %i.x
  %i.z = fptosi <4 x float> %i.y to <4 x i32>
  %i.aa = shl <4 x i32> %i.z, <i32 0, i32 8, i32 16, i32 24>
  %i.ab = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.aa)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.i, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.ab, float noundef %4, float noundef %i.g, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !452
  %i.ad = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3612
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 3220
  %i.ag = load float, ptr %i.af, align 4, !tbaa !416
  %i.ah = load <4 x float>, ptr %i.ae, align 4, !tbaa !8
  %i.ai = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.ag, i64 3
  %i.aj = fmul <4 x float> %i.ah, %i.ai           ; 3 uses
  %i.ak = fcmp olt <4 x float> %i.aj, zeroinitializer
  %i.al = fcmp ogt <4 x float> %i.aj, splat (float 1.000000e+00)
  %i.am = select <4 x i1> %i.al, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aj
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ao = select <4 x i1> %i.ak, <4 x float> splat (float 5.000000e-01), <4 x float> %i.an
  %i.ap = fptosi <4 x float> %i.ao to <4 x i32>
  %i.aq = shl <4 x i32> %i.ap, <i32 0, i32 8, i32 16, i32 24>
  %i.ar = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.aq)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.ar, float noundef %4, float noundef %i.g, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %0, <2 x float> %1, float noundef %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 2 uses
  %4 = alloca %struct.ImVec2, align 8             ; 2 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  store <2 x float> %0, ptr %3, align 8
  store <2 x float> %1, ptr %4, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3296
  %i.c = load float, ptr %i.b, align 8, !tbaa !472 ; 3 uses
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 712 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !452
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.i = fadd <2 x float> %0, splat (float 1.000000e+00)
  store <2 x float> %i.i, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.j = fadd <2 x float> %1, splat (float 1.000000e+00)
  store <2 x float> %i.j, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3628
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.m = load float, ptr %i.l, align 4, !tbaa !416
  %i.n = load <4 x float>, ptr %i.k, align 4, !tbaa !8
  %i.o = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.m, i64 3
  %i.p = fmul <4 x float> %i.n, %i.o              ; 3 uses
  %i.q = fcmp olt <4 x float> %i.p, zeroinitializer
  %i.r = fcmp ogt <4 x float> %i.p, splat (float 1.000000e+00)
  %i.s = select <4 x i1> %i.r, <4 x float> splat (float 1.000000e+00), <4 x float> %i.p
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.u = select <4 x i1> %i.q, <4 x float> splat (float 5.000000e-01), <4 x float> %i.t
  %i.v = fptosi <4 x float> %i.u to <4 x i32>
  %i.w = shl <4 x i32> %i.v, <i32 0, i32 8, i32 16, i32 24>
  %i.x = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.w)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.h, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.x, float noundef %2, float noundef %i.c, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !452
  %i.z = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3612
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 3220
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !416
  %i.ad = load <4 x float>, ptr %i.aa, align 4, !tbaa !8
  %i.ae = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.ac, i64 3
  %i.af = fmul <4 x float> %i.ad, %i.ae           ; 3 uses
  %i.ag = fcmp olt <4 x float> %i.af, zeroinitializer
  %i.ah = fcmp ogt <4 x float> %i.af, splat (float 1.000000e+00)
  %i.ai = select <4 x i1> %i.ah, <4 x float> splat (float 1.000000e+00), <4 x float> %i.af
  %i.aj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ak = select <4 x i1> %i.ag, <4 x float> splat (float 5.000000e-01), <4 x float> %i.aj
  %i.al = fptosi <4 x float> %i.ak to <4 x i32>
  %i.am = shl <4 x i32> %i.al, <i32 0, i32 8, i32 16, i32 24>
  %i.an = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.am)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.an, float noundef %2, float noundef %i.c, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26RenderColorComponentMarkerERK6ImRectjf(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !394  ; 3 uses
  %i.b = fadd float %i.a, 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !395 ; 3 uses
  %i.e = fcmp ult float %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !452
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 3448
  %i.l = load float, ptr %i.k, align 8, !tbaa !473
  %i.m = fadd float %i.a, %i.l                    ; 2 uses
  %i.n = fcmp olt float %i.m, %i.d
  %i.o = select i1 %i.n, float %i.m, float %i.d
  tail call void @_ZN5ImGui24RenderRectFilledInRangeHEP10ImDrawListRK6ImRectjfff(ptr noundef %i.j, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, float noundef %i.a, float noundef %i.o, float noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN5ImGui24RenderRectFilledInRangeHEP10ImDrawListRK6ImRectjfff(ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca %struct.ImRect, align 16            ; 11 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.c = load i32, ptr %i.b, align 4, !tbaa !400
  %.not = icmp eq i32 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  %i.e = load i8, ptr %i.d, align 8, !tbaa !474, !range !64, !noundef !204
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = and i32 %2, 4
  %.not33 = icmp ne i32 %i.g, 0
  %or.cond.not = or i1 %.not33, %i.f
  br i1 %or.cond.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.i = load i32, ptr %i.h, align 8, !tbaa !475
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7852
  %i.l = load i32, ptr %i.k, align 4, !tbaa !476
  %i.m = and i32 %i.l, 2
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 377
  %i.q = load i8, ptr %i.p, align 1, !tbaa !477, !range !64, !noundef !204
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = fcmp uge float %3, 0.000000e+00
  %i.t = and i32 %2, 8
  %.not35 = icmp eq i32 %i.t, 0
  %or.cond38 = or i1 %i.s, %.not35
  %.0 = select i1 %or.cond38, float %3, float 0.000000e+00 ; 2 uses
  %i.u = fcmp olt float %.0, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3292
  %i.w = load float, ptr %i.v, align 4, !tbaa !478
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi float [ %i.w, %bb.g ], [ %.0, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !419
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 616
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.z = load <4 x float>, ptr %4, align 16, !tbaa !8 ; 3 uses
  %i.aa = load <4 x float>, ptr %i.x, align 4, !tbaa !8 ; 5 uses
  %i.ab = fcmp oge <4 x float> %i.z, %i.aa
  %i.ac = fcmp olt <4 x float> %i.z, %i.aa
  %i.ad = shufflevector <4 x i1> %i.ab, <4 x i1> %i.ac, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ae = select <4 x i1> %i.ad, <4 x float> %i.z, <4 x float> %i.aa ; 4 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.af, ptr %4, align 16
  %i.ag = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.ag, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4528
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !479
  %i.aj = fmul float %i.ai, 1.500000e+00          ; 2 uses
  %i.ak = fcmp ole float %i.aj, 2.000000e+00
  %i.al = select i1 %i.ak, float 2.000000e+00, float %i.aj
  %i.am = fptosi float %i.al to i32
  %i.an = sitofp i32 %i.am to float               ; 4 uses
  %i.ao = and i32 %2, 2
  %.not36 = icmp eq i32 %i.ao, 0
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 712
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !452
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4444
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.at = load float, ptr %i.as, align 4, !tbaa !416
  %i.au = load <4 x float>, ptr %i.ar, align 4, !tbaa !8
  %i.av = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.at, i64 3
  %i.aw = fmul <4 x float> %i.au, %i.av           ; 3 uses
  %i.ax = fcmp olt <4 x float> %i.aw, zeroinitializer
  %i.ay = fcmp ogt <4 x float> %i.aw, splat (float 1.000000e+00)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aw
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bb = select <4 x i1> %i.ax, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ba
  %i.bc = fptosi <4 x float> %i.bb to <4 x i32>
  %i.bd = shl <4 x i32> %i.bc, <i32 0, i32 8, i32 16, i32 24>
  %i.be = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bd)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i32 noundef %i.be, float noundef %.1, float noundef %i.an, i32 noundef 0)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.an, float 5.000000e-01, float 3.000000e+00)
  %i.bg = fptosi float %i.bf to i32
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bk = fsub <4 x float> %i.ae, %i.bj           ; 2 uses
  %i.bl = fadd <4 x float> %i.ae, %i.bj           ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.bm, ptr %4, align 16, !tbaa !8
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.aa, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bo = shufflevector <4 x float> %i.aa, <4 x float> %i.bk, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bp = fcmp ole <4 x float> %i.bn, %i.bo
  %i.bq = freeze <4 x i1> %i.bp
  %i.br = bitcast <4 x i1> %i.bq to i4
  %i.bs = icmp eq i4 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 712 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !452 ; 2 uses
  br i1 %i.bs, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.j
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i1 noundef zeroext false)
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !452
  %i.bw = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4444
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 3220
  %i.bz = load float, ptr %i.by, align 4, !tbaa !416
  %i.ca = load <4 x float>, ptr %i.bx, align 4, !tbaa !8
  %i.cb = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bz, i64 3
  %i.cc = fmul <4 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = fcmp olt <4 x float> %i.cc, zeroinitializer
  %i.ce = fcmp ogt <4 x float> %i.cc, splat (float 1.000000e+00)
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cc
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ch = select <4 x i1> %i.cd, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cg
  %i.ci = fptosi <4 x float> %i.ch to <4 x i32>
  %i.cj = shl <4 x i32> %i.ci, <i32 0, i32 8, i32 16, i32 24>
  %i.ck = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cj)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i32 noundef %i.ck, float noundef %.1, float noundef %i.an, i32 noundef 0)
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !452
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.cl)
  br label %bb.k

.critedge:                                        ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 4444
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.co = load float, ptr %i.cn, align 4, !tbaa !416
  %i.cp = load <4 x float>, ptr %i.cm, align 4, !tbaa !8
  %i.cq = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.co, i64 3
  %i.cr = fmul <4 x float> %i.cp, %i.cq           ; 3 uses
  %i.cs = fcmp olt <4 x float> %i.cr, zeroinitializer
  %i.ct = fcmp ogt <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.cu = select <4 x i1> %i.ct, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cr
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cw = select <4 x i1> %i.cs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cv
  %i.cx = fptosi <4 x float> %i.cw to <4 x i32>
  %i.cy = shl <4 x i32> %i.cx, <i32 0, i32 8, i32 16, i32 24>
  %i.cz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cy)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i32 noundef %i.cz, float noundef %.1, float noundef %i.an, i32 noundef 0)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread, %.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17RenderMouseCursorE6ImVec2fijjj(<2 x float> %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #12 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 9 uses
  %8 = alloca [4 x %struct.ImVec2], align 16      ; 8 uses
  %9 = alloca %struct.ImVec2, align 8             ; 11 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %or.cond = icmp ugt i32 %2, 10
  %spec.store.select4 = select i1 %or.cond, i32 0, i32 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !480  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8200
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !437  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !481  ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx134 = shl nsw i64 %i.h, 3
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %.idx134
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.m = insertelement <2 x float> poison, float %1, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.o = fmul <2 x float> %i.n, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.q = fmul float %1, 2.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = and i32 %spec.store.select4, 14
  %or.cond3 = icmp eq i32 %i.s, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = fmul float %1, 1.400000e+01
  %i.v = fmul float %1, 6.000000e+00
  %i.w = fmul float %1, 3.000000e+00
  %i.x = insertelement <2 x float> %i.o, float %i.q, i64 0
  %i.y = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %1, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.0133 = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %bb.g ] ; 2 uses
  %i.aa = load ptr, ptr %.0133, align 8, !tbaa !438 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !tbaa !8
  %i.ab = call noundef zeroext i1 @_Z32ImFontAtlasGetMouseCursorTexDataP11ImFontAtlasiP6ImVec2S2_S2_S2_(ptr noundef %i.c, i32 noundef %spec.store.select4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.j)
  br i1 %i.ab, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ac = load <2 x float>, ptr %6, align 8, !tbaa !8
  %i.ad = fsub <2 x float> %0, %i.ac              ; 3 uses
  store <2 x float> %i.ad, ptr %9, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ah = load float, ptr %i.ae, align 8, !tbaa !482 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.af, align 4, !tbaa !8 ; 2 uses
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !484
  %i.ak = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.al = insertelement <4 x float> poison, float %i.aj, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ah, i64 3
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = fadd <4 x float> %i.ao, <float 2.000000e+00, float 2.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.aq = fmul <4 x float> %i.z, %i.ap
end_hunk_0
begin_hunk_1_@_ZN5ImGui11FocusWindowEP11ImGuiWindowi:bb.a

.lr.ph.i.i172:                                    ; preds = %bb.az, %bb.ba
  %.079.i.i173 = phi ptr [ %i.he, %bb.ba ], [ %.048, %bb.az ] ; 2 uses
  %i.hc = icmp eq ptr %.079.i.i173, %i.gz
  br i1 %i.hc, label %select.unfold.i179, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i172
  %i.hd = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 952
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !848 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.he, null
  br i1 %.not.i.i174, label %.loopexit.i175, label %.lr.ph.i.i172, !llvm.loop !849

.loopexit.i175:                                   ; preds = %bb.ba, %.lr.ph.i169
  %indvars.iv.next60.i176 = add nuw nsw i64 %indvars.iv59.i170, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next60.i176, %wide.trip.count63.i166
  br i1 %exitcond.not.i177, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178, label %.lr.ph.i169, !llvm.loop !890

select.unfold.i179:                               ; preds = %bb.az, %.lr.ph.i.i172, %bb.ay
  %indvars.iv.next.i180 = add nuw nsw i64 %indvars.iv.i167, 1 ; 2 uses
  %exitcond64.not.i181 = icmp eq i64 %indvars.iv.next.i180, %wide.trip.count63.i166
  br i1 %exitcond64.not.i181, label %.split.thread, label %bb.ay, !llvm.loop !891

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178: ; preds = %.loopexit.i175
  %i.hf = trunc nuw nsw i64 %indvars.iv.i167 to i32
  br label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162: ; preds = %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178, %bb.ax
  %.128.i163 = phi i32 [ 0, %bb.ax ], [ %i.hf, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178 ] ; 2 uses
  %i.hg = icmp slt i32 %.128.i163, %i.go
  br i1 %i.hg, label %bb.bb, label %.split.thread

bb.bb:                                            ; preds = %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 10404
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !221
  %i.hj = and i32 %i.hi, 8
  %.not36.i164 = icmp eq i32 %i.hj, 0
  br i1 %.not36.i164, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hk = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !299
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.164, ptr noundef %i.hl), !inline_history !892
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  tail call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %.128.i163, i1 noundef zeroext false), !inline_history !892
  br label %.split.thread

.split.thread:                                    ; preds = %select.unfold.i179, %bb.bd, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162, %.split, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit
  %.in = getelementptr inbounds nuw i8, ptr %.048, i64 960
  %i.hm = load ptr, ptr %.in, align 8, !tbaa !847
  br label %.thread

.thread:                                          ; preds = %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit, %.split49.critedge, %bb.aw, %.split.thread
  %.not608893 = phi i1 [ false, %.split.thread ], [ true, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit ], [ true, %.split49.critedge ], [ true, %bb.aw ]
  %i.hn = phi ptr [ %i.hm, %.split.thread ], [ null, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit ], [ null, %.split49.critedge ], [ null, %bb.aw ] ; 9 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !819
  %.not61 = icmp eq i32 %i.hp, 0
  br i1 %.not61, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !570 ; 2 uses
  %.not62 = icmp eq ptr %i.hr, null
  br i1 %.not62, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 960
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !847
  %.not63 = icmp eq ptr %i.ht, %i.hn
  br i1 %.not63, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 5444
  %i.hv = load i8, ptr %i.hu, align 4, !tbaa !833, !range !64, !noundef !204
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf, %bb.be, %.thread
  br i1 %.not608893, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 226 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 5232
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 5240
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !561 ; 8 uses
  %i.ic = load i32, ptr %i.hz, align 8, !tbaa !563 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr [8 x i8], ptr %i.ib, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 -8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !705
  %i.ih = icmp eq ptr %i.ig, %i.hn
  br i1 %i.ih, label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ii = load i16, ptr %i.hy, align 2, !tbaa !899 ; 2 uses
  %i.ij = sext i16 %i.ii to i32
  %i.ik = add nsw i32 %i.ic, -1                   ; 4 uses
  %i.il = icmp sgt i32 %i.ik, %i.ij
  br i1 %i.il, label %.lr.ph.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.bk
  %.pre.i72 = sext i32 %i.ik to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bk
  %i.im = sext i16 %i.ii to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.ik to i64      ; 5 uses
  %i.in = sub nsw i64 %wide.trip.count.i, %i.im
  %xtraiter = and i64 %i.in, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol

.lr.ph.i74.prol:                                  ; preds = %.lr.ph.preheader.i
  %indvars.iv.next.i76.prol = add nsw i64 %i.im, 1 ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76.prol
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !705 ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.im
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !705
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 226 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !899
  %i.it = add i16 %i.is, -1
  store i16 %i.it, ptr %i.ir, align 2, !tbaa !899
  br label %.lr.ph.i74.prol.loopexit

.lr.ph.i74.prol.loopexit:                         ; preds = %.lr.ph.i74.prol, %.lr.ph.preheader.i
  %indvars.iv.i75.unr = phi i64 [ %i.im, %.lr.ph.preheader.i ], [ %indvars.iv.next.i76.prol, %.lr.ph.i74.prol ]
  %i.iu = add nsw i64 %wide.trip.count.i, -1
  %i.iv = icmp eq i64 %i.iu, %i.im
  br i1 %i.iv, label %._crit_edge.i, label %.lr.ph.i74

._crit_edge.i:                                    ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74, %.._crit_edge_crit_edge.i
  %.pre-phi.i73 = phi i64 [ %.pre.i72, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i74 ], [ %wide.trip.count.i, %.lr.ph.i74.prol.loopexit ]
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %.pre-phi.i73
  store ptr %i.hn, ptr %i.iw, align 8, !tbaa !705
  %i.ix = trunc i32 %i.ik to i16
  store i16 %i.ix, ptr %i.hy, align 2, !tbaa !899
  br label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i76.1, %.lr.ph.i74 ], [ %indvars.iv.i75.unr, %.lr.ph.i74.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i76 = add nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !705 ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.i75
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !705
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 226 ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !899
  %i.jd = add i16 %i.jc, -1
  store i16 %i.jd, ptr %i.jb, align 2, !tbaa !899
  %indvars.iv.next.i76.1 = add nsw i64 %indvars.iv.i75, 2 ; 3 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76.1
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !705 ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !705
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 226 ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !899
  %i.jj = add i16 %i.ji, -1
  store i16 %i.jj, ptr %i.jh, align 2, !tbaa !899
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i76.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i74, !llvm.loop !900

_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit: ; preds = %bb.bj, %._crit_edge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.048, i64 20
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !722
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !722
  %i.jo = or i32 %i.jn, %i.jl
  %i.jp = and i32 %i.jo, 8192
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bl, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.bl:                                            ; preds = %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hx, i64 5216 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.hx, i64 5224 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !561 ; 3 uses
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !563 ; 4 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr [8 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 -8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !705 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hn
  br i1 %i.jz, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 960
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !847
  %i.kc = icmp ne ptr %i.kb, %i.hn
  %i.kd = icmp sgt i32 %i.ju, 1
  %or.cond.i = and i1 %i.kd, %i.kc
  br i1 %or.cond.i, label %.lr.ph.preheader.i78, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

.lr.ph.preheader.i78:                             ; preds = %bb.bm
  %i.ke = add nsw i32 %i.ju, -2
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.bo, %.lr.ph.preheader.i78
  %.023.i = phi i32 [ %3, %bb.bo ], [ %i.ke, %.lr.ph.preheader.i78 ] ; 4 uses
  %2 = zext nneg i32 %.023.i to i64               ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %2
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !705
  %i.kh = icmp eq ptr %i.kg, %i.hn
  br i1 %i.kh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i79
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %2 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = xor i32 %.023.i, -1
  %i.kl = add i32 %i.ju, %i.kk
  %i.km = sext i32 %i.kl to i64
  %i.kn = shl nsw i64 %i.km, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr nonnull align 8 %i.kj, i64 %i.kn, i1 false)
  %i.ko = load i32, ptr %i.jr, align 8, !tbaa !901
  %i.kp = load ptr, ptr %i.js, align 8, !tbaa !561
  %i.kq = sext i32 %i.ko to i64
  %i.kr = getelementptr [8 x i8], ptr %i.kp, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 -8
  store ptr %i.hn, ptr %i.ks, align 8, !tbaa !705
  br label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.bo:                                            ; preds = %.lr.ph.i79
  %3 = add nsw i32 %.023.i, -1
  %i.kt = icmp sgt i32 %.023.i, 0
  br i1 %i.kt, label %.lr.ph.i79, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, !llvm.loop !902

_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit: ; preds = %select.unfold.i, %bb.bo, %bb.ai, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i, %_ZN5ImGui20GetTopMostPopupModalEv.exit, %bb.bn, %bb.bm, %bb.bl, %bb.bi, %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui31SetActiveIdUsingAllKeyboardKeysEv() local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7768
  store i32 15, ptr %i.b, align 8, !tbaa !649
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  store i8 1, ptr %i.c, align 4, !tbaa !650
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8385
  store i8 0, ptr %i.d, align 1, !tbaa !388
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8384
  store i8 0, ptr %i.e, align 8, !tbaa !655
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8322
  %i.g = load i8, ptr %i.f, align 2, !tbaa !881, !range !64, !noundef !204
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8321
  store i8 %i.g, ptr %i.h, align 1, !tbaa !882
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui31UpdateMouseMovingWindowNewFrameEv() local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5344 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.e = load i32, ptr %i.d, align 4, !tbaa !819  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %i.e, ptr %i.f, align 8, !tbaa !824
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.h = load i32, ptr %i.g, align 4, !tbaa !845
  %i.i = icmp eq i32 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5493
  store i8 1, ptr %i.j, align 1, !tbaa !903
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.n = load i8, ptr %i.m, align 8, !tbaa !215, !range !64, !noundef !204
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !8 ; 3 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fcmp oge float %i.r, -2.560000e+05
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fcmp oge float %i.t, -2.560000e+05
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 239 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.w = and i32 %.pre.i, 256
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5456
  %i.z = and i32 %.pre.i, -3585
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 244
  %.sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.y, align 8, !tbaa !8
  %i.ad = fsub <2 x float> %i.q, %i.ac
  store i32 %i.z, ptr %.phi.trans.insert.i, align 1
  store i32 2139095039, ptr %i.aa, align 4
  store i32 2139095039, ptr %.sroa_idx36.i, align 4
  %i.ae = load <2 x float>, ptr %i.ab, align 8
  %i.af = fptosi <2 x float> %i.ad to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>   ; 2 uses
  store <2 x float> %i.ag, ptr %i.ab, align 8
  %i.ah = fsub <2 x float> %i.ag, %i.ae           ; 5 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = extractelement <2 x float> %i.ah, i64 1
  %i.am = fcmp oeq float %i.al, 0.000000e+00
  %or.cond.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.i, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !722
  %i.ap = and i32 %i.ao, 256
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 10068 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !676
  %i.as = fcmp ugt float %i.ar, 0.000000e+00
  br i1 %i.as, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.au = load float, ptr %i.at, align 4, !tbaa !904
  store float %i.au, ptr %i.aq, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 8, !tbaa !8
  %i.ax = fadd <2 x float> %i.ah, %i.aw
  store <2 x float> %i.ax, ptr %i.av, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 312 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ay, align 8, !tbaa !8
  %i.ba = fadd <2 x float> %i.ah, %i.az
  store <2 x float> %i.ba, ptr %i.ay, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 296 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.bb, align 8, !tbaa !8
  %i.bd = fadd <4 x float> %i.ai, %i.bc
  store <4 x float> %i.bd, ptr %i.bb, align 8, !tbaa !8
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !571
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.be, i32 noundef 0)
  br label %bb.o

bb.i:                                             ; preds = %bb.d, %_ZN5ImGui11KeepAliveIDEj.exit
  store ptr null, ptr %i.b, align 8, !tbaa !571
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !570 ; 2 uses
  %.not15 = icmp eq ptr %i.bg, null
  br i1 %.not15, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 140
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !790 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !819
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %i.bi, ptr %i.bm, align 8, !tbaa !824
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !845
  %i.bp = icmp eq i32 %i.bo, %i.bi
  br i1 %i.bp, label %bb.m, label %_ZN5ImGui11KeepAliveIDEj.exit16

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 5493
  store i8 1, ptr %i.bq, align 1, !tbaa !903
  br label %_ZN5ImGui11KeepAliveIDEj.exit16

_ZN5ImGui11KeepAliveIDEj.exit16:                  ; preds = %bb.l, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !215, !range !64, !noundef !204
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit16
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, %bb.i, %bb.j, %bb.k, %bb.n, %_ZN5ImGui11KeepAliveIDEj.exit16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.c = load i32, ptr %i.b, align 4, !tbaa !819
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %0, ptr %i.e, align 8, !tbaa !824
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.g = load i32, ptr %i.f, align 4, !tbaa !845
end_hunk_1
begin_hunk_2_@_ZN5ImGui17BeginErrorTooltipEv:bb.a
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !205
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.t = xor i32 %.334.i.i, -1                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5280
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5288
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !259  ; 3 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !258  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.y, 4
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.aa = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !255
  %i.ad = icmp ult i32 %i.ac, %i.t                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.neg.i.i.i.i = xor i64 %i.aa, -1
  %i.af = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ad, i64 %i.af, i64 %i.aa ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !257

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.loopexit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.w, %_Z9ImHashStrPKcmj.exit.loopexit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ag = icmp eq ptr %.013.lcssa.i.i.i.i, %i.z
  br i1 %i.ag, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ah = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !255
  %.not.i.i.i = icmp eq i32 %i.ah, %i.t
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !187 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !981, !range !64, !noundef !204
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp ne ptr %i.aj, null
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.h, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

bb.h:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 205
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !436, !range !64, !noundef !204
  %i.aq = trunc nuw i8 %i.ap to i1
  br label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit.thread:      ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, %bb.g, %bb.h, %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.ar = phi i1 [ %i.aq, %bb.h ], [ false, %_ZN5ImGui16FindWindowByNameEPKc.exit ], [ false, %bb.g ], [ false, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3596 ; 3 uses
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 3604 ; 2 uses
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %0, align 4, !tbaa !417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !419
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8056
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 4 dereferenceable(20) %0)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8052
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !420
  %.not.i = icmp eq i32 %i.az, 4
  br i1 %.not.i, label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread
  %i.ba = fsub <2 x float> <float 0.000000e+00, float 1.000000e+00>, %i.av
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> splat (float 1.500000e-01), <2 x float> %i.av)
  %i.bc = fsub <2 x float> <float 1.000000e+00, float 0.000000e+00>, %i.at
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> splat (float 1.500000e-01), <2 x float> %i.at)
  store <2 x float> %i.bd, ptr %i.as, align 4
  store <2 x float> %i.bb, ptr %i.au, align 4
  br label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit

_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit:        ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 10352
  %i.bf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 7928 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1128
  %i.bi = or i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !1128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 7944
  %i.bk = load i64, ptr %i.be, align 8
  store i64 %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 7952
  store i32 0, ptr %i.bl, align 8
  %.sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 7956
  store i32 0, ptr %.sroa_idx15, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 7932
  store i32 1, ptr %i.bm, align 4, !tbaa !1207
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit
  %i.bn = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.157, ptr noundef null, i32 noundef 33554799) ; 2 uses
  %i.bo = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8056 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !426 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.bs = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.11), !inline_history !1369 ; 0 uses
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !426 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %_ZN5ImGui13PopStyleColorEi.exit

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0.i38 = phi i32 [ %i.bt, %bb.l ], [ 1, %bb.k ]
  %i.bv = phi i32 [ %i.bt, %bb.l ], [ %i.bq, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8064
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 3532
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %i.by = phi i32 [ %i.bv, %.lr.ph ], [ %i.ci, %bb.m ]
  %.1.i24 = phi i32 [ %.0.i38, %.lr.ph ], [ %i.cj, %bb.m ] ; 2 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !423
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr [20 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -20
  %i.cd = getelementptr i8, ptr %i.cb, i64 -16
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !417
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !419
  %i.ch = load i32, ptr %i.bp, align 8, !tbaa !421
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.bp, align 8, !tbaa !421
  %i.cj = add nsw i32 %.1.i24, -1
  %i.ck = icmp samesign ugt i32 %.1.i24, 1
  br i1 %i.ck, label %bb.m, label %_ZN5ImGui13PopStyleColorEi.exit, !llvm.loop !427

_ZN5ImGui13PopStyleColorEi.exit:                  ; preds = %bb.m, %bb.l
  br i1 %i.bn, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN5ImGui13PopStyleColorEi.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !298
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 218
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !1097
  %i.cp = icmp eq i16 %i.co, 1
  br i1 %i.cp, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.158)
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !298 ; 7 uses
  %i.cr = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 5216 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 5224 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !561 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !563 ; 4 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !705 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cq
  br i1 %i.da, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 960
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !847
  %i.dd = icmp ne ptr %i.dc, %i.cq
  %i.de = icmp sgt i32 %i.cv, 1
  %or.cond.i = and i1 %i.de, %i.dd
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.df = add nsw i32 %i.cv, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %.023.i = phi i32 [ %2, %bb.r ], [ %i.df, %.lr.ph.preheader.i ] ; 4 uses
  %1 = zext nneg i32 %.023.i to i64               ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %1
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !705
  %i.di = icmp eq ptr %i.dh, %i.cq
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = xor i32 %.023.i, -1
  %i.dm = add i32 %i.cv, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.dk, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %i.cs, align 8, !tbaa !901
  %i.dq = load ptr, ptr %i.ct, align 8, !tbaa !561
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  store ptr %i.cq, ptr %i.dt, align 8, !tbaa !705
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !298
  %.pre28 = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.r:                                             ; preds = %.lr.ph.i
  %2 = add nsw i32 %.023.i, -1
  %i.du = icmp sgt i32 %.023.i, 0
  br i1 %i.du, label %.lr.ph.i, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, !llvm.loop !902

_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit: ; preds = %bb.r, %bb.o, %bb.p, %bb.q
  %i.dv = phi ptr [ %.pre28, %bb.q ], [ %i.cr, %bb.o ], [ %i.cr, %bb.p ], [ %i.cr, %bb.r ] ; 3 uses
  %i.dw = phi ptr [ %.pre, %bb.q ], [ %i.cq, %bb.o ], [ %i.cq, %bb.p ], [ %i.cq, %bb.r ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 226 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 5232
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 5240
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !561 ; 8 uses
  %i.eb = load i32, ptr %i.dy, align 8, !tbaa !563 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !705
  %i.eg = icmp eq ptr %i.ef, %i.dw
  br i1 %i.eg, label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit
  %i.eh = load i16, ptr %i.dx, align 2, !tbaa !899 ; 2 uses
  %i.ei = sext i16 %i.eh to i32
  %i.ej = add nsw i32 %i.eb, -1                   ; 4 uses
  %i.ek = icmp sgt i32 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph.preheader.i13, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.s
  %.pre.i = sext i32 %i.ej to i64
  br label %._crit_edge.i

.lr.ph.preheader.i13:                             ; preds = %bb.s
  %i.el = sext i16 %i.eh to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.ej to i64      ; 5 uses
  %i.em = sub nsw i64 %wide.trip.count.i, %i.el
  %xtraiter = and i64 %i.em, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i14.prol.loopexit, label %.lr.ph.i14.prol

.lr.ph.i14.prol:                                  ; preds = %.lr.ph.preheader.i13
  %indvars.iv.next.i.prol = add nsw i64 %i.el, 1  ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.prol
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !705 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.el
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !705
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 226 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !899
  %i.es = add i16 %i.er, -1
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !899
  br label %.lr.ph.i14.prol.loopexit

.lr.ph.i14.prol.loopexit:                         ; preds = %.lr.ph.i14.prol, %.lr.ph.preheader.i13
  %indvars.iv.i.unr = phi i64 [ %i.el, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i.prol, %.lr.ph.i14.prol ]
  %i.et = add nsw i64 %wide.trip.count.i, -1
  %i.eu = icmp eq i64 %i.et, %i.el
  br i1 %i.eu, label %._crit_edge.i, label %.lr.ph.i14

._crit_edge.i:                                    ; preds = %.lr.ph.i14.prol.loopexit, %.lr.ph.i14, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i14 ], [ %wide.trip.count.i, %.lr.ph.i14.prol.loopexit ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %.pre-phi.i
  store ptr %i.dw, ptr %i.ev, align 8, !tbaa !705
  %i.ew = trunc i32 %i.ej to i16
  store i16 %i.ew, ptr %i.dx, align 2, !tbaa !899
  br label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.prol.loopexit, %.lr.ph.i14
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i14 ], [ %indvars.iv.i.unr, %.lr.ph.i14.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.a
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !705 ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.i.a
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !705
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 226 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !899
  %i.fc = add i16 %i.fb, -1
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !899
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i.a, 2 ; 3 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.1
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !705 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.a
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !705
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 226 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !899
  %i.fi = add i16 %i.fh, -1
  store i16 %i.fi, ptr %i.fg, align 2, !tbaa !899
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i14, !llvm.loop !900

_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit: ; preds = %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, %._crit_edge.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dv, i64 5312
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !298
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 10352
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.fm, align 8
  br label %bb.t

.critedge:                                        ; preds = %_ZN5ImGui13PopStyleColorEi.exit
  call void @_ZN5ImGui3EndEv()
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %.critedge, %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  ret i1 %i.bn
}

declare void @_ZN5ImGui4TextEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15EndErrorTooltipEv() local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5ImGui3EndEv()
  ret void
}

declare void @_ZN5ImGui10BulletTextEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui8SameLineEff(float noundef %0, float noundef %1) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp une float %0, 0.000000e+00
  %i.h = fcmp olt float %1, 0.000000e+00          ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0 = select i1 %i.h, float 0.000000e+00, float %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.l = load float, ptr %i.k, align 8, !tbaa !871
  %i.m = fsub float %i.j, %i.l
  %i.n = fadd float %0, %i.m
  %i.o = fadd float %.0, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.r = load float, ptr %i.q, align 4, !tbaa !1479
  %i.s = fadd float %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.u = load float, ptr %i.t, align 8, !tbaa !1372
  %i.v = fadd float %i.u, %i.s
  store float %i.v, ptr %i.p, align 8, !tbaa !1343
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3300
  %i.x = load float, ptr %i.w, align 4, !tbaa !1374
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi float [ %i.x, %bb.e ], [ %1, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.aa = load float, ptr %i.z, align 8, !tbaa !1373
  %i.ab = fadd float %.1, %i.aa
  store float %i.ab, ptr %i.y, align 8, !tbaa !1343
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !331
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.ad, ptr %i.ae, align 4, !tbaa !328
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ah = load i64, ptr %i.af, align 8
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !1335
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store float %i.aj, ptr %i.ak, align 8, !tbaa !1336
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 1, ptr %i.al, align 8, !tbaa !1337
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui20DebugStartItemPickerEv() local_unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10465
  store i8 1, ptr %i.b, align 1, !tbaa !683
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5216 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !561  ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !563  ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !705  ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847
  %i.m = icmp ne ptr %i.l, %0
  %i.n = icmp sgt i32 %i.e, 1
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = add nsw i32 %i.e, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.023 = phi i32 [ %2, %bb.d ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %1 = zext nneg i32 %.023 to i64                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !705
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = xor i32 %.023, -1
  %i.v = add i32 %i.e, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.t, i64 %i.x, i1 false)
  %i.y = load i32, ptr %i.b, align 8, !tbaa !901
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !561
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  store ptr %0, ptr %i.ac, align 8, !tbaa !705
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %2 = add nsw i32 %.023, -1
  %i.ad = icmp sgt i32 %.023, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !902

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5232
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !561  ; 8 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !563  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !705
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 2, !tbaa !899  ; 2 uses
  %i.m = sext i16 %i.l to i32
  %i.n = add nsw i32 %i.f, -1                     ; 4 uses
  %i.o = icmp sgt i32 %i.n, %i.m
  br i1 %i.o, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = sext i32 %i.n to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = sext i16 %i.l to i64                     ; 5 uses
  %wide.trip.count = sext i32 %i.n to i64         ; 5 uses
  %i.q = sub nsw i64 %wide.trip.count, %i.p
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.p, 1     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.prol
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !705  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  store ptr %i.s, ptr %i.t, align 8, !tbaa !705
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 226 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !899
  %i.w = add i16 %i.v, -1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !899
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph ], [ %wide.trip.count, %.lr.ph.prol.loopexit ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pre-phi
  store ptr %0, ptr %i.z, align 8, !tbaa !705
  %i.aa = trunc i32 %i.n to i16
  store i16 %i.aa, ptr %i.b, align 2, !tbaa !899
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !705 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !705
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 226 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !899
  %i.ag = add i16 %i.af, -1
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !899
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !705 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !705
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 226 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !899
  %i.am = add i16 %i.al, -1
  store i16 %i.am, ptr %i.ak, align 2, !tbaa !899
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !900

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.d, align 8
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load i64, ptr %0, align 4
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 345
  store i8 1, ptr %i.g, align 1, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui12GetCursorPosEv() local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !8
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = load <2 x float>, ptr %i.f, align 4, !tbaa !8
  %i.k = fadd <2 x float> %i.i, %i.j
  ret <2 x float> %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui13GetCursorPosXEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load float, ptr %i.d, align 8, !tbaa !1343
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !870
  %i.h = fsub float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.j = load float, ptr %i.i, align 8, !tbaa !871
  %i.k = fadd float %i.h, %i.j
  ret float %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui13GetCursorPosYEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.e = load float, ptr %i.d, align 4, !tbaa !328
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !929
  %i.h = fsub float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.j = load float, ptr %i.i, align 4, !tbaa !1077
  %i.k = fadd float %i.h, %i.j
  ret float %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui12SetCursorPosERK6ImVec2(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !8
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !8
  %i.k = fadd <2 x float> %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store <2 x float> %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 345
  store i8 1, ptr %i.m, align 1, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui13SetCursorPosXEf(float noundef %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN5ImGui24GetNavTweakPressedAmountE9ImGuiAxis:bb.a
  %i.w = load float, ptr %i.v, align 8, !tbaa !912
  %i.x = fsub float %i.u, %i.w                    ; 3 uses
  %i.y = fcmp oeq float %i.u, 0.000000e+00
  br i1 %i.y, label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = fcmp ult float %i.x, %i.u
  br i1 %i.z, label %bb.d, label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = fcmp ugt float %i.g, 0.000000e+00
  %i.ab = fcmp olt float %i.x, %i.d               ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = fcmp oge float %i.u, %i.d
  %i.ad = and i1 %i.ac, %i.ab
  %i.ae = zext i1 %i.ad to i32
  br label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit

bb.f:                                             ; preds = %bb.d
  %i.af = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.x, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fsub <2 x float> %i.ag, %i.ai
  %i.ak = fcmp olt float %i.u, %i.d
  %i.al = insertelement <2 x float> poison, float %i.g, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x float> %i.aj, %i.am
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>
  %i.ap = insertelement <2 x i1> poison, i1 %i.ak, i64 0
  %i.aq = insertelement <2 x i1> %i.ap, i1 %i.ab, i64 1
  %i.ar = select <2 x i1> %i.aq, <2 x i32> splat (i32 -1), <2 x i32> %i.ao ; 2 uses
  %shift = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = sub nsw <2 x i32> %i.ar, %shift
  %i.as = extractelement <2 x i32> %foldExtExtBinop, i64 0
  br label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit

_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit:  ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.as, %bb.f ], [ 1, %bb.b ], [ %i.ae, %bb.e ], [ 0, %bb.c ]
  %i.at = sitofp i32 %.0.i to float               ; 2 uses
  %i.au = getelementptr [16 x i8], ptr %i.a, i64 %.011 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -7884
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !208, !range !64, !noundef !204
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

bb.g:                                             ; preds = %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit
  %i.ay = getelementptr i8, ptr %i.au, i64 -7880
  %i.az = load float, ptr %i.ay, align 4, !tbaa !1008 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !912
  %i.bc = fsub float %i.az, %i.bb                 ; 3 uses
  %i.bd = fcmp oeq float %i.az, 0.000000e+00
  br i1 %i.bd, label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = fcmp ult float %i.bc, %i.az
  br i1 %i.be, label %bb.i, label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14

bb.i:                                             ; preds = %bb.h
  %i.bf = fcmp ugt float %i.g, 0.000000e+00
  %i.bg = fcmp olt float %i.bc, %i.d              ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = fcmp oge float %i.az, %i.d
  %i.bi = and i1 %i.bh, %i.bg
  %i.bj = zext i1 %i.bi to i32
  br label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14

bb.k:                                             ; preds = %bb.i
  %i.bk = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bc, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.d, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fsub <2 x float> %i.bl, %i.bn
  %i.bp = fcmp olt float %i.az, %i.d
  %i.bq = insertelement <2 x float> poison, float %i.g, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv <2 x float> %i.bo, %i.br
  %i.bt = fptosi <2 x float> %i.bs to <2 x i32>
  %i.bu = insertelement <2 x i1> poison, i1 %i.bp, i64 0
  %i.bv = insertelement <2 x i1> %i.bu, i1 %i.bg, i64 1
  %i.bw = select <2 x i1> %i.bv, <2 x i32> splat (i32 -1), <2 x i32> %i.bt ; 2 uses
  %shift39 = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop40 = sub nsw <2 x i32> %i.bw, %shift39
  %i.bx = extractelement <2 x i32> %foldExtExtBinop40, i64 0
  br label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14

_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.0.i13 = phi i32 [ 0, %bb.h ], [ %i.bx, %bb.k ], [ 1, %bb.g ], [ %i.bj, %bb.j ]
  %i.by = sitofp i32 %.0.i13 to float
  %i.bz = fsub float %i.at, %i.by                 ; 4 uses
  %i.ca = fcmp oeq float %i.bz, 0.000000e+00
  br i1 %i.ca, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14
  %i.cb = getelementptr [12 x i8], ptr %i.a, i64 %.011
  %i.cc = getelementptr i8, ptr %i.cb, i64 -572
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ce = icmp eq i8 %i.cd, 0
  %brmerge30.not = and i1 %i.ce, %i.s
  br i1 %brmerge30.not, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20:             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  %i.cf = getelementptr [12 x i8], ptr %i.a, i64 %.010
  %i.cg = getelementptr i8, ptr %i.cf, i64 -572
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.l, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

bb.l:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit, %bb.l, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20
  %.0 = phi float [ 0.000000e+00, %bb.l ], [ %i.bz, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20 ], [ %i.bz, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit ], [ %i.bz, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14 ], [ %i.at, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25NavInitRequestApplyResultEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.e = load i32, ptr %i.d, align 4, !tbaa !400
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8336 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1378 ; 4 uses
  %.not27 = icmp eq i32 %i.e, %i.g
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.i = load i32, ptr %i.h, align 8, !tbaa !896
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8680
  store i32 %i.i, ptr %i.j, align 8, !tbaa !1038
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8684
  store i32 %i.g, ptr %i.k, align 4, !tbaa !838
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8340
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1379
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8688
  store i32 %i.m, ptr %i.n, align 8, !tbaa !1039
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8692
  store i32 0, ptr %i.o, align 4, !tbaa !1498
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8696
  store i8 0, ptr %i.p, align 8, !tbaa !1499
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8360
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1084
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8697
  %i.t = lshr i32 %i.r, 21
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 1
  store i8 %i.v, ptr %i.s, align 1, !tbaa !1500
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.x = load i32, ptr %i.w, align 4, !tbaa !221
  %i.y = and i32 %i.x, 16
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !895
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !299
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.178, i32 noundef %i.g, i32 noundef %i.aa, ptr noundef %i.ac)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !1378
  %.pre30 = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi ptr [ %.pre30, %bb.e ], [ %i.a, %bb.d ] ; 3 uses
  %i.ae = phi i32 [ %.pre, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !895 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8340
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1379
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8344
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8220
  store i32 %i.ae, ptr %i.ak, align 4, !tbaa !400
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8236
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !895
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8224
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !389 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1008
  %i.ap = zext i32 %i.ag to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %i.ae, ptr %i.aq, align 4, !tbaa !205
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1016
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !419
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8224
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !389 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 984
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !390
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1048
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8236
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !895
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.bc, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8219
  store i8 1, ptr %i.bd, align 1, !tbaa !897
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8376
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !626 ; 2 uses
  %.not29 = icmp eq i64 %i.bf, -1
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !654
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8323
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !1041, !range !64, !noundef !204
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !722
  %i.bm = and i32 %i.bl, 65536
  %.not13.i = icmp eq i32 %i.bm, 0
  br i1 %.not13.i, label %bb.j, label %.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 8304
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !653
  switch i32 %i.bo, label %.thread.i [
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !934
  %i.br = and i32 %i.bq, 1
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.sink.split.i, label %.thread.i

bb.l:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !934
  %i.bv = and i32 %i.bu, 2
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.sink.split.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 118
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !880, !range !64, !noundef !204
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.sink.split.i, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

.sink.split.i:                                    ; preds = %.thread.i, %bb.l, %bb.k, %bb.i
  %.sink.i = phi i8 [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ 1, %.thread.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.at, i64 8216
  store i8 %.sink.i, ptr %i.ca, align 8, !tbaa !474
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %.thread.i, %.sink.split.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 8218
  store i8 1, ptr %i.cb, align 2, !tbaa !894
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 8217
  store i8 1, ptr %i.cc, align 1, !tbaa !850
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #12 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 52 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8464
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1321
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8456
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8388 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !396
  br label %.thread148

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8576
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1322
  %.not111 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8388 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !396  ; 5 uses
  %i.k = and i32 %i.j, 1024                       ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.l, i1 %.not111, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8452
  %i.n = load i32, ptr %i.m, align 4, !tbaa !659
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8448
  %i.q = load i32, ptr %i.p, align 8, !tbaa !397
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8632
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1381
  %.not112 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8624
  br i1 %.not112, label %.thread151, label %.thread148

.thread151:                                       ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8400
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1074
  %i.x = and i32 %i.w, -2
  %narrow154 = icmp eq i32 %i.x, 2
  %i.y = zext i1 %narrow154 to i32
  br label %bb.h

.thread148:                                       ; preds = %bb.e, %.thread
  %.ph146 = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.e ]
  %.ph147 = phi ptr [ %i.e, %.thread ], [ %i.i, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %.thread ], [ %i.u, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1074
  %i.ab = and i32 %i.aa, -2
  %narrow153 = icmp eq i32 %i.ab, 2
  %i.ac = zext i1 %narrow153 to i32
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8568
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1074
  %i.ag = and i32 %i.af, -2
  %narrow = icmp eq i32 %i.ag, 2
  %i.ah = zext i1 %narrow to i32                  ; 3 uses
  br i1 %.not111, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %.not130 = icmp eq i32 %i.k, 0
  br i1 %.not130, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread151, %bb.g
  %i.ai = phi i32 [ %i.y, %.thread151 ], [ %i.ah, %bb.g ]
  %i.aj = or i32 %i.j, 16384                      ; 2 uses
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !396
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ %i.j, %bb.g ]
  %i.al = phi i32 [ %i.ai, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.an = load i32, ptr %i.am, align 4, !tbaa !400
  %.not131 = icmp ne i32 %i.an, 0
  %i.ao = and i32 %i.ak, 16384
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond179 = and i1 %.not131, %i.ap
  br i1 %or.cond179, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !389 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !722
  %i.au = and i32 %i.at, 65536
  %.not13.i = icmp eq i32 %i.au, 0
  br i1 %.not13.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8304
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !653
  switch i32 %i.aw, label %.thread.i [
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_ZN5ImGui25NavMoveRequestApplyResultEv:bb.a
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !1505
  %i.da = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.db = load float, ptr %i.da, align 8, !tbaa !1506
  %i.dc = fcmp olt float %i.cz, %i.db
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.v, %bb.u, %bb.t
  %.2 = phi ptr [ %i.cj, %bb.z ], [ %.1, %bb.y ], [ %.1, %bb.x ], [ %.1, %bb.v ], [ %.1, %bb.u ], [ %.1, %bb.t ] ; 15 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8236 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !895
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.dg = load ptr, ptr %.2, align 8, !tbaa !1377
  %i.dh = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 296
  %i.dj = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.dk = load <2 x float>, ptr %i.di, align 8, !tbaa !8 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dh, align 8, !tbaa !8
  %i.dm = fadd <2 x float> %i.dk, %i.dl
  %i.dn = load <2 x float>, ptr %i.dj, align 8, !tbaa !8
  %i.do = fadd <2 x float> %i.dk, %i.dn
  store <2 x float> %i.dm, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.do, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %.2, align 8, !tbaa !1377
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8392
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1075
  %i.dt = call <2 x float> @_ZN5ImGui14ScrollToRectExEP11ImGuiWindowRK6ImRecti(ptr noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.ds) ; 0 uses
  %i.du = load i32, ptr %i.cb, align 4, !tbaa !396
  %i.dv = and i32 %i.du, 64
  %.not118 = icmp eq i32 %i.dv, 0
  br i1 %.not118, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i32, ptr %i.ca, align 8, !tbaa !1074
  %i.dx = icmp eq i32 %i.dw, 2
  %.pre = load ptr, ptr %.2, align 8, !tbaa !1377 ; 4 uses
  br i1 %i.dx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre, i64 164
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !1081
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ea = phi float [ %i.dz, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 172
  store float %i.ea, ptr %i.eb, align 4, !tbaa !1078
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre, i64 180
  store float 0.000000e+00, ptr %i.ec, align 4, !tbaa !1079
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !1080
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8224 ; 5 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !389
  %i.eg = load ptr, ptr %.2, align 8, !tbaa !1377 ; 3 uses
  %.not119 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not119, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !221
  %i.ej = and i32 %i.ei, 4
  %.not120 = icmp eq i32 %i.ej, 0
  br i1 %.not120, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !299
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.180, ptr noundef %i.el)
  %.pre155 = load ptr, ptr %.2, align 8, !tbaa !1377
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.em = phi ptr [ %.pre155, %bb.ai ], [ %i.eg, %bb.ah ]
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !389
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 -1, ptr %i.en, align 8, !tbaa !654
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !819 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1378 ; 2 uses
  %.not121 = icmp eq i32 %i.ep, %i.er
  %.pre157.pre163 = load i32, ptr %i.cb, align 4, !tbaa !396 ; 3 uses
  br i1 %.not121, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = and i32 %.pre157.pre163, 32768
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %.pre156 = load i32, ptr %i.eq, align 8, !tbaa !1378
  %.pre157.pre = load i32, ptr %i.cb, align 4, !tbaa !396
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.pre157 = phi i32 [ %.pre157.pre, %bb.am ], [ %.pre157.pre163, %bb.al ], [ %.pre157.pre163, %bb.ak ] ; 3 uses
  %i.eu = phi i32 [ %.pre156, %bb.am ], [ %i.er, %bb.al ], [ %i.ep, %bb.ak ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !400
  %.not122 = icmp ne i32 %i.ew, %i.eu
  %i.ex = and i32 %.pre157, 2048
  %.not123 = icmp ne i32 %i.ex, 0
  %or.cond180.not183 = select i1 %.not122, i1 true, i1 %.not123
  %i.ey = and i32 %.pre157, 8192
  %i.ez = icmp eq i32 %i.ey, 0
  %or.cond182 = select i1 %or.cond180.not183, i1 %i.ez, i1 false
  br i1 %or.cond182, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !896
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8680
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !1038
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8684
  store i32 %i.eu, ptr %i.fd, align 4, !tbaa !838
  %i.fe = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !1379
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 8688
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !1039
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 8396
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !1083
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8692
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !1498
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8696
  %i.fl = lshr i32 %.pre157, 10
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = and i8 %i.fm, 1
  store i8 %i.fn, ptr %i.fk, align 8, !tbaa !1499
  %i.fo = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !1084
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 8697
  %i.fr = lshr i32 %i.fp, 21
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = and i8 %i.fs, 1
  store i8 %i.ft, ptr %i.fq, align 1, !tbaa !1500
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !221
  %i.fw = and i32 %i.fv, 16
  %.not124 = icmp eq i32 %i.fw, 0
  %.pre159 = load ptr, ptr %i.ee, align 8, !tbaa !389 ; 2 uses
  %.pre161 = load i32, ptr %i.dd, align 4, !tbaa !895 ; 2 uses
  br i1 %.not124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre159, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !299
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.181, i32 noundef %i.eu, i32 noundef %.pre161, ptr noundef %i.fy)
  %.pre158 = load ptr, ptr %i.ee, align 8, !tbaa !389
  %.pre160 = load i32, ptr %i.dd, align 4, !tbaa !895
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fz = phi i32 [ %.pre160, %bb.aq ], [ %.pre161, %bb.ap ] ; 2 uses
  %i.ga = phi ptr [ %.pre158, %bb.aq ], [ %.pre159, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 984
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !390
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1048
  %i.ge = zext i32 %i.fz to i64                   ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8
  store i64 %i.gg, ptr %1, align 8
  %i.gh = load i32, ptr %i.eq, align 8, !tbaa !1378 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !1379
  %i.gk = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.gl = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8220
  store i32 %i.gh, ptr %i.gm, align 4, !tbaa !400
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8236
  store i32 %i.fz, ptr %i.gn, align 4, !tbaa !895
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.gj)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8224
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !389 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1008
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ge
  store i32 %i.gh, ptr %i.gr, align 4, !tbaa !205
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1016
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !419
  %i.gu = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8224
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !389
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 984
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !390
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1048
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 8236
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !895
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hc
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.hd, align 4, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !626 ; 2 uses
  %.not125 = icmp eq i64 %i.hf, -1
  br i1 %.not125, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !654
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hh = load i32, ptr %i.cb, align 4, !tbaa !396 ; 2 uses
  %i.hi = and i32 %i.hh, 1024
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.au, label %.thread176

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.hk = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.hl = load <2 x float>, ptr %i.gk, align 8, !tbaa !8
  %i.hm = load <2 x float>, ptr %i.hk, align 8, !tbaa !8
  %i.hn = fadd <2 x float> %i.hl, %i.hm
  %i.ho = fmul <2 x float> %i.hn, splat (float 5.000000e-01)
  store <2 x float> %i.ho, ptr %2, align 8
  %i.hp = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !8
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hp
  store float %i.hr, ptr %i.hs, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.ht = load ptr, ptr %i.ee, align 8, !tbaa !389
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 984
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !390
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1048
  %i.hx = load i32, ptr %i.dd, align 4, !tbaa !895
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = load i64, ptr %1, align 8
  store i64 %i.ia, ptr %i.hz, align 8
  %.pre162 = load i32, ptr %i.cb, align 4, !tbaa !396 ; 3 uses
  %.pre165 = and i32 %.pre162, 1024
  %i.ib = icmp eq i32 %.pre165, 0
  br i1 %i.ib, label %bb.aw, label %.thread176

.thread176:                                       ; preds = %bb.at, %bb.au
  %i.ic = phi i32 [ %.pre162, %bb.au ], [ %i.hh, %bb.at ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !1084
  %i.if = and i32 %i.ie, 1048576
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread176
  %i.ih = and i32 %i.ic, -4097                    ; 2 uses
  store i32 %i.ih, ptr %i.cb, align 4, !tbaa !396
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread176, %bb.au
  %i.ii = phi i32 [ %i.ih, %bb.av ], [ %i.ic, %.thread176 ], [ %.pre162, %bb.au ] ; 3 uses
  %i.ij = and i32 %i.ii, 4096
  %.not127 = icmp eq i32 %i.ij, 0
  br i1 %.not127, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ik = load i32, ptr %i.eq, align 8, !tbaa !1378
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 8296
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !1072
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 8300 ; 2 uses
  %i.in = lshr i32 %i.ii, 4
  %spec.store.select = and i32 %i.in, 32          ; 2 uses
  store i32 %spec.store.select, ptr %i.im, align 4
  %i.io = and i32 %i.ii, 1024
  %.not129 = icmp eq i32 %i.io, 0
  br i1 %.not129, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ip = or disjoint i32 %spec.store.select, 13
  store i32 %i.ip, ptr %i.im, align 4, !tbaa !1073
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %i.iq = load i32, ptr %i.cb, align 4, !tbaa !396
  %i.ir = and i32 %i.iq, 16384
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.it = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8224
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !389 ; 2 uses
  %.not.i136 = icmp eq ptr %i.iv, null
  br i1 %.not.i136, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !722
  %i.iy = and i32 %i.ix, 65536
  %.not13.i137 = icmp eq i32 %i.iy, 0
  br i1 %.not13.i137, label %bb.bc, label %.sink.split.i138

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 8304
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !653
  switch i32 %i.ja, label %.thread.i140 [
    i32 2, label %bb.bd
    i32 3, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !934
  %i.jd = and i32 %i.jc, 1
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %.sink.split.i138, label %.thread.i140

bb.be:                                            ; preds = %bb.bc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !934
  %i.jh = and i32 %i.jg, 2
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.sink.split.i138, label %.thread.i140

.thread.i140:                                     ; preds = %bb.be, %bb.bd, %bb.bc
  %i.jj = getelementptr inbounds nuw i8, ptr %i.it, i64 118
  %i.jk = load i8, ptr %i.jj, align 2, !tbaa !880, !range !64, !noundef !204
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %.sink.split.i138, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141

.sink.split.i138:                                 ; preds = %.thread.i140, %bb.be, %bb.bd, %bb.bb
  %.sink.i139 = phi i8 [ 0, %bb.bb ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 1, %.thread.i140 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 8216
  store i8 %.sink.i139, ptr %i.jm, align 8, !tbaa !474
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141: ; preds = %.thread.i140, %.sink.split.i138
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 8218
  store i8 1, ptr %i.jn, align 2, !tbaa !894
  %i.jo = getelementptr inbounds nuw i8, ptr %i.it, i64 8217
  store i8 1, ptr %i.jo, align 1, !tbaa !850
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.bg

bb.bg:                                            ; preds = %bb.o, %bb.p, %bb.bf
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.b = load i8, ptr %i.a, align 1, !tbaa !436, !range !64, !noundef !204
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !847
  %i.f = icmp eq ptr %0, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !722
  %i.i = and i32 %i.h, 131072
  %.not = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui16IsDragDropActiveEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !864, !range !64, !noundef !204
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui18BeginTooltipHiddenEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
end_hunk_4
begin_hunk_5_@_ZN5ImGui19BeginDragDropSourceEi:bb.a
  %.296 = phi i32 [ %i.cn, %.thread ], [ %.174.ph, %bb.ab ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 8776 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !864, !range !64, !noundef !204
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN5ImGui13ClearDragDropEv()
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !221
  %i.dx = and i32 %i.dw, 2
  %.not83 = icmp eq i32 %i.dx, 0
  br i1 %.not83, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = select i1 %i.e, ptr @.str.4, ptr @.str.186
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.185, i32 noundef %.197, ptr noundef nonnull %i.dy)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 8804
  store i32 %.197, ptr %i.dz, align 4, !tbaa !1507
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 8808
  store i32 %.098, ptr %i.ea, align 8, !tbaa !1508
  store i8 1, ptr %i.ds, align 8, !tbaa !864
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8780
  store i32 %0, ptr %i.eb, align 4, !tbaa !665
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 8788
  store i32 %.296, ptr %i.ec, align 4, !tbaa !667
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !819
  %i.ef = icmp eq i32 %.197, %i.ee
  br i1 %i.ef, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 5444
  store i8 1, ptr %i.eg, align 4, !tbaa !833
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !194
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8784
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !666
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 8777
  store i8 1, ptr %i.ek, align 1, !tbaa !1033
  %i.el = and i32 %0, 1
  %.not85 = icmp eq i32 %i.el, 0
  br i1 %.not85, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8912
  %i.en = load i32, ptr %i.em, align 8, !tbaa !1029
  %.not86 = icmp eq i32 %i.en, 0
  br i1 %.not86, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8900
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !1031
  %i.eq = and i32 %i.ep, 4096
  %.not87 = icmp eq i32 %i.eq, 0
  br i1 %.not87, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.es = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.183, ptr noundef null, i32 noundef 33751879) ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 5312
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !298 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 209
  store i8 1, ptr %i.ev, align 1, !tbaa !1231
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 212
  store i8 1, ptr %i.ew, align 4, !tbaa !926
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 235
  store i8 1, ptr %i.ex, align 1, !tbaa !1224
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.ey = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ah
  %i.ez = and i32 %0, 18
  %or.cond = icmp eq i32 %i.ez, 0
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 7856 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !843
  %i.fc = and i32 %i.fb, -2
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !843
  br label %bb.ao

bb.ao:                                            ; preds = %bb.r, %.thread99, %bb.am, %bb.an, %bb.ab, %bb.k, %bb.i, %bb.j, %bb.f, %bb.g, %bb.d, %bb.e, %bb.c
  %.075 = phi i1 [ false, %bb.i ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.ab ], [ false, %.thread99 ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.j ], [ true, %bb.an ], [ true, %bb.am ], [ false, %bb.r ]
  ret i1 %.075
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17EndDragDropSourceEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8780
  %i.c = load i32, ptr %i.b, align 4, !tbaa !665
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8812
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1509
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13ClearDragDropEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8777
  store i8 0, ptr %i.h, align 1, !tbaa !1033
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8792 ; 3 uses
  %i.c = icmp ult i32 %3, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8812
  %i.e = load i32, ptr %i.d, align 4, !tbaa !628
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.h = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %0, i64 noundef 32) #41 ; 0 uses
  %i.i = getelementptr i8, ptr %i.a, i64 8848
  store i8 0, ptr %i.i, align 1, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8928 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8932 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1173
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN8ImVectorIhE6resizeEi.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8ImVectorIhE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef 0)
  br label %_ZN8ImVectorIhE6resizeEi.exit

_ZN8ImVectorIhE6resizeEi.exit:                    ; preds = %bb.c, %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !1174
  %i.n = icmp ugt i64 %2, 16
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN8ImVectorIhE6resizeEi.exit
  %i.o = trunc i64 %2 to i32                      ; 3 uses
  %i.p = load i32, ptr %i.k, align 4, !tbaa !1173 ; 4 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %bb.f, label %_ZN8ImVectorIhE6resizeEi.exit32

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = sdiv i32 %i.p, 2
  %i.s = add nsw i32 %i.r, %i.p
  br label %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i

_ZNK8ImVectorIhE14_grow_capacityEi.exit.i:        ; preds = %bb.g, %bb.f
  %i.t = phi i32 [ %i.s, %bb.g ], [ 8, %bb.f ]
  %i.u = tail call noundef i32 @llvm.smax.i32(i32 %i.t, i32 %i.o)
  tail call void @_ZN8ImVectorIhE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i32 noundef %i.u)
  br label %_ZN8ImVectorIhE6resizeEi.exit32

_ZN8ImVectorIhE6resizeEi.exit32:                  ; preds = %bb.e, %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i
  store i32 %i.o, ptr %i.j, align 8, !tbaa !1174
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8936
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1510 ; 2 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !1511
  %sext = shl i64 %2, 32
  %i.x = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %1, i64 %i.x, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %_ZN8ImVectorIhE6resizeEi.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8944 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.b, align 8, !tbaa !1511
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.b, align 8, !tbaa !1511
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZN8ImVectorIhE6resizeEi.exit32
  %i.z = trunc i64 %2 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8800
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !1512
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !194 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8812
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !628
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8916
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !668 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.ac
  %i.ah = add nsw i32 %i.ac, -1
  %i.ai = icmp eq i32 %i.af, %i.ah
  %i.aj = select i1 %i.ag, i1 true, i1 %i.ai
  ret i1 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui25BeginDragDropTargetCustomERK6ImRectj(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !864, !range !64, !noundef !204
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5328
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1513 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !847
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !847
  %.not = icmp eq ptr %i.k, %i.m
  br i1 %.not, label %bb.d, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = load <2 x float>, ptr %0, align 4        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 616 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.n, i64 0 ; 2 uses
  %i.p = load float, ptr %i.o, align 8, !tbaa !227 ; 2 uses
  %.inv.i.i.i = fcmp oge float %.sroa.0.0.vec.extract.i, %i.p
  %..i.i.i = select i1 %.inv.i.i.i, float %.sroa.0.0.vec.extract.i, float %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3324
  %i.s = load float, ptr %i.q, align 8, !tbaa !227 ; 2 uses
  %i.t = load float, ptr %i.r, align 4, !tbaa !227 ; 2 uses
  %i.u = fsub float %..i.i.i, %i.t
  %i.v = fcmp ult float %i.s, %i.u
  br i1 %i.v, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load <2 x float>, ptr %i.w, align 4      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.n, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 620
  %i.aa = load float, ptr %i.z, align 4, !tbaa !228 ; 2 uses
  %.inv12.i.i.i = fcmp oge float %.sroa.0.4.vec.extract.i, %i.aa
  %i.ab = select i1 %.inv12.i.i.i, float %.sroa.0.4.vec.extract.i, float %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !228 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3328
  %i.af = load float, ptr %i.ae, align 8, !tbaa !228 ; 2 uses
  %i.ag = fsub float %i.ab, %i.af
  %i.ah = fcmp oge float %i.ad, %i.ag
  %i.ai = load <2 x float>, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.aj = fcmp olt <2 x float> %i.x, %i.ai
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.x, <2 x float> %i.ai
  %i.al = insertelement <2 x float> poison, float %i.t, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.af, i64 1
  %i.an = fadd <2 x float> %i.am, %i.ak           ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %i.ap = fcmp olt float %i.s, %i.ao
  %or.cond.i = select i1 %i.ah, i1 %i.ap, i1 false
  %i.aq = extractelement <2 x float> %i.an, i64 1
  %i.ar = fcmp olt float %i.ad, %i.aq
  %or.cond = select i1 %or.cond.i, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8804
  %i.at = load i32, ptr %i.as, align 4, !tbaa !865
  %i.au = icmp eq i32 %1, %i.at
  br i1 %i.au, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 209
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8856
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !419
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8872
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !419
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8888
  store i32 %1, ptr %i.ba, align 8, !tbaa !1514
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8892
  store i32 0, ptr %i.bb, align 4, !tbaa !1515
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8778
  store i8 1, ptr %i.bc, align 2, !tbaa !1034
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread: ; preds = %bb.d, %bb.e, %bb.h, %bb.c, %bb.b, %bb.f, %bb.g, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui27BeginDragDropTargetViewportEP13ImGuiViewportPK6ImRect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !864, !range !64, !noundef !204
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x float>, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %i.h = load <2 x float>, ptr %i.f, align 8, !tbaa !8
  %i.i = fadd <2 x float> %i.g, %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.7.0 = phi <2 x float> [ %i.i, %bb.d ], [ %.sroa.7.0.copyload, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi <2 x float> [ %i.g, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ] ; 4 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !508    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3324
  %i.m = load float, ptr %i.k, align 8, !tbaa !227 ; 2 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.n = load float, ptr %i.l, align 4, !tbaa !227 ; 2 uses
  %i.o = fsub float %.sroa.0.0.vec.extract8.i, %i.n
  %i.p = fcmp ult float %i.m, %i.o
  br i1 %i.p, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.r = load float, ptr %i.q, align 4, !tbaa !228 ; 2 uses
  %.sroa.0.4.vec.extract10.i = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3328
  %i.t = load float, ptr %i.s, align 8, !tbaa !228 ; 2 uses
  %i.u = fsub float %.sroa.0.4.vec.extract10.i, %i.t
  %i.v = fcmp oge float %i.r, %i.u
  %.sroa.8.8.vec.extract13.i = extractelement <2 x float> %.sroa.7.0, i64 0
  %i.w = fadd float %.sroa.8.8.vec.extract13.i, %i.n
  %i.x = fcmp olt float %i.m, %i.w
  %or.cond.i = select i1 %i.v, i1 %i.x, i1 false
  %.sroa.8.12.vec.extract15.i = extractelement <2 x float> %.sroa.7.0, i64 1
  %i.y = fadd float %.sroa.8.12.vec.extract15.i, %i.t
  %i.z = fcmp olt float %i.r, %i.y
  %or.cond = select i1 %or.cond.i, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.g, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8804
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !865
  %i.ac = icmp eq i32 %i.j, %i.ab
  br i1 %i.ac, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8856
  store <2 x float> %.sroa.0.0, ptr %i.ad, align 8
  %.sroa.7.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8864
  store <2 x float> %.sroa.7.0, ptr %.sroa.7.0..sroa_idx18, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8872
  store <2 x float> %.sroa.0.0, ptr %i.ae, align 8
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8880
  store <2 x float> %.sroa.7.0, ptr %.sroa.7.0..sroa_idx20, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8888
  store i32 %i.j, ptr %i.af, align 8, !tbaa !1514
end_hunk_5
begin_hunk_6_@_ZN5ImGui21AcceptDragDropPayloadEPKci:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8849
  store i8 %i.v, ptr %i.y, align 1, !tbaa !630
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8780 ; 2 uses
  br i1 %i.l, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !665
  %i.ab = or i32 %i.aa, %1
  %i.ac = and i32 %i.ab, 2048
  %.not45 = icmp eq i32 %i.ac, 0
  br i1 %.not45, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8892
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1515
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !419
  %i.af = load <4 x float>, ptr %3, align 16, !tbaa !8
  %i.ag = fadd <4 x float> %i.af, <float 3.500000e+00, float 3.500000e+00, float -3.500000e+00, float -3.500000e+00>
  store <4 x float> %i.ag, ptr %3, align 16, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !437
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !438
  %i.ak = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.aj, i64 noundef 1, ptr noundef nonnull @.str.86)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 3436
  %i.am = load float, ptr %i.al, align 4, !tbaa !1516
  call void @_ZN5ImGui26RenderDragDropTargetRectExEP10ImDrawListRK6ImRectf(ptr noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  call void @_ZN5ImGui31RenderDragDropTargetRectForItemERK6ImRect(ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8916
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !668
  %i.aq = load i32, ptr %i.z, align 4, !tbaa !665
  %i.ar = and i32 %i.aq, 16
  %.not47 = icmp eq i32 %i.ar, 0
  br i1 %.not47, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8788
  %i.at = load i32, ptr %i.as, align 4, !tbaa !667
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.l, label %bb.k, label %_ZN5ImGui11IsMouseDownEi.exit

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8784
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !666
  %i.ax = icmp slt i32 %i.aw, %i.ao
  %i.ay = zext i1 %i.ax to i8
  br label %_ZN5ImGui11IsMouseDownEi.exit

bb.l:                                             ; preds = %bb.i, %.critedge
  br i1 %i.l, label %bb.m, label %_ZN5ImGui11IsMouseDownEi.exit

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8788
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !667 ; 3 uses
  %i.bb = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !215, !range !64, !noundef !204
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.n, label %_ZN5ImGui11IsMouseDownEi.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %i.ba, 656                  ; 6 uses
  %i.bi = add nsw i32 %i.ba, 144
  %or.cond.i.i.i = icmp ult i32 %i.bi, 155
  %.pre.i = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bh)
  %i.bj = icmp eq i32 %.pre.i, 1                  ; 2 uses
  br i1 %or.cond.i.i.i, label %._crit_edge.i, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.n
  br i1 %i.bj, label %switch.early.test.split.i.i.i, label %_ZN5ImGui11IsMouseDownEi.exit

switch.early.test.split.i.i.i:                    ; preds = %switch.early.test.i.i.i
  %i.bk = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bh, i1 true)
  %i.bl = and i32 %i.bk, 28
  %switch.i.i.i = icmp eq i32 %i.bl, 12
  br i1 %switch.i.i.i, label %._crit_edge.i, label %_ZN5ImGui11IsMouseDownEi.exit

._crit_edge.i:                                    ; preds = %switch.early.test.split.i.i.i, %bb.n
  %.pre-phi.i = phi i1 [ true, %switch.early.test.split.i.i.i ], [ %i.bj, %bb.n ]
  %i.bm = and i32 %i.bh, 61440
  %.not.i.i.i = icmp ne i32 %i.bm, 0
  %or.cond.i24.i.i = select i1 %.not.i.i.i, i1 %.pre-phi.i, i1 false
  br i1 %or.cond.i24.i.i, label %.split.i.i.i.i, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

.split.i.i.i.i:                                   ; preds = %._crit_edge.i
  %i.bn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bh, i1 true) ; 2 uses
  %i.bo = and i32 %i.bn, 28
  %i.bp = icmp eq i32 %i.bo, 12
  %switch.offset.i.i.i.i = add nuw nsw i32 %i.bn, 651
  %spec.select.i.i.i.i = select i1 %i.bp, i32 %switch.offset.i.i.i.i, i32 %i.bh
  br label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i: ; preds = %.split.i.i.i.i, %._crit_edge.i
  %.0.i.i.i = phi i32 [ %i.bh, %._crit_edge.i ], [ %spec.select.i.i.i.i, %.split.i.i.i.i ]
  %i.bq = zext nneg i32 %.0.i.i.i to i64
  %i.br = getelementptr [12 x i8], ptr %i.bb, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -572
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !624, !range !64, !noundef !204
  br label %_ZN5ImGui11IsMouseDownEi.exit

_ZN5ImGui11IsMouseDownEi.exit:                    ; preds = %bb.l, %bb.m, %switch.early.test.i.i.i, %switch.early.test.split.i.i.i, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i, %bb.j, %bb.k
  %.sink = phi i8 [ %i.ay, %bb.k ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %switch.early.test.i.i.i ], [ 0, %switch.early.test.split.i.i.i ], [ %i.bt, %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8850
  store i8 %.sink, ptr %i.bu, align 2, !tbaa !629
  %i.bv = trunc nuw i8 %.sink to i1               ; 2 uses
  %i.bw = and i32 %1, 1024
  %.not48 = icmp ne i32 %i.bw, 0
  %or.cond.not = or i1 %.not48, %i.bv
  %.mux = select i1 %or.cond.not, ptr %i.b, ptr null
  br i1 %i.bv, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN5ImGui11IsMouseDownEi.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !221
  %i.bz = and i32 %i.by, 2
  %.not49 = icmp eq i32 %i.bz, 0
  br i1 %.not49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %i.j, align 8, !tbaa !1514
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.187, i32 noundef %i.ca)
  br label %bb.q

bb.q:                                             ; preds = %_ZN5ImGui11IsMouseDownEi.exit, %bb.o, %bb.p, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %.mux, %_ZN5ImGui11IsMouseDownEi.exit ], [ %i.b, %bb.o ], [ %i.b, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %_ZNK12ImGuiPayload10IsDataTypeEPKc.exit.thread

_ZNK12ImGuiPayload10IsDataTypeEPKc.exit.thread:   ; preds = %bb.b, %_ZNK12ImGuiPayload10IsDataTypeEPKc.exit, %bb.q
  %.2 = phi ptr [ %.1, %bb.q ], [ null, %_ZNK12ImGuiPayload10IsDataTypeEPKc.exit ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26RenderDragDropTargetRectExEP10ImDrawListRK6ImRectf(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4412
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.e = load float, ptr %i.d, align 4, !tbaa !416
  %i.f = load <4 x float>, ptr %i.c, align 4, !tbaa !8
  %i.g = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.e, i64 3
  %i.h = fmul <4 x float> %i.f, %i.g              ; 3 uses
  %i.i = fcmp olt <4 x float> %i.h, zeroinitializer
  %i.j = fcmp ogt <4 x float> %i.h, splat (float 1.000000e+00)
  %i.k = select <4 x i1> %i.j, <4 x float> splat (float 1.000000e+00), <4 x float> %i.h
  %i.l = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.m = select <4 x i1> %i.i, <4 x float> splat (float 5.000000e-01), <4 x float> %i.l
  %i.n = fptosi <4 x float> %i.m to <4 x i32>
  %i.o = shl <4 x i32> %i.n, <i32 0, i32 8, i32 16, i32 24>
  %i.p = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.o)
  tail call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.b, i32 noundef %i.p, float noundef %2, i32 noundef 0)
  %i.q = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4396
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 3220
  %i.t = load float, ptr %i.s, align 4, !tbaa !416
  %i.u = load <4 x float>, ptr %i.r, align 4, !tbaa !8
  %i.v = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.t, i64 3
  %i.w = fmul <4 x float> %i.u, %i.v              ; 3 uses
  %i.x = fcmp olt <4 x float> %i.w, zeroinitializer
  %i.y = fcmp ogt <4 x float> %i.w, splat (float 1.000000e+00)
  %i.z = select <4 x i1> %i.y, <4 x float> splat (float 1.000000e+00), <4 x float> %i.w
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ab = select <4 x i1> %i.x, <4 x float> splat (float 5.000000e-01), <4 x float> %i.aa
  %i.ac = fptosi <4 x float> %i.ab to <4 x i32>
  %i.ad = shl <4 x i32> %i.ac, <i32 0, i32 8, i32 16, i32 24>
  %i.ae = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3440
  %i.ag = load float, ptr %i.af, align 8, !tbaa !1517
  tail call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.b, i32 noundef %i.ae, float noundef %2, float noundef %i.ag, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui31RenderDragDropTargetRectForItemERK6ImRect(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #12 {
bb.a:
  %1 = alloca %struct.ImRect, align 16            ; 7 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !419
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8872
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3444
  %i.f = load float, ptr %i.e, align 4, !tbaa !1518
  %i.g = load <4 x float>, ptr %1, align 16, !tbaa !8 ; 3 uses
  %i.h = load <4 x float>, ptr %i.d, align 8, !tbaa !8 ; 3 uses
  %i.i = fcmp oge <4 x float> %i.g, %i.h
  %i.j = fcmp olt <4 x float> %i.g, %i.h
  %i.k = shufflevector <4 x i1> %i.i, <4 x i1> %i.j, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.l = select <4 x i1> %i.k, <4 x float> %i.g, <4 x float> %i.h ; 2 uses
  %i.m = insertelement <4 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.o = fsub <4 x float> %i.l, %i.n              ; 3 uses
  %i.p = fadd <4 x float> %i.l, %i.n              ; 3 uses
  %i.q = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.q, ptr %1, align 16, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.s = load float, ptr %i.r, align 4, !tbaa !394
  %i.t = extractelement <4 x float> %i.o, i64 0
  %i.u = fcmp ult float %i.t, %i.s
  br i1 %i.u, label %_ZNK6ImRect8ContainsERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.w = load float, ptr %i.v, align 4, !tbaa !398
  %i.x = extractelement <4 x float> %i.o, i64 1
  %i.y = fcmp ult float %i.x, %i.w
  br i1 %i.y, label %_ZNK6ImRect8ContainsERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %i.aa = load float, ptr %i.z, align 4, !tbaa !395
  %i.ab = extractelement <4 x float> %i.p, i64 2
  %i.ac = fcmp ugt float %i.ab, %i.aa
  br i1 %i.ac, label %_ZNK6ImRect8ContainsERKS_.exit.thread, label %_ZNK6ImRect8ContainsERKS_.exit

_ZNK6ImRect8ContainsERKS_.exit:                   ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !399
  %i.af = extractelement <4 x float> %i.p, i64 3
  %i.ag = fcmp ugt float %i.af, %i.ae
  br i1 %i.ag, label %_ZNK6ImRect8ContainsERKS_.exit.thread, label %.critedge

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.a, %bb.b, %bb.c, %_ZNK6ImRect8ContainsERKS_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !452
  tail call void @_ZN10ImDrawList22PushClipRectFullScreenEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ai)
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !452
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 3436
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1516
  call void @_ZN5ImGui26RenderDragDropTargetRectExEP10ImDrawListRK6ImRectf(ptr noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %i.al)
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !452
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.am)
  br label %bb.d

.critedge:                                        ; preds = %_ZNK6ImRect8ContainsERKS_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !452
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 3436
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !1516
  call void @_ZN5ImGui26RenderDragDropTargetRectExEP10ImDrawListRK6ImRectf(ptr noundef %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %i.aq)
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNK6ImRect8ContainsERKS_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

declare void @_ZN10ImDrawList22PushClipRectFullScreenEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui18GetDragDropPayloadEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !864, !range !64, !noundef !204
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8812
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1509
  %.not = icmp eq i32 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8792
  %spec.select = select i1 %.not, ptr null, ptr %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17EndDragDropTargetEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8778
  store i8 0, ptr %i.b, align 2, !tbaa !1034
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8850
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1323, !range !64, !noundef !204
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui13ClearDragDropEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui7LogTextEPKcz(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.c = load i8, ptr %i.b, align 8, !tbaa !387, !range !64, !noundef !204
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10280 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !617
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 10288 ; 5 uses
  br i1 %.not.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 10292 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !285
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN8ImVectorIcE6resizeEi.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.l = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.m = call noundef ptr %i.k(i64 noundef 0, ptr noundef %i.l), !inline_history !741 ; 2 uses
  %i.n = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i.i4, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10596 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !194  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 10608 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 10604 ; 2 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !195  ; 2 uses
  %i.u = sext i16 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !196
  %.not.i.i.i = icmp eq i32 %i.w, %i.q
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !198
  %i.x = add i16 %.pre, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = sext i16 %i.t to i32
  %i.z = add nsw i32 %i.y, 1
  %i.aa = srem i32 %i.z, 6                        ; 2 uses
  %i.ab = trunc nsw i32 %i.aa to i16
  store i16 %i.ab, ptr %i.s, align 4, !tbaa !195
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac ; 3 uses
  store i32 %i.q, ptr %i.ad, align 4, !tbaa !196
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i16 0, ptr %i.ae, align 2, !tbaa !199
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 0, ptr %i.af, align 4, !tbaa !198
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.ag = phi i16 [ 1, %bb.f ], [ %i.x, %._crit_edge ]
  %i.ah = phi i64 [ %i.ac, %bb.f ], [ %i.u, %._crit_edge ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i16 %i.ag, ptr %i.aj, align 4, !tbaa !198
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !200
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.o, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.g, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 10296 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !287 ; 2 uses
  %.not6.i = icmp eq ptr %i.an, null
  br i1 %.not6.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !286
  %i.ap = sext i32 %i.ao to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.an, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !287 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aq, null
end_hunk_6
begin_hunk_7_@_ZN5ImGui23SaveIniSettingsToMemoryEPm:bb.a
  %.022 = phi ptr [ %i.x, %.lr.ph ], [ %i.r, %_ZN8ImVectorIcE9push_backERKc.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.022, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !498
  tail call void %i.w(ptr noundef nonnull %i.a, ptr noundef %.022, ptr noundef nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %.022, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.u
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.y = load i32, ptr %i.c, align 8, !tbaa !284
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.y, i32 1)
  %i.z = sext i32 %spec.select.i to i64
  store i64 %i.z, ptr %0, align 8, !tbaa !232
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !744 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  %spec.select.i20 = select i1 %.not.i, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.aa
  ret ptr %spec.select.i20
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5ImGui23CreateNewWindowSettingsEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.c = load i8, ptr %i.b, align 4, !tbaa !1532, !range !64, !noundef !204
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %.preheader.outer, label %_Z30ImHashSkipUncontributingPrefixPKc.exit

.preheader.outer:                                 ; preds = %bb.a, %bb.c
  %.09.i.ph = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ]
  %.08.i.ph = phi ptr [ %spec.select.i, %bb.c ], [ %0, %bb.a ] ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer
  %.09.i = phi ptr [ %.09.i.ph, %.preheader.outer ], [ %i.e, %.preheader.backedge ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 1 ; 3 uses
  %i.f = load i8, ptr %.09.i, align 1, !tbaa !187
  switch i8 %i.f, label %.preheader.backedge [
    i8 0, label %_Z30ImHashSkipUncontributingPrefixPKc.exit
    i8 35, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader
  %i.g = load i8, ptr %i.e, align 1, !tbaa !187
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %bb.c, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !187
  %i.k = icmp eq i8 %i.j, 35
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %.08.i.ph
  br label %.preheader.outer

_Z30ImHashSkipUncontributingPrefixPKc.exit:       ; preds = %.preheader, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.08.i.ph, %.preheader ] ; 5 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #57 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10104 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !714  ; 2 uses
  %i.p = trunc i64 %i.m to i32
  %i.q = and i32 %i.p, -4
  %i.r = add i32 %i.q, 24                         ; 2 uses
  %i.s = add nsw i32 %i.r, %i.o                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 10108
  %i.u = load i32, ptr %i.t, align 4, !tbaa !285  ; 4 uses
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_Z30ImHashSkipUncontributingPrefixPKc.exit
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = sdiv i32 %i.u, 2
  %i.x = add nsw i32 %i.w, %i.u
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %i.x, %bb.e ], [ 8, %bb.d ]
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %i.y, i32 %i.s)
  tail call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, %_Z30ImHashSkipUncontributingPrefixPKc.exit
  store i32 %i.s, ptr %i.n, align 8, !tbaa !286
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 10112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !708
  %i.ac = sext i32 %i.o to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 3 uses
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !205
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader45.i

.preheader.i:                                     ; preds = %bb.f
  %i.af = load i8, ptr %.0, align 1, !tbaa !187   ; 2 uses
  %.not4050.i = icmp eq i8 %i.af, 0
  br i1 %.not4050.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.preheader45.i:                                   ; preds = %bb.f, %bb.k
  %.03049.i = phi ptr [ %.1.i, %bb.k ], [ %.0, %bb.f ] ; 4 uses
  %.03148.i = phi i32 [ %.132.i, %bb.k ], [ -1, %bb.f ] ; 2 uses
  %.03547.i = phi i64 [ %.136.i, %bb.k ], [ %i.m, %bb.f ] ; 2 uses
  %i.ag = add i64 %.03547.i, -1                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03049.i, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.03049.i, align 1, !tbaa !187 ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = icmp eq i8 %i.ai, 35
  %i.al = icmp ugt i64 %i.ag, 1
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.preheader45.i
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !187
  %i.an = icmp eq i8 %i.am, 35
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03049.i, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !187
  %i.aq = icmp eq i8 %i.ap, 35
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.03049.i, i64 3
  %i.as = add i64 %.03547.i, -3
  br label %bb.k, !llvm.loop !247

bb.j:                                             ; preds = %bb.h, %bb.g, %.preheader45.i
  %i.at = lshr i32 %.03148.i, 8
  %i.au = and i32 %.03148.i, 255
  %i.av = xor i32 %i.au, %i.aj
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !205
  %i.az = xor i32 %i.ay, %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.136.i = phi i64 [ %i.as, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  %.132.i = phi i32 [ -1, %bb.i ], [ %i.az, %bb.j ] ; 2 uses
  %.1.i = phi ptr [ %i.ar, %bb.i ], [ %i.ah, %bb.j ]
  %.not41.i = icmp eq i64 %.136.i, 0
  br i1 %.not41.i, label %_Z9ImHashStrPKcmj.exit, label %.preheader45.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %i.ba = phi i8 [ %i.br, %bb.p ], [ %i.af, %.preheader.i ] ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.p ], [ %.0, %.preheader.i ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.p ], [ -1, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.bc = zext i8 %i.ba to i32
  %i.bd = icmp eq i8 %i.ba, 35
  br i1 %i.bd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !187
  %i.bf = icmp eq i8 %i.be, 35
  br i1 %i.bf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !187
  %i.bi = icmp eq i8 %i.bh, 35
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  br label %bb.p, !llvm.loop !248

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %i.bk = lshr i32 %.23351.i, 8
  %i.bl = and i32 %.23351.i, 255
  %i.bm = xor i32 %i.bl, %i.bc
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !205
  %i.bq = xor i32 %i.bp, %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.334.i = phi i32 [ -1, %bb.n ], [ %i.bq, %bb.o ] ; 2 uses
  %.3.i = phi ptr [ %i.bj, %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %i.br = load i8, ptr %.3.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i = icmp eq i8 %i.br, 0
  br i1 %.not40.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.k, %bb.p, %.preheader.i
  %.4.i = phi i32 [ %.334.i, %bb.p ], [ -1, %.preheader.i ], [ %.132.i, %bb.k ]
  %i.bs = xor i32 %.4.i, -1
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !715
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bu = add i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %.0, i64 %i.bu, i1 false)
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui22FindWindowSettingsByIDEj(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !708  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0914 = phi ptr [ %i.n, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 5 uses
  %i.f = load i32, ptr %.0914, align 4, !tbaa !715
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0914, i64 14
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 8
  %.not11 = icmp eq i8 %i.j, 0
  br i1 %.not11, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph, %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0914, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !205
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %.0914, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !714
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %bb.b, %bb.a
  %.09.lcssa = phi ptr [ null, %bb.a ], [ %.0914, %bb.b ], [ null, %select.unfold ]
  ret ptr %.09.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.b = load i32, ptr %i.a, align 4, !tbaa !706  ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !708
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  br label %_ZN5ImGui22FindWindowSettingsByIDEj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !726
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10104
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 10112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !708  ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0914.i = phi ptr [ %i.w, %select.unfold.i ], [ %i.n, %.lr.ph.i.preheader ] ; 5 uses
  %i.o = load i32, ptr %.0914.i, align 4, !tbaa !715
  %i.p = icmp eq i32 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0914.i, i64 14
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 8
  %.not11.i = icmp eq i8 %i.s, 0
  br i1 %.not11.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %.lr.ph.i
  %i.t = getelementptr inbounds i8, ptr %.0914.i, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !205
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %.0914.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.k, align 8, !tbaa !714
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = icmp eq ptr %i.w, %i.aa
  br i1 %i.ab, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %.lr.ph.i

_ZN5ImGui22FindWindowSettingsByIDEj.exit:         ; preds = %select.unfold.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ], [ null, %select.unfold.i ], [ %.0914.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19ClearWindowSettingsEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #38 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !187     ; 3 uses
  %.not4050.i.i = icmp eq i8 %i.a, 0              ; 2 uses
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.f
  %i.b = phi i8 [ %i.s, %bb.f ], [ %i.a, %bb.a ]  ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !187
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !187
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !205
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.t = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.a
  %.4.i.i = phi i32 [ 0, %bb.a ], [ %i.t, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5280
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !259  ; 3 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !258  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !255
  %i.ae = icmp ult i32 %i.ad, %.4.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.neg.i.i.i.i = xor i64 %i.ab, -1
  %i.ag = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ab ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !257

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.x, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ah = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aa
  br i1 %i.ah, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ai = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !255
  %.not.i.i.i = icmp eq i32 %i.ai, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %.critedge

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 13 uses
end_hunk_7
