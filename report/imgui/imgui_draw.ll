Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN10ImDrawList9PathArcToERK6ImVec2fffi:bb.a
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
  %i.gj = fmul float %i.fl, %i.gi
  %i.gk = fdiv float %i.gj, f0x40C90FDB
  %i.gl = tail call float @llvm.ceil.f32(float %i.gk)
  %i.gm = fptosi float %i.gl to i32
  %i.gn = tail call noundef i32 @llvm.smax.i32(i32 %i.gm, i32 1)
  tail call void @_ZN10ImDrawList11_PathArcToNERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %i.gn)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.x, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit80, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit, %bb.h, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList19PathEllipticalArcToERK6ImVec2S2_fffi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp slt i32 %6, 1
  br i1 %i.a, label %bb.b, label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load float, ptr %2, align 4, !tbaa !237  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !238 ; 2 uses
  %i.e = fcmp oge float %i.b, %i.d
  %i.f = select i1 %i.e, float %i.b, float %i.d   ; 4 uses
  %i.g = fadd float %i.f, 9.990000e-01
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %or.cond.i = icmp ult i32 %i.h, 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 500
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !50
  %i.o = zext i8 %i.n to i32
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.q = load float, ptr %i.p, align 4, !tbaa !49 ; 2 uses
  %i.r = fcmp olt float %i.q, %i.f
  %i.s = select i1 %i.r, float %i.q, float %i.f
  %i.t = fdiv float %i.s, %i.f
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = tail call float @acosf(float noundef %i.u) #38
  %i.w = fdiv float f0x40490FDB, %i.v
  %i.x = tail call float @llvm.ceil.f32(float %i.w)
  %i.y = fptosi float %i.x to i32
  %i.z = add nsw i32 %i.y, 1
  %i.aa = sdiv i32 %i.z, 2
  %i.ab = shl nsw i32 %i.aa, 1
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 4)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 512)
  br label %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit

_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %6, %bb.a ], [ %i.o, %bb.c ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !251 ; 2 uses
  %i.ag = add nuw i32 %.0, 1
  %i.ah = add nsw i32 %i.ag, %i.af                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !99
  %.not.i = icmp sgt i32 %i.ah, %i.aj
  br i1 %.not.i, label %bb.e, label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

bb.e:                                             ; preds = %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit
  %i.ak = sext i32 %i.ah to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !100
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.am, ptr nonnull align 4 %i.ao, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.as)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.am, ptr %i.an, align 8, !tbaa !47
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !99
  %.pre.pre = load i32, ptr %i.ae, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E7reserveEi.exit

_ZN8ImVectorI6ImVec2E7reserveEi.exit:             ; preds = %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit, %bb.g
  %.pre = phi i32 [ %i.af, %_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf.exit ], [ %.pre.pre, %bb.g ]
  %i.at = tail call float @cosf(float noundef %3) #38 ; 2 uses
  %i.au = tail call float @sinf(float noundef %3) #38 ; 2 uses
  %i.av = uitofp nneg i32 %.0 to float
  %i.aw = fsub float %5, %4
  %i.ax = fneg float %i.au
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.at, i64 1
  %i.ba = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.au, i64 1
  br label %bb.i

bb.h:                                             ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void

bb.i:                                             ; preds = %_ZN8ImVectorI6ImVec2E7reserveEi.exit, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  %i.bc = phi i32 [ %.pre, %_ZN8ImVectorI6ImVec2E7reserveEi.exit ], [ %i.cm, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 6 uses
  %.02428 = phi i32 [ 0, %_ZN8ImVectorI6ImVec2E7reserveEi.exit ], [ %i.cn, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 3 uses
  %i.bd = uitofp nneg i32 %.02428 to float
  %i.be = fdiv float %i.bd, %i.av
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.aw, float %4) ; 2 uses
  %i.bg = tail call float @cosf(float noundef %i.bf) #38
  %i.bh = tail call float @sinf(float noundef %i.bf) #38
  %i.bi = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.bj = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bh, i64 1
  %i.bl = fmul <2 x float> %i.bk, %i.bi           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = fmul <2 x float> %i.bm, %i.az
  %i.bo = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bb, <2 x float> %i.bn)
  %i.bq = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.br = fadd <2 x float> %i.bq, %i.bp
  %i.bs = load i32, ptr %i.ai, align 4, !tbaa !99
  %i.bt = icmp eq i32 %i.bc, %i.bs
  br i1 %i.bt, label %bb.j, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.bu = add nsw i32 %i.bc, 1
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = sdiv i32 %i.bc, 2
  %i.bw = add nsw i32 %i.bv, %i.bc
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.k, %bb.j
  %i.bx = phi i32 [ %i.bw, %bb.k ], [ 8, %bb.j ]
  %i.by = tail call noundef i32 @llvm.smax.i32(i32 %i.bx, i32 %i.bu) ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ca) ; 3 uses
  %i.cc = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.cc, null
  br i1 %.not6.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.cd = load i32, ptr %i.ae, align 8, !tbaa !100
  %i.ce = sext i32 %i.cd to i64
  %i.cf = shl nsw i64 %i.ce, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cb, ptr nonnull align 4 %i.cc, i64 %i.cf, i1 false)
  %i.cg = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cg)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.cb, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  store i32 %i.by, ptr %i.ai, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %i.ae, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.m
  %i.ch = phi i32 [ %i.bc, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.m ]
  %i.ci = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.cb, %bb.m ]
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cj
  store <2 x float> %i.br, ptr %i.ck, align 4
  %i.cl = load i32, ptr %i.ae, align 8, !tbaa !100
  %i.cm = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.ae, align 8, !tbaa !100
  %i.cn = add nuw i32 %.02428, 1
  %exitcond.not = icmp eq i32 %.02428, %.0
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !581
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_Z17ImBezierCubicCalcRK6ImVec2S1_S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4) local_unnamed_addr #18 {
bb.a:
  %5 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %4, i64 0
  %6 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %4, i64 1
  %7 = fsub <2 x float> %5, %6                    ; 3 uses
  %i.a = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %8 = extractelement <2 x float> %7, i64 1
  %9 = fmul float %8, 3.000000e+00
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %11 = insertelement <4 x float> poison, float %9, i64 0
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %12, <4 x float> %i.a, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.b = fmul <4 x float> %10, %13
  %i.c = fmul <4 x float> %i.a, %i.b              ; 4 uses
  %i.d = load <2 x float>, ptr %0, align 4, !tbaa !29
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !29
  %14 = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %14, %i.e
  %i.g = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.d, <2 x float> %i.f)
  %i.i = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.j = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.i, <2 x float> %i.h)
  %i.l = load <2 x float>, ptr %3, align 4, !tbaa !29
  %15 = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %i.l, <2 x float> %i.k)
  ret <2 x float> %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_Z21ImBezierQuadraticCalcRK6ImVec2S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3              ; 3 uses
  %i.b = fmul float %i.a, 2.000000e+00
  %i.c = fmul float %3, %i.b
  %i.d = fmul float %i.a, %i.a
  %i.e = fmul float %3, %3
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !29
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.h = insertelement <2 x float> poison, float %i.c, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %i.g
  %i.k = insertelement <2 x float> poison, float %i.d, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.f, <2 x float> %i.j)
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.n, <2 x float> %i.m)
  ret <2 x float> %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList22PathBezierCubicCurveToERK6ImVec2S2_S2_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = load i32, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 3 uses
  %i.i = icmp eq i32 %4, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %1, align 4, !tbaa !237
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !238
  %i.m = load float, ptr %2, align 4, !tbaa !237
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !238
  %i.p = load float, ptr %3, align 4, !tbaa !237
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load float, ptr %i.u, align 8, !tbaa !253
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
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
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
  %i.ak = fmul float %i.ad, %i.ah
  %i.al = fmul float %i.ae, %i.af
  %i.am = fmul float %i.ad, %i.ai
  %i.an = fmul float %i.ad, %i.aj
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = insertelement <2 x float> poison, float %i.al, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.h, <2 x float> %i.ar)
  %i.av = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.aw = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.av, <2 x float> %i.au)
  %i.az = load <2 x float>, ptr %3, align 4, !tbaa !29
  %i.ba = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.az, <2 x float> %i.ay)
  %i.bd = load i32, ptr %i.aa, align 4, !tbaa !99
  %i.be = icmp eq i32 %i.ab, %i.bd
  br i1 %i.be, label %bb.e, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !47
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
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bn, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !100
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.br)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !47
  store i32 %i.bj, ptr %i.aa, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.h
  %i.bs = phi i32 [ %i.ab, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.bt = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.bm, %bb.h ]
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bu
  store <2 x float> %i.bc, ptr %i.bv, align 4
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !100
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !100
  %i.by = add nuw i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %4
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !582

.loopexit:                                        ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL31PathBezierCubicCurveToCasteljauP8ImVectorI6ImVec2Efffffffffi(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef range(i32 0, 11) %10) unnamed_addr #10 {
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
end_hunk_0
