inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
bb.n:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i92
  %i.es = load float, ptr %i.d, align 4, !tbaa !227 ; 2 uses
  %i.et = fcmp olt float %i.es, %i.dn
  %..i6.i95 = select i1 %i.et, float %i.es, float %i.dn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_Z7ImClampRK6ImVec2S1_S1_.exit.i92
  %i.eu = phi float [ %i.dr, %_Z7ImClampRK6ImVec2S1_S1_.exit.i92 ], [ %..i6.i95, %bb.n ]
  %i.ev = fcmp ogt float %i.dw, %i.dq
  br i1 %i.ev, label %_ZN6ImRect12ClipWithFullERKS_.exit99, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load float, ptr %i.e, align 4, !tbaa !228 ; 2 uses
  %i.ex = fcmp olt float %i.ew, %i.dq
  %.19.i7.i96 = select i1 %i.ex, float %i.ew, float %i.dq
  br label %_ZN6ImRect12ClipWithFullERKS_.exit99

_ZN6ImRect12ClipWithFullERKS_.exit99:             ; preds = %bb.o, %bb.p
  %i.ey = phi float [ %i.dw, %bb.o ], [ %.19.i7.i96, %bb.p ]
  %.sroa.0.0.vec.insert.i8.i97 = insertelement <2 x float> poison, float %i.eu, i64 0
  %.sroa.0.4.vec.insert.i9.i98 = insertelement <2 x float> %.sroa.0.0.vec.insert.i8.i97, float %i.ey, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i9.i98, ptr %i.ap, align 8
  %i.ez = load ptr, ptr %i.aq, align 8, !tbaa !389 ; 2 uses
  %.not48 = icmp eq ptr %i.ez, null
  br i1 %.not48, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit99
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bo, i64 976
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1198
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 976
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1198
  %i.fe = icmp eq ptr %i.fb, %i.fd
  %i.ff = select i1 %i.fe, i64 11, i64 10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6ImRect12ClipWithFullERKS_.exit99
  %i.fg = phi i64 [ 10, %_ZN6ImRect12ClipWithFullERKS_.exit99 ], [ %i.ff, %bb.q ]
  %i.fh = load ptr, ptr %i.s, align 8, !tbaa !452
  %i.fi = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 3564
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 3220
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !416
  %i.fm = load <4 x float>, ptr %i.fj, align 4, !tbaa !8
  %i.fn = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fl, i64 3
  %i.fo = fmul <4 x float> %i.fm, %i.fn           ; 3 uses
  %i.fp = fcmp olt <4 x float> %i.fo, zeroinitializer
  %i.fq = fcmp ogt <4 x float> %i.fo, splat (float 1.000000e+00)
  %i.fr = select <4 x i1> %i.fq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fo
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ft = select <4 x i1> %i.fp, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fs
  %i.fu = fptosi <4 x float> %i.ft to <4 x i32>
  %i.fv = shl <4 x i32> %i.fu, <i32 0, i32 8, i32 16, i32 24>
  %i.fw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fv)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fh, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.fw, float noundef 0.000000e+00, i32 noundef 0)
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !452
  %i.fy = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 3532
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fg
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 3220
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !416
  %i.gd = load <4 x float>, ptr %i.ga, align 4, !tbaa !8
  %i.ge = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gc, i64 3
  %i.gf = fmul <4 x float> %i.gd, %i.ge           ; 3 uses
  %i.gg = fcmp olt <4 x float> %i.gf, zeroinitializer
  %i.gh = fcmp ogt <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gi = select <4 x i1> %i.gh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gf
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gk = select <4 x i1> %i.gg, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gj
  %i.gl = fptosi <4 x float> %i.gk to <4 x i32>
  %i.gm = shl <4 x i32> %i.gl, <i32 0, i32 8, i32 16, i32 24>
  %i.gn = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gm)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.fx, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ap, i32 noundef %i.gn, float noundef 0.000000e+00, i32 noundef 0)
  %i.go = load ptr, ptr %i.s, align 8, !tbaa !452
  %i.gp = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3612
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 3220
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !416
  %i.gt = load <4 x float>, ptr %i.gq, align 4, !tbaa !8
  %i.gu = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gs, i64 3
  %i.gv = fmul <4 x float> %i.gt, %i.gu           ; 3 uses
  %i.gw = fcmp olt <4 x float> %i.gv, zeroinitializer
  %i.gx = fcmp ogt <4 x float> %i.gv, splat (float 1.000000e+00)
  %i.gy = select <4 x i1> %i.gx, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gv
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ha = select <4 x i1> %i.gw, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gz
  %i.hb = fptosi <4 x float> %i.ha to <4 x i32>
  %i.hc = shl <4 x i32> %i.hb, <i32 0, i32 8, i32 16, i32 24>
  %i.hd = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hc)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.go, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ao, i32 noundef %i.hd, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  %i.he = load ptr, ptr %i.s, align 8, !tbaa !452
  %i.hf = load ptr, ptr %i.ar, align 8, !tbaa !453
  %i.hg = load float, ptr %i.as, align 8, !tbaa !454
  %i.hh = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 3532
  %.sroa.4.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.hh, i64 3536
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 3220
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !416
  %i.hl = load <4 x float>, ptr %i.hi, align 4, !tbaa !8 ; 2 uses
  %.sroa.4.0.copyload.i123 = load float, ptr %.sroa.4.0..sroa_idx.i122, align 4, !tbaa !8
  %i.hm = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.hk, i64 3
  %i.hn = fmul <4 x float> %i.hl, %i.hm           ; 3 uses
  %i.ho = fcmp ogt <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = select <4 x i1> %i.ho, <4 x float> splat (float 1.000000e+00), <4 x float> %i.hn
  %i.hq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.hr = shufflevector <4 x float> %i.hl, <4 x float> %i.hn, <4 x i32> <i32 0, i32 poison, i32 2, i32 7>
  %i.hs = insertelement <4 x float> %i.hr, float %.sroa.4.0.copyload.i123, i64 1
  %i.ht = fcmp olt <4 x float> %i.hs, zeroinitializer
  %i.hu = select <4 x i1> %i.ht, <4 x float> splat (float 5.000000e-01), <4 x float> %i.hq ; 4 uses
  %i.hv = extractelement <4 x float> %i.hu, i64 0
  %i.hw = fptosi float %i.hv to i32
  %i.hx = extractelement <4 x float> %i.hu, i64 1
  %i.hy = fptosi float %i.hx to i32
  %i.hz = shl i32 %i.hy, 8
  %i.ia = or i32 %i.hz, %i.hw
  %i.ib = extractelement <4 x float> %i.hu, i64 2
  %i.ic = fptosi float %i.ib to i32
  %i.id = shl i32 %i.ic, 16
  %i.ie = or i32 %i.ia, %i.id
  %i.if = extractelement <4 x float> %i.hu, i64 3
  %i.ig = fptosi float %i.if to i32
  %i.ih = shl i32 %i.ig, 24
  %i.ii = or i32 %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !299 ; 5 uses
  %.not176 = icmp eq ptr %i.ik, inttoptr (i64 -1 to ptr)
  br i1 %.not176, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.il = ptrtoaddr ptr %i.ik to i64
  %i.im = xor i64 %i.il, -1
  %scevgep.i = getelementptr i8, ptr %i.ik, i64 %i.im
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.iq, %.critedge2.i ], [ %i.ik, %.lr.ph.preheader.i ] ; 5 uses
  %i.in = load i8, ptr %.015.i, align 1, !tbaa !187
  switch i8 %i.in, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.i
  %i.io = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !187
  %.not14.i = icmp eq i8 %i.ip, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.s, %.lr.ph.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.iq, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !451

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.s, %.critedge2.i, %bb.r
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.r ], [ %.015.i, %bb.s ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.he, ptr noundef %i.hf, float noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ii, ptr noundef %i.ik, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %.0178, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ir, %i.an
  br i1 %.not, label %._crit_edge, label %bb.b

bb.u:                                             ; preds = %._crit_edge
  %i.is = load ptr, ptr %i.s, align 8, !tbaa !452
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.is, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.c = load float, ptr %i.b, align 8, !tbaa !454
  %i.d = fdiv float %i.c, 1.300000e+01            ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.g = fmul <2 x float> %i.f, <float 5.000000e+00, float 3.000000e+00> ; 2 uses
  %i.h = fmul float %i.d, 2.000000e+00            ; 2 uses
  %i.i = fmul <2 x float> %i.f, <float 7.000000e+00, float 4.000000e+00>
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !298
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.l, align 8 ; 5 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.m = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %i.n = fmul <2 x float> %i.f, <float 9.000000e+00, float 3.500000e+01> ; 3 uses
  %i.o = fadd <2 x float> %i.n, <float -0.000000e+00, float -1.000000e+00> ; 4 uses
  %9 = shufflevector <2 x float> %i.o, <2 x float> <float poison, float -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> <float 3.000000e+00, float 0.000000e+00>, <2 x float> %.sroa.0.0.copyload.i)
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> <float 2.000000e+00, float 3.000000e+00>, <2 x float> %10)
  %i.q = fadd <2 x float> %i.p, splat (float 1.000000e+01) ; 2 uses
  store <2 x float> %i.q, ptr %2, align 8, !tbaa !8
  %i.r = fadd float %i.m, 5.000000e+00
  %11 = extractelement <2 x float> %i.o, i64 1    ; 2 uses
  %i.s = fsub float %i.r, %11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.t = fsub <2 x float> %i.q, %.sroa.0.0.copyload.i
  store <2 x float> %i.t, ptr %3, align 8
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 7856
  %i.w = load i32, ptr %i.v, align 8, !tbaa !843
  %i.x = and i32 %i.w, 256
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = fmul float %i.d, 2.500000e+01
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext true)
  %i.z = extractelement <2 x float> %i.g, i64 1   ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ad = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.c:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %bb.e

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.b, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr @__const._ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList.keys_to_display, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.af = load <2 x i32>, ptr %i.ae, align 8, !tbaa !205
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>   ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1
  %i.ai = call float @llvm.fmuladd.f32(float %i.ah, float %11, float %i.s)
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.ai, i64 0
  %i.al = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.ac, <2 x float> %i.ak) ; 2 uses
  store <2 x float> %i.al, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.am = fadd <2 x float> %i.ad, %i.al
  store <2 x float> %i.am, ptr %5, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -3355444, float noundef %i.z, i32 noundef 0)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -15198184, float noundef %i.z, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.an = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.ao = fadd <2 x float> %i.g, %i.an            ; 2 uses
  store <2 x float> %i.ao, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.ap = fadd <2 x float> %i.ab, %i.ao
  store <2 x float> %i.ap, ptr %7, align 8, !tbaa !8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -4079167, float noundef %i.h, float noundef 2.000000e+00, i32 noundef 0)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -197380, float noundef %i.h, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.aq = load <2 x float>, ptr %4, align 8, !tbaa !8
  %i.ar = fadd <2 x float> %i.i, %i.aq
  store <2 x float> %i.ar, ptr %8, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1534
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -12566464, ptr noundef %i.at, ptr noundef null)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1536 ; 4 uses
  %i.aw = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.ax = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.ay = icmp eq i32 %i.ax, 1
  %i.az = sext i32 %i.av to i64                   ; 2 uses
  %i.ba = getelementptr [16 x i8], ptr %i.aw, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -7884
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !208, !range !64, !noundef !204
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.d, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

bb.d:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i
  %i.be = add i32 %i.av, -512
  %or.cond.i.i4.i.i = icmp ult i32 %i.be, 155
  br i1 %or.cond.i.i4.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %switch.early.test.i.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %bb.d
  br i1 %i.ay, label %switch.early.test.split.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

switch.early.test.split.i.i.i.i:                  ; preds = %switch.early.test.i.i.i.i
  %i.bf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.av, i1 true)
  %i.bg = and i32 %i.bf, 28
  %switch.i.i.i.i = icmp eq i32 %i.bg, 12
  br i1 %switch.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %bb.d, %switch.early.test.split.i.i.i.i
  %i.bh = getelementptr [12 x i8], ptr %i.aw, i64 %i.az
  %i.bi = getelementptr i8, ptr %i.bh, i64 -572
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !624, !range !64, !noundef !204
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %switch.early.test.split.i.i.i.i, %switch.early.test.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -2147483393, float noundef %i.z, i32 noundef 0)
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59:      ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.c, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, !llvm.loop !1537

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

declare void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17DebugTextEncodingEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.211, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !8
  %i.b = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.212, i32 noundef 4, i32 noundef 10177, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.213, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.214, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.215, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.216, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %0, align 1, !tbaa !187
  %.not24 = icmp eq i8 %i.e, 0
  br i1 %.not24, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.b
  %i.f = ptrtoint ptr %0 to i64
  br label %bb.c

._crit_edge28:                                    ; preds = %bb.g, %bb.b
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph27, %bb.g
  %.01925 = phi ptr [ %0, %.lr.ph27 ], [ %i.r, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.g = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.01925, ptr noundef nonnull %i.d) ; 4 uses
  %i.h = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.i = ptrtoint ptr %.01925 to i64
  %i.j = sub i64 %i.i, %i.f
  %i.k = trunc i64 %i.j to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.217, i32 noundef %i.k)
  %i.l = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.m = icmp sgt i32 %i.g, 0
  br i1 %i.m, label %_ZN5ImGui8SameLineEff.exit.peel, label %._crit_edge

_ZN5ImGui8SameLineEff.exit.peel:                  ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.n = load i8, ptr %.01925, align 1, !tbaa !187
  %i.o = zext i8 %i.n to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.218, i32 noundef %i.o)
  %exitcond.peel.not = icmp eq i32 %i.g, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %_ZN5ImGui8SameLineEff.exit, %_ZN5ImGui8SameLineEff.exit.peel, %bb.c
  %i.p = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.q = sext i32 %i.g to i64
  %i.r = getelementptr inbounds i8, ptr %.01925, i64 %i.q ; 3 uses
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %.01925, ptr noundef nonnull %i.r)
  %i.s = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4552
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !453
  %i.v = load i32, ptr %i.a, align 4, !tbaa !205  ; 2 uses
  %i.w = trunc i32 %i.v to i16
  %i.x = call noundef zeroext i1 @_ZN6ImFont13IsGlyphInFontEt(ptr noundef nonnull align 8 dereferenceable(76) %i.u, i16 noundef zeroext %i.w)
  br i1 %i.x, label %bb.g, label %bb.e

.lr.ph.peel.next:                                 ; preds = %_ZN5ImGui8SameLineEff.exit.peel, %_ZN5ImGui8SameLineEff.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5ImGui8SameLineEff.exit ], [ 1, %_ZN5ImGui8SameLineEff.exit.peel ] ; 2 uses
  %i.y = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5312
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !298 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 209
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5ImGui8SameLineEff.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.peel.next
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 3300
  %i.af = load float, ptr %i.ae, align 4, !tbaa !1374
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !1373
  %i.aj = fadd float %i.af, %i.ai
  store float %i.aj, ptr %i.ag, align 8, !tbaa !1343
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 292
  %i.al = load float, ptr %i.ak, align 4, !tbaa !331
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 284
  store float %i.al, ptr %i.am, align 4, !tbaa !328
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ap = load i64, ptr %i.an, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 340
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !1335
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 336
  store float %i.ar, ptr %i.as, align 8, !tbaa !1336
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  store i8 1, ptr %i.at, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.d, %.lr.ph.peel.next
  %i.au = getelementptr inbounds nuw i8, ptr %.01925, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !187
  %i.aw = zext i8 %i.av to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.218, i32 noundef %i.aw)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !1538

bb.e:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 5312
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !298 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 209
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN5ImGui8SameLineEff.exit22, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN5ImGui22DebugLocateItemOnHoverEj:bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 160)
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 7788
  store i32 %0, ptr %i.d, align 4, !tbaa !1144
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 10457
  store i8 2, ptr %i.e, align 1, !tbaa !1143
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 10458 ; 2 uses
  store i8 0, ptr %i.f, align 2, !tbaa !689
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !437
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !438
  %i.j = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.i, i64 noundef 1, ptr noundef nonnull @.str.86)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 7860
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !8
  %i.m = fadd <2 x float> %i.l, splat (float -3.000000e+00)
  store <2 x float> %i.m, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 7868
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !8
  %i.p = fadd <2 x float> %i.o, splat (float 3.000000e+00)
  store <2 x float> %i.p, ptr %2, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -16711936, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1679, !range !64, !noundef !204
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 9404
  %i.u = load float, ptr %i.t, align 4, !tbaa !993
  %i.v = fcmp ogt float %i.u, 1.000000e+00
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef nonnull @.str.573)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 10460
  %i.x = load i32, ptr %i.w, align 4, !tbaa !690
  %i.y = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.x)
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.f, align 2, !tbaa !689
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImRect, align 8             ; 11 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !604
  %i.k = load i32, ptr %i.h, align 8, !tbaa !606
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !205  ; 2 uses
  %i.p = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.q = xor i32 %i.o, -1                         ; 2 uses
  %i.r = load i8, ptr %0, align 1, !tbaa !187     ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.r, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.g
  %i.s = phi i8 [ %i.aj, %bb.g ], [ %i.r, %bb.b ] ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.g ], [ %0, %bb.b ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.g ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.u = zext i8 %i.s to i32
  %i.v = icmp eq i8 %i.s, 35
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = load i8, ptr %i.t, align 1, !tbaa !187
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !187
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.g, !llvm.loop !248

bb.f:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ac = lshr i32 %.23351.i.i, 8
  %i.ad = and i32 %.23351.i.i, 255
  %i.ae = xor i32 %i.ad, %i.u
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !205
  %i.ai = xor i32 %i.ah, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.334.i.i = phi i32 [ %i.q, %bb.e ], [ %i.ai, %bb.f ] ; 2 uses
  %.3.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.aj = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.g
  %i.ak = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.b
  %.4.i.i = phi i32 [ %i.o, %bb.b ], [ %i.ak, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 6 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !786
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 5400
  %i.an = load i32, ptr %i.am, align 8, !tbaa !789
  %i.ao = icmp eq i32 %i.an, %.4.i.i
  br i1 %i.ao, label %bb.h, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.h:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.4.i.i, i32 noundef 11, ptr noundef nonnull %0, ptr noundef null)
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %_Z9ImHashStrPKcmj.exit.i, %bb.h
  %i.ap = phi ptr [ %i.a, %_Z9ImHashStrPKcmj.exit.i ], [ %.pre, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %.not = icmp eq ptr %0, inttoptr (i64 -1 to ptr) ; 2 uses
  br i1 %.not, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i, label %.lr.ph.i.i22

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i: ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4568
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !454
  br label %bb.j

.lr.ph.i.i22:                                     ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit, %.critedge2.i.i
  %.015.i.i = phi ptr [ %i.av, %.critedge2.i.i ], [ %0, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit ] ; 5 uses
  %i.as = load i8, ptr %.015.i.i, align 1, !tbaa !187
  switch i8 %i.as, label %.critedge2.i.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i
    i8 35, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i22
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !187
  %.not14.i.i = icmp eq i8 %i.au, 35
  br i1 %.not14.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i22
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.av, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i, label %.lr.ph.i.i22, !llvm.loop !451

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i:     ; preds = %.critedge2.i.i, %bb.i, %.lr.ph.i.i22
  %.0.i = phi ptr [ %.015.i.i, %bb.i ], [ inttoptr (i64 -1 to ptr), %.critedge2.i.i ], [ %.015.i.i, %.lr.ph.i.i22 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 4568
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !454 ; 2 uses
  %i.ay = icmp eq ptr %0, %.0.i
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i
  %i.az = phi float [ %i.ar, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i ], [ %i.ax, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i ]
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.az, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.k:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 4552
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !453
  %i.bc = tail call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.bb, float noundef %i.ax, float noundef f0x7F7FFFFF, float noundef -1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %.0.i, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bd = fptosi float %.sroa.0.0.vec.extract.i to i32 ; 2 uses
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.be
  %i.bg = zext i1 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = sitofp i32 %i.bh to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.bc, float %i.bi, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.j, %bb.k
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.j ], [ %.sroa.0.0.vec.insert.i, %bb.k ] ; 3 uses
  store <2 x float> %.sroa.0.0.i, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !1336
  %i.bm = load <2 x float>, ptr %i.bj, align 8, !tbaa !8
  %i.bn = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bl, i64 1
  %i.bo = fadd <2 x float> %i.bm, %i.bn           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !1734
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.br = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %6 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.bq, i64 0
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> <float 2.000000e+00, float 0.000000e+00>, <2 x float> %.sroa.0.0.i) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  store float %8, ptr %3, align 4, !tbaa !227
  store float %i.br, ptr %5, align 4, !tbaa !228
  %i.bs = fadd <2 x float> %i.bo, %7
  store <2 x float> %i.bo, ptr %4, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> %i.bs, ptr %i.bt, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef 0.000000e+00)
  %i.bu = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %.4.i.i, ptr noundef null, i32 noundef 0)
  br i1 %i.bu, label %bb.l, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.l:                                             ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 7784
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1036
  %i.bx = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %.4.i.i, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 10460
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !690
  %i.ca = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.bz)
  br i1 %i.ca, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !215, !range !64, !noundef !204
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.o, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2972
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !8
  %i.ch = fcmp oeq float %i.cg, 0.000000e+00
  br i1 %i.ch, label %.critedge.i, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

.critedge.i:                                      ; preds = %bb.o
  %i.ci = getelementptr i8, ptr %i.cb, i64 7300
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

_ZN5ImGui14IsMouseClickedEiij.exit.thread:        ; preds = %bb.o, %bb.n, %.critedge.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8244
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !837
  %i.cn = icmp eq i32 %i.cm, %.4.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.critedge.i, %_ZN5ImGui14IsMouseClickedEiij.exit.thread, %bb.l
  %i.co = phi i64 [ 22, %bb.l ], [ 23, %.critedge.i ], [ 23, %bb.m ], [ 23, %_ZN5ImGui14IsMouseClickedEiij.exit.thread ]
  %i.cp = phi i1 [ false, %bb.l ], [ true, %.critedge.i ], [ true, %bb.m ], [ %i.cn, %_ZN5ImGui14IsMouseClickedEiij.exit.thread ] ; 3 uses
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef %1)
  %i.cq = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 3532
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.co ; 4 uses
  %.sroa.036.0.copyload = load float, ptr %i.cs, align 4, !tbaa !8 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.21.0.copyload = load float, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !8
  %i.ct = fcmp olt float %.sroa.12.0.copyload, %.sroa.21.0.copyload ; 3 uses
  %.017.i = select i1 %i.ct, float %.sroa.21.0.copyload, float %.sroa.12.0.copyload ; 3 uses
  %.016.i = select i1 %i.ct, float %.sroa.12.0.copyload, float %.sroa.21.0.copyload ; 3 uses
  %i.cu = fcmp olt float %.sroa.036.0.copyload, %.017.i ; 3 uses
  %.019.i = select i1 %i.cu, float %.017.i, float %.sroa.036.0.copyload ; 14 uses
  %.118.i = select i1 %i.cu, float %.sroa.036.0.copyload, float %.017.i ; 3 uses
  %i.cv = fcmp olt float %.118.i, %.016.i
  %i.cw = select i1 %i.cv, float %.118.i, float %.016.i
  %i.cx = fsub float %.019.i, %i.cw               ; 2 uses
  %i.cy = fadd float %.019.i, f0x1E3CE508
  %i.cz = fdiv float %i.cx, %i.cy                 ; 3 uses
  %i.da = fcmp oeq float %i.cz, 0.000000e+00
  br i1 %i.da, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.i27 = select i1 %i.ct, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.db = fsub float f0xBEAAAAAB, %.0.i27
  %.1.i = select i1 %i.cu, float %i.db, float %.0.i27
  %i.dc = fsub float %.118.i, %.016.i
  %i.dd = call float @llvm.fmuladd.f32(float %i.cx, float 6.000000e+00, float f0x1E3CE508)
  %i.de = fdiv float %i.dc, %i.dd
  %i.df = fadd float %.1.i, %i.de
  %i.dg = call float @llvm.fabs.f32(float %i.df)
  %i.dh = fadd float %i.dg, 2.000000e-01
  %i.di = call float @fmodf(float noundef %i.dh, float noundef 1.000000e+00) #41
  %i.dj = fdiv float %i.di, f0x3E2AAAAB           ; 2 uses
  %i.dk = fptosi float %i.dj to i32               ; 2 uses
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fsub float %i.dj, %i.dl                 ; 2 uses
  %i.dn = fsub float 1.000000e+00, %i.cz
  %i.do = fmul float %.019.i, %i.dn               ; 6 uses
  %i.dp = fneg float %i.cz
  %i.dq = fsub float 1.000000e+00, %i.dm
  %i.dr = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dq, i64 1
  %i.dv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.du, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  %i.dx = fmul float %.019.i, %i.dw               ; 3 uses
  %i.dy = extractelement <2 x float> %i.dv, i64 1
  %i.dz = fmul float %.019.i, %i.dy               ; 3 uses
  switch i32 %i.dk, label %bb.v [
    i32 0, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.s:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.t:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.u:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.v:                                             ; preds = %bb.q
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit: ; preds = %bb.q, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.21.0 = phi float [ %.019.i, %bb.u ], [ %i.dx, %bb.v ], [ %.019.i, %bb.p ], [ %i.do, %bb.r ], [ %i.dz, %bb.s ], [ %.019.i, %bb.t ], [ %i.do, %bb.q ]
  %.sroa.12.0 = phi float [ %i.do, %bb.u ], [ %i.do, %bb.v ], [ %.019.i, %bb.p ], [ %.019.i, %bb.r ], [ %.019.i, %bb.s ], [ %i.dx, %bb.t ], [ %i.dz, %bb.q ]
  %.sroa.036.0 = phi float [ %i.dz, %bb.u ], [ %.019.i, %bb.v ], [ %.019.i, %bb.p ], [ %i.dx, %bb.r ], [ %i.do, %bb.s ], [ %i.do, %bb.t ], [ %.019.i, %bb.q ]
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %.4.i.i, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.01.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bt, align 8
  %i.ea = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3220
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !416
  %i.ed = fmul float %.sroa.30.0.copyload, %i.ec
  %i.ee = insertelement <4 x float> poison, float %.sroa.036.0, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %.sroa.12.0, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %.sroa.21.0, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 3 ; 3 uses
  %i.ei = fcmp olt <4 x float> %i.eh, zeroinitializer
  %i.ej = fcmp ogt <4 x float> %i.eh, splat (float 1.000000e+00)
  %i.ek = select <4 x i1> %i.ej, <4 x float> splat (float 1.000000e+00), <4 x float> %i.eh
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.em = select <4 x i1> %i.ei, <4 x float> splat (float 5.000000e-01), <4 x float> %i.el
  %i.en = fptosi <4 x float> %i.em to <4 x i32>
  %i.eo = shl <4 x i32> %i.en, <i32 0, i32 8, i32 16, i32 24>
  %i.ep = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 3292
  %i.er = load float, ptr %i.eq, align 4, !tbaa !478
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.01.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.ep, i1 noundef zeroext true, float noundef %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 3456
  br i1 %.not, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit, %.critedge2.i.i34
  %.015.i.i32 = phi ptr [ %i.ew, %.critedge2.i.i34 ], [ %0, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ] ; 5 uses
  %i.et = load i8, ptr %.015.i.i32, align 1, !tbaa !187
  switch i8 %i.et, label %.critedge2.i.i34 [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit
    i8 35, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph.i.i31
  %i.eu = getelementptr inbounds nuw i8, ptr %.015.i.i32, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !187
  %.not14.i.i33 = icmp eq i8 %i.ev, 35
  br i1 %.not14.i.i33, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, label %.critedge2.i.i34

.critedge2.i.i34:                                 ; preds = %bb.w, %.lr.ph.i.i31
  %i.ew = getelementptr inbounds nuw i8, ptr %.015.i.i32, i64 1 ; 2 uses
  %exitcond.not.i.i35 = icmp eq ptr %i.ew, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i35, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, label %.lr.ph.i.i31, !llvm.loop !451

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit: ; preds = %.lr.ph.i.i31, %bb.w, %.critedge2.i.i34
  %.0.lcssa.i.i.ph = phi ptr [ %.015.i.i32, %bb.w ], [ inttoptr (i64 -1 to ptr), %.critedge2.i.i34 ], [ %.015.i.i32, %.lr.ph.i.i31 ] ; 2 uses
  %.pre42 = ptrtoint ptr %.0.lcssa.i.i.ph to i64
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28:   ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
  %.pre-phi = phi i64 [ %.pre42, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit ], [ %i.p, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ]
  %.0.lcssa.i.i = phi ptr [ %.0.lcssa.i.i.ph, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit ], [ inttoptr (i64 -1 to ptr), %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ] ; 2 uses
  %i.ex = sub i64 %.pre-phi, %i.p
  %i.ey = and i64 %i.ex, 4294967295
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28
  %i.fa = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 5312
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !298
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 712
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !452
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.fe, ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.bt, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.es, ptr noundef nonnull readonly %4)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 10264
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !387, !range !64, !noundef !204
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.y, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %4, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i)
  br label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

end_hunk_1
