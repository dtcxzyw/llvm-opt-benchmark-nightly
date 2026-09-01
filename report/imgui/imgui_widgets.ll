Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2:bb.a
  %.sroa.089.0.vec.insert = insertelement <2 x float> poison, float %i.bu, i64 0
  %.sroa.089.4.vec.insert = insertelement <2 x float> %.sroa.089.0.vec.insert, float %i.bw, i64 1
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.bk, align 8
  %i.bx = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.by = fsub float %.075, %i.au
  %.sroa.087.0.vec.insert = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.087.4.vec.insert = insertelement <2 x float> %.sroa.087.0.vec.insert, float %.075, i64 1
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.bt, <2 x float> %.sroa.089.4.vec.insert, <2 x float> %.sroa.08.0.copyload, i32 noundef %i.bx, float noundef %i.au, <2 x float> %.sroa.087.4.vec.insert, float noundef %i.az, i32 noundef 160)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.bz = fadd float %i.au, %i.bj
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !177
  store float %i.bz, ptr %9, align 4, !tbaa !176
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !181
  %i.cd = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bt, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.bk, i32 noundef %i.cd, float noundef %i.az, i32 noundef 160)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !178
  store float %i.bp, ptr %10, align 4, !tbaa !176
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 4
  store float %i.ch, ptr %i.ci, align 4, !tbaa !181
  %i.cj = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cf, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.cj, float noundef %i.az, i32 noundef 80)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ck = and i32 %spec.select, 4096
  %.not79 = icmp eq i32 %i.ck, 0
  %. = select i1 %.not79, ptr %6, ptr %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %., i64 16, i1 false), !tbaa.struct !231
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !255
  %i.cn = fcmp olt float %i.cm, 1.000000e+00
  %i.co = and i32 %spec.select, 8192
  %i.cp = icmp eq i32 %i.co, 0
  %or.cond84 = and i1 %i.cp, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !186 ; 2 uses
  br i1 %or.cond84, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.07.0.copyload = load <2 x float>, ptr %8, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.cs, align 8
  %i.ct = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %11)
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.075, i64 0
  %.sroa.0.4.vec.insert = shufflevector <2 x float> %.sroa.0.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.cr, <2 x float> %.sroa.07.0.copyload, <2 x float> %.sroa.06.0.copyload, i32 noundef %i.ct, float noundef %i.au, <2 x float> %.sroa.0.4.vec.insert, float noundef %i.az, i32 noundef 0)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cr, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.cu, i32 noundef %i.cv, float noundef %i.az, i32 noundef 0)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.j, i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.bb, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 3296
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !242
  %i.cy = fcmp ogt float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.05.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.n, align 8
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.05.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.az)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !186
  %i.db = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 4528
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !234
  %i.de = fptosi float %i.dd to i32
  %i.df = sitofp i32 %i.de to float
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.da, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %i.n, i32 noundef %i.db, float noundef %i.az, float noundef %i.df, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 5428
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !205
  %i.di = icmp eq i32 %i.dh, %i.j
  %i.dj = and i32 %spec.select, 512
  %.not80 = icmp eq i32 %i.dj, 0
  %or.cond85 = and i1 %.not80, %i.di
  br i1 %or.cond85, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.dk = call noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef 0)
  br i1 %i.dk, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.dl = and i32 %spec.select, 2
  %.not81 = icmp eq i32 %i.dl, 0
  br i1 %.not81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.69, ptr noundef nonnull %6, i64 noundef 12, i32 noundef 2) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dn = call noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef nonnull @.str.70, ptr noundef nonnull %6, i64 noundef 16, i32 noundef 2) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !171
  %i.do = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(8) %12) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef nonnull @.str.82, ptr noundef null, i32 noundef 0)
  call void @_ZN5ImGui17EndDragDropSourceEv()
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.v
  %i.dp = and i32 %spec.select, 64
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = load i8, ptr %i.a, align 1, !range !165
  %i.ds = trunc nuw i8 %i.dr to i1
  %or.cond4 = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond4, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dt = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.dt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.du = and i32 %spec.select, 805335042
  call void @_ZN5ImGui12ColorTooltipEPKcPKfi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.du)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %bb.ae
  %.0 = phi i1 [ %i.ad, %bb.ae ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  %.1 = phi i1 [ %.0, %bb.af ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec4, align 8             ; 7 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 8             ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImRect, align 8             ; 7 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %9 = alloca %struct.ImVec4, align 8             ; 7 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 8            ; 7 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImRect, align 8            ; 7 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %14 = alloca %struct.ImVec4, align 8            ; 7 uses
  %15 = alloca %struct.ImVec2, align 8            ; 9 uses
  %i.i = alloca [4 x float], align 16             ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 7 uses
  %17 = alloca %struct.ImVec2, align 4            ; 9 uses
  %18 = alloca %struct.ImVec2, align 4            ; 10 uses
  %19 = alloca %struct.ImVec2, align 4            ; 10 uses
  %i.j = alloca float, align 4                    ; 21 uses
  %i.k = alloca float, align 4                    ; 19 uses
  %i.l = alloca float, align 4                    ; 15 uses
  %i.m = alloca float, align 4                    ; 7 uses
  %i.n = alloca float, align 4                    ; 7 uses
  %i.o = alloca float, align 4                    ; 7 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 7 uses
  %i.p = alloca float, align 4                    ; 4 uses
  %i.q = alloca float, align 4                    ; 4 uses
  %i.r = alloca float, align 4                    ; 3 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %23 = alloca %struct.ImVec2, align 4            ; 5 uses
  %24 = alloca %struct.ImVec4, align 8            ; 6 uses
  %25 = alloca %struct.ImVec2, align 4            ; 5 uses
  %26 = alloca %struct.ImVec4, align 8            ; 6 uses
  %27 = alloca %struct.ImVec2, align 4            ; 5 uses
  %28 = alloca %struct.ImVec4, align 8            ; 6 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca float, align 4                    ; 4 uses
  %i.u = alloca float, align 4                    ; 4 uses
  %i.v = alloca [7 x i32], align 16               ; 10 uses
  %29 = alloca %struct.ImVec4, align 8            ; 8 uses
  %30 = alloca %struct.ImVec4, align 4            ; 7 uses
  %31 = alloca %struct.ImVec2, align 8            ; 8 uses
  %32 = alloca %struct.ImVec2, align 8            ; 6 uses
  %33 = alloca %struct.ImVec2, align 8            ; 5 uses
  %34 = alloca %struct.ImVec2, align 8            ; 5 uses
  %35 = alloca %struct.ImVec2, align 8            ; 5 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 4 uses
  %38 = alloca %struct.ImVec2, align 4            ; 25 uses
  %39 = alloca %struct.ImVec2, align 4            ; 25 uses
  %40 = alloca %struct.ImRect, align 8            ; 9 uses
  %i.w = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 5312
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 206
  store i8 1, ptr %i.z, align 2, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 209
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !164, !range !165, !noundef !166
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.dv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !186 ; 37 uses
  %i.af = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 7792
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 7796 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !312
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 7784
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !376
  %i.al = or i32 %i.ak, %i.ai
  %i.am = and i32 %i.al, 2048
  %i.an = icmp ne i32 %i.am, 0                    ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !597
  store i32 0, ptr %i.ah, align 4, !tbaa !598
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 9724 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !599
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 272
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !600
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !601
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !192
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !599
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  %i.az = lshr i32 %2, 4
  %i.ba = and i32 %i.az, 16
  %i.bb = xor i32 %i.ba, 16
  %spec.select = or i32 %i.bb, %2                 ; 3 uses
  %i.bc = and i32 %2, 8
  %.not443 = icmp eq i32 %i.bc, 0
  br i1 %.not443, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui23ColorPickerOptionsPopupEPKfi(ptr noundef %1, i32 noundef %spec.select)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bd = and i32 %2, 100663296
  %.not444 = icmp eq i32 %i.bd, 0
  br i1 %.not444, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !602
  %i.bg = and i32 %i.bf, 100663296                ; 2 uses
  %.not445 = icmp eq i32 %i.bg, 0
  %spec.select471 = select i1 %.not445, i32 33554432, i32 %i.bg
  %i.bh = or disjoint i32 %spec.select471, %spec.select
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %i.bh, %bb.g ] ; 3 uses
  %i.bi = and i32 %.1, 805306368
  %.not446 = icmp eq i32 %i.bi, 0
  br i1 %.not446, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !602
  %i.bl = and i32 %i.bk, 805306368                ; 2 uses
  %.not447 = icmp eq i32 %i.bl, 0
  %spec.select472 = select i1 %.not447, i32 268435456, i32 %i.bl
  %i.bm = or disjoint i32 %spec.select472, %.1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.bm, %bb.i ]  ; 3 uses
  %i.bn = and i32 %.2, 8
  %.not448 = icmp eq i32 %i.bn, 0
  br i1 %.not448, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !602
  %i.bq = and i32 %i.bp, 262144
  %i.br = or i32 %i.bq, %.2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.br, %bb.k ]  ; 23 uses
  %i.bs = and i32 %.3, 2
  %.not449 = icmp eq i32 %i.bs, 0                 ; 3 uses
  %i.bt = and i32 %.3, 262146
  %spec.select473 = icmp eq i32 %i.bt, 262144     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  store i64 %i.bv, ptr %15, align 8
  %i.bw = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 15 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 3308 ; 4 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !188 ; 3 uses
  %i.bz = fadd float %i.bw, %i.by
  %i.ca = select i1 %spec.select473, float -2.000000e+00, float -1.000000e+00
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bz, float %i.af) ; 2 uses
  %i.cc = fcmp oge float %i.bw, %i.cb
  %i.cd = select i1 %i.cc, float %i.bw, float %i.cb ; 22 uses
  %i.ce = fmul float %i.bw, 2.000000e-01
  %i.cf = fptosi float %i.ce to i32
  %i.cg = sitofp i32 %i.cf to float               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  %i.ch = select i1 %.not449, i64 16, i64 12      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 %i.ch, i1 false)
  %i.ci = fmul float %i.cd, 8.000000e-02          ; 4 uses
  %i.cj = fmul float %i.cd, 5.000000e-01          ; 5 uses
  %i.ck = fsub float %i.cj, %i.ci                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.cl = fadd float %i.bw, %i.cd
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 9 uses
  %i.cn = lshr i64 %i.bv, 32
  %i.co = trunc nuw i64 %i.cn to i32              ; 2 uses
  %i.cp = bitcast i64 %i.bv to <2 x float>        ; 6 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cr = fadd float %i.cd, %i.cq                 ; 2 uses
  %i.cs = fadd float %i.by, %i.cr                 ; 11 uses
  %i.ct = fadd float %i.bw, %i.cs                 ; 8 uses
  %i.cu = fadd float %i.by, %i.ct                 ; 5 uses
  %i.cv = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cd, i64 1
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cp) ; 3 uses
  store <2 x float> %i.cx, ptr %16, align 8, !tbaa !171
  %i.cy = and i32 %.3, 134217728
  %i.cz = icmp eq i32 %i.cy, 0                    ; 3 uses
  %i.da = fmul float %i.cd, 2.700000e-02
  %i.db = fptosi float %i.da to i32
  %i.dc = sitofp i32 %i.db to float
  %i.dd = fsub float %i.ck, %i.dc                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  br i1 %i.cz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.de = fmul float %i.dd, -5.000000e-01         ; 2 uses
  %i.df = fmul float %i.dd, f0xBF5DB22D
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.dg = fmul float %i.dd, f0x3F5DB22D
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dh = fmul float %i.dd, f0x3F5DB22D
  %i.di = fmul float %i.dd, 5.000000e-01          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.dj = fneg float %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.dk = fmul float %i.dd, f0xBF5DB22D
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink618 = phi float [ %i.dd, %bb.m ], [ %i.dh, %bb.n ]
  %.sink617 = phi float [ 0.000000e+00, %bb.m ], [ %i.di, %bb.n ]
  %.sink616 = phi float [ %i.de, %bb.m ], [ 0.000000e+00, %bb.n ]
  %.sink615 = phi float [ %i.df, %bb.m ], [ %i.dj, %bb.n ]
  %.sink614 = phi float [ %i.de, %bb.m ], [ %i.dk, %bb.n ]
  %.sink = phi float [ %i.dg, %bb.m ], [ %i.di, %bb.n ]
  store float %.sink618, ptr %17, align 4, !tbaa !176
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  store float %.sink617, ptr %i.dl, align 4, !tbaa !181
  store float %.sink616, ptr %18, align 4, !tbaa !176
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  store float %.sink615, ptr %i.dm, align 4, !tbaa !181
  store float %.sink614, ptr %19, align 4, !tbaa !176
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  store float %.sink, ptr %i.dn, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  %i.do = load float, ptr %1, align 4, !tbaa !171 ; 4 uses
  store float %i.do, ptr %i.j, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !171 ; 4 uses
  store float %i.dq, ptr %i.k, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !171 ; 4 uses
  store float %i.ds, ptr %i.l, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #41
  store float %i.do, ptr %i.m, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store float %i.dq, ptr %i.n, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  store float %i.ds, ptr %i.o, align 4, !tbaa !171
  %i.dt = and i32 %.3, 268435456
  %.not451 = icmp eq i32 %i.dt, 0                 ; 4 uses
  br i1 %.not451, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.do, float noundef %i.dq, float noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.du = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 9728
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !603
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 9724
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !599
  %.not.i = icmp eq i32 %i.dw, %i.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  br i1 %.not.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 9740
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !604
  %i.eb = load float, ptr %i.dr, align 4, !tbaa !171
  %i.ec = load <2 x float>, ptr %1, align 4, !tbaa !171
  store <2 x float> %i.ec, ptr %14, align 8, !tbaa !171
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.eb, ptr %i.ed, align 8, !tbaa !318
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !255
  %i.ef = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14)
  %.not14.i = icmp eq i32 %i.ea, %i.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br i1 %.not14.i, label %bb.r, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

.critedge.i:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.r:                                             ; preds = %bb.q
  %i.eg = load float, ptr %i.k, align 4, !tbaa !171
  %i.eh = fcmp oeq float %i.eg, 0.000000e+00
  br i1 %i.eh, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.du, i64 9732
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !605
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ei = load float, ptr %i.j, align 4, !tbaa !171
  %i.ej = fcmp oeq float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 9732
  %i.el = load float, ptr %i.ek, align 4, !tbaa !605
  %i.em = fcmp oeq float %i.el, 1.000000e+00
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.en = phi float [ %.pre.i, %._crit_edge.i ], [ 1.000000e+00, %bb.t ]
  store float %i.en, ptr %i.j, align 4, !tbaa !171
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.eo = load float, ptr %i.l, align 4, !tbaa !171
  %i.ep = fcmp oeq float %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.w, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 9736
  %i.er = load float, ptr %i.eq, align 8, !tbaa !606
  store float %i.er, ptr %i.k, align 4, !tbaa !171
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.x:                                             ; preds = %bb.o
  %i.es = and i32 %.3, 536870912
  %.not452 = icmp eq i32 %i.es, 0
  br i1 %.not452, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.do, float noundef %i.dq, float noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit:          ; preds = %bb.w, %bb.v, %.critedge.i, %bb.q, %bb.x, %bb.y
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 2, i1 noundef zeroext true)
  %i.et = and i32 %.3, 67108864
  %.not453 = icmp eq i32 %i.et, 0                 ; 2 uses
  br i1 %.not453, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.eu = load float, ptr %i.bx, align 4, !tbaa !188
  %i.ev = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 5312
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !11 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 206
  store i8 1, ptr %i.ey, align 2, !tbaa !140
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 209
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !164, !range !165, !noundef !166
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = fadd float %i.cd, %i.eu
  %i.fd = fadd float %i.bw, %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.fe = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.cd, i64 1 ; 2 uses
  %i.fg = fcmp une <2 x float> %i.ff, zeroinitializer
  %i.fh = select <2 x i1> %i.fg, <2 x float> %i.ff, <2 x float> splat (float f0x80800000)
  %i.fi = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %i.fh, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.fi, ptr %12, align 8
  %i.fj = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.ex, ptr noundef nonnull @.str.71, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 280
  %i.fl = load <2 x float>, ptr %i.fk, align 4, !tbaa !171 ; 2 uses
  %i.fm = fadd <2 x float> %i.fi, %i.fl
  store <2 x float> %i.fl, ptr %13, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %i.fm, ptr %i.fn, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef -1.000000e+00)
  %i.fo = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef %i.fj, ptr noundef null, i32 noundef 2)
  br i1 %i.fo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  %i.fp = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef %i.fj, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef %i.fj, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit:    ; preds = %bb.z, %bb.ac
  %i.fq = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  %.not = xor i1 %i.fq, true
  %or.cond = select i1 %.not, i1 true, i1 %i.an
  br i1 %or.cond, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.w, i64 2800
  %41 = load float, ptr %i.fr, align 8, !tbaa !176
  %42 = extractelement <2 x float> %i.cx, i64 0   ; 2 uses
  %43 = fsub float %41, %42                       ; 3 uses
  %44 = getelementptr inbounds nuw i8, ptr %i.w, i64 2804
  %45 = load float, ptr %44, align 4, !tbaa !181
  %46 = extractelement <2 x float> %i.cx, i64 1   ; 2 uses
  %47 = fsub float %45, %46                       ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  %48 = load float, ptr %i.fs, align 8, !tbaa !176
  %49 = fsub float %48, %42                       ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %i.w, i64 276
  %51 = load float, ptr %50, align 4, !tbaa !181
  %52 = fsub float %51, %46                       ; 2 uses
  %53 = fmul float %47, %47
  %i.ft = call noundef float @llvm.fmuladd.f32(float %43, float %43, float %53) ; 2 uses
  %i.fu = fadd float %i.ck, -1.000000e+00         ; 2 uses
  %i.fv = fmul float %i.fu, %i.fu
  %i.fw = fcmp ult float %i.ft, %i.fv
  br i1 %i.fw, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = fadd float %i.cj, 1.000000e+00          ; 2 uses
  %i.fy = fmul float %i.fx, %i.fx
  %i.fz = fcmp ugt float %i.ft, %i.fy
  br i1 %i.fz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = call float @atan2f(float noundef %52, float noundef %49) #41
  %i.gb = fdiv float %i.ga, f0x40490FDB
  %i.gc = fmul float %i.gb, 5.000000e-01          ; 3 uses
  %i.gd = fcmp olt float %i.gc, 0.000000e+00
  %i.ge = fadd float %i.gc, 1.000000e+00
  %storemerge = select i1 %i.gd, float %i.ge, float %i.gc
  store float %storemerge, ptr %i.j, align 4, !tbaa !171
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.0426 = phi i8 [ 1, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  br i1 %i.cz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gf = load float, ptr %i.j, align 4, !tbaa !171
  %i.gg = fmul float %i.gf, -2.000000e+00
  %i.gh = fmul float %i.gg, f0x40490FDB           ; 2 uses
  %i.gi = call float @cosf(float noundef %i.gh) #41
  %i.gj = call float @sinf(float noundef %i.gh) #41 ; 2 uses
  %i.gk = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %i.gj, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.gm = phi float [ %i.gj, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.gn = phi <2 x float> [ %i.gl, %bb.ah ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  %i.go = fneg float %i.gm                        ; 2 uses
  %54 = insertelement <2 x float> poison, float %47, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gq = insertelement <2 x float> %i.gp, float %i.go, i64 0
  %i.gr = fmul <2 x float> %55, %i.gq
  %56 = insertelement <2 x float> poison, float %43, i64 0
  %i.gs = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gn, <2 x float> %i.gr)
  store <2 x float> %i.gt, ptr %20, align 8
  %i.gu = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br i1 %i.gu, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %57 = insertelement <2 x float> poison, float %52, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.go, i64 0
  %i.gx = fmul <2 x float> %58, %i.gw
  %59 = insertelement <2 x float> poison, float %49, i64 0
  %i.gy = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gn, <2 x float> %i.gx)
  store <2 x float> %i.gz, ptr %21, align 8
  %i.ha = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %21)
  br i1 %i.ha, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hb = call <2 x float> @_Z22ImTriangleClosestPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %21)
  store <2 x float> %i.hb, ptr %21, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #41
  call void @_Z27ImTriangleBarycentricCoordsRK6ImVec2S1_S1_S1_RfS2_S2_(ptr noundef nonnull align 4 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %i.hc = load float, ptr %i.q, align 4, !tbaa !171
  %i.hd = fsub float 1.000000e+00, %i.hc          ; 3 uses
  %i.he = fcmp olt float %i.hd, f0x38D1B717
  %i.hf = fcmp ogt float %i.hd, 1.000000e+00
  %i.hg = select i1 %i.hf, float 1.000000e+00, float %i.hd
  %i.hh = select i1 %i.he, float f0x38D1B717, float %i.hg ; 2 uses
  store float %i.hh, ptr %i.l, align 4, !tbaa !171
  %i.hi = load float, ptr %i.p, align 4, !tbaa !171
  %i.hj = fdiv float %i.hi, %i.hh                 ; 3 uses
  %i.hk = fcmp olt float %i.hj, f0x38D1B717
  %i.hl = fcmp ogt float %i.hj, 1.000000e+00
  %i.hm = select i1 %i.hl, float 1.000000e+00, float %i.hj
  %i.hn = select i1 %i.hk, float f0x38D1B717, float %i.hm
  store float %i.hn, ptr %i.k, align 4, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.am

bb.am:                                            ; preds = %bb.ai, %bb.al, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit
  %.2431 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ 1, %bb.al ], [ %.0426, %bb.ai ] ; 2 uses
  %.1427 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ %.0426, %bb.al ], [ %.0426, %bb.ai ] ; 2 uses
  %.1423 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit ], [ 1, %bb.al ], [ 0, %bb.ai ] ; 2 uses
  %i.ho = and i32 %.3, 8
  %.not456 = icmp eq i32 %i.ho, 0
  br i1 %.not456, label %bb.an, label %bb.bc

bb.an:                                            ; preds = %bb.am
  %i.hp = call noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.60, i32 noundef 8) ; 0 uses
  br label %bb.bc

bb.ao:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
  %i.hq = and i32 %.3, 33554432
  %.not454 = icmp eq i32 %i.hq, 0
  br i1 %.not454, label %bb.bc, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 5312
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !11 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 206
  store i8 1, ptr %i.hu, align 2, !tbaa !140
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 209
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !164, !range !165, !noundef !166
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.hy = fcmp une float %i.cd, 0.000000e+00
  %i.hz = select i1 %i.hy, float %i.cd, float f0x80800000
  %.sroa.017.0.vec.insert.i487 = insertelement <2 x float> poison, float %i.hz, i64 0
  %.sroa.017.4.vec.insert.i488 = shufflevector <2 x float> %.sroa.017.0.vec.insert.i487, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.017.4.vec.insert.i488, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.ia, ptr %10, align 8
  %i.ib = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.ht, ptr noundef nonnull @.str.72, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 280
  %i.id = load <2 x float>, ptr %i.ic, align 4, !tbaa !171 ; 2 uses
  %i.ie = fadd <2 x float> %i.ia, %i.id
  store <2 x float> %i.id, ptr %11, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %i.ie, ptr %i.if, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef -1.000000e+00)
  %i.ig = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ib, ptr noundef null, i32 noundef 2)
  br i1 %i.ig, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.ih = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ib, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.ib, i32 noundef 0, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493

_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493: ; preds = %bb.ap, %bb.as
  %i.ii = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  %.not2 = xor i1 %i.ii, true
  %or.cond4 = select i1 %.not2, i1 true, i1 %i.an
  br i1 %or.cond4, label %_ZL17ColorEditRestoreHPKfPf.exit, label %bb.at

bb.at:                                            ; preds = %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493
  %i.ij = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  %i.ik = fadd float %i.cd, -1.000000e+00
  %i.il = load <2 x float>, ptr %i.ij, align 8, !tbaa !171
  %i.im = fsub <2 x float> %i.il, %i.cp
  %i.in = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fdiv <2 x float> %i.im, %i.io           ; 3 uses
  %i.iq = fcmp olt <2 x float> %i.ip, zeroinitializer ; 2 uses
  %i.ir = extractelement <2 x i1> %i.iq, i64 0
  %i.is = fcmp ogt <2 x float> %i.ip, splat (float 1.000000e+00)
  %i.it = select <2 x i1> %i.is, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ip ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 0
  %i.iv = select i1 %i.ir, float 0.000000e+00, float %i.iu
  store float %i.iv, ptr %i.k, align 4, !tbaa !171
  %i.iw = extractelement <2 x float> %i.it, i64 1
  %i.ix = fsub float 1.000000e+00, %i.iw
  %i.iy = extractelement <2 x i1> %i.iq, i64 1
  %i.iz = select i1 %i.iy, float 1.000000e+00, float %i.ix
  store float %i.iz, ptr %i.l, align 4, !tbaa !171
  %i.ja = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 9728
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !603
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 9724
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !599
  %.not.i494 = icmp eq i32 %i.jc, %i.je
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  br i1 %.not.i494, label %bb.au, label %.critedge.i495

bb.au:                                            ; preds = %bb.at
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 9740
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !604
  %i.jh = load float, ptr %i.dr, align 4, !tbaa !171
  %i.ji = load <2 x float>, ptr %1, align 4, !tbaa !171
  store <2 x float> %i.ji, ptr %9, align 8, !tbaa !171
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.jh, ptr %i.jj, align 8, !tbaa !318
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float 0.000000e+00, ptr %i.jk, align 4, !tbaa !255
  %i.jl = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9)
  %.not8.i = icmp eq i32 %i.jg, %i.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %.not8.i, label %bb.av, label %_ZL17ColorEditRestoreHPKfPf.exit

.critedge.i495:                                   ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %_ZL17ColorEditRestoreHPKfPf.exit

bb.av:                                            ; preds = %bb.au
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 9732
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !605
  store float %i.jn, ptr %i.j, align 4, !tbaa !171
  br label %_ZL17ColorEditRestoreHPKfPf.exit

_ZL17ColorEditRestoreHPKfPf.exit:                 ; preds = %bb.av, %.critedge.i495, %bb.au, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493
  %.2424 = phi i8 [ 0, %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit493 ], [ 1, %bb.au ], [ 1, %.critedge.i495 ], [ 1, %bb.av ] ; 3 uses
  %i.jo = and i32 %.3, 8
  %.not455 = icmp eq i32 %i.jo, 0
  br i1 %.not455, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZL17ColorEditRestoreHPKfPf.exit
  %i.jp = call noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef nonnull @.str.60, i32 noundef 8) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL17ColorEditRestoreHPKfPf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  store float %i.cs, ptr %22, align 4, !tbaa !176
  %i.jq = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 %i.co, ptr %i.jq, align 4, !tbaa !181
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %i.jr = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 5312
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !11 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 206
  store i8 1, ptr %i.ju, align 2, !tbaa !140
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 209
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !164, !range !165, !noundef !166
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i.exit502, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.jy = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.cd, i64 1 ; 2 uses
  %i.ka = fcmp une <2 x float> %i.jz, zeroinitializer
  %i.kb = select <2 x i1> %i.ka, <2 x float> %i.jz, <2 x float> splat (float f0x80800000)
  %i.kc = call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %i.kb, float noundef 0.000000e+00, float noundef 0.000000e+00) ; 2 uses
  store <2 x float> %i.kc, ptr %7, align 8
  %i.kd = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.jt, ptr noundef nonnull @.str.73, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 280
  %i.kf = load <2 x float>, ptr %i.ke, align 4, !tbaa !171 ; 2 uses
  %i.kg = fadd <2 x float> %i.kc, %i.kf
  store <2 x float> %i.kf, ptr %8, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %i.kg, ptr %i.kh, align 8
end_hunk_0
begin_hunk_1_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #41
  br label %.thread598

.thread598:                                       ; preds = %bb.cg, %bb.cp, %bb.cw
  %.12603 = phi i8 [ %.11, %bb.cw ], [ %.11, %bb.cp ], [ %.8, %bb.cg ]
  %i.pv = trunc nuw i8 %.12603 to i1              ; 2 uses
  br i1 %i.pv, label %bb.cx, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.cx:                                            ; preds = %.thread598
  br i1 %.not451, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pw = load float, ptr %1, align 4, !tbaa !171 ; 2 uses
  store float %i.pw, ptr %i.m, align 4, !tbaa !171
  %i.px = load float, ptr %i.dp, align 4, !tbaa !171 ; 2 uses
  store float %i.px, ptr %i.n, align 4, !tbaa !171
  %i.py = load float, ptr %i.dr, align 4, !tbaa !171 ; 2 uses
  store float %i.py, ptr %i.o, align 4, !tbaa !171
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.pw, float noundef %i.px, float noundef %i.py, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.pz = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 6 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 9728
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !603
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 9724
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !599
  %.not.i510 = icmp eq i32 %i.qb, %i.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  br i1 %.not.i510, label %bb.cz, label %.critedge.i511

bb.cz:                                            ; preds = %bb.cy
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 9740
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !604
  %i.qg = load float, ptr %i.dr, align 4, !tbaa !171
  %i.qh = load <2 x float>, ptr %1, align 4, !tbaa !171
  store <2 x float> %i.qh, ptr %4, align 8, !tbaa !171
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.qg, ptr %i.qi, align 8, !tbaa !318
  %i.qj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.qj, align 4, !tbaa !255
  %i.qk = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.not14.i512 = icmp eq i32 %i.qf, %i.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %.not14.i512, label %bb.da, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

.critedge.i511:                                   ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.da:                                            ; preds = %bb.cz
  %i.ql = load float, ptr %i.k, align 4, !tbaa !171
  %i.qm = fcmp oeq float %i.ql, 0.000000e+00
  br i1 %i.qm, label %._crit_edge.i513, label %bb.db

._crit_edge.i513:                                 ; preds = %bb.da
  %.phi.trans.insert.i514 = getelementptr inbounds nuw i8, ptr %i.pz, i64 9732
  %.pre.i515 = load float, ptr %.phi.trans.insert.i514, align 4, !tbaa !605
  br label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.qn = load float, ptr %i.j, align 4, !tbaa !171
  %i.qo = fcmp oeq float %i.qn, 0.000000e+00
  br i1 %i.qo, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pz, i64 9732
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !605
  %i.qr = fcmp oeq float %i.qq, 1.000000e+00
  br i1 %i.qr, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i513
  %i.qs = phi float [ %.pre.i515, %._crit_edge.i513 ], [ 1.000000e+00, %bb.dc ]
  store float %i.qs, ptr %i.j, align 4, !tbaa !171
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.qt = load float, ptr %i.l, align 4, !tbaa !171
  %i.qu = fcmp oeq float %i.qt, 0.000000e+00
  br i1 %i.qu, label %bb.df, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.df:                                            ; preds = %bb.de
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pz, i64 9736
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !606
  store float %i.qw, ptr %i.k, align 4, !tbaa !171
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.dg:                                            ; preds = %bb.cx
  %i.qx = and i32 %.3, 536870912
  %.not466 = icmp eq i32 %i.qx, 0
  br i1 %.not466, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qy = load float, ptr %1, align 4, !tbaa !171 ; 2 uses
  store float %i.qy, ptr %i.j, align 4, !tbaa !171
  %i.qz = load float, ptr %i.dp, align 4, !tbaa !171 ; 2 uses
  store float %i.qz, ptr %i.k, align 4, !tbaa !171
  %i.ra = load float, ptr %i.dr, align 4, !tbaa !171 ; 2 uses
  store float %i.ra, ptr %i.l, align 4, !tbaa !171
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.qy, float noundef %i.qz, float noundef %i.ra, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516:       ; preds = %bb.df, %bb.de, %.critedge.i511, %bb.cz, %bb.dh, %bb.dg, %.thread598
  %i.rb = getelementptr inbounds nuw i8, ptr %i.w, i64 3220 ; 4 uses
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !614 ; 4 uses
  %i.rd = fcmp olt float %i.rc, 0.000000e+00
  %i.re = fcmp ogt float %i.rc, 1.000000e+00
  %i.rf = select i1 %i.re, float 1.000000e+00, float %i.rc
  %i.rg = call float @llvm.fmuladd.f32(float %i.rf, float 2.550000e+02, float 5.000000e-01)
  %i.rh = select i1 %i.rd, float 5.000000e-01, float %i.rg
  %i.ri = fptosi float %i.rh to i32
  %i.rj = shl i32 %i.ri, 24                       ; 11 uses
  %i.rk = or disjoint i32 %i.rj, 16711680         ; 5 uses
  %i.rl = or disjoint i32 %i.rj, 16776960         ; 5 uses
  %i.rm = or disjoint i32 %i.rj, 16777215         ; 6 uses
  %i.rn = or disjoint i32 %i.rj, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  %i.ro = or disjoint i32 %i.rj, 255              ; 7 uses
  store i32 %i.ro, ptr %i.v, align 16, !tbaa !192
  %i.rp = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.rq = or disjoint i32 %i.rj, 65280            ; 5 uses
  %i.rr = or disjoint i32 %i.rj, 65535            ; 5 uses
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !192
  %i.rs = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.rq, ptr %i.rs, align 8, !tbaa !192
  %i.rt = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.rl, ptr %i.rt, align 4, !tbaa !192
  %i.ru = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.rk, ptr %i.ru, align 16, !tbaa !192
  %i.rv = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.rw = or disjoint i32 %i.rj, 16711935         ; 5 uses
  store i32 %i.rw, ptr %i.rv, align 4, !tbaa !192
  %i.rx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ro, ptr %i.rx, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.ry = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !171
  %i.rz = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.rz, align 8, !tbaa !318
  %i.sa = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.rc, ptr %i.sa, align 4, !tbaa !255
  %i.sb = load float, ptr %i.j, align 4, !tbaa !171
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.sb, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.ry, ptr noundef nonnull align 4 dereferenceable(4) %i.rz)
  %i.sc = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.sd = load float, ptr %i.m, align 4, !tbaa !171
  %i.se = load float, ptr %i.n, align 4, !tbaa !171
  %i.sf = load float, ptr %i.o, align 4, !tbaa !171
  %i.sg = load float, ptr %i.rb, align 4, !tbaa !614
  store float %i.sd, ptr %30, align 4, !tbaa !316
  %i.sh = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.se, ptr %i.sh, align 4, !tbaa !317
  %i.si = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.sf, ptr %i.si, align 4, !tbaa !318
  %i.sj = getelementptr inbounds nuw i8, ptr %30, i64 12
  store float %i.sg, ptr %i.sj, align 4, !tbaa !255
  %i.sk = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %30) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #41
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !171
  br i1 %.not453, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.sl = fdiv float 5.000000e-01, %i.cj          ; 2 uses
  %i.sm = fptosi float %i.cj to i32
  %i.sn = sdiv i32 %i.sm, 12
  %i.so = call noundef i32 @llvm.smax.i32(i32 %i.sn, i32 4)
  %i.sp = fneg float %i.sl
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.sr = fadd float %i.cj, %i.ck                 ; 2 uses
  %i.ss = fmul float %i.sr, 5.000000e-01
  %i.st = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.sv = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sx = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.sy = insertelement <2 x float> %i.sx, float %i.sl, i64 1
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.sz = load float, ptr %i.j, align 4, !tbaa !171
  %i.ta = fmul float %i.sz, 2.000000e+00
  %i.tb = fmul float %i.ta, f0x40490FDB           ; 2 uses
  %i.tc = call float @cosf(float noundef %i.tb) #41
  %i.td = call float @sinf(float noundef %i.tb) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #41
  %i.te = load <2 x float>, ptr %16, align 8, !tbaa !171
  %i.tf = insertelement <2 x float> poison, float %i.sr, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.th = insertelement <2 x float> poison, float %i.tc, i64 0
  %i.ti = insertelement <2 x float> %i.th, float %i.td, i64 1 ; 2 uses
  %i.tj = fmul <2 x float> %i.tg, %i.ti
  %i.tk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> splat (float 5.000000e-01), <2 x float> %i.te)
  store <2 x float> %i.tk, ptr %32, align 8, !tbaa !171
  %.v = select i1 %i.nd, float 6.500000e-01, float 5.500000e-01
  %i.tl = fmul float %i.ci, %.v                   ; 4 uses
  %i.tm = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.tl) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tl, i32 noundef %i.sc, i32 noundef %i.tm)
  %i.tn = fadd float %i.tl, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tn, i32 noundef %i.rn, i32 noundef %i.tm, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tl, i32 noundef %i.rm, i32 noundef %i.tm, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #41
  %60 = load float, ptr %17, align 4, !tbaa !176
  %61 = load float, ptr %i.dl, align 4, !tbaa !181
  %62 = insertelement <2 x float> poison, float %61, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = insertelement <2 x float> poison, float %60, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %i.to = load <2 x float>, ptr %16, align 8, !tbaa !171 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #41
  %66 = load float, ptr %18, align 4, !tbaa !176
  %67 = load float, ptr %i.dm, align 4, !tbaa !181
  %68 = insertelement <2 x float> poison, float %67, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = insertelement <2 x float> poison, float %66, i64 0
  %i.tp = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> zeroinitializer
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #41
  %71 = load float, ptr %19, align 4, !tbaa !176
  %72 = load float, ptr %i.dn, align 4, !tbaa !181
  %73 = insertelement <2 x i1> poison, i1 %i.cz, i64 0
  %74 = shufflevector <2 x i1> %73, <2 x i1> poison, <2 x i32> zeroinitializer
  %75 = select <2 x i1> %74, <2 x float> %i.ti, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 6 uses
  %76 = extractelement <2 x float> %75, i64 1
  %77 = fneg float %76                            ; 2 uses
  %78 = insertelement <2 x float> poison, float %77, i64 0
  %79 = shufflevector <2 x float> %78, <2 x float> %75, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tq = fmul <2 x float> %63, %79
  %80 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %75, <2 x float> %i.tq)
  %81 = fadd <2 x float> %i.to, %80               ; 2 uses
  store <2 x float> %81, ptr %33, align 8
  %82 = fmul <2 x float> %69, %79
  %i.tr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tp, <2 x float> %75, <2 x float> %82)
  %i.ts = fadd <2 x float> %i.to, %i.tr           ; 2 uses
  store <2 x float> %i.ts, ptr %34, align 8
  %83 = insertelement <2 x float> poison, float %72, i64 0
  %84 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> zeroinitializer
  %85 = shufflevector <2 x float> %75, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %86 = insertelement <2 x float> %85, float %77, i64 0
  %i.tt = fmul <2 x float> %84, %86
  %87 = insertelement <2 x float> poison, float %71, i64 0
  %i.tu = shufflevector <2 x float> %87, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tu, <2 x float> %75, <2 x float> %i.tt)
  %i.tw = fadd <2 x float> %i.to, %i.tv           ; 2 uses
  store <2 x float> %i.tw, ptr %35, align 8
  %i.tx = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() ; 3 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 3, i32 noundef 3)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 7 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !615
  %i.ua = trunc i32 %i.tz to i16
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 6 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !616 ; 2 uses
  store i16 %i.ua, ptr %i.uc, align 2, !tbaa !207
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  store ptr %i.ud, ptr %i.ub, align 8, !tbaa !616
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 10 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !617
  store <2 x float> %81, ptr %i.uf, align 4
  %i.ug = load ptr, ptr %i.ue, align 8, !tbaa !617
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  store <2 x float> %i.tx, ptr %i.uh, align 4
  %i.ui = load ptr, ptr %i.ue, align 8, !tbaa !617 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  store i32 %i.sc, ptr %i.uj, align 4, !tbaa !618
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 20 ; 2 uses
  store ptr %i.uk, ptr %i.ue, align 8, !tbaa !617
  %i.ul = load i32, ptr %i.ty, align 4, !tbaa !615
  %i.um = add i32 %i.ul, 1                        ; 2 uses
  store i32 %i.um, ptr %i.ty, align 4, !tbaa !615
  %i.un = trunc i32 %i.um to i16
  %i.uo = load ptr, ptr %i.ub, align 8, !tbaa !616 ; 2 uses
  store i16 %i.un, ptr %i.uo, align 2, !tbaa !207
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  store ptr %i.up, ptr %i.ub, align 8, !tbaa !616
  store <2 x float> %i.ts, ptr %i.uk, align 4
  %i.uq = load ptr, ptr %i.ue, align 8, !tbaa !617
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store <2 x float> %i.tx, ptr %i.ur, align 4
  %i.us = load ptr, ptr %i.ue, align 8, !tbaa !617 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store i32 %i.rj, ptr %i.ut, align 4, !tbaa !618
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 20 ; 2 uses
  store ptr %i.uu, ptr %i.ue, align 8, !tbaa !617
  %i.uv = load i32, ptr %i.ty, align 4, !tbaa !615
  %i.uw = add i32 %i.uv, 1                        ; 2 uses
  store i32 %i.uw, ptr %i.ty, align 4, !tbaa !615
  %i.ux = trunc i32 %i.uw to i16
  %i.uy = load ptr, ptr %i.ub, align 8, !tbaa !616 ; 2 uses
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !207
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 2
  store ptr %i.uz, ptr %i.ub, align 8, !tbaa !616
  store <2 x float> %i.tw, ptr %i.uu, align 4
  %i.va = load ptr, ptr %i.ue, align 8, !tbaa !617
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store <2 x float> %i.tx, ptr %i.vb, align 4
  %i.vc = load ptr, ptr %i.ue, align 8, !tbaa !617 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  store i32 %i.rm, ptr %i.vd, align 4, !tbaa !618
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 20
  store ptr %i.ve, ptr %i.ue, align 8, !tbaa !617
  %i.vf = load i32, ptr %i.ty, align 4, !tbaa !615
  %i.vg = add i32 %i.vf, 1
  store i32 %i.vg, ptr %i.ty, align 4, !tbaa !615
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef %i.rn, float noundef 1.500000e+00)
  %i.vh = load float, ptr %i.k, align 4, !tbaa !171 ; 3 uses
  %88 = fcmp olt float %i.vh, 0.000000e+00
  %89 = fcmp ogt float %i.vh, 1.000000e+00
  %90 = select i1 %89, float 1.000000e+00, float %i.vh
  %91 = select i1 %88, float 0.000000e+00, float %90
  %i.vi = load float, ptr %i.l, align 4, !tbaa !171
  %i.vj = fsub float 1.000000e+00, %i.vi          ; 3 uses
  %92 = fcmp olt float %i.vj, 0.000000e+00
  %93 = fcmp ogt float %i.vj, 1.000000e+00
  %94 = select i1 %93, float 1.000000e+00, float %i.vj
  %95 = select i1 %92, float 0.000000e+00, float %94
  %96 = load <2 x float>, ptr %35, align 8, !tbaa !171 ; 2 uses
  %97 = load <2 x float>, ptr %33, align 8, !tbaa !171
  %98 = fsub <2 x float> %97, %96
  %99 = insertelement <2 x float> poison, float %91, i64 0
  %i.vk = shufflevector <2 x float> %99, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %98, <2 x float> %i.vk, <2 x float> %96) ; 2 uses
  %i.vm = load <2 x float>, ptr %34, align 8, !tbaa !171
  %i.vn = fsub <2 x float> %i.vm, %i.vl
  %100 = insertelement <2 x float> poison, float %95, i64 0
  %101 = shufflevector <2 x float> %100, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vn, <2 x float> %101, <2 x float> %i.vl)
  store <2 x float> %i.vo, ptr %31, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #41
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di, %bb.dk
  %i.vp = phi i32 [ %i.ro, %bb.di ], [ %i.wq, %bb.dk ]
  %indvars.iv = phi i64 [ 0, %bb.di ], [ %indvars.iv.next, %bb.dk ] ; 2 uses
  %i.vq = trunc nuw nsw i64 %indvars.iv to i32
  %i.vr = uitofp nneg i32 %i.vq to float
  %i.vs = insertelement <2 x float> poison, float %i.vr, i64 0
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vu = fadd nnan <2 x float> %i.vt, <float -0.000000e+00, float 1.000000e+00>
  %i.vv = fdiv nnan <2 x float> %i.vu, splat (float 6.000000e+00)
  %i.vw = fmul nnan <2 x float> %i.vv, splat (float 2.000000e+00)
  %i.vx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vw, <2 x float> splat (float f0x40490FDB), <2 x float> %i.sy) ; 2 uses
  %i.vy = load i32, ptr %i.sq, align 8, !tbaa !620
  %i.vz = extractelement <2 x float> %i.vx, i64 0 ; 3 uses
  %i.wa = extractelement <2 x float> %i.vx, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.ss, float noundef %i.vz, float noundef %i.wa, i32 noundef %i.so)
  %i.wb = load ptr, ptr %i.su, align 8, !tbaa !621
  %i.wc = load i32, ptr %i.st, align 8, !tbaa !622
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef %i.wb, i32 noundef %i.wc, i32 noundef %i.rm, float noundef %i.ci, i32 noundef 0)
  store i32 0, ptr %i.st, align 8, !tbaa !622
  %i.wd = load i32, ptr %i.sq, align 8, !tbaa !620
  %i.we = call float @cosf(float noundef %i.vz) #41
  %i.wf = call float @sinf(float noundef %i.vz) #41
  %i.wg = call float @cosf(float noundef %i.wa) #41
  %i.wh = call float @sinf(float noundef %i.wa) #41
  %i.wi = load <2 x float>, ptr %16, align 8, !tbaa !171 ; 2 uses
  %i.wj = insertelement <2 x float> poison, float %i.we, i64 0
  %i.wk = insertelement <2 x float> %i.wj, float %i.wf, i64 1
  %i.wl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.sw, <2 x float> %i.wi)
  %i.wm = insertelement <2 x float> poison, float %i.wg, i64 0
  %i.wn = insertelement <2 x float> %i.wm, float %i.wh, i64 1
  %i.wo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wn, <2 x float> %i.sw, <2 x float> %i.wi)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !192 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.vy, i32 noundef %i.wd, <2 x float> %i.wl, <2 x float> %i.wo, i32 noundef %i.vp, i32 noundef %i.wq)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !623

bb.dl:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.wr = and i32 %.3, 33554432
  %.not467 = icmp eq i32 %i.wr, 0
  br i1 %.not467, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  %i.ws = extractelement <2 x float> %i.cp, i64 1
  %i.wt = fadd float %i.cd, %i.ws
  %.sroa.0.0.vec.insert.i533 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i534 = insertelement <2 x float> %.sroa.0.0.vec.insert.i533, float %i.wt, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i534, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.rm, i32 noundef %i.sc, i32 noundef %i.sc, i32 noundef %i.rm)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #41
  %i.wu = load <2 x float>, ptr %15, align 8, !tbaa !171
  %i.wv = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wx = fadd <2 x float> %i.ww, %i.wu
  store <2 x float> %i.wx, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.rj, i32 noundef %i.rj)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.wy = fadd <2 x float> %i.ww, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.wy, float noundef 0.000000e+00)
  %i.wz = load float, ptr %i.k, align 4, !tbaa !171
  %i.xa = load float, ptr %i.l, align 4, !tbaa !171
  %i.xb = fsub float 1.000000e+00, %i.xa
  %i.xc = load float, ptr %i.cm, align 4, !tbaa !181 ; 2 uses
  %i.xd = load <2 x float>, ptr %15, align 8, !tbaa !171 ; 3 uses
  %i.xe = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.xf = insertelement <2 x float> %i.xe, float %i.xb, i64 1 ; 3 uses
  %i.xg = fcmp olt <2 x float> %i.xf, zeroinitializer
  %i.xh = fcmp ogt <2 x float> %i.xf, splat (float 1.000000e+00)
  %i.xi = select <2 x i1> %i.xh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.xf
  %i.xj = select <2 x i1> %i.xg, <2 x float> zeroinitializer, <2 x float> %i.xi
  %i.xk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xj, <2 x float> %i.ww, <2 x float> %i.xd)
  %i.xl = fadd <2 x float> %i.xk, splat (float 5.000000e-01)
  %i.xm = fptosi <2 x float> %i.xl to <2 x i32>
  %i.xn = sitofp <2 x i32> %i.xm to <2 x float>   ; 3 uses
  %i.xo = fadd <2 x float> %i.xd, splat (float 2.000000e+00) ; 2 uses
  %i.xp = fadd <2 x float> %i.ww, %i.xd
  %i.xq = fadd <2 x float> %i.xp, splat (float -2.000000e+00) ; 2 uses
  %i.xr = fcmp ogt <2 x float> %i.xo, %i.xn
  %i.xs = fcmp olt <2 x float> %i.xq, %i.xn
  %i.xt = select <2 x i1> %i.xs, <2 x float> %i.xq, <2 x float> %i.xn
  %i.xu = select <2 x i1> %i.xr, <2 x float> %i.xo, <2 x float> %i.xt
  store <2 x float> %i.xu, ptr %31, align 8, !tbaa !171
  %i.xv = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.xy = call float @llvm.fmuladd.f32(float %i.xv, float 0.000000e+00, float %i.xc)
  store float %i.cs, ptr %38, align 4, !tbaa !176
  store float %i.xy, ptr %i.xw, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.xz = fadd float %i.xv, %i.xc
  store float %i.ct, ptr %39, align 4, !tbaa !176
  store float %i.xz, ptr %i.xx, align 4, !tbaa !181
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ro, i32 noundef %i.ro, i32 noundef %i.rr, i32 noundef %i.rr)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.ya = load float, ptr %i.cm, align 4, !tbaa !181 ; 2 uses
  %i.yb = fadd float %i.xv, %i.ya
  store float %i.cs, ptr %38, align 4, !tbaa !176
  store float %i.yb, ptr %i.xw, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yc = call float @llvm.fmuladd.f32(float %i.xv, float 2.000000e+00, float %i.ya)
  store float %i.ct, ptr %39, align 4, !tbaa !176
  store float %i.yc, ptr %i.xx, align 4, !tbaa !181
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rr, i32 noundef %i.rr, i32 noundef %i.rq, i32 noundef %i.rq)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yd = load float, ptr %i.cm, align 4, !tbaa !181 ; 2 uses
  %i.ye = call float @llvm.fmuladd.f32(float %i.xv, float 2.000000e+00, float %i.yd)
  store float %i.cs, ptr %38, align 4, !tbaa !176
  store float %i.ye, ptr %i.xw, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yf = call float @llvm.fmuladd.f32(float %i.xv, float 3.000000e+00, float %i.yd)
  store float %i.ct, ptr %39, align 4, !tbaa !176
  store float %i.yf, ptr %i.xx, align 4, !tbaa !181
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rq, i32 noundef %i.rq, i32 noundef %i.rl, i32 noundef %i.rl)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yg = load float, ptr %i.cm, align 4, !tbaa !181 ; 2 uses
  %i.yh = call float @llvm.fmuladd.f32(float %i.xv, float 3.000000e+00, float %i.yg)
  store float %i.cs, ptr %38, align 4, !tbaa !176
  store float %i.yh, ptr %i.xw, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yi = call float @llvm.fmuladd.f32(float %i.xv, float 4.000000e+00, float %i.yg)
  store float %i.ct, ptr %39, align 4, !tbaa !176
  store float %i.yi, ptr %i.xx, align 4, !tbaa !181
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rl, i32 noundef %i.rl, i32 noundef %i.rk, i32 noundef %i.rk)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yj = load float, ptr %i.cm, align 4, !tbaa !181 ; 2 uses
  %i.yk = call float @llvm.fmuladd.f32(float %i.xv, float 4.000000e+00, float %i.yj)
  store float %i.cs, ptr %38, align 4, !tbaa !176
  store float %i.yk, ptr %i.xw, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yl = call float @llvm.fmuladd.f32(float %i.xv, float 5.000000e+00, float %i.yj)
  store float %i.ct, ptr %39, align 4, !tbaa !176
  store float %i.yl, ptr %i.xx, align 4, !tbaa !181
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rk, i32 noundef %i.rk, i32 noundef %i.rw, i32 noundef %i.rw)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.ym = load float, ptr %i.cm, align 4, !tbaa !181 ; 2 uses
  %i.yn = call float @llvm.fmuladd.f32(float %i.xv, float 5.000000e+00, float %i.ym)
  store float %i.cs, ptr %38, align 4, !tbaa !176
  store float %i.yn, ptr %i.xw, align 4, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yo = call float @llvm.fmuladd.f32(float %i.xv, float 6.000000e+00, float %i.ym)
  store float %i.ct, ptr %39, align 4, !tbaa !176
  store float %i.yo, ptr %i.xx, align 4, !tbaa !181
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rw, i32 noundef %i.rw, i32 noundef %i.ro, i32 noundef %i.ro)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  %i.yp = load float, ptr %i.cm, align 4, !tbaa !181 ; 3 uses
  %i.yq = load float, ptr %i.j, align 4, !tbaa !171
  %i.yr = call float @llvm.fmuladd.f32(float %i.yq, float %i.cd, float %i.yp)
  %i.ys = fadd float %i.yr, 5.000000e-01
  %i.yt = fptosi float %i.ys to i32
  %i.yu = sitofp i32 %i.yt to float
  %.sroa.0560.0.vec.insert = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.0560.4.vec.insert = insertelement <2 x float> %.sroa.0560.0.vec.insert, float %i.yp, i64 1
  %i.yv = fadd float %i.cd, %i.yp
  %.sroa.0558.0.vec.insert = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0558.4.vec.insert = insertelement <2 x float> %.sroa.0558.0.vec.insert, float %i.yv, i64 1
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.0560.4.vec.insert, <2 x float> %.sroa.0558.4.vec.insert, float noundef 0.000000e+00)
  %i.yw = fadd float %i.cs, -1.000000e+00         ; 3 uses
  %.sroa.0556.0.vec.insert = insertelement <2 x float> poison, float %i.yw, i64 0
  %.sroa.0556.4.vec.insert = insertelement <2 x float> %.sroa.0556.0.vec.insert, float %i.yu, i64 1 ; 4 uses
  %i.yx = fadd float %i.cg, 1.000000e+00          ; 5 uses
  %.sroa.0554.0.vec.insert = insertelement <2 x float> poison, float %i.yx, i64 0
  %.sroa.0554.4.vec.insert = insertelement <2 x float> %.sroa.0554.0.vec.insert, float %i.cg, i64 1 ; 2 uses
  %i.yy = fadd float %i.bw, 2.000000e+00
  %i.yz = load float, ptr %i.rb, align 4, !tbaa !614 ; 3 uses
  %i.za = fcmp olt float %i.yz, 0.000000e+00
  %i.zb = fcmp ogt float %i.yz, 1.000000e+00
  %i.zc = select i1 %i.zb, float 1.000000e+00, float %i.yz
  %i.zd = call float @llvm.fmuladd.f32(float %i.zc, float 2.550000e+02, float 5.000000e-01)
  %i.ze = select i1 %i.za, float 5.000000e-01, float %i.zd
  %i.zf = fptosi float %i.ze to i32
  %i.zg = fadd float %i.yx, %i.yw                 ; 2 uses
  %i.zh = fadd float %i.zg, 1.000000e+00
  %.sroa.048.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.zh, i64 0
  %i.zi = fadd float %i.yx, 2.000000e+00
  %.sroa.046.0.vec.insert.i = insertelement <2 x float> poison, float %i.zi, i64 0
  %.sroa.046.4.vec.insert.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i, float %i.yx, i64 1 ; 2 uses
  %i.zj = shl i32 %i.zf, 24                       ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar:.preheader
  %i.i = load float, ptr %i.h, align 8, !tbaa !233
  %i.j = load float, ptr %i.g, align 8, !tbaa !232
  %i.k = fsub float %i.i, %i.j                    ; 2 uses
  store float %i.k, ptr %i.e, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.l = fcmp ogt float %i.f, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !834  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !815 ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %.0332.lcssa = phi i1 [ false, %.preheader ], [ %.4, %bb.l ]
  %.0326.lcssa = phi i32 [ 0, %.preheader ], [ %.1327, %bb.l ] ; 6 uses
  %.lcssa440 = phi i32 [ %i.n, %.preheader ], [ %i.bk, %bb.l ]
  %.not359 = icmp eq i32 %.lcssa440, %.0326.lcssa
  br i1 %.not359, label %bb.r, label %bb.m

bb.a:                                             ; preds = %.lr.ph, %bb.l
  %i.u = phi i32 [ %i.n, %.lr.ph ], [ %i.bk, %bb.l ] ; 2 uses
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.bl, %bb.l ] ; 3 uses
  %i.w = phi ptr [ %.pre, %.lr.ph ], [ %i.bm, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.0326444 = phi i32 [ 0, %.lr.ph ], [ %.1327, %bb.l ] ; 7 uses
  %.0332443 = phi i1 [ false, %.lr.ph ], [ %.4, %bb.l ] ; 4 uses
  %i.x = getelementptr inbounds nuw [44 x i8], ptr %i.w, i64 %indvars.iv ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !848
  %i.aa = load i32, ptr %i.q, align 4, !tbaa !806
  %i.ab = icmp slt i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ad = load i8, ptr %i.ac, align 4, !range !165
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond376 = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %or.cond376, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.af = load i32, ptr %i.r, align 4, !tbaa !844
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !849 ; 3 uses
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.r, align 4, !tbaa !844
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = load i32, ptr %i.s, align 8, !tbaa !850
  %i.aj = icmp eq i32 %i.ai, %i.ag
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.s, align 8, !tbaa !850
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !851
  %i.al = icmp eq i32 %i.ak, %i.ag
  br i1 %i.al, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 4, !tbaa !851
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.am = zext i32 %.0326444 to i64               ; 2 uses
  %.not373 = icmp eq i64 %indvars.iv, %i.am
  %.pre528 = sext i32 %.0326444 to i64            ; 2 uses
  br i1 %.not373, label %._crit_edge527, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds [44 x i8], ptr %i.w, i64 %.pre528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.an, ptr noundef nonnull align 4 dereferenceable(41) %i.x, i64 41, i1 false), !tbaa.struct !852
  %.pre505 = load ptr, ptr %i.p, align 8, !tbaa !815
  br label %._crit_edge527

._crit_edge527:                                   ; preds = %bb.h, %bb.i
  %i.ao = phi ptr [ %.pre505, %bb.i ], [ %i.v, %bb.h ] ; 4 uses
  %i.ap = getelementptr inbounds [44 x i8], ptr %i.ao, i64 %.pre528 ; 2 uses
  %i.aq = trunc i32 %.0326444 to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 38
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !853
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %.val385 = load i32, ptr %i.as, align 4, !tbaa !854 ; 3 uses
  %i.at = and i32 %.val385, 64
  %.not.i = icmp ne i32 %i.at, 0                  ; 2 uses
  %i.au = and i32 %.val385, 128
  %.not2.i = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not2.i, i64 1, i64 2
  %i.aw = select i1 %.not.i, i64 0, i64 %i.av
  %i.ax = icmp sgt i32 %.0326444, 0
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge527
  %i.ay = getelementptr [44 x i8], ptr %i.ao, i64 %i.am
  %i.az = getelementptr i8, ptr %i.ay, i64 -40
  %.val384 = load i32, ptr %i.az, align 4, !tbaa !854 ; 2 uses
  %i.ba = and i32 %.val384, 64
  %.not.i388 = icmp eq i32 %i.ba, 0
  %or.cond = and i1 %.not.i, %.not.i388
  %i.bb = and i32 %.val384, 192
  %i.bc = icmp eq i32 %i.bb, 128
  %i.bd = and i32 %.val385, 192
  %i.be = icmp ne i32 %i.bd, 128
  %or.cond3 = and i1 %i.be, %i.bc
  %i.bf = select i1 %or.cond3, i1 true, i1 %or.cond
  %.2334 = select i1 %i.bf, i1 true, i1 %.0332443
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge527
  %.3 = phi i1 [ %.2334, %bb.j ], [ %.0332443, %._crit_edge527 ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.aw ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 16, !tbaa !855
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 16, !tbaa !855
  %i.bj = add nsw i32 %.0326444, 1
  %.pre506 = load i32, ptr %i.m, align 8, !tbaa !834
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.k
  %i.bk = phi i32 [ %.pre506, %bb.k ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.bl = phi ptr [ %i.ao, %bb.k ], [ %i.v, %bb.g ], [ %i.v, %bb.f ]
  %i.bm = phi ptr [ %i.ao, %bb.k ], [ %i.w, %bb.g ], [ %i.w, %bb.f ]
  %.4 = phi i1 [ %.3, %bb.k ], [ %.0332443, %bb.g ], [ %.0332443, %bb.f ] ; 2 uses
  %.1327 = phi i32 [ %i.bj, %bb.k ], [ %.0326444, %bb.g ], [ %.0326444, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bk to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.a, label %._crit_edge, !llvm.loop !857

bb.m:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !858 ; 4 uses
  %i.br = icmp sgt i32 %.0326.lcssa, %i.bq
  br i1 %i.br, label %bb.n, label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = sdiv i32 %i.bq, 2
  %i.bt = add nsw i32 %i.bs, %i.bq
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.o, %bb.n
  %i.bu = phi i32 [ %i.bt, %bb.o ], [ 8, %bb.n ]
  %i.bv = tail call noundef i32 @llvm.smax.i32(i32 %i.bu, i32 %.0326.lcssa) ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, 44
  %i.by = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bx) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !815 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ca, null
  br i1 %.not6.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.cb = load i32, ptr %i.m, align 8, !tbaa !859
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr nonnull align 4 %i.ca, i64 %i.cd, i1 false)
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !815
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ce)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !815
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !858
  br label %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit

_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit:       ; preds = %bb.m, %bb.q
  store i32 %.0326.lcssa, ptr %i.m, align 8, !tbaa !859
  br label %bb.r

bb.r:                                             ; preds = %_ZN8ImVectorI12ImGuiTabItemE6resizeEi.exit, %._crit_edge
  %i.cf = icmp ugt i32 %.0326.lcssa, 1
  %or.cond581 = and i1 %.0332.lcssa, %i.cf
  br i1 %or.cond581, label %bb.s, label %_Z7ImQsortPvmmPFiPKvS1_E.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = sext i32 %.0326.lcssa to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !835
  tail call void @qsort(ptr noundef %i.ci, i64 noundef %i.cg, i64 noundef 44, ptr noundef nonnull @_ZL24TabItemComparerBySectionPKvS0_)
  br label %_Z7ImQsortPvmmPFiPKvS1_E.exit

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.s, %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 3308 ; 9 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !412 ; 3 uses
  %i.cl = load i32, ptr %7, align 16, !tbaa !855  ; 10 uses
  %9 = icmp sgt i32 %i.cl, 0                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cn = load i32, ptr %i.cm, align 16, !tbaa !855 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cp = load i32, ptr %i.co, align 16           ; 8 uses
  %i.cq = add nsw i32 %i.cp, %i.cn
  %i.cr = icmp sgt i32 %i.cq, 0
  %or.cond583 = select i1 %9, i1 %i.cr, i1 false
  %10 = select i1 %or.cond583, float %i.ck, float 0.000000e+00 ; 5 uses
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %10, ptr %11, align 4, !tbaa !860
  %12 = icmp sgt i32 %i.cn, 0                     ; 2 uses
  %13 = icmp sgt i32 %i.cp, 0                     ; 2 uses
  %or.cond7 = select i1 %12, i1 %13, i1 false
  %14 = select i1 %or.cond7, float %i.ck, float 0.000000e+00 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %14, ptr %i.cs, align 4, !tbaa !860
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !861 ; 2 uses
  %.not360 = icmp eq i32 %i.cu, 0
  br i1 %.not360, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  store i32 0, ptr %i.ct, align 8, !tbaa !861
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !851 ; 3 uses
  %.not361 = icmp eq i32 %i.cw, 0
  br i1 %.not361, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !850
  store i32 0, ptr %i.cv, align 4, !tbaa !851
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1343 = phi i32 [ %i.cw, %bb.v ], [ %i.cu, %bb.u ] ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !862 ; 2 uses
  %.not362 = icmp eq i32 %i.cz, 0
  br i1 %.not362, label %bb.af, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.da = load i32, ptr %i.m, align 8, !tbaa !834 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !815 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.da to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, label %bb.y, !llvm.loop !863

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.x ] ; 3 uses
  %i.de = getelementptr inbounds nuw [44 x i8], ptr %i.dd, i64 %indvars.iv.i.i ; 5 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !849
  %i.dg = icmp eq i32 %i.df, %i.cz
  br i1 %i.dg, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, label %bb.x

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i: ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !854 ; 2 uses
  %i.dj = and i32 %i.di, 32
  %.not.i391 = icmp eq i32 %i.dj, 0
  br i1 %.not.i391, label %bb.z, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.z:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i
  %i.dk = trunc i64 %indvars.iv.i.i to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dm = load i16, ptr %i.dl, align 8, !tbaa !864 ; 2 uses
  %i.dn = sext i16 %i.dm to i32                   ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.dk                ; 2 uses
  %or.cond.i = icmp ult i32 %i.do, %i.da
  br i1 %or.cond.i, label %bb.aa, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [44 x i8], ptr %i.dd, i64 %i.dp ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !854 ; 2 uses
  %i.dt = and i32 %i.ds, 32
  %.not35.i = icmp eq i32 %i.dt, 0
  br i1 %.not35.i, label %bb.ab, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.du = xor i32 %i.ds, %i.di
  %i.dv = and i32 %i.du, 192
  %.not36.i = icmp eq i32 %i.dv, 0
  br i1 %.not36.i, label %bb.ac, label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) %i.de, i64 44, i1 false), !tbaa.struct !852
  %i.dw = icmp sgt i16 %i.dm, 0                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 44
  %i.dy = select i1 %i.dw, ptr %i.dx, ptr %i.dq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 44
  %i.ea = select i1 %i.dw, ptr %i.de, ptr %i.dz
  %i.eb = tail call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = mul nuw nsw i64 %i.ec, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr nonnull align 4 %i.dy, i64 %i.ed, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.dq, ptr noundef nonnull align 4 dereferenceable(41) %6, i64 41, i1 false), !tbaa.struct !852
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !832
  %i.eg = and i32 %i.ef, 4194304
  %.not37.i = icmp eq i32 %i.eg, 0
  br i1 %.not37.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.eh = load i32, ptr %i.cy, align 4, !tbaa !862 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !850
  %i.ek = icmp eq i32 %i.eh, %i.ej
  %spec.select377 = select i1 %i.ek, i32 %i.eh, i32 %.1343
  br label %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread

_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread: ; preds = %bb.x, %bb.aa, %.preheader.i.i, %bb.z, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i, %bb.ab, %bb.ae
  %.2344 = phi i32 [ %spec.select377, %bb.ae ], [ %.1343, %bb.ab ], [ %.1343, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i ], [ %.1343, %bb.z ], [ %.1343, %.preheader.i.i ], [ %.1343, %bb.aa ], [ %.1343, %bb.x ]
  store i32 0, ptr %i.cy, align 4, !tbaa !862
  br label %bb.af

bb.af:                                            ; preds = %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread, %bb.w
  %.3345 = phi i32 [ %.2344, %_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar.exit.thread ], [ %.1343, %bb.w ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !832
  %i.en = and i32 %i.em, 4
  %.not363 = icmp eq i32 %i.en, 0
  br i1 %.not363, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 5312
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4568
  %i.es = load float, ptr %i.er, align 8, !tbaa !189
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 3288
  %i.eu = load float, ptr %i.et, align 8, !tbaa !229 ; 2 uses
  %i.ev = fadd float %i.es, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 280 ; 4 uses
  %i.ex = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.ey = load float, ptr %i.g, align 8, !tbaa !828
  %i.ez = fsub float %i.ey, %i.eu
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !865
  store float %i.ez, ptr %i.ew, align 8
  %.sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 284
  store i32 %i.fb, ptr %.sroa_idx26.i, align 4
  %i.fc = load float, ptr %i.g, align 8, !tbaa !828
  %i.fd = fadd float %i.ev, %i.fc
  store float %i.fd, ptr %i.g, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 3532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !231
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !255
  %i.fh = fmul float %i.fg, 5.000000e-01
  store float %i.fh, ptr %i.ff, align 4, !tbaa !255
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.fi = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.162, ptr noundef null, i32 noundef 80)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 2)
  br i1 %i.fi, label %.preheader.i, label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread

_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread: ; preds = %bb.ag
  store i64 %i.ex, ptr %i.ew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.ao

.preheader.i:                                     ; preds = %bb.ag
  %i.fj = load i32, ptr %i.m, align 8, !tbaa !834 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.aj

._crit_edge.i:                                    ; preds = %bb.am, %.preheader.i
  %.025.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.2.i394, %bb.am ] ; 2 uses
  %i.fo = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 9720 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !354
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.fs = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.fr) ; 0 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 5312
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !11
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !358
  %i.fx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fw, ptr noundef nonnull dereferenceable(1) %i.a) #40
  %.not.i.i392 = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i392, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.fy = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.19) ; 0 uses
  br label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit

bb.ai:                                            ; preds = %._crit_edge.i
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit

bb.aj:                                            ; preds = %bb.am, %.lr.ph.i
  %i.fz = phi i32 [ %i.fj, %.lr.ph.i ], [ %i.gp, %bb.am ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.am ] ; 2 uses
  %.02528.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i394, %bb.am ] ; 2 uses
  %i.ga = load ptr, ptr %i.fl, align 8, !tbaa !815
  %i.gb = getelementptr inbounds nuw [44 x i8], ptr %i.ga, i64 %indvars.iv.i ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !854
  %i.ge = and i32 %i.gd, 2097152
  %.not.i393 = icmp eq i32 %i.ge, 0
  br i1 %.not.i393, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !866 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, -1
  br i1 %i.gh, label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = load ptr, ptr %i.fm, align 8, !tbaa !867
  %i.gj = sext i32 %i.gg to i64
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 %i.gj
  br label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i

_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i: ; preds = %bb.al, %bb.ak
  %.0.i.i = phi ptr [ %i.gk, %bb.al ], [ @.str.113, %bb.ak ]
  %i.gl = load i32, ptr %i.fn, align 8, !tbaa !850
  %i.gm = load i32, ptr %i.gb, align 4, !tbaa !849
  %i.gn = icmp eq i32 %i.gl, %i.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !171
  %i.go = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %.0.i.i, i1 noundef zeroext %i.gn, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %spec.select.i = select i1 %i.go, ptr %i.gb, ptr %.02528.i
  %.pre.i = load i32, ptr %i.m, align 8, !tbaa !834
  br label %bb.am

bb.am:                                            ; preds = %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i, %bb.aj
  %i.gp = phi i32 [ %.pre.i, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i ], [ %i.fz, %bb.aj ] ; 2 uses
  %.2.i394 = phi ptr [ %spec.select.i, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit.i ], [ %.02528.i, %bb.aj ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next.i, %i.gq
  br i1 %i.gr, label %bb.aj, label %._crit_edge.i, !llvm.loop !868

_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  store i64 %i.ex, ptr %i.ew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.not364 = icmp eq ptr %.025.lcssa.i, null
  br i1 %.not364, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit
  %i.gs = load i32, ptr %.025.lcssa.i, align 4, !tbaa !849 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gs, ptr %i.gt, align 8, !tbaa !850
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit, %bb.an, %bb.af
  %.5 = phi i32 [ %.3345, %bb.af ], [ %i.gs, %bb.an ], [ %.3345, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit ], [ %.3345, %_ZN5ImGuiL24TabBarTabListPopupButtonEP11ImGuiTabBar.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 0, ptr %i.b, align 4, !tbaa !192
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gv = add nsw i32 %i.cp, %i.cl                ; 3 uses
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !192
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.cl, ptr %i.gw, align 4, !tbaa !192
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 9152 ; 2 uses
  %i.gy = load i32, ptr %i.m, align 8, !tbaa !834 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 9156 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !869 ; 4 uses
  %i.hb = icmp sgt i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.ap, label %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i395 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i395, label %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hc = sdiv i32 %i.ha, 2
  %i.hd = add nsw i32 %i.hc, %i.ha
  br label %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i: ; preds = %bb.aq, %bb.ap
  %i.he = phi i32 [ %i.hd, %bb.aq ], [ 8, %bb.ap ]
  %i.hf = call noundef i32 @llvm.smax.i32(i32 %i.he, i32 %i.gy) ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul nsw i64 %i.hg, 12
  %i.hi = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.hh) ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 9160 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !870 ; 2 uses
  %.not6.i.i396 = icmp eq ptr %i.hk, null
  br i1 %.not6.i.i396, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i
  %i.hl = load i32, ptr %i.gx, align 8, !tbaa !871
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul nsw i64 %i.hm, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hi, ptr nonnull align 4 %i.hk, i64 %i.hn, i1 false)
  %i.ho = load ptr, ptr %i.hj, align 8, !tbaa !870
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ho)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNK8ImVectorI20ImGuiShrinkWidthItemE14_grow_capacityEi.exit.i
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !870
  store i32 %i.hf, ptr %i.gz, align 4, !tbaa !869
  br label %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit

_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit: ; preds = %bb.ao, %bb.as
  store i32 %i.gy, ptr %i.gx, align 8, !tbaa !871
  %i.hp = load i32, ptr %i.el, align 8, !tbaa !832 ; 2 uses
  %i.hq = and i32 %i.hp, 128
  %.not365 = icmp eq i32 %i.hq, 0
  br i1 %.not365, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 3384
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !872
  br label %bb.au

bb.au:                                            ; preds = %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit, %bb.at
  %i.ht = phi float [ %i.hs, %bb.at ], [ 1.000000e+00, %_ZN8ImVectorI20ImGuiShrinkWidthItemE6resizeEi.exit ] ; 3 uses
  %i.hu = load i32, ptr %i.m, align 8, !tbaa !834
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph453, label %._crit_edge454

.lr.ph453:                                        ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 8684
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 3380
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 9160
  br label %bb.av

._crit_edge454.loopexit:                          ; preds = %bb.bg
  %.phi.trans.insert512 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.phi.trans.insert516 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ic = load <2 x float>, ptr %.phi.trans.insert512, align 4, !tbaa !171
  %i.id = load <2 x float>, ptr %.phi.trans.insert516, align 4, !tbaa !171
  %.phi.trans.insert520 = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ie = load <2 x float>, ptr %.phi.trans.insert520, align 4, !tbaa !171
  %.pre524 = load i32, ptr %i.el, align 8, !tbaa !832
  %i.if = fadd <2 x float> %i.ie, zeroinitializer
  %i.ig = icmp sgt i32 %i.mj, 1
  br label %._crit_edge454

._crit_edge454:                                   ; preds = %._crit_edge454.loopexit, %bb.au
  %i.ih = phi i32 [ %i.hp, %bb.au ], [ %.pre524, %._crit_edge454.loopexit ] ; 3 uses
  %.6.lcssa = phi i32 [ %.5, %bb.au ], [ %.7, %._crit_edge454.loopexit ] ; 3 uses
  %.0340.lcssa = phi ptr [ null, %bb.au ], [ %.1341, %._crit_edge454.loopexit ] ; 2 uses
  %.0337.lcssa = phi i1 [ false, %bb.au ], [ %spec.select379, %._crit_edge454.loopexit ]
  %.lcssa436 = phi i1 [ false, %bb.au ], [ %i.ig, %._crit_edge454.loopexit ]
  %i.ii = phi <2 x float> [ zeroinitializer, %bb.au ], [ %i.if, %._crit_edge454.loopexit ] ; 3 uses
  %i.ij = phi <2 x float> [ zeroinitializer, %bb.au ], [ %i.ic, %._crit_edge454.loopexit ]
  %i.ik = phi <2 x float> [ zeroinitializer, %bb.au ], [ %i.id, %._crit_edge454.loopexit ]
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.in = insertelement <2 x float> poison, float %10, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fadd <2 x float> %i.ij, %i.io           ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ir = insertelement <2 x float> poison, float %14, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fadd <2 x float> %i.ik, %i.is           ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.iv = fadd <2 x float> %i.ip, zeroinitializer
  %i.iw = fadd <2 x float> %i.iv, %i.it
  %i.ix = fadd <2 x float> %i.iw, %i.ii           ; 2 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  store float %i.iy, ptr %i.il, align 8, !tbaa !873
  %i.iz = and i32 %i.ih, 512
  %.not366.not = icmp eq i32 %i.iz, 0
  %i.ja = and i32 %i.ih, 640
  %i.jb = icmp ne i32 %i.ja, 0
  %i.jc = extractelement <2 x float> %i.ix, i64 1
  br i1 %.not366.not, label %bb.bi, label %bb.bh

bb.av:                                            ; preds = %.lr.ph453, %bb.bg
  %indvars.iv490 = phi i64 [ 0, %.lr.ph453 ], [ %indvars.iv.next491, %bb.bg ] ; 3 uses
  %.0337450 = phi i1 [ false, %.lr.ph453 ], [ %spec.select379, %bb.bg ]
  %.0339449 = phi i32 [ -1, %.lr.ph453 ], [ %i.li, %bb.bg ]
  %.0340448 = phi ptr [ null, %.lr.ph453 ], [ %.1341, %bb.bg ] ; 4 uses
  %.6447 = phi i32 [ %.5, %.lr.ph453 ], [ %.7, %bb.bg ] ; 2 uses
  %i.jd = load ptr, ptr %i.hw, align 8, !tbaa !815
  %i.je = getelementptr inbounds nuw [44 x i8], ptr %i.jd, i64 %indvars.iv490 ; 9 uses
  %i.jf = icmp eq ptr %.0340448, null
  br i1 %i.jf, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = getelementptr inbounds nuw i8, ptr %.0340448, i64 12
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !874
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !874
  %i.jk = icmp slt i32 %i.jh, %i.jj
  br i1 %i.jk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !854
  %i.jn = and i32 %i.jm, 2097152
  %.not372 = icmp eq i32 %i.jn, 0
  %spec.select378 = select i1 %.not372, ptr %i.je, ptr %.0340448
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.1341 = phi ptr [ %spec.select378, %bb.ax ], [ %.0340448, %bb.aw ] ; 2 uses
  %i.jo = load i32, ptr %i.je, align 4, !tbaa !849 ; 3 uses
  %i.jp = load i32, ptr %i.hx, align 8, !tbaa !850
  %i.jq = icmp eq i32 %i.jo, %i.jp
  %spec.select379 = select i1 %i.jq, i1 true, i1 %.0337450 ; 2 uses
  %i.jr = icmp eq i32 %.6447, 0
  br i1 %i.jr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.js = load i32, ptr %i.hy, align 4, !tbaa !269
  %i.jt = icmp eq i32 %i.js, %i.jo
  %spec.select380 = select i1 %i.jt, i32 %i.jo, i32 0
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.7 = phi i32 [ %.6447, %bb.ay ], [ %spec.select380, %bb.az ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !866 ; 2 uses
  %i.jw = icmp eq i32 %i.jv, -1
  br i1 %i.jw, label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jx = load ptr, ptr %i.hz, align 8, !tbaa !867
  %i.jy = sext i32 %i.jv to i64
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 %i.jy
  br label %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit

_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit: ; preds = %bb.ba, %bb.bb
  %.0.i = phi ptr [ %i.jz, %bb.bb ], [ @.str.113, %bb.ba ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.je, i64 4 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !875 ; 2 uses
  %i.kd = fcmp ult float %i.kc, 0.000000e+00
  %.pre511 = load i32, ptr %i.ka, align 4, !tbaa !854 ; 2 uses
  br i1 %i.kd, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit
  %i.ke = and i32 %.pre511, 1048577
  %spec.select381.not = icmp eq i32 %i.ke, 1048576
  %i.kf = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 3 uses
  %i.kg = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.0.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 3284
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !357 ; 2 uses
  br i1 %spec.select381.not, label %_ZN5ImGui15TabItemCalcSizeEPKcb.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 3308
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !412
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 4568
  %i.km = load float, ptr %i.kl, align 8, !tbaa !189
  %i.kn = fadd float %i.kk, %i.km
  br label %_ZN5ImGui15TabItemCalcSizeEPKcb.exit

_ZN5ImGui15TabItemCalcSizeEPKcb.exit:             ; preds = %bb.bc, %bb.bd
  %.sink.i = phi float [ %i.kn, %bb.bd ], [ 1.000000e+00, %bb.bc ]
  %i.ko = fadd float %i.ki, %.sink.i
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.kg, i64 0
  %i.kp = fadd float %.sroa.0.0.vec.extract.i, %i.ki
  %storemerge.i = fadd float %i.kp, %i.ko         ; 2 uses
  %i.kq = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4568
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !189
  %i.kt = fmul float %i.ks, 2.000000e+01          ; 2 uses
  %i.ku = fcmp olt float %storemerge.i, %i.kt
  %i.kv = select i1 %i.ku, float %storemerge.i, float %i.kt
  %.pre510 = load i32, ptr %i.ka, align 4, !tbaa !854
  br label %bb.be

bb.be:                                            ; preds = %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit
  %i.kw = phi i32 [ %.pre510, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit ], [ %.pre511, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit ] ; 3 uses
  %i.kx = phi float [ %i.kv, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit ], [ %i.kc, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.je, i64 24 ; 2 uses
  store float %i.kx, ptr %i.ky, align 4, !tbaa !876
  %i.kz = and i32 %i.kw, 2097152
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lb = load float, ptr %i.ia, align 4, !tbaa !877 ; 2 uses
  %i.lc = fcmp oge float %i.kx, %i.lb
  %i.ld = select i1 %i.lc, float %i.kx, float %i.lb ; 2 uses
  store float %i.ld, ptr %i.ky, align 4, !tbaa !876
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.le = phi float [ %i.ld, %bb.bf ], [ %i.kx, %bb.be ] ; 7 uses
  %i.lf = and i32 %i.kw, 64
  %.not.i397 = icmp eq i32 %i.lf, 0
  %i.lg = and i32 %i.kw, 128
  %.not2.i398 = icmp eq i32 %i.lg, 0
  %i.lh = select i1 %.not2.i398, i32 1, i32 2
  %i.li = select i1 %.not.i397, i32 %i.lh, i32 0  ; 3 uses
  %i.lj = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.lj
  %i.ll = icmp eq i32 %i.li, %.0339449
  %i.lm = select i1 %i.ll, float %i.ck, float 0.000000e+00
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 4 ; 2 uses
  %i.lo = fcmp olt float %i.le, %i.ht
  %i.lp = select i1 %i.lo, float %i.le, float %i.ht
  %i.lq = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.lp, i64 1
  %i.lu = fadd <2 x float> %i.lr, %i.lt
  %i.lv = load <2 x float>, ptr %i.ln, align 4, !tbaa !171
  %i.lw = fadd <2 x float> %i.lv, %i.lu
  store <2 x float> %i.lw, ptr %i.ln, align 4, !tbaa !171
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lj ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !192 ; 2 uses
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !192
  %i.ma = load ptr, ptr %i.ib, align 8, !tbaa !870
  %i.mb = sext i32 %i.ly to i64
  %i.mc = getelementptr inbounds [12 x i8], ptr %i.ma, i64 %i.mb ; 3 uses
  %i.md = trunc nuw nsw i64 %indvars.iv490 to i32
  store i32 %i.md, ptr %i.mc, align 4, !tbaa !346
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store float %i.le, ptr %i.me, align 4, !tbaa !343
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store float %i.le, ptr %i.mf, align 4, !tbaa !339
  %i.mg = fcmp oge float %i.le, 1.000000e+00
  %i.mh = select i1 %i.mg, float %i.le, float 1.000000e+00
  %i.mi = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  store float %i.mh, ptr %i.mi, align 4, !tbaa !878
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %i.mj = load i32, ptr %i.m, align 8, !tbaa !834 ; 2 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next491, %i.mk
  br i1 %i.ml, label %bb.av, label %._crit_edge454.loopexit, !llvm.loop !879

bb.bh:                                            ; preds = %._crit_edge454
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !880
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge454, %bb.bh
  %i.mo = phi float [ %i.mn, %bb.bh ], [ %i.jc, %._crit_edge454 ]
  %i.mp = load float, ptr %i.h, align 8, !tbaa !233 ; 3 uses
  %i.mq = load float, ptr %i.g, align 8, !tbaa !232
  %i.mr = fsub float %i.mp, %i.mq
  %i.ms = fcmp ogt float %i.mo, %i.mr
  %or.cond430 = and i1 %.lcssa436, %i.ms
  br i1 %or.cond430, label %bb.bj, label %.thread

.thread:                                          ; preds = %bb.bi
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  store i8 0, ptr %i.mt, align 2, !tbaa !881
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.mu = and i32 %i.ih, 16
  %.not368 = icmp eq i32 %i.mu, 0
  %spec.select382 = and i1 %.not368, %i.jb        ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 5 uses
  %i.mw = zext i1 %spec.select382 to i8
  store i8 %i.mw, ptr %i.mv, align 2, !tbaa !881
  br i1 %spec.select382, label %bb.bk, label %bb.bs
end_hunk_2
begin_hunk_3_@_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar:.preheader
bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i.i404
  %indvars.iv.i.i406 = phi i64 [ 0, %.lr.ph.i.i404 ], [ %indvars.iv.next.i.i407, %bb.bm ] ; 3 uses
  %i.og = getelementptr inbounds nuw [44 x i8], ptr %i.of, i64 %indvars.iv.i.i406
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !849
  %i.oi = icmp eq i32 %i.oh, %i.ob
  br i1 %i.oi, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409, label %bb.bm

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409: ; preds = %bb.bn
  %i.oj = trunc i64 %indvars.iv.i.i406 to i32     ; 2 uses
  %i.ok = add nsw i32 %.156.i, %i.oj
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409
  %.078.i = phi i32 [ %i.ok, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409 ], [ %i.or, %bb.bp ] ; 3 uses
  %.05177.i = phi i32 [ %i.oj, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409 ], [ %i.os, %bb.bp ] ; 2 uses
  %or.cond89.i = icmp ult i32 %.078.i, %i.oc
  %i.ol = select i1 %or.cond89.i, i32 %.078.i, i32 %.05177.i
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [44 x i8], ptr %i.of, i64 %i.om ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !854
  %i.oq = and i32 %i.op, 2097152
  %.not60.i = icmp eq i32 %i.oq, 0
  br i1 %.not60.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.or = add nsw i32 %.078.i, %.156.i            ; 2 uses
  %i.os = add nsw i32 %.05177.i, %.156.i
  %or.cond.i410 = icmp ult i32 %i.or, %i.oc
  br i1 %or.cond.i410, label %bb.bo, label %bb.bq, !llvm.loop !883

_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread: ; preds = %bb.bm, %bb.bk, %bb.bl, %.preheader.i.i402
  store i64 %i.ni, ptr %i.nh, align 8
  %i.ot = fadd float %i.ng, 1.000000e+00
  %i.ou = load float, ptr %i.h, align 8, !tbaa !882
  %i.ov = fsub float %i.ou, %i.ot                 ; 2 uses
  store float %i.ov, ptr %i.h, align 8, !tbaa !882
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store i64 %i.ni, ptr %i.nh, align 8
  %i.ox = fadd float %i.ng, 1.000000e+00
  %i.oy = load float, ptr %i.h, align 8, !tbaa !882
  %i.oz = fsub float %i.oy, %i.ox                 ; 3 uses
  store float %i.oz, ptr %i.h, align 8, !tbaa !882
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.pa = load i32, ptr %i.on, align 4, !tbaa !849 ; 3 uses
  %i.pb = load i32, ptr %i.ow, align 4, !tbaa !854
  %i.pc = and i32 %i.pb, 2097152
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 %i.pa, ptr %i.oa, align 8, !tbaa !850
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread, %.thread, %bb.br, %bb.bq, %bb.bj
  %i.pe = phi float [ %i.mp, %bb.bj ], [ %i.oz, %bb.br ], [ %i.oz, %bb.bq ], [ %i.ov, %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread ], [ %i.mp, %.thread ]
  %i.pf = phi ptr [ %i.mv, %bb.bj ], [ %i.mv, %bb.br ], [ %i.mv, %bb.bq ], [ %i.mv, %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread ], [ %i.mt, %.thread ]
  %.9 = phi i32 [ %.6.lcssa, %bb.bj ], [ %i.pa, %bb.br ], [ %i.pa, %bb.bq ], [ %.6.lcssa, %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread ], [ %.6.lcssa, %.thread ] ; 2 uses
  %i.pg = icmp eq i32 %.9, 0
  %or.cond9 = select i1 %i.pg, i1 %i.l, i1 false
  br i1 %or.cond9, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !850
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.10 = phi i32 [ %i.pi, %bb.bt ], [ %.9, %bb.bs ] ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.ip, %i.ii
  %i.pj = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.pk = load float, ptr %i.g, align 8, !tbaa !232
  %i.pl = fsub float %i.pe, %i.pk                 ; 3 uses
  %i.pm = fcmp olt float %i.pj, %i.pl             ; 4 uses
  br i1 %i.pm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.pn = extractelement <2 x float> %i.ip, i64 0
  %i.po = extractelement <2 x float> %i.ii, i64 0
  %i.pp = fsub float %i.pl, %i.pn
  %i.pq = fsub float %i.pp, %i.po
  %i.pr = extractelement <2 x float> %i.it, i64 0
  %i.ps = fsub float %i.pr, %i.pq                 ; 2 uses
  %i.pt = fcmp oge float %i.ps, 0.000000e+00
  %i.pu = select i1 %i.pt, float %i.ps, float 0.000000e+00
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.pv = fsub float %i.pj, %i.pl
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0329 = phi float [ %i.pu, %bb.bv ], [ %i.pv, %bb.bw ] ; 2 uses
  %i.pw = load i32, ptr %i.el, align 8, !tbaa !832
  %i.px = and i32 %i.pw, 384
  %i.py = icmp eq i32 %i.px, 0
  %.not = and i1 %i.pm, %i.py
  %i.pz = fcmp ult float %.0329, 1.000000e+00
  %brmerge = or i1 %i.pz, %.not
  br i1 %brmerge, label %.loopexit565, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qa = select i1 %i.pm, i32 %i.cn, i32 %i.gv   ; 3 uses
  %i.qb = select i1 %i.pm, i32 %i.gv, i32 0       ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.c, i64 9160 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !884
  %i.qe = sext i32 %i.qb to i64                   ; 2 uses
  %i.qf = getelementptr inbounds [12 x i8], ptr %i.qd, i64 %i.qe
  call void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemiff(ptr noundef %i.qf, i32 noundef %i.qa, float noundef %.0329, float noundef %i.ht)
  %i.qg = icmp sgt i32 %i.qa, 0
  br i1 %i.qg, label %.lr.ph464, label %.loopexit565

.lr.ph464:                                        ; preds = %bb.by
  %i.qh = add nsw i32 %i.qb, %i.qa
  %i.qi = load ptr, ptr %i.qc, align 8, !tbaa !870
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qk = sext i32 %i.qh to i64
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph464, %bb.cb
  %indvars.iv495 = phi i64 [ %i.qe, %.lr.ph464 ], [ %indvars.iv.next496, %bb.cb ] ; 2 uses
  %i.ql = getelementptr inbounds [12 x i8], ptr %i.qi, i64 %indvars.iv495 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !339
  %i.qo = fptosi float %i.qn to i32               ; 2 uses
  %i.qp = icmp slt i32 %i.qo, 0
  br i1 %i.qp, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qq = load ptr, ptr %i.qj, align 8, !tbaa !815
  %i.qr = load i32, ptr %i.ql, align 4, !tbaa !346
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [44 x i8], ptr %i.qq, i64 %i.qs ; 2 uses
  %i.qu = uitofp nneg i32 %i.qo to float          ; 2 uses
  %i.qv = fcmp ole float %i.qu, 1.000000e+00
  %i.qw = select i1 %i.qv, float 1.000000e+00, float %i.qu ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qt, i64 4
  %.val = load i32, ptr %i.qx, align 4, !tbaa !854 ; 2 uses
  %i.qy = and i32 %.val, 64
  %.not.i411 = icmp eq i32 %i.qy, 0
  %i.qz = and i32 %.val, 128
  %.not2.i412 = icmp eq i32 %i.qz, 0
  %i.ra = select i1 %.not2.i412, i64 1, i64 2
  %i.rb = select i1 %.not.i411, i64 %i.ra, i64 0
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 20 ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !878
  %i.re = fsub float %i.rd, %i.qw
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.rb
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4 ; 2 uses
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !885
  %i.ri = fsub float %i.rh, %i.re
  store float %i.ri, ptr %i.rg, align 4, !tbaa !885
  store float %i.qw, ptr %i.rc, align 4, !tbaa !878
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, 1 ; 2 uses
  %i.rj = icmp slt i64 %indvars.iv.next496, %i.qk
  br i1 %i.rj, label %bb.bz, label %.loopexit565, !llvm.loop !886

bb.cc:                                            ; preds = %._crit_edge469.2
  %i.rk = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !448 ; 2 uses
  %.not6.i.i414 = icmp eq ptr %i.rm, null
  br i1 %.not6.i.i414, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rn = load i32, ptr %i.vu, align 8, !tbaa !449
  %i.ro = sext i32 %i.rn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rk, ptr nonnull align 1 %i.rm, i64 %i.ro, i1 false)
  %i.rp = load ptr, ptr %i.rl, align 8, !tbaa !448
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.rp)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !448
  store i32 0, ptr %i.vv, align 4, !tbaa !447
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %._crit_edge469.2, %bb.ce
  store i32 0, ptr %i.vu, align 8, !tbaa !449
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !806
  %i.rs = add nsw i32 %i.rr, 1
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !585
  %i.rv = icmp slt i32 %i.rs, %i.ru
  %or.cond13 = select i1 %.0337.lcssa, i1 true, i1 %i.rv
  %.phi.trans.insert525 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %or.cond13, label %bb.cw, label %.thread563

.loopexit565:                                     ; preds = %bb.cb, %bb.bx, %bb.by
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %9, label %.lr.ph468, label %.loopexit564

.lr.ph468:                                        ; preds = %.loopexit565
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !815 ; 3 uses
  %i.sa = add nsw i32 %i.cl, -1
  %i.sb = zext nneg i32 %i.sa to i64              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cl to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.sc = icmp eq i32 %i.cl, 1
  br i1 %i.sc, label %.epil.preheader, label %.lr.ph468.new

.lr.ph468.new:                                    ; preds = %.lr.ph468
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.cr

.loopexit564.loopexit.unr-lcssa:                  ; preds = %bb.cv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit564, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit564.loopexit.unr-lcssa, %.lr.ph468
  %indvars.iv498.epil.init = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next499.1611, %.loopexit564.loopexit.unr-lcssa ] ; 2 uses
  %.2465.epil.init = phi float [ 0.000000e+00, %.lr.ph468 ], [ %i.wr, %.loopexit564.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod608 = trunc i32 %i.cl to i1
  call void @llvm.assume(i1 %lcmp.mod608)
  %i.sd = getelementptr inbounds nuw [44 x i8], ptr %i.rz, i64 %indvars.iv498.epil.init ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store float %.2465.epil.init, ptr %i.se, align 4, !tbaa !887
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  store i32 -1, ptr %i.sf, align 4, !tbaa !866
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 20
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !878
  %i.si = icmp samesign ult i64 %indvars.iv498.epil.init, %i.sb
  br i1 %i.si, label %bb.cf, label %.loopexit564.loopexit.epilog-lcssa

bb.cf:                                            ; preds = %.epil.preheader
  %i.sj = load float, ptr %i.cj, align 4, !tbaa !412
  br label %.loopexit564.loopexit.epilog-lcssa

.loopexit564.loopexit.epilog-lcssa:               ; preds = %bb.cf, %.epil.preheader
  %i.sk = phi float [ %i.sj, %bb.cf ], [ 0.000000e+00, %.epil.preheader ]
  %i.sl = fadd float %i.sh, %i.sk
  %i.sm = fadd float %.2465.epil.init, %i.sl
  br label %.loopexit564

.loopexit564:                                     ; preds = %.loopexit564.loopexit.epilog-lcssa, %.loopexit564.loopexit.unr-lcssa, %.loopexit565
  %.2.lcssa = phi float [ 0.000000e+00, %.loopexit565 ], [ %i.wr, %.loopexit564.loopexit.unr-lcssa ], [ %i.sm, %.loopexit564.loopexit.epilog-lcssa ]
  %i.sn = load float, ptr %i.im, align 4, !tbaa !885 ; 5 uses
  %i.so = fadd float %i.sn, %10                   ; 2 uses
  %i.sp = fcmp oge float %i.so, 0.000000e+00
  %i.sq = select i1 %i.sp, float %i.so, float 0.000000e+00
  %i.sr = fadd float %i.sq, 0.000000e+00
  %i.ss = fadd float %.2.lcssa, %10               ; 3 uses
  br i1 %12, label %.lr.ph468.1, label %.loopexit

.lr.ph468.1:                                      ; preds = %.loopexit564
  %i.st = load ptr, ptr %i.ry, align 8, !tbaa !815
  %i.su = add nsw i32 %i.cn, -1
  %i.sv = sext i32 %i.cl to i64
  %i.sw = zext nneg i32 %i.su to i64              ; 3 uses
  %wide.trip.count.1 = zext nneg i32 %i.cn to i64 ; 2 uses
  %invariant.gep = getelementptr [44 x i8], ptr %i.st, i64 %i.sv ; 3 uses
  %xtraiter613 = and i64 %wide.trip.count.1, 1
  %i.sx = icmp eq i32 %i.cn, 1
  br i1 %i.sx, label %.epil.preheader612, label %.lr.ph468.1.new

.lr.ph468.1.new:                                  ; preds = %.lr.ph468.1
  %unroll_iter617 = and i64 %wide.trip.count.1, 2147483646
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %.lr.ph468.1.new
  %indvars.iv498.1 = phi i64 [ 0, %.lr.ph468.1.new ], [ %indvars.iv.next499.1.1, %bb.ck ] ; 4 uses
  %.2465.1 = phi float [ %i.ss, %.lr.ph468.1.new ], [ %i.tp, %bb.ck ] ; 2 uses
  %niter618 = phi i64 [ 0, %.lr.ph468.1.new ], [ %niter618.next.1, %bb.ck ]
  %gep = getelementptr [44 x i8], ptr %invariant.gep, i64 %indvars.iv498.1 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store float %.2465.1, ptr %i.sy, align 4, !tbaa !887
  %i.sz = getelementptr inbounds nuw i8, ptr %gep, i64 32
  store i32 -1, ptr %i.sz, align 4, !tbaa !866
  %i.ta = getelementptr inbounds nuw i8, ptr %gep, i64 20
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !878
  %i.tc = icmp samesign ult i64 %indvars.iv498.1, %i.sw
  br i1 %i.tc, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.td = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.te = phi float [ %i.td, %bb.ch ], [ 0.000000e+00, %bb.cg ]
  %i.tf = fadd float %i.tb, %i.te
  %i.tg = fadd float %.2465.1, %i.tf              ; 2 uses
  %indvars.iv.next499.1 = or disjoint i64 %indvars.iv498.1, 1 ; 2 uses
  %gep.1 = getelementptr [44 x i8], ptr %invariant.gep, i64 %indvars.iv.next499.1 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %gep.1, i64 16
  store float %i.tg, ptr %i.th, align 4, !tbaa !887
  %i.ti = getelementptr inbounds nuw i8, ptr %gep.1, i64 32
  store i32 -1, ptr %i.ti, align 4, !tbaa !866
  %i.tj = getelementptr inbounds nuw i8, ptr %gep.1, i64 20
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !878
  %i.tl = icmp samesign ult i64 %indvars.iv.next499.1, %i.sw
  br i1 %i.tl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tm = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.tn = phi float [ %i.tm, %bb.cj ], [ 0.000000e+00, %bb.ci ]
  %i.to = fadd float %i.tk, %i.tn
  %i.tp = fadd float %i.tg, %i.to                 ; 3 uses
  %indvars.iv.next499.1.1 = add nuw nsw i64 %indvars.iv498.1, 2 ; 2 uses
  %niter618.next.1 = add i64 %niter618, 2         ; 2 uses
  %niter618.ncmp.1 = icmp eq i64 %niter618.next.1, %unroll_iter617
  br i1 %niter618.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !888

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ck
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod614.not, label %.loopexit, label %.epil.preheader612

.epil.preheader612:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph468.1
  %indvars.iv498.1.epil.init = phi i64 [ 0, %.lr.ph468.1 ], [ %indvars.iv.next499.1.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.2465.1.epil.init = phi float [ %i.ss, %.lr.ph468.1 ], [ %i.tp, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod616 = trunc i32 %i.cn to i1
  call void @llvm.assume(i1 %lcmp.mod616)
  %gep.epil = getelementptr [44 x i8], ptr %invariant.gep, i64 %indvars.iv498.1.epil.init ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %gep.epil, i64 16
  store float %.2465.1.epil.init, ptr %i.tq, align 4, !tbaa !887
  %i.tr = getelementptr inbounds nuw i8, ptr %gep.epil, i64 32
  store i32 -1, ptr %i.tr, align 4, !tbaa !866
  %i.ts = getelementptr inbounds nuw i8, ptr %gep.epil, i64 20
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !878
  %i.tu = icmp samesign ult i64 %indvars.iv498.1.epil.init, %i.sw
  br i1 %i.tu, label %bb.cl, label %.loopexit.loopexit.epilog-lcssa

bb.cl:                                            ; preds = %.epil.preheader612
  %i.tv = load float, ptr %i.cj, align 4, !tbaa !412
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.cl, %.epil.preheader612
  %i.tw = phi float [ %i.tv, %bb.cl ], [ 0.000000e+00, %.epil.preheader612 ]
  %i.tx = fadd float %i.tt, %i.tw
  %i.ty = fadd float %.2465.1.epil.init, %i.tx
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %.loopexit564
  %.2.lcssa.1 = phi float [ %i.ss, %.loopexit564 ], [ %i.tp, %.loopexit.loopexit.unr-lcssa ], [ %i.ty, %.loopexit.loopexit.epilog-lcssa ]
  %i.tz = load float, ptr %i.iq, align 4, !tbaa !885
  %i.ua = fadd float %i.tz, %14                   ; 2 uses
  %i.ub = fcmp oge float %i.ua, 0.000000e+00
  %i.uc = select i1 %i.ub, float %i.ua, float 0.000000e+00
  %i.ud = fadd float %i.sr, %i.uc
  br i1 %13, label %.lr.ph468.2, label %._crit_edge469.2

.lr.ph468.2:                                      ; preds = %.loopexit
  %i.ue = load float, ptr %i.h, align 8, !tbaa !233
  %i.uf = load float, ptr %i.g, align 8, !tbaa !232
  %i.ug = fsub float %i.ue, %i.uf
  %i.uh = load float, ptr %i.iu, align 4, !tbaa !885
  %i.ui = fsub float %i.ug, %i.uh                 ; 2 uses
  %i.uj = fcmp ole float %i.ui, 0.000000e+00
  %i.uk = select i1 %i.uj, float 0.000000e+00, float %i.ui ; 2 uses
  %i.ul = fadd float %.2.lcssa.1, %14             ; 2 uses
  %i.um = fcmp olt float %i.uk, %i.ul
  %i.un = select i1 %i.um, float %i.uk, float %i.ul ; 2 uses
  %i.uo = add nsw i32 %i.cn, %i.cl
  %i.up = load ptr, ptr %i.ry, align 8, !tbaa !815
  %i.uq = add nsw i32 %i.cp, -1
  %i.ur = sext i32 %i.uo to i64
  %i.us = zext nneg i32 %i.uq to i64              ; 3 uses
  %wide.trip.count.2 = zext nneg i32 %i.cp to i64 ; 2 uses
  %invariant.gep579 = getelementptr [44 x i8], ptr %i.up, i64 %i.ur ; 3 uses
  %xtraiter620 = and i64 %wide.trip.count.2, 1
  %i.ut = icmp eq i32 %i.cp, 1
  br i1 %i.ut, label %.epil.preheader619, label %.lr.ph468.2.new

.lr.ph468.2.new:                                  ; preds = %.lr.ph468.2
  %unroll_iter623 = and i64 %wide.trip.count.2, 2147483646
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cq, %.lr.ph468.2.new
  %indvars.iv498.2 = phi i64 [ 0, %.lr.ph468.2.new ], [ %indvars.iv.next499.2.1, %bb.cq ] ; 4 uses
  %.2465.2 = phi float [ %i.un, %.lr.ph468.2.new ], [ %i.vl, %bb.cq ] ; 2 uses
  %niter624 = phi i64 [ 0, %.lr.ph468.2.new ], [ %niter624.next.1, %bb.cq ]
  %gep580 = getelementptr [44 x i8], ptr %invariant.gep579, i64 %indvars.iv498.2 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %gep580, i64 16
  store float %.2465.2, ptr %i.uu, align 4, !tbaa !887
  %i.uv = getelementptr inbounds nuw i8, ptr %gep580, i64 32
  store i32 -1, ptr %i.uv, align 4, !tbaa !866
  %i.uw = getelementptr inbounds nuw i8, ptr %gep580, i64 20
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !878
  %i.uy = icmp samesign ult i64 %indvars.iv498.2, %i.us
  br i1 %i.uy, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.uz = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.va = phi float [ %i.uz, %bb.cn ], [ 0.000000e+00, %bb.cm ]
  %i.vb = fadd float %i.ux, %i.va
  %i.vc = fadd float %.2465.2, %i.vb              ; 2 uses
  %indvars.iv.next499.2 = or disjoint i64 %indvars.iv498.2, 1 ; 2 uses
  %gep580.1 = getelementptr [44 x i8], ptr %invariant.gep579, i64 %indvars.iv.next499.2 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %gep580.1, i64 16
  store float %i.vc, ptr %i.vd, align 4, !tbaa !887
  %i.ve = getelementptr inbounds nuw i8, ptr %gep580.1, i64 32
  store i32 -1, ptr %i.ve, align 4, !tbaa !866
  %i.vf = getelementptr inbounds nuw i8, ptr %gep580.1, i64 20
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !878
  %i.vh = icmp samesign ult i64 %indvars.iv.next499.2, %i.us
  br i1 %i.vh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.vi = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vj = phi float [ %i.vi, %bb.cp ], [ 0.000000e+00, %bb.co ]
  %i.vk = fadd float %i.vg, %i.vj
  %i.vl = fadd float %i.vc, %i.vk                 ; 2 uses
  %indvars.iv.next499.2.1 = add nuw nsw i64 %indvars.iv498.2, 2 ; 2 uses
  %niter624.next.1 = add i64 %niter624, 2         ; 2 uses
  %niter624.ncmp.1 = icmp eq i64 %niter624.next.1, %unroll_iter623
  br i1 %niter624.ncmp.1, label %._crit_edge469.2.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !888

._crit_edge469.2.loopexit.unr-lcssa:              ; preds = %bb.cq
  %lcmp.mod621.not = icmp eq i64 %xtraiter620, 0
  br i1 %lcmp.mod621.not, label %._crit_edge469.2, label %.epil.preheader619

.epil.preheader619:                               ; preds = %._crit_edge469.2.loopexit.unr-lcssa, %.lr.ph468.2
  %indvars.iv498.2.epil.init = phi i64 [ 0, %.lr.ph468.2 ], [ %indvars.iv.next499.2.1, %._crit_edge469.2.loopexit.unr-lcssa ] ; 2 uses
  %.2465.2.epil.init = phi float [ %i.un, %.lr.ph468.2 ], [ %i.vl, %._crit_edge469.2.loopexit.unr-lcssa ]
  %lcmp.mod622 = trunc i32 %i.cp to i1
  call void @llvm.assume(i1 %lcmp.mod622)
  %gep580.epil = getelementptr [44 x i8], ptr %invariant.gep579, i64 %indvars.iv498.2.epil.init ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %gep580.epil, i64 16
  store float %.2465.2.epil.init, ptr %i.vm, align 4, !tbaa !887
  %i.vn = getelementptr inbounds nuw i8, ptr %gep580.epil, i64 32
  store i32 -1, ptr %i.vn, align 4, !tbaa !866
  %i.vo = icmp samesign ult i64 %indvars.iv498.2.epil.init, %i.us ; 0 uses
  br label %._crit_edge469.2

._crit_edge469.2:                                 ; preds = %.epil.preheader619, %._crit_edge469.2.loopexit.unr-lcssa, %.loopexit
  %i.vp = load float, ptr %i.iu, align 4, !tbaa !885 ; 5 uses
  %i.vq = fadd float %i.vp, 0.000000e+00
  %i.vr = fcmp oge float %i.vp, 0.000000e+00
  %i.vs = select i1 %i.vr, float %i.vq, float 0.000000e+00
  %i.vt = fadd float %i.ud, %i.vs
  store float %i.vt, ptr %i.rx, align 4, !tbaa !880
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !447
  %i.vx = icmp slt i32 %i.vw, 0
  br i1 %i.vx, label %bb.cc, label %_ZN8ImVectorIcE6resizeEi.exit

bb.cr:                                            ; preds = %bb.cv, %.lr.ph468.new
  %indvars.iv498 = phi i64 [ 0, %.lr.ph468.new ], [ %indvars.iv.next499.1611, %bb.cv ] ; 4 uses
  %.2465 = phi float [ 0.000000e+00, %.lr.ph468.new ], [ %i.wr, %bb.cv ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph468.new ], [ %niter.next.1, %bb.cv ]
  %i.vy = getelementptr inbounds nuw [44 x i8], ptr %i.rz, i64 %indvars.iv498 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store float %.2465, ptr %i.vz, align 4, !tbaa !887
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  store i32 -1, ptr %i.wa, align 4, !tbaa !866
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 20
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !878
  %i.wd = icmp samesign ult i64 %indvars.iv498, %i.sb
  br i1 %i.wd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.we = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.wf = phi float [ %i.we, %bb.cs ], [ 0.000000e+00, %bb.cr ]
  %i.wg = fadd float %i.wc, %i.wf
  %i.wh = fadd float %.2465, %i.wg                ; 2 uses
  %indvars.iv.next499 = or disjoint i64 %indvars.iv498, 1 ; 2 uses
  %i.wi = getelementptr inbounds nuw [44 x i8], ptr %i.rz, i64 %indvars.iv.next499 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store float %i.wh, ptr %i.wj, align 4, !tbaa !887
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  store i32 -1, ptr %i.wk, align 4, !tbaa !866
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !878
  %i.wn = icmp samesign ult i64 %indvars.iv.next499, %i.sb
  br i1 %i.wn, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.wo = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.wp = phi float [ %i.wo, %bb.cu ], [ 0.000000e+00, %bb.ct ]
  %i.wq = fadd float %i.wm, %i.wp
  %i.wr = fadd float %i.wh, %i.wq                 ; 3 uses
  %indvars.iv.next499.1611 = add nuw nsw i64 %indvars.iv498, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit564.loopexit.unr-lcssa, label %bb.cr, !llvm.loop !888

.thread563:                                       ; preds = %_ZN8ImVectorIcE6resizeEi.exit
  store i32 0, ptr %.phi.trans.insert525, align 8, !tbaa !850
  br label %bb.cx

bb.cw:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit
  %.pre526 = load i32, ptr %.phi.trans.insert525, align 8, !tbaa !850 ; 2 uses
  %i.ws = icmp eq i32 %.pre526, 0
  br i1 %i.ws, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %.thread563, %bb.cw
  %i.wt = load i32, ptr %i.cv, align 4, !tbaa !851
  %i.wu = icmp eq i32 %i.wt, 0
  %i.wv = icmp ne ptr %.0340.lcssa, null
  %or.cond15 = select i1 %i.wu, i1 %i.wv, i1 false
  br i1 %or.cond15, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ww = load i32, ptr %.0340.lcssa, align 4, !tbaa !849 ; 3 uses
  store i32 %i.ww, ptr %i.rw, align 8, !tbaa !850
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.wx = phi i32 [ %i.ww, %bb.cy ], [ 0, %bb.cx ], [ %.pre526, %bb.cw ]
  %.11 = phi i32 [ %i.ww, %bb.cy ], [ %.10, %bb.cx ], [ %.10, %bb.cw ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.wx, ptr %i.wy, align 4, !tbaa !844
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.wz, align 4, !tbaa !843
  %.not371 = icmp eq i32 %.11, 0
  br i1 %.not371, label %bb.dh, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xa = load i32, ptr %i.m, align 8, !tbaa !834 ; 3 uses
  %i.xb = icmp sgt i32 %i.xa, 0
  br i1 %i.xb, label %.lr.ph.i.i415, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

.lr.ph.i.i415:                                    ; preds = %bb.da
  %i.xc = load ptr, ptr %i.ry, align 8, !tbaa !815
  %wide.trip.count.i.i416 = zext nneg i32 %i.xa to i64
  br label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %indvars.iv.next.i.i418 = add nuw nsw i64 %indvars.iv.i.i417, 1 ; 2 uses
  %exitcond.not.i.i419 = icmp eq i64 %indvars.iv.next.i.i418, %wide.trip.count.i.i416
  br i1 %exitcond.not.i.i419, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit, label %bb.dc, !llvm.loop !863

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i.i415
  %indvars.iv.i.i417 = phi i64 [ 0, %.lr.ph.i.i415 ], [ %indvars.iv.next.i.i418, %bb.db ] ; 3 uses
  %i.xd = getelementptr inbounds nuw [44 x i8], ptr %i.xc, i64 %indvars.iv.i.i417 ; 4 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !849
  %i.xf = icmp eq i32 %i.xe, %.11
  br i1 %i.xf, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420, label %bb.db

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420: ; preds = %bb.dc
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !854
  %i.xi = and i32 %i.xh, 192
  %.not.i421 = icmp eq i32 %i.xi, 0
  br i1 %.not.i421, label %bb.dd, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dd:                                            ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420
  %i.xj = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4568
  %i.xl = load float, ptr %i.xk, align 8, !tbaa !189 ; 2 uses
  %i.xm = trunc i64 %indvars.iv.i.i417 to i32     ; 2 uses
  %.val.i = load float, ptr %i.g, align 8, !tbaa !232
  %.val47.i = load float, ptr %i.h, align 8, !tbaa !233
  %i.xn = fsub float %.val47.i, %.val.i
  %i.xo = fsub float %i.xn, %i.sn
  %i.xp = fsub float %i.xo, %i.vp
  %i.xq = fsub float %i.xp, %14                   ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !887
  %i.xt = fsub float %i.xs, %i.sn                 ; 2 uses
  %.not45.i = icmp sgt i32 %i.cl, %i.xm
  %i.xu = fneg float %i.xl
  %i.xv = select i1 %.not45.i, float 0.000000e+00, float %i.xu
  %i.xw = fadd float %i.xt, %i.xv                 ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xd, i64 20
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !878
  %i.xz = fadd float %i.xt, %i.xy
  %i.ya = add nsw i32 %i.xm, 1
  %i.yb = sub nsw i32 %i.xa, %i.cp
  %i.yc = icmp slt i32 %i.ya, %i.yb
  %i.yd = select i1 %i.yc, float %i.xl, float 1.000000e+00
  %i.ye = fadd float %i.xz, %i.yd                 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store float 0.000000e+00, ptr %i.yf, align 4, !tbaa !889
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.yh = load float, ptr %i.yg, align 8, !tbaa !890 ; 2 uses
  %i.yi = fcmp ule float %i.yh, %i.xw
  %i.yj = fsub float %i.ye, %i.xw
  %i.yk = fcmp ult float %i.yj, %i.xq
  %or.cond.i422 = select i1 %i.yi, i1 %i.yk, i1 false
  br i1 %or.cond.i422, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !891
  %i.yn = fsub float %i.ym, %i.ye
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i

bb.df:                                            ; preds = %bb.dd
  %i.yo = fsub float %i.ye, %i.xq                 ; 2 uses
  %i.yp = fcmp olt float %i.yh, %i.yo
  br i1 %i.yp, label %bb.dg, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dg:                                            ; preds = %bb.df
  %i.yq = fsub float %i.xw, %i.xq
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !891
  %i.yt = fsub float %i.yq, %i.ys
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i: ; preds = %bb.dg, %bb.de
  %.sink60.i = phi float [ %i.yn, %bb.de ], [ %i.yt, %bb.dg ] ; 2 uses
  %.sink.i423 = phi float [ %i.xw, %bb.de ], [ %i.yo, %bb.dg ]
  %i.yu = fcmp oge float %.sink60.i, 0.000000e+00
  %i.yv = select i1 %i.yu, float %.sink60.i, float 0.000000e+00
  store float %i.yv, ptr %i.yf, align 4, !tbaa !889
  store float %.sink.i423, ptr %i.yg, align 8, !tbaa !890
  br label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dh:                                            ; preds = %bb.cz
  %i.yw = load i8, ptr %i.pf, align 2, !tbaa !881, !range !165, !noundef !166
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %bb.di, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.di:                                            ; preds = %bb.dh
  %i.yy = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %i.h, i1 noundef zeroext true)
  br i1 %i.yy, label %bb.dj, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dj:                                            ; preds = %bb.di
  %i.yz = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !11
  %i.zb = call noundef zeroext i1 @_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi(ptr noundef %i.za, i32 noundef 0)
  br i1 %i.zb, label %bb.dk, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dk:                                            ; preds = %bb.dj
  %i.zc = getelementptr inbounds nuw i8, ptr %i.c, i64 2970
  %i.zd = load i8, ptr %i.zc, align 2, !tbaa !892, !range !165, !noundef !166
  %i.ze = trunc nuw i8 %i.zd to i1                ; 2 uses
  %.in.v = select i1 %i.ze, i64 288, i64 292
  %.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.in.v
  %i.zf = load float, ptr %.in, align 4, !tbaa !171 ; 2 uses
  %i.zg = select i1 %i.ze, i32 662, i32 661       ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !813
  %i.zj = call noundef zeroext i1 @_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj(i32 noundef %i.zg, i32 noundef %i.zi)
  %i.zk = fcmp une float %i.zf, 0.000000e+00
  %or.cond17 = select i1 %i.zj, i1 %i.zk, i1 false
  br i1 %or.cond17, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %.val386 = load float, ptr %i.g, align 8, !tbaa !232
  %.val387 = load float, ptr %i.h, align 8, !tbaa !233
  %i.zl = fsub float %.val387, %.val386           ; 2 uses
  %i.zm = fsub float %i.zl, %i.sn
  %i.zn = fsub float %i.zm, %i.vp
  %i.zo = fsub float %i.zn, %14
  %i.zp = fmul float %i.zf, %i.zo
  %i.zq = fdiv float %i.zp, 3.000000e+00
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float 0.000000e+00, ptr %i.zr, align 4, !tbaa !889
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.zt = load float, ptr %i.zs, align 8, !tbaa !890
  %i.zu = fsub float %i.zt, %i.zq                 ; 2 uses
  %i.zv = load float, ptr %i.rx, align 4, !tbaa !880
  %i.zw = fsub float %i.zv, %i.zl                 ; 2 uses
  %i.zx = fcmp olt float %i.zu, %i.zw
  %i.zy = select i1 %i.zx, float %i.zu, float %i.zw ; 2 uses
  %i.zz = fcmp oge float %i.zy, 0.000000e+00
  %i.aaa = select i1 %i.zz, float %i.zy, float 0.000000e+00
  store float %i.aaa, ptr %i.zs, align 8, !tbaa !890
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.aab = load i32, ptr %i.zh, align 4, !tbaa !813
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef %i.zg, i32 noundef %i.aab, i32 noundef 0)
  br label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit: ; preds = %bb.db, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i, %bb.df, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420, %bb.da, %bb.dh, %bb.di, %bb.dj, %bb.dm
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !891 ; 2 uses
  %i.aae = load float, ptr %i.rx, align 4, !tbaa !880
  %i.aaf = load float, ptr %i.h, align 8, !tbaa !233 ; 2 uses
  %i.aag = load float, ptr %i.g, align 8, !tbaa !232 ; 2 uses
  %i.aah = fsub float %i.aaf, %i.aag
  %i.aai = fsub float %i.aae, %i.aah              ; 4 uses
  %i.aaj = fcmp olt float %i.aad, %i.aai
  %i.aak = select i1 %i.aaj, float %i.aad, float %i.aai ; 2 uses
  %i.aal = fcmp oge float %i.aak, 0.000000e+00
  %i.aam = select i1 %i.aal, float %i.aak, float 0.000000e+00 ; 8 uses
  store float %i.aam, ptr %i.aac, align 4, !tbaa !891
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aao = load float, ptr %i.aan, align 8, !tbaa !890 ; 2 uses
  %i.aap = fcmp olt float %i.aao, %i.aai
  %i.aaq = select i1 %i.aap, float %i.aao, float %i.aai ; 2 uses
  %i.aar = fcmp oge float %i.aaq, 0.000000e+00
  %i.aas = select i1 %i.aar, float %i.aaq, float 0.000000e+00 ; 11 uses
  store float %i.aas, ptr %i.aan, align 8, !tbaa !890
  %i.aat = fcmp une float %i.aam, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br i1 %i.aat, label %bb.dn, label %bb.dt

bb.dn:                                            ; preds = %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit
  %i.aav = load float, ptr %i.aau, align 8, !tbaa !893 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.c, i64 4568
  %i.aax = load float, ptr %i.aaw, align 8, !tbaa !189 ; 2 uses
  %i.aay = fmul float %i.aax, 7.000000e+01        ; 2 uses
  %i.aaz = fcmp oge float %i.aav, %i.aay
  %i.aba = select i1 %i.aaz, float %i.aav, float %i.aay ; 2 uses
  %i.abb = fsub float %i.aas, %i.aam
  %i.abc = call float @llvm.fabs.f32(float %i.abb)
  %i.abd = fdiv float %i.abc, 3.000000e-01        ; 2 uses
  %i.abe = fcmp oge float %i.aba, %i.abd
  %i.abf = select i1 %i.abe, float %i.aba, float %i.abd ; 2 uses
  store float %i.abf, ptr %i.aau, align 8, !tbaa !893
  %i.abg = load i32, ptr %i.rq, align 4, !tbaa !806
  %i.abh = add nsw i32 %i.abg, 1
  %i.abi = load i32, ptr %i.rt, align 4, !tbaa !585
  %i.abj = icmp slt i32 %i.abh, %i.abi
  br i1 %i.abj, label %.critedge, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !889
  %i.abm = fmul float %i.aax, 1.000000e+01
  %i.abn = fcmp ogt float %i.abl, %i.abm
  br i1 %i.abn, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abo = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.abp = load float, ptr %i.abo, align 8, !tbaa !198
  %i.abq = fmul float %i.abf, %i.abp              ; 2 uses
  %i.abr = fcmp olt float %i.aam, %i.aas
  br i1 %i.abr, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.abs = fadd float %i.aam, %i.abq              ; 2 uses
  %i.abt = fcmp olt float %i.abs, %i.aas
  %i.abu = select i1 %i.abt, float %i.abs, float %i.aas
  br label %.critedge

bb.dr:                                            ; preds = %bb.dp
  %i.abv = fcmp ogt float %i.aam, %i.aas
  br i1 %i.abv, label %bb.ds, label %.critedge

bb.ds:                                            ; preds = %bb.dr
  %i.abw = fsub float %i.aam, %i.abq              ; 2 uses
  %i.abx = fcmp oge float %i.abw, %i.aas
  %i.aby = select i1 %i.abx, float %i.abw, float %i.aas
  br label %.critedge

.critedge:                                        ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.do, %bb.dn
  %i.abz = phi float [ %i.aas, %bb.do ], [ %i.aas, %bb.dn ], [ %i.abu, %bb.dq ], [ %i.aby, %bb.ds ], [ %i.aam, %bb.dr ]
  store float %i.abz, ptr %i.aac, align 4, !tbaa !891
  br label %bb.du

bb.dt:                                            ; preds = %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit
  store float 0.000000e+00, ptr %i.aau, align 8, !tbaa !893
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.critedge
  %i.aca = fadd float %i.aag, %i.sn
  %i.acb = fadd float %10, %i.aca
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %i.acb, ptr %i.acc, align 4, !tbaa !894
  %i.acd = fsub float %i.aaf, %i.vp
  %i.ace = fsub float %i.acd, %14
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.ace, ptr %i.acf, align 8, !tbaa !895
  %i.acg = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !11 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 280
  %i.acj = load i64, ptr %i.g, align 8
  store i64 %i.acj, ptr %i.aci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ack = load float, ptr %i.rx, align 4, !tbaa !880
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !178
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !177
  %i.acp = fsub float %i.acm, %i.aco
  store float %i.ack, ptr %8, align 4, !tbaa !176
  %i.acq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.acp, ptr %i.acq, align 4, !tbaa !181
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !896
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.acs)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.act = getelementptr inbounds nuw i8, ptr %i.ach, i64 312 ; 2 uses
  %i.acu = load float, ptr %i.act, align 8, !tbaa !185 ; 2 uses
  %i.acv = load float, ptr %i.g, align 8, !tbaa !828
  %i.acw = load float, ptr %i.il, align 8, !tbaa !873
  %i.acx = fadd float %i.acv, %i.acw              ; 2 uses
  %i.acy = fcmp oge float %i.acu, %i.acx
  %i.acz = select i1 %i.acy, float %i.acu, float %i.acx
  store float %i.acz, ptr %i.act, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !834  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !815
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !863

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [44 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !849
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5ImGui20TabBarFindTabByOrderEP11ImGuiTabBari(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !834
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !815
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [44 x i8], ptr %i.e, i64 %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5ImGui19TabBarGetCurrentTabEP11ImGuiTabBar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.b = load i16, ptr %i.a, align 2, !tbaa !811  ; 2 uses
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %i.d = icmp slt i16 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !834
  %.not = icmp sgt i32 %i.f, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !815
  %i.i = zext nneg i32 %i.c to i64
  %i.j = getelementptr inbounds nuw [44 x i8], ptr %i.h, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4, !tbaa !866  ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !867
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ @.str.113, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui15TabBarRemoveTabEP11ImGuiTabBarj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #30 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !834  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !815
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !863

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [44 x i8], ptr %i.e, i64 %indvars.iv.i ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !849
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.j = zext nneg i32 %i.b to i64
  %i.k = xor i64 %indvars.iv.i, -1
  %i.l = add nsw i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.i, i64 %i.m, i1 false)
  %i.n = load i32, ptr %i.a, align 8, !tbaa !859
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !859
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !844
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread
  store i32 0, ptr %i.p, align 4, !tbaa !844
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !850
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !850
end_hunk_3
