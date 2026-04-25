inline.NumInlined: 198
inline.NumDeleted: 78
begin_hunk_0_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_0
begin_hunk_1_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ap = load i32, ptr %i.d, align 4             ; 6 uses
  %i.aq = load float, ptr %i.i, align 4, !tbaa !42 ; 2 uses
  br i1 %i.an, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g
  %i.ar = load <2 x float>, ptr %i.k, align 4, !tbaa !42
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split.us
end_hunk_1
begin_hunk_2_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.ax = phi i32 [ %i.aw, %bb.i ], [ %i.at, %bb.h ]
  %i.ay = mul nsw i32 %i.ap, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ao, i64 %i.az
  %5 = load <3 x float>, ptr %i.ba, align 4, !tbaa !42
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %7 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %8 = insertelement <4 x float> poison, float %i.aq, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %10 = shufflevector <4 x float> %9, <4 x float> %7, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %11 = fmul <4 x float> %6, %10
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_2
begin_hunk_3_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.bg = phi i32 [ %i.bf, %bb.l ], [ %i.bc, %bb.k ]
  %i.bh = mul nsw i32 %i.ap, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.ao, i64 %i.bi
  %12 = load <3 x float>, ptr %i.bj, align 4, !tbaa !42
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bk = fmul <4 x float> %13, %10
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.bo = phi i32 [ %i.bn, %bb.o ], [ %i.bl, %bb.n ]
  %i.bp = mul nsw i32 %i.ap, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.ao, i64 %i.bq
  %14 = load <3 x float>, ptr %i.br, align 4, !tbaa !42
  %15 = shufflevector <3 x float> %14, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bs = fmul <4 x float> %15, %10
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

.split:                                           ; preds = %bb.g
  %16 = load <2 x float>, ptr %i.k, align 4, !tbaa !42
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %18 = insertelement <4 x float> poison, float %i.aq, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %20 = shufflevector <4 x float> %19, <4 x float> %17, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %21 = fpext <4 x float> %20 to <4 x double>     ; 3 uses
  br i1 %i.al, label %bb.p, label %bb.q

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
  %i.bt = phi <4 x float> [ %11, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %29, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.bu = phi <4 x float> [ %i.bk, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.ek, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %22 = phi <4 x float> [ %i.bs, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit ], [ %i.et, %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147 ] ; 4 uses
  %i.bv = fcmp olt <4 x float> %22, <float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0xC3ABC16D60000000>
  %i.bw = fcmp ogt <4 x float> %22, <float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0xC3ABC16D60000000>
  %i.bx = shufflevector <4 x i1> %i.bv, <4 x i1> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.by = select <4 x i1> %i.bx, <4 x float> %22, <4 x float> <float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0x43ABC16D60000000, float 0xC3ABC16D60000000> ; 3 uses
  %i.bz = shufflevector <4 x float> %i.bu, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cb = fcmp olt <4 x float> %i.bz, %i.ca
  %i.cc = select <4 x i1> %i.cb, <4 x float> %i.bu, <4 x float> %i.by ; 3 uses
  %23 = shufflevector <4 x float> %i.bt, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %24 = shufflevector <4 x float> %i.cc, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cd = fcmp olt <4 x float> %23, %24
  %i.ce = select <4 x i1> %i.cd, <4 x float> %i.bt, <4 x float> %i.cc
  %i.cf = load <2 x float>, ptr %i.l, align 8, !tbaa !42 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.n, align 8, !tbaa !42 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
end_hunk_4
begin_hunk_5_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.cl = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 1.000000e+00, i64 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.co = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cp = fcmp ogt <2 x float> %i.co, splat (float 0xC3ABC16D60000000)
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.co, <2 x float> splat (float 0xC3ABC16D60000000) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cs = fcmp olt <2 x float> %i.cq, %i.cr
  %i.ct = select <2 x i1> %i.cs, <2 x float> %i.cr, <2 x float> %i.cq ; 2 uses
  %25 = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cu = fcmp olt <2 x float> %i.ct, %25
  %i.cv = select <2 x i1> %i.cu, <2 x float> %25, <2 x float> %i.ct
  %i.cw = load <2 x float>, ptr %i.m, align 4, !tbaa !42 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.cy = fsub <2 x float> %i.cv, %i.cw
end_hunk_5
begin_hunk_6_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.dw = phi i32 [ %i.dt, %bb.p ], [ %i.dv, %bb.q ]
  %i.dx = mul nsw i32 %i.ap, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.ao, i64 %i.dy
  %26 = load <3 x double>, ptr %i.dz, align 8, !tbaa !69
  %27 = shufflevector <3 x double> %26, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %28 = fmul <4 x double> %27, %21
  %29 = fptrunc <4 x double> %28 to <4 x float>
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_6
begin_hunk_7_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.ef = phi i32 [ %i.ee, %bb.t ], [ %i.eb, %bb.s ]
  %i.eg = mul nsw i32 %i.ap, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ao, i64 %i.eh
  %30 = load <3 x double>, ptr %i.ei, align 8, !tbaa !69
  %31 = shufflevector <3 x double> %30, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ej = fmul <4 x double> %31, %21
  %i.ek = fptrunc <4 x double> %i.ej to <4 x float>
  br i1 %i.al, label %bb.w, label %bb.v

end_hunk_7
begin_hunk_8_@_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii:bb.a
  %i.eo = phi i32 [ %i.en, %bb.w ], [ %i.el, %bb.v ]
  %i.ep = mul nsw i32 %i.ap, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds i8, ptr %i.ao, i64 %i.eq
  %32 = load <3 x double>, ptr %i.er, align 8, !tbaa !69
  %33 = shufflevector <3 x double> %32, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.es = fmul <4 x double> %33, %21
  %i.et = fptrunc <4 x double> %i.es to <4 x float>
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

end_hunk_8
begin_hunk_9_@_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %2, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load float, ptr %i.e, align 4, !tbaa !42
  %5 = load <3 x float>, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %7 = load <3 x float>, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.f = load <4 x float>, ptr %3, align 4
  %i.g = insertelement <4 x float> poison, float %4, i64 2
  %i.h = insertelement <4 x float> %i.g, float %i.b, i64 3
  %i.i = shufflevector <4 x float> %i.f, <4 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %9 = fsub <4 x float> %i.i, %6
  %10 = fmul <4 x float> %9, %8
  %11 = fadd <4 x float> %10, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00>
  %12 = fptoui <4 x float> %11 to <4 x i16>       ; 2 uses
  %13 = load <2 x float>, ptr %i.c, align 4, !tbaa !42
  %14 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %15 = fsub <2 x float> %13, %14
  %16 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %17 = fmul <2 x float> %15, %16
  %18 = fptoui <2 x float> %17 to <2 x i16>
  %i.j = and <2 x i16> %18, splat (i16 -2)
  %i.k = or <4 x i16> %12, <i16 1, i16 1, i16 1, i16 poison>
  %i.l = and <4 x i16> %12, <i16 poison, i16 poison, i16 poison, i16 -2>
  %i.m = shufflevector <4 x i16> %i.k, <4 x i16> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !52   ; 2 uses
end_hunk_9
begin_hunk_10_@_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev:bb.a
; Function Attrs: uwtable
define internal void @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
_Z8btSetMinIfEvRT_RKS0_.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %4 = load <3 x float>, ptr %1, align 4, !tbaa !42
  %5 = load <3 x float>, ptr %i.a, align 4, !tbaa !42
  %6 = load <3 x float>, ptr %i.b, align 4, !tbaa !42
  %i.i = load <2 x float>, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.j = load <2 x float>, ptr %i.g, align 4, !tbaa !42 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !42 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit: ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i, %bb.a, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
  %i.ar = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i ], [ %i.p, %bb.a ], [ %i.p, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %8 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %9 = shufflevector <3 x float> %4, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %10 = shl i32 %2, 21
  %11 = or i32 %10, %3
  %i.as = fcmp ogt <4 x float> %9, splat (float 0xC3ABC16D60000000)
  %i.at = fcmp olt <4 x float> %9, splat (float 0x43ABC16D60000000)
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  %i.ay = select <4 x i1> %i.as, <4 x float> %9, <4 x float> splat (float 0xC3ABC16D60000000) ; 2 uses
  %i.az = fcmp olt <4 x float> %i.ay, %8
  %i.ba = select <4 x i1> %i.at, <4 x float> %9, <4 x float> splat (float 0x43ABC16D60000000) ; 2 uses
  %i.bb = select <4 x i1> %i.az, <4 x float> %8, <4 x float> %i.ay ; 2 uses
  %i.bc = fcmp olt <4 x float> %8, %i.ba
  %i.bd = fcmp olt <4 x float> %i.bb, %7
  %i.be = select <4 x i1> %i.bc, <4 x float> %8, <4 x float> %i.ba ; 2 uses
  %i.bf = select <4 x i1> %i.bd, <4 x float> %7, <4 x float> %i.bb ; 3 uses
  %i.bg = fcmp olt <4 x float> %7, %i.be
  %i.bh = select <4 x i1> %i.bg, <4 x float> %7, <4 x float> %i.be ; 2 uses
  %i.bi = fsub <4 x float> %i.bf, %i.bh
  %i.bj = fcmp olt <4 x float> %i.bi, splat (float 0x3F60624DE0000000) ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bh, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
end_hunk_11
begin_hunk_12_@_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii:_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.cp = or <2 x i16> %i.co, splat (i16 1)
  store <2 x i16> %i.cp, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %11, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !4
  %i.cq = load i32, ptr %i.o, align 4, !tbaa !31
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.o, align 4, !tbaa !31
end_hunk_12
