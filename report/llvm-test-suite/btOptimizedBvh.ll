inline.NumInlined: 198
inline.NumDeleted: 78
begin_hunk_0_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
begin_hunk_1_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ap = load i32, ptr %i.d, align 4             ; 6 uses
  %i.aq = load float, ptr %i.i, align 4, !tbaa !42 ; 3 uses
  br i1 %i.an, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.ar = load <2 x float>, ptr %i.k, align 4, !tbaa !42 ; 2 uses
  %6 = load float, ptr %5, align 4, !tbaa !42
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split.us
end_hunk_1
begin_hunk_2_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.ax = phi i32 [ %i.aw, %bb.i ], [ %i.at, %bb.h ]
  %i.ay = mul nsw i32 %i.ap, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ao, i64 %i.az ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %8 = load float, ptr %i.ba, align 4, !tbaa !42
  %9 = fmul float %8, %i.aq
  %10 = load <2 x float>, ptr %7, align 4, !tbaa !42
  %11 = insertelement <2 x float> %i.ar, float %6, i64 1
  %12 = fmul <2 x float> %10, %11
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.bg = phi i32 [ %i.bf, %bb.l ], [ %i.bc, %bb.k ]
  %i.bh = mul nsw i32 %i.ap, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %13 = getelementptr inbounds i8, ptr %i.ao, i64 %i.bi ; 2 uses
  %14 = load <2 x float>, ptr %13, align 4, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load float, ptr %i.bj, align 4, !tbaa !42
  %16 = insertelement <4 x float> poison, float %15, i64 2
  %17 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %18 = shufflevector <4 x float> %16, <4 x float> %17, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %19 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %21 = insertelement <4 x float> poison, float %i.aq, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %23 = shufflevector <4 x float> %22, <4 x float> %20, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.bk = fmul <4 x float> %19, %23
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.bo = phi i32 [ %i.bn, %bb.o ], [ %i.bl, %bb.n ]
  %i.bp = mul nsw i32 %i.ap, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %24 = getelementptr inbounds i8, ptr %i.ao, i64 %i.bq ; 2 uses
  %25 = load <2 x float>, ptr %24, align 4, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load float, ptr %i.br, align 4, !tbaa !42
  %27 = insertelement <4 x float> poison, float %26, i64 2
  %28 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %29 = shufflevector <4 x float> %27, <4 x float> %28, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bs = fmul <4 x float> %30, %23
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %31 = fpext float %i.aq to double               ; 2 uses
  %32 = load <2 x float>, ptr %i.k, align 4, !tbaa !42
  %33 = fpext <2 x float> %32 to <2 x double>     ; 2 uses
  br i1 %i.al, label %bb.p, label %bb.q

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %.sroa.24.0 = phi float [ %9, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %45, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 2 uses
  %i.bt = phi <4 x float> [ %i.bk, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ek, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.bu = phi <4 x float> [ %i.bs, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.et, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %34 = phi <2 x float> [ %12, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %46, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 3 uses
  %i.bv = fcmp olt <4 x float> %i.bu, <float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0xC3ABC16D60000000>
  %i.bw = fcmp ogt <4 x float> %i.bu, <float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0xC3ABC16D60000000>
  %i.bx = shufflevector <4 x i1> %i.bv, <4 x i1> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.by = select <4 x i1> %i.bx, <4 x float> %i.bu, <4 x float> <float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0xC3ABC16D60000000> ; 3 uses
  %i.bz = shufflevector <4 x float> %i.bt, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cb = fcmp olt <4 x float> %i.bz, %i.ca
  %i.cc = select <4 x i1> %i.cb, <4 x float> %i.bt, <4 x float> %i.by ; 3 uses
  %35 = insertelement <4 x float> %i.cc, float %.sroa.24.0, i64 0
  %36 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %37 = shufflevector <4 x float> %35, <4 x float> %36, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 2 uses
  %38 = insertelement <4 x float> %i.cc, float %.sroa.24.0, i64 3
  %i.cd = fcmp olt <4 x float> %37, %38
  %39 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ce = select <4 x i1> %i.cd, <4 x float> %39, <4 x float> %i.cc
  %i.cf = load <2 x float>, ptr %i.l, align 8, !tbaa !42 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.n, align 8, !tbaa !42 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
end_hunk_4
begin_hunk_5_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.cl = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 1.000000e+00, i64 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.co = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cp = fcmp ogt <2 x float> %i.co, splat (float 0xC3ABC16D60000000)
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.co, <2 x float> splat (float 0xC3ABC16D60000000) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cs = fcmp olt <2 x float> %i.cq, %i.cr
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.cr, <2 x float> %i.cq ; 2 uses
  %i.cu = fcmp olt <2 x float> %i.ct, %34
  %i.cv = select <2 x i1> %i.cu, <2 x float> %34, <2 x float> %i.ct
  %i.cw = load <2 x float>, ptr %i.m, align 4, !tbaa !42 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.cy = fsub <2 x float> %i.cv, %i.cw
end_hunk_5
begin_hunk_6_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.dw = phi i32 [ %i.dt, %bb.p ], [ %i.dv, %bb.q ]
  %i.dx = mul nsw i32 %i.ap, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %40 = getelementptr inbounds i8, ptr %i.ao, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %40, i64 8
  %41 = load double, ptr %40, align 8, !tbaa !69
  %42 = load <2 x double>, ptr %i.dz, align 8, !tbaa !69
  %43 = fmul <2 x double> %42, %33
  %44 = fmul double %41, %31
  %45 = fptrunc double %44 to float
  %46 = fptrunc <2 x double> %43 to <2 x float>
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_6
begin_hunk_7_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.ef = phi i32 [ %i.ee, %bb.t ], [ %i.eb, %bb.s ]
  %i.eg = mul nsw i32 %i.ap, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %47 = getelementptr inbounds i8, ptr %i.ao, i64 %i.eh ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %47, i64 16
  %48 = load double, ptr %i.ei, align 8, !tbaa !69
  %49 = load <2 x double>, ptr %47, align 8, !tbaa !69
  %50 = shufflevector <2 x double> %49, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %51 = insertelement <4 x double> %50, double %48, i64 2
  %52 = shufflevector <4 x double> %50, <4 x double> %51, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %53 = insertelement <4 x double> poison, double %31, i64 0
  %54 = shufflevector <2 x double> %33, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %55 = shufflevector <4 x double> %53, <4 x double> %54, <4 x i32> <i32 0, i32 4, i32 5, i32 0> ; 2 uses
  %i.ej = fmul <4 x double> %52, %55
  %i.ek = fptrunc <4 x double> %i.ej to <4 x float>
  br i1 %i.al, label %bb.w, label %bb.v

end_hunk_7
begin_hunk_8_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.eo = phi i32 [ %i.en, %bb.w ], [ %i.el, %bb.v ]
  %i.ep = mul nsw i32 %i.ap, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %56 = getelementptr inbounds i8, ptr %i.ao, i64 %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %56, i64 16
  %57 = load double, ptr %i.er, align 8, !tbaa !69
  %58 = load <2 x double>, ptr %56, align 8, !tbaa !69
  %59 = shufflevector <2 x double> %58, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %60 = insertelement <4 x double> %59, double %57, i64 2
  %61 = shufflevector <4 x double> %59, <4 x double> %60, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.es = fmul <4 x double> %61, %55
  %i.et = fptrunc <4 x double> %i.es to <4 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

end_hunk_8
begin_hunk_9_@_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %2, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = load <2 x float>, ptr %i.a, align 8, !tbaa !42
  %8 = load <2 x float>, ptr %i.e, align 8, !tbaa !42
  %i.f = load <4 x float>, ptr %3, align 4
  %i.g = insertelement <4 x float> poison, float %6, i64 2
  %i.h = insertelement <4 x float> %i.g, float %i.b, i64 3
  %i.i = shufflevector <4 x float> %i.f, <4 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %9 = load <2 x float>, ptr %i.c, align 4, !tbaa !42
  %10 = load <2 x float>, ptr %i.d, align 4, !tbaa !42 ; 2 uses
  %11 = fsub <2 x float> %9, %10
  %12 = load <2 x float>, ptr %4, align 4, !tbaa !42 ; 2 uses
  %13 = fmul <2 x float> %11, %12
  %14 = fptoui <2 x float> %13 to <2 x i16>
  %15 = shufflevector <2 x float> %7, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %16 = fsub <4 x float> %i.i, %15
  %17 = shufflevector <2 x float> %8, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %18 = fmul <4 x float> %16, %17
  %19 = fadd <4 x float> %18, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %20 = fptoui <4 x float> %19 to <4 x i16>       ; 2 uses
  %i.j = and <2 x i16> %14, splat (i16 -2)
  %i.k = or <4 x i16> %20, <i16 1, i16 1, i16 1, i16 poison>
  %i.l = and <4 x i16> %20, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.m = shufflevector <4 x i16> %i.k, <4 x i16> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
end_hunk_9
begin_hunk_10_@_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev:bb.a
; Function Attrs: uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load float, ptr %4, align 4, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %7 = load float, ptr %6, align 4, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %9 = load float, ptr %8, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !42
  %11 = load <2 x float>, ptr %i.a, align 4, !tbaa !42
  %12 = load <2 x float>, ptr %i.b, align 4, !tbaa !42
  %i.i = load <2 x float>, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.j = load <2 x float>, ptr %i.g, align 4, !tbaa !42 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !42 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit: ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %bb.a, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i ], [ %i.p, %bb.a ], [ %i.p, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %13 = shl i32 %2, 21
  %14 = or i32 %13, %3
  %15 = insertelement <4 x float> poison, float %5, i64 2
  %16 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %17 = shufflevector <4 x float> %15, <4 x float> %16, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %18 = shufflevector <4 x float> %16, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 4 uses
  %i.as = fcmp ogt <4 x float> %18, splat (float 0xC3ABC16D60000000)
  %i.at = fcmp olt <4 x float> %18, splat (float 0x43ABC16D60000000)
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  %i.ay = select <4 x i1> %i.as, <4 x float> %18, <4 x float> splat (float 0xC3ABC16D60000000) ; 2 uses
  %19 = insertelement <4 x float> poison, float %7, i64 2
  %20 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %21 = shufflevector <4 x float> %19, <4 x float> %20, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %22 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 4 uses
  %i.az = fcmp olt <4 x float> %i.ay, %22
  %i.ba = select <4 x i1> %i.at, <4 x float> %18, <4 x float> splat (float 0x43ABC16D60000000) ; 2 uses
  %i.bb = select <4 x i1> %i.az, <4 x float> %22, <4 x float> %i.ay ; 2 uses
  %i.bc = fcmp olt <4 x float> %22, %i.ba
  %23 = insertelement <4 x float> poison, float %9, i64 2
  %24 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %25 = shufflevector <4 x float> %23, <4 x float> %24, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %26 = shufflevector <4 x float> %24, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 4 uses
  %i.bd = fcmp olt <4 x float> %i.bb, %26
  %i.be = select <4 x i1> %i.bc, <4 x float> %22, <4 x float> %i.ba ; 2 uses
  %i.bf = select <4 x i1> %i.bd, <4 x float> %26, <4 x float> %i.bb ; 3 uses
  %i.bg = fcmp olt <4 x float> %26, %i.be
  %i.bh = select <4 x i1> %i.bg, <4 x float> %26, <4 x float> %i.be ; 2 uses
  %i.bi = fsub <4 x float> %i.bf, %i.bh
  %i.bj = fcmp olt <4 x float> %i.bi, splat (float 0x3F60624DE0000000) ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bh, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
end_hunk_11
begin_hunk_12_@_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.cp = or <2 x i16> %i.co, splat (i16 1)
  store <2 x i16> %i.cp, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %14, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !4
  %i.cq = load i32, ptr %i.o, align 4, !tbaa !31
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.o, align 4, !tbaa !31
end_hunk_12
