Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11RadioButtonEPKcb:bb.a
bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ai = fadd <2 x float> %i.s, %i.p
  %i.aj = fmul <2 x float> %i.ai, splat (float 5.000000e-01)
  %i.ak = fadd <2 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fptosi <2 x float> %i.ak to <2 x i32>
  %i.am = sitofp <2 x i32> %i.al to <2 x float>
  store <2 x float> %i.am, ptr %4, align 8, !tbaa !190
  %i.an = fadd float %i.m, -1.000000e+00
  %i.ao = fmul float %i.an, 5.000000e-01          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ap = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef %i.j, i32 noundef 0, float noundef -1.000000e+00)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 5 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !202
  %i.as = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ar, float noundef %i.ao) ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !202
  %i.au = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i8, ptr %i.a, align 1, !range !184
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = select i1 %i.av, i32 9, i32 8
  %i.az = select i1 %i.ax, i32 %i.ay, i32 7
  %i.ba = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.az, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.ao, i32 noundef %i.ba, i32 noundef %i.as)
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = fdiv float %i.m, 6.000000e+00
  %i.bc = fptosi float %i.bb to i32
  %i.bd = sitofp i32 %i.bc to float               ; 2 uses
  %i.be = fcmp ole float %i.bd, 1.000000e+00
  %i.bf = select i1 %i.be, float 1.000000e+00, float %i.bd
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !202
  %i.bh = fsub float %i.ao, %i.bf
  %i.bi = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 18, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.bg, ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.bh, i32 noundef %i.bi, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 3296 ; 3 uses
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !307
  %i.bl = fcmp ogt float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.bn = load <2 x float>, ptr %4, align 8, !tbaa !190
  %i.bo = fadd <2 x float> %i.bn, splat (float 1.000000e+00)
  store <2 x float> %i.bo, ptr %5, align 8
  %i.bp = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 6, float noundef 1.000000e+00)
  %i.bq = load float, ptr %i.bj, align 8, !tbaa !307
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef %i.ao, i32 noundef %i.bp, i32 noundef %i.as, float noundef %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.br = load ptr, ptr %i.aq, align 8, !tbaa !202
  %i.bs = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 5, float noundef 1.000000e+00)
  %i.bt = load float, ptr %i.bj, align 8, !tbaa !307
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.br, ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.ao, i32 noundef %i.bs, i32 noundef %i.as, float noundef %i.bt)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !204
  %i.bw = extractelement <2 x float> %i.s, i64 0
  %i.bx = fadd float %i.bw, %i.bv
  %i.by = load float, ptr %i.y, align 8, !tbaa !203
  %i.bz = extractelement <2 x float> %i.p, i64 1
  %i.ca = fadd float %i.by, %i.bz
  store float %i.bx, ptr %6, align 8, !tbaa !194
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ca, ptr %i.cb, align 4, !tbaa !197
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 10264
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !191, !range !184, !noundef !185
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.l, label %bb.m

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
  %.0 = phi i1 [ %i.ap, %bb.o ], [ false, %bb.d ]
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
  %i.ag = call float @llvm.fmuladd.f32(float %i.af, float 5.000000e-01, float %i.ae)
  %i.ah = fmul float %i.t, 5.000000e-01
  %i.ai = load <2 x float>, ptr %1, align 8, !tbaa !190
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ah, i64 1
  %i.al = fadd <2 x float> %i.ai, %i.ak
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.ad, <2 x float> %i.al, i32 noundef %i.ab)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.am = load float, ptr %i.m, align 4, !tbaa !206
  %i.an = fmul float %i.am, 2.000000e+00
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN5ImGui15TextLinkOpenURLEPKcS1_:bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noundef %spec.select) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 10248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  %i.j = select i1 %.not.i, ptr @.str.136, ptr %i.i
  tail call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull %i.j, ptr noundef %spec.select)
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !198  ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  %i.o = select i1 %.not.i12, ptr @.str.136, ptr %i.n
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef nonnull %i.o, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef %spec.select)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN5ImGui8EndPopupEv()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret i1 %i.c
}

declare void @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui10MenuItemExEPKcS1_S1_bb(ptr noundef %0, ptr noundef null, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  ret i1 %i.a
}

declare void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui8EndPopupEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui7SpacingEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !190 ; 2 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !190
  %i.k = fadd <2 x float> %i.i, %i.j
  store <2 x float> %i.i, ptr %1, align 8, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.k, ptr %i.l, align 8, !tbaa !190
  tail call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  %i.m = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui7NewLineEv() local_unnamed_addr #5 {
bb.a:
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !315
  store i32 1, ptr %i.h, align 4, !tbaa !315
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.j, align 8, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.l = load float, ptr %i.k, align 4, !tbaa !309
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.o = load float, ptr %i.n, align 8, !tbaa !205
  store float 0.000000e+00, ptr %1, align 4, !tbaa !194
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.o, ptr %i.p, align 4, !tbaa !197
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.i, ptr %i.h, align 4, !tbaa !315
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui23AlignTextToFramePaddingEv() local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 324 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !309 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.k = load float, ptr %i.j, align 8, !tbaa !205
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.m = load float, ptr %i.l, align 8, !tbaa !234 ; 3 uses
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 2.000000e+00, float %i.k) ; 2 uses
  %i.o = fcmp oge float %i.i, %i.n
  %i.p = select i1 %i.o, float %i.i, float %i.n
  store float %i.p, ptr %i.h, align 4, !tbaa !309
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !188 ; 2 uses
  %i.s = fcmp oge float %i.r, %i.m
  %i.t = select i1 %i.s, float %i.r, float %i.m
  store float %i.t, ptr %i.q, align 8, !tbaa !188
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11SeparatorExEif(i32 noundef %0, float noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.ImRect, align 16            ; 7 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 4             ; 9 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %0, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  %i.k = load float, ptr %i.j, align 4, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.l = load <2 x float>, ptr %i.i, align 8, !tbaa !190
  %6 = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float poison>, float %1, i64 2
  %8 = insertelement <4 x float> %7, float %i.k, i64 3
  %9 = fadd <4 x float> %6, %8
  store <4 x float> %9, ptr %2, align 16, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.m = insertelement <2 x float> <float poison, float 0.000000e+00>, float %1, i64 0
  store <2 x float> %i.m, ptr %3, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.n = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202
  %i.q = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 28, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.p, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.q, float noundef 0.000000e+00, i32 noundef 0)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.s = load i8, ptr %i.r, align 8, !tbaa !191, !range !184, !noundef !185
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.u = and i32 %0, 1
  %.not37 = icmp eq i32 %i.u, 0
  br i1 %.not37, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.w = load float, ptr %i.v, align 8, !tbaa !186 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.y = load float, ptr %i.x, align 8, !tbaa !317 ; 2 uses
  %i.z = and i32 %0, 4
  %.not38 = icmp eq i32 %i.z, 0
  br i1 %.not38, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !318 ; 2 uses
  %.not39 = icmp eq ptr %i.ab, null
  br i1 %.not39, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !240 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.af = load float, ptr %i.ae, align 4, !tbaa !643
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !242
  %i.aj = fadd float %i.ad, %i.ai
  tail call void @_ZN5ImGui21PushColumnsBackgroundEv()
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.j, %bb.i
  %.not3951 = phi i1 [ false, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  %i.ak = phi ptr [ %i.ab, %bb.j ], [ null, %bb.i ], [ null, %bb.h ]
  %.034 = phi float [ %i.ag, %bb.j ], [ %i.w, %bb.i ], [ %i.w, %bb.h ]
  %.0 = phi float [ %i.aj, %bb.j ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !187 ; 2 uses
  %i.an = fadd float %1, %i.am
  store float %.034, ptr %4, align 4, !tbaa !190
  %.sroa_idx41 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.am, ptr %.sroa_idx41, align 4, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %.0, ptr %i.ao, align 4, !tbaa !190
  %.sroa_idx40 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.an, ptr %.sroa_idx40, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store float 0.000000e+00, ptr %5, align 4, !tbaa !194
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %1, ptr %i.ap, align 4, !tbaa !197
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.aq = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.aq, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !202
  %i.at = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 28, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.as, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.at, float noundef 0.000000e+00, i32 noundef 0)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.av = load i8, ptr %i.au, align 8, !tbaa !191, !range !184, !noundef !185
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef null)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.thread
  br i1 %.not3951, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5ImGui20PopColumnsBackgroundEv()
  %i.ax = load float, ptr %i.al, align 4, !tbaa !187
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  store float %i.ax, ptr %i.ay, align 4, !tbaa !647
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.p

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %.critedge, %bb.g, %bb.o, %bb.a
  ret void
}

declare void @_ZN5ImGui7LogTextEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN5ImGui21PushColumnsBackgroundEv() local_unnamed_addr #3

declare void @_ZN5ImGui20PopColumnsBackgroundEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !183, !range !184, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  %i.h = load i32, ptr %i.g, align 4, !tbaa !315
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 2, i32 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !318
  %.not = icmp eq ptr %i.l, null
  %i.m = or disjoint i32 %i.j, 4
  %spec.select = select i1 %.not, i32 %i.j, i32 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3476
  %i.o = load float, ptr %i.n, align 4, !tbaa !319 ; 2 uses
  %i.p = fcmp oge float %i.o, 1.000000e+00
  %i.q = select i1 %i.p, float %i.o, float 1.000000e+00
  tail call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select, float noundef %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15SeparatorTextExEjPKcS1_f(i32 noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImRect, align 4             ; 7 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.d = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, float noundef -1.000000e+00) ; 3 uses
  store <2 x float> %i.d, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.g = load i32, ptr %.sroa_idx65, align 4      ; 2 uses
  %i.h = bitcast i32 %i.f to float                ; 5 uses
  %i.i = bitcast i32 %i.g to float                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3492
  %.sroa.0.0.copyload = load float, ptr %i.j, align 4, !tbaa !190 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3496
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !190
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3480
  %i.l = load float, ptr %i.k, align 8, !tbaa !648 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.m = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.n = fadd float %3, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float 2.000000e+00, float %i.n)
  %i.p = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float 2.000000e+00, float %i.p) ; 2 uses
  %i.r = fcmp oge float %i.q, %i.l
  %i.s = select i1 %i.r, float %i.q, float %i.l   ; 2 uses
  store float %i.o, ptr %5, align 4, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.s, ptr %i.t, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.v = load i32, ptr %i.u, align 8, !tbaa !317
  %i.w = fadd float %i.s, %i.i                    ; 2 uses
  store i32 %i.f, ptr %6, align 4, !tbaa !190
  %.sroa_idx64 = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 %i.g, ptr %.sroa_idx64, align 4, !tbaa !190
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.v, ptr %i.x, align 4, !tbaa !190
  %.sroa_idx63 = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store float %i.w, ptr %.sroa_idx63, align 4, !tbaa !190
  %i.y = fsub float %i.w, %i.i
  %i.z = fsub float %i.y, %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3488
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !649
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float 9.990000e-01)
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sitofp i32 %i.ad to float               ; 2 uses
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef %i.ae)
end_hunk_1
