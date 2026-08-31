Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui10BeginComboEPKcS1_i:bb.a
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 7928 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !347
  store i32 0, ptr %i.g, align 8, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.j = load i8, ptr %i.i, align 1, !tbaa !164, !range !165, !noundef !166
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.m = and i32 %2, 128
  %i.n = and i32 %2, 32
  %.not89 = icmp eq i32 %i.n, 0                   ; 3 uses
  br i1 %.not89, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ] ; 5 uses
  %i.q = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.r = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %i.s = icmp ne i32 %i.m, 0                      ; 2 uses
  %i.t = icmp ne ptr %1, null
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.021.0.vec.extract = extractelement <2 x float> %i.u, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi float [ %.sroa.021.0.vec.extract, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.w = and i32 %2, 64
  %.not90 = icmp ne i32 %i.w, 0                   ; 3 uses
  br i1 %.not90, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = fadd float %i.p, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3284
  %i.z = load float, ptr %i.y, align 4, !tbaa !190
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 2.000000e+00, float %i.x)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %i.ac = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.r, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3284 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 3288 ; 3 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !187 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 2.000000e+00, float %.sroa.023.4.vec.extract)
  %i.ai = load <2 x float>, ptr %i.ad, align 4, !tbaa !171 ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ah, i64 1
  %i.al = fadd <2 x float> %i.ak, %i.ai           ; 2 uses
  store <2 x float> %i.ai, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store <2 x float> %i.al, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %.sroa.023.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 2 uses
  %i.an = fcmp ogt float %.sroa.023.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !188
  %i.aq = fadd float %.sroa.023.0.vec.extract, %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ar = phi float [ %i.aq, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.as = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %i.at = fadd <2 x float> %i.as, %i.al           ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store <2 x float> %i.ai, ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.at, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.aw = fsub <2 x float> %i.at, %i.ai
  store <2 x float> %i.aw, ptr %3, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ax = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.l, ptr noundef nonnull %4, i32 noundef 0)
  br i1 %i.ax, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ay = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.az = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.15, i64 noundef 0, i32 noundef %i.l) ; 3 uses
  %i.ba = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.az, i32 noundef 0) ; 2 uses
  %.not = xor i1 %i.ay, true
  %or.cond3 = or i1 %i.ba, %.not
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.az, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.087 = phi i1 [ %i.ba, %bb.m ], [ true, %bb.n ] ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !225, !range !165, !noundef !166
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = select i1 %i.bd, i32 8, i32 7
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.be, float noundef 1.000000e+00)
  %i.bg = load float, ptr %4, align 8, !tbaa !232 ; 2 uses
  %i.bh = load float, ptr %i.am, align 8, !tbaa !233
  %i.bi = fsub float %i.bh, %i.p                  ; 2 uses
  %i.bj = fcmp oge float %i.bg, %i.bi
  %i.bk = select i1 %i.bj, float %i.bg, float %i.bi ; 6 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, i32 noundef 0, float noundef -1.000000e+00)
  br i1 %.not90, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bn = load float, ptr %i.au, align 4, !tbaa !178
  store float %i.bk, ptr %6, align 4, !tbaa !176
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !181
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !228
  %i.br = select i1 %.not89, i32 80, i32 240
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.bf, float noundef %i.bq, i32 noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not89, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = or i1 %.087, %i.bd
  %i.bt = select i1 %i.bs, i32 23, i32 22
  %i.bu = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bt, float noundef 1.000000e+00)
  %i.bv = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !177
  store float %i.bk, ptr %7, align 4, !tbaa !176
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !181
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !228
  %i.cd = fcmp ole float %i.ac, %i.p
  %i.ce = select i1 %i.cd, i32 240, i32 160
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.am, i32 noundef %i.bu, float noundef %i.cc, i32 noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.cf = fadd float %i.p, %i.bk
  %i.cg = load float, ptr %i.ae, align 4, !tbaa !190
  %i.ch = fsub float %i.cf, %i.cg
  %i.ci = load float, ptr %i.am, align 8, !tbaa !233
  %i.cj = fcmp ugt float %i.ch, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !186
  %i.cl = load float, ptr %i.af, align 8, !tbaa !187 ; 2 uses
  %i.cm = fadd float %i.bk, %i.cl
  %i.cn = load float, ptr %i.by, align 4, !tbaa !177
  %i.co = fadd float %i.cl, %i.cn
  %.sroa.099.0.vec.insert = insertelement <2 x float> poison, float %i.cm, i64 0
  %.sroa.099.4.vec.insert = insertelement <2 x float> %.sroa.099.0.vec.insert, float %i.co, i64 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ck, <2 x float> %.sroa.099.4.vec.insert, i32 noundef %i.bv, i32 noundef 3, float noundef 1.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.04.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.am, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !228
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.04.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.cq)
  %i.cr = and i32 %2, 1048576
  %.not91 = icmp eq i32 %i.cr, 0
  br i1 %.not91, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  %11 = load float, ptr %i.au, align 4, !tbaa !178
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 9760
  %12 = load <2 x float>, ptr %4, align 8, !tbaa !171
  store <2 x float> %12, ptr %i.cs, align 8, !tbaa !171
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9768
  store float %i.bk, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !171
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9772
  store float %11, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !171
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %.not92 = icmp eq ptr %1, null
  %brmerge = or i1 %.not92, %.not90
  br i1 %brmerge, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 10264
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !172, !range !165, !noundef !166
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cw = load <2 x float>, ptr %4, align 8, !tbaa !171
  %i.cx = load <2 x float>, ptr %i.ae, align 4, !tbaa !171
  %i.cy = fadd <2 x float> %i.cw, %i.cx
  store <2 x float> %i.cy, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.cz = load float, ptr %i.au, align 4, !tbaa !178
  store float %i.bk, ptr %9, align 4, !tbaa !176
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !171
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.u, %bb.x
  br i1 %i.an, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.dc = load float, ptr %i.db, align 4, !tbaa !188
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.de = load float, ptr %i.af, align 8, !tbaa !187
  %i.df = load <2 x float>, ptr %i.dd, align 4, !tbaa !171
  %i.dg = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  %i.di = fadd <2 x float> %i.df, %i.dh
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.dj, ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.087, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.h, ptr %i.g, align 8, !tbaa !347
  %i.dk = call noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %2)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i1 [ %i.dk, %bb.ab ], [ false, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.ac
  %.1 = phi i1 [ %.0, %bb.ac ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  %.2 = phi i1 [ %.1, %bb.ad ], [ false, %bb.a ]
  ret i1 %.2
}

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float>, <2 x float>, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 7 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %0, i32 noundef 0)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  store i32 0, ptr %i.d, align 8, !tbaa !348
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !233
  %i.g = load float, ptr %1, align 4, !tbaa !232
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  %i.j = load i32, ptr %i.i, align 8, !tbaa !347  ; 2 uses
  %i.k = and i32 %i.j, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 7996 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !349 ; 2 uses
  %i.n = fcmp oge float %i.m, %i.h
  %i.o = select i1 %i.n, float %i.m, float %i.h
  store float %i.o, ptr %i.l, align 4, !tbaa !349
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %2, 30
  %i.q = icmp eq i32 %i.p, 0
  %i.r = or disjoint i32 %2, 4
  %spec.select = select i1 %i.q, i32 %i.r, i32 %2 ; 4 uses
  %i.s = and i32 %spec.select, 4
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %spec.select, 2
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %spec.select, 8
  %.not39 = icmp eq i32 %i.u, 0
  %spec.select42 = select i1 %.not39, i32 -1, i32 20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %spec.select42, %bb.g ], [ 8, %bb.e ], [ 4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %4, align 8, !tbaa !171
  %i.w = and i32 %i.j, 2
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread44, label %bb.i

.thread44:                                        ; preds = %bb.h
  store float %i.h, ptr %3, align 8, !tbaa !176
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 7960
  %i.z = load float, ptr %i.y, align 8, !tbaa !350
  %i.aa = fcmp ugt float %i.z, 0.000000e+00
  br i1 %i.aa, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.h, ptr %3, align 8, !tbaa !176
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 7964
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !351
  %i.ad = fcmp ugt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread44, %.thread
  %i.ae = icmp slt i32 %.0, 1
  br i1 %i.ae, label %_ZL31CalcMaxPopupHeightFromItemCounti.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4568
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !189
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 3304
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !352 ; 2 uses
  %i.ak = fadd float %i.ah, %i.aj
  %i.al = uitofp nneg i32 %.0 to float
  %i.am = fneg float %i.aj
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 3232
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !353
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.an)
  br label %_ZL31CalcMaxPopupHeightFromItemCounti.exit

_ZL31CalcMaxPopupHeightFromItemCounti.exit:       ; preds = %bb.k, %bb.l
  %.0.i = phi float [ %i.aq, %bb.l ], [ f0x7F7FFFFF, %bb.k ]
  store float %.0.i, ptr %i.v, align 4, !tbaa !181
  br label %bb.m

bb.m:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit, %.thread
end_hunk_0
begin_hunk_1_@_ZN5ImGui26DebugNodeTypingSelectStateEP22ImGuiTypingSelectState:bb.a

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui14BeginBoxSelectERK6ImRectP11ImGuiWindowji(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 34 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9168 ; 5 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %2)
  %i.c = load i32, ptr %i.b, align 8, !tbaa !683
  %.not = icmp eq i32 %i.c, %2
  br i1 %.not, label %bb.b, label %bb.cc

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9216 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !684
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 9176 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !685
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9173 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !686, !range !165, !noundef !166
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui24IsMouseDragPastThresholdEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10404
  %i.l = load i32, ptr %i.k, align 4, !tbaa !687
  %i.m = and i32 %i.l, 64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.b, align 8, !tbaa !683
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.156, i32 noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9172
  store i8 1, ptr %i.o, align 4, !tbaa !688
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9208
  store ptr %1, ptr %i.p, align 8, !tbaa !689
  store i8 0, ptr %i.f, align 1, !tbaa !686
  %i.q = load i32, ptr %i.b, align 8, !tbaa !683
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.q, ptr noundef %1)
  tail call void @_ZN5ImGui31SetActiveIdUsingAllKeyboardKeysEv()
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9174
  %i.s = load i8, ptr %i.r, align 2, !tbaa !690, !range !165, !noundef !166
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9177
  %i.v = load i16, ptr %i.u, align 1
  %i.w = and i16 %i.v, 12288
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.h, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 8, !tbaa !685
  br label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.i:                                             ; preds = %bb.c
  %.pre = load i8, ptr %i.f, align 1, !tbaa !686, !range !165
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.b, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9172
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !688, !range !165, !noundef !166
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !225, !range !165, !noundef !166
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !686
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 9172
  store i8 0, ptr %i.ag, align 4, !tbaa !688
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 5428
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !205 ; 2 uses
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !683
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 10404
  %i.am = load i32, ptr %i.al, align 4, !tbaa !687
  %i.an = and i32 %i.am, 64
  %.not.i95 = icmp eq i32 %i.an, 0
  br i1 %.not.i95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.157, i32 noundef %i.ai)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit: ; preds = %bb.k, %bb.n
  store i32 0, ptr %i.b, align 8, !tbaa !683
  br label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit: ; preds = %bb.h, %bb.g, %bb.f, %.thread, %bb.j, %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 9172
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !688, !range !165, !noundef !166
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.cc

bb.o:                                             ; preds = %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 9180
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.at = load <2 x float>, ptr %i.as, align 8, !tbaa !171 ; 2 uses
  %i.au = load <2 x float>, ptr %i.ar, align 4, !tbaa !171
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 9188
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !171
  %i.az = fadd <2 x float> %i.at, %i.ay           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.bb = load <2 x float>, ptr %i.ba, align 8    ; 3 uses
  %i.bc = and i32 %3, 2048
  %.not91 = icmp eq i32 %i.bc, 0
  br i1 %.not91, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.bb, i64 0 ; 3 uses
  %i.bd = load float, ptr %0, align 4, !tbaa !176 ; 2 uses
  %i.be = fcmp olt float %.sroa.0148.0.vec.extract, %i.bd
  br i1 %i.be, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !176 ; 2 uses
  %i.bh = fcmp ogt float %.sroa.0148.0.vec.extract, %i.bg
  %..i = select i1 %i.bh, float %i.bg, float %.sroa.0148.0.vec.extract
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = phi float [ %i.bd, %bb.p ], [ %..i, %bb.q ]
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.bb, i64 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !181 ; 2 uses
  %i.bl = fcmp olt float %.sroa.0148.4.vec.extract, %i.bk
  br i1 %i.bl, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !181 ; 2 uses
  %i.bo = fcmp ogt float %.sroa.0148.4.vec.extract, %i.bn
  %.19.i = select i1 %i.bo, float %i.bn, float %.sroa.0148.4.vec.extract
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %bb.r, %bb.s
  %i.bp = phi float [ %i.bk, %bb.r ], [ %.19.i, %bb.s ]
  %.sroa.0.0.vec.insert.i101 = insertelement <2 x float> poison, float %i.bi, i64 0
  %.sroa.0.4.vec.insert.i102 = insertelement <2 x float> %.sroa.0.0.vec.insert.i101, float %i.bp, i64 1
  br label %bb.t

bb.t:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit, %bb.o
  %.sroa.0148.0 = phi <2 x float> [ %i.bb, %bb.o ], [ %.sroa.0.4.vec.insert.i102, %_Z7ImClampRK6ImVec2S1_S1_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 9268
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 9276 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 9284
  %i.bt = shufflevector <2 x float> %.sroa.0148.0, <2 x float> %i.az, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.bu = fcmp oge <4 x float> %i.aw, %i.bt
  %i.bv = fcmp olt <4 x float> %i.aw, %i.bt
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = select <4 x i1> %i.bw, <4 x float> %i.aw, <4 x float> %i.bt ; 7 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.by, ptr %i.bq, align 4
  %i.bz = shufflevector <2 x float> %i.az, <2 x float> %.sroa.0148.0, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.ca = fcmp oge <4 x float> %i.aw, %i.bz
  %i.cb = fcmp olt <4 x float> %i.aw, %i.bz
  %i.cc = shufflevector <4 x i1> %i.ca, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = select <4 x i1> %i.cc, <4 x float> %i.aw, <4 x float> %i.bz ; 7 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ce, ptr %i.br, align 4
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %i.cf, ptr %i.bs, align 4
  %i.cg = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 9292
  store <2 x float> %i.cg, ptr %i.ch, align 4
  %i.ci = and i32 %3, 192
  %.not92 = icmp eq i32 %i.ci, 0
  br i1 %.not92, label %bb.cc, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 9236 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 9252 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9256 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9260 ; 2 uses
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9264 ; 4 uses
  store <4 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.ck, align 4, !tbaa !171
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !231
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 9280
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 9272
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 9244 ; 6 uses
  %i.co = extractelement <4 x float> %i.cd, i64 3 ; 6 uses
  %i.cp = extractelement <4 x float> %i.bx, i64 3 ; 6 uses
  %i.cq = fcmp olt float %i.co, %i.cp
  %..i117 = select i1 %i.cq, float %i.co, float %i.cp ; 7 uses
  %i.cr = extractelement <4 x float> %i.cd, i64 2 ; 6 uses
  %i.cs = extractelement <4 x float> %i.bx, i64 2 ; 5 uses
  %i.ct = fcmp olt float %i.cr, %i.cs
  %i.cu = select i1 %i.ct, float %i.cr, float %i.cs ; 7 uses
  %.inv.i123 = fcmp oge float %i.co, %i.cp
  %..i124 = select i1 %.inv.i123, float %i.co, float %i.cp ; 5 uses
  %.inv12.i125 = fcmp oge float %i.cr, %i.cs
  %i.cv = select i1 %.inv12.i125, float %i.cr, float %i.cs ; 7 uses
  %i.cw = fcmp une float %..i117, %..i124
  br i1 %i.cw, label %bb.v, label %_ZN6ImRect4AddXEf.exit133

bb.v:                                             ; preds = %bb.u
  %i.cx = load float, ptr %i.cj, align 4, !tbaa !232 ; 2 uses
  %i.cy = fcmp ogt float %i.cx, %..i117
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %..i117, ptr %i.cj, align 4, !tbaa !232
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cz = phi float [ %..i117, %bb.w ], [ %i.cx, %bb.v ]
  %i.da = load float, ptr %i.cn, align 4, !tbaa !233 ; 2 uses
  %i.db = fcmp olt float %i.da, %..i117
  br i1 %i.db, label %bb.y, label %_ZN6ImRect4AddXEf.exit

bb.y:                                             ; preds = %bb.x
  store float %..i117, ptr %i.cn, align 4, !tbaa !233
  br label %_ZN6ImRect4AddXEf.exit

_ZN6ImRect4AddXEf.exit:                           ; preds = %bb.x, %bb.y
  %i.dc = phi float [ %i.da, %bb.x ], [ %..i117, %bb.y ]
  %i.dd = fcmp ogt float %i.cz, %..i124
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN6ImRect4AddXEf.exit
  store float %..i124, ptr %i.cj, align 4, !tbaa !232
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN6ImRect4AddXEf.exit
  %i.de = fcmp olt float %i.dc, %..i124
  br i1 %i.de, label %bb.ab, label %_ZN6ImRect4AddXEf.exit133

bb.ab:                                            ; preds = %bb.aa
  store float %..i124, ptr %i.cn, align 4, !tbaa !233
  br label %_ZN6ImRect4AddXEf.exit133

_ZN6ImRect4AddXEf.exit133:                        ; preds = %bb.ab, %bb.aa, %bb.u
  %i.df = fcmp une float %i.cu, %i.cv
  br i1 %i.df, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %_ZN6ImRect4AddXEf.exit133
  %i.dg = fcmp olt float %i.cu, f0x7F7FFFFF
  br i1 %i.dg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %i.cu, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !177
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dh = phi float [ %i.cu, %bb.ad ], [ f0x7F7FFFFF, %bb.ac ] ; 2 uses
  %i.di = fcmp ogt float %i.cu, f0xFF7FFFFF
  br i1 %i.di, label %bb.af, label %_ZN6ImRect4AddYEf.exit

bb.af:                                            ; preds = %bb.ae
  store float %i.cu, ptr %.sroa.6147.0..sroa_idx, align 8, !tbaa !178
  br label %_ZN6ImRect4AddYEf.exit

_ZN6ImRect4AddYEf.exit:                           ; preds = %bb.ae, %bb.af
  %i.dj = phi float [ f0xFF7FFFFF, %bb.ae ], [ %i.cu, %bb.af ] ; 2 uses
  %i.dk = fcmp ogt float %i.dh, %i.cv
  br i1 %i.dk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN6ImRect4AddYEf.exit
  store float %i.cv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !177
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6ImRect4AddYEf.exit
  %i.dl = phi float [ %i.cv, %bb.ag ], [ %i.dh, %_ZN6ImRect4AddYEf.exit ] ; 2 uses
  %i.dm = fcmp olt float %i.dj, %i.cv
  br i1 %i.dm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float %i.cv, ptr %.sroa.6147.0..sroa_idx, align 8, !tbaa !178
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN6ImRect4AddXEf.exit133
  %i.dn = phi float [ %i.cv, %bb.ai ], [ %i.dj, %bb.ah ], [ f0xFF7FFFFF, %_ZN6ImRect4AddXEf.exit133 ] ; 3 uses
  %i.do = phi float [ %i.dl, %bb.ai ], [ %i.dl, %bb.ah ], [ f0x7F7FFFFF, %_ZN6ImRect4AddXEf.exit133 ] ; 3 uses
  %i.dp = extractelement <4 x float> %i.cd, i64 1 ; 5 uses
  %i.dq = extractelement <4 x float> %i.bx, i64 1 ; 6 uses
  %i.dr = fcmp olt float %i.dq, %i.dp
  %..i120.1 = select i1 %i.dr, float %i.dq, float %i.dp ; 7 uses
  %i.ds = extractelement <4 x float> %i.cd, i64 0 ; 5 uses
  %i.dt = extractelement <4 x float> %i.bx, i64 0 ; 6 uses
  %i.du = fcmp olt float %i.dt, %i.ds
  %i.dv = select i1 %i.du, float %i.dt, float %i.ds ; 7 uses
  %.inv.i128.1 = fcmp oge float %i.dq, %i.dp
  %..i129.1 = select i1 %.inv.i128.1, float %i.dq, float %i.dp ; 5 uses
  %.inv12.i130.1 = fcmp oge float %i.dt, %i.ds
  %i.dw = select i1 %.inv12.i130.1, float %i.dt, float %i.ds ; 7 uses
  %i.dx = fcmp une float %..i120.1, %..i129.1
  br i1 %i.dx, label %bb.ak, label %_ZN6ImRect4AddXEf.exit133.1

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load float, ptr %i.cj, align 4, !tbaa !232 ; 2 uses
  %i.dz = fcmp ogt float %i.dy, %..i120.1
  br i1 %i.dz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %..i120.1, ptr %i.cj, align 4, !tbaa !232
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ea = phi float [ %..i120.1, %bb.al ], [ %i.dy, %bb.ak ]
  %i.eb = load float, ptr %i.cn, align 4, !tbaa !233 ; 2 uses
  %i.ec = fcmp olt float %i.eb, %..i120.1
  br i1 %i.ec, label %bb.an, label %_ZN6ImRect4AddXEf.exit.1

bb.an:                                            ; preds = %bb.am
  store float %..i120.1, ptr %i.cn, align 4, !tbaa !233
  br label %_ZN6ImRect4AddXEf.exit.1

_ZN6ImRect4AddXEf.exit.1:                         ; preds = %bb.an, %bb.am
  %i.ed = phi float [ %..i120.1, %bb.an ], [ %i.eb, %bb.am ]
  %i.ee = fcmp ogt float %i.ea, %..i129.1
  br i1 %i.ee, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN6ImRect4AddXEf.exit.1
  store float %..i129.1, ptr %i.cj, align 4, !tbaa !232
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN6ImRect4AddXEf.exit.1
  %i.ef = fcmp olt float %i.ed, %..i129.1
  br i1 %i.ef, label %bb.aq, label %_ZN6ImRect4AddXEf.exit133.1

bb.aq:                                            ; preds = %bb.ap
  store float %..i129.1, ptr %i.cn, align 4, !tbaa !233
  br label %_ZN6ImRect4AddXEf.exit133.1

_ZN6ImRect4AddXEf.exit133.1:                      ; preds = %bb.aq, %bb.ap, %bb.aj
  %i.eg = fcmp une float %i.dv, %i.dw
  br i1 %i.eg, label %bb.ar, label %_ZN6ImRect4AddYEf.exit134.1

bb.ar:                                            ; preds = %_ZN6ImRect4AddXEf.exit133.1
  %i.eh = fcmp ogt float %i.do, %i.dv
  br i1 %i.eh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store float %i.dv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !177
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ei = phi float [ %i.dv, %bb.as ], [ %i.do, %bb.ar ] ; 2 uses
  %i.ej = fcmp olt float %i.dn, %i.dv
  br i1 %i.ej, label %bb.au, label %_ZN6ImRect4AddYEf.exit.1

bb.au:                                            ; preds = %bb.at
  store float %i.dv, ptr %.sroa.6147.0..sroa_idx, align 8, !tbaa !178
  br label %_ZN6ImRect4AddYEf.exit.1

_ZN6ImRect4AddYEf.exit.1:                         ; preds = %bb.au, %bb.at
  %i.ek = phi float [ %i.dv, %bb.au ], [ %i.dn, %bb.at ] ; 2 uses
  %i.el = fcmp ogt float %i.ei, %i.dw
  br i1 %i.el, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN6ImRect4AddYEf.exit.1
  store float %i.dw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !177
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN6ImRect4AddYEf.exit.1
  %i.em = phi float [ %i.dw, %bb.av ], [ %i.ei, %_ZN6ImRect4AddYEf.exit.1 ] ; 2 uses
  %i.en = fcmp olt float %i.ek, %i.dw
  br i1 %i.en, label %bb.ax, label %_ZN6ImRect4AddYEf.exit134.1

bb.ax:                                            ; preds = %bb.aw
  store float %i.dw, ptr %.sroa.6147.0..sroa_idx, align 8, !tbaa !178
  br label %_ZN6ImRect4AddYEf.exit134.1

_ZN6ImRect4AddYEf.exit134.1:                      ; preds = %bb.ax, %bb.aw, %_ZN6ImRect4AddXEf.exit133.1
  %i.eo = phi float [ %i.dw, %bb.ax ], [ %i.ek, %bb.aw ], [ %i.dn, %_ZN6ImRect4AddXEf.exit133.1 ] ; 3 uses
  %i.ep = phi float [ %i.em, %bb.ax ], [ %i.em, %bb.aw ], [ %i.do, %_ZN6ImRect4AddXEf.exit133.1 ] ; 3 uses
  %i.eq = fcmp olt <4 x float> %i.cd, %i.bx       ; 4 uses
  %i.er = extractelement <4 x i1> %i.eq, i64 3
  %.sroa.0.0176 = select i1 %i.er, float %i.co, float %i.cp ; 6 uses
  %i.es = extractelement <4 x i1> %i.eq, i64 2
  %.sroa.6.0 = select i1 %i.es, float %i.cr, float %i.cs ; 6 uses
  %i.et = extractelement <4 x i1> %i.eq, i64 1
  %.sroa.9.0 = select i1 %i.et, float %i.dq, float %i.dp ; 6 uses
  %i.eu = extractelement <4 x i1> %i.eq, i64 0
  %.sroa.12.0 = select i1 %i.eu, float %i.dt, float %i.ds ; 4 uses
  %i.ev = and i32 %3, 128
end_hunk_1
begin_hunk_2_@_ZN5ImGui10EndMenuBarEv:bb.a
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.af, align 8, !tbaa !210
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8320
  store i8 2, ptr %i.ai, align 8, !tbaa !778
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8218
  store i8 1, ptr %i.aj, align 2, !tbaa !779
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  store i8 1, ptr %i.ak, align 1, !tbaa !212
  %i.al = load i32, ptr %i.i, align 8, !tbaa !629
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8408
  %i.an = load i32, ptr %i.am, align 8, !tbaa !780
  %i.ao = load i32, ptr %i.y, align 4, !tbaa !777
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8392
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !781
  tail call void @_ZN5ImGui21NavMoveRequestForwardE8ImGuiDirS0_ii(i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aq)
  br label %bb.l

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.b
  tail call void @_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi(ptr noundef nonnull %i.c, i32 noundef 4)
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.f, %bb.g, %bb.j, %bb.k
  tail call void @_ZN5ImGui11PopClipRectEv()
  tail call void @_ZN5ImGui5PopIDEv()
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.as = load float, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !236
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  store float %i.av, ptr %i.aw, align 4, !tbaa !771
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !782
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !783
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [60 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  store i8 0, ptr %i.bd, align 4, !tbaa !784
  %i.be = getelementptr i8, ptr %i.bc, i64 -48
  %i.bf = load i64, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !185 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !184
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !786
  %i.bm = fsub float %i.bj, %i.bl                 ; 2 uses
  %i.bn = fcmp oge float %i.bh, %i.bm
  %i.bo = select i1 %i.bn, float %i.bh, float %i.bm
  store float %i.bo, ptr %i.bg, align 8, !tbaa !185
  tail call void @_ZN5ImGui8EndGroupEv()
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 1, ptr %i.bp, align 4, !tbaa !323
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.bq, align 8, !tbaa !324
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i32 0, ptr %i.br, align 8, !tbaa !382
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  store i8 0, ptr %i.bs, align 1, !tbaa !773
  store i64 %i.bf, ptr %i.bi, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

declare void @_ZN5ImGui21NavMoveRequestForwardE8ImGuiDirS0_ii(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui20BeginViewportSideBarEPKcP13ImGuiViewport8ImGuiDirfi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ImVec2, align 8             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = tail call noundef ptr @_ZN5ImGui16FindWindowByNameEPKc(ptr noundef %0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  %i.d = load i16, ptr %i.c, align 2, !tbaa !611
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef ptr @_ZN5ImGui15GetMainViewportEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 224 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load <2 x float>, ptr %i.i, align 8, !tbaa !171
  %i.m = load <2 x float>, ptr %i.h, align 8, !tbaa !171 ; 2 uses
  %i.n = fadd <2 x float> %i.l, %i.m              ; 3 uses
  %i.o = load <2 x float>, ptr %i.k, align 8, !tbaa !171
  %i.p = fsub <2 x float> %i.o, %i.m
  %i.q = load <2 x float>, ptr %i.j, align 8, !tbaa !171
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = fcmp ole <2 x float> %i.r, zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x float> zeroinitializer, <2 x float> %i.r
  %i.u = fadd <2 x float> %i.n, %i.t              ; 3 uses
  %i.v = and i32 %2, -2
  %i.w = icmp eq i32 %i.v, 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> %i.n, ptr %5, align 8
  switch i32 %2, label %._crit_edge [
    i32 3, label %bb.f
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %.sroa.6.4.vec.extract = extractelement <2 x float> %i.u, i64 1
  %.sroa.6.0.vec.extract = extractelement <2 x float> %i.u, i64 0
  %.sroa.speculated = select i1 %i.w, float %.sroa.6.4.vec.extract, float %.sroa.6.0.vec.extract
  %i.x = fsub float %.sroa.speculated, %3
  %.sroa.sel39.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.w, i64 4, i64 0
  %.sroa.sel39.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel39.idx.sroa.sel.idx.sroa.sel.idx
  store float %i.x, ptr %.sroa.sel39.idx.sroa.sel.idx.sroa.sel, align 4, !tbaa !171
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.y = fsub <2 x float> %i.u, %i.n
  store <2 x float> %i.y, ptr %6, align 8
  %i.z = zext i1 %i.w to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.w, i64 4, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  store float %3, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !171
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 0)
  %i.aa = and i32 %2, -3
  %or.cond3 = icmp eq i32 %i.aa, 0
  br i1 %or.cond3, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  switch i32 %2, label %bb.h [
    i32 3, label %.sink.split
    i32 1, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.g, %bb.g, %._crit_edge
  %.sink54 = phi ptr [ %i.h, %._crit_edge ], [ %i.j, %bb.g ], [ %i.j, %bb.g ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sink54, i64 %i.z ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !171
  %i.ad = fadd float %3, %i.ac
  store float %i.ad, ptr %i.ab, align 4, !tbaa !171
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.ae = or i32 %4, 7
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 3, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !171
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.af = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef %0, ptr noundef null, i32 noundef %i.ae)
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  ret i1 %i.af
}

declare noundef ptr @_ZN5ImGui15GetMainViewportEv() local_unnamed_addr #3

declare void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui16BeginMainMenuBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.b = tail call noundef ptr @_ZN5ImGui15GetMainViewportEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3508
  %i.d = load i32, ptr %i.c, align 4, !tbaa !787
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3512
  %i.f = load float, ptr %i.e, align 4, !tbaa !788
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.h = load float, ptr %i.g, align 4, !tbaa !229
  %i.i = fsub float %i.f, %i.h                    ; 2 uses
  %i.j = fcmp oge float %i.i, 0.000000e+00
  %0 = getelementptr inbounds nuw i8, ptr %i.a, i64 8036 ; 2 uses
  %1 = bitcast float %i.i to i32
  %2 = select i1 %i.j, i32 %1, i32 0
  store i32 %i.d, ptr %0, align 4
  %.sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8040 ; 2 uses
  store i32 %2, ptr %.sroa_idx13, align 4
  %i.k = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  %i.l = tail call noundef zeroext i1 @_ZN5ImGui20BeginViewportSideBarEPKcP13ImGuiViewport8ImGuiDirfi(ptr noundef nonnull @.str.127, ptr noundef %i.b, i32 noundef 2, float noundef %i.k, i32 noundef 1288) ; 2 uses
  store i32 0, ptr %0, align 4
  store i32 0, ptr %.sroa_idx13, align 4
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !241
  %i.q = and i32 %i.p, -257
  store i32 %i.q, ptr %i.o, align 4, !tbaa !241
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %i.l
}

declare void @_ZN5ImGui3EndEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14EndMainMenuBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  %i.e = load i8, ptr %i.d, align 1, !tbaa !773, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.128) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui10EndMenuBarEv()
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !241
  %i.k = or i32 %i.j, 256
  store i32 %i.k, ptr %i.i, align 4, !tbaa !241
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !380  ; 2 uses
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.p = load i32, ptr %i.o, align 4, !tbaa !381
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8321
  %i.s = load i8, ptr %i.r, align 1, !tbaa !666, !range !165, !noundef !166
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.v = load i32, ptr %i.u, align 4, !tbaa !205
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti(ptr noundef %i.m, ptr noundef null, ptr noundef null, i32 noundef 3)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

declare void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11BeginMenuExEPKcS1_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 6 uses
  %9 = alloca %struct.ImGuiLastItemData, align 4  ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 42 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !164, !range !165, !noundef !166
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef %0, ptr noundef null) ; 12 uses
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.h, i32 noundef 0) ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !241
  %i.l = and i32 %i.k, 268435456
  %.not220 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not220, i32 268566853, i32 285344069 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9888 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9896 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !600  ; 3 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !601  ; 6 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %i.t, %bb.d ] ; 3 uses
  %i.s = icmp ult ptr %.0.i, %i.r
  br i1 %i.s, label %bb.d, label %_ZNK8ImVectorIjE8containsERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.u = load i32, ptr %.0.i, align 4, !tbaa !192
  %i.v = icmp eq i32 %i.u, %i.h
  br i1 %i.v, label %bb.e, label %bb.c, !llvm.loop !789

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_ZN5ImGui16BeginPopupMenuExEjPKci(i32 noundef %i.h, ptr noundef %0, i32 noundef %spec.select)
  br label %bb.bz

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 7928
  store i32 0, ptr %i.x, align 8, !tbaa !348
  br label %bb.bz

_ZNK8ImVectorIjE8containsERKj.exit:               ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 9892 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !790
  %i.aa = icmp eq i32 %i.p, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN8ImVectorIjE9push_backERKj.exit

bb.h:                                             ; preds = %_ZNK8ImVectorIjE8containsERKj.exit
  %i.ab = add nsw i32 %i.p, 1
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = sdiv i32 %i.p, 2
  %i.ad = add nsw i32 %i.ac, %i.p
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.i, %bb.h
  %i.ae = phi i32 [ %i.ad, %bb.i ], [ 8, %bb.h ]
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %i.ae, i32 %i.ab) ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ah) ; 3 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !600 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.ak = load i32, ptr %i.m, align 8, !tbaa !601
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ai, ptr nonnull align 4 %i.aj, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !600
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !600
  store i32 %i.af, ptr %i.y, align 4, !tbaa !790
  %.pre3.i = load i32, ptr %i.m, align 8, !tbaa !601
  %.pre = sext i32 %.pre3.i to i64
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %_ZNK8ImVectorIjE8containsERKj.exit, %bb.k
  %.pre-phi = phi i64 [ %i.q, %_ZNK8ImVectorIjE8containsERKj.exit ], [ %.pre, %bb.k ]
  %i.ao = phi ptr [ %i.o, %_ZNK8ImVectorIjE8containsERKj.exit ], [ %i.ai, %bb.k ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %.pre-phi
  store i32 %i.h, ptr %i.ap, align 4
  %i.aq = load i32, ptr %i.m, align 8, !tbaa !601
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.m, align 8, !tbaa !601
  %i.as = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.at = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.as, i1 noundef zeroext false, float noundef -1.000000e+00) ; 3 uses
  store <2 x float> %i.at, ptr %3, align 8
  %i.au = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 5312
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !11 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8152
end_hunk_2
begin_hunk_3_@_ZN5ImGui11BeginTabBarEPKci:bb.a
  %i.i = tail call noundef ptr @_ZN6ImPoolI11ImGuiTabBarE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef %i.g) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.l = load float, ptr %i.k, align 8, !tbaa !325 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.n = load float, ptr %i.m, align 8, !tbaa !189
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.p = load float, ptr %i.o, align 8, !tbaa !229
  %i.q = load <2 x float>, ptr %i.j, align 8, !tbaa !171 ; 3 uses
  %i.r = extractelement <2 x float> %i.q, i64 1
  %i.s = fadd float %i.r, %i.n
  %i.t = tail call float @llvm.fmuladd.f32(float %i.p, float 2.000000e+00, float %i.s)
  store <2 x float> %i.q, ptr %2, align 8, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.l, ptr %i.u, align 8, !tbaa !176
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.t, ptr %i.v, align 4, !tbaa !181
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.g, ptr %i.w, align 4, !tbaa !813
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.y = load float, ptr %i.x, align 8, !tbaa !624
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = fptosi float %i.z to i32
  %i.ab = sitofp i32 %i.aa to float               ; 2 uses
  %i.ac = extractelement <2 x float> %i.q, i64 0
  %i.ad = fsub float %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  store float %i.ad, ptr %i.ae, align 4, !tbaa !818
  %i.af = fadd float %i.l, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store float %i.af, ptr %i.ag, align 8, !tbaa !819
  %i.ah = or i32 %1, 2097152
  %i.ai = call noundef zeroext i1 @_ZN5ImGui13BeginTabBarExEP11ImGuiTabBarRK6ImRecti(ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.ai, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6ImPoolI11ImGuiTabBarE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !192  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !812
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [176 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !816  ; 6 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !192
  %i.j = load i32, ptr %0, align 8, !tbaa !820
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.i, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !821  ; 4 uses
  %.not.i = icmp slt i32 %i.i, %i.n
  br i1 %.not.i, label %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i, label %bb.e

._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre7.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !812
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
  %i.t = mul nsw i64 %i.s, 176
  %i.u = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.t) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !812  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i
  %i.x = load i32, ptr %0, align 8, !tbaa !822
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !812
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI11ImGuiTabBarE14_grow_capacityEi.exit.i.i
  store ptr %i.u, ptr %i.v, align 8, !tbaa !812
  store i32 %i.r, ptr %i.m, align 4, !tbaa !821
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !816
  %.pre9.i = add nsw i32 %.pre.i, 1
  br label %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i

_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i:      ; preds = %bb.h, %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %i.l, %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i ], [ %.pre9.i, %bb.h ]
  %.pre7.i = phi ptr [ %.pre7.pre.i, %._ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit_crit_edge.i ], [ %i.u, %bb.h ]
  store i32 %i.l, ptr %0, align 8, !tbaa !822
  %.pre10.i = sext i32 %i.i to i64
  br label %_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !812 ; 2 uses
  %i.ad = sext i32 %i.i to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [176 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192
  br label %_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit

_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit:             ; preds = %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i, %bb.i
  %.pre-phi11.i = phi i64 [ %i.ad, %bb.i ], [ %.pre10.i, %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i ] ; 2 uses
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %.pre7.i, %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i ]
  %storemerge.i = phi i32 [ %i.af, %bb.i ], [ %.pre-phi.i, %_ZN8ImVectorI11ImGuiTabBarE6resizeEi.exit.i ]
  store i32 %storemerge.i, ptr %i.h, align 8, !tbaa !816
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds [176 x i8], ptr %i.ag, i64 %.pre-phi11.i
  tail call void @_ZN11ImGuiTabBarC1Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !817
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !817
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !812
  %i.an = getelementptr inbounds [176 x i8], ptr %i.am, i64 %.pre-phi11.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.an, %_ZN6ImPoolI11ImGuiTabBarE3AddEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui13BeginTabBarExEP11ImGuiTabBarRK6ImRecti(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !164, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %2, 1048576
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !813
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %i.j)
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9136 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 9096
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 9104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !814  ; 3 uses
  %.not.i.i = icmp uge ptr %0, %i.o
  %i.p = load i32, ptr %i.m, align 8
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [176 x i8], ptr %i.o, i64 %i.q
  %i.s = icmp ult ptr %0, %i.r
  %i.t = select i1 %.not.i.i, i1 %i.s, i1 false
  br i1 %i.t, label %bb.e, label %_ZL22GetTabBarRefFromTabBarP11ImGuiTabBar.exit

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %0 to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 176
  %i.y = trunc i64 %i.x to i32
  br label %_ZL22GetTabBarRefFromTabBarP11ImGuiTabBar.exit

_ZL22GetTabBarRefFromTabBarP11ImGuiTabBar.exit:   ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi i32 [ %i.y, %bb.e ], [ -1, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.e ], [ %0, %bb.d ]
  %i.z = load i32, ptr %i.l, align 8, !tbaa !823  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9140 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !824
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %._ZN8ImVectorI15ImGuiPtrOrIndexE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI15ImGuiPtrOrIndexE7reserveEi.exit_crit_edge.i: ; preds = %_ZL22GetTabBarRefFromTabBarP11ImGuiTabBar.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9144
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !825
  br label %_ZN8ImVectorI15ImGuiPtrOrIndexE9push_backERKS0_.exit

bb.f:                                             ; preds = %_ZL22GetTabBarRefFromTabBarP11ImGuiTabBar.exit
  %i.ad = add nsw i32 %i.z, 1
  %.not.i.i65 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i65, label %_ZNK8ImVectorI15ImGuiPtrOrIndexE14_grow_capacityEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.z, 2
  %i.af = add nsw i32 %i.ae, %i.z
  br label %_ZNK8ImVectorI15ImGuiPtrOrIndexE14_grow_capacityEi.exit.i

_ZNK8ImVectorI15ImGuiPtrOrIndexE14_grow_capacityEi.exit.i: ; preds = %bb.g, %bb.f
  %i.ag = phi i32 [ %i.af, %bb.g ], [ 8, %bb.f ]
  %i.ah = tail call noundef i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ad) ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 4
  %i.ak = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aj) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 9144 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !825 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.am, null
  br i1 %.not6.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorI15ImGuiPtrOrIndexE14_grow_capacityEi.exit.i
  %i.an = load i32, ptr %i.l, align 8, !tbaa !823
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ak, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !825
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aq)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorI15ImGuiPtrOrIndexE14_grow_capacityEi.exit.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !825
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !824
  %.pre3.i = load i32, ptr %i.l, align 8, !tbaa !823
  br label %_ZN8ImVectorI15ImGuiPtrOrIndexE9push_backERKS0_.exit

_ZN8ImVectorI15ImGuiPtrOrIndexE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI15ImGuiPtrOrIndexE7reserveEi.exit_crit_edge.i, %bb.i
  %i.ar = phi i32 [ %i.z, %._ZN8ImVectorI15ImGuiPtrOrIndexE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.i ]
  %i.as = phi ptr [ %.pre.i, %._ZN8ImVectorI15ImGuiPtrOrIndexE7reserveEi.exit_crit_edge.i ], [ %i.ak, %bb.i ]
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.at ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.au, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.sroa.3.0.i, ptr %.sroa.471.0..sroa_idx, align 8
  %i.av = load i32, ptr %i.l, align 8, !tbaa !823
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.l, align 8, !tbaa !823
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  store ptr %0, ptr %i.ax, align 8, !tbaa !826
  store ptr %i.c, ptr %0, align 8, !tbaa !827
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load i64, ptr %i.ay, align 8
  store i64 %i.ba, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !810 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !585
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8ImVectorI15ImGuiPtrOrIndexE9push_backERKS0_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !828
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !829
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !830
  %i.bm = fadd float %i.bj, %i.bl
  store i32 %i.bh, ptr %i.ay, align 8
  %.sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.bm, ptr %.sroa_idx67, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !831
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 2, !tbaa !831
  br label %bb.p

bb.k:                                             ; preds = %_ZN8ImVectorI15ImGuiPtrOrIndexE9push_backERKS0_.exit
  %i.bq = and i32 %2, 1                           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !832
  %i.bt = and i32 %i.bs, 1
  %.not = icmp eq i32 %i.bq, %i.bt
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !833, !range !165, !noundef !166
  %i.bw = trunc nuw i8 %i.bv to i1
  %.not63 = icmp eq i32 %i.bq, 0
  %or.cond = and i1 %.not63, %i.bw
  br i1 %or.cond, label %bb.m, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !834 ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 1
  br i1 %i.bz, label %bb.n, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.n:                                             ; preds = %bb.m
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !835
  tail call void @qsort(ptr noundef %i.cc, i64 noundef %i.ca, i64 noundef 44, ptr noundef nonnull @_ZL27TabItemComparerByBeginOrderPKvS0_)
  %.pre72 = load i32, ptr %i.bb, align 8, !tbaa !810
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.n, %bb.m, %bb.l
  %i.cd = phi i32 [ %.pre72, %bb.n ], [ %i.bc, %bb.m ], [ %i.bc, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 0, ptr %i.ce, align 1, !tbaa !833
  %i.cf = and i32 %2, 896
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = or disjoint i32 %2, 128
  %spec.select = select i1 %i.cg, i32 %i.ch, i32 %2 ; 2 uses
  store i32 %spec.select, ptr %i.br, align 8, !tbaa !832
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !231
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 1, ptr %i.cj, align 1, !tbaa !836
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.cd, ptr %i.ck, align 4, !tbaa !806
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !585
  store i32 %i.cl, ptr %i.bb, align 8, !tbaa !810
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !837
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.cn, ptr %i.co, align 8, !tbaa !838
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !837
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 3304
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !352 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.cq, ptr %i.cr, align 4, !tbaa !830
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cu = load i64, ptr %i.cs, align 4
  store i64 %i.cu, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 0, ptr %i.cv, align 8, !tbaa !839
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i16 -1, ptr %i.cw, align 2, !tbaa !811
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 1, ptr %i.cx, align 2, !tbaa !831
  %i.cy = load i32, ptr %i.ci, align 8, !tbaa !828
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !829
  %i.db = fadd float %i.cq, %i.da
  store i32 %i.cy, ptr %i.ay, align 8
  %.sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.db, ptr %.sroa_idx66, align 4
  %i.dc = and i32 %spec.select, 2097152
  %.not64 = icmp eq i32 %i.dc, 0
  %i.dd = select i1 %.not64, i32 40, i32 37
  %i.de = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.dd, float noundef 1.000000e+00)
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 3396
  %i.dg = load float, ptr %i.df, align 4, !tbaa !840 ; 2 uses
  %i.dh = fcmp ogt float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.di = load float, ptr %i.cz, align 4, !tbaa !829 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !818
  %i.dn = fsub float %i.di, %i.dg
  store float %i.dm, ptr %3, align 4, !tbaa !176
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.dn, ptr %i.do, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !819
  store float %i.dq, ptr %4, align 4, !tbaa !176
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.di, ptr %i.dr, align 4, !tbaa !181
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.dk, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.de, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.p

bb.p:                                             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit, %bb.o, %bb.a, %bb.j
  %.0 = xor i1 %i.f, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -65535, 65536) i32 @_ZL27TabItemComparerByBeginOrderPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i16, ptr %i.a, align 4, !tbaa !841
  %i.c = sext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i16, ptr %i.d, align 4, !tbaa !841
  %i.f = sext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9EndTabBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !164, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !826  ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.132) ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 131
  %i.k = load i8, ptr %i.j, align 1, !tbaa !836, !range !165, !noundef !166
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  %i.n = load i8, ptr %i.m, align 4, !tbaa !843, !range !165, !noundef !166
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !806
  %i.r = add nsw i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
end_hunk_3
begin_hunk_4_@_ZN5ImGui12BeginTabItemEPKcPbi:bb.a
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
  %8 = alloca %struct.ImRect, align 16            ; 15 uses
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
  %.0241 = phi ptr [ %i.bj, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.ae, %bb.k ] ; 21 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = ptrtoint ptr %.0241 to i64
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
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 3288
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !229
  br i1 %i.bx, label %bb.p, label %_ZN5ImGui15TabItemCalcSizeEPKcb.exit

bb.p:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 3308
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !412
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 4568
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !189
  %i.ci = fadd float %i.cf, %i.ch
  br label %_ZN5ImGui15TabItemCalcSizeEPKcb.exit

_ZN5ImGui15TabItemCalcSizeEPKcb.exit:             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, %bb.p
  %.sink.i = phi float [ %i.ci, %bb.p ], [ 1.000000e+00, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ]
  %i.cj = fadd float %i.cb, %.sink.i
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bz, i64 0
  %i.ck = fadd float %.sroa.0.0.vec.extract.i, %i.cb
  %storemerge.i = fadd float %i.ck, %i.cj         ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.bz, i64 1
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float 2.000000e+00, float %.sroa.0.4.vec.extract.i)
  %i.cm = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4568
  %i.co = load float, ptr %i.cn, align 8, !tbaa !189
  %i.cp = fmul float %i.co, 2.000000e+01          ; 2 uses
  %i.cq = fcmp olt float %storemerge.i, %i.cp
  %i.cr = select i1 %i.cq, float %storemerge.i, float %i.cp
  %.sroa.08.0.vec.insert.i = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.08.4.vec.insert.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i, float %i.cl, i64 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0241, i64 28 ; 2 uses
  store float -1.000000e+00, ptr %i.cs, align 4, !tbaa !875
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 7792
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !404
  %i.cv = and i32 %i.cu, 1
  %.not249 = icmp eq i32 %i.cv, 0
  br i1 %.not249, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5ImGui15TabItemCalcSizeEPKcb.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 7816
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !900 ; 2 uses
  store float %i.cx, ptr %i.cs, align 4, !tbaa !875
  %.sroa.0327.0.vec.insert = insertelement <2 x float> %.sroa.08.4.vec.insert.i, float %i.cx, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit
  %.sroa.0327.0 = phi <2 x float> [ %.sroa.08.4.vec.insert.i, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit ], [ %.sroa.0327.0.vec.insert, %bb.q ] ; 2 uses
  %.pre355.a = extractelement <2 x float> %.sroa.0327.0, i64 0 ; 3 uses
  br i1 %i.bm, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = fcmp ole float %.pre355.a, 1.000000e+00
  %i.cz = select i1 %i.cy, float 1.000000e+00, float %.pre355.a
  %i.da = getelementptr inbounds nuw i8, ptr %.0241, i64 20
  store float %i.cz, ptr %i.da, align 4, !tbaa !878
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %.0241, i64 24
  store float %.pre355.a, ptr %i.db, align 4, !tbaa !876
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !839 ; 2 uses
  %i.de = add i16 %i.dd, 1
  store i16 %i.de, ptr %i.dc, align 8, !tbaa !839
  %i.df = getelementptr inbounds nuw i8, ptr %.0241, i64 36
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
  %i.do = getelementptr inbounds nuw i8, ptr %.0241, i64 8 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !848
  %i.dq = add nsw i32 %i.dp, 1
  %i.dr = icmp sge i32 %i.dq, %i.dk               ; 3 uses
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %.0241, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !854
  %i.du = and i32 %i.dt, 1
  %.not251 = icmp eq i32 %i.du, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.dv = phi i1 [ false, %._crit_edge ], [ %.not251, %bb.t ]
  %i.dw = and i32 %.0235, 2097152
  %i.dx = icmp ne i32 %i.dw, 0                    ; 7 uses
  store i32 %i.dk, ptr %i.do, align 4, !tbaa !848
  %i.dy = getelementptr inbounds nuw i8, ptr %.0241, i64 4 ; 4 uses
  store i32 %.0235, ptr %i.dy, align 4, !tbaa !854
  %.not252 = icmp eq ptr %4, null
  br i1 %.not252, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !901
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ea, i32 1)
  %i.eb = getelementptr inbounds nuw i8, ptr %.0241, i64 32
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
  %i.en = load i32, ptr %.0241, align 4, !tbaa !849
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
  %i.er = load i32, ptr %.0241, align 4, !tbaa !849
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.er, ptr %i.es, align 4, !tbaa !851
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !844
  %i.ev = icmp eq i32 %i.eu, %.0.i
  br i1 %i.ev, label %bb.ah, label %.critedge

end_hunk_4
