Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff:bb.a

bb.j:                                             ; preds = %bb.h, %bb.i, %.lr.ph.split, %bb.g
  %i.by = phi i32 [ %i.bf, %bb.h ], [ %.pre, %bb.i ], [ %i.bf, %.lr.ph.split ], [ %i.bf, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %.lr.ph.split, label %._crit_edge, !llvm.loop !607
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6ImPlotL16RenderGridLinesYER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) unnamed_addr #23 {
bb.a:
  %7 = alloca %struct.ImVec4, align 8             ; 6 uses
  %8 = alloca %struct.ImVec2, align 4             ; 9 uses
  %9 = alloca %struct.ImVec2, align 4             ; 9 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !267
  %i.b = sitofp i32 %i.a to float
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !247
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !246
  %i.g = fsub float %i.d, %i.f
  %i.h = fdiv float %i.b, %i.g
  %.fr30 = freeze float %i.h                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.i = tail call { <2 x float>, <2 x float> } @_ZN5ImGui23ColorConvertU32ToFloat4Ej(i32 noundef %4) #32 ; 2 uses
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.i, 0
  store <2 x float> %i.j, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.i, 1 ; 2 uses
  store <2 x float> %i.l, ptr %i.k, align 8
  %i.m = fadd float %.fr30, -1.000000e-01
  %i.n = fdiv float %i.m, 1.000000e-01
  %i.o = fsub float 1.000000e+00, %i.n            ; 3 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %i.q = fcmp ogt float %i.o, 1.000000e+00
  %i.r = select i1 %i.q, float 1.000000e+00, float %i.o
  %i.s = select i1 %i.p, float 0.000000e+00, float %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.u = extractelement <2 x float> %i.l, i64 1
  %i.v = fmul float %i.u, %i.s
  store float %i.v, ptr %i.t, align 4, !tbaa !46
  %i.w = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7) #32
  %i.x = load i32, ptr %1, align 8, !tbaa !267    ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = fcmp olt float %.fr30, 2.000000e-01
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  br i1 %i.ab, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !273
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %indvars.iv33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !430 ; 2 uses
  %i.ak = load float, ptr %i.e, align 4, !tbaa !246
  %i.al = fcmp olt float %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.am = load float, ptr %i.c, align 4, !tbaa !247
  %i.an = fcmp ogt float %i.aj, %i.am
  br i1 %i.an, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !439, !range !263, !noundef !264
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ar = load float, ptr %2, align 4, !tbaa !244
  %i.as = load float, ptr %i.ai, align 8, !tbaa !430
  store float %i.ar, ptr %10, align 4, !tbaa !172
  store float %i.as, ptr %i.ac, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.at = load float, ptr %i.aa, align 4, !tbaa !245
  %i.au = load float, ptr %i.ai, align 8, !tbaa !430
  store float %i.at, ptr %11, align 4, !tbaa !172
  store float %i.au, ptr %i.ad, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, i32 noundef %i.w, float noundef %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.av = load float, ptr %2, align 4, !tbaa !244
  %i.aw = load float, ptr %i.ai, align 8, !tbaa !430
  store float %i.av, ptr %8, align 4, !tbaa !172
  store float %i.aw, ptr %i.ae, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ax = load float, ptr %i.aa, align 4, !tbaa !245
  %i.ay = load float, ptr %i.ai, align 8, !tbaa !430
  store float %i.ax, ptr %9, align 4, !tbaa !172
  store float %i.ay, ptr %i.af, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %3, float noundef %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %.lr.ph.split.us
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.az = load i32, ptr %1, align 8, !tbaa !267
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next34, %i.ba
  br i1 %i.bb, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !608

._crit_edge:                                      ; preds = %bb.j, %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %i.bc = phi i32 [ %i.bs, %bb.j ], [ %i.x, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %i.bd = load ptr, ptr %i.z, align 8, !tbaa !273
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !430 ; 2 uses
  %i.bh = load float, ptr %i.e, align 4, !tbaa !246
  %i.bi = fcmp olt float %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.bj = load float, ptr %i.c, align 4, !tbaa !247
  %i.bk = fcmp ogt float %i.bg, %i.bj
  br i1 %i.bk, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !439, !range !263, !noundef !264
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bo = load float, ptr %2, align 4, !tbaa !244
  %i.bp = load float, ptr %i.bf, align 8, !tbaa !430
  store float %i.bo, ptr %8, align 4, !tbaa !172
  store float %i.bp, ptr %i.ae, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bq = load float, ptr %i.aa, align 4, !tbaa !245
  %i.br = load float, ptr %i.bf, align 8, !tbaa !430
  store float %i.bq, ptr %9, align 4, !tbaa !172
  store float %i.br, ptr %i.af, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, i32 noundef %3, float noundef %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.pre = load i32, ptr %1, align 8, !tbaa !267
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.lr.ph.split, %bb.g
  %i.bs = phi i32 [ %i.bc, %bb.h ], [ %.pre, %bb.i ], [ %i.bc, %.lr.ph.split ], [ %i.bc, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %.lr.ph.split, label %._crit_edge, !llvm.loop !608
}

declare void @_ZN5ImGui14PushOverrideIDEj(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot7EndPlotEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.ImVec4, align 8             ; 5 uses
  %1 = alloca %struct.ImVec4, align 8             ; 5 uses
  %2 = alloca %struct.ImVec4, align 8             ; 5 uses
  %3 = alloca %struct.ImVec4, align 8             ; 5 uses
  %4 = alloca %struct.ImVec4, align 8             ; 5 uses
  %5 = alloca %struct.ImVec4, align 8             ; 5 uses
  %6 = alloca %struct.ImRect, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca %struct.ImVec4, align 8             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 9 uses
  %11 = alloca %struct.ImVec2, align 8            ; 8 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImVec2, align 4            ; 9 uses
  %15 = alloca %struct.ImVec2, align 8            ; 8 uses
  %16 = alloca %struct.ImVec2, align 4            ; 5 uses
  %17 = alloca %struct.ImVec2, align 4            ; 5 uses
  %18 = alloca %struct.ImRect, align 16           ; 6 uses
  %19 = alloca [4 x %struct.ImVec2], align 16     ; 7 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 5 uses
  %22 = alloca %struct.ImVec2, align 8            ; 5 uses
  %23 = alloca %struct.ImVec4, align 16           ; 6 uses
  %24 = alloca %struct.ImVec2, align 4            ; 5 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 4            ; 5 uses
  %28 = alloca %struct.ImVec2, align 4            ; 5 uses
  %29 = alloca %struct.ImVec2, align 8            ; 4 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  %32 = alloca %struct.ImVec2, align 8            ; 4 uses
  %33 = alloca %struct.ImRect, align 4            ; 18 uses
  %34 = alloca %struct.ImRect, align 4            ; 18 uses
  %35 = alloca %struct.ImRect, align 16           ; 18 uses
  %36 = alloca %struct.ImRect, align 16           ; 18 uses
  %37 = alloca %struct.ImVec2, align 8            ; 13 uses
  %38 = alloca %struct.ImVec2, align 4            ; 5 uses
  %39 = alloca %struct.ImVec2, align 8            ; 4 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 4            ; 5 uses
  %42 = alloca %struct.ImVec2, align 8            ; 4 uses
  %43 = alloca %struct.ImVec2, align 8            ; 4 uses
  %44 = alloca %struct.ImVec2, align 8            ; 4 uses
  %45 = alloca %struct.ImVec2, align 4            ; 5 uses
  %46 = alloca %struct.ImVec2, align 4            ; 5 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 4 uses
  %49 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not633 = icmp eq ptr %i.b, null
  br i1 %.not633, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 42 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 2 uses
  %.not634 = icmp eq ptr %i.f, null
  br i1 %.not634, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.135) #32 ; 0 uses
  %.pre1207 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1207, i64 80
  %.pre1208 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !217
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %.pre1208, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.pre1207, %bb.d ], [ %i.d, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 2550
  %i.k = load i8, ptr %i.j, align 2, !tbaa !384, !range !263, !noundef !264
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN6ImPlotL9SetupLockEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  tail call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !217
  br label %_ZN6ImPlotL9SetupLockEv.exit

_ZN6ImPlotL9SetupLockEv.exit:                     ; preds = %bb.e, %bb.f
  %i.n = phi ptr [ %.pre.i, %bb.f ], [ %i.h, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2550
  store i8 1, ptr %i.o, align 2, !tbaa !384
  %i.p = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !217  ; 198 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 5184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 712
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !423  ; 46 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 292 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !623
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.z = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 552
  %.val.i.i = load float, ptr %i.aa, align 4, !tbaa !46
  %i.ab = fcmp oeq float %.val.i.i, -1.000000e+00
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 5) #32, !inline_history !0
  %.sroa.30.0..sroa_idx117.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit

bb.i:                                             ; preds = %bb.g
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 548
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit

_ZN6ImPlotL17GetStyleColorVec4Ei.exit:            ; preds = %bb.h, %bb.i
  %.sroa.30.0.copyload118.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx117.i, %bb.h ], [ %.sroa.3.0..sroa_idx.i, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.30.0.copyload118.i.pn.in, i64 4
  %.sroa.3.12.vec.extract = load float, ptr %i.ad, align 4, !tbaa !41
  %i.ae = fcmp ogt float %.sroa.3.12.vec.extract, 0.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %_ZN6ImPlotL17GetStyleColorVec4Ei.exit, %_ZN6ImPlotL9SetupLockEv.exit
  %i.af = phi i1 [ false, %_ZN6ImPlotL9SetupLockEv.exit ], [ %i.ae, %_ZN6ImPlotL17GetStyleColorVec4Ei.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 2553 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !364, !range !263, !noundef !264
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 388
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !299, !range !263, !noundef !264
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 395
  %i.an = load i8, ptr %i.am, align 1, !tbaa !366, !range !263, !noundef !264
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 764
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 771
  %i.at = load i8, ptr %i.as, align 1, !tbaa !366, !range !263, !noundef !264
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 1140
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !299, !range !263, !noundef !264
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 1147
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !366, !range !263, !noundef !264
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.ph = phi i1 [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.l ], [ false, %bb.q ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 1516
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 1523
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !366, !range !263, !noundef !264
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 1892
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 1899
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !366, !range !263, !noundef !264
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 2268
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !299, !range !263, !noundef !264
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 2275
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !366, !range !263, !noundef !264
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br label %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit

_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit:     ; preds = %bb.x, %bb.w, %bb.u, %bb.s, %bb.j
  %i.bt = phi i1 [ true, %bb.j ], [ %.ph, %bb.s ], [ %.ph, %bb.u ], [ %.ph, %bb.w ], [ %.ph, %bb.x ]
  %i.bu = phi i1 [ true, %bb.j ], [ true, %bb.s ], [ true, %bb.u ], [ true, %bb.w ], [ false, %bb.x ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 2456 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 2464
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %i.bw, i1 noundef zeroext true) #32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 2488 ; 23 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 332 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 340 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 388 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !300
  %i.cg = and i32 %i.cf, 514
  %or.cond1030 = icmp eq i32 %i.cg, 512
  br i1 %or.cond1030, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 356
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !335
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !336
  %i.cm = load float, ptr %i.bz, align 4, !tbaa !431
  %i.cn = load float, ptr %i.ca, align 4, !tbaa !432
  tail call fastcc void @_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 8 dereferenceable(52) %i.ch, ptr noundef nonnull align 4 dereferenceable(16) %i.by, i32 noundef %i.cj, i32 noundef %i.cl, float noundef %i.cm, float noundef %i.cn)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZN6ImPlotL11AnyAxesHeldEP10ImPlotAxisi.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 400
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 764
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !299, !range !263, !noundef !264
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 404
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !300
  %i.cu = and i32 %i.ct, 514
  %or.cond1030.1 = icmp eq i32 %i.cu, 512
  br i1 %or.cond1030.1, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 732
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !335
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 736
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !336
  %i.da = load float, ptr %i.bz, align 4, !tbaa !431
  %i.db = load float, ptr %i.ca, align 4, !tbaa !432
  tail call fastcc void @_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 8 dereferenceable(52) %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %i.by, i32 noundef %i.cx, i32 noundef %i.cz, float noundef %i.da, float noundef %i.db)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 776
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 1140
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !299, !range !263, !noundef !264
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ae, label %.preheader1073

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 780
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !300
  %i.di = and i32 %i.dh, 514
  %or.cond1030.2 = icmp eq i32 %i.di, 512
  br i1 %or.cond1030.2, label %bb.af, label %.preheader1073

bb.af:                                            ; preds = %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 872
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 1108
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !335
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 1112
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !336
  %i.do = load float, ptr %i.bz, align 4, !tbaa !431
  %i.dp = load float, ptr %i.ca, align 4, !tbaa !432
  tail call fastcc void @_ZN6ImPlotL16RenderGridLinesXER10ImDrawListRK12ImPlotTickerRK6ImRectjjff(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 8 dereferenceable(52) %i.dj, ptr noundef nonnull align 4 dereferenceable(16) %i.by, i32 noundef %i.dl, i32 noundef %i.dn, float noundef %i.do, float noundef %i.dp)
  br label %.preheader1073

.preheader1073:                                   ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6ImPlot7EndPlotEv:bb.a
bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.ce
  %.sink1347 = phi float [ %i.pv, %bb.cg ], [ %i.py, %bb.ch ], [ %i.pt, %bb.ce ]
  %.sroa.0971.4.vec.insert990 = insertelement <2 x float> %.sroa.0971.0.vec.insert975, float %.sink1347, i64 1 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ot, i64 28
  %i.qa = load i8, ptr %i.pz, align 4, !tbaa !632, !range !263, !noundef !264
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %.val654 = load float, ptr %i.by, align 8, !tbaa !172 ; 2 uses
  %.val655 = load float, ptr %i.hh, align 4, !tbaa !173 ; 2 uses
  %.val656 = load float, ptr %i.ha, align 8, !tbaa !172 ; 2 uses
  %.val657 = load float, ptr %i.hi, align 4, !tbaa !173 ; 2 uses
  %i.qc = fcmp olt float %.sink, %.val654
  %.sroa.0.0.vec.insert.i677 = insertelement <2 x float> %.sroa.0971.4.vec.insert990, float %.val654, i64 0
  %.sroa.0.0.i = select i1 %i.qc, <2 x float> %.sroa.0.0.vec.insert.i677, <2 x float> %.sroa.0971.4.vec.insert990 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.qd = fcmp olt float %.sroa.0.4.vec.extract.i, %.val655
  %.sroa.0.4.vec.insert.i678 = insertelement <2 x float> %.sroa.0.0.i, float %.val655, i64 1
  %.sroa.0.1.i = select i1 %i.qd, <2 x float> %.sroa.0.4.vec.insert.i678, <2 x float> %.sroa.0.0.i ; 3 uses
  %i.qe = extractelement <2 x float> %i.pb, i64 0
  %foldExtExtBinop = fadd <2 x float> %i.pb, %.sroa.0.1.i
  %i.qf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.qg = fcmp ogt float %i.qf, %.val656
  %i.qh = fsub float %.val656, %i.qe
  %.sroa.0.0.vec.insert16.i = insertelement <2 x float> %.sroa.0.1.i, float %i.qh, i64 0
  %.sroa.0.2.i = select i1 %i.qg, <2 x float> %.sroa.0.0.vec.insert16.i, <2 x float> %.sroa.0.1.i ; 3 uses
  %i.qi = extractelement <2 x float> %i.pb, i64 1
  %foldExtExtBinop1357 = fadd <2 x float> %i.pb, %.sroa.0.2.i
  %i.qj = extractelement <2 x float> %foldExtExtBinop1357, i64 1
  %i.qk = fcmp ogt float %i.qj, %.val657
  %i.ql = fsub float %.val657, %i.qi
  %.sroa.0.4.vec.insert21.i = insertelement <2 x float> %.sroa.0.2.i, float %i.ql, i64 1
  %.sroa.0.3.i = select i1 %i.qk, <2 x float> %.sroa.0.4.vec.insert21.i, <2 x float> %.sroa.0.2.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.0.0.copyload.i681 = phi <2 x float> [ %.sroa.0.3.i, %bb.cj ], [ %.sroa.0971.4.vec.insert990, %bb.ci ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.qm = fadd <2 x float> %i.pb, %.sroa.0.0.copyload.i681
  store <2 x float> %.sroa.0.0.copyload.i681, ptr %18, align 16, !tbaa !41
  store <2 x float> %i.qm, ptr %i.lj, align 8, !tbaa !41
  %i.qn = load float, ptr %i.pd, align 4, !tbaa !630
  %i.qo = fcmp une float %i.qn, 0.000000e+00
  br i1 %i.qo, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qp = load float, ptr %i.po, align 4, !tbaa !631
  %i.qq = fcmp une float %i.qp, 0.000000e+00
  br i1 %i.qq, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store <2 x float> %.sroa.0.0.copyload.i681, ptr %19, align 16
  %i.qr = load <4 x float>, ptr %18, align 16     ; 5 uses
  %.sroa.0.4.vec.insert.i683 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  store <2 x float> %.sroa.0.4.vec.insert.i683, ptr %i.lk, align 8
  %bc = bitcast <4 x float> %i.qr to <2 x i64>
  %i.qs = extractelement <2 x i64> %bc, i64 1     ; 2 uses
  store i64 %i.qs, ptr %i.ll, align 16
  %.sroa.0.4.vec.insert.i686 = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i686, ptr %i.lm, align 8
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = load <2 x float>, ptr %i.ot, align 4, !tbaa !41 ; 2 uses
  %i.qv = bitcast i32 %i.qt to float
  %i.qw = shufflevector <2 x float> %i.qu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.qx = shufflevector <2 x float> %.sroa.0.0.copyload.i681, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> %i.qr, <4 x i32> <i32 0, i32 6, i32 poison, i32 4>
  %i.qz = insertelement <4 x float> %i.qy, float %i.qv, i64 2
  %i.ra = fsub <4 x float> %i.qw, %i.qz           ; 2 uses
  %i.rb = shufflevector <2 x float> %i.qu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.rc = shufflevector <4 x float> %i.qx, <4 x float> %i.qr, <4 x i32> <i32 1, i32 5, i32 7, i32 7>
  %i.rd = fsub <4 x float> %i.rb, %i.rc           ; 2 uses
  %i.re = fmul <4 x float> %i.rd, %i.rd
  %i.rf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> %i.ra, <4 x float> %i.re) ; 4 uses
  %i.rg = extractelement <4 x float> %i.rf, i64 0 ; 2 uses
  %i.rh = fcmp olt float %i.rg, f0x7F7FFFFF
  %.1 = select i1 %i.rh, float %i.rg, float f0x7F7FFFFF ; 2 uses
  %i.ri = extractelement <4 x float> %i.rf, i64 1 ; 2 uses
  %i.rj = fcmp olt float %i.ri, %.1               ; 2 uses
  %.1.1 = select i1 %i.rj, float %i.ri, float %.1 ; 2 uses
  %i.rk = extractelement <4 x float> %i.rf, i64 2 ; 2 uses
  %i.rl = fcmp olt float %i.rk, %.1.1             ; 2 uses
  %.1.2 = select i1 %i.rl, float %i.rk, float %.1.1
  %i.rm = extractelement <4 x float> %i.rf, i64 3
  %i.rn = fcmp olt float %i.rm, %.1.2
  %i.ro = zext i1 %i.rj to i64
  %i.rp = select i1 %i.rl, i64 2, i64 %i.ro
  %i.rq = select i1 %i.rn, i64 3, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !633
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %i.ot, ptr noundef nonnull align 4 dereferenceable(8) %i.rr, i32 noundef %i.rt, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !633
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 4 dereferenceable(8) %i.lj, i32 noundef %i.rv, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.rw = load <2 x float>, ptr %i.li, align 4, !tbaa !41
  %i.rx = fadd <2 x float> %.sroa.0.0.copyload.i681, %i.rw
  store <2 x float> %i.rx, ptr %20, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ot, i64 20
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !634
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %20, i32 noundef %i.rz, ptr noundef %i.ox, ptr noundef null) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %indvars.iv.next1148 = add nuw nsw i64 %indvars.iv1147, 1 ; 2 uses
  %i.sa = load i32, ptr %i.ld, align 8, !tbaa !625
  %i.sb = sext i32 %i.sa to i64
  %i.sc = icmp slt i64 %indvars.iv.next1148, %i.sb
  br i1 %i.sc, label %bb.by, label %._crit_edge1096, !llvm.loop !613

bb.co:                                            ; preds = %._crit_edge1096
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.sd = getelementptr inbounds nuw i8, ptr %i.q, i64 2520
  %i.se = load <2 x float>, ptr %i.sd, align 8, !tbaa !41
  %i.sf = load <2 x float>, ptr %i.by, align 8, !tbaa !41 ; 2 uses
  %i.sg = fadd <2 x float> %i.se, %i.sf
  store <2 x float> %i.sg, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.sh = getelementptr inbounds nuw i8, ptr %i.q, i64 2528
  %i.si = load <2 x float>, ptr %i.sh, align 8, !tbaa !41
  %i.sj = fadd <2 x float> %i.sf, %i.si
  store <2 x float> %i.sj, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.sk = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.sl = getelementptr i8, ptr %i.sk, i64 744
  %.val.i.i695 = load float, ptr %i.sl, align 4, !tbaa !46
  %i.sm = fcmp oeq float %.val.i.i695, -1.000000e+00
  br i1 %i.sm, label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 732
  %.sroa.0.0.copyload.i696 = load <2 x float>, ptr %i.sn, align 4, !tbaa !41
  %.sroa.3.0..sroa_idx.i697 = getelementptr inbounds nuw i8, ptr %i.sk, i64 740
  %.sroa.3.0.copyload.i698 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i697, align 4, !tbaa !41
  %i.so = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i696, 0
  %i.sp = insertvalue { <2 x float>, <2 x float> } %i.so, <2 x float> %.sroa.3.0.copyload.i698, 1
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700

_ZN6ImPlotL17GetStyleColorVec4Ei.exit700:         ; preds = %bb.co, %bb.cp
  %.fca.1.insert.merged.i699 = phi { <2 x float>, <2 x float> } [ %i.sp, %bb.cp ], [ { <2 x float> splat (float 1.000000e+00), <2 x float> <float 0.000000e+00, float 1.000000e+00> }, %bb.co ] ; 2 uses
  %i.sq = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 0
  store <2 x float> %i.sq, ptr %23, align 16
  %i.sr = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ss = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i699, 1
  store <2 x float> %i.ss, ptr %i.sr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.st = load <4 x float>, ptr %23, align 16     ; 3 uses
  %.sroa.3.8.vec.insert.i.i = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.su = extractelement <4 x float> %i.st, i64 3
  %i.sv = fmul float %i.su, 2.500000e-01
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.sv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %5, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.sw, align 8
  %i.sx = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.sy = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %23) #32
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.sx, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 4 dereferenceable(8) %22, i32 noundef %i.sy, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6ImPlotL17GetStyleColorVec4Ei.exit700, %._crit_edge1096
  %i.sz = load i32, ptr %i.fh, align 4, !tbaa !326 ; 5 uses
  %i.ta = and i32 %i.sz, 256
  %.not1041 = icmp eq i32 %i.ta, 0
  br i1 %.not1041, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tb = getelementptr inbounds nuw i8, ptr %i.q, i64 2552
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !368, !range !263, !noundef !264
  %i.td = trunc nuw i8 %i.tc to i1
  %.not9 = xor i1 %i.td, true
  %or.cond11 = or i1 %i.bt, %.not9
  %or.cond13 = or i1 %i.bu, %or.cond11
  br i1 %or.cond13, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.te = getelementptr inbounds nuw i8, ptr %i.q, i64 2554
  %i.tf = load i8, ptr %i.te, align 2, !tbaa !361, !range !263, !noundef !264
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.cz, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.th = getelementptr inbounds nuw i8, ptr %i.q, i64 2392
  %i.ti = load i8, ptr %i.th, align 8, !tbaa !441, !range !263, !noundef !264
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef -1) #32
  %i.tk = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.tl = load float, ptr %i.by, align 8, !tbaa !358
  store float %i.tl, ptr %24, align 4, !tbaa !172
  %i.tm = getelementptr inbounds nuw i8, ptr %24, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %50 = load <2 x float>, ptr %i.tk, align 8, !tbaa !41 ; 6 uses
  %51 = fadd <2 x float> %50, <float -5.000000e+00, float -0.000000e+00>
  store <2 x float> %51, ptr %25, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %52 = extractelement <2 x float> %50, i64 1     ; 2 uses
  store float %52, ptr %i.tm, align 4, !tbaa !173
  %53 = fadd <2 x float> %50, <float 5.000000e+00, float -0.000000e+00>
  store <2 x float> %53, ptr %26, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.tn = load float, ptr %i.ha, align 8, !tbaa !359
  store float %i.tn, ptr %27, align 4, !tbaa !172
  %i.to = getelementptr inbounds nuw i8, ptr %27, i64 4
  store float %52, ptr %i.to, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.tp = load float, ptr %i.hh, align 4, !tbaa !373
  %i.tq = getelementptr inbounds nuw i8, ptr %28, i64 4
  store float %i.tp, ptr %i.tq, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %54 = fadd <2 x float> %50, <float -0.000000e+00, float -5.000000e+00>
  store <2 x float> %54, ptr %29, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %55 = extractelement <2 x float> %50, i64 0     ; 2 uses
  store float %55, ptr %28, align 4, !tbaa !172
  %56 = fadd <2 x float> %50, <float -0.000000e+00, float 5.000000e+00>
  store <2 x float> %56, ptr %30, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.tr = load float, ptr %i.hi, align 4, !tbaa !374
  store float %55, ptr %31, align 4, !tbaa !172
  %i.ts = getelementptr inbounds nuw i8, ptr %31, i64 4
  store float %i.tr, ptr %i.ts, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.tt = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 6 uses
  %i.tu = getelementptr i8, ptr %i.tt, i64 760
  %.val.i.i.i701 = load float, ptr %i.tu, align 4, !tbaa !46
  %i.tv = fcmp oeq float %.val.i.i.i701, -1.000000e+00
  br i1 %i.tv, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.tw = getelementptr i8, ptr %i.tt, i64 552
  %.val.i46.i = load float, ptr %i.tw, align 4, !tbaa !46
  %i.tx = fcmp oeq float %.val.i46.i, -1.000000e+00
  br i1 %i.tx, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ty = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 5) #32, !inline_history !1 ; 2 uses
  %.sroa.4196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cx:                                            ; preds = %bb.cv
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 540
  %.sroa.3.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 548
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

bb.cy:                                            ; preds = %bb.cu
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tt, i64 748
  %.sroa.3.0..sroa_idx.i.i703 = getelementptr inbounds nuw i8, ptr %i.tt, i64 756
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit706

_ZN6ImPlotL16GetStyleColorU32Ei.exit706:          ; preds = %bb.cx, %bb.cw, %bb.cy
  %.sroa.0195.0.copyload.pn.i.pn.in = phi ptr [ %i.ua, %bb.cy ], [ %i.ty, %bb.cw ], [ %i.tz, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn.in = phi ptr [ %.sroa.3.0..sroa_idx.i.i703, %bb.cy ], [ %.sroa.4196.0..sroa_idx.i, %bb.cw ], [ %.sroa.3.0..sroa_idx.i17.i, %bb.cx ]
  %.sroa.4196.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.4196.0.copyload.pn.i.pn.in, align 4, !tbaa !41
  %.sroa.0195.0.copyload.pn.i.pn = load <2 x float>, ptr %.sroa.0195.0.copyload.pn.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.0195.0.copyload.pn.i.pn, ptr %4, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.4196.0.copyload.pn.i.pn, ptr %i.ub, align 8
  %i.uc = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %4) #32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, i32 noundef %i.uc, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %27, i32 noundef %i.uc, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %28, ptr noundef nonnull align 4 dereferenceable(8) %29, i32 noundef %i.uc, float noundef 1.000000e+00) #32
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef %i.uc, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  %.pre1213 = load i32, ptr %i.fh, align 4, !tbaa !326
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit706, %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %i.ud = phi i32 [ %.pre1213, %_ZN6ImPlotL16GetStyleColorU32Ei.exit706 ], [ %i.sz, %bb.ct ], [ %i.sz, %bb.cs ], [ %i.sz, %bb.cr ], [ %i.sz, %bb.cq ]
  %i.ue = and i32 %i.ud, 4
  %.not1042 = icmp eq i32 %i.ue, 0
  br i1 %.not1042, label %bb.da, label %bb.em

bb.da:                                            ; preds = %bb.cz
  %i.uf = getelementptr inbounds nuw i8, ptr %i.q, i64 2552
  %i.ug = load i8, ptr %i.uf, align 8, !tbaa !368, !range !263, !noundef !264
  %i.uh = trunc nuw i8 %i.ug to i1
  %.phi.trans.insert1214 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre1215 = load i32, ptr %.phi.trans.insert1214, align 8, !tbaa !391 ; 3 uses
  %i.ui = and i32 %.pre1215, 4
  %.not1043 = icmp ne i32 %i.ui, 0
  %or.cond1349.not = select i1 %i.uh, i1 true, i1 %.not1043
  br i1 %or.cond1349.not, label %.peel.begin, label %bb.em

.peel.begin:                                      ; preds = %bb.da
  %i.uj = and i32 %.pre1215, 1
  %.not1044 = icmp eq i32 %i.uj, 0                ; 3 uses
  %i.uk = and i32 %.pre1215, 2
  %.not1045 = icmp eq i32 %i.uk, 0                ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.d, i64 1520 ; 11 uses
  store i32 0, ptr %i.ul, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %wide.trip.count = select i1 %.not1044, i64 3, i64 1 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.v, i64 216 ; 2 uses
  %i.un = load i8, ptr %i.cb, align 4, !tbaa !299, !range !263, !noundef !264
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %.peel.begin
  %.phi.trans.insert1222 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.pre1223 = load double, ptr %.phi.trans.insert1222, align 8, !tbaa !301 ; 3 uses
  %.phi.trans.insert1224 = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %.pre1225 = load ptr, ptr %.phi.trans.insert1224, align 8, !tbaa !372 ; 2 uses
  %.phi.trans.insert1220 = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %.pre1221 = load double, ptr %.phi.trans.insert1220, align 8, !tbaa !308
  %.phi.trans.insert1218 = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %.pre1219 = load float, ptr %.phi.trans.insert1218, align 8, !tbaa !307
  %.pre1217 = load float, ptr %i.um, align 8, !tbaa !376
  %i.up = fsub float %.pre1217, %.pre1219
  %i.uq = fpext float %i.up to double
  %i.ur = fdiv double %i.uq, %.pre1221
  %i.us = fadd double %.pre1223, %i.ur            ; 2 uses
  %.not.i707.peel = icmp eq ptr %.pre1225, null
  br i1 %.not.i707.peel, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ut = fsub double %i.us, %.pre1223
  %i.uu = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !276
  %i.uw = fsub double %i.uv, %.pre1223
  %i.ux = fdiv double %i.ut, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !312
  %i.va = getelementptr inbounds nuw i8, ptr %i.q, i64 304
  %i.vb = load double, ptr %i.va, align 8, !tbaa !311 ; 2 uses
  %i.vc = fsub double %i.uz, %i.vb
  %i.vd = call double @llvm.fmuladd.f64(double %i.ux, double %i.vc, double %i.vb)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !310
  %i.vg = call noundef double %.pre1225(double noundef %i.vd, ptr noundef %i.vf) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel

_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel:       ; preds = %bb.dc, %bb.db
  %.0.i.peel = phi double [ %i.vg, %bb.dc ], [ %i.us, %bb.db ] ; 2 uses
  br i1 %.not1045, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel
  %i.vh = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.129, double noundef %.0.i.peel) #32 ; 0 uses
  br label %bb.df

bb.de:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit.peel
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.bx, double noundef %.0.i.peel, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ul, ptr noundef nonnull %i.a, ptr noundef null) #32
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.peel.begin
  br i1 %.not1044, label %.peel.next, label %.peel.begin1161

.peel.begin1161:                                  ; preds = %bb.ds, %bb.dg
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ul, ptr noundef nonnull @.str.139, ptr noundef null) #32
  %i.vi = getelementptr inbounds nuw i8, ptr %i.v, i64 220 ; 2 uses
  %i.vj = getelementptr i8, ptr %i.q, i64 1152
  %i.vk = load i8, ptr %i.ds, align 4, !tbaa !299, !range !263, !noundef !264
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %.peel.begin1161
  %.phi.trans.insert1234 = getelementptr i8, ptr %i.q, i64 1168
  %.pre1235 = load double, ptr %.phi.trans.insert1234, align 8, !tbaa !301 ; 3 uses
  %.phi.trans.insert1236 = getelementptr i8, ptr %i.q, i64 1408
  %.pre1237 = load ptr, ptr %.phi.trans.insert1236, align 8, !tbaa !372 ; 2 uses
  %.phi.trans.insert1232 = getelementptr i8, ptr %i.q, i64 1448
  %.pre1233 = load double, ptr %.phi.trans.insert1232, align 8, !tbaa !308
  %.phi.trans.insert1230 = getelementptr i8, ptr %i.q, i64 1424
  %.pre1231 = load float, ptr %.phi.trans.insert1230, align 8, !tbaa !307
  %.pre1229 = load float, ptr %i.vi, align 4, !tbaa !377
  %i.vm = fsub float %.pre1229, %.pre1231
  %i.vn = fpext float %i.vm to double
  %i.vo = fdiv double %i.vn, %.pre1233
  %i.vp = fadd double %.pre1235, %i.vo            ; 2 uses
  %.not.i708.peel = icmp eq ptr %.pre1237, null
  br i1 %.not.i708.peel, label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vq = fsub double %i.vp, %.pre1235
  %i.vr = getelementptr i8, ptr %i.q, i64 1176
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !276
  %i.vt = fsub double %i.vs, %.pre1235
  %i.vu = fdiv double %i.vq, %i.vt
  %i.vv = getelementptr i8, ptr %i.q, i64 1440
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !312
  %i.vx = getelementptr i8, ptr %i.q, i64 1432
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !311 ; 2 uses
  %i.vz = fsub double %i.vw, %i.vy
  %i.wa = call double @llvm.fmuladd.f64(double %i.vu, double %i.vz, double %i.vy)
  %i.wb = getelementptr i8, ptr %i.q, i64 1416
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !310
  %i.wd = call noundef double %.pre1237(double noundef %i.wa, ptr noundef %i.wc) #32, !inline_history !11
  br label %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel

_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel:    ; preds = %bb.di, %bb.dh
  %.0.i709.peel = phi double [ %i.wd, %bb.di ], [ %i.vp, %bb.dh ] ; 2 uses
  br i1 %.not1045, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel
  %i.we = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.129, double noundef %.0.i709.peel) #32 ; 0 uses
  br label %bb.dl

bb.dk:                                            ; preds = %_ZNK10ImPlotAxis12PixelsToPlotEf.exit710.peel
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.vj, double noundef %.0.i709.peel, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ul, ptr noundef nonnull %i.a, ptr noundef null) #32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.peel.begin1161
  br i1 %.not1044, label %.peel.next1162, label %.loopexit1165

end_hunk_1
begin_hunk_2_@_ZN6ImPlot14SubplotSetCellEii:bb.a
  %i.ct = fadd float %.07297, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !41
  %i.cx = fadd float %i.ct, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !41
  %i.db = fadd float %i.cx, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !41
  %i.df = fadd float %i.db, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load float, ptr %i.dh, align 4, !tbaa !41
  %i.dj = fadd float %i.df, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !41
  %i.dn = fadd float %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !41
  %i.dr = fadd float %i.dn, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv103
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = load float, ptr %i.dt, align 4, !tbaa !41
  %i.dv = fadd float %i.dr, %i.du                 ; 3 uses
  %indvars.iv.next104.7 = add nuw nsw i64 %indvars.iv103, 8 ; 2 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !649

bb.g:                                             ; preds = %._crit_edge
  %i.dw = and i32 %i.cn, 128
  %.not91 = icmp eq i32 %i.dw, 0
  br i1 %.not91, label %bb.j, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !452 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !452
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %i.bt ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.ee = phi ptr [ %i.dy, %bb.h ], [ %i.ec, %bb.i ], [ null, %bb.g ]
  %i.ef = phi ptr [ %i.dz, %bb.h ], [ %i.ed, %bb.i ], [ null, %bb.g ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !217
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.132) #32 ; 0 uses
  br label %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit

_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit:         ; preds = %bb.j, %bb.k
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 1240
  store ptr %i.ee, ptr %i.ek, align 8, !tbaa !379
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 1288
  store ptr %i.ef, ptr %i.el, align 8, !tbaa !379
  br i1 %.not89, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit
  br i1 %.not90, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !452 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !452
  %i.er = getelementptr inbounds [16 x i8], ptr %i.eq, i64 %i.ce ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.et = phi ptr [ %i.en, %bb.m ], [ %i.er, %bb.n ], [ null, %bb.l ]
  %i.eu = phi ptr [ %i.eo, %bb.m ], [ %i.es, %bb.n ], [ null, %bb.l ]
  %i.ev = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !217
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit79, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.132) #32 ; 0 uses
  br label %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit79

_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit79:       ; preds = %bb.o, %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 1264
  store ptr %i.et, ptr %i.fa, align 8, !tbaa !379
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 1312
  store ptr %i.eu, ptr %i.fb, align 8, !tbaa !379
  %i.fc = load i32, ptr %i.cm, align 4, !tbaa !322 ; 2 uses
  %i.fd = and i32 %i.fc, 16
  %.not92 = icmp eq i32 %i.fd, 0
  br i1 %.not92, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit79
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !453
  %i.fg = getelementptr inbounds [20 x i8], ptr %i.ff, i64 %i.ce
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !427
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !453
  %i.fk = getelementptr inbounds [20 x i8], ptr %i.fj, i64 %i.bt
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 1592
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !428
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6ImPlot16SetNextAxisLinksEiPdS0_.exit79
  %i.fm = and i32 %i.fc, 1024
  %.not93 = icmp eq i32 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  br i1 %.not93, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fo = load i32, ptr %i.d, align 8, !tbaa !449
  %i.fp = mul nsw i32 %i.fo, %1
  %i.fq = add nsw i32 %i.fp, %0
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.fr = load i32, ptr %i.f, align 4, !tbaa !450
  %i.fs = mul nsw i32 %i.fr, %0
  %i.ft = add nsw i32 %i.fs, %1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s
  %.sink = phi i32 [ %i.fq, %bb.s ], [ %i.ft, %bb.t ]
  store i32 %.sink, ptr %i.fn, align 8, !tbaa !392
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14SubplotSetCellEi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !449  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.g = load i32, ptr %i.f, align 4, !tbaa !450  ; 3 uses
  %i.h = mul nsw i32 %i.g, %i.e
  %.not = icmp slt i32 %0, %i.h
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !322
  %i.k = and i32 %i.j, 1024
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = srem i32 %0, %i.e
  %i.m = sdiv i32 %0, %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = sdiv i32 %0, %i.g
  %i.o = srem i32 %0, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.014 = phi i32 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.o, %bb.d ]
  tail call void @_ZN6ImPlot14SubplotSetCellEii(i32 noundef %.014, i32 noundef %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot13BeginSubplotsEPKciiRK6ImVec2iPfS5_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca %struct.ImVec4, align 8             ; 5 uses
  %10 = alloca %struct.ImVec4, align 8            ; 5 uses
  %11 = alloca %struct.ImRect, align 16           ; 4 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 4            ; 5 uses
  %14 = alloca %struct.ImRect, align 16           ; 4 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 8 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.g = icmp sgt i32 %1, 0                       ; 4 uses
  %i.h = icmp sgt i32 %2, 0                       ; 4 uses
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.144) #32 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not390 = icmp eq ptr %i.j, null
  br i1 %.not390, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 19 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.145) #32 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr @GImGui, align 8, !tbaa !48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 5184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 209
  %i.u = load i8, ptr %i.t, align 1, !tbaa !416, !range !263, !noundef !264
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br i1 %i.v, label %bb.dd, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.s, ptr noundef %0, ptr noundef null) #32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.z = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %i.w, i32 noundef -1) #32
  %.not.i = icmp eq i32 %i.z, -1
  br i1 %.not.i, label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !239
  %i.ac = icmp eq ptr %i.ab, null
  br label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit

_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit:      ; preds = %bb.h, %bb.i
  %i.ad = phi i1 [ %i.ac, %bb.i ], [ true, %bb.h ]
  %i.ae = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %i.w, i32 noundef -1) #32 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29 ; 2 uses
  %.not.i400 = icmp eq i32 %i.af, -1
  br i1 %.not.i400, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !239
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [336 x i8], ptr %i.ah, i64 %i.ai
  br label %_ZN6ImPoolI13ImPlotSubplotE13GetOrAddByKeyEj.exit

bb.k:                                             ; preds = %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !243
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !29
  %i.am = tail call noundef ptr @_ZN6ImPoolI13ImPlotSubplotE3AddEv(ptr noundef nonnull align 8 dereferenceable(40) %i.x)
  br label %_ZN6ImPoolI13ImPlotSubplotE13GetOrAddByKeyEj.exit

_ZN6ImPoolI13ImPlotSubplotE13GetOrAddByKeyEj.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi ptr [ %i.aj, %bb.j ], [ %i.am, %bb.k ] ; 70 uses
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !218
  store i32 %i.w, ptr %.0.i, align 8, !tbaa !454
  %i.an = add i32 %i.w, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !455
  %i.ap = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) #32
  %i.aq = icmp ne ptr %i.ap, %0
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 329
  %i.as = zext i1 %i.aq to i8
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !323
  tail call void @_ZN5ImGui6PushIDEi(i32 noundef %i.w) #32
  br i1 %i.ad, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %_ZN6ImPoolI13ImPlotSubplotE13GetOrAddByKeyEj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !456
  %.not391 = icmp eq i32 %4, %i.au
  br i1 %.not391, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %_ZN6ImPoolI13ImPlotSubplotE13GetOrAddByKeyEj.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %4, ptr %i.av, align 4, !tbaa !322
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %4, ptr %i.aw, align 8, !tbaa !456
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 168 ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !449
  %.not392 = icmp eq i32 %i.ay, %1
  br i1 %.not392, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 172
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !450
  %.not393 = icmp eq i32 %i.ba, %2
  br i1 %.not393, label %.loopexit518, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 228 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !457 ; 4 uses
  %i.be = icmp sgt i32 %1, %i.bd
  br i1 %i.be, label %bb.p, label %_ZN8ImVectorI19ImPlotAlignmentDataE6resizeEi.exit

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI19ImPlotAlignmentDataE14_grow_capacityEi.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = sdiv i32 %i.bd, 2
  %i.bg = add nsw i32 %i.bf, %i.bd
  br label %_ZNK8ImVectorI19ImPlotAlignmentDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI19ImPlotAlignmentDataE14_grow_capacityEi.exit.i: ; preds = %bb.q, %bb.p
  %i.bh = phi i32 [ %i.bg, %bb.q ], [ 8, %bb.p ]
  %i.bi = tail call noundef i32 @llvm.smax.i32(i32 %i.bh, i32 %1) ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, 20
  %i.bl = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bk) #32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i, i64 232 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !453 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bn, null
  br i1 %.not6.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK8ImVectorI19ImPlotAlignmentDataE14_grow_capacityEi.exit.i
  %i.bo = load i32, ptr %i.bb, align 8, !tbaa !458
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %i.bp, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bl, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !453
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.br) #32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK8ImVectorI19ImPlotAlignmentDataE14_grow_capacityEi.exit.i
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !453
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !457
  br label %_ZN8ImVectorI19ImPlotAlignmentDataE6resizeEi.exit

_ZN8ImVectorI19ImPlotAlignmentDataE6resizeEi.exit: ; preds = %bb.o, %bb.s
  store i32 %1, ptr %i.bb, align 8, !tbaa !458
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 288 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 292 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !675 ; 4 uses
  %i.bv = icmp sgt i32 %1, %i.bu
  br i1 %i.bv, label %bb.t, label %_ZN8ImVectorI11ImPlotRangeE6resizeEi.exit

bb.t:                                             ; preds = %_ZN8ImVectorI19ImPlotAlignmentDataE6resizeEi.exit
  %.not.i.i401 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i401, label %_ZNK8ImVectorI11ImPlotRangeE14_grow_capacityEi.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = sdiv i32 %i.bu, 2
  %i.bx = add nsw i32 %i.bw, %i.bu
  br label %_ZNK8ImVectorI11ImPlotRangeE14_grow_capacityEi.exit.i

_ZNK8ImVectorI11ImPlotRangeE14_grow_capacityEi.exit.i: ; preds = %bb.u, %bb.t
  %i.by = phi i32 [ %i.bx, %bb.u ], [ 8, %bb.t ]
  %i.bz = tail call noundef i32 @llvm.smax.i32(i32 %i.by, i32 %1) ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 4
  %i.cc = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.cb) #32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 296 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !452 ; 2 uses
  %.not6.i.i402 = icmp eq ptr %i.ce, null
  br i1 %.not6.i.i402, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK8ImVectorI11ImPlotRangeE14_grow_capacityEi.exit.i
  %i.cf = load i32, ptr %i.bs, align 8, !tbaa !676
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cc, ptr nonnull align 8 %i.ce, i64 %i.ch, i1 false)
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !452
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ci) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK8ImVectorI11ImPlotRangeE14_grow_capacityEi.exit.i
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !452
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !675
  br label %_ZN8ImVectorI11ImPlotRangeE6resizeEi.exit
end_hunk_2
begin_hunk_3_@_ZN6ImPlot13BeginSubplotsEPKciiRK6ImVec2iPfS5_:bb.a
  %i.qu = fsub float %i.qt, %i.qs
  store float %i.qu, ptr %i.ne, align 4, !tbaa !680
  br label %bb.be

bb.be:                                            ; preds = %.thread664, %bb.bd, %bb.bc
  %or.cond20 = and i1 %i.oh, %i.qe
  br i1 %or.cond20, label %.thread668, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not21 = xor i1 %i.qe, true
  %or.cond23 = or i1 %i.oh, %.not21
  %or.cond25 = or i1 %i.qc, %or.cond23
  %or.cond27 = or i1 %spec.select, %or.cond25
  br i1 %or.cond27, label %bb.bg, label %.thread668

.thread668:                                       ; preds = %bb.bf, %bb.be
  %i.qv = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.qw = load float, ptr %i.qv, align 8, !tbaa !426
  %i.qx = fadd float %.sink.i, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.i, i64 200 ; 2 uses
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !681
  %i.ra = fadd float %i.qz, %i.qx
  store float %i.ra, ptr %i.qy, align 8, !tbaa !681
  br label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %or.cond29 = and i1 %i.oh, %spec.select501
  br i1 %or.cond29, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not30 = xor i1 %spec.select501, true
  %or.cond32 = or i1 %i.oh, %.not30
  %or.cond34 = or i1 %or.cond32, %i.qc
  %or.cond36 = or i1 %spec.select, %or.cond34
  br i1 %or.cond36, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.rb = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.rc = load float, ptr %i.rb, align 8, !tbaa !426
  %i.rd = fadd float %.sink.i, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i, i64 208 ; 2 uses
  %i.rf = load float, ptr %i.re, align 8, !tbaa !682
  %i.rg = fsub float %i.rf, %i.rd
  store float %i.rg, ptr %i.re, align 8, !tbaa !682
  br label %.critedge

.critedge:                                        ; preds = %.thread668, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, %bb.bh, %bb.bi, %bb.aw, %bb.av
  %.sroa.0118.0.copyload = load <2 x float>, ptr %i.mx, align 4, !tbaa !41
  %.sroa.0117.0.copyload = load <2 x float>, ptr %.sroa.4482.0..sroa_idx, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.rh = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.ri = getelementptr i8, ptr %i.rh, i64 520
  %.val.i.i.i = load float, ptr %i.ri, align 4, !tbaa !46
  %i.rj = fcmp oeq float %.val.i.i.i, -1.000000e+00
  br i1 %i.rj, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.critedge
  %i.rk = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 7) #32, !inline_history !0 ; 2 uses
  %.sroa.30.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

bb.bk:                                            ; preds = %.critedge
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 508
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.rh, i64 516
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

_ZN6ImPlotL16GetStyleColorU32Ei.exit:             ; preds = %bb.bj, %bb.bk
  %.sroa.078.0.copyload92.i.pn.in = phi ptr [ %i.rk, %bb.bj ], [ %i.rl, %bb.bk ]
  %.sroa.30.0.copyload114.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx113.i, %bb.bj ], [ %.sroa.3.0..sroa_idx.i.i, %bb.bk ]
  %.sroa.30.0.copyload114.i.pn = load <2 x float>, ptr %.sroa.30.0.copyload114.i.pn.in, align 4, !tbaa !41
  %.sroa.078.0.copyload92.i.pn = load <2 x float>, ptr %.sroa.078.0.copyload92.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.078.0.copyload92.i.pn, ptr %10, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.30.0.copyload114.i.pn, ptr %i.rm, align 8
  %i.rn = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ro = call noundef nonnull align 4 dereferenceable(1232) ptr @_ZN5ImGui8GetStyleEv() #32
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 84
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !429
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.0118.0.copyload, <2 x float> %.sroa.0117.0.copyload, i32 noundef %i.rn, i1 noundef zeroext true, float noundef %i.rq) #32
  %.pre604 = load i32, ptr %i.md, align 4, !tbaa !322 ; 2 uses
  %i.rr = and i32 %.pre604, 1
  %.not509 = icmp eq i32 %i.rr, 0
  %or.cond683 = select i1 %i.mh, i1 %.not509, i1 false
  br i1 %or.cond683, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.rs = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 616
  %.val.i.i.i439 = load float, ptr %i.rt, align 4, !tbaa !46
  %i.ru = fcmp oeq float %.val.i.i.i439, -1.000000e+00
  br i1 %i.ru, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.rv = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 0) #32, !inline_history !0 ; 2 uses
  %.sroa.30.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit444

bb.bn:                                            ; preds = %bb.bl
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 604
  %.sroa.3.0..sroa_idx.i.i441 = getelementptr inbounds nuw i8, ptr %i.rs, i64 612
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit444

_ZN6ImPlotL16GetStyleColorU32Ei.exit444:          ; preds = %bb.bm, %bb.bn
  %.sroa.078.0.copyload96.i.pn.in = phi ptr [ %i.rv, %bb.bm ], [ %i.rw, %bb.bn ]
  %.sroa.30.0.copyload122.i.pn.in = phi ptr [ %.sroa.30.0..sroa_idx121.i, %bb.bm ], [ %.sroa.3.0..sroa_idx.i.i441, %bb.bn ]
  %.sroa.30.0.copyload122.i.pn = load <2 x float>, ptr %.sroa.30.0.copyload122.i.pn.in, align 4, !tbaa !41
  %.sroa.078.0.copyload96.i.pn = load <2 x float>, ptr %.sroa.078.0.copyload96.i.pn.in, align 4, !tbaa !41
  store <2 x float> %.sroa.078.0.copyload96.i.pn, ptr %9, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.30.0.copyload122.i.pn, ptr %i.rx, align 8
  %i.ry = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %9) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.rz = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32 ; 2 uses
  %i.sa = load float, ptr %i.nb, align 4, !tbaa !244
  %i.sb = load float, ptr %i.ne, align 4, !tbaa !245
  %i.sc = fadd float %i.sa, %i.sb
  %i.sd = fmul float %i.sc, 5.000000e-01          ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i, i64 200
  %i.sf = load float, ptr %i.se, align 8, !tbaa !681
  %i.sg = fsub float %i.sf, %i.ml
  %i.sh = extractelement <2 x float> %i.mo, i64 1
  %i.si = fadd float %i.sh, %i.sg                 ; 2 uses
  %i.sj = call noundef float @_ZN5ImGui17GetTextLineHeightEv() #32
  %i.sk = call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) #32 ; 3 uses
  %i.sl = ptrtoint ptr %i.sk to i64               ; 2 uses
  %i.sm = ptrtoint ptr %0 to i64
  %i.sn = sub i64 %i.sl, %i.sm
  %i.so = call noundef ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %i.sn) #33 ; 2 uses
  %.not41.i = icmp eq ptr %i.so, null
  br i1 %.not41.i, label %_ZN6ImPlot15AddTextCenteredEP10ImDrawList6ImVec2jPKcS4_.exit, label %.lr.ph.i447

.lr.ph.i447:                                      ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit444
  %i.sp = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i447
  %i.sq = phi ptr [ %i.so, %.lr.ph.i447 ], [ %i.sz, %bb.bo ] ; 3 uses
  %.043.i = phi ptr [ %0, %.lr.ph.i447 ], [ %i.sv, %bb.bo ] ; 2 uses
  %.03042.i = phi float [ 0.000000e+00, %.lr.ph.i447 ], [ %i.sw, %bb.bo ] ; 2 uses
  %i.sr = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.043.i, ptr noundef nonnull %i.sq, i1 noundef zeroext true, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %.sroa.0.0.vec.extract.i448 = extractelement <2 x float> %i.sr, i64 0
  %i.ss = fneg float %.sroa.0.0.vec.extract.i448
  %i.st = call float @llvm.fmuladd.f32(float %i.ss, float 5.000000e-01, float %i.sd)
  %i.su = fadd float %i.si, %.03042.i
  store float %i.st, ptr %7, align 4, !tbaa !172
  store float %i.su, ptr %i.sp, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.rz, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.ry, ptr noundef %.043.i, ptr noundef nonnull %i.sq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 1 ; 4 uses
  %i.sw = fadd float %i.sj, %.03042.i             ; 2 uses
  %i.sx = ptrtoint ptr %i.sv to i64
  %i.sy = sub i64 %i.sl, %i.sx
  %i.sz = call noundef ptr @memchr(ptr noundef nonnull %i.sv, i32 noundef 10, i64 noundef %i.sy) #33 ; 2 uses
  %.not.i449 = icmp eq ptr %i.sz, null
  br i1 %.not.i449, label %_ZN6ImPlot15AddTextCenteredEP10ImDrawList6ImVec2jPKcS4_.exit, label %bb.bo

_ZN6ImPlot15AddTextCenteredEP10ImDrawList6ImVec2jPKcS4_.exit: ; preds = %bb.bo, %_ZN6ImPlotL16GetStyleColorU32Ei.exit444
  %.030.lcssa.i451 = phi float [ 0.000000e+00, %_ZN6ImPlotL16GetStyleColorU32Ei.exit444 ], [ %i.sw, %bb.bo ]
  %.0.lcssa.i = phi ptr [ %0, %_ZN6ImPlotL16GetStyleColorU32Ei.exit444 ], [ %i.sv, %bb.bo ] ; 2 uses
  %i.ta = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.0.lcssa.i, ptr noundef %i.sk, i1 noundef zeroext true, float noundef -1.000000e+00) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %.sroa.0.0.vec.extract34.i = extractelement <2 x float> %i.ta, i64 0
  %i.tb = fneg float %.sroa.0.0.vec.extract34.i
  %i.tc = call float @llvm.fmuladd.f32(float %i.tb, float 5.000000e-01, float %i.sd)
  %i.td = fadd float %i.si, %.030.lcssa.i451
  store float %i.tc, ptr %8, align 4, !tbaa !172
  %i.te = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.td, ptr %i.te, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.rz, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.ry, ptr noundef %.0.lcssa.i, ptr noundef %i.sk) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.pre603 = load i32, ptr %i.md, align 4, !tbaa !322
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN6ImPlot15AddTextCenteredEP10ImDrawList6ImVec2jPKcS4_.exit, %_ZN6ImPlotL16GetStyleColorU32Ei.exit
  %i.tf = phi i32 [ %.pre603, %_ZN6ImPlot15AddTextCenteredEP10ImDrawList6ImVec2jPKcS4_.exit ], [ %.pre604, %_ZN6ImPlotL16GetStyleColorU32Ei.exit ]
  %i.tg = and i32 %i.tf, 8
  %.not510 = icmp eq i32 %i.tg, 0
  br i1 %.not510, label %bb.bq, label %.loopexit515

bb.bq:                                            ; preds = %bb.bp
  %i.th = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32 ; 2 uses
  %i.ti = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 3860
  %i.tk = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.tj) #32 ; 2 uses
  %i.tl = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 3876
  %i.tn = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.tm) #32 ; 2 uses
  %i.to = load float, ptr %i.nb, align 4, !tbaa !679
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i, i64 200 ; 5 uses
  %i.tq = load i32, ptr %i.ax, align 8, !tbaa !449
  %i.tr = icmp sgt i32 %i.tq, 1
  br i1 %i.tr, label %.lr.ph536, label %.preheader514

.lr.ph536:                                        ; preds = %bb.bq
  %i.ts = load float, ptr %i.tp, align 8, !tbaa !681
  %i.tt = getelementptr inbounds nuw i8, ptr %.0.i, i64 264 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.i, i64 208 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.q, i64 5288
  %i.tw = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.i, i64 324 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %13, i64 4
  br label %bb.br

.preheader514:                                    ; preds = %bb.cb, %bb.bq
  %.0372.lcssa = phi i32 [ 1, %bb.bq ], [ %i.wp, %bb.cb ]
  %i.tz = load i32, ptr %i.mc, align 4, !tbaa !450
  %i.ua = icmp sgt i32 %i.tz, 1
  br i1 %i.ua, label %.lr.ph541, label %.loopexit515

.lr.ph541:                                        ; preds = %.preheader514
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.i, i64 280 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.0.i, i64 208 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.q, i64 5288
  %i.ue = getelementptr inbounds nuw i8, ptr %.0.i, i64 320 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0.i, i64 324 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %16, i64 4
  br label %bb.cc

bb.br:                                            ; preds = %.lr.ph536, %bb.cb
  %indvars.iv577 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next578, %bb.cb ] ; 5 uses
  %.0372532 = phi i32 [ 1, %.lr.ph536 ], [ %i.wp, %bb.cb ] ; 2 uses
  %.0373531 = phi float [ %i.ts, %.lr.ph536 ], [ %17, %bb.cb ]
  %i.uh = load ptr, ptr %i.tt, align 8, !tbaa !451
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv577
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !41
  %i.uk = load float, ptr %i.tu, align 8, !tbaa !247
  %i.ul = load float, ptr %i.tp, align 8, !tbaa !246
  %i.um = fsub float %i.uk, %i.ul
  %i.un = load i32, ptr %.0.i, align 8, !tbaa !454
  %i.uo = add i32 %i.un, %.0372532                ; 2 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.uo) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %17 = call float @llvm.fmuladd.f32(float %i.uj, float %i.um, float %.0373531) ; 3 uses
  %i.up = load float, ptr %i.nb, align 4, !tbaa !679
  %18 = load float, ptr %i.ne, align 4, !tbaa !680
  %19 = insertelement <4 x float> poison, float %i.up, i64 0
  %20 = insertelement <4 x float> %19, float %17, i64 1
  %21 = insertelement <4 x float> %20, float %18, i64 2
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %23 = fadd <4 x float> %22, <float -0.000000e+00, float -4.000000e+00, float -0.000000e+00, float 4.000000e+00>
  store <4 x float> %23, ptr %11, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i8 0, ptr %i.c, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1, !tbaa !262
  %i.uq = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.uo, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 2320) #32
  %i.ur = load i8, ptr %i.c, align 1, !tbaa !262, !range !263, !noundef !264
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ut = load float, ptr %i.tv, align 8, !tbaa !683
  %i.uu = fcmp ogt float %i.ut, 6.000000e-02
  %i.uv = load i8, ptr %i.d, align 1, !range !263 ; 2 uses
  %i.uw = trunc nuw i8 %i.uv to i1
  %or.cond38 = select i1 %i.uu, i1 true, i1 %i.uw
  br i1 %or.cond38, label %bb.bu, label %bb.cb

bb.bt:                                            ; preds = %bb.br
  %.old = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %.old37 = trunc nuw i8 %.old to i1
  br i1 %.old37, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ux = phi i8 [ 1, %bb.bt ], [ %i.uv, %bb.bs ]
  br i1 %i.uq, label %bb.bv, label %.critedge397

bb.bv:                                            ; preds = %bb.bu
  %i.uy = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0) #32
  %.pre605 = load ptr, ptr %i.tt, align 8, !tbaa !451 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.pre605, i64 %indvars.iv577 ; 3 uses
  %i.va = load float, ptr %i.uz, align 4, !tbaa !41 ; 2 uses
  br i1 %i.uy, label %bb.bw, label %._crit_edge606

bb.bw:                                            ; preds = %bb.bv
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4 ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !41
  %i.vd = fadd float %i.va, %i.vc
  %i.ve = fmul float %i.vd, 5.000000e-01          ; 3 uses
  store float %i.ve, ptr %i.vb, align 4, !tbaa !41
  store float %i.ve, ptr %i.uz, align 4, !tbaa !41
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %bb.bv, %bb.bw
  %i.vf = phi float [ %i.ve, %bb.bw ], [ %i.va, %bb.bv ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %.pre605, i64 %indvars.iv577
  store float %i.vf, ptr %i.tw, align 8, !tbaa !41
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !41
  store float %i.vi, ptr %i.tx, align 4, !tbaa !41
  %.pre608 = load i8, ptr %i.d, align 1, !tbaa !262, !range !263
  br label %.critedge397

.critedge397:                                     ; preds = %bb.bu, %._crit_edge606
  %i.vj = phi i8 [ %i.ux, %bb.bu ], [ %.pre608, %._crit_edge606 ]
  %i.vk = trunc nuw i8 %i.vj to i1
  br i1 %i.vk, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %.critedge397
  %i.vl = call <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef 0, float noundef -1.000000e+00) #32
  %.sroa.074.4.vec.extract = extractelement <2 x float> %i.vl, i64 1
  %i.vm = load float, ptr %i.tu, align 8, !tbaa !247
  %i.vn = load float, ptr %i.tp, align 8, !tbaa !246
  %i.vo = fsub float %i.vm, %i.vn
  %i.vp = fdiv float %.sroa.074.4.vec.extract, %i.vo ; 3 uses
  %i.vq = load float, ptr %i.tw, align 8, !tbaa !41
  %i.vr = fadd float %i.vq, %i.vp                 ; 2 uses
  %i.vs = fcmp ogt float %i.vr, 1.000000e-01
  br i1 %i.vs, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.vt = load float, ptr %i.tx, align 4, !tbaa !41
  %i.vu = fsub float %i.vt, %i.vp
  %i.vv = fcmp ogt float %i.vu, 1.000000e-01
  br i1 %i.vv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.vw = load ptr, ptr %i.tt, align 8, !tbaa !451
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv577 ; 2 uses
  store float %i.vr, ptr %i.vx, align 4, !tbaa !41
  %i.vy = load float, ptr %i.tx, align 4, !tbaa !41
  %i.vz = fsub float %i.vy, %i.vp
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  store float %i.vz, ptr %i.wa, align 4, !tbaa !41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bx, %bb.by, %bb.bz, %.critedge397
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.wb = load float, ptr %i.nb, align 4, !tbaa !679
  %i.wc = insertelement <2 x float> poison, float %i.wb, i64 0
  %i.wd = insertelement <2 x float> %i.wc, float %17, i64 1
  %i.we = fadd <2 x float> %i.wd, splat (float 5.000000e-01)
  %i.wf = fptosi <2 x float> %i.we to <2 x i32>
  %i.wg = sitofp <2 x i32> %i.wf to <2 x float>   ; 2 uses
  store <2 x float> %i.wg, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.wh = load float, ptr %i.ne, align 4, !tbaa !680
  %i.wi = fadd float %i.wh, 5.000000e-01
  %i.wj = fptosi float %i.wi to i32
  %i.wk = sitofp i32 %i.wj to float
  store float %i.wk, ptr %13, align 4, !tbaa !172
  %i.wl = extractelement <2 x float> %i.wg, i64 1
  store float %i.wl, ptr %i.ty, align 4, !tbaa !173
  %i.wm = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.wn = trunc nuw i8 %i.wm to i1
  %i.wo = select i1 %i.wn, i32 %i.tn, i32 %i.tk
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.th, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, i32 noundef %i.wo, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 3) #32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bs, %bb.ca, %bb.bt
  %i.wp = add nuw nsw i32 %.0372532, 1            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %i.wq = load i32, ptr %i.ax, align 8, !tbaa !449
  %i.wr = add nsw i32 %i.wq, -1
  %i.ws = sext i32 %i.wr to i64
  %i.wt = icmp slt i64 %indvars.iv.next578, %i.ws
  br i1 %i.wt, label %bb.br, label %.preheader514, !llvm.loop !663

bb.cc:                                            ; preds = %.lr.ph541, %bb.cm
  %indvars.iv580 = phi i64 [ 0, %.lr.ph541 ], [ %indvars.iv.next581, %bb.cm ] ; 5 uses
  %.1538 = phi i32 [ %.0372.lcssa, %.lr.ph541 ], [ %i.zc, %bb.cm ] ; 2 uses
  %.0374537 = phi float [ %i.to, %.lr.ph541 ], [ %24, %bb.cm ]
  %i.wu = load ptr, ptr %i.ub, align 8, !tbaa !451
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv580
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !41
  %i.wx = load float, ptr %i.ne, align 4, !tbaa !245
  %i.wy = load float, ptr %i.nb, align 4, !tbaa !244
  %i.wz = fsub float %i.wx, %i.wy
  %i.xa = load i32, ptr %.0.i, align 8, !tbaa !454
  %i.xb = add i32 %i.xa, %.1538                   ; 2 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.xb) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %24 = call float @llvm.fmuladd.f32(float %i.ww, float %i.wz, float %.0374537) ; 3 uses
  %i.xc = load float, ptr %i.tp, align 8, !tbaa !681
  %25 = load float, ptr %i.uc, align 8, !tbaa !682
  %26 = insertelement <4 x float> poison, float %24, i64 0
  %27 = insertelement <4 x float> %26, float %i.xc, i64 1
  %28 = insertelement <4 x float> %27, float %25, i64 3
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %30 = fadd <4 x float> %29, <float -4.000000e+00, float -0.000000e+00, float 4.000000e+00, float -0.000000e+00>
  store <4 x float> %30, ptr %14, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.e, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store i8 0, ptr %i.f, align 1, !tbaa !262
  %i.xd = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %14, i32 noundef %i.xb, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 2320) #32
  %i.xe = load i8, ptr %i.e, align 1, !tbaa !262, !range !263, !noundef !264
  %i.xf = trunc nuw i8 %i.xe to i1
  br i1 %i.xf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.xg = load float, ptr %i.ud, align 8, !tbaa !683
  %i.xh = fcmp ogt float %i.xg, 6.000000e-02
  %i.xi = load i8, ptr %i.f, align 1, !range !263 ; 2 uses
  %i.xj = trunc nuw i8 %i.xi to i1
  %or.cond41 = select i1 %i.xh, i1 true, i1 %i.xj
  br i1 %or.cond41, label %bb.cf, label %bb.cm

bb.ce:                                            ; preds = %bb.cc
  %.old39 = load i8, ptr %i.f, align 1, !tbaa !262, !range !263, !noundef !264
  %.old40 = trunc nuw i8 %.old39 to i1
  br i1 %.old40, label %bb.cf, label %bb.cm

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.xk = phi i8 [ 1, %bb.ce ], [ %i.xi, %bb.cd ]
  br i1 %i.xd, label %bb.cg, label %.critedge399

bb.cg:                                            ; preds = %bb.cf
  %i.xl = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0) #32
  %.pre609 = load ptr, ptr %i.ub, align 8, !tbaa !451 ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.pre609, i64 %indvars.iv580 ; 3 uses
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !41 ; 2 uses
  br i1 %i.xl, label %bb.ch, label %._crit_edge610

bb.ch:                                            ; preds = %bb.cg
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 4 ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !41
  %i.xq = fadd float %i.xn, %i.xp
  %i.xr = fmul float %i.xq, 5.000000e-01          ; 3 uses
  store float %i.xr, ptr %i.xo, align 4, !tbaa !41
  store float %i.xr, ptr %i.xm, align 4, !tbaa !41
  br label %._crit_edge610

._crit_edge610:                                   ; preds = %bb.cg, %bb.ch
  %i.xs = phi float [ %i.xr, %bb.ch ], [ %i.xn, %bb.cg ]
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.pre609, i64 %indvars.iv580
  store float %i.xs, ptr %i.ue, align 8, !tbaa !41
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !41
  store float %i.xv, ptr %i.uf, align 4, !tbaa !41
  %.pre613 = load i8, ptr %i.f, align 1, !tbaa !262, !range !263
  br label %.critedge399

.critedge399:                                     ; preds = %bb.cf, %._crit_edge610
  %i.xw = phi i8 [ %i.xk, %bb.cf ], [ %.pre613, %._crit_edge610 ]
  %i.xx = trunc nuw i8 %i.xw to i1
  br i1 %i.xx, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %.critedge399
  %i.xy = call <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef 0, float noundef -1.000000e+00) #32
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.xy, i64 0
  %i.xz = load float, ptr %i.ne, align 4, !tbaa !245
  %i.ya = load float, ptr %i.nb, align 4, !tbaa !244
  %i.yb = fsub float %i.xz, %i.ya
  %i.yc = fdiv float %.sroa.0.0.vec.extract, %i.yb ; 3 uses
  %i.yd = load float, ptr %i.ue, align 8, !tbaa !41
  %i.ye = fadd float %i.yd, %i.yc                 ; 2 uses
  %i.yf = fcmp ogt float %i.ye, 1.000000e-01
  br i1 %i.yf, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.yg = load float, ptr %i.uf, align 4, !tbaa !41
  %i.yh = fsub float %i.yg, %i.yc
  %i.yi = fcmp ogt float %i.yh, 1.000000e-01
  br i1 %i.yi, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.yj = load ptr, ptr %i.ub, align 8, !tbaa !451
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv580 ; 2 uses
  store float %i.ye, ptr %i.yk, align 4, !tbaa !41
  %i.yl = load float, ptr %i.uf, align 4, !tbaa !41
  %i.ym = fsub float %i.yl, %i.yc
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 4
  store float %i.ym, ptr %i.yn, align 4, !tbaa !41
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %bb.cj, %bb.ck, %.critedge399
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.yo = load float, ptr %i.tp, align 8, !tbaa !681
  %i.yp = insertelement <2 x float> poison, float %24, i64 0
  %i.yq = insertelement <2 x float> %i.yp, float %i.yo, i64 1
  %i.yr = fadd <2 x float> %i.yq, splat (float 5.000000e-01)
  %i.ys = fptosi <2 x float> %i.yr to <2 x i32>
  %i.yt = sitofp <2 x i32> %i.ys to <2 x float>   ; 2 uses
  store <2 x float> %i.yt, ptr %15, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.yu = load float, ptr %i.uc, align 8, !tbaa !682
  %i.yv = fadd float %i.yu, 5.000000e-01
  %i.yw = fptosi float %i.yv to i32
  %i.yx = sitofp i32 %i.yw to float
  %i.yy = extractelement <2 x float> %i.yt, i64 0
  store float %i.yy, ptr %16, align 4, !tbaa !172
  store float %i.yx, ptr %i.ug, align 4, !tbaa !173
  %i.yz = load i8, ptr %i.f, align 1, !tbaa !262, !range !263, !noundef !264
  %i.za = trunc nuw i8 %i.yz to i1
  %i.zb = select i1 %i.za, i32 %i.tn, i32 %i.tk
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.th, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 noundef %i.zb, float noundef 1.000000e+00) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 4) #32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cd, %bb.cl, %bb.ce
  %i.zc = add nuw nsw i32 %.1538, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %i.zd = load i32, ptr %i.mc, align 4, !tbaa !450
  %i.ze = add nsw i32 %i.zd, -1
  %i.zf = sext i32 %i.ze to i64
  %i.zg = icmp slt i64 %indvars.iv.next581, %i.zf
  br i1 %i.zg, label %bb.cc, label %.loopexit515, !llvm.loop !664

.loopexit515:                                     ; preds = %bb.cm, %.preheader514, %bb.bp
  %or.cond552 = and i1 %.not394, %i.g
  br i1 %or.cond552, label %.lr.ph543, label %.loopexit513

.lr.ph543:                                        ; preds = %.loopexit515
  %i.zh = getelementptr inbounds nuw i8, ptr %.0.i, i64 264
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !451 ; 7 uses
  %wide.trip.count586 = zext nneg i32 %1 to i64   ; 5 uses
  %min.iters.check710 = icmp ult i32 %1, 8
  %i.zj = ptrtoaddr ptr %i.zi to i64
  %i.zk = sub i64 %i.zj, %i.b
  %diff.check712 = icmp ugt i64 %i.zk, -32
  %or.cond751 = select i1 %min.iters.check710, i1 true, i1 %diff.check712
  br i1 %or.cond751, label %scalar.ph709.preheader, label %vector.ph713

vector.ph713:                                     ; preds = %.lr.ph543
  %n.vec714 = and i64 %wide.trip.count586, 2147483640 ; 3 uses
  %broadcast.splatinsert715 = insertelement <4 x float> poison, float %.0377, i64 0
  %broadcast.splat716 = shufflevector <4 x float> %broadcast.splatinsert715, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body717

vector.body717:                                   ; preds = %vector.body717, %vector.ph713
  %index718 = phi i64 [ 0, %vector.ph713 ], [ %index.next721, %vector.body717 ] ; 3 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %index718 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %wide.load719 = load <4 x float>, ptr %i.zl, align 4, !tbaa !41
  %wide.load720 = load <4 x float>, ptr %i.zm, align 4, !tbaa !41
  %i.zn = fmul <4 x float> %broadcast.splat716, %wide.load719
  %i.zo = fmul <4 x float> %broadcast.splat716, %wide.load720
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index718 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store <4 x float> %i.zn, ptr %i.zp, align 4, !tbaa !41
  store <4 x float> %i.zo, ptr %i.zq, align 4, !tbaa !41
  %index.next721 = add nuw i64 %index718, 8       ; 2 uses
  %i.zr = icmp eq i64 %index.next721, %n.vec714
  br i1 %i.zr, label %middle.block722, label %vector.body717, !llvm.loop !665

middle.block722:                                  ; preds = %vector.body717
  %cmp.n723 = icmp eq i64 %n.vec714, %wide.trip.count586
  br i1 %cmp.n723, label %.loopexit513, label %scalar.ph709.preheader

scalar.ph709.preheader:                           ; preds = %.lr.ph543, %middle.block722
  %indvars.iv583.ph = phi i64 [ 0, %.lr.ph543 ], [ %n.vec714, %middle.block722 ] ; 3 uses
  %xtraiter786 = and i64 %wide.trip.count586, 3   ; 2 uses
  %lcmp.mod787.not = icmp eq i64 %xtraiter786, 0
  br i1 %lcmp.mod787.not, label %scalar.ph709.prol.loopexit, label %scalar.ph709.prol

scalar.ph709.prol:                                ; preds = %scalar.ph709.preheader, %scalar.ph709.prol
  %indvars.iv583.prol = phi i64 [ %indvars.iv.next584.prol, %scalar.ph709.prol ], [ %indvars.iv583.ph, %scalar.ph709.preheader ] ; 3 uses
  %prol.iter788 = phi i64 [ %prol.iter788.next, %scalar.ph709.prol ], [ 0, %scalar.ph709.preheader ]
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv583.prol
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !41
  %i.zu = fmul float %.0377, %i.zt
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv583.prol
  store float %i.zu, ptr %i.zv, align 4, !tbaa !41
  %indvars.iv.next584.prol = add nuw nsw i64 %indvars.iv583.prol, 1 ; 2 uses
  %prol.iter788.next = add i64 %prol.iter788, 1   ; 2 uses
  %prol.iter788.cmp.not = icmp eq i64 %prol.iter788.next, %xtraiter786
  br i1 %prol.iter788.cmp.not, label %scalar.ph709.prol.loopexit, label %scalar.ph709.prol, !llvm.loop !666

scalar.ph709.prol.loopexit:                       ; preds = %scalar.ph709.prol, %scalar.ph709.preheader
  %indvars.iv583.unr = phi i64 [ %indvars.iv583.ph, %scalar.ph709.preheader ], [ %indvars.iv.next584.prol, %scalar.ph709.prol ]
  %i.zw = sub nsw i64 %indvars.iv583.ph, %wide.trip.count586
  %i.zx = icmp ugt i64 %i.zw, -4
  br i1 %i.zx, label %.loopexit513, label %scalar.ph709

scalar.ph709:                                     ; preds = %scalar.ph709.prol.loopexit, %scalar.ph709
  %indvars.iv583 = phi i64 [ %indvars.iv.next584.3, %scalar.ph709 ], [ %indvars.iv583.unr, %scalar.ph709.prol.loopexit ] ; 6 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv583
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !41
  %i.aaa = fmul float %.0377, %i.zz
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv583
  store float %i.aaa, ptr %i.aab, align 4, !tbaa !41
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next584
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !41
  %i.aae = fmul float %.0377, %i.aad
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next584
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !41
  %indvars.iv.next584.1 = add nuw nsw i64 %indvars.iv583, 2 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next584.1
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !41
  %i.aai = fmul float %.0377, %i.aah
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next584.1
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !41
  %indvars.iv.next584.2 = add nuw nsw i64 %indvars.iv583, 3 ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next584.2
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !41
  %i.aam = fmul float %.0377, %i.aal
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next584.2
  store float %i.aam, ptr %i.aan, align 4, !tbaa !41
  %indvars.iv.next584.3 = add nuw nsw i64 %indvars.iv583, 4 ; 2 uses
  %exitcond587.not.3 = icmp eq i64 %indvars.iv.next584.3, %wide.trip.count586
  br i1 %exitcond587.not.3, label %.loopexit513, label %scalar.ph709, !llvm.loop !667

.loopexit513:                                     ; preds = %scalar.ph709.prol.loopexit, %scalar.ph709, %middle.block722, %.loopexit515
  %or.cond554 = and i1 %.not395, %i.h
  br i1 %or.cond554, label %.lr.ph545, label %.loopexit

.lr.ph545:                                        ; preds = %.loopexit513
  %i.aao = getelementptr inbounds nuw i8, ptr %.0.i, i64 280
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !451 ; 7 uses
  %wide.trip.count591 = zext nneg i32 %2 to i64   ; 5 uses
  %min.iters.check728 = icmp ult i32 %2, 8
  %i.aaq = ptrtoaddr ptr %i.aap to i64
  %i.aar = sub i64 %i.aaq, %i.a
  %diff.check730 = icmp ugt i64 %i.aar, -32
  %or.cond754 = select i1 %min.iters.check728, i1 true, i1 %diff.check730
  br i1 %or.cond754, label %scalar.ph727.preheader, label %vector.ph731

vector.ph731:                                     ; preds = %.lr.ph545
  %n.vec732 = and i64 %wide.trip.count591, 2147483640 ; 3 uses
  %broadcast.splatinsert733 = insertelement <4 x float> poison, float %.0378, i64 0
  %broadcast.splat734 = shufflevector <4 x float> %broadcast.splatinsert733, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body735

vector.body735:                                   ; preds = %vector.body735, %vector.ph731
  %index736 = phi i64 [ 0, %vector.ph731 ], [ %index.next739, %vector.body735 ] ; 3 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %index736 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %wide.load737 = load <4 x float>, ptr %i.aas, align 4, !tbaa !41
  %wide.load738 = load <4 x float>, ptr %i.aat, align 4, !tbaa !41
  %i.aau = fmul <4 x float> %broadcast.splat734, %wide.load737
  %i.aav = fmul <4 x float> %broadcast.splat734, %wide.load738
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index736 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  store <4 x float> %i.aau, ptr %i.aaw, align 4, !tbaa !41
  store <4 x float> %i.aav, ptr %i.aax, align 4, !tbaa !41
  %index.next739 = add nuw i64 %index736, 8       ; 2 uses
  %i.aay = icmp eq i64 %index.next739, %n.vec732
  br i1 %i.aay, label %middle.block740, label %vector.body735, !llvm.loop !668

middle.block740:                                  ; preds = %vector.body735
  %cmp.n741 = icmp eq i64 %n.vec732, %wide.trip.count591
  br i1 %cmp.n741, label %.loopexit, label %scalar.ph727.preheader

scalar.ph727.preheader:                           ; preds = %.lr.ph545, %middle.block740
  %indvars.iv588.ph = phi i64 [ 0, %.lr.ph545 ], [ %n.vec732, %middle.block740 ] ; 3 uses
  %xtraiter789 = and i64 %wide.trip.count591, 3   ; 2 uses
  %lcmp.mod790.not = icmp eq i64 %xtraiter789, 0
  br i1 %lcmp.mod790.not, label %scalar.ph727.prol.loopexit, label %scalar.ph727.prol

scalar.ph727.prol:                                ; preds = %scalar.ph727.preheader, %scalar.ph727.prol
  %indvars.iv588.prol = phi i64 [ %indvars.iv.next589.prol, %scalar.ph727.prol ], [ %indvars.iv588.ph, %scalar.ph727.preheader ] ; 3 uses
  %prol.iter791 = phi i64 [ %prol.iter791.next, %scalar.ph727.prol ], [ 0, %scalar.ph727.preheader ]
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv588.prol
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !41
  %i.abb = fmul float %.0378, %i.aba
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv588.prol
  store float %i.abb, ptr %i.abc, align 4, !tbaa !41
  %indvars.iv.next589.prol = add nuw nsw i64 %indvars.iv588.prol, 1 ; 2 uses
  %prol.iter791.next = add i64 %prol.iter791, 1   ; 2 uses
  %prol.iter791.cmp.not = icmp eq i64 %prol.iter791.next, %xtraiter789
  br i1 %prol.iter791.cmp.not, label %scalar.ph727.prol.loopexit, label %scalar.ph727.prol, !llvm.loop !669

scalar.ph727.prol.loopexit:                       ; preds = %scalar.ph727.prol, %scalar.ph727.preheader
  %indvars.iv588.unr = phi i64 [ %indvars.iv588.ph, %scalar.ph727.preheader ], [ %indvars.iv.next589.prol, %scalar.ph727.prol ]
  %i.abd = sub nsw i64 %indvars.iv588.ph, %wide.trip.count591
  %i.abe = icmp ugt i64 %i.abd, -4
  br i1 %i.abe, label %.loopexit, label %scalar.ph727

scalar.ph727:                                     ; preds = %scalar.ph727.prol.loopexit, %scalar.ph727
  %indvars.iv588 = phi i64 [ %indvars.iv.next589.3, %scalar.ph727 ], [ %indvars.iv588.unr, %scalar.ph727.prol.loopexit ] ; 6 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv588
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !41
  %i.abh = fmul float %.0378, %i.abg
end_hunk_3
