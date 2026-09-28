Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN10ImDrawList19PathEllipticalArcToERK6ImVec2S2_fffi:bb.a
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
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !582
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_Z17ImBezierCubicCalcRK6ImVec2S1_S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4) local_unnamed_addr #18 {
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
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !29
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.m = insertelement <2 x float> poison, float %i.f, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.l
  %i.p = insertelement <2 x float> poison, float %i.c, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.k, <2 x float> %i.o)
  %i.s = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.s, <2 x float> %i.r)
  %i.w = load <2 x float>, ptr %3, align 4, !tbaa !29
  %i.x = insertelement <2 x float> poison, float %i.j, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.w, <2 x float> %i.v)
  ret <2 x float> %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @_Z21ImBezierQuadraticCalcRK6ImVec2S1_S1_f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = fsub float 1.000000e+00, %3              ; 3 uses
  %i.b = fmul float %i.a, %i.a
  %i.c = fmul float %i.a, 2.000000e+00
  %i.d = fmul float %3, %i.c
  %i.e = fmul float %3, %3
  %i.f = load <2 x float>, ptr %0, align 4, !tbaa !29
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.h = insertelement <2 x float> poison, float %i.d, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.i, %i.g
  %i.k = insertelement <2 x float> poison, float %i.b, i64 0
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
  %i.v = load float, ptr %i.u, align 8, !tbaa !252
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
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = fmul float %i.ae, 3.000000e+00          ; 2 uses
  %i.ai = fmul float %i.ae, %i.ah
  %i.aj = fmul float %i.ad, %i.ai
  %i.ak = fmul float %i.ad, %i.ah
  %i.al = fmul float %i.ad, %i.ak
  %i.am = fmul float %i.ad, %i.ad
  %i.an = fmul float %i.ad, %i.am
  %i.ao = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.ap = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.h, <2 x float> %i.ar)
  %i.av = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.aw = insertelement <2 x float> poison, float %i.al, i64 0
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
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !583

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
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.af)
  %i.ah = fmul float %9, %i.ag
  %i.ai = fcmp olt float %i.ae, %i.ah
  br i1 %i.ai, label %bb.b, label %bb.g

bb.b:                                             ; preds = %tailrecurse
  %i.aj = load i32, ptr %0, align 8, !tbaa !100   ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !99
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.c, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
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
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aw, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.ax = load i32, ptr %0, align 8, !tbaa !100
  %i.ay = sext i32 %i.ax to i64
  %i.az = shl nsw i64 %i.ay, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.au, ptr nonnull align 4 %i.aw, i64 %i.az, i1 false)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ba)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.au, ptr %i.av, align 8, !tbaa !47
  store i32 %i.ar, ptr %i.ak, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.f
  %i.bb = phi i32 [ %i.aj, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.f ]
  %i.bc = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.au, %bb.f ]
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  store float %7, ptr %i.be, align 4
  %.sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %8, ptr %.sroa_idx80, align 4
  %i.bf = load i32, ptr %0, align 8, !tbaa !100
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %0, align 8, !tbaa !100
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
begin_hunk_1_@_ZL34ImFontAtlasBuildUpdateTexDataBasicP11ImFontAtlas:bb.a
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dkb, i64 484
  store i32 0, ptr %i.dlg, align 4, !tbaa !258
  br label %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit

_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit: ; preds = %.preheader45.i35, %iter.check1069, %._Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit_crit_edge, %.preheader45.i, %.preheader.i, %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit34, %bb.k
  %i.dlh = phi <2 x i16> [ %i.y, %._Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit_crit_edge ], [ %i.bz, %_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc.exit34 ], [ %i.bz, %.preheader45.i ], [ %i.bz, %iter.check1069 ], [ %i.bz, %bb.k ], [ %i.bz, %.preheader.i ], [ %i.bz, %.preheader45.i35 ]
  %i.dli = uitofp <2 x i16> %i.dlh to <2 x float>
  %i.dlj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dlk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dll = fadd nnan <2 x float> %i.dli, splat (float 5.000000e-01)
  %i.dlm = load <2 x float>, ptr %i.dlj, align 4, !tbaa !29
  %i.dln = fmul <2 x float> %i.dlm, %i.dll
  store <2 x float> %i.dln, ptr %i.dlk, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL34ImFontAtlasBuildUpdateTexDataLinesP11ImFontAtlas(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !481
  %i.b = and i32 %i.a, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.split103.us

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !332  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !425  ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 524287                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !438
  %.not.i.i = icmp slt i32 %i.j, %i.l
  br i1 %.not.i.i, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !439
  %i.o = zext nneg i32 %i.j to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = xor i32 %i.q, %i.h
  %i.s = and i32 %i.r, 1072693248
  %.not16.i.i = icmp ne i32 %i.s, 0
  %i.t = and i32 %i.q, 1073741824
  %.not17.i.i = icmp eq i32 %i.t, 0
  %or.cond30.i = or i1 %.not17.i.i, %.not16.i.i
  br i1 %or.cond30.i, label %thread-pre-split, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !331  ; 2 uses
  %.not161 = icmp eq ptr %i.v, null
  br i1 %.not161, label %thread-pre-split, label %.split.us

thread-pre-split:                                 ; preds = %bb.b, %bb.d, %bb.c, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.w = tail call noundef i32 @_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef 34, i32 noundef 33, ptr noundef null), !inline_history !534 ; 4 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.split.preheader, label %bb.e

bb.e:                                             ; preds = %thread-pre-split
  %i.y = and i32 %i.w, 524287                     ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !339  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0), !inline_history !535
  %.pre.i147 = load ptr, ptr %i.e, align 8, !tbaa !339
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %.pre.i147, %bb.f ], [ %i.z, %bb.e ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !438
  %.not.i.i138 = icmp slt i32 %i.y, %i.ad
  br i1 %.not.i.i138, label %bb.h, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !439
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4            ; 3 uses
  %i.aj = xor i32 %i.ai, %i.w
  %i.ak = and i32 %i.aj, 1072693248
  %.not16.i.i139 = icmp ne i32 %i.ak, 0
  %i.al = and i32 %i.ai, 1073741824
  %.not17.i.i140 = icmp eq i32 %i.al, 0
  %or.cond30.i141 = or i1 %.not17.i.i140, %.not16.i.i139
  br i1 %or.cond30.i141, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !331 ; 2 uses
  %.not162 = icmp eq ptr %i.an, null
  br i1 %.not162, label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, label %bb.i

bb.i:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142
  %i.ao = shl i32 %i.ai, 12
  %i.ap = ashr exact i32 %i.ao, 12
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq ; 3 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !440
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !441
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !442
  br label %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148

_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148: ; preds = %bb.g, %bb.h, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142, %bb.i
  %.sroa.0.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.as, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.7.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.au, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %.sroa.11.2 = phi i16 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.aw, %bb.i ], [ 0, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i142 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !325, !range !351, !noundef !352
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %.split.preheader

bb.j:                                             ; preds = %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !439
  %i.bc = zext nneg i32 %i.y to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = shl i32 %i.be, 12
  %i.bg = ashr exact i32 %i.bf, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !331
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj ; 4 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !332
  %i.bm = load i16, ptr %i.bk, align 2, !tbaa !440
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !441
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !442
  %i.bt = zext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !443
  %i.bw = zext i16 %i.bv to i32
  tail call void @_Z24ImTextureDataQueueUploadP13ImTextureDataiiii(ptr noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.bt, i32 noundef %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.bx, align 2, !tbaa !347
  br label %.split.preheader

.split.preheader:                                 ; preds = %thread-pre-split, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148, %bb.j
  %.sroa.0.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.0.2, %bb.j ], [ %.sroa.0.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.7.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.7.2, %bb.j ], [ %.sroa.7.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ]
  %.sroa.11.0 = phi i16 [ 0, %thread-pre-split ], [ %.sroa.11.2, %bb.j ], [ %.sroa.11.2, %_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect.exit148 ] ; 2 uses
  store i32 %i.w, ptr %i.g, align 8, !tbaa !425
  %i.by = zext i16 %.sroa.11.0 to i32             ; 2 uses
  %i.bz = zext i16 %.sroa.0.0 to i32              ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.ch = zext i16 %.sroa.11.0 to i64
  %i.ci = zext i16 %.sroa.7.0 to i64
  br label %.split

.split.us:                                        ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.i
  %i.cj = shl i32 %i.q, 12
  %i.ck = ashr exact i32 %i.cj, 12
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cl ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !440
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !441 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !442 ; 2 uses
  %i.cs = zext i16 %i.cn to i32                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !237 ; 2 uses
  %i.cx = load float, ptr %i.cu, align 8, !tbaa !238 ; 3 uses
  %i.cy = zext i16 %i.cr to i64
  %i.cz = zext i16 %i.cp to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %i.cw, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert178 = insertelement <4 x float> poison, float %i.cx, i64 0
  %broadcast.splat179 = shufflevector <4 x float> %broadcast.splatinsert178, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert180 = insertelement <4 x i64> poison, i64 %i.cy, i64 0
  %broadcast.splat181 = shufflevector <4 x i64> %broadcast.splatinsert180, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert182 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat183 = shufflevector <4 x i64> %broadcast.splatinsert182, <4 x i64> poison, <4 x i32> zeroinitializer
  %invariant.op = add nsw <4 x i32> %broadcast.splat, splat (i32 -1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.split.us
  %index = phi i64 [ 0, %.split.us ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.split.us ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.da = sub nsw <4 x i64> %broadcast.splat181, %vec.ind
  %i.db = trunc nsw <4 x i64> %i.da to <4 x i32>
  %i.dc = sdiv <4 x i32> %i.db, splat (i32 2)     ; 2 uses
  %i.dd = add nsw <4 x i32> %i.dc, %broadcast.splat
  %.reass = add nsw <4 x i32> %i.dc, %invariant.op
  %i.de = sitofp <4 x i32> %.reass to <4 x float>
  %i.df = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat183
  %i.dg = trunc <4 x i64> %i.df to <4 x i32>      ; 2 uses
  %i.dh = uitofp nneg <4 x i32> %i.dg to <4 x float>
  %i.di = fmul <4 x float> %broadcast.splat177, %i.de
  %i.dj = fmul <4 x float> %broadcast.splat179, %i.dh
  %i.dk = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.dl = add <4 x i32> %i.dk, splat (i32 1)
  %i.dm = add <4 x i32> %i.dd, %i.dl
  %i.dn = sitofp <4 x i32> %i.dm to <4 x float>
  %i.do = add <4 x i32> %i.dg, splat (i32 1)
  %i.dp = uitofp nneg <4 x i32> %i.do to <4 x float>
  %i.dq = fmul <4 x float> %broadcast.splat177, %i.dn
  %i.dr = fmul <4 x float> %broadcast.splat179, %i.dp
  %i.ds = fadd <4 x float> %i.dj, %i.dr
  %i.dt = fmul <4 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %index
  %i.dv = shufflevector <4 x float> %i.di, <4 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <4 x float> %i.dq, <4 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dv, <8 x float> %i.dw, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.du, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.dx = icmp eq i64 %index.next, 32
  br i1 %i.dx, label %.critedge.us, label %vector.body, !llvm.loop !852

.critedge.us:                                     ; preds = %vector.body
  %i.dy = zext i16 %i.cr to i32
  %i.dz = add nsw i32 %i.dy, -32
  %i.ea = sdiv i32 %i.dz, 2
  %i.eb = add nsw i32 %i.ea, %i.cs
  %i.ec = zext i16 %i.cp to i32                   ; 2 uses
  %i.ed = add nuw nsw i32 %i.ec, 32
  %i.ee = uitofp nneg i32 %i.ed to float
  %i.ef = fmul float %i.cx, %i.ee
  %i.eg = insertelement <2 x i32> poison, i32 %i.eb, i64 0
  %i.eh = add nuw nsw i32 %i.ec, 33
  %i.ei = uitofp nneg i32 %i.eh to float
  %i.ej = fmul float %i.cx, %i.ei
  %i.ek = fadd float %i.ef, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.em = shufflevector <2 x i32> %i.eg, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.en = add <4 x i32> %i.em, <i32 -1, i32 undef, i32 33, i32 undef>
  %i.eo = sitofp <4 x i32> %i.en to <4 x float>
  %i.ep = insertelement <4 x float> %i.eo, float %i.ek, i64 1
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.er = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float 5.000000e-01>, float %i.cw, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.et = fmul <4 x float> %i.eq, %i.es
  store <4 x float> %i.et, ptr %i.el, align 8, !tbaa !29
  br label %.split103.us

.split:                                           ; preds = %.split.preheader, %.critedge
  %indvars.iv115 = phi i32 [ %i.by, %.split.preheader ], [ %indvars.iv.next116, %.critedge ] ; 2 uses
  %indvar = phi i64 [ 0, %.split.preheader ], [ %indvar.next, %.critedge ] ; 11 uses
  %i.eu = shl nuw nsw i64 %indvar, 2
  %i.ev = sub nsw i64 %i.ch, %indvar              ; 3 uses
  %i.ew = trunc nsw i64 %i.ev to i32
  %i.ex = sdiv i32 %i.ew, 2                       ; 10 uses
  %i.ey = trunc nuw nsw i64 %indvar to i32
  %i.ez = add i32 %i.ex, %i.ey
  %i.fa = sub i32 %i.by, %i.ez                    ; 3 uses
  %i.fb = load i32, ptr %i.cd, align 8, !tbaa !309
  %.pre = add nuw nsw i64 %indvar, %i.ci          ; 3 uses
  switch i32 %i.fb, label %.split..critedge_crit_edge [
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

.split..critedge_crit_edge:                       ; preds = %.split
  %.pre134 = trunc i64 %.pre to i32
  br label %.critedge

bb.k:                                             ; preds = %.split
  %i.fc = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.fd = load i32, ptr %i.cf, align 4, !tbaa !311
  %i.fe = trunc i64 %.pre to i32                  ; 3 uses
  %i.ff = mul i32 %i.fd, %i.fe
  %i.fg = add i32 %i.ff, %i.bz
  %i.fh = load i32, ptr %i.cg, align 4, !tbaa !313
  %i.fi = mul i32 %i.fg, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr i8, ptr %i.fc, i64 %i.fj  ; 3 uses
  %i.fl = icmp sgt i64 %i.ev, 1
  br i1 %i.fl, label %.lr.ph95.preheader, label %.preheader85

.lr.ph95.preheader:                               ; preds = %bb.k
  %i.fm = add nsw i32 %i.ex, -1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fk, i8 0, i64 %i.fo, i1 false), !tbaa !50
  br label %.preheader85

.preheader85:                                     ; preds = %.lr.ph95.preheader, %bb.k
  %.not105 = icmp eq i64 %indvar, 0
  br i1 %.not105, label %.preheader, label %.lr.ph97

.lr.ph97:                                         ; preds = %.preheader85
  %i.fp = sext i32 %i.ex to i64
  %i.fq = getelementptr inbounds i8, ptr %i.fk, i64 %i.fp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fq, i8 -1, i64 %indvar, i1 false), !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph97, %.preheader85
  %i.fr = icmp sgt i32 %i.fa, 0
  br i1 %i.fr, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %.preheader
  %i.fs = sext i32 %i.ex to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fk, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvar
  %i.fv = zext nneg i32 %i.fa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 0, i64 %i.fv, i1 false), !tbaa !50
  br label %.critedge

bb.l:                                             ; preds = %.split
  %i.fw = load ptr, ptr %i.ce, align 8, !tbaa !308
  %i.fx = load i32, ptr %i.cf, align 4, !tbaa !311
  %i.fy = trunc i64 %.pre to i32                  ; 4 uses
  %i.fz = mul nsw i32 %i.fx, %i.fy
  %i.ga = add nsw i32 %i.fz, %i.bz
  %i.gb = load i32, ptr %i.cg, align 4, !tbaa !313
  %i.gc = mul nsw i32 %i.ga, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fw, i64 %i.gd ; 4 uses
  %i.gf = icmp sgt i64 %i.ev, 1
  br i1 %i.gf, label %.lr.ph.preheader, label %.preheader88

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %i.ex to i64        ; 3 uses
  %min.iters.check191 = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check191, label %.lr.ph.preheader200, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.preheader
  %n.vec193 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next196, %vector.body194 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index195 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.gg, align 4, !tbaa !258
  store <4 x i32> splat (i32 16777215), ptr %i.gh, align 4, !tbaa !258
  %index.next196 = add nuw i64 %index195, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next196, %n.vec193
  br i1 %i.gi, label %middle.block197, label %vector.body194, !llvm.loop !853

middle.block197:                                  ; preds = %vector.body194
  %cmp.n198 = icmp eq i64 %n.vec193, %wide.trip.count
  br i1 %cmp.n198, label %.preheader88, label %.lr.ph.preheader200

.lr.ph.preheader200:                              ; preds = %.lr.ph.preheader, %middle.block197
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec193, %middle.block197 ]
  br label %.lr.ph

.preheader88:                                     ; preds = %.lr.ph, %middle.block197, %bb.l
  %.not104 = icmp eq i64 %indvar, 0
  br i1 %.not104, label %.preheader86, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader88
  %i.gj = sext i32 %i.ex to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gk, i8 -1, i64 %i.eu, i1 false), !tbaa !258
  br label %.preheader86

.lr.ph:                                           ; preds = %.lr.ph.preheader200, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader200 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv
  store i32 16777215, ptr %i.gl, align 4, !tbaa !258
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph, !llvm.loop !854

.preheader86:                                     ; preds = %.lr.ph91, %.preheader88
  %i.gm = icmp sgt i32 %i.fa, 0
  br i1 %i.gm, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader86
  %i.gn = sext i32 %i.ex to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvar ; 2 uses
  %i.gq = sub i32 %indvars.iv115, %i.ex           ; 2 uses
  %wide.trip.count117 = zext i32 %i.gq to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.gq, 8
  br i1 %min.iters.check, label %scalar.ph184.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph93
  %n.vec = and i64 %wide.trip.count117, 4294967288 ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph185
  %index187 = phi i64 [ 0, %vector.ph185 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index187 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x i32> splat (i32 16777215), ptr %i.gr, align 4, !tbaa !258
  store <4 x i32> splat (i32 16777215), ptr %i.gs, align 4, !tbaa !258
  %index.next188 = add nuw i64 %index187, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next188, %n.vec
  br i1 %i.gt, label %middle.block189, label %vector.body186, !llvm.loop !855

end_hunk_1
