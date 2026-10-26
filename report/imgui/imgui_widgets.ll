Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !247  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load <2 x float>, ptr %i.k, align 8, !tbaa !190 ; 2 uses
  %i.n = load <2 x float>, ptr %i.l, align 8, !tbaa !190
  %i.o = fadd <2 x float> %i.m, %i.n
  store <2 x float> %i.m, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %i.o, ptr %i.p, align 8
  %i.q = sext i32 %3 to i64                       ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !190 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.q
  %i.u = load float, ptr %i.t, align 4, !tbaa !190
  %i.v = fcmp oeq float %i.s, %i.u
  br i1 %i.v, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !190 ; 2 uses
  %i.y = fcmp ule float %i.x, %i.s
  %i.z = fsub float %i.x, %2
  %i.aa = fcmp ugt float %i.z, %i.s
  %or.cond = or i1 %i.y, %i.aa
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.s, ptr %i.w, align 4, !tbaa !190
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.q
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !190 ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !190
  %i.af = fcmp oeq float %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.q ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !190 ; 2 uses
  %i.aj = fcmp uge float %i.ai, %i.ac
  %i.ak = fadd float %2, %i.ai
  %i.al = fcmp ult float %i.ak, %i.ac
  %or.cond33 = or i1 %i.aj, %i.al
  br i1 %or.cond33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.ac, ptr %i.ah, align 4, !tbaa !190
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
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 13 uses
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %.str.4..str.5.i = select i1 %i.e, ptr @.str.4, ptr @.str.5
  %i.f = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.d, ptr noundef nonnull %.str.4..str.5.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load <2 x float>, ptr %i.g, align 8, !tbaa !190 ; 4 uses
  %i.j = load <2 x float>, ptr %i.h, align 8, !tbaa !190
  %i.k = fadd <2 x float> %i.i, %i.j              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.l, align 8, !tbaa !190
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 556
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !190
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 564
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.n = xor i32 %0, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !190 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.s = load float, ptr %i.r, align 4, !tbaa !244
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 5.000000e-01, float 5.000000e-01)
  %i.u = fptosi float %i.t to i32
  %i.v = sitofp i32 %i.u to float                 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !245  ; 2 uses
  %i.y = and i32 %i.x, 1024
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3296
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !246
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
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !248
  %i.bd = call noundef i32 @_ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.be = sext i32 %0 to i64                      ; 5 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !190
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !190
  %i.bj = fsub float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.be
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !190
  %i.bq = call float @llvm.fmuladd.f32(float %i.bp, float 2.000000e+00, float %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.be ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !190
  %i.bu = fptosi float %i.bt to i64
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !249
  %i.bv = fptosi float %i.bj to i64
  %i.bw = fptosi float %i.bq to i64
  %i.bx = call noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.f, i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bv, i64 noundef %i.bw, i32 noundef %i.bd) ; 0 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !249
  %i.bz = sitofp i64 %i.by to float
  store float %i.bz, ptr %i.bs, align 4, !tbaa !190
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
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !183, !range !184, !noundef !185
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !190
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !190
  %i.l = fsub <2 x float> %i.j, %i.k              ; 3 uses
  %i.m = fcmp ole <2 x float> %i.l, zeroinitializer
  %i.n = bitcast <2 x i1> %i.m to i2
  %.not = icmp eq i2 %i.n, 0
  br i1 %.not, label %bb.c, label %.thread133

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3348
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !631 ; 2 uses
  %i.ac = fcmp olt float %i.p, %i.q
  %i.ad = select i1 %i.ac, float %i.p, float %i.q
  %i.ae = fmul float %i.ad, 5.000000e-01          ; 2 uses
  %i.af = fcmp olt float %i.ab, %i.ae
  %i.ag = select i1 %i.af, float %i.ab, float %i.ae
  %i.ah = fptosi float %i.ag to i32
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = load <4 x float>, ptr %9, align 16, !tbaa !190 ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fadd <4 x float> %i.aj, %i.al           ; 3 uses
  %i.an = fsub <4 x float> %i.aj, %i.al           ; 3 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ao, ptr %9, align 16, !tbaa !190
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
  %i.ba = sext i32 %2 to i64                      ; 3 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ba
  %14 = load float, ptr %13, align 4, !tbaa !190  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 3352
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !250 ; 2 uses
  %i.bd = fcmp olt float %14, %i.bc
  %i.be = select i1 %i.bd, float %14, float %i.bc ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.bf = sitofp i64 %4 to float                  ; 3 uses
  %i.bg = uitofp nneg i64 %i.az to float
  %i.bh = fdiv float %i.bf, %i.bg
  %i.bi = fmul float %i.bh, %i.aw                 ; 3 uses
  %i.bj = fcmp olt float %i.bi, %i.be
  %i.bk = fcmp ogt float %i.bi, %i.aw
  %i.bl = select i1 %i.bk, float %i.aw, float %i.bi
  %i.bm = select i1 %i.bj, float %i.be, float %i.bl
  %i.bn = fptosi float %i.bm to i32
  %i.bo = sitofp i32 %i.bn to float               ; 4 uses
  %i.bp = fdiv float %i.bo, %i.aw                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 3240
  %i.br = load float, ptr %i.bq, align 8, !tbaa !248 ; 2 uses
  %i.bs = xor i32 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !210 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bx = load <2 x float>, ptr %i.bv, align 8, !tbaa !190 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bw, align 8, !tbaa !190
  %i.bz = fadd <2 x float> %i.bx, %i.by
  store <2 x float> %i.bx, ptr %7, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %i.bz, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !247 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load <2 x float>, ptr %i.cd, align 8, !tbaa !190 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.ce, align 8, !tbaa !190
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  store <2 x float> %i.cf, ptr %8, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store <2 x float> %i.ch, ptr %i.ci, align 8
  %i.cj = sext i32 %i.bs to i64                   ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !190 ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.cj
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !190
  %i.co = fcmp oeq float %i.cl, %i.cn
  br i1 %i.co, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.cj ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !190 ; 2 uses
  %i.cr = fcmp ule float %i.cq, %i.cl
  %i.cs = fsub float %i.cq, %i.br
  %i.ct = fcmp ugt float %i.cs, %i.cl
  %or.cond.i = or i1 %i.cr, %i.ct
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.cl, ptr %i.cp, align 4, !tbaa !190
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cj
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !190 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !190
  %i.cy = fcmp oeq float %i.cv, %i.cx
  br i1 %i.cy, label %bb.i, label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cj ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !190 ; 2 uses
  %i.dc = fcmp uge float %i.db, %i.cv
  %i.dd = fadd float %i.br, %i.db
  %i.de = fcmp ult float %i.dd, %i.cv
  %or.cond33.i = or i1 %i.dc, %i.de
  br i1 %or.cond33.i, label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.cv, ptr %i.da, align 4, !tbaa !190
  br label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit

_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i8 0, ptr %i.a, align 1, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i8 0, ptr %i.b, align 1, !tbaa !231
  %i.df = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2) ; 0 uses
  %i.dg = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 262144) ; 0 uses
  %i.dh = sub nsw i64 %5, %4
  %i.di = call noundef i64 @llvm.smax.i64(i64 %i.dh, i64 1) ; 2 uses
  %i.dj = load i64, ptr %3, align 8, !tbaa !249
  %i.dk = sitofp i64 %i.dj to float
  %i.dl = uitofp nneg i64 %i.di to float          ; 3 uses
  %i.dm = fdiv float %i.dk, %i.dl                 ; 3 uses
  %i.dn = fcmp olt float %i.dm, 0.000000e+00
  %i.do = fcmp ogt float %i.dm, 1.000000e+00
  %i.dp = select i1 %i.do, float 1.000000e+00, float %i.dm
  %i.dq = select i1 %i.dn, float 0.000000e+00, float %i.dp
  %i.dr = fsub float %i.aw, %i.bo                 ; 2 uses
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = fdiv float %i.ds, %i.aw                 ; 4 uses
  %i.du = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.dv = trunc nuw i8 %i.du to i1                ; 3 uses
  %or.cond3 = and i1 %i.z, %i.dv
  %i.dw = fcmp olt float %i.bp, 1.000000e+00
  %or.cond5 = select i1 %or.cond3, i1 %i.dw, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.x

bb.k:                                             ; preds = %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ba
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !190
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ba
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !190
  %i.ec = fsub float %i.eb, %i.dy
  %i.ed = fdiv float %i.ec, %i.aw                 ; 3 uses
  %i.ee = fcmp olt float %i.ed, 0.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %i.eg = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eh = select i1 %i.ee, float 0.000000e+00, float %i.eg ; 4 uses
  %i.ei = fcmp olt float %i.eh, %i.dt
  %i.ej = fadd float %i.bp, %i.dt
  %i.ek = fcmp ogt float %i.eh, %i.ej
  %i.el = zext i1 %i.ek to i32
  %i.em = select i1 %i.ei, i32 -1, i32 %i.el      ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 5440
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !230, !range !184, !noundef !185
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !632
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !633, !range !184, !noundef !185
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 301
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !216, !range !184, !noundef !185
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = trunc nsw i32 %i.em to i16
  %spec.select = select i1 %i.ev, i16 0, i16 %i.ew
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ex = phi i16 [ %spec.select, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !632
  %i.ez = icmp eq i32 %i.em, 0
  br i1 %i.ez, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 301
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !216, !range !184, !noundef !185
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = fsub float %i.eh, %i.dt
  %i.fe = fneg float %i.bp
  %i.ff = call float @llvm.fmuladd.f32(float %i.fe, float 5.000000e-01, float %i.fd)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.fg = phi float [ %i.ff, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 9828
  store float %i.fg, ptr %i.fh, align 4, !tbaa !634
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.fi = phi i16 [ %.pre, %._crit_edge ], [ %i.ex, %bb.q ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  %i.fk = icmp eq i16 %i.fi, 0
  br i1 %i.fk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 9828
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !634
  %i.fn = fsub float %i.eh, %i.fm
  %i.fo = fneg float %i.bp
  %i.fp = call float @llvm.fmuladd.f32(float %i.fo, float 5.000000e-01, float %i.fn)
  %i.fq = fsub float 1.000000e+00, %i.bp
  %i.fr = fdiv float %i.fp, %i.fq                 ; 3 uses
  %i.fs = fcmp olt float %i.fr, 0.000000e+00
  %i.ft = fcmp ogt float %i.fr, 1.000000e+00
  %i.fu = select i1 %i.ft, float 1.000000e+00, float %i.fr
  %i.fv = select i1 %i.fs, float 0.000000e+00, float %i.fu
  %i.fw = fmul float %i.fv, %i.dl
  %i.fx = fptosi float %i.fw to i64               ; 2 uses
  store i64 %i.fx, ptr %3, align 8, !tbaa !249
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.fy = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br i1 %i.fy, label %bb.u, label %._crit_edge139

._crit_edge139:                                   ; preds = %bb.t
  %.pre140 = load i64, ptr %3, align 8, !tbaa !249
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !632 ; 2 uses
  %i.ga = sext i16 %i.fz to i32
  %i.gb = icmp eq i32 %i.em, %i.ga
  %.pre141 = load i64, ptr %3, align 8, !tbaa !249 ; 2 uses
  br i1 %i.gb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gc = icmp sgt i16 %i.fz, 0
  %i.gd = fneg float %i.bf
  %i.ge = select i1 %i.gc, float %i.bf, float %i.gd
  %i.gf = fptosi float %i.ge to i64
  %i.gg = add nsw i64 %.pre141, %i.gf             ; 2 uses
  %i.gh = icmp slt i64 %i.gg, 0
  %i.gi = call i64 @llvm.smin.i64(i64 %i.gg, i64 %i.di)
  %i.gj = select i1 %i.gh, i64 0, i64 %i.gi       ; 2 uses
  store i64 %i.gj, ptr %3, align 8, !tbaa !249
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
  %.0117 = phi float [ %i.gs, %bb.w ], [ %i.dt, %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit ] ; 2 uses
  %i.gt = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 14, float noundef 1.000000e+00)
  %i.gu = load i8, ptr %i.b, align 1, !range !184
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = select i1 %i.gv, i32 16, i32 15
  %i.gx = select i1 %i.dv, i32 17, i32 %i.gw
  %i.gy = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.gx, float noundef %.0118132)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !202
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !251
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ha, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef %i.gt, float noundef %i.hc, i32 noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  br i1 %i.ap, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hd = call noundef float @llvm.fmuladd.f32(float %i.as, float %.0117, float %i.aq) ; 2 uses
  %i.he = fadd float %i.hd, %i.bo
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.hf = call noundef float @llvm.fmuladd.f32(float %i.av, float %.0117, float %i.at) ; 2 uses
  %i.hg = fadd float %i.hf, %i.bo
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink138.a = phi float [ %i.hd, %bb.y ], [ %i.aq, %bb.z ]
  %.sink137.a = phi float [ %i.at, %bb.y ], [ %i.hf, %bb.z ]
  %.sink136 = phi float [ %i.he, %bb.y ], [ %i.ar, %bb.z ]
  %.sink = phi float [ %i.au, %bb.y ], [ %i.hg, %bb.z ]
  store float %.sink138.a, ptr %12, align 4, !tbaa !190
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %.sink137.a, ptr %i.hh, align 4, !tbaa !190
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store float %.sink136, ptr %i.hi, align 4, !tbaa !190
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 12
  store float %.sink, ptr %i.hj, align 4, !tbaa !190
  %i.hk = load ptr, ptr %i.gz, align 8, !tbaa !202
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 3344
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !635
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.hk, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %i.hi, i32 noundef %i.gy, float noundef %i.hm, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.aa
  %.0 = phi i1 [ %i.dv, %bb.aa ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %.thread133

.thread133:                                       ; preds = %bb.d, %bb.b, %bb.ab, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.0, %bb.ab ], [ false, %bb.d ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 9 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3368 ; 3 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !252 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.k = fmul float %i.i, 2.000000e+00
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !190 ; 3 uses
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !190
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd <2 x float> %i.p, %i.n              ; 2 uses
  store <2 x float> %i.l, ptr %8, align 8, !tbaa !190
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store <2 x float> %i.q, ptr %i.r, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.s = fsub <2 x float> %i.q, %i.l
  store <2 x float> %i.s, ptr %7, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %7, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.t = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.t, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3364
  %i.v = load float, ptr %i.u, align 4, !tbaa !253 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !254
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ab = load <2 x float>, ptr %8, align 8, !tbaa !190
  %i.ac = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = fadd <2 x float> %i.ad, %i.ab
  store <2 x float> %i.ae, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.af = load <2 x float>, ptr %i.r, align 8, !tbaa !190
  %i.ag = fsub <2 x float> %i.af, %i.ad
  store <2 x float> %i.ag, ptr %10, align 8
  %i.ah = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.aa, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.ah, float noundef %i.v, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = fcmp ogt float %i.v, 0.000000e+00
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !202 ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.al = load <2 x float>, ptr %8, align 8, !tbaa !190
  %i.am = insertelement <2 x float> poison, float %i.i, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = fadd <2 x float> %i.an, %i.al
  store <2 x float> %i.ao, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ap = load <2 x float>, ptr %i.r, align 8, !tbaa !190
  %i.aq = fsub <2 x float> %i.ap, %i.an
  store <2 x float> %i.aq, ptr %12, align 8
  %i.ar = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList15AddImageRoundedE12ImTextureRefRK6ImVec2S3_S3_S3_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ar, float noundef %i.v, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.as = load <2 x float>, ptr %8, align 8, !tbaa !190
  %i.at = insertelement <2 x float> poison, float %i.i, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = fadd <2 x float> %i.au, %i.as
  store <2 x float> %i.av, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.aw = load <2 x float>, ptr %i.r, align 8, !tbaa !190
  %i.ax = fsub <2 x float> %i.aw, %i.au
  store <2 x float> %i.ax, ptr %14, align 8
  %i.ay = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = load float, ptr %i.h, align 8, !tbaa !252
  %i.ba = fcmp ogt float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !202
  %i.bd = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 5, float noundef 1.000000e+00)
  %i.be = load float, ptr %i.h, align 8, !tbaa !252
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.bc, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i32 noundef %i.bd, float noundef %i.v, float noundef %i.be, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

declare noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN10ImDrawList15AddImageRoundedE12ImTextureRefRK6ImVec2S3_S3_S3_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5ImageE12ImTextureRefRK6ImVec2S3_S3_(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.ImVec4, align 4             ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store <4 x float> splat (float 1.000000e+00), ptr %6, align 16, !tbaa !190
  call void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui5ImageE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.ImVec4, align 4             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !254
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3368
  %i.f = load float, ptr %i.e, align 8, !tbaa !252 ; 2 uses
  %i.g = fcmp ole float %i.f, 1.000000e+00
  %i.h = select i1 %i.g, float 1.000000e+00, float %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi float [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ]
  tail call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 24, float noundef %i.i)
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui11ImageWithBgE12ImTextureRefRK6ImVec2S3_S3_RK6ImVec4S6_(ptr %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  ret void
}

declare void @_ZN5ImGui12PushStyleVarEif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui11PopStyleVarEi(i32 noundef) local_unnamed_addr #3
end_hunk_0
begin_hunk_1_@_ZN5ImGui15SeparatorTextExEjPKcS1_f:bb.a
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
  %i.af = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %0, ptr noundef null, i32 noundef 0)
  br i1 %i.af, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 3484
  %i.ah = load float, ptr %i.x, align 4, !tbaa !238 ; 4 uses
  %i.ai = load float, ptr %.sroa_idx64, align 4, !tbaa !195
  %i.aj = load float, ptr %.sroa_idx63, align 4, !tbaa !196
  %i.ak = fadd float %i.ai, %i.aj
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float 5.000000e-01, float 9.990000e-01)
  %i.am = fptosi float %i.al to i32
  %i.an = sitofp i32 %i.am to float               ; 3 uses
  %i.ao = fsub float %i.ah, %i.h
  %i.ap = fneg float %.sroa.0.0.copyload
  %i.aq = call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.ao) ; 2 uses
  %i.ar = fcmp ole float %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, float 0.000000e+00, float %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.at = fadd float %.sroa.0.0.copyload, %i.h
  %i.au = fsub float %i.as, %i.m
  %i.av = fsub float %i.au, %3
  %i.aw = load float, ptr %i.ag, align 4, !tbaa !650
  %i.ax = fmul float %i.aw, %i.av                 ; 2 uses
  %i.ay = fcmp ole float %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, float 0.000000e+00, float %i.ax
  %i.ba = fadd float %i.at, %i.az                 ; 3 uses
  %i.bb = fadd float %i.i, %i.ae
  store float %i.ba, ptr %7, align 4, !tbaa !194
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bb, ptr %i.bc, align 4, !tbaa !197
  %i.bd = fadd float %i.m, %i.ba                  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store float %i.bd, ptr %i.be, align 8, !tbaa !651
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 28, float noundef 1.000000e+00) ; 3 uses
  %i.bg = fcmp ogt float %i.m, 0.000000e+00
  br i1 %i.bg, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 3300
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !308 ; 2 uses
  %i.bj = fsub float %i.ba, %i.bi                 ; 2 uses
  %i.bk = fadd float %3, %i.bd
  %i.bl = fadd float %i.bi, %i.bk                 ; 2 uses
  %i.bm = fcmp ogt float %i.bj, %i.h
  %i.bn = fcmp ogt float %i.l, 0.000000e+00       ; 2 uses
  %or.cond = and i1 %i.bn, %i.bm
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !202
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bp, float noundef %i.h, float noundef %i.bj, float noundef %i.an, i32 noundef %i.bf, float noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bq = fcmp ogt float %i.ah, %i.bl
  %or.cond3 = and i1 %i.bn, %i.bq
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !202
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bs, float noundef %i.bl, float noundef %i.ah, float noundef %i.an, i32 noundef %i.bf, float noundef %i.l)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !191, !range !184, !noundef !185
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.14, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.by = load float, ptr %i.x, align 4, !tbaa !238 ; 2 uses
  %i.bz = load float, ptr %.sroa_idx63, align 4, !tbaa !196
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 3304
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !320
  %i.cc = fadd float %i.bz, %i.cb
  store float %i.by, ptr %8, align 4, !tbaa !194
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !197
  call void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.by, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !191, !range !184, !noundef !185
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.14)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ch = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !202
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.cj, float noundef %i.h, float noundef %i.ah, float noundef %i.an, i32 noundef %i.bf, float noundef %i.l)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
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
  %i.h = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null)
  tail call void @_ZN5ImGui15SeparatorTextExEjPKcS1_f(i32 noundef 0, ptr noundef %0, ptr noundef %i.h, float noundef 0.000000e+00)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui16SplitterBehaviorERK6ImRectj9ImGuiAxisPfS4_ffffj(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %10 = alloca %struct.ImRect, align 16           ; 7 uses
  %11 = alloca %struct.ImRect, align 16           ; 13 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2)
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  %i.g = icmp eq i32 %2, 1                        ; 4 uses
  %.sroa.059.0 = select i1 %i.g, float 0.000000e+00, float %7
  %.sroa.661.0 = select i1 %i.g, float %7, float 0.000000e+00
  %i.h = load <4 x float>, ptr %10, align 16, !tbaa !190 ; 2 uses
  %i.i = insertelement <4 x float> poison, float %.sroa.059.0, i64 0
  %i.j = insertelement <4 x float> %i.i, float %.sroa.661.0, i64 1
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.l = fsub <4 x float> %i.h, %i.k
  %i.m = fadd <4 x float> %i.h, %i.k
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.n, ptr %10, align 16, !tbaa !190
  %i.o = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 6144) ; 0 uses
  %i.p = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.q, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 7856 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !275
  %i.t = or i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !275
  %i.u = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.critedge, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.w = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.critedge, label %.thread64

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 5408
  %i.z = load i32, ptr %i.y, align 8, !tbaa !652
  %i.aa = icmp eq i32 %i.z, %1
  br i1 %i.aa, label %bb.e, label %.thread64

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 5416
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !212
  %i.ad = fcmp ult float %i.ac, %8
  br i1 %i.ad, label %.thread64, label %bb.f

.thread64:                                        ; preds = %bb.e, %bb.d, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = select i1 %i.g, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  br label %bb.h

.critedge:                                        ; preds = %bb.c, %.thread
  %i.af = select i1 %i.g, i32 3, i32 4
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 5456
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !190
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !tbaa !190
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = load <2 x float>, ptr %10, align 16, !tbaa !190
  %i.am = fsub <2 x float> %i.ak, %i.al
  store <2 x float> %i.am, ptr %12, align 8
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !190  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.an = load float, ptr %3, align 4, !tbaa !190 ; 2 uses
  %i.ao = fsub float %i.an, %5                    ; 2 uses
  %i.ap = fcmp ole float %i.ao, 0.000000e+00
  %i.aq = load float, ptr %4, align 4, !tbaa !190
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
  store float %i.ba, ptr %3, align 4, !tbaa !190
  %i.bb = load float, ptr %4, align 4, !tbaa !190
  %i.bc = fsub float %i.bb, %.1                   ; 2 uses
  %i.bd = fcmp oge float %i.bc, %6
  %i.be = select i1 %i.bd, float %i.bc, float %6
  store float %i.be, ptr %4, align 4, !tbaa !190
  %i.bf = icmp eq i32 %2, 0
  %i.bg = insertelement <2 x i1> poison, i1 %i.bf, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1, i64 0
  %i.bj = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.1, i64 1
  %i.bk = select <2 x i1> %i.bh, <2 x float> %i.bi, <2 x float> %i.bj
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = load <4 x float>, ptr %11, align 16, !tbaa !190
  %i.bn = fadd <4 x float> %i.bl, %i.bm
  store <4 x float> %i.bn, ptr %11, align 16, !tbaa !190
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread64, %.critedge, %bb.g
  %i.bo = phi i1 [ false, %.thread64 ], [ true, %.critedge ], [ true, %bb.g ], [ false, %bb.f ] ; 3 uses
  %.not = icmp ult i32 %9, 16777216
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !202
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.br, i32 noundef %9, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not65 = xor i1 %i.q, true
  %brmerge = or i1 %i.bo, %.not65
  %.mux = select i1 %i.bo, i32 30, i32 28
  br i1 %brmerge, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 5416
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !212
  %i.bu = fcmp oge float %i.bt, %8
  %i.bv = select i1 %i.bu, i32 29, i32 28
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bw = phi i32 [ %.mux, %bb.j ], [ %i.bv, %bb.k ]
  %i.bx = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bw, float noundef 1.000000e+00)
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !202
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.ca, i32 noundef %i.bx, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.050 = phi i1 [ %i.bo, %bb.l ], [ false, %bb.a ]
  ret i1 %.050
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemiff(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  switch i32 %1, label %_Z7ImQsortPvmmPFiPKvS1_E.exit [
    i32 1, label %bb.b
    i32 0, label %.loopexit84
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !322 ; 2 uses
  %i.c = fcmp ult float %i.b, 0.000000e+00
  br i1 %i.c, label %.loopexit84, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fsub float %i.b, %2                      ; 2 uses
  %i.e = fcmp oge float %i.d, %3
  %i.f = select i1 %i.e, float %i.d, float %3
  store float %i.f, ptr %i.a, align 4, !tbaa !322
  br label %.loopexit84

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %i.g, i64 noundef 12, ptr noundef nonnull @_ZL23ShrinkWidthItemComparerPKvS0_)
  %i.h = fcmp ogt float %2, 1.000000e-03
  %i.i = icmp sgt i32 %1, 1
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.preheader86.lr.ph, label %.thread

.preheader86.lr.ph:                               ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = zext nneg i32 %1 to i64
  br label %.preheader86

.loopexit85.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit85, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit85.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next114.1, %.loopexit85.loopexit.unr-lcssa ]
  %.193.epil.init = phi float [ %.095, %.lr.ph.preheader ], [ %i.bj, %.loopexit85.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i32 %.17288 to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv113.epil.init
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !322 ; 2 uses
  %i.p = fsub float %i.o, %3                      ; 2 uses
  %i.q = fcmp olt float %i.ar, %i.p
  %i.r = select i1 %i.q, float %i.ar, float %i.p  ; 2 uses
  %i.s = fsub float %i.o, %i.r
  store float %i.s, ptr %i.n, align 4, !tbaa !322
  %i.t = fsub float %.193.epil.init, %i.r
  br label %.loopexit85

.loopexit85:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit85.loopexit.unr-lcssa, %bb.h
  %.1.lcssa = phi float [ %.095, %bb.h ], [ %i.bj, %.loopexit85.loopexit.unr-lcssa ], [ %i.t, %.lr.ph.epil.preheader ] ; 2 uses
  %i.u = fcmp ogt float %.1.lcssa, 1.000000e-03
  %i.v = icmp slt i32 %.17288, %1
  %i.w = and i1 %i.v, %i.u
  br i1 %i.w, label %.preheader86, label %.thread

.preheader86:                                     ; preds = %.preheader86.lr.ph, %.loopexit85
  %.095 = phi float [ %2, %.preheader86.lr.ph ], [ %.1.lcssa, %.loopexit85 ] ; 4 uses
  %.07194 = phi i32 [ 1, %.preheader86.lr.ph ], [ %.17288, %.loopexit85 ]
  %i.x = load float, ptr %i.k, align 4, !tbaa !322 ; 4 uses
  %i.y = sext i32 %.07194 to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader86, %bb.e
  %indvars.iv = phi i64 [ %i.y, %.preheader86 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !322 ; 3 uses
  %i.ac = fcmp ugt float %i.x, %i.ab
  br i1 %i.ac, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ad = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.ad, label %bb.d, label %.critedge80.loopexit, !llvm.loop !653

.critedge:                                        ; preds = %bb.d
  %i.ae = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.af = fcmp ult float %i.ab, 0.000000e+00
  br i1 %i.af, label %.critedge80, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ag = fsub float %i.x, %i.ab
  br label %bb.g

.critedge80.loopexit:                             ; preds = %bb.e
  %i.ah = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge80

.critedge80:                                      ; preds = %.critedge80.loopexit, %.critedge
  %.17289 = phi i32 [ %i.ae, %.critedge ], [ %i.ah, %.critedge80.loopexit ]
  %i.ai = fadd float %i.x, -1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %.critedge80, %bb.f
  %.17288 = phi i32 [ %i.ae, %bb.f ], [ %.17289, %.critedge80 ] ; 7 uses
  %i.aj = phi float [ %i.ag, %bb.f ], [ %i.ai, %.critedge80 ] ; 2 uses
  %i.ak = fsub float %i.x, %3                     ; 2 uses
  %i.al = fcmp olt float %i.ak, %i.aj
  %i.am = select i1 %i.al, float %i.ak, float %i.aj ; 3 uses
  %i.an = fcmp ugt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = sitofp i32 %.17288 to float
  %i.ap = fdiv float %.095, %i.ao                 ; 2 uses
  %i.aq = fcmp olt float %i.ap, %i.am
  %i.ar = select i1 %i.aq, float %i.ap, float %i.am ; 6 uses
  %i.as = icmp sgt i32 %.17288, 0
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit85

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.17288 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.at = icmp eq i32 %.17288, 1
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv113 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next114.1, %.lr.ph ] ; 3 uses
  %.193 = phi float [ %.095, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ]
end_hunk_1
