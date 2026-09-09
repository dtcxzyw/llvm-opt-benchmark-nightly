Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZN10ImDrawList19PathEllipticalArcToERK6ImVec2S2_fffi:bb.a
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
  %i.a = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %4, i64 0 ; 3 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.c = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %4, i64 2
  %i.d = fsub <4 x float> %i.b, %i.c              ; 3 uses
  %i.e = shufflevector <4 x float> %i.a, <4 x float> %i.d, <4 x i32> <i32 0, i32 6, i32 6, i32 6>
  %i.f = fmul <4 x float> %i.e, <float 1.000000e+00, float 3.000000e+00, float 1.000000e+00, float 3.000000e+00>
  %i.g = shufflevector <4 x float> %i.a, <4 x float> %i.d, <4 x i32> <i32 0, i32 0, i32 6, i32 6>
  %i.h = fmul <4 x float> %i.g, %i.f
  %i.i = fmul <4 x float> %i.d, %i.h              ; 4 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !29
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.l = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.m = fmul <2 x float> %i.l, %i.k
  %i.n = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.j, <2 x float> %i.m)
  %i.p = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.p, <2 x float> %i.o)
  %i.s = load <2 x float>, ptr %3, align 4, !tbaa !29
  %i.t = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.s, <2 x float> %i.r)
  ret <2 x float> %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_Z21ImBezierQuadraticCalcRK6ImVec2S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3
  %4 = insertelement <3 x float> poison, float %3, i64 0
  %5 = insertelement <3 x float> %4, float %i.a, i64 1 ; 2 uses
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %7 = fmul <3 x float> %6, <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00>
  %8 = shufflevector <3 x float> %5, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %9 = fmul <3 x float> %8, %7                    ; 3 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !29
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !29
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.d = fmul <2 x float> %10, %i.c
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.e = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.b, <2 x float> %i.d)
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.g = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> zeroinitializer
  %i.h = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.f, <2 x float> %i.e)
  ret <2 x float> %i.h
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
  %13 = load <2 x float>, ptr %1, align 4, !tbaa !29
  %14 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %15 = fmul <2 x float> %14, %13
  %16 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.h, <2 x float> %15)
  %i.al = load <2 x float>, ptr %2, align 4, !tbaa !29
  %17 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = load <2 x float>, ptr %3, align 4, !tbaa !29
  %i.ao = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.an, <2 x float> %i.am)
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !99
  %i.ar = icmp eq i32 %i.ab, %i.aq
  br i1 %i.ar, label %bb.e, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !47
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
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ba, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !100
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.az, ptr nonnull align 4 %i.ba, i64 %i.bd, i1 false)
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.be)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.az, ptr %i.b, align 8, !tbaa !47
  store i32 %i.aw, ptr %i.aa, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.h
  %i.bf = phi i32 [ %i.ab, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.bg = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.az, %bb.h ]
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  store <2 x float> %i.ap, ptr %i.bi, align 4
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !100
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !100
  %i.bl = add nuw i32 %.022, 1
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
  %i.ai = load i32, ptr %0, align 8, !tbaa !100   ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !99
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
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
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.aw = load i32, ptr %0, align 8, !tbaa !100
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.at, ptr nonnull align 4 %i.av, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !47
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.ba = phi i32 [ %i.ai, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.bb = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.at, %bb.f ]
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc ; 2 uses
  store float %7, ptr %i.bd, align 4
  %.sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store float %8, ptr %.sroa_idx80, align 4
  %i.be = load i32, ptr %0, align 8, !tbaa !100
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !100
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
begin_hunk_1_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  br i1 %or.cond64.i354.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.tb = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !798
  %i.td = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.te = sext i32 %i.sf to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.te ; 2 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !29
  %i.th = call float @llvm.fmuladd.f32(float %i.tc, float %i.td, float %i.tg)
  store float %i.th, ptr %i.tf, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ti = add nsw i32 %i.qk, 2
  %i.tj = sitofp i32 %i.ti to float               ; 2 uses
  %i.tk = fcmp ult float %.057.i350.i.i.i.i.i.i, %i.tj
  %i.tl = fcmp ult float %.055.i352.i.i.i.i.i.i, %i.tj
  %or.cond65.i355.i.i.i.i.i.i = select i1 %i.tk, i1 true, i1 %i.tl
  br i1 %or.cond65.i355.i.i.i.i.i.i, label %bb.bu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.tm = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !798
  %i.to = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.tp = fmul float %i.to, %i.tn
  %i.tq = fsub float %.057.i350.i.i.i.i.i.i, %i.sy
  %i.tr = fsub float %.055.i352.i.i.i.i.i.i, %i.sy
  %i.ts = fadd float %i.tq, %i.tr
  %i.tt = fmul float %i.ts, 5.000000e-01
  %i.tu = fsub float 1.000000e+00, %i.tt
  %i.tv = sext i32 %i.sf to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.tv ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !29
  %i.ty = call float @llvm.fmuladd.f32(float %i.tp, float %i.tu, float %i.tx)
  store float %i.ty, ptr %i.tw, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.az
  br i1 %i.pz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tz = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !796 ; 4 uses
  %i.ub = fcmp olt float %i.ua, %i.nv
  br i1 %i.ub, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.uc = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.ud = load float, ptr %i.uc, align 8, !tbaa !809 ; 4 uses
  %i.ue = fcmp olt float %i.nw, %i.ud
  br i1 %i.ue, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.uf = fcmp ogt float %i.ud, %i.nv
  br i1 %i.uf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %foldExtExtBinop339 = fsub <2 x float> %i.qe, %i.qe
  %i.ug = extractelement <2 x float> %foldExtExtBinop339, i64 0
  %i.uh = fsub float %i.ud, %i.nv
  %i.ui = fmul float %i.ug, %i.uh
  %i.uj = fdiv float %i.ui, %i.qa
  %i.uk = fadd float %i.qf, %i.uj
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.057.i357.i.i.i.i.i.i = phi float [ %i.uk, %bb.bz ], [ %i.qf, %bb.by ] ; 4 uses
  %.056.i358.i.i.i.i.i.i = phi float [ %i.ud, %bb.bz ], [ %i.nv, %bb.by ] ; 3 uses
  %i.ul = fcmp ogt float %i.nw, %i.ua
  br i1 %i.ul, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.um = fsub float %i.qf, %.057.i357.i.i.i.i.i.i
  %i.un = fsub float %i.ua, %i.nw
  %i.uo = fmul float %i.un, %i.um
  %i.up = fsub float %i.nw, %.056.i358.i.i.i.i.i.i
  %i.uq = fdiv float %i.uo, %i.up
  %i.ur = fadd float %i.qf, %i.uq
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.055.i359.i.i.i.i.i.i = phi float [ %i.ur, %bb.cb ], [ %i.qf, %bb.ca ] ; 3 uses
  %.0.i360.i.i.i.i.i.i = phi float [ %i.ua, %bb.cb ], [ %i.nw, %bb.ca ] ; 2 uses
  %i.us = fcmp ugt float %.057.i357.i.i.i.i.i.i, 0.000000e+00
  %i.ut = fcmp ugt float %.055.i359.i.i.i.i.i.i, 0.000000e+00
  %or.cond64.i361.i.i.i.i.i.i = select i1 %i.us, i1 true, i1 %i.ut
  br i1 %or.cond64.i361.i.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uu = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !798
  %i.uw = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.ux = load float, ptr %i.ne, align 4, !tbaa !29
  %i.uy = call float @llvm.fmuladd.f32(float %i.uv, float %i.uw, float %i.ux)
  store float %i.uy, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.uz = fcmp ult float %.057.i357.i.i.i.i.i.i, 1.000000e+00
  %i.va = fcmp ult float %.055.i359.i.i.i.i.i.i, 1.000000e+00
  %or.cond65.i362.i.i.i.i.i.i = select i1 %i.uz, i1 true, i1 %i.va
  br i1 %or.cond65.i362.i.i.i.i.i.i, label %bb.cf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.vb = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !798
  %i.vd = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.ve = fmul float %i.vd, %i.vc
  %i.vf = fadd float %.057.i357.i.i.i.i.i.i, %.055.i359.i.i.i.i.i.i
  %i.vg = fmul float %i.vf, 5.000000e-01
  %i.vh = fsub float 1.000000e+00, %i.vg
  %i.vi = load float, ptr %i.ne, align 4, !tbaa !29
  %i.vj = call float @llvm.fmuladd.f32(float %i.ve, float %i.vh, float %i.vi)
  store float %i.vj, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ax
  %i.vk = fadd float %i.qg, %i.qf                 ; 34 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 16
  %i.vm = load float, ptr %i.vl, align 8, !tbaa !806 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 15 uses
  %i.vp = load <2 x float>, ptr %i.vn, align 8, !tbaa !29 ; 3 uses
  %i.vq = extractelement <2 x float> %i.vp, i64 0 ; 2 uses
  %i.vr = fcmp ogt float %i.vq, %i.nv             ; 2 uses
  %i.vs = fsub <2 x float> %i.vp, %i.qc
  %i.vt = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vu = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vt, <2 x float> %i.vs, <2 x float> %i.vu) ; 2 uses
  %i.vw = extractelement <2 x float> %i.vv, i64 0
  %.0307.i.i.i.i.i.i = select i1 %i.vr, float %i.vw, float %i.qf ; 7 uses
  %.0303.i.i.i.i.i.i = select i1 %i.vr, float %i.vq, float %i.nv ; 3 uses
  %i.vx = extractelement <2 x float> %i.vp, i64 1 ; 2 uses
  %i.vy = fcmp olt float %i.vx, %i.nw             ; 2 uses
  %i.vz = extractelement <2 x float> %i.vv, i64 1
  %.0305.i.i.i.i.i.i = select i1 %i.vy, float %i.vz, float %i.vk ; 7 uses
  %.0301.i.i.i.i.i.i = select i1 %i.vy, float %i.vx, float %i.nw ; 3 uses
  %i.wa = fcmp oge float %.0307.i.i.i.i.i.i, 0.000000e+00
  %i.wb = fcmp oge float %.0305.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i = select i1 %i.wa, i1 %i.wb, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.wc = fcmp olt float %.0307.i.i.i.i.i.i, %i.nt
  %i.wd = fcmp olt float %.0305.i.i.i.i.i.i, %i.nt
  %or.cond343.i.i.i.i.i.i = select i1 %i.wc, i1 %i.wd, i1 false
  br i1 %or.cond343.i.i.i.i.i.i, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.we = fptosi float %.0307.i.i.i.i.i.i to i32  ; 5 uses
  %i.wf = fptosi float %.0305.i.i.i.i.i.i to i32  ; 3 uses
  %i.wg = icmp eq i32 %i.we, %i.wf
  br i1 %i.wg, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.wh = fsub float %.0301.i.i.i.i.i.i, %.0303.i.i.i.i.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !798
  %i.wk = fmul float %i.wh, %i.wj                 ; 2 uses
  %i.wl = sitofp i32 %i.we to float
  %i.wm = fadd float %i.wl, 1.000000e+00          ; 2 uses
  %i.wn = fsub float %i.wm, %.0307.i.i.i.i.i.i
  %i.wo = fsub float %i.wm, %.0305.i.i.i.i.i.i
  %i.wp = fadd float %i.wn, %i.wo
  %i.wq = fmul float %i.wp, 5.000000e-01
  %i.wr = fmul float %i.wq, %i.wk
  %i.ws = sext i32 %i.we to i64                   ; 2 uses
  %i.wt = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.ws ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !29
  %i.wv = fadd float %i.wu, %i.wr
  store float %i.wv, ptr %i.wt, align 4, !tbaa !29
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.ws ; 2 uses
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !29
  %i.wy = fadd float %i.wk, %i.wx
  store float %i.wy, ptr %i.ww, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.wz = fcmp ogt float %.0307.i.i.i.i.i.i, %.0305.i.i.i.i.i.i
  br i1 %i.wz, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.xa = fsub float %i.nv, %.0303.i.i.i.i.i.i
  %i.xb = fadd float %i.nw, %i.xa
  %i.xc = fsub float %i.nv, %.0301.i.i.i.i.i.i
  %i.xd = fadd float %i.nw, %i.xc
  %i.xe = fneg float %i.vm
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi480.i.i.i.i.i.i = phi i32 [ %i.we, %bb.cl ], [ %i.wf, %bb.ck ] ; 8 uses
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.wf, %bb.cl ], [ %i.we, %bb.ck ] ; 4 uses
  %.0309.i.i.i.i.i.i = phi float [ %i.vk, %bb.cl ], [ %i.qf, %bb.ck ]
  %.1308.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i, %bb.cl ], [ %.0307.i.i.i.i.i.i, %bb.ck ]
  %.1306.i.i.i.i.i.i = phi float [ %.0307.i.i.i.i.i.i, %bb.cl ], [ %.0305.i.i.i.i.i.i, %bb.ck ]
  %.1304.i.i.i.i.i.i = phi float [ %i.xd, %bb.cl ], [ %.0303.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.1302.i.i.i.i.i.i = phi float [ %i.xb, %bb.cl ], [ %.0301.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.0300.i.i.i.i.i.i = phi float [ %i.xe, %bb.cl ], [ %i.vm, %bb.ck ] ; 3 uses
  %i.xf = add i32 %.pre-phi.i.i.i.i.i.i, 1        ; 5 uses
  %7 = sitofp i32 %.pre-phi480.i.i.i.i.i.i to float ; 3 uses
  %8 = sitofp i32 %i.xf to float                  ; 2 uses
  %9 = insertelement <2 x float> poison, float %7, i64 0
  %10 = insertelement <2 x float> %9, float %8, i64 1
  %i.xg = insertelement <2 x float> poison, float %.0309.i.i.i.i.i.i, i64 0
  %i.xh = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xi = fsub <2 x float> %10, %i.xh
  %i.xj = insertelement <2 x float> poison, float %.0300.i.i.i.i.i.i, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %i.xi, <2 x float> %i.qc) ; 2 uses
  %i.xm = extractelement <2 x float> %i.xl, i64 1 ; 2 uses
  %i.xn = fcmp ogt float %i.xm, %i.nw
  %.0298.i.i.i.i.i.i = select i1 %i.xn, float %i.nw, float %i.xm ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !798 ; 4 uses
  %i.xq = fsub float %.0298.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.xr = fmul float %i.xp, %i.xq                 ; 5 uses
  %i.xs = fsub nnan float %8, %.1308.i.i.i.i.i.i
  %i.xt = fmul float %i.xs, %i.xr
  %i.xu = fmul float %i.xt, 5.000000e-01
  %i.xv = sext i32 %.pre-phi.i.i.i.i.i.i to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xv ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !29
  %i.xy = fadd float %i.xx, %i.xu
  store float %i.xy, ptr %i.xw, align 4, !tbaa !29
  %i.xz = extractelement <2 x float> %i.xl, i64 0 ; 2 uses
  %i.ya = fcmp ogt float %i.xz, %i.nw
  br i1 %i.ya, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.not342.i.i.i.i.i.i = icmp eq i32 %i.xf, %.pre-phi480.i.i.i.i.i.i
  %i.yb = sub nsw i32 %.pre-phi480.i.i.i.i.i.i, %i.xf
  %i.yc = fsub float %i.nw, %.0298.i.i.i.i.i.i
  %i.yd = sitofp i32 %i.yb to float
  %i.ye = fdiv float %i.yc, %i.yd
  %.1.i.i.i.i.i.i = select i1 %.not342.i.i.i.i.i.i, float %.0300.i.i.i.i.i.i, float %i.ye
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.2.i.i.i.i.i.i = phi float [ %.1.i.i.i.i.i.i, %bb.cn ], [ %.0300.i.i.i.i.i.i, %bb.cm ]
  %.0297.i.i.i.i.i.i = phi float [ %i.nw, %bb.cn ], [ %i.xz, %bb.cm ]
  %i.yf = fmul float %i.xp, %.2.i.i.i.i.i.i       ; 4 uses
  %i.yg = icmp slt i32 %i.xf, %.pre-phi480.i.i.i.i.i.i
  br i1 %i.yg, label %.lr.ph472.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph472.i.i.i.i.i.i:                            ; preds = %bb.co
  %i.yh = fmul float %i.yf, 5.000000e-01          ; 3 uses
  %i.yi = sext i32 %i.xf to i64                   ; 3 uses
  %i.yj = add i32 %.pre-phi480.i.i.i.i.i.i, -2
  %i.yk = sub i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi480.i.i.i.i.i.i
  %i.yl = and i32 %i.yk, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yl, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i.i
  %i.ym = fadd float %i.yh, %i.xr
  %i.yn = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.yi ; 2 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !29
  %i.yp = fadd float %i.ym, %i.yo
  store float %i.yp, ptr %i.yn, align 4, !tbaa !29
  %i.yq = fadd float %i.yf, %i.xr                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.prol = add nsw i64 %i.yi, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i.i
  %.lcssa359.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i.i ], [ %i.yq, %.prol.loopexit.unr-lcssa ]
  %indvars.iv476.i.i.i.i.i.i.unr = phi i64 [ %i.yi, %.lr.ph472.i.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.i.unr = phi float [ %i.xr, %.lr.ph472.i.i.i.i.i.i ], [ %i.yq, %.prol.loopexit.unr-lcssa ]
  %i.yr = icmp eq i32 %i.yj, %.pre-phi.i.i.i.i.i.i
  br i1 %i.yr, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i.i = phi float [ %i.zc, %.lr.ph472.i.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ys = fadd float %i.yh, %.0296471.i.i.i.i.i.i
  %i.yt = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !29
  %i.yv = fadd float %i.ys, %i.yu
  store float %i.yv, ptr %i.yt, align 4, !tbaa !29
  %i.yw = fadd float %i.yf, %.0296471.i.i.i.i.i.i ; 2 uses
  %i.yx = fadd float %i.yh, %i.yw
  %i.yy = getelementptr [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i
  %i.yz = getelementptr i8, ptr %i.yy, i64 4      ; 2 uses
  %i.za = load float, ptr %i.yz, align 4, !tbaa !29
  %i.zb = fadd float %i.yx, %i.za
  store float %i.zb, ptr %i.yz, align 4, !tbaa !29
  %i.zc = fadd float %i.yf, %i.yw                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv476.i.i.i.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.1 = trunc i64 %indvars.iv.next477.i.i.i.i.i.i.1 to i32
  %exitcond479.not.i.i.i.i.i.i.1 = icmp eq i32 %.pre-phi480.i.i.i.i.i.i, %lftr.wideiv.i.i.i.i.i.i.1
  br i1 %exitcond479.not.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new, !llvm.loop !770

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new, %bb.co
  %.0296.lcssa.i.i.i.i.i.i = phi float [ %i.xr, %bb.co ], [ %.lcssa359.unr, %.prol.loopexit ], [ %i.zc, %.lr.ph472.i.i.i.i.i.i.new ]
  %i.zd = fsub float %.1302.i.i.i.i.i.i, %.0297.i.i.i.i.i.i
  %i.ze = fadd float %7, 1.000000e+00             ; 2 uses
  %i.zf = fsub nnan float %i.ze, %7
  %i.zg = fsub float %i.ze, %.1306.i.i.i.i.i.i
  %i.zh = fadd float %i.zf, %i.zg
  %i.zi = fmul float %i.zh, 5.000000e-01
  %i.zj = fmul float %i.zi, %i.zd
  %i.zk = call float @llvm.fmuladd.f32(float %i.xp, float %i.zj, float %.0296.lcssa.i.i.i.i.i.i)
  %i.zl = sext i32 %.pre-phi480.i.i.i.i.i.i to i64 ; 2 uses
  %i.zm = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.zl ; 2 uses
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !29
  %i.zo = fadd float %i.zk, %i.zn
  store float %i.zo, ptr %i.zm, align 4, !tbaa !29
  %i.zp = fsub float %.1302.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.zl ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !29
  %i.zs = call float @llvm.fmuladd.f32(float %i.xp, float %i.zp, float %i.zr)
  store float %i.zs, ptr %i.zq, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.nu, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.cp
  %i.zt = fsub float %i.vk, %i.qf
  %i.zu = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.zv = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.zw = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.zx = uitofp nneg i32 %i.zv to float          ; 60 uses
  %i.zy = uitofp nneg i32 %i.zw to float          ; 90 uses
  %i.zz = insertelement <2 x float> poison, float %i.zy, i64 0
  %i.aaa = insertelement <2 x float> %i.zz, float %i.zx, i64 1
  %i.aab = fsub <2 x float> %i.aaa, %i.vu         ; 7 uses
  %i.aac = fdiv <2 x float> %i.aab, %i.vt         ; 2 uses
  %i.aad = extractelement <2 x float> %i.aac, i64 0
  %i.aae = fadd float %i.aad, %i.nv               ; 52 uses
  %i.aaf = extractelement <2 x float> %i.aac, i64 1
  %i.aag = fadd float %i.aaf, %i.nv               ; 52 uses
  %i.aah = fcmp olt float %i.qf, %i.zy            ; 2 uses
  %i.aai = fcmp ogt float %i.vk, %i.zx            ; 2 uses
  %or.cond344.i.i.i.i.i.i = select i1 %i.aah, i1 %i.aai, i1 false
  br i1 %or.cond344.i.i.i.i.i.i, label %bb.cr, label %bb.dw

bb.cr:                                            ; preds = %bb.cq
  %i.aaj = fcmp oeq float %i.aae, %i.nv
  br i1 %i.aaj, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aak = load float, ptr %i.vo, align 4, !tbaa !796 ; 4 uses
  %i.aal = fcmp olt float %i.aak, %i.nv
  br i1 %i.aal, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aam = load float, ptr %i.vn, align 8, !tbaa !809 ; 4 uses
  %i.aan = fcmp olt float %i.aae, %i.aam
  br i1 %i.aan, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aao = fcmp ogt float %i.aam, %i.nv
  br i1 %i.aao, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aap = fsub float %i.aam, %i.nv
  %i.aaq = extractelement <2 x float> %i.aab, i64 0
  %i.aar = fmul float %i.aaq, %i.aap
  %i.aas = fsub float %i.aae, %i.nv
  %i.aat = fdiv float %i.aar, %i.aas
  %i.aau = fadd float %i.qf, %i.aat
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.057.i364.i.i.i.i.i.i = phi float [ %i.aau, %bb.cv ], [ %i.qf, %bb.cu ] ; 4 uses
  %.056.i365.i.i.i.i.i.i = phi float [ %i.aam, %bb.cv ], [ %i.nv, %bb.cu ] ; 3 uses
  %i.aav = fcmp ogt float %i.aae, %i.aak
  br i1 %i.aav, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aaw = fsub float %i.zy, %.057.i364.i.i.i.i.i.i
  %i.aax = fsub float %i.aak, %i.aae
  %i.aay = fmul float %i.aax, %i.aaw
  %i.aaz = fsub float %i.aae, %.056.i365.i.i.i.i.i.i
  %i.aba = fdiv float %i.aay, %i.aaz
  %i.abb = fadd float %i.aba, %i.zy
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i366.i.i.i.i.i.i = phi float [ %i.abb, %bb.cx ], [ %i.zy, %bb.cw ] ; 3 uses
  %.0.i367.i.i.i.i.i.i = phi float [ %i.aak, %bb.cx ], [ %i.aae, %bb.cw ] ; 2 uses
  %i.abc = fcmp ugt float %.057.i364.i.i.i.i.i.i, %i.zy
  %i.abd = fcmp ugt float %.055.i366.i.i.i.i.i.i, %i.zy
  %or.cond64.i368.i.i.i.i.i.i = select i1 %i.abc, i1 true, i1 %i.abd
  br i1 %or.cond64.i368.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.abe = load float, ptr %i.zu, align 4, !tbaa !798
  %i.abf = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !29
  %i.abi = call float @llvm.fmuladd.f32(float %i.abe, float %i.abf, float %i.abh)
  store float %i.abi, ptr %i.abg, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.abj = fcmp ult float %.057.i364.i.i.i.i.i.i, %i.zx
  %i.abk = fcmp ult float %.055.i366.i.i.i.i.i.i, %i.zx
  %or.cond65.i369.i.i.i.i.i.i = select i1 %i.abj, i1 true, i1 %i.abk
  br i1 %or.cond65.i369.i.i.i.i.i.i, label %bb.db, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.abl = load float, ptr %i.zu, align 4, !tbaa !798
  %i.abm = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.abn = fmul float %i.abm, %i.abl
  %i.abo = fsub float %.057.i364.i.i.i.i.i.i, %i.zy
  %i.abp = fsub float %.055.i366.i.i.i.i.i.i, %i.zy
  %i.abq = fadd float %i.abo, %i.abp
  %i.abr = fmul float %i.abq, 5.000000e-01
  %i.abs = fsub float 1.000000e+00, %i.abr
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !29
  %i.abv = call float @llvm.fmuladd.f32(float %i.abn, float %i.abs, float %i.abu)
  store float %i.abv, ptr %i.abt, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i: ; preds = %bb.db, %bb.da, %bb.cz, %bb.ct, %bb.cs, %bb.cr
  %i.abw = fcmp oeq float %i.aae, %i.aag
  br i1 %i.abw, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.abx = load float, ptr %i.vo, align 4, !tbaa !796 ; 4 uses
  %i.aby = fcmp ogt float %i.aae, %i.abx
  br i1 %i.aby, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abz = load float, ptr %i.vn, align 8, !tbaa !809 ; 4 uses
  %i.aca = fcmp olt float %i.aag, %i.abz
  br i1 %i.aca, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.acb = fcmp olt float %i.aae, %i.abz
  br i1 %i.acb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.acc = fsub nnan float %i.zx, %i.zy
  %i.acd = fsub float %i.abz, %i.aae
  %i.ace = fmul float %i.acc, %i.acd
  %i.acf = fsub float %i.aag, %i.aae
  %i.acg = fdiv float %i.ace, %i.acf
  %i.ach = fadd float %i.acg, %i.zy
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.057.i371.i.i.i.i.i.i = phi float [ %i.ach, %bb.df ], [ %i.zy, %bb.de ] ; 4 uses
  %.056.i372.i.i.i.i.i.i = phi float [ %i.abz, %bb.df ], [ %i.aae, %bb.de ] ; 3 uses
  %i.aci = fcmp ogt float %i.aag, %i.abx
  br i1 %i.aci, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.acj = fsub float %i.zx, %.057.i371.i.i.i.i.i.i
  %i.ack = fsub float %i.abx, %i.aag
  %i.acl = fmul float %i.ack, %i.acj
  %i.acm = fsub float %i.aag, %.056.i372.i.i.i.i.i.i
  %i.acn = fdiv float %i.acl, %i.acm
  %i.aco = fadd float %i.acn, %i.zx
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.055.i373.i.i.i.i.i.i = phi float [ %i.aco, %bb.dh ], [ %i.zx, %bb.dg ] ; 3 uses
  %.0.i374.i.i.i.i.i.i = phi float [ %i.abx, %bb.dh ], [ %i.aag, %bb.dg ] ; 2 uses
  %i.acp = fcmp ugt float %.057.i371.i.i.i.i.i.i, %i.zy
  %i.acq = fcmp ugt float %.055.i373.i.i.i.i.i.i, %i.zy
  %or.cond64.i375.i.i.i.i.i.i = select i1 %i.acp, i1 true, i1 %i.acq
  br i1 %or.cond64.i375.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acr = load float, ptr %i.zu, align 4, !tbaa !798
  %i.acs = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.acu = load float, ptr %i.act, align 4, !tbaa !29
  %i.acv = call float @llvm.fmuladd.f32(float %i.acr, float %i.acs, float %i.acu)
  store float %i.acv, ptr %i.act, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.acw = fcmp ult float %.057.i371.i.i.i.i.i.i, %i.zx
  %i.acx = fcmp ult float %.055.i373.i.i.i.i.i.i, %i.zx
  %or.cond65.i376.i.i.i.i.i.i = select i1 %i.acw, i1 true, i1 %i.acx
  br i1 %or.cond65.i376.i.i.i.i.i.i, label %bb.dl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.acy = load float, ptr %i.zu, align 4, !tbaa !798
  %i.acz = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.ada = fmul float %i.acz, %i.acy
  %i.adb = fsub float %.057.i371.i.i.i.i.i.i, %i.zy
  %i.adc = fsub float %.055.i373.i.i.i.i.i.i, %i.zy
  %i.add = fadd float %i.adb, %i.adc
  %i.ade = fmul float %i.add, 5.000000e-01
  %i.adf = fsub float 1.000000e+00, %i.ade
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
end_hunk_1
