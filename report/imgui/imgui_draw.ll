Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 352
begin_hunk_0_@_ZN10ImDrawList22PathBezierCubicCurveToERK6ImVec2S2_S2_i:bb.a
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
  %i.cd = extractelement <2 x float> %i.bn, i64 0
  %i.ce = extractelement <2 x float> %i.bn, i64 1
  tail call fastcc void @_ZL31PathBezierCubicCurveToCasteljauP8ImVectorI6ImVec2Efffffffffi(ptr noundef %0, float noundef %.tr81, float noundef %.tr82, float noundef %i.cd, float noundef %i.ce, float noundef %i.cb, float noundef %i.cc, float noundef %i.bz, float noundef %i.by, float noundef %9, i32 noundef %i.ca)
  br label %tailrecurse

.loopexit:                                        ; preds = %bb.g, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList26PathBezierQuadraticCurveToERK6ImVec2S2_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = load i32, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 3 uses
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %1, align 4, !tbaa !237
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !238
  %i.m = load float, ptr %2, align 4, !tbaa !237
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !238
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load float, ptr %i.r, align 8, !tbaa !253
  %i.t = extractelement <2 x float> %i.h, i64 0
  %i.u = extractelement <2 x float> %i.h, i64 1
  tail call fastcc void @_ZL35PathBezierQuadraticCurveToCasteljauP8ImVectorI6ImVec2Efffffffi(ptr noundef %i.a, float noundef %i.t, float noundef %i.u, float noundef %i.j, float noundef %i.l, float noundef %i.m, float noundef %i.o, float noundef %i.s, i32 noundef 0)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.v = sitofp i32 %3 to float
  %i.w = fdiv nnan float 1.000000e+00, %i.v
  %.not18 = icmp slt i32 %3, 1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  %i.y = phi i32 [ %i.d, %.lr.ph ], [ %i.ba, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 6 uses
  %.019 = phi i32 [ 1, %.lr.ph ], [ %i.bb, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit ] ; 3 uses
  %i.z = uitofp nneg i32 %.019 to float
  %i.aa = fmul float %i.w, %i.z                   ; 2 uses
  %i.ab = fsub float 1.000000e+00, %i.aa
  %4 = insertelement <2 x float> poison, float %i.ab, i64 0
  %5 = insertelement <3 x float> poison, float %i.aa, i64 0
  %6 = shufflevector <2 x float> %4, <2 x float> poison, <3 x i32> <i32 0, i32 0, i32 poison>
  %7 = fmul <3 x float> %6, <float 1.000000e+00, float 2.000000e+00, float poison>
  %8 = shufflevector <3 x float> %5, <3 x float> %7, <3 x i32> <i32 0, i32 3, i32 4> ; 2 uses
  %9 = shufflevector <3 x float> %8, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %10 = fmul <3 x float> %8, %9                   ; 3 uses
  %11 = load <2 x float>, ptr %1, align 4, !tbaa !29
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %13 = fmul <2 x float> %12, %11
  %14 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %i.h, <2 x float> %13)
  %i.ad = load <2 x float>, ptr %2, align 4, !tbaa !29
  %i.ae = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ad, <2 x float> %i.ac)
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !99
  %i.ah = icmp eq i32 %i.y, %i.ag
  br i1 %i.ah, label %bb.e, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !47
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i32 %i.y, 1
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sdiv i32 %i.y, 2
  %i.ak = add nsw i32 %i.aj, %i.y
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.f, %bb.e
  %i.al = phi i32 [ %i.ak, %bb.f ], [ 8, %bb.e ]
  %i.am = tail call noundef i32 @llvm.smax.i32(i32 %i.al, i32 %i.ai) ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ao) ; 3 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !100
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ap, ptr nonnull align 4 %i.aq, i64 %i.at, i1 false)
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.au)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !47
  store i32 %i.am, ptr %i.x, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.h
  %i.av = phi i32 [ %i.y, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.aw = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.ap, %bb.h ]
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store <2 x float> %i.af, ptr %i.ay, align 4
  %i.az = load i32, ptr %i.a, align 8, !tbaa !100
  %i.ba = add nsw i32 %i.az, 1                    ; 2 uses
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !100
  %i.bb = add nuw i32 %.019, 1
  %exitcond.not = icmp eq i32 %.019, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !583

.loopexit:                                        ; preds = %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL35PathBezierQuadraticCurveToCasteljauP8ImVectorI6ImVec2Efffffffi(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, i32 noundef range(i32 0, 11) %8) unnamed_addr #10 {
bb.a:
  %i.a = fsub float %5, %1                        ; 3 uses
  %i.b = fsub float %6, %2                        ; 3 uses
  %i.c = fsub float %3, %5
  %i.d = fsub float %4, %6
  %i.e = fneg float %i.a
  %i.f = fmul float %i.d, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.b, float %i.f) ; 2 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = fmul float %i.h, 4.000000e+00
  %i.j = fmul float %i.b, %i.b
  %i.k = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.j)
  %i.l = fmul float %7, %i.k
  %i.m = fcmp olt float %i.i, %i.l
  br i1 %i.m, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %exitcond.not65 = icmp eq i32 %8, 10
  br i1 %exitcond.not65, label %.loopexit, label %tailrecurse.preheader

tailrecurse.preheader:                            ; preds = %.lr.ph.preheader
  %i.n = insertelement <2 x float> poison, float %2, i64 0
  %i.o = insertelement <2 x float> %i.n, float %1, i64 1
  %i.p = insertelement <2 x float> poison, float %4, i64 0
  %i.q = insertelement <2 x float> %i.p, float %3, i64 1
  %i.r = insertelement <2 x float> poison, float %6, i64 0
  %i.s = insertelement <2 x float> %i.r, float %5, i64 1 ; 2 uses
  br label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %i.t = load i32, ptr %0, align 8, !tbaa !100    ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !99
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i

._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i: ; preds = %tailrecurse._crit_edge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.x = add nsw i32 %i.t, 1
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sdiv i32 %i.t, 2
  %i.z = add nsw i32 %i.y, %i.t
  br label %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i

_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i:  ; preds = %bb.c, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.c ], [ 8, %bb.b ]
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 %i.x) ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  %i.ah = load i32, ptr %0, align 8, !tbaa !100
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ae, ptr nonnull align 4 %i.ag, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ak)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !47
  store i32 %i.ab, ptr %i.u, align 4, !tbaa !99
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !100
  br label %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit

_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit:       ; preds = %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i, %bb.e
  %i.al = phi i32 [ %i.t, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.am = phi ptr [ %.pre.i, %._ZN8ImVectorI6ImVec2E7reserveEi.exit_crit_edge.i ], [ %i.ae, %bb.e ]
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  store float %5, ptr %i.ao, align 4
  %.sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float %6, ptr %.sroa_idx50, align 4
  %i.ap = load i32, ptr %0, align 8, !tbaa !100
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %0, align 8, !tbaa !100
  br label %.loopexit

.lr.ph:                                           ; preds = %tailrecurse
  %exitcond.not = icmp eq i32 %i.av, 10
  br i1 %exitcond.not, label %.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.preheader, %.lr.ph
  %.tr586366 = phi i32 [ %i.av, %.lr.ph ], [ %8, %tailrecurse.preheader ]
  %i.ar = phi <2 x float> [ %i.ax, %.lr.ph ], [ %i.q, %tailrecurse.preheader ] ; 2 uses
  %i.as = phi <2 x float> [ %i.az, %.lr.ph ], [ %i.o, %tailrecurse.preheader ] ; 3 uses
  %i.at = fadd <2 x float> %i.as, %i.ar
  %i.au = fadd <2 x float> %i.s, %i.ar
  %i.av = add nuw nsw i32 %.tr586366, 1           ; 3 uses
  %i.aw = fmul <2 x float> %i.at, splat (float 5.000000e-01) ; 3 uses
  %i.ax = fmul <2 x float> %i.au, splat (float 5.000000e-01) ; 4 uses
  %i.ay = fadd <2 x float> %i.aw, %i.ax
  %i.az = fmul <2 x float> %i.ay, splat (float 5.000000e-01) ; 4 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  %i.bb = extractelement <2 x float> %i.az, i64 1
  %i.bc = extractelement <2 x float> %i.aw, i64 0
  %i.bd = extractelement <2 x float> %i.aw, i64 1
  %i.be = extractelement <2 x float> %i.as, i64 0
  %i.bf = extractelement <2 x float> %i.as, i64 1
  tail call fastcc void @_ZL35PathBezierQuadraticCurveToCasteljauP8ImVectorI6ImVec2Efffffffi(ptr noundef %0, float noundef %i.bf, float noundef %i.be, float noundef %i.bd, float noundef %i.bc, float noundef %i.bb, float noundef %i.ba, float noundef %7, i32 noundef %i.av)
  %i.bg = fsub <2 x float> %i.s, %i.az            ; 5 uses
  %i.bh = extractelement <2 x float> %i.ax, i64 1
  %i.bi = fsub float %i.bh, %5
  %i.bj = extractelement <2 x float> %i.ax, i64 0
  %i.bk = fsub float %i.bj, %6
  %i.bl = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 0
  %i.bn = fneg <2 x float> %i.bg
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bp = fmul <2 x float> %i.bm, %i.bo
  %i.bq = insertelement <2 x float> %i.bg, float %i.bi, i64 0
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bq, <2 x float> %i.bp) ; 2 uses
  %i.bs = insertelement <2 x float> %i.br, float %7, i64 1
  %i.bt = fmul <2 x float> %i.bs, %i.br           ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = fmul float %i.bu, 4.000000e+00
  %i.bw = extractelement <2 x float> %i.bt, i64 1
  %i.bx = fcmp olt float %i.bv, %i.bw
  br i1 %i.bx, label %tailrecurse._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %_ZN8ImVectorI6ImVec2E9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a
  %i.ng = sitofp i32 %i.nf to float
  %i.nh = fadd float %i.ng, 1.000000e+00
  %i.ni = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.nj = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store float %i.nh, ptr %i.nk, align 4, !tbaa !524
  %i.nl = icmp sgt i32 %i.cu, 0
  br i1 %i.nl, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %bb.aj
  %i.nm = sitofp i32 %i.eg to float
  %i.nn = icmp ne i32 %i.eh, 0
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %i.np = shl nsw i64 %i.nd, 2
  %i.nq = add nsw i32 %i.cr, 1
  %i.nr = sext i32 %i.nq to i64
  %i.ns = shl nsw i64 %i.nr, 2
  %i.nt = sitofp i32 %i.cr to float               ; 3 uses
  %i.nu = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.cr to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %i.eh, %.lr.ph33.i.i.i.i.i ], [ %i.axn, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.axo, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.nv = sitofp i32 %.07530.i.i.i.i.i to float   ; 68 uses
  %i.nw = fadd float %i.nv, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.np, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ne, i8 0, i64 %i.ns, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ak ], [ %.sroa.7.2.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !524 ; 2 uses
  %i.nz = fcmp ugt float %i.ny, %i.nw
  br i1 %i.nz, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.oa = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.nn, %i.oa
  br label %bb.an

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.am
  %i.ob = phi ptr [ %i.oh, %bb.am ], [ %.0..i.i.i.i.i, %bb.ak ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.am ], [ %i.c, %bb.ak ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.am ], [ %.sroa.7.027.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 28
  %i.od = load float, ptr %i.oc, align 4, !tbaa !795
  %i.oe = fcmp ugt float %i.od, %i.nv
  br i1 %i.oe, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.of = load ptr, ptr %i.ob, align 8, !tbaa !796
  store ptr %i.of, ptr %.07810.i.i.i.i.i, align 8, !tbaa !793
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  store float 0.000000e+00, ptr %i.og, align 4, !tbaa !797
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.ob, align 8, !tbaa !246
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ob, %bb.al ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.oh = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !793 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !767

bb.an:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.oi = phi float [ %i.ny, %.lr.ph15.i.i.i.i.i ], [ %i.px, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.oj = phi ptr [ %i.nx, %.lr.ph15.i.i.i.i.i ], [ %i.pw, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.pv, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !798 ; 3 uses
  %i.om = fcmp une float %i.oi, %i.ol
  br i1 %i.om, label %bb.ao, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.on = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !246
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.oo = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.oo, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aq
  %i.op = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.oq = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) ; 3 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ar
  store ptr %.sroa.0.111.i.i.i.i.i, ptr %i.oq, align 8, !tbaa !801
  %.pre40.pre.i.i.i.i.i = load float, ptr %i.ok, align 4, !tbaa !798
  %.pre41.pre.i.i.i.i.i = load float, ptr %i.oj, align 4, !tbaa !524
  br label %bb.as

bb.as:                                            ; preds = %.thread.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.pre41.i.i.i.i.i = phi float [ %.pre41.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.oi, %._crit_edge.i.i.i.i.i.i.i ]
  %.pre40.i.i.i.i.i = phi float [ %.pre40.pre.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %i.ol, %._crit_edge.i.i.i.i.i.i.i ]
  %.sroa.0.2.i.i.i.i.i = phi ptr [ %i.oq, %.thread.i.i.i.i.i.i.i ], [ %.sroa.0.111.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.os = phi i32 [ 799, %.thread.i.i.i.i.i.i.i ], [ %i.op, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i.i, i64 8
  %i.ou = zext nneg i32 %i.os to i64
  %i.ov = shl nuw nsw i64 %i.ou, 5
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ov
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.ox = phi float [ %.pre41.i.i.i.i.i, %bb.as ], [ %i.oi, %bb.ap ] ; 3 uses
  %i.oy = phi float [ %.pre40.i.i.i.i.i, %bb.as ], [ %i.ol, %bb.ap ] ; 3 uses
  %.sroa.0.3.i.i.i.i.i = phi ptr [ %.sroa.0.2.i.i.i.i.i, %bb.as ], [ %.sroa.0.111.i.i.i.i.i, %bb.ap ]
  %.sroa.7.4.i.i.i.i.i = phi ptr [ null, %bb.as ], [ %i.on, %bb.ap ]
  %.sroa.11.2.i.i.i.i.i = phi i32 [ %i.os, %bb.as ], [ %.sroa.11.113.i.i.i.i.i, %bb.ap ]
  %.1.i.ph.i.i.i.i.i.i = phi ptr [ %i.ow, %bb.as ], [ %.sroa.7.312.i.i.i.i.i, %bb.ap ] ; 9 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 8
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !802
  %i.pb = load float, ptr %.114.i.i.i.i.i, align 4, !tbaa !803 ; 2 uses
  %i.pc = fsub float %i.pa, %i.pb
  %i.pd = fsub float %i.oy, %i.ox
  %i.pe = fdiv float %i.pc, %i.pd                 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 12
  store float %i.pe, ptr %i.pf, align 4, !tbaa !804
  %i.pg = fcmp une float %i.pe, 0.000000e+00
  %i.ph = fdiv float 1.000000e+00, %i.pe
  %i.pi = select i1 %i.pg, float %i.ph, float 0.000000e+00
  %i.pj = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 16
  store float %i.pi, ptr %i.pj, align 8, !tbaa !805
  %i.pk = fsub float %i.nv, %i.ox
  %i.pl = call float @llvm.fmuladd.f32(float %i.pe, float %i.pk, float %i.pb)
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 8
  %i.pn = fsub float %i.pl, %i.nm
  store float %i.pn, ptr %i.pm, align 8, !tbaa !806
  %i.po = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 16
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !807
  %.not28.i.i.i.i.i.i = icmp eq i32 %i.pp, 0
  %i.pq = select i1 %.not28.i.i.i.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.pr = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 20
  store float %i.pq, ptr %i.pr, align 4, !tbaa !797
  %i.ps = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 24
  store float %i.ox, ptr %i.ps, align 8, !tbaa !808
  %i.pt = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i.i.i.i, i64 28 ; 2 uses
  store float %i.oy, ptr %i.pt, align 4, !tbaa !795
  store ptr null, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !796
  %i.pu = fcmp olt float %i.oy, %i.nv
  %or.cond136.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i1 %i.pu, i1 false
  br i1 %or.cond136.i.i.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store float %i.nv, ptr %i.pt, align 4, !tbaa !795
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !793
  store ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, ptr %.1.i.ph.i.i.i.i.i.i, align 8, !tbaa !796
  store ptr %.1.i.ph.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !793
  br label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i: ; preds = %bb.av, %bb.ar, %bb.an
  %.sroa.0.5.i.i.i.i.i = phi ptr [ %.sroa.0.111.i.i.i.i.i, %bb.an ], [ %.sroa.0.3.i.i.i.i.i, %bb.av ], [ %.sroa.0.111.i.i.i.i.i, %bb.ar ] ; 2 uses
  %.sroa.7.6.i.i.i.i.i = phi ptr [ %.sroa.7.312.i.i.i.i.i, %bb.an ], [ %.sroa.7.4.i.i.i.i.i, %bb.av ], [ null, %bb.ar ] ; 2 uses
  %.sroa.11.4.i.i.i.i.i = phi i32 [ %.sroa.11.113.i.i.i.i.i, %bb.an ], [ %.sroa.11.2.i.i.i.i.i, %bb.av ], [ 0, %bb.ar ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 20 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 24 ; 2 uses
  %i.px = load float, ptr %i.pw, align 4, !tbaa !524 ; 2 uses
  %i.py = fcmp ugt float %i.px, %i.nw
  br i1 %i.py, label %._crit_edge.i.i.i.i.i, label %bb.an, !llvm.loop !768

._crit_edge.i.i.i.i.i:                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.preheader7.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.sroa.11.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.preheader7.i.i.i.i.i ], [ %i.pv, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !793 ; 4 uses
  %.not91.i.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, null ; 2 uses
  br i1 %.not91.i.i.i.i.i, label %_ZL28stbtt__fill_active_edges_newPfS_iP18stbtt__active_edgef.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.pz = fcmp oeq float %i.nw, %i.nv             ; 3 uses
  %i.qa = fsub float %i.nw, %i.nv                 ; 4 uses
  %i.qb = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, %bb.aw
  %.0295473.i.i.i.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %bb.aw ], [ %i.aws, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i ] ; 19 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 8
  %7 = load <2 x float>, ptr %i.qd, align 8, !tbaa !29 ; 10 uses
  %8 = extractelement <2 x float> %7, i64 0       ; 40 uses
  %9 = extractelement <2 x float> %7, i64 1       ; 2 uses
  %i.qe = fcmp oeq float %9, 0.000000e+00
  br i1 %i.qe, label %bb.ay, label %bb.cg

bb.ay:                                            ; preds = %bb.ax
  %i.qf = fcmp olt float %8, %i.nt
  br i1 %i.qf, label %bb.az, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.qg = fcmp ult float %8, 0.000000e+00
  br i1 %i.qg, label %bb.bv, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qh = fptosi float %8 to i32                  ; 6 uses
  br i1 %i.pz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qi = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !795 ; 4 uses
  %i.qk = fcmp olt float %i.qj, %i.nv
  br i1 %i.qk, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ql = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.qm = load float, ptr %i.ql, align 8, !tbaa !808 ; 4 uses
  %i.qn = fcmp olt float %i.nw, %i.qm
  br i1 %i.qn, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qo = fcmp ogt float %i.qm, %i.nv
  br i1 %i.qo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %foldExtExtBinop = fsub <2 x float> %7, %7
  %10 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.qp = fsub float %i.qm, %i.nv
  %i.qq = fmul float %10, %i.qp
  %i.qr = fdiv float %i.qq, %i.qa
  %i.qs = fadd float %8, %i.qr
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.057.i.i.i.i.i.i.i = phi float [ %i.qs, %bb.be ], [ %8, %bb.bd ] ; 4 uses
  %.056.i.i.i.i.i.i.i = phi float [ %i.qm, %bb.be ], [ %i.nv, %bb.bd ] ; 3 uses
  %i.qt = fcmp ogt float %i.nw, %i.qj
  br i1 %i.qt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.qu = fsub float %8, %.057.i.i.i.i.i.i.i
  %i.qv = fsub float %i.qj, %i.nw
  %i.qw = fmul float %i.qv, %i.qu
  %i.qx = fsub float %i.nw, %.056.i.i.i.i.i.i.i
  %i.qy = fdiv float %i.qw, %i.qx
  %i.qz = fadd float %8, %i.qy
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.055.i.i.i.i.i.i.i = phi float [ %i.qz, %bb.bg ], [ %8, %bb.bf ] ; 3 uses
  %.0.i.i.i.i.i.i.i = phi float [ %i.qj, %bb.bg ], [ %i.nw, %bb.bf ] ; 2 uses
  %i.ra = sitofp i32 %i.qh to float               ; 4 uses
  %i.rb = fcmp ugt float %.057.i.i.i.i.i.i.i, %i.ra
  %i.rc = fcmp ugt float %.055.i.i.i.i.i.i.i, %i.ra
  %or.cond64.i.i.i.i.i.i.i = select i1 %i.rb, i1 true, i1 %i.rc
  br i1 %or.cond64.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rd = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.re = load float, ptr %i.rd, align 4, !tbaa !797
  %i.rf = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.rg = zext nneg i32 %i.qh to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.rg ; 2 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !29
  %i.rj = call float @llvm.fmuladd.f32(float %i.re, float %i.rf, float %i.ri)
  store float %i.rj, ptr %i.rh, align 4, !tbaa !29
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.rk = add nuw nsw i32 %i.qh, 1
  %i.rl = sitofp i32 %i.rk to float               ; 2 uses
  %i.rm = fcmp ult float %.057.i.i.i.i.i.i.i, %i.rl
  %i.rn = fcmp ult float %.055.i.i.i.i.i.i.i, %i.rl
  %or.cond65.i.i.i.i.i.i.i = select i1 %i.rm, i1 true, i1 %i.rn
  br i1 %or.cond65.i.i.i.i.i.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ro = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !797
  %i.rq = fsub float %.0.i.i.i.i.i.i.i, %.056.i.i.i.i.i.i.i
  %i.rr = fmul float %i.rq, %i.rp
  %i.rs = fsub float %.057.i.i.i.i.i.i.i, %i.ra
  %i.rt = fsub float %.055.i.i.i.i.i.i.i, %i.ra
  %i.ru = fadd float %i.rs, %i.rt
  %i.rv = fmul float %i.ru, 5.000000e-01
  %i.rw = fsub float 1.000000e+00, %i.rv
  %i.rx = zext nneg i32 %i.qh to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.rx ; 2 uses
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !29
  %i.sa = call float @llvm.fmuladd.f32(float %i.rr, float %i.rw, float %i.rz)
  store float %i.sa, ptr %i.ry, align 4, !tbaa !29
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bc, %bb.bb
  %i.sb = add nuw nsw i32 %i.qh, 1                ; 3 uses
  %i.sc = load float, ptr %i.qi, align 4, !tbaa !795 ; 4 uses
  %i.sd = fcmp olt float %i.sc, %i.nv
  br i1 %i.sd, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.se = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.sf = load float, ptr %i.se, align 8, !tbaa !808 ; 4 uses
  %i.sg = fcmp olt float %i.nw, %i.sf
  br i1 %i.sg, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sh = fcmp ogt float %i.sf, %i.nv
  br i1 %i.sh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %foldExtExtBinop337 = fsub <2 x float> %7, %7
  %11 = extractelement <2 x float> %foldExtExtBinop337, i64 0
  %i.si = fsub float %i.sf, %i.nv
  %i.sj = fmul float %11, %i.si
  %i.sk = fdiv float %i.sj, %i.qa
  %i.sl = fadd float %8, %i.sk
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.057.i350.i.i.i.i.i.i = phi float [ %i.sl, %bb.bo ], [ %8, %bb.bn ] ; 4 uses
  %.056.i351.i.i.i.i.i.i = phi float [ %i.sf, %bb.bo ], [ %i.nv, %bb.bn ] ; 3 uses
  %i.sm = fcmp ogt float %i.nw, %i.sc
  br i1 %i.sm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.sn = fsub float %8, %.057.i350.i.i.i.i.i.i
  %i.so = fsub float %i.sc, %i.nw
  %i.sp = fmul float %i.so, %i.sn
  %i.sq = fsub float %i.nw, %.056.i351.i.i.i.i.i.i
  %i.sr = fdiv float %i.sp, %i.sq
  %i.ss = fadd float %8, %i.sr
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.055.i352.i.i.i.i.i.i = phi float [ %i.ss, %bb.bq ], [ %8, %bb.bp ] ; 3 uses
  %.0.i353.i.i.i.i.i.i = phi float [ %i.sc, %bb.bq ], [ %i.nw, %bb.bp ] ; 2 uses
  %i.st = sitofp i32 %i.sb to float               ; 4 uses
  %i.su = fcmp ugt float %.057.i350.i.i.i.i.i.i, %i.st
  %i.sv = fcmp ugt float %.055.i352.i.i.i.i.i.i, %i.st
  %or.cond64.i354.i.i.i.i.i.i = select i1 %i.su, i1 true, i1 %i.sv
  br i1 %or.cond64.i354.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sw = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !797
  %i.sy = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.sz = zext nneg i32 %i.sb to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.sz ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !29
  %i.tc = call float @llvm.fmuladd.f32(float %i.sx, float %i.sy, float %i.tb)
  store float %i.tc, ptr %i.ta, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.td = add nuw nsw i32 %i.qh, 2
  %i.te = sitofp i32 %i.td to float               ; 2 uses
  %i.tf = fcmp ult float %.057.i350.i.i.i.i.i.i, %i.te
  %i.tg = fcmp ult float %.055.i352.i.i.i.i.i.i, %i.te
  %or.cond65.i355.i.i.i.i.i.i = select i1 %i.tf, i1 true, i1 %i.tg
  br i1 %or.cond65.i355.i.i.i.i.i.i, label %bb.bu, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.th = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.ti = load float, ptr %i.th, align 4, !tbaa !797
  %i.tj = fsub float %.0.i353.i.i.i.i.i.i, %.056.i351.i.i.i.i.i.i
  %i.tk = fmul float %i.tj, %i.ti
  %i.tl = fsub float %.057.i350.i.i.i.i.i.i, %i.st
  %i.tm = fsub float %.055.i352.i.i.i.i.i.i, %i.st
  %i.tn = fadd float %i.tl, %i.tm
  %i.to = fmul float %i.tn, 5.000000e-01
  %i.tp = fsub float 1.000000e+00, %i.to
  %i.tq = zext nneg i32 %i.sb to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.tq ; 2 uses
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !29
  %i.tt = call float @llvm.fmuladd.f32(float %i.tk, float %i.tp, float %i.ts)
  store float %i.tt, ptr %i.tr, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.az
  br i1 %i.pz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tu = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !795 ; 4 uses
  %i.tw = fcmp olt float %i.tv, %i.nv
  br i1 %i.tw, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.tx = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24
  %i.ty = load float, ptr %i.tx, align 8, !tbaa !808 ; 4 uses
  %i.tz = fcmp olt float %i.nw, %i.ty
  br i1 %i.tz, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ua = fcmp ogt float %i.ty, %i.nv
  br i1 %i.ua, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %foldExtExtBinop339 = fsub <2 x float> %7, %7
  %12 = extractelement <2 x float> %foldExtExtBinop339, i64 0
  %i.ub = fsub float %i.ty, %i.nv
  %i.uc = fmul float %12, %i.ub
  %i.ud = fdiv float %i.uc, %i.qa
  %i.ue = fadd float %8, %i.ud
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.057.i357.i.i.i.i.i.i = phi float [ %i.ue, %bb.bz ], [ %8, %bb.by ] ; 4 uses
  %.056.i358.i.i.i.i.i.i = phi float [ %i.ty, %bb.bz ], [ %i.nv, %bb.by ] ; 3 uses
  %i.uf = fcmp ogt float %i.nw, %i.tv
  br i1 %i.uf, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ug = fsub float %8, %.057.i357.i.i.i.i.i.i
  %i.uh = fsub float %i.tv, %i.nw
  %i.ui = fmul float %i.uh, %i.ug
  %i.uj = fsub float %i.nw, %.056.i358.i.i.i.i.i.i
  %i.uk = fdiv float %i.ui, %i.uj
  %i.ul = fadd float %8, %i.uk
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.055.i359.i.i.i.i.i.i = phi float [ %i.ul, %bb.cb ], [ %8, %bb.ca ] ; 3 uses
  %.0.i360.i.i.i.i.i.i = phi float [ %i.tv, %bb.cb ], [ %i.nw, %bb.ca ] ; 2 uses
  %i.um = fcmp ugt float %.057.i357.i.i.i.i.i.i, 0.000000e+00
  %i.un = fcmp ugt float %.055.i359.i.i.i.i.i.i, 0.000000e+00
  %or.cond64.i361.i.i.i.i.i.i = select i1 %i.um, i1 true, i1 %i.un
  br i1 %or.cond64.i361.i.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uo = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.up = load float, ptr %i.uo, align 4, !tbaa !797
  %i.uq = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.ur = load float, ptr %i.ne, align 4, !tbaa !29
  %i.us = call float @llvm.fmuladd.f32(float %i.up, float %i.uq, float %i.ur)
  store float %i.us, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.ut = fcmp ult float %.057.i357.i.i.i.i.i.i, 1.000000e+00
  %i.uu = fcmp ult float %.055.i359.i.i.i.i.i.i, 1.000000e+00
  %or.cond65.i362.i.i.i.i.i.i = select i1 %i.ut, i1 true, i1 %i.uu
  br i1 %or.cond65.i362.i.i.i.i.i.i, label %bb.cf, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.uv = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !797
  %i.ux = fsub float %.0.i360.i.i.i.i.i.i, %.056.i358.i.i.i.i.i.i
  %i.uy = fmul float %i.ux, %i.uw
  %i.uz = fadd float %.057.i357.i.i.i.i.i.i, %.055.i359.i.i.i.i.i.i
  %i.va = fmul float %i.uz, 5.000000e-01
  %i.vb = fsub float 1.000000e+00, %i.va
  %i.vc = load float, ptr %i.ne, align 4, !tbaa !29
  %i.vd = call float @llvm.fmuladd.f32(float %i.uy, float %i.vb, float %i.vc)
  store float %i.vd, ptr %i.ne, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.ax
  %i.ve = fadd float %9, %8                       ; 34 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 16
  %i.vg = load float, ptr %i.vf, align 8, !tbaa !805 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 24 ; 16 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 28 ; 15 uses
  %i.vj = load <2 x float>, ptr %i.vh, align 8, !tbaa !29 ; 3 uses
  %i.vk = extractelement <2 x float> %i.vj, i64 0 ; 2 uses
  %i.vl = fcmp ogt float %i.vk, %i.nv             ; 2 uses
  %i.vm = fsub <2 x float> %i.vj, %i.qc
  %13 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vn = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.vm, <2 x float> %i.vn) ; 2 uses
  %i.vp = extractelement <2 x float> %i.vo, i64 0
  %.0307.i.i.i.i.i.i = select i1 %i.vl, float %i.vp, float %8 ; 7 uses
  %.0303.i.i.i.i.i.i = select i1 %i.vl, float %i.vk, float %i.nv ; 3 uses
  %i.vq = extractelement <2 x float> %i.vj, i64 1 ; 2 uses
  %i.vr = fcmp olt float %i.vq, %i.nw             ; 2 uses
  %i.vs = extractelement <2 x float> %i.vo, i64 1
  %.0305.i.i.i.i.i.i = select i1 %i.vr, float %i.vs, float %i.ve ; 7 uses
  %.0301.i.i.i.i.i.i = select i1 %i.vr, float %i.vq, float %i.nw ; 3 uses
  %i.vt = fcmp oge float %.0307.i.i.i.i.i.i, 0.000000e+00
  %i.vu = fcmp oge float %.0305.i.i.i.i.i.i, 0.000000e+00
  %or.cond.i.i.i.i.i.i = select i1 %i.vt, i1 %i.vu, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ch, label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  %i.vv = fcmp olt float %.0307.i.i.i.i.i.i, %i.nt
  %i.vw = fcmp olt float %.0305.i.i.i.i.i.i, %i.nt
  %or.cond343.i.i.i.i.i.i = select i1 %i.vv, i1 %i.vw, i1 false
  br i1 %or.cond343.i.i.i.i.i.i, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %bb.ch
  %i.vx = fptosi float %.0307.i.i.i.i.i.i to i32  ; 5 uses
  %i.vy = fptosi float %.0305.i.i.i.i.i.i to i32  ; 3 uses
  %i.vz = icmp eq i32 %i.vx, %i.vy
  br i1 %i.vz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.wa = fsub float %.0301.i.i.i.i.i.i, %.0303.i.i.i.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !797
  %i.wd = fmul float %i.wa, %i.wc                 ; 2 uses
  %i.we = sitofp i32 %i.vx to float
  %i.wf = fadd float %i.we, 1.000000e+00          ; 2 uses
  %i.wg = fsub float %i.wf, %.0307.i.i.i.i.i.i
  %i.wh = fsub float %i.wf, %.0305.i.i.i.i.i.i
  %i.wi = fadd float %i.wg, %i.wh
  %i.wj = fmul float %i.wi, 5.000000e-01
  %i.wk = fmul float %i.wj, %i.wd
  %i.wl = zext nneg i32 %i.vx to i64              ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.wl ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !29
  %i.wo = fadd float %i.wn, %i.wk
  store float %i.wo, ptr %i.wm, align 4, !tbaa !29
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.wl ; 2 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !29
  %i.wr = fadd float %i.wd, %i.wq
  store float %i.wr, ptr %i.wp, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.ws = fcmp ogt float %.0307.i.i.i.i.i.i, %.0305.i.i.i.i.i.i
  br i1 %i.ws, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.wt = fsub float %i.nv, %.0303.i.i.i.i.i.i
  %i.wu = fadd float %i.nw, %i.wt
  %i.wv = fsub float %i.nv, %.0301.i.i.i.i.i.i
  %i.ww = fadd float %i.nw, %i.wv
  %i.wx = fneg float %i.vg
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi479.i.i.i.i.i.i = phi i32 [ %i.vx, %bb.cl ], [ %i.vy, %bb.ck ] ; 8 uses
  %.pre-phi.i.i.i.i.i.i = phi i32 [ %i.vy, %bb.cl ], [ %i.vx, %bb.ck ] ; 4 uses
  %.0309.i.i.i.i.i.i = phi float [ %i.ve, %bb.cl ], [ %8, %bb.ck ] ; 2 uses
  %.1308.i.i.i.i.i.i = phi float [ %.0305.i.i.i.i.i.i, %bb.cl ], [ %.0307.i.i.i.i.i.i, %bb.ck ]
  %.1306.i.i.i.i.i.i = phi float [ %.0307.i.i.i.i.i.i, %bb.cl ], [ %.0305.i.i.i.i.i.i, %bb.ck ]
  %.1304.i.i.i.i.i.i = phi float [ %i.ww, %bb.cl ], [ %.0303.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.1302.i.i.i.i.i.i = phi float [ %i.wu, %bb.cl ], [ %.0301.i.i.i.i.i.i, %bb.ck ] ; 2 uses
  %.0300.i.i.i.i.i.i = phi float [ %i.wx, %bb.cl ], [ %i.vg, %bb.ck ] ; 4 uses
  %i.wy = add nuw i32 %.pre-phi.i.i.i.i.i.i, 1    ; 5 uses
  %i.wz = uitofp nneg i32 %i.wy to float          ; 2 uses
  %i.xa = fsub float %i.wz, %.0309.i.i.i.i.i.i
  %i.xb = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i.i, float %i.xa, float %i.nv) ; 2 uses
  %i.xc = uitofp nneg i32 %.pre-phi479.i.i.i.i.i.i to float ; 3 uses
  %i.xd = fsub float %i.xc, %.0309.i.i.i.i.i.i
  %i.xe = call float @llvm.fmuladd.f32(float %.0300.i.i.i.i.i.i, float %i.xd, float %i.nv) ; 2 uses
  %i.xf = fcmp ogt float %i.xb, %i.nw
  %.0298.i.i.i.i.i.i = select i1 %i.xf, float %i.nw, float %i.xb ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !797 ; 4 uses
  %i.xi = fsub float %.0298.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.xj = fmul float %i.xh, %i.xi                 ; 5 uses
  %i.xk = fsub nnan float %i.wz, %.1308.i.i.i.i.i.i
  %i.xl = fmul float %i.xk, %i.xj
  %i.xm = fmul float %i.xl, 5.000000e-01
  %i.xn = zext nneg i32 %.pre-phi.i.i.i.i.i.i to i64
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xn ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !29
  %i.xq = fadd float %i.xp, %i.xm
  store float %i.xq, ptr %i.xo, align 4, !tbaa !29
  %i.xr = fcmp ogt float %i.xe, %i.nw
  br i1 %i.xr, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.not342.i.i.i.i.i.i = icmp eq i32 %i.wy, %.pre-phi479.i.i.i.i.i.i
  %i.xs = sub nsw i32 %.pre-phi479.i.i.i.i.i.i, %i.wy
  %i.xt = fsub float %i.nw, %.0298.i.i.i.i.i.i
  %i.xu = sitofp i32 %i.xs to float
  %i.xv = fdiv float %i.xt, %i.xu
  %.1.i.i.i.i.i.i = select i1 %.not342.i.i.i.i.i.i, float %.0300.i.i.i.i.i.i, float %i.xv
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.2.i.i.i.i.i.i = phi float [ %.1.i.i.i.i.i.i, %bb.cn ], [ %.0300.i.i.i.i.i.i, %bb.cm ]
  %.0297.i.i.i.i.i.i = phi float [ %i.nw, %bb.cn ], [ %i.xe, %bb.cm ]
  %i.xw = fmul float %i.xh, %.2.i.i.i.i.i.i       ; 4 uses
  %i.xx = icmp slt i32 %i.wy, %.pre-phi479.i.i.i.i.i.i
  br i1 %i.xx, label %.lr.ph472.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph472.i.i.i.i.i.i:                            ; preds = %bb.co
  %i.xy = fmul float %i.xw, 5.000000e-01          ; 3 uses
  %i.xz = zext i32 %i.wy to i64                   ; 3 uses
  %i.ya = add nsw i32 %.pre-phi479.i.i.i.i.i.i, -2
  %i.yb = sub nsw i32 %.pre-phi.i.i.i.i.i.i, %.pre-phi479.i.i.i.i.i.i
  %i.yc = and i32 %i.yb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yc, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph472.i.i.i.i.i.i
  %i.yd = fadd float %i.xy, %i.xj
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.xz ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !29
  %i.yg = fadd float %i.yd, %i.yf
  store float %i.yg, ptr %i.ye, align 4, !tbaa !29
  %i.yh = fadd float %i.xw, %i.xj                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.prol = add nuw nsw i64 %i.xz, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph472.i.i.i.i.i.i
  %indvars.iv476.i.i.i.i.i.i.unr = phi i64 [ %i.xz, %.lr.ph472.i.i.i.i.i.i ], [ %indvars.iv.next477.i.i.i.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0296471.i.i.i.i.i.i.unr = phi float [ %i.xj, %.lr.ph472.i.i.i.i.i.i ], [ %i.yh, %.prol.loopexit.unr-lcssa ]
  %.lcssa359.unr = phi float [ poison, %.lr.ph472.i.i.i.i.i.i ], [ %i.yh, %.prol.loopexit.unr-lcssa ]
  %i.yi = icmp eq i32 %i.ya, %.pre-phi.i.i.i.i.i.i
  br i1 %i.yi, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph472.i.i.i.i.i.i.new

.lr.ph472.i.i.i.i.i.i.new:                        ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new
  %indvars.iv476.i.i.i.i.i.i = phi i64 [ %indvars.iv.next477.i.i.i.i.i.i.1, %.lr.ph472.i.i.i.i.i.i.new ], [ %indvars.iv476.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0296471.i.i.i.i.i.i = phi float [ %i.yt, %.lr.ph472.i.i.i.i.i.i.new ], [ %.0296471.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.yj = fadd float %i.xy, %.0296471.i.i.i.i.i.i
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !29
  %i.ym = fadd float %i.yj, %i.yl
  store float %i.ym, ptr %i.yk, align 4, !tbaa !29
  %i.yn = fadd float %i.xw, %.0296471.i.i.i.i.i.i ; 2 uses
  %i.yo = fadd float %i.xy, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv476.i.i.i.i.i.i
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !29
  %i.ys = fadd float %i.yo, %i.yr
  store float %i.ys, ptr %i.yq, align 4, !tbaa !29
  %i.yt = fadd float %i.xw, %i.yn                 ; 2 uses
  %indvars.iv.next477.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv476.i.i.i.i.i.i, 2 ; 2 uses
  %i.yu = trunc nuw i64 %indvars.iv.next477.i.i.i.i.i.i.1 to i32
  %i.yv = icmp sgt i32 %.pre-phi479.i.i.i.i.i.i, %i.yu
  br i1 %i.yv, label %.lr.ph472.i.i.i.i.i.i.new, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !769

._crit_edge.i.i.i.i.i.i:                          ; preds = %.prol.loopexit, %.lr.ph472.i.i.i.i.i.i.new, %bb.co
  %.0296.lcssa.i.i.i.i.i.i = phi float [ %i.xj, %bb.co ], [ %.lcssa359.unr, %.prol.loopexit ], [ %i.yt, %.lr.ph472.i.i.i.i.i.i.new ]
  %i.yw = fsub float %.1302.i.i.i.i.i.i, %.0297.i.i.i.i.i.i
  %i.yx = fadd float %i.xc, 1.000000e+00          ; 2 uses
  %i.yy = fsub nnan float %i.yx, %i.xc
  %i.yz = fsub float %i.yx, %.1306.i.i.i.i.i.i
  %i.za = fadd float %i.yy, %i.yz
  %i.zb = fmul float %i.za, 5.000000e-01
  %i.zc = fmul float %i.zb, %i.yw
  %i.zd = call float @llvm.fmuladd.f32(float %i.xh, float %i.zc, float %.0296.lcssa.i.i.i.i.i.i)
  %i.ze = zext nneg i32 %.pre-phi479.i.i.i.i.i.i to i64 ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.ze ; 2 uses
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !29
  %i.zh = fadd float %i.zd, %i.zg
  store float %i.zh, ptr %i.zf, align 4, !tbaa !29
  %i.zi = fsub float %.1302.i.i.i.i.i.i, %.1304.i.i.i.i.i.i
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.ze ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !29
  %i.zl = call float @llvm.fmuladd.f32(float %i.xh, float %i.zi, float %i.zk)
  store float %i.zl, ptr %i.zj, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.nu, label %.lr.ph.i.i94.i.i.i.i, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit356.i.i.i.i.i.i

.lr.ph.i.i94.i.i.i.i:                             ; preds = %bb.cp
  %i.zm = fsub float %i.ve, %8
  %i.zn = getelementptr inbounds nuw i8, ptr %.0295473.i.i.i.i.i.i, i64 20 ; 30 uses
  br label %bb.cq

bb.cq:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, %.lr.ph.i.i94.i.i.i.i
  %indvars.iv.i.i95.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i94.i.i.i.i ], [ %indvars.iv.next.i.i96.i.i.i.i, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i95.i.i.i.i, 1 ; 3 uses
  %i.zo = trunc nuw nsw i64 %indvars.iv.next.i.i96.i.i.i.i to i32
  %i.zp = trunc nuw nsw i64 %indvars.iv.i.i95.i.i.i.i to i32
  %i.zq = uitofp nneg i32 %i.zo to float          ; 60 uses
  %i.zr = uitofp nneg i32 %i.zp to float          ; 90 uses
  %i.zs = insertelement <2 x float> poison, float %i.zr, i64 0
  %i.zt = insertelement <2 x float> %i.zs, float %i.zq, i64 1
  %i.zu = fsub <2 x float> %i.zt, %i.vn           ; 7 uses
  %i.zv = fdiv <2 x float> %i.zu, %13             ; 2 uses
  %i.zw = extractelement <2 x float> %i.zv, i64 0
  %i.zx = fadd float %i.zw, %i.nv                 ; 52 uses
  %i.zy = extractelement <2 x float> %i.zv, i64 1
  %i.zz = fadd float %i.zy, %i.nv                 ; 52 uses
  %i.aaa = fcmp olt float %8, %i.zr               ; 2 uses
  %i.aab = fcmp ogt float %i.ve, %i.zq            ; 2 uses
  %or.cond344.i.i.i.i.i.i = select i1 %i.aaa, i1 %i.aab, i1 false
  br i1 %or.cond344.i.i.i.i.i.i, label %bb.cr, label %bb.dw

bb.cr:                                            ; preds = %bb.cq
  %i.aac = fcmp oeq float %i.zx, %i.nv
  br i1 %i.aac, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aad = load float, ptr %i.vi, align 4, !tbaa !795 ; 4 uses
  %i.aae = fcmp olt float %i.aad, %i.nv
  br i1 %i.aae, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aaf = load float, ptr %i.vh, align 8, !tbaa !808 ; 4 uses
  %i.aag = fcmp olt float %i.zx, %i.aaf
  br i1 %i.aag, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aah = fcmp ogt float %i.aaf, %i.nv
  br i1 %i.aah, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aai = fsub float %i.aaf, %i.nv
  %i.aaj = extractelement <2 x float> %i.zu, i64 0
  %i.aak = fmul float %i.aaj, %i.aai
  %i.aal = fsub float %i.zx, %i.nv
  %i.aam = fdiv float %i.aak, %i.aal
  %i.aan = fadd float %8, %i.aam
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.057.i364.i.i.i.i.i.i = phi float [ %i.aan, %bb.cv ], [ %8, %bb.cu ] ; 4 uses
  %.056.i365.i.i.i.i.i.i = phi float [ %i.aaf, %bb.cv ], [ %i.nv, %bb.cu ] ; 3 uses
  %i.aao = fcmp ogt float %i.zx, %i.aad
  br i1 %i.aao, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aap = fsub float %i.zr, %.057.i364.i.i.i.i.i.i
  %i.aaq = fsub float %i.aad, %i.zx
  %i.aar = fmul float %i.aaq, %i.aap
  %i.aas = fsub float %i.zx, %.056.i365.i.i.i.i.i.i
  %i.aat = fdiv float %i.aar, %i.aas
  %i.aau = fadd float %i.aat, %i.zr
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i366.i.i.i.i.i.i = phi float [ %i.aau, %bb.cx ], [ %i.zr, %bb.cw ] ; 3 uses
  %.0.i367.i.i.i.i.i.i = phi float [ %i.aad, %bb.cx ], [ %i.zx, %bb.cw ] ; 2 uses
  %i.aav = fcmp ugt float %.057.i364.i.i.i.i.i.i, %i.zr
  %i.aaw = fcmp ugt float %.055.i366.i.i.i.i.i.i, %i.zr
  %or.cond64.i368.i.i.i.i.i.i = select i1 %i.aav, i1 true, i1 %i.aaw
  br i1 %or.cond64.i368.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aax = load float, ptr %i.zn, align 4, !tbaa !797
  %i.aay = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !29
  %i.abb = call float @llvm.fmuladd.f32(float %i.aax, float %i.aay, float %i.aba)
  store float %i.abb, ptr %i.aaz, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.abc = fcmp ult float %.057.i364.i.i.i.i.i.i, %i.zq
  %i.abd = fcmp ult float %.055.i366.i.i.i.i.i.i, %i.zq
  %or.cond65.i369.i.i.i.i.i.i = select i1 %i.abc, i1 true, i1 %i.abd
  br i1 %or.cond65.i369.i.i.i.i.i.i, label %bb.db, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.abe = load float, ptr %i.zn, align 4, !tbaa !797
  %i.abf = fsub float %.0.i367.i.i.i.i.i.i, %.056.i365.i.i.i.i.i.i
  %i.abg = fmul float %i.abf, %i.abe
  %i.abh = fsub float %.057.i364.i.i.i.i.i.i, %i.zr
  %i.abi = fsub float %.055.i366.i.i.i.i.i.i, %i.zr
  %i.abj = fadd float %i.abh, %i.abi
  %i.abk = fmul float %i.abj, 5.000000e-01
  %i.abl = fsub float 1.000000e+00, %i.abk
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !29
  %i.abo = call float @llvm.fmuladd.f32(float %i.abg, float %i.abl, float %i.abn)
  store float %i.abo, ptr %i.abm, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i: ; preds = %bb.db, %bb.da, %bb.cz, %bb.ct, %bb.cs, %bb.cr
  %i.abp = fcmp oeq float %i.zx, %i.zz
  br i1 %i.abp, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.abq = load float, ptr %i.vi, align 4, !tbaa !795 ; 4 uses
  %i.abr = fcmp ogt float %i.zx, %i.abq
  br i1 %i.abr, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abs = load float, ptr %i.vh, align 8, !tbaa !808 ; 4 uses
  %i.abt = fcmp olt float %i.zz, %i.abs
  br i1 %i.abt, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.abu = fcmp olt float %i.zx, %i.abs
  br i1 %i.abu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abv = fsub nnan float %i.zq, %i.zr
  %i.abw = fsub float %i.abs, %i.zx
  %i.abx = fmul float %i.abv, %i.abw
  %i.aby = fsub float %i.zz, %i.zx
  %i.abz = fdiv float %i.abx, %i.aby
  %i.aca = fadd float %i.abz, %i.zr
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.057.i371.i.i.i.i.i.i = phi float [ %i.aca, %bb.df ], [ %i.zr, %bb.de ] ; 4 uses
  %.056.i372.i.i.i.i.i.i = phi float [ %i.abs, %bb.df ], [ %i.zx, %bb.de ] ; 3 uses
  %i.acb = fcmp ogt float %i.zz, %i.abq
  br i1 %i.acb, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.acc = fsub float %i.zq, %.057.i371.i.i.i.i.i.i
  %i.acd = fsub float %i.abq, %i.zz
  %i.ace = fmul float %i.acd, %i.acc
  %i.acf = fsub float %i.zz, %.056.i372.i.i.i.i.i.i
  %i.acg = fdiv float %i.ace, %i.acf
  %i.ach = fadd float %i.acg, %i.zq
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.055.i373.i.i.i.i.i.i = phi float [ %i.ach, %bb.dh ], [ %i.zq, %bb.dg ] ; 3 uses
  %.0.i374.i.i.i.i.i.i = phi float [ %i.abq, %bb.dh ], [ %i.zz, %bb.dg ] ; 2 uses
  %i.aci = fcmp ugt float %.057.i371.i.i.i.i.i.i, %i.zr
  %i.acj = fcmp ugt float %.055.i373.i.i.i.i.i.i, %i.zr
  %or.cond64.i375.i.i.i.i.i.i = select i1 %i.aci, i1 true, i1 %i.acj
  br i1 %or.cond64.i375.i.i.i.i.i.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ack = load float, ptr %i.zn, align 4, !tbaa !797
  %i.acl = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !29
  %i.aco = call float @llvm.fmuladd.f32(float %i.ack, float %i.acl, float %i.acn)
  store float %i.aco, ptr %i.acm, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.di
  %i.acp = fcmp ult float %.057.i371.i.i.i.i.i.i, %i.zq
  %i.acq = fcmp ult float %.055.i373.i.i.i.i.i.i, %i.zq
  %or.cond65.i376.i.i.i.i.i.i = select i1 %i.acp, i1 true, i1 %i.acq
  br i1 %or.cond65.i376.i.i.i.i.i.i, label %bb.dl, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.acr = load float, ptr %i.zn, align 4, !tbaa !797
  %i.acs = fsub float %.0.i374.i.i.i.i.i.i, %.056.i372.i.i.i.i.i.i
  %i.act = fmul float %i.acs, %i.acr
  %i.acu = fsub float %.057.i371.i.i.i.i.i.i, %i.zr
  %i.acv = fsub float %.055.i373.i.i.i.i.i.i, %i.zr
  %i.acw = fadd float %i.acu, %i.acv
  %i.acx = fmul float %i.acw, 5.000000e-01
  %i.acy = fsub float 1.000000e+00, %i.acx
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i, i64 %indvars.iv.i.i95.i.i.i.i ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !29
  %i.adb = call float @llvm.fmuladd.f32(float %i.act, float %i.acy, float %i.ada)
  store float %i.adb, ptr %i.acz, align 4, !tbaa !29
  br label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i

_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dd, %bb.dc, %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit370.i.i.i.i.i.i
  %i.adc = fcmp oeq float %i.zz, %i.nw
  br i1 %i.adc, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit377.i.i.i.i.i.i
  %i.add = load float, ptr %i.vi, align 4, !tbaa !795 ; 4 uses
  %i.ade = fcmp ogt float %i.zz, %i.add
  br i1 %i.ade, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.adf = load float, ptr %i.vh, align 8, !tbaa !808 ; 4 uses
  %i.adg = fcmp olt float %i.nw, %i.adf
  br i1 %i.adg, label %_ZL26stbtt__handle_clipped_edgePfiP18stbtt__active_edgeffff.exit384.i.i.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.adh = fcmp olt float %i.zz, %i.adf
  br i1 %i.adh, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.adi = fsub float %i.ve, %i.zq
  %i.adj = fsub float %i.adf, %i.zz
  %i.adk = fmul float %i.adi, %i.adj
  %i.adl = fsub float %i.nw, %i.zz
  %i.adm = fdiv float %i.adk, %i.adl
  %i.adn = fadd float %i.adm, %i.zq
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.057.i378.i.i.i.i.i.i = phi float [ %i.adn, %bb.dp ], [ %i.zq, %bb.do ] ; 4 uses
  %.056.i379.i.i.i.i.i.i = phi float [ %i.adf, %bb.dp ], [ %i.zz, %bb.do ] ; 3 uses
  %i.ado = fcmp ogt float %i.nw, %i.add
end_hunk_1
