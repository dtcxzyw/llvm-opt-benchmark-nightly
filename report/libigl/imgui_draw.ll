Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList9PathArcToERK6ImVec2fffi:bb.a
bb.s:                                             ; preds = %bb.r
  %i.dl = sdiv i32 %i.cz, 2
  %i.dm = add nsw i32 %i.dl, %i.cz
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i70

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i70: ; preds = %bb.s, %bb.r
  %i.dn = phi i32 [ %i.dm, %bb.s ], [ 8, %bb.r ]
  %i.do = tail call noundef i32 @llvm.smax.i32(i32 %i.dn, i32 %i.dk) ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 3
  %i.dr = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dq) ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i71 = icmp eq ptr %i.dt, null
  br i1 %.not6.i.i71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i70
  %i.du = load i32, ptr %i.cg, align 8, !tbaa !66
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dr, ptr nonnull align 4 %i.dt, i64 %i.dw, i1 false)
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.dx)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i70
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !65
  store i32 %i.do, ptr %i.co, align 4, !tbaa !64
  %.pre3.i72 = load i32, ptr %i.cg, align 8, !tbaa !66
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit73

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit73:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i66, %bb.u
  %i.dy = phi i32 [ %i.di, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i66 ], [ %.pre3.i72, %bb.u ]
  %i.dz = phi ptr [ %.pre.i68, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i66 ], [ %i.dr, %bb.u ]
  %i.ea = sext i32 %i.dy to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea
  store <2 x float> %i.dh, ptr %i.eb, align 4
  %i.ec = load i32, ptr %i.cg, align 8, !tbaa !66
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.cg, align 8, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit73, %_ZN8ImVectorI6ImVec2E7reserveEi.exit
  %.not = icmp slt i32 %.sink, 1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, i32 noundef %i.bt, i32 noundef %i.bs, i32 noundef 0)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %i.cf, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.ee = tail call float @cosf(float noundef %4) #40
  %i.ef = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.eg = tail call float @sinf(float noundef %4) #40
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.eg, i64 1
  %i.ej = insertelement <2 x float> poison, float %2, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ek, <2 x float> %i.ef)
  %i.em = load i32, ptr %i.cg, align 8, !tbaa !66 ; 6 uses
  %i.en = load i32, ptr %i.co, align 4, !tbaa !64
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.z, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i74

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i74: ; preds = %bb.y
  %.phi.trans.insert.i75 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i76 = load ptr, ptr %.phi.trans.insert.i75, align 8, !tbaa !65
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit81

bb.z:                                             ; preds = %bb.y
  %i.ep = add nsw i32 %i.em, 1
  %.not.i.i77 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i77, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i78, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = sdiv i32 %i.em, 2
  %i.er = add nsw i32 %i.eq, %i.em
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i78

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i78: ; preds = %bb.aa, %bb.z
  %i.es = phi i32 [ %i.er, %bb.aa ], [ 8, %bb.z ]
  %i.et = tail call noundef i32 @llvm.smax.i32(i32 %i.es, i32 %i.ep) ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = shl nsw i64 %i.eu, 3
  %i.ew = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ev) ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i79 = icmp eq ptr %i.ey, null
  br i1 %.not6.i.i79, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i78
  %i.ez = load i32, ptr %i.cg, align 8, !tbaa !66
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ew, ptr nonnull align 4 %i.ey, i64 %i.fb, i1 false)
  %i.fc = load ptr, ptr %i.ex, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.fc)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i78
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !65
  store i32 %i.et, ptr %i.co, align 4, !tbaa !64
  %.pre3.i80 = load i32, ptr %i.cg, align 8, !tbaa !66
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit81

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit81:     ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i74, %bb.ac
  %i.fd = phi i32 [ %i.em, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i74 ], [ %.pre3.i80, %bb.ac ]
  %i.fe = phi ptr [ %.pre.i76, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i74 ], [ %i.ew, %bb.ac ]
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.ff
  store <2 x float> %i.el, ptr %i.fg, align 4
  %i.fh = load i32, ptr %i.cg, align 8, !tbaa !66
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.cg, align 8, !tbaa !66
  br label %bb.ag

bb.ad:                                            ; preds = %bb.i
  %i.fj = fsub float %4, %3
  %i.fk = tail call noundef float @llvm.fabs.f32(float %i.fj) ; 2 uses
  %i.fl = fadd float %2, f0x3F7FFFEF
  %i.fm = fptosi float %i.fl to i32               ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 64
  br i1 %i.fn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ad, i64 436
  %i.fp = sext i32 %i.fm to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fo, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !26
  %i.fs = zext i8 %i.fr to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.af:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !25 ; 2 uses
  %i.fv = fcmp olt float %i.fu, %2
  %i.fw = select i1 %i.fv, float %i.fu, float %2
  %i.fx = fdiv float %i.fw, %2
  %i.fy = fsub float 1.000000e+00, %i.fx
  %i.fz = tail call float @acosf(float noundef %i.fy) #40
  %i.ga = fdiv float f0x40490FDB, %i.fz
  %i.gb = tail call float @llvm.ceil.f32(float %i.ga)
  %i.gc = fptosi float %i.gb to i32
  %i.gd = add nsw i32 %i.gc, 1
  %i.ge = sdiv i32 %i.gd, 2
  %i.gf = shl nsw i32 %i.ge, 1
  %i.gg = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 4)
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 512)
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit: ; preds = %bb.ae, %bb.af
  %.0.i = phi i32 [ %i.fs, %bb.ae ], [ %i.gh, %bb.af ]
  %i.gi = uitofp nneg i32 %.0.i to float
  %i.gj = fmul float %i.fk, %i.gi
  %i.gk = fdiv float %i.gj, f0x40C90FDB
  %i.gl = tail call float @llvm.ceil.f32(float %i.gk)
  %i.gm = fptosi float %i.gl to i32
  %i.gn = fdiv float f0x40C90FDB, %i.fk
  %i.go = fptosi float %i.gn to i32
  %i.gp = tail call noundef i32 @llvm.smax.i32(i32 %i.gm, i32 %i.go)
  tail call void @_ZN10ImDrawList11_PathArcToNERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %i.gp)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.x, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit81, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit, %bb.h, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local <2 x float> @_Z17ImBezierCubicCalcRK6ImVec2S1_S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %4, i64 0 ; 3 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.c = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %4, i64 2
  %i.d = fsub <4 x float> %i.b, %i.c              ; 3 uses
  %i.e = shufflevector <4 x float> %i.a, <4 x float> %i.d, <4 x i32> <i32 0, i32 6, i32 6, i32 6>
  %i.f = fmul <4 x float> %i.e, <float 1.000000e+00, float 3.000000e+00, float 1.000000e+00, float 3.000000e+00>
  %i.g = shufflevector <4 x float> %i.a, <4 x float> %i.d, <4 x i32> <i32 0, i32 0, i32 6, i32 6>
  %i.h = fmul <4 x float> %i.g, %i.f
  %i.i = fmul <4 x float> %i.d, %i.h              ; 4 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.l = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.m = fmul <2 x float> %i.l, %i.k
  %i.n = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.j, <2 x float> %i.m)
  %i.p = load <2 x float>, ptr %2, align 4, !tbaa !15
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.p, <2 x float> %i.o)
  %i.s = load <2 x float>, ptr %3, align 4, !tbaa !15
  %i.t = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.s, <2 x float> %i.r)
  ret <2 x float> %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local <2 x float> @_Z21ImBezierQuadraticCalcRK6ImVec2S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3
  %4 = insertelement <3 x float> poison, float %3, i64 0
  %5 = insertelement <3 x float> %4, float %i.a, i64 1 ; 2 uses
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %7 = fmul <3 x float> %6, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00>
  %8 = shufflevector <3 x float> %5, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %9 = fmul <3 x float> %8, %7                    ; 3 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !15
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.d = fmul <2 x float> %10, %i.c
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.b, <2 x float> %i.d)
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !15
  %i.g = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> zeroinitializer
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.f, <2 x float> %i.e)
  ret <2 x float> %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList22PathBezierCubicCurveToERK6ImVec2S2_S2_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = load i32, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 3 uses
  %i.i = icmp eq i32 %4, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %1, align 4, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !90
  %i.m = load float, ptr %2, align 4, !tbaa !89
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !90
  %i.p = load float, ptr %3, align 4, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !100
  %i.w = extractelement <2 x float> %i.h, i64 0
  %i.x = extractelement <2 x float> %i.h, i64 1
  tail call fastcc void @_ZL31PathBezierCubicCurveToCasteljauP8ImVectorI6ImVec2Efffffffffi(ptr noundef %i.a, float noundef %i.w, float noundef %i.x, float noundef %i.j, float noundef %i.l, float noundef %i.m, float noundef %i.o, float noundef %i.p, float noundef %i.r, float noundef %i.v, i32 noundef 0)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.y = sitofp i32 %4 to float
  %i.z = fdiv nnan float 1.000000e+00, %i.y
  %.not21 = icmp slt i32 %4, 1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  %i.ab = phi i32 [ %i.d, %.lr.ph ], [ %i.bk, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 6 uses
  %.022 = phi i32 [ 1, %.lr.ph ], [ %i.bl, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 3 uses
  %i.ac = uitofp nneg i32 %.022 to float
  %i.ad = fmul float %i.z, %i.ac                  ; 5 uses
  %i.ae = fsub float 1.000000e+00, %i.ad          ; 5 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = fmul float %i.ae, 3.000000e+00          ; 2 uses
  %i.ah = fmul float %i.ae, %i.ag
  %i.ai = fmul float %i.ad, %i.ag
  %i.aj = fmul float %i.ad, %i.ad
  %5 = insertelement <4 x float> poison, float %i.aj, i64 0
  %6 = insertelement <4 x float> %5, float %i.ai, i64 1
  %7 = insertelement <4 x float> %6, float %i.ae, i64 2
  %8 = insertelement <4 x float> %7, float %i.ah, i64 3
  %9 = insertelement <4 x float> poison, float %i.ad, i64 0
  %10 = insertelement <4 x float> %9, float %i.af, i64 1
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %12 = fmul <4 x float> %8, %11                  ; 4 uses
  %13 = load <2 x float>, ptr %1, align 4, !tbaa !15
  %14 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %15 = fmul <2 x float> %14, %13
  %16 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.h, <2 x float> %15)
  %i.al = load <2 x float>, ptr %2, align 4, !tbaa !15
  %17 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = load <2 x float>, ptr %3, align 4, !tbaa !15
  %i.ao = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.an, <2 x float> %i.am)
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ar = icmp eq i32 %i.ab, %i.aq
  br i1 %i.ar, label %bb.e, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.as = add nsw i32 %i.ab, 1
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = sdiv i32 %i.ab, 2
  %i.au = add nsw i32 %i.at, %i.ab
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.f, %bb.e
  %i.av = phi i32 [ %i.au, %bb.f ], [ 8, %bb.e ]
  %i.aw = tail call noundef i32 @llvm.smax.i32(i32 %i.av, i32 %i.as) ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ay) ; 3 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ba, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !66
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.az, ptr nonnull align 4 %i.ba, i64 %i.bd, i1 false)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.be)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.az, ptr %i.b, align 8, !tbaa !65
  store i32 %i.aw, ptr %i.aa, align 4, !tbaa !64
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !66
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.h
  %i.bf = phi i32 [ %i.ab, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.bg = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.az, %bb.h ]
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  store <2 x float> %i.ap, ptr %i.bi, align 4
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !66
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !66
  %i.bl = add nuw i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !303

.loopexit:                                        ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL31PathBezierCubicCurveToCasteljauP8ImVectorI6ImVec2Efffffffffi(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef range(i32 0, 11) %10) unnamed_addr #8 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %1, i64 0
  %i.b = insertelement <2 x float> %i.a, float %2, i64 1
  %i.c = insertelement <2 x float> poison, float %3, i64 0
  %i.d = insertelement <2 x float> %i.c, float %4, i64 1
  %i.e = insertelement <2 x float> poison, float %5, i64 0
  %i.f = insertelement <2 x float> %i.e, float %6, i64 1
  %i.g = insertelement <2 x float> poison, float %7, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = insertelement <2 x float> poison, float %8, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %.tr81 = phi float [ %1, %bb.a ], [ %i.by, %bb.h ] ; 2 uses
  %.tr82 = phi float [ %2, %bb.a ], [ %i.bx, %bb.h ] ; 2 uses
  %.tr90 = phi i32 [ %10, %bb.a ], [ %i.bz, %bb.h ] ; 2 uses
  %i.k = phi <2 x float> [ %i.b, %bb.a ], [ %i.bw, %bb.h ]
  %i.l = phi <2 x float> [ %i.d, %bb.a ], [ %i.bu, %bb.h ] ; 4 uses
  %i.m = phi <2 x float> [ %i.f, %bb.a ], [ %i.bs, %bb.h ] ; 5 uses
  %i.n = fsub float %7, %.tr81                    ; 3 uses
  %i.o = fsub float %8, %.tr82                    ; 3 uses
  %i.p = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.q = fsub <2 x float> %i.p, %i.h
  %i.r = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.s = fsub <2 x float> %i.r, %i.j
  %i.t = fneg float %i.n
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.s, %i.v
  %i.x = insertelement <2 x float> poison, float %i.o, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.y, <2 x float> %i.w) ; 3 uses
  %i.aa = fcmp oge <2 x float> %i.z, zeroinitializer
  %i.ab = fneg <2 x float> %i.z
  %i.ac = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.ab ; 2 uses
  %shift = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ac, %shift ; 2 uses
  %foldExtExtBinop93 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.ad = extractelement <2 x float> %foldExtExtBinop93, i64 0
  %i.ae = fmul float %i.o, %i.o
  %i.af = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.ae)
  %i.ag = fmul float %9, %i.af
  %i.ah = fcmp olt float %i.ad, %i.ag
  br i1 %i.ah, label %bb.b, label %bb.g

bb.b:                                             ; preds = %tailrecurse
  %i.ai = load i32, ptr %0, align 8, !tbaa !66    ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !64
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !65
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.am = add nsw i32 %i.ai, 1
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sdiv i32 %i.ai, 2
  %i.ao = add nsw i32 %i.an, %i.ai
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.d, %bb.c
  %i.ap = phi i32 [ %i.ao, %bb.d ], [ 8, %bb.c ]
  %i.aq = tail call noundef i32 @llvm.smax.i32(i32 %i.ap, i32 %i.am) ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.aw = load i32, ptr %0, align 8, !tbaa !66
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.at, ptr nonnull align 4 %i.av, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !65
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !64
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !66
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.ba = phi i32 [ %i.ai, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.bb = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.at, %bb.f ]
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  store float %7, ptr %i.bd, align 4
  %.sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %8, ptr %.sroa_idx80, align 4
  %i.be = load i32, ptr %0, align 8, !tbaa !66
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !66
  br label %.loopexit

bb.g:                                             ; preds = %tailrecurse
  %exitcond.not = icmp eq i32 %.tr90, 10
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = fadd <2 x float> %i.k, %i.l
  %i.bh = fadd <2 x float> %i.l, %i.m
  %i.bi = extractelement <2 x float> %i.m, i64 0
  %i.bj = fadd float %7, %i.bi
  %i.bk = extractelement <2 x float> %i.m, i64 1
  %i.bl = fadd float %8, %i.bk
  %i.bm = fmul <2 x float> %i.bg, splat (float 5.000000e-01) ; 3 uses
  %i.bn = fmul <2 x float> %i.bh, splat (float 5.000000e-01) ; 2 uses
  %i.bo = fadd <2 x float> %i.bm, %i.bn
  %i.bp = fmul <2 x float> %i.bo, splat (float 5.000000e-01) ; 3 uses
  %i.bq = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bl, i64 1
  %i.bs = fmul <2 x float> %i.br, splat (float 5.000000e-01) ; 2 uses
  %i.bt = fadd <2 x float> %i.bn, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 5.000000e-01) ; 2 uses
  %i.bv = fadd <2 x float> %i.bp, %i.bu
  %i.bw = fmul <2 x float> %i.bv, splat (float 5.000000e-01) ; 3 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.bz = add nuw nsw i32 %.tr90, 1               ; 2 uses
  %i.ca = extractelement <2 x float> %i.bp, i64 0
  %i.cb = extractelement <2 x float> %i.bp, i64 1
  %i.cc = extractelement <2 x float> %i.bm, i64 0
  %i.cd = extractelement <2 x float> %i.bm, i64 1
  tail call fastcc void @_ZL31PathBezierCubicCurveToCasteljauP8ImVectorI6ImVec2Efffffffffi(ptr noundef %0, float noundef %.tr81, float noundef %.tr82, float noundef %i.cc, float noundef %i.cd, float noundef %i.ca, float noundef %i.cb, float noundef %i.by, float noundef %i.bx, float noundef %9, i32 noundef %i.bz)
end_hunk_0
