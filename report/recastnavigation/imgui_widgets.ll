Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis:bb.a
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !193 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = load float, ptr %i.q, align 4, !tbaa !245
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 5.000000e-01, float 5.000000e-01)
  %i.t = fptosi float %i.s to i32
  %i.u = sitofp i32 %i.t to float                 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !246
  %i.x = and i32 %i.w, 1024
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3224
  %i.aa = load float, ptr %i.z, align 8, !tbaa !247
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 5.000000e-01, float 5.000000e-01)
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sitofp i32 %i.ac to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ae = phi float [ %i.ad, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = fadd float %.sroa.0.0.copyload, %i.u
  %i.ah = fadd float %i.d, %i.u                   ; 2 uses
  %i.ai = fsub float %i.j, %i.u                   ; 2 uses
  %i.aj = fsub float %i.ai, %i.p                  ; 2 uses
  %i.ak = fcmp oge float %i.ah, %i.aj
  %i.al = select i1 %i.ak, float %i.ah, float %i.aj
  %i.am = fsub float %.sroa.5.0.copyload, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = fsub float %i.g, %i.u                   ; 2 uses
  %i.ao = fsub float %i.an, %i.p                  ; 2 uses
  %i.ap = fcmp oge float %i.b, %i.ao
  %i.aq = select i1 %i.ap, float %i.b, float %i.ao
  %i.ar = fadd float %.sroa.4.0.copyload, %i.ae
  %i.as = fsub float %.sroa.6.0.copyload, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink36 = phi float [ %i.aq, %bb.e ], [ %i.ag, %bb.d ]
  %.sink35 = phi float [ %i.ar, %bb.e ], [ %i.al, %bb.d ]
  %.sink34 = phi float [ %i.an, %bb.e ], [ %i.am, %bb.d ]
  %.sink = phi float [ %i.as, %bb.e ], [ %i.ai, %bb.d ]
  %.sroa.0.0.vec.insert26 = insertelement <2 x float> poison, float %.sink36, i64 0
  %.sroa.0.4.vec.insert28 = insertelement <2 x float> %.sroa.0.0.vec.insert26, float %.sink35, i64 1
  %.sroa.5.8.vec.insert31 = insertelement <2 x float> poison, float %.sink34, i64 0
  %.sroa.5.12.vec.insert33 = insertelement <2 x float> %.sroa.5.8.vec.insert31, float %.sink, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert28, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5.12.vec.insert33, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 17 uses
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %.str.4..str.5.i = select i1 %i.e, ptr @.str.4, ptr @.str.5
  %i.f = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.d, ptr noundef nonnull %.str.4..str.5.i, ptr noundef null) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load float, ptr %i.g, align 8, !tbaa !241 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !242 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !243
  %i.m = fadd float %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.o = load float, ptr %i.n, align 4, !tbaa !244
  %i.p = fadd float %i.j, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 544 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.q, align 8, !tbaa !193
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 548
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !193
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !193
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 556
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.s = xor i32 %0, 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !193 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.x = load float, ptr %i.w, align 4, !tbaa !245
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 5.000000e-01, float 5.000000e-01)
  %i.z = fptosi float %i.y to i32
  %i.aa = sitofp i32 %i.z to float                ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !246 ; 2 uses
  %i.ad = and i32 %i.ac, 1024
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3224
  %i.ag = load float, ptr %i.af, align 8, !tbaa !247
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 5.000000e-01, float 5.000000e-01)
  %i.ai = fptosi float %i.ah to i32
  %i.aj = sitofp i32 %i.ai to float
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = phi float [ %i.aj, %bb.b ], [ 0.000000e+00, %bb.a ]
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = fadd float %.sroa.0.0.copyload.i, %i.aa
  %i.am = fadd float %i.j, %i.aa                  ; 2 uses
  %i.an = fsub float %i.p, %i.aa                  ; 2 uses
  %i.ao = fsub float %i.an, %i.v                  ; 2 uses
  %i.ap = fcmp oge float %i.am, %i.ao
  %i.aq = select i1 %i.ap, float %i.am, float %i.ao
  %i.ar = fsub float %.sroa.5.0.copyload.i, %i.aa
  %.sroa.0.0.vec.insert26.i36 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert28.i37 = insertelement <2 x float> %.sroa.0.0.vec.insert26.i36, float %i.aq, i64 1
  %.sroa.5.8.vec.insert31.i38 = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.5.12.vec.insert33.i39 = insertelement <2 x float> %.sroa.5.8.vec.insert31.i38, float %i.an, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 201
  %i.at = load i8, ptr %i.as, align 1, !tbaa !614, !range !187, !noundef !188
  %i.au = trunc nuw i8 %i.at to i1
  %spec.select = select i1 %i.au, i32 320, i32 448
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.av = fsub float %i.m, %i.aa                  ; 2 uses
  %i.aw = fsub float %i.av, %i.v                  ; 2 uses
  %i.ax = fcmp oge float %i.h, %i.aw
  %i.ay = select i1 %i.ax, float %i.h, float %i.aw
  %i.az = fadd float %.sroa.4.0.copyload.i, %i.ak
  %i.ba = fsub float %.sroa.6.0.copyload.i, %i.aa
  %.sroa.0.0.vec.insert26.i = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.0.4.vec.insert28.i = insertelement <2 x float> %.sroa.0.0.vec.insert26.i, float %i.az, i64 1
  %.sroa.5.8.vec.insert31.i = insertelement <2 x float> poison, float %i.av, i64 0
  %.sroa.5.12.vec.insert33.i = insertelement <2 x float> %.sroa.5.8.vec.insert31.i, float %i.ba, i64 1
  %i.bb = and i32 %i.ac, 1025
  %or.cond = icmp eq i32 %i.bb, 1
  %.0 = select i1 %or.cond, i32 288, i32 256      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !615, !range !187, !noundef !188
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = or disjoint i32 %.0, 128
  %spec.select31 = select i1 %i.be, i32 %.0, i32 %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.4.vec.insert28.i.sink = phi <2 x float> [ %.sroa.0.4.vec.insert28.i37, %bb.d ], [ %.sroa.0.4.vec.insert28.i, %bb.e ]
  %.sroa.5.12.vec.insert33.i.sink = phi <2 x float> [ %.sroa.5.12.vec.insert33.i39, %bb.d ], [ %.sroa.5.12.vec.insert33.i, %bb.e ]
  %.1 = phi i32 [ %spec.select, %bb.d ], [ %spec.select31, %bb.e ]
  store <2 x float> %.sroa.0.4.vec.insert28.i.sink, ptr %1, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.5.12.vec.insert33.i.sink, ptr %i.bg, align 8
  %i.bh = sext i32 %0 to i64                      ; 5 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !193
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bh
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !193
  %i.bm = fsub float %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bh
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !193
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bh
  %i.bs = load float, ptr %i.br, align 4, !tbaa !193
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float 2.000000e+00, float %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bh ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !193
  %i.bx = fptosi float %i.bw to i64
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !248
  %i.by = fptosi float %i.bm to i64
  %i.bz = fptosi float %i.bt to i64
  %i.ca = call noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.f, i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.by, i64 noundef %i.bz, i32 noundef %.1) ; 0 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !248
  %i.cc = sitofp i64 %i.cb to float
  store float %i.cc, ptr %i.bv, align 4, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ImRect, align 16            ; 11 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %9 = alloca %struct.ImRect, align 4             ; 7 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !186, !range !187, !noundef !188
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread129, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !193
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !193
  %i.l = fsub <2 x float> %i.j, %i.k              ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0   ; 3 uses
  %i.n = fcmp ole float %i.m, 0.000000e+00
  %i.o = extractelement <2 x float> %i.l, i64 1   ; 3 uses
  %i.p = fcmp ole float %i.o, 0.000000e+00
  %or.cond = or i1 %i.n, %i.p
  br i1 %or.cond, label %.thread129, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %2, 1
  %i.r = fcmp olt float %i.o, %i.m
  %or.cond118 = and i1 %i.q, %i.r
  br i1 %or.cond118, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = fmul float %i.m, 2.000000e+00            ; 2 uses
  %i.t = fcmp oge float %i.s, 1.000000e+00
  %i.u = select i1 %i.t, float %i.s, float 1.000000e+00
  %i.v = fdiv float %i.o, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 1.000000e+00
  %i.x = select i1 %i.w, float 1.000000e+00, float %i.v ; 2 uses
  %i.y = fcmp ugt float %i.x, 0.000000e+00
  br i1 %i.y, label %.thread, label %.thread129

.thread:                                          ; preds = %bb.d, %bb.c
  %.0111128 = phi float [ %i.x, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.z = fcmp oge float %.0111128, 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  %i.aa = fadd <2 x float> %i.l, splat (float -2.000000e+00)
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ae = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>   ; 3 uses
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = icmp slt <2 x i32> %i.af, zeroinitializer
  %i.ai = icmp sgt <2 x i32> %i.af, splat (i32 3)
  %i.aj = fneg <2 x float> %i.ag
  %i.ak = select <2 x i1> %i.ai, <2 x float> splat (float -3.000000e+00), <2 x float> %i.aj
  %i.al = select <2 x i1> %i.ah, <2 x float> splat (float -0.000000e+00), <2 x float> %i.ak
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.an = load <4 x float>, ptr %7, align 16, !tbaa !193 ; 2 uses
  %i.ao = fsub <4 x float> %i.an, %i.am           ; 2 uses
  %i.ap = fadd <4 x float> %i.an, %i.am           ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.aq, ptr %7, align 16, !tbaa !193
  %i.ar = icmp eq i32 %2, 0                       ; 2 uses
  %10 = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %11 = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %12 = fsub <2 x float> %10, %11                 ; 3 uses
  %13 = extractelement <2 x float> %12, i64 0
  %i.as = extractelement <2 x float> %12, i64 1
  %i.at = select i1 %i.ar, float %13, float %i.as ; 8 uses
  %i.au = tail call noundef i64 @llvm.smax.i64(i64 %5, i64 %4)
  %i.av = tail call noundef i64 @llvm.smax.i64(i64 %i.au, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store <2 x float> %12, ptr %8, align 8
  %14 = sext i32 %2 to i64                        ; 3 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !193  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 3276
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !249 ; 2 uses
  %i.ay = fcmp olt float %16, %i.ax
  %i.az = select i1 %i.ay, float %16, float %i.ax ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ba = sitofp i64 %4 to float                  ; 3 uses
  %i.bb = uitofp nneg i64 %i.av to float
  %i.bc = fdiv float %i.ba, %i.bb
  %i.bd = fmul float %i.bc, %i.at                 ; 3 uses
  %i.be = fcmp olt float %i.bd, %i.az
  %i.bf = fcmp ogt float %i.bd, %i.at
  %i.bg = select i1 %i.bf, float %i.at, float %i.bd
  %i.bh = select i1 %i.be, float %i.az, float %i.bg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !233
  %i.bi = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2) #36 ; 0 uses
  %i.bj = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 262144) ; 0 uses
  %i.bk = sub nsw i64 %5, %4
  %i.bl = call noundef i64 @llvm.smax.i64(i64 %i.bk, i64 1) ; 2 uses
  %i.bm = load i64, ptr %3, align 8, !tbaa !248
  %i.bn = sitofp i64 %i.bm to float
  %i.bo = uitofp nneg i64 %i.bl to float          ; 3 uses
  %i.bp = fsub float %i.at, %i.bh                 ; 2 uses
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !233, !range !187, !noundef !188
  %i.br = trunc nuw i8 %i.bq to i1                ; 3 uses
  %i.bs = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bn, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bo, i64 1
  %i.bw = fdiv <2 x float> %i.bt, %i.bv           ; 3 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0 ; 4 uses
  %i.by = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.bz = fcmp ogt float %i.by, 1.000000e+00
  %i.ca = select i1 %i.bz, float 1.000000e+00, float %i.by
  %i.cb = fcmp olt <2 x float> %i.bw, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cc = extractelement <2 x i1> %i.cb, i64 1
  %i.cd = select i1 %i.cc, float 0.000000e+00, float %i.ca
  %i.ce = fmul float %i.bp, %i.cd
  %i.cf = fdiv float %i.ce, %i.at                 ; 4 uses
  %i.cg = extractelement <2 x i1> %i.cb, i64 0
  %i.ch = and i1 %i.z, %i.cg
  %or.cond5 = and i1 %i.ch, %i.br
  br i1 %or.cond5, label %bb.e, label %bb.r

bb.e:                                             ; preds = %.thread
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %14
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !193
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %14
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !193
  %i.cn = fsub float %i.cm, %i.cj
  %i.co = fdiv float %i.cn, %i.at                 ; 3 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  %i.cq = fcmp ogt float %i.co, 1.000000e+00
  %i.cr = select i1 %i.cq, float 1.000000e+00, float %i.co
  %i.cs = select i1 %i.cp, float 0.000000e+00, float %i.cr ; 4 uses
  %i.ct = fcmp olt float %i.cs, %i.cf
  %i.cu = fadd float %i.bx, %i.cf
  %i.cv = fcmp ogt float %i.cs, %i.cu
  %i.cw = zext i1 %i.cv to i32
  %i.cx = select i1 %i.ct, i32 -1, i32 %i.cw      ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !232, !range !187, !noundef !188
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 9594
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !616
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !617, !range !187, !noundef !188
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 253
  %i.df = load i8, ptr %i.de, align 1, !tbaa !218, !range !187, !noundef !188
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = trunc nsw i32 %i.cx to i16
  %spec.select = select i1 %i.dg, i16 0, i16 %i.dh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.di = phi i16 [ %spec.select, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 9594
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !616
  %i.dk = icmp eq i32 %i.cx, 0
  br i1 %i.dk, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 253
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !218, !range !187, !noundef !188
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = fsub float %i.cs, %i.cf
  %i.dp = fneg float %i.bx
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float 5.000000e-01, float %i.do)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %i.dr = phi float [ %i.dq, %bb.j ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 9596
  store float %i.dr, ptr %i.ds, align 4, !tbaa !618
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.dt = phi i16 [ %.pre, %._crit_edge ], [ %i.di, %bb.k ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 9594
  %i.dv = icmp eq i16 %i.dt, 0
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 9596
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !618
  %i.dy = fsub float %i.cs, %i.dx
  %i.dz = fneg float %i.bx
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float 5.000000e-01, float %i.dy)
  %i.eb = fsub float 1.000000e+00, %i.bx
  %i.ec = fdiv float %i.ea, %i.eb                 ; 3 uses
  %i.ed = fcmp olt float %i.ec, 0.000000e+00
  %i.ee = fcmp ogt float %i.ec, 1.000000e+00
  %i.ef = select i1 %i.ee, float 1.000000e+00, float %i.ec
  %i.eg = select i1 %i.ed, float 0.000000e+00, float %i.ef
  %i.eh = fmul float %i.eg, %i.bo
  %i.ei = fptosi float %i.eh to i64               ; 2 uses
  store i64 %i.ei, ptr %3, align 8, !tbaa !248
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ej = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 0, i32 noundef 1, i32 noundef 0) #36
  br i1 %i.ej, label %bb.o, label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.n
  %.pre139 = load i64, ptr %3, align 8, !tbaa !248
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ek = load i16, ptr %i.du, align 2, !tbaa !616 ; 2 uses
  %i.el = sext i16 %i.ek to i32
  %i.em = icmp eq i32 %i.cx, %i.el
  %.pre140 = load i64, ptr %3, align 8, !tbaa !248 ; 2 uses
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.en = icmp sgt i16 %i.ek, 0
  %i.eo = fneg float %i.ba
  %i.ep = select i1 %i.en, float %i.ba, float %i.eo
  %i.eq = fptosi float %i.ep to i64
  %i.er = add nsw i64 %.pre140, %i.eq             ; 2 uses
  %i.es = icmp slt i64 %i.er, 0
  %i.et = call i64 @llvm.smin.i64(i64 %i.er, i64 %i.bl)
  %i.eu = select i1 %i.es, i64 0, i64 %i.et       ; 2 uses
  store i64 %i.eu, ptr %3, align 8, !tbaa !248
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge138, %bb.o, %bb.p, %bb.m
  %i.ev = phi i64 [ %.pre139, %._crit_edge138 ], [ %.pre140, %bb.o ], [ %i.eu, %bb.p ], [ %i.ei, %bb.m ]
  %i.ew = sitofp i64 %i.ev to float
  %i.ex = fdiv float %i.ew, %i.bo                 ; 3 uses
  %i.ey = fcmp olt float %i.ex, 0.000000e+00
  %i.ez = fcmp ogt float %i.ex, 1.000000e+00
  %i.fa = select i1 %i.ez, float 1.000000e+00, float %i.ex
  %i.fb = select i1 %i.ey, float 0.000000e+00, float %i.fa
  %i.fc = fmul float %i.bp, %i.fb
  %i.fd = fdiv float %i.fc, %i.at
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %.0110 = phi float [ %i.fd, %bb.q ], [ %i.cf, %.thread ] ; 2 uses
  %i.fe = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 14, float noundef 1.000000e+00) #36
  %i.ff = load i8, ptr %i.b, align 1, !range !187
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = select i1 %i.fg, i32 16, i32 15
  %i.fi = select i1 %i.br, i32 17, i32 %i.fh
  %i.fj = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.fi, float noundef %.0111128) #36
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !205
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !250
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fl, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef %i.fe, float noundef %i.fn, i32 noundef %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.fo = load float, ptr %7, align 16, !tbaa !239 ; 3 uses
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fp = load float, ptr %i.ac, align 8, !tbaa !240
  %i.fq = fsub float %i.fp, %i.fo
  %i.fr = call noundef float @llvm.fmuladd.f32(float %i.fq, float %.0110, float %i.fo) ; 2 uses
  %i.fs = load float, ptr %i.ab, align 4, !tbaa !198
  %i.ft = fadd float %i.bh, %i.fr
  %i.fu = load float, ptr %i.ad, align 4, !tbaa !199
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fv = load float, ptr %i.ab, align 4, !tbaa !198 ; 2 uses
  %i.fw = load float, ptr %i.ad, align 4, !tbaa !199
  %i.fx = fsub float %i.fw, %i.fv
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fx, float %.0110, float %i.fv) ; 2 uses
  %i.fz = load float, ptr %i.ac, align 8, !tbaa !240
  %i.ga = fadd float %i.bh, %i.fy
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink137.a = phi float [ %i.fr, %bb.s ], [ %i.fo, %bb.t ]
  %.sink136.a = phi float [ %i.fs, %bb.s ], [ %i.fy, %bb.t ]
  %.sink135 = phi float [ %i.ft, %bb.s ], [ %i.fz, %bb.t ]
  %.sink = phi float [ %i.fu, %bb.s ], [ %i.ga, %bb.t ]
  store float %.sink137.a, ptr %9, align 4, !tbaa !193
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %.sink136.a, ptr %i.gb, align 4, !tbaa !193
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store float %.sink135, ptr %i.gc, align 4, !tbaa !193
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float %.sink, ptr %i.gd, align 4, !tbaa !193
  %i.ge = load ptr, ptr %i.fk, align 8, !tbaa !205
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 3272
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !619
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ge, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.gc, i32 noundef %i.fj, float noundef %i.gg, i32 noundef 0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %.thread129

.thread129:                                       ; preds = %bb.d, %bb.b, %bb.u, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.br, %bb.u ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 8 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3288 ; 3 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !251 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.k = fmul float %i.i, 2.000000e+00
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !193 ; 3 uses
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !193
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd <2 x float> %i.p, %i.n              ; 2 uses
  store <2 x float> %i.l, ptr %8, align 8, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store <2 x float> %i.q, ptr %i.r, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.s = fsub <2 x float> %i.q, %i.l
  store <2 x float> %i.s, ptr %7, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %7, float noundef -1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.t = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 0, ptr noundef null, i32 noundef 0) #36
  br i1 %i.t, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = load float, ptr %i.h, align 8, !tbaa !251
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !205
  %i.y = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 5, float noundef 1.000000e+00) #36
  %i.z = load float, ptr %i.h, align 8, !tbaa !251
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i32 noundef %i.y, float noundef 0.000000e+00, i32 noundef 0, float noundef %i.z) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !252
  %i.ac = fcmp ogt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.af = load <2 x float>, ptr %8, align 8, !tbaa !193
  %i.ag = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fadd <2 x float> %i.ah, %i.af
  store <2 x float> %i.ai, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.aj = load <2 x float>, ptr %i.r, align 8, !tbaa !193
  %i.ak = fsub <2 x float> %i.aj, %i.ah
  store <2 x float> %i.ak, ptr %10, align 8
  %i.al = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5) #36
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.al, float noundef 0.000000e+00, i32 noundef 0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.ao = load <2 x float>, ptr %8, align 8, !tbaa !193
  %i.ap = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  store <2 x float> %i.ar, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.as = load <2 x float>, ptr %i.r, align 8, !tbaa !193
  %i.at = fsub <2 x float> %i.as, %i.aq
  store <2 x float> %i.at, ptr %12, align 8
  %i.au = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6) #36
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.an, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.au) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui5ImageE12ImTextureRefRK6ImVec2S3_S3_(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.ImVec4, align 4             ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store <4 x float> splat (float 1.000000e+00), ptr %6, align 16, !tbaa !193
  call void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui5ImageE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.ImVec4, align 4             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !252
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3288
  %i.f = load float, ptr %i.e, align 8, !tbaa !251 ; 2 uses
  %i.g = fcmp ole float %i.f, 1.000000e+00
  %i.h = select i1 %i.g, float 1.000000e+00, float %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi float [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  tail call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 22, float noundef %i.i) #36
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(16) %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1) #36
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #36
  ret void
}

declare void @_ZN5ImGui12PushStyleVarEif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui11PopStyleVarEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13ImageButtonExEj12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_i(i32 noundef %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImRect, align 8            ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !186, !range !187, !noundef !188
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3212
  %i.k = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !193 ; 3 uses
  %i.n = load <2 x float>, ptr %3, align 4, !tbaa !193
end_hunk_0
begin_hunk_1_@_ZN5ImGui15SeparatorTextExEjPKcS1_f:bb.a
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
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float f0x3F7FFF58)
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sitofp i32 %i.ad to float               ; 2 uses
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef %i.ae) #36
  %i.af = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %0, ptr noundef null, i32 noundef 0) #36
  br i1 %i.af, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 3364
  %i.ah = load float, ptr %i.x, align 4, !tbaa !240 ; 4 uses
  %i.ai = load float, ptr %.sroa_idx67, align 4, !tbaa !198
  %i.aj = load float, ptr %.sroa_idx66, align 4, !tbaa !199
  %i.ak = fadd float %i.ai, %i.aj
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float 5.000000e-01, float f0x3F7FFF58)
  %i.am = fptosi float %i.al to i32
  %i.an = sitofp i32 %i.am to float               ; 6 uses
  %i.ao = fsub float %i.ah, %i.h
  %i.ap = fneg float %.sroa.0.0.copyload
  %i.aq = call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.ao) ; 2 uses
  %i.ar = fcmp ole float %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, float 0.000000e+00, float %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.at = fadd float %.sroa.0.0.copyload, %i.h
  %i.au = fsub float %i.as, %i.m
  %i.av = fsub float %i.au, %3
  %i.aw = load float, ptr %i.ag, align 4, !tbaa !629
  %i.ax = fmul float %i.aw, %i.av                 ; 2 uses
  %i.ay = fcmp ole float %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, float 0.000000e+00, float %i.ax
  %i.ba = fadd float %i.at, %i.az                 ; 3 uses
  %i.bb = fadd float %i.i, %i.ae
  store float %i.ba, ptr %7, align 4, !tbaa !197
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !200
  %i.bd = fadd float %i.m, %i.ba                  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store float %i.bd, ptr %i.be, align 8, !tbaa !630
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 27, float noundef 1.000000e+00) #36 ; 3 uses
  %i.bg = fcmp ogt float %i.m, 0.000000e+00
  br i1 %i.bg, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 3228
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !290 ; 2 uses
  %i.bj = fsub float %i.ba, %i.bi                 ; 2 uses
  %i.bk = fadd float %3, %i.bd
  %i.bl = fadd float %i.bi, %i.bk                 ; 2 uses
  %i.bm = fcmp ogt float %i.bj, %i.h
  %i.bn = fcmp ogt float %i.l, 0.000000e+00       ; 2 uses
  %or.cond = and i1 %i.bn, %i.bm
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 %i.f, ptr %8, align 4, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.an, ptr %i.bq, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store float %i.bj, ptr %9, align 4, !tbaa !197
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.an, ptr %i.br, align 4, !tbaa !200
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bp, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %i.bf, float noundef %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bs = fcmp ogt float %i.ah, %i.bl
  %or.cond3 = and i1 %i.bn, %i.bs
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store float %i.bl, ptr %10, align 4, !tbaa !197
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.an, ptr %i.bv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store float %i.ah, ptr %11, align 4, !tbaa !197
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.an, ptr %i.bw, align 4, !tbaa !200
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, i32 noundef %i.bf, float noundef %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !194, !range !187, !noundef !188
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.14, ptr noundef null) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.cc = load float, ptr %i.x, align 4, !tbaa !240 ; 2 uses
  %i.cd = load float, ptr %.sroa_idx66, align 4, !tbaa !199
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 3232
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !301
  %i.cg = fadd float %i.cd, %i.cf
  store float %i.cc, ptr %12, align 4, !tbaa !197
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %i.cg, ptr %i.ch, align 4, !tbaa !200
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef %i.cc, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !194, !range !187, !noundef !188
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.14) #36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cl = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i32 %i.f, ptr %13, align 4, !tbaa !197
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 4
  store float %i.an, ptr %i.co, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  store float %i.ah, ptr %14, align 4, !tbaa !197
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 4
  store float %i.an, ptr %i.cp, align 4, !tbaa !200
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.cn, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.bf, float noundef %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
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
  %i.h = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) #36
  tail call void @_ZN5ImGui15SeparatorTextExEjPKcS1_f(i32 noundef 0, ptr noundef %0, ptr noundef %i.h, float noundef 0.000000e+00)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16SplitterBehaviorERK6ImRectj9ImGuiAxisPfS4_ffffj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %10 = alloca %struct.ImRect, align 16           ; 7 uses
  %11 = alloca %struct.ImRect, align 16           ; 13 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 2 uses
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2) #36
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  %i.g = icmp eq i32 %2, 1                        ; 4 uses
  %.sroa.059.0 = select i1 %i.g, float 0.000000e+00, float %7
  %.sroa.661.0 = select i1 %i.g, float %7, float 0.000000e+00
  %i.h = load <4 x float>, ptr %10, align 16, !tbaa !193 ; 2 uses
  %i.i = insertelement <4 x float> poison, float %.sroa.059.0, i64 0
  %i.j = insertelement <4 x float> %i.i, float %.sroa.661.0, i64 1
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.l = fsub <4 x float> %i.h, %i.k
  %i.m = fadd <4 x float> %i.h, %i.k
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.n, ptr %10, align 16, !tbaa !193
  %i.o = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 6144) ; 0 uses
  %i.p = load i8, ptr %i.a, align 1, !tbaa !233, !range !187, !noundef !188
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.q, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 7712 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !273
  %i.t = or i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !273
  %i.u = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.critedge, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.w = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.critedge, label %.thread64

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 5280
  %i.z = load i32, ptr %i.y, align 8, !tbaa !631
  %i.aa = icmp eq i32 %i.z, %1
  br i1 %i.aa, label %bb.e, label %.thread64

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 5288
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !214
  %i.ad = fcmp ult float %i.ac, %8
  br i1 %i.ad, label %.thread64, label %bb.f

.thread64:                                        ; preds = %bb.e, %bb.d, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = select i1 %i.g, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.ae) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  br label %bb.h

.critedge:                                        ; preds = %bb.c, %.thread
  %i.af = select i1 %i.g, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.af) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 5320
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !193
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !tbaa !193
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = load <2 x float>, ptr %10, align 16, !tbaa !193
  %i.am = fsub <2 x float> %i.ak, %i.al
  store <2 x float> %i.am, ptr %12, align 8
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !193  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %i.an = load float, ptr %3, align 4, !tbaa !193 ; 2 uses
  %i.ao = fsub float %i.an, %5                    ; 2 uses
  %i.ap = fcmp ole float %i.ao, 0.000000e+00
  %i.aq = load float, ptr %4, align 4, !tbaa !193
  %i.ar = fsub float %i.aq, %6                    ; 2 uses
  %i.as = fcmp ole float %i.ar, 0.000000e+00
  %i.at = select i1 %i.as, float 0.000000e+00, float %i.ar ; 2 uses
  %.neg = fneg float %i.ao
  %i.au = select i1 %i.ap, float -0.000000e+00, float %.neg ; 2 uses
  %i.av = fcmp olt float %15, %i.au
  %.0 = select i1 %i.av, float %i.au, float %15   ; 2 uses
  %i.aw = fcmp ogt float %.0, %i.at
  %.1 = select i1 %i.aw, float %i.at, float %.0   ; 5 uses
  %i.ax = fcmp une float %.1, 0.000000e+00
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ay = fadd float %i.an, %.1                   ; 2 uses
  %i.az = fcmp oge float %i.ay, %5
  %i.ba = select i1 %i.az, float %i.ay, float %5
  store float %i.ba, ptr %3, align 4, !tbaa !193
  %i.bb = load float, ptr %4, align 4, !tbaa !193
  %i.bc = fsub float %i.bb, %.1                   ; 2 uses
  %i.bd = fcmp oge float %i.bc, %6
  %i.be = select i1 %i.bd, float %i.bc, float %6
  store float %i.be, ptr %4, align 4, !tbaa !193
  %i.bf = icmp eq i32 %2, 0
  %i.bg = insertelement <2 x i1> poison, i1 %i.bf, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1, i64 0
  %i.bj = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.1, i64 1
  %i.bk = select <2 x i1> %i.bh, <2 x float> %i.bi, <2 x float> %i.bj
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = load <4 x float>, ptr %11, align 16, !tbaa !193
  %i.bn = fadd <4 x float> %i.bl, %i.bm
  store <4 x float> %i.bn, ptr %11, align 16, !tbaa !193
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %1) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread64, %.critedge, %bb.g
  %i.bo = phi i1 [ false, %.thread64 ], [ true, %.critedge ], [ true, %bb.g ], [ false, %bb.f ] ; 3 uses
  %.not = icmp ult i32 %9, 16777216
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !205
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.br, i32 noundef %9, float noundef 0.000000e+00, i32 noundef 0) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not65 = xor i1 %i.q, true
  %brmerge = or i1 %i.bo, %.not65
  %.mux = select i1 %i.bo, i32 29, i32 27
  br i1 %brmerge, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 5288
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !214
  %i.bu = fcmp oge float %i.bt, %8
  %i.bv = select i1 %i.bu, i32 28, i32 27
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bw = phi i32 [ %.mux, %bb.j ], [ %i.bv, %bb.k ]
  %i.bx = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bw, float noundef 1.000000e+00) #36
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !205
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.ca, i32 noundef %i.bx, float noundef 0.000000e+00, i32 noundef 0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.050 = phi i1 [ %i.bo, %bb.l ], [ false, %bb.a ]
  ret i1 %.050
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemif(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #10 {
bb.a:
  switch i32 %1, label %_ZL7ImQsortPvmmPFiPKvS1_E.exit [
    i32 1, label %bb.b
    i32 0, label %.loopexit77
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !303 ; 2 uses
  %i.c = fcmp ult float %i.b, 0.000000e+00
  br i1 %i.c, label %.loopexit77, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fsub float %i.b, %2                      ; 2 uses
  %i.e = fcmp oge float %i.d, 1.000000e+00
  %i.f = select i1 %i.e, float %i.d, float 1.000000e+00
  store float %i.f, ptr %i.a, align 4, !tbaa !303
  br label %.loopexit77

_ZL7ImQsortPvmmPFiPKvS1_E.exit:                   ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 12, ptr noundef nonnull @_ZL23ShrinkWidthItemComparerPKvS0_) #36
  %i.h = fcmp ogt float %2, 0.000000e+00
  %i.i = icmp sgt i32 %1, 1
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.preheader78.lr.ph, label %.thread

.preheader78.lr.ph:                               ; preds = %_ZL7ImQsortPvmmPFiPKvS1_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = zext nneg i32 %1 to i64
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.lr.ph, %._crit_edge
  %.086 = phi float [ %2, %.preheader78.lr.ph ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.06485 = phi i32 [ 1, %.preheader78.lr.ph ], [ %.16580, %._crit_edge ]
  %i.m = load float, ptr %i.k, align 4, !tbaa !303 ; 3 uses
  %i.n = sext i32 %.06485 to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader78, %bb.e
  %indvars.iv = phi i64 [ %i.n, %.preheader78 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !303 ; 3 uses
  %i.r = fcmp ugt float %i.m, %i.q
  br i1 %i.r, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.s = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.s, label %bb.d, label %.critedge73.loopexit, !llvm.loop !632

.critedge:                                        ; preds = %bb.d
  %i.t = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.u = fcmp ult float %i.q, 0.000000e+00
  br i1 %i.u, label %.critedge73, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.v = fsub float %i.m, %i.q
  br label %bb.g

.critedge73.loopexit:                             ; preds = %bb.e
  %i.w = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge73

.critedge73:                                      ; preds = %.critedge73.loopexit, %.critedge
  %.16581 = phi i32 [ %i.t, %.critedge ], [ %i.w, %.critedge73.loopexit ]
  %i.x = fadd float %i.m, -1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %.critedge73, %bb.f
  %.16580 = phi i32 [ %i.t, %bb.f ], [ %.16581, %.critedge73 ] ; 6 uses
  %i.y = phi float [ %i.v, %bb.f ], [ %i.x, %.critedge73 ] ; 3 uses
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = sitofp i32 %.16580 to float             ; 2 uses
  %i.ab = fdiv float %.086, %i.aa                 ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.y
  %i.ad = select i1 %i.ac, float %i.ab, float %i.y ; 6 uses
  %i.ae = icmp sgt i32 %.16580, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.16580 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.af = icmp ult i32 %.16580, 4
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv102 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next103.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !303
  %i.aj = fsub float %i.ai, %i.ad
  store float %i.aj, ptr %i.ah, align 4, !tbaa !303
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv102
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !303
  %i.an = fsub float %i.am, %i.ad
  store float %i.an, ptr %i.al, align 4, !tbaa !303
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv102
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !303
  %i.ar = fsub float %i.aq, %i.ad
  store float %i.ar, ptr %i.ap, align 4, !tbaa !303
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv102
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !303
  %i.av = fsub float %i.au, %i.ad
  store float %i.av, ptr %i.at, align 4, !tbaa !303
  %indvars.iv.next103.3 = add nuw nsw i64 %indvars.iv102, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !633

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
end_hunk_1
