Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN10ImDrawList9PathArcToERK6ImVec2fffi:bb.a
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
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
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
  %i.a = fsub float 1.000000e+00, %4              ; 5 uses
  %i.b = fmul float %i.a, %i.a
  %i.c = fmul float %i.a, %i.b
  %i.d = fmul float %i.a, 3.000000e+00            ; 2 uses
  %i.e = fmul float %i.a, %i.d
  %i.f = fmul float %4, %i.e
  %i.g = fmul float %4, %i.d
  %i.h = fmul float %4, %i.g
  %i.i = fmul float %4, %4
  %i.j = fmul float %4, %i.i
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.l
  %i.p = insertelement <2 x float> poison, float %i.c, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.k, <2 x float> %i.o)
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !15
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.s, <2 x float> %i.r)
  %i.w = load <2 x float>, ptr %3, align 4, !tbaa !15
  %i.x = insertelement <2 x float> poison, float %i.j, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.w, <2 x float> %i.v)
  ret <2 x float> %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local <2 x float> @_Z21ImBezierQuadraticCalcRK6ImVec2S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3) local_unnamed_addr #14 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3              ; 3 uses
  %i.b = fmul float %i.a, %i.a
  %i.c = fmul float %i.a, 2.000000e+00
  %i.d = fmul float %3, %i.c
  %i.e = fmul float %3, %3
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.h = insertelement <2 x float> poison, float %i.d, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %i.g
  %i.k = insertelement <2 x float> poison, float %i.b, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.f, <2 x float> %i.j)
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !15
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.n, <2 x float> %i.m)
  ret <2 x float> %i.q
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
  %i.ab = phi i32 [ %i.d, %.lr.ph ], [ %i.bx, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 6 uses
  %.022 = phi i32 [ 1, %.lr.ph ], [ %i.by, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 3 uses
  %i.ac = uitofp nneg i32 %.022 to float
  %i.ad = fmul float %i.z, %i.ac                  ; 7 uses
  %i.ae = fsub float 1.000000e+00, %i.ad          ; 5 uses
  %i.af = fmul float %i.ae, %i.ae
  %i.ag = fmul float %i.ae, 3.000000e+00          ; 2 uses
  %i.ah = fmul float %i.ae, %i.ag
  %i.ai = fmul float %i.ad, %i.ag
  %i.aj = fmul float %i.ad, %i.ad
  %i.ak = fmul float %i.ae, %i.af
  %i.al = fmul float %i.ad, %i.ah
  %i.am = fmul float %i.ad, %i.ai
  %i.an = fmul float %i.ad, %i.aj
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.h, <2 x float> %i.ar)
  %i.av = load <2 x float>, ptr %2, align 4, !tbaa !15
  %i.aw = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.av, <2 x float> %i.au)
  %i.az = load <2 x float>, ptr %3, align 4, !tbaa !15
  %i.ba = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.az, <2 x float> %i.ay)
  %i.bd = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.be = icmp eq i32 %i.ab, %i.bd
  br i1 %i.be, label %bb.e, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.bf = add nsw i32 %i.ab, 1
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = sdiv i32 %i.ab, 2
  %i.bh = add nsw i32 %i.bg, %i.ab
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.f, %bb.e
  %i.bi = phi i32 [ %i.bh, %bb.f ], [ 8, %bb.e ]
  %i.bj = tail call noundef i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bf) ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 3
  %i.bm = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bl) ; 3 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bn, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !66
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.br)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !65
  store i32 %i.bj, ptr %i.aa, align 4, !tbaa !64
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !66
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.h
  %i.bs = phi i32 [ %i.ab, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.bt = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.bm, %bb.h ]
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  store <2 x float> %i.bc, ptr %i.bv, align 4
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !66
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !66
  %i.by = add nuw i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !304

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
  %.tr81 = phi float [ %1, %bb.a ], [ %i.bz, %bb.h ] ; 2 uses
  %.tr82 = phi float [ %2, %bb.a ], [ %i.by, %bb.h ] ; 2 uses
  %.tr90 = phi i32 [ %10, %bb.a ], [ %i.ca, %bb.h ] ; 2 uses
  %i.k = phi <2 x float> [ %i.b, %bb.a ], [ %i.bx, %bb.h ]
  %i.l = phi <2 x float> [ %i.d, %bb.a ], [ %i.bv, %bb.h ] ; 4 uses
  %i.m = phi <2 x float> [ %i.f, %bb.a ], [ %i.bt, %bb.h ] ; 5 uses
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
  %i.ac = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %i.ab
  %i.ad = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ac) ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fmul float %i.o, %i.o
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.af)
  %i.ah = fmul float %9, %i.ag
  %i.ai = fcmp olt float %i.ae, %i.ah
  br i1 %i.ai, label %bb.b, label %bb.g

bb.b:                                             ; preds = %tailrecurse
  %i.aj = load i32, ptr %0, align 8, !tbaa !66    ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !64
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !65
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = add nsw i32 %i.aj, 1
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = sdiv i32 %i.aj, 2
  %i.ap = add nsw i32 %i.ao, %i.aj
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.d, %bb.c
  %i.aq = phi i32 [ %i.ap, %bb.d ], [ 8, %bb.c ]
  %i.ar = tail call noundef i32 @llvm.smax.i32(i32 %i.aq, i32 %i.an) ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 3
  %i.au = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.at) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aw, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.ax = load i32, ptr %0, align 8, !tbaa !66
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr nonnull align 4 %i.aw, i64 %i.az, i1 false)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !65
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ba)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.au, ptr %i.av, align 8, !tbaa !65
  store i32 %i.ar, ptr %i.ak, align 4, !tbaa !64
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !66
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.bb = phi i32 [ %i.aj, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.bc = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.au, %bb.f ]
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  store float %7, ptr %i.be, align 4
  %.sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %8, ptr %.sroa_idx80, align 4
  %i.bf = load i32, ptr %0, align 8, !tbaa !66
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %0, align 8, !tbaa !66
  br label %.loopexit

bb.g:                                             ; preds = %tailrecurse
  %exitcond.not = icmp eq i32 %.tr90, 10
  br i1 %exitcond.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = fadd <2 x float> %i.k, %i.l
  %i.bi = fadd <2 x float> %i.l, %i.m
  %i.bj = extractelement <2 x float> %i.m, i64 0
  %i.bk = fadd float %7, %i.bj
  %i.bl = extractelement <2 x float> %i.m, i64 1
  %i.bm = fadd float %8, %i.bl
  %i.bn = fmul <2 x float> %i.bh, splat (float 5.000000e-01) ; 3 uses
  %i.bo = fmul <2 x float> %i.bi, splat (float 5.000000e-01) ; 2 uses
  %i.bp = fadd <2 x float> %i.bn, %i.bo
  %i.bq = fmul <2 x float> %i.bp, splat (float 5.000000e-01) ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bm, i64 1
  %i.bt = fmul <2 x float> %i.bs, splat (float 5.000000e-01) ; 2 uses
  %i.bu = fadd <2 x float> %i.bo, %i.bt
  %i.bv = fmul <2 x float> %i.bu, splat (float 5.000000e-01) ; 2 uses
  %i.bw = fadd <2 x float> %i.bq, %i.bv
  %i.bx = fmul <2 x float> %i.bw, splat (float 5.000000e-01) ; 3 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 2 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %i.ca = add nuw nsw i32 %.tr90, 1               ; 2 uses
  %i.cb = extractelement <2 x float> %i.bq, i64 0
  %i.cc = extractelement <2 x float> %i.bq, i64 1
end_hunk_0
