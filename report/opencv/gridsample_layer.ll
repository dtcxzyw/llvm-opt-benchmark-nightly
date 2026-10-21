Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gridsample_layer?download=true
inline.NumInlined: 3976
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfSA_PfiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1586, !nonnull !79, !align !114
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1587, !nonnull !79, !align !114
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1588, !nonnull !79, !align !114
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1589, !nonnull !79, !align !114
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1590, !nonnull !79, !align !114
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1591, !nonnull !79, !align !114
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1592, !nonnull !79, !align !114
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1593, !nonnull !79, !align !114
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1594, !nonnull !79, !align !113
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !79, !align !113
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 160
  br i1 %i.ah, label %.lr.ph.split.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1595, !nonnull !79, !align !113
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !1596, !nonnull !79, !align !113
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !1597, !nonnull !79, !align !113
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !1598, !nonnull !79, !align !113
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14 ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.split.split.us.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.split.i.i.i
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !1599, !nonnull !79, !align !114
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18 ; 6 uses
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !1600, !nonnull !79, !align !114
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18 ; 12 uses
  %wide.trip.count45.i.i.i = zext nneg i32 %i.ag to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ax to i64 ; 10 uses
  %i.bd = shl i64 %i.ad, 2
  %i.be = shl i64 %i.aa, 2
  %i.bf = shl i64 %i.k, 2
  %min.iters.check17 = icmp ugt i32 %i.ax, 7
  %ident.check15.not = icmp eq i64 %i.bc, 1
  %or.cond = select i1 %min.iters.check17, i1 %ident.check15.not, i1 false
  %n.vec19 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n24 = icmp eq i64 %n.vec19, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.ax, 20
  %ident.check = icmp ne i64 %i.bc, 1
  %ident.check12 = icmp ne i64 %i.ba, 1
  %i.bg = or i1 %ident.check, %ident.check12
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter27 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br label %.lr.ph16.us.i.i.i

.lr.ph16.us.i.i.i:                                ; preds = %._crit_edge17.split.us.us.i.i.i, %.lr.ph.split.split.us.i.i.i
  %.04225.us.i.i.i = phi i32 [ %.val2, %.lr.ph.split.split.us.i.i.i ], [ %i.eo, %._crit_edge17.split.us.us.i.i.i ] ; 3 uses
  %i.bh = sdiv i32 %.04225.us.i.i.i, %i.d         ; 2 uses
  %i.bi = mul nsw i32 %i.bh, %i.d                 ; 0 uses
  %.recomposed = srem i32 %.04225.us.i.i.i, %i.d
  %i.bj = sext i32 %i.bh to i64                   ; 5 uses
  %i.bk = mul i64 %i.k, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %i.bm = mul i64 %i.q, %i.bj
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bm
  %i.bo = sext i32 %.recomposed to i64            ; 3 uses
  %i.bp = mul i64 %i.t, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bp
  %i.br = mul i64 %i.aa, %i.bj
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.br
  %i.bt = mul i64 %i.ad, %i.bo
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = mul i64 %i.bd, %i.bo
  %i.bw = add i64 %i.bv, %i.x
  %i.bx = mul i64 %i.be, %i.bj
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = mul i64 %i.bf, %i.bj
  %i.ca = add i64 %i.bz, %i.h
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us.i.i.i, %.lr.ph16.us.i.i.i
  %indvars.iv42.i.i.i = phi i64 [ %indvars.iv.next43.i.i.i, %._crit_edge.us.us.i.i.i ], [ 0, %.lr.ph16.us.i.i.i ] ; 5 uses
  %i.cb = shl nuw nsw i64 %indvars.iv42.i.i.i, 2
  %i.cc = add i64 %i.by, %i.cb
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv42.i.i.i, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i
  %i.ce = load float, ptr %i.aj, align 4, !tbaa !20
  %i.cf = load float, ptr %i.at, align 4, !tbaa !20
  %i.cg = load float, ptr %i.au, align 4, !tbaa !20
  %i.ch = load float, ptr %i.av, align 4, !tbaa !20
  %i.ci = load <2 x float>, ptr %i.cd, align 4, !tbaa !20
  %i.cj = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ch, i64 1
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.cm) ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cp = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.co) ; 3 uses
  %i.cq = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cr = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cq) ; 3 uses
  %i.cs = or i32 %i.cr, %i.cp
  %or.cond.us.us.i.i.i = icmp sgt i32 %i.cs, -1
  br i1 %or.cond.us.us.i.i.i, label %bb.c, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !1601, !nonnull !79, !align !113
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !14
  %i.cv = icmp slt i32 %i.cp, %i.cu
  br i1 %i.cv, label %.lr.ph.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %bb.c
  %.pre5.i.i = load ptr, ptr %i.al, align 8, !tbaa !1602
  %i.cw = load i32, ptr %.pre5.i.i, align 4, !tbaa !14
  %i.cx = icmp slt i32 %i.cr, %i.cw
  %invariant.gep.us.us.i.i.i = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv42.i.i.i ; 6 uses
  br i1 %i.cx, label %.lr.ph.split.us.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i: ; preds = %.lr.ph.us.us.i.i.i, %bb.c, %bb.b
  %i.cy = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv42.i.i.i ; 6 uses
  br i1 %or.cond, label %vector.body20, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader

vector.body20:                                    ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i, %vector.body20
  %index21 = phi i64 [ %index.next22, %vector.body20 ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %i.cy, i64 %index21 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x float> zeroinitializer, ptr %i.cz, align 4, !tbaa !20
  store <4 x float> zeroinitializer, ptr %i.da, align 4, !tbaa !20
  %index.next22 = add nuw i64 %index21, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next22, %n.vec19
  br i1 %i.db, label %middle.block23, label %vector.body20, !llvm.loop !1576

middle.block23:                                   ; preds = %vector.body20
  br i1 %cmp.n24, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i, %middle.block23
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i ], [ %n.vec19, %middle.block23 ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader ]
  %i.dc = mul i64 %indvars.iv.i.i.i.prol, %i.bc
  %gep.us22.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.cy, i64 %i.dc
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol, !llvm.loop !1577

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol ]
  %i.dd = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit ] ; 5 uses
  %i.df = mul i64 %indvars.iv.i.i.i, %i.bc
  %gep.us22.us.i.i.i = getelementptr [4 x i8], ptr %i.cy, i64 %i.df
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.dg = mul i64 %indvars.iv.next.i.i.i, %i.bc
  %gep.us22.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.cy, i64 %i.dg
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.dh = mul i64 %indvars.iv.next.i.i.i.1, %i.bc
  %gep.us22.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.cy, i64 %i.dh
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.di = mul i64 %indvars.iv.next.i.i.i.2, %i.bc
  %gep.us22.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.cy, i64 %i.di
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i, !llvm.loop !1578

.lr.ph.split.us.us.us.i.i.i:                      ; preds = %.lr.ph.us.us.i.i.i
  %2 = zext nneg i32 %i.cp to i64                 ; 2 uses
  %3 = zext nneg i32 %i.cr to i64                 ; 2 uses
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !1603, !nonnull !79, !align !114
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !18 ; 2 uses
  %i.dl = mul i64 %i.dk, %3
  %invariant.gep10.us.us.i.i.i = getelementptr [4 x i8], ptr %i.bl, i64 %i.dl
  %invariant.gep12.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %2 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bg
  br i1 %brmerge, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us.us.i.i.i
  %i.dm = shl i64 %i.dk, 2
  %i.dn = mul i64 %i.dm, %3
  %i.do = add i64 %i.ca, %i.dn
  %i.dp = shl nuw nsw i64 %2, 2
  %i.dq = add i64 %i.do, %i.dp
  %i.dr = sub i64 %i.dq, %i.cc
  %diff.check = icmp ugt i64 %i.dr, -32
  br i1 %diff.check, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ds = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %index ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %wide.load = load <4 x float>, ptr %i.ds, align 4, !tbaa !20
  %wide.load13 = load <4 x float>, ptr %i.dt, align 4, !tbaa !20
  %i.du = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %index ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  store <4 x float> %wide.load, ptr %i.du, align 4, !tbaa !20
  store <4 x float> %wide.load13, ptr %i.dv, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !1579

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.us.us.i.i.i, %vector.memcheck, %middle.block
  %indvars.iv37.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod28.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol
  %indvars.iv37.i.i.i.prol = phi i64 [ %indvars.iv.next38.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol ], [ %indvars.iv37.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader ]
  %i.dx = mul i64 %indvars.iv37.i.i.i.prol, %i.ba
  %gep13.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.dx
  %i.dy = load float, ptr %gep13.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.dz = mul i64 %indvars.iv37.i.i.i.prol, %i.bc
  %gep.us.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.dz
  store float %i.dy, ptr %gep.us.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.prol = add nuw nsw i64 %indvars.iv37.i.i.i.prol, 1 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol, !llvm.loop !1580

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader
  %indvars.iv37.i.i.i.unr = phi i64 [ %indvars.iv37.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader ], [ %indvars.iv.next38.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol ]
  %i.ea = sub nsw i64 %indvars.iv37.i.i.i.ph, %wide.trip.count.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i
  %indvars.iv37.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i ], [ %indvars.iv37.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = mul i64 %indvars.iv37.i.i.i, %i.ba
  %gep13.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.ec
  %i.ed = load float, ptr %gep13.us.us.i.i.i, align 4, !tbaa !20
  %i.ee = mul i64 %indvars.iv37.i.i.i, %i.bc
  %gep.us.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ee
  store float %i.ed, ptr %gep.us.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i, 1 ; 2 uses
  %i.ef = mul i64 %indvars.iv.next38.i.i.i, %i.ba
  %gep13.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.ef
  %i.eg = load float, ptr %gep13.us.us.i.i.i.1, align 4, !tbaa !20
  %i.eh = mul i64 %indvars.iv.next38.i.i.i, %i.bc
  %gep.us.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.eh
  store float %i.eg, ptr %gep.us.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i.i, 2 ; 2 uses
  %i.ei = mul i64 %indvars.iv.next38.i.i.i.1, %i.ba
  %gep13.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.ei
  %i.ej = load float, ptr %gep13.us.us.i.i.i.2, align 4, !tbaa !20
  %i.ek = mul i64 %indvars.iv.next38.i.i.i.1, %i.bc
  %gep.us.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ek
  store float %i.ej, ptr %gep.us.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i.i, 3 ; 2 uses
  %i.el = mul i64 %indvars.iv.next38.i.i.i.2, %i.ba
  %gep13.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.el
  %i.em = load float, ptr %gep13.us.us.i.i.i.3, align 4, !tbaa !20
  %i.en = mul i64 %indvars.iv.next38.i.i.i.2, %i.bc
  %gep.us.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.en
  store float %i.em, ptr %gep.us.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i.i, 4 ; 2 uses
  %exitcond41.not.i.i.i.3 = icmp eq i64 %indvars.iv.next38.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond41.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i, !llvm.loop !1581

._crit_edge.us.us.i.i.i:                          ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us20.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.us.us.us.i.i.i, %middle.block23, %middle.block
  %indvars.iv.next43.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i, 1 ; 2 uses
  %exitcond46.not.i.i.i = icmp eq i64 %indvars.iv.next43.i.i.i, %wide.trip.count45.i.i.i
  br i1 %exitcond46.not.i.i.i, label %._crit_edge17.split.us.us.i.i.i, label %bb.b, !llvm.loop !1582

._crit_edge17.split.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.i.i.i
  %i.eo = add nsw i32 %.04225.us.i.i.i, 1         ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i32 %i.eo, %.val3
  br i1 %exitcond47.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph16.us.i.i.i, !llvm.loop !1583

_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge17.split.us.us.i.i.i, %bb.a, %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfSA_PfiiiiiibEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS5_PfiiiiiibEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %.val, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(168) %.val6, i64 168, i1 false), !tbaa.struct !132
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 168) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi0EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfSA_PfiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33    ; 20 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1616, !nonnull !79, !align !113
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1617, !nonnull !79, !align !114
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1618, !nonnull !79, !align !114
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1619, !nonnull !79, !align !114
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1620, !nonnull !79, !align !114
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1621, !nonnull !79, !align !114
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1622, !nonnull !79, !align !114
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1623, !nonnull !79, !align !114
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1624, !nonnull !79, !align !114
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1625, !nonnull !79, !align !113
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !79, !align !113
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 160
  br i1 %i.ah, label %.lr.ph.split.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1626, !nonnull !79, !align !113
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !1627, !nonnull !79, !align !113
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !1628, !nonnull !79, !align !113
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !1629, !nonnull !79, !align !113
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !14 ; 5 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.split.split.us.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.split.i.i.i
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !1630, !nonnull !79, !align !114
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !18 ; 12 uses
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfSA_PfiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.cy = insertelement <2 x float> %i.cx, float %i.ct, i64 1
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.cy) ; 2 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.db = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.da) ; 4 uses
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dd = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dc) ; 4 uses
  %i.de = or i32 %i.dd, %i.db
  %or.cond.us.us.i.i.i = icmp sgt i32 %i.de, -1
  br i1 %or.cond.us.us.i.i.i, label %bb.c, label %..lr.ph.split.us18.us.i_crit_edge.i.i

..lr.ph.split.us18.us.i_crit_edge.i.i:            ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.al, align 8, !tbaa !1632
  %.pre6.i.i = load ptr, ptr %i.ak, align 8, !tbaa !1633
  %.pre7.i.i = load i32, ptr %.pre6.i.i, align 4, !tbaa !14
  br label %.lr.ph.split.us18.us.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.df = load ptr, ptr %i.ak, align 8, !tbaa !1633, !nonnull !79, !align !113
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !14 ; 3 uses
  %i.dh = icmp slt i32 %i.db, %i.dg
  %.pre5.i.i = load ptr, ptr %i.al, align 8, !tbaa !1632 ; 3 uses
  br i1 %i.dh, label %.lr.ph.us.us.i.i.i, label %.lr.ph.split.us18.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %bb.c
  %i.di = load i32, ptr %.pre5.i.i, align 4, !tbaa !14
  %i.dj = icmp slt i32 %i.dd, %i.di
  %invariant.gep.us.us.i.i.i = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv42.i.i.i ; 6 uses
  br i1 %i.dj, label %.lr.ph.split.us.us.us.i.i.i, label %.lr.ph.split.us18.us.i.i.i

.lr.ph.split.us18.us.i.i.i:                       ; preds = %.lr.ph.us.us.i.i.i, %bb.c, %..lr.ph.split.us18.us.i_crit_edge.i.i
  %i.dk = phi i32 [ %.pre7.i.i, %..lr.ph.split.us18.us.i_crit_edge.i.i ], [ %i.dg, %bb.c ], [ %i.dg, %.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.dl = phi ptr [ %.pre.i.i, %..lr.ph.split.us18.us.i_crit_edge.i.i ], [ %.pre5.i.i, %bb.c ], [ %.pre5.i.i, %.lr.ph.us.us.i.i.i ]
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14 ; 2 uses
  %i.dn = add nsw i32 %i.dk, -1
  %.sroa.speculated33.i.us.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.dn)
  %.sroa.speculated22.i.us.us.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated33.i.us.us.i.i.i, i32 0) ; 2 uses
  %i.do = add nsw i32 %i.dm, -1
  %.sroa.speculated26.i.us.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.do)
  %.sroa.speculated.i.us.us.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated26.i.us.us.i.i.i, i32 0) ; 2 uses
  %.not.i.us.us.i.i.i = icmp slt i32 %.sroa.speculated22.i.us.us.i.i.i, %i.dk
  %.not11.i.us.us.i.i.i = icmp slt i32 %.sroa.speculated.i.us.us.i.i.i, %i.dm
  %or.cond13.i.us.us.i.i.i = select i1 %.not.i.us.us.i.i.i, i1 %.not11.i.us.us.i.i.i, i1 false
  br i1 %or.cond13.i.us.us.i.i.i, label %.lr.ph.split.split.us.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i: ; preds = %.lr.ph.split.us18.us.i.i.i
  %i.dp = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv42.i.i.i ; 6 uses
  br i1 %or.cond, label %vector.body42, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader

vector.body42:                                    ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i, %vector.body42
  %index43 = phi i64 [ %index.next44, %vector.body42 ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i ] ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.dp, i64 %index43 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  store <4 x float> zeroinitializer, ptr %i.dq, align 4, !tbaa !20
  store <4 x float> zeroinitializer, ptr %i.dr, align 4, !tbaa !20
  %index.next44 = add nuw i64 %index43, 8         ; 2 uses
  %i.ds = icmp eq i64 %index.next44, %n.vec41
  br i1 %i.ds, label %middle.block45, label %vector.body42, !llvm.loop !1604

middle.block45:                                   ; preds = %vector.body42
  br i1 %cmp.n46, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i, %middle.block45
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.preheader.i.i ], [ %n.vec41, %middle.block45 ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader ]
  %i.dt = mul i64 %indvars.iv.i.i.i.prol, %i.bc
  %gep.us22.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.dp, i64 %i.dt
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol, !llvm.loop !1605

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol ]
  %i.du = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit ] ; 5 uses
  %i.dw = mul i64 %indvars.iv.i.i.i, %i.bc
  %gep.us22.us.i.i.i = getelementptr [4 x i8], ptr %i.dp, i64 %i.dw
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.dx = mul i64 %indvars.iv.next.i.i.i, %i.bc
  %gep.us22.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.dp, i64 %i.dx
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.dy = mul i64 %indvars.iv.next.i.i.i.1, %i.bc
  %gep.us22.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.dp, i64 %i.dy
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.dz = mul i64 %indvars.iv.next.i.i.i.2, %i.bc
  %gep.us22.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.dp, i64 %i.dz
  store float 0.000000e+00, ptr %gep.us22.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i, !llvm.loop !1606

.lr.ph.split.split.us.us.us.i.i.i:                ; preds = %.lr.ph.split.us18.us.i.i.i
  %i.ea = zext nneg i32 %.sroa.speculated22.i.us.us.i.i.i to i64 ; 2 uses
  %i.eb = zext nneg i32 %.sroa.speculated.i.us.us.i.i.i to i64 ; 2 uses
  %i.ec = load ptr, ptr %i.an, align 8, !tbaa !1634, !nonnull !79, !align !114
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !18 ; 2 uses
  %i.ee = mul i64 %i.ed, %i.eb
  %invariant.gep6.us.us.i.i.i = getelementptr [4 x i8], ptr %i.bp, i64 %i.ee
  %invariant.gep8.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep6.us.us.i.i.i, i64 %i.ea ; 6 uses
  %i.ef = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv42.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check25, i1 true, i1 %i.bj
  br i1 %brmerge, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader, label %vector.memcheck22

vector.memcheck22:                                ; preds = %.lr.ph.split.split.us.us.us.i.i.i
  %i.eg = shl i64 %i.ed, 2
  %i.eh = mul i64 %i.eg, %i.eb
  %i.ei = add i64 %i.ck, %i.eh
  %i.ej = shl nuw nsw i64 %i.ea, 2
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = sub i64 %i.ek, %i.cm
  %diff.check23 = icmp ugt i64 %i.el, -32
  br i1 %diff.check23, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader, label %vector.body28

vector.body28:                                    ; preds = %vector.memcheck22, %vector.body28
  %index29 = phi i64 [ %index.next32, %vector.body28 ], [ 0, %vector.memcheck22 ] ; 3 uses
  %i.em = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %index29 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %wide.load30 = load <4 x float>, ptr %i.em, align 4, !tbaa !20
  %wide.load31 = load <4 x float>, ptr %i.en, align 4, !tbaa !20
  %i.eo = getelementptr [4 x i8], ptr %i.ef, i64 %index29 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store <4 x float> %wide.load30, ptr %i.eo, align 4, !tbaa !20
  store <4 x float> %wide.load31, ptr %i.ep, align 4, !tbaa !20
  %index.next32 = add nuw i64 %index29, 8         ; 2 uses
  %i.eq = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.eq, label %middle.block33, label %vector.body28, !llvm.loop !1607

middle.block33:                                   ; preds = %vector.body28
  br i1 %cmp.n34, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.split.us.us.us.i.i.i, %vector.memcheck22, %middle.block33
  %indvars.iv32.i.i.i.ph = phi i64 [ 0, %vector.memcheck22 ], [ %n.vec27, %middle.block33 ], [ 0, %.lr.ph.split.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod51.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol
  %indvars.iv32.i.i.i.prol = phi i64 [ %indvars.iv.next33.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol ], [ %indvars.iv32.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter52 = phi i64 [ %prol.iter52.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader ]
  %i.er = mul i64 %indvars.iv32.i.i.i.prol, %i.ba
  %gep9.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.er
  %i.es = load float, ptr %gep9.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.et = mul i64 %indvars.iv32.i.i.i.prol, %i.bc
  %gep.us5.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.ef, i64 %i.et
  store float %i.es, ptr %gep.us5.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next33.i.i.i.prol = add nuw nsw i64 %indvars.iv32.i.i.i.prol, 1 ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol, !llvm.loop !1608

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader
  %indvars.iv32.i.i.i.unr = phi i64 [ %indvars.iv32.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.preheader ], [ %indvars.iv.next33.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol ]
  %i.eu = sub nsw i64 %indvars.iv32.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i
  %indvars.iv32.i.i.i = phi i64 [ %indvars.iv.next33.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i ], [ %indvars.iv32.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.ew = mul i64 %indvars.iv32.i.i.i, %i.ba
  %gep9.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.ew
  %i.ex = load float, ptr %gep9.us.us.i.i.i, align 4, !tbaa !20
  %i.ey = mul i64 %indvars.iv32.i.i.i, %i.bc
  %gep.us5.us.us.i.i.i = getelementptr [4 x i8], ptr %i.ef, i64 %i.ey
  store float %i.ex, ptr %gep.us5.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next33.i.i.i = add nuw nsw i64 %indvars.iv32.i.i.i, 1 ; 2 uses
  %i.ez = mul i64 %indvars.iv.next33.i.i.i, %i.ba
  %gep9.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.ez
  %i.fa = load float, ptr %gep9.us.us.i.i.i.1, align 4, !tbaa !20
  %i.fb = mul i64 %indvars.iv.next33.i.i.i, %i.bc
  %gep.us5.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.ef, i64 %i.fb
  store float %i.fa, ptr %gep.us5.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next33.i.i.i.1 = add nuw nsw i64 %indvars.iv32.i.i.i, 2 ; 2 uses
  %i.fc = mul i64 %indvars.iv.next33.i.i.i.1, %i.ba
  %gep9.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.fc
  %i.fd = load float, ptr %gep9.us.us.i.i.i.2, align 4, !tbaa !20
  %i.fe = mul i64 %indvars.iv.next33.i.i.i.1, %i.bc
  %gep.us5.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.ef, i64 %i.fe
  store float %i.fd, ptr %gep.us5.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next33.i.i.i.2 = add nuw nsw i64 %indvars.iv32.i.i.i, 3 ; 2 uses
  %i.ff = mul i64 %indvars.iv.next33.i.i.i.2, %i.ba
  %gep9.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.ff
  %i.fg = load float, ptr %gep9.us.us.i.i.i.3, align 4, !tbaa !20
  %i.fh = mul i64 %indvars.iv.next33.i.i.i.2, %i.bc
  %gep.us5.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.ef, i64 %i.fh
  store float %i.fg, ptr %gep.us5.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next33.i.i.i.3 = add nuw nsw i64 %indvars.iv32.i.i.i, 4 ; 2 uses
  %exitcond36.not.i.i.i.3 = icmp eq i64 %indvars.iv.next33.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond36.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i, !llvm.loop !1609

.lr.ph.split.us.us.us.i.i.i:                      ; preds = %.lr.ph.us.us.i.i.i
  %2 = zext nneg i32 %i.db to i64                 ; 2 uses
  %3 = zext nneg i32 %i.dd to i64                 ; 2 uses
  %i.fi = load ptr, ptr %i.an, align 8, !tbaa !1634, !nonnull !79, !align !114
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !18 ; 2 uses
  %i.fk = mul i64 %i.fj, %3
  %invariant.gep10.us.us.i.i.i = getelementptr [4 x i8], ptr %i.bp, i64 %i.fk
  %invariant.gep12.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %2 ; 6 uses
  %brmerge56 = select i1 %min.iters.check, i1 true, i1 %i.bk
  br i1 %brmerge56, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us.us.i.i.i
  %i.fl = shl i64 %i.fj, 2
  %i.fm = mul i64 %i.fl, %3
  %i.fn = add i64 %i.ce, %i.fm
  %i.fo = shl nuw nsw i64 %2, 2
  %i.fp = add i64 %i.fn, %i.fo
  %i.fq = sub i64 %i.fp, %i.co
  %diff.check = icmp ugt i64 %i.fq, -32
  br i1 %diff.check, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fr = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %index ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  %wide.load = load <4 x float>, ptr %i.fr, align 4, !tbaa !20
  %wide.load18 = load <4 x float>, ptr %i.fs, align 4, !tbaa !20
  %i.ft = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %index ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 16
  store <4 x float> %wide.load, ptr %i.ft, align 4, !tbaa !20
  store <4 x float> %wide.load18, ptr %i.fu, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !1610

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.us.us.i.i.i, %vector.memcheck, %middle.block
  %indvars.iv37.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod54.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol
  %indvars.iv37.i.i.i.prol = phi i64 [ %indvars.iv.next38.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol ], [ %indvars.iv37.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter55 = phi i64 [ %prol.iter55.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader ]
  %i.fw = mul i64 %indvars.iv37.i.i.i.prol, %i.ba
  %gep13.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.fw
  %i.fx = load float, ptr %gep13.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.fy = mul i64 %indvars.iv37.i.i.i.prol, %i.bc
  %gep.us.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.fy
  store float %i.fx, ptr %gep.us.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.prol = add nuw nsw i64 %indvars.iv37.i.i.i.prol, 1 ; 2 uses
  %prol.iter55.next = add i64 %prol.iter55, 1     ; 2 uses
  %prol.iter55.cmp.not = icmp eq i64 %prol.iter55.next, %xtraiter53
  br i1 %prol.iter55.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol, !llvm.loop !1611

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader
  %indvars.iv37.i.i.i.unr = phi i64 [ %indvars.iv37.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.preheader ], [ %indvars.iv.next38.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol ]
  %i.fz = sub nsw i64 %indvars.iv37.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i
  %indvars.iv37.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i ], [ %indvars.iv37.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.gb = mul i64 %indvars.iv37.i.i.i, %i.ba
  %gep13.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.gb
  %i.gc = load float, ptr %gep13.us.us.i.i.i, align 4, !tbaa !20
  %i.gd = mul i64 %indvars.iv37.i.i.i, %i.bc
  %gep.us.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.gd
  store float %i.gc, ptr %gep.us.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i, 1 ; 2 uses
  %i.ge = mul i64 %indvars.iv.next38.i.i.i, %i.ba
  %gep13.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.ge
  %i.gf = load float, ptr %gep13.us.us.i.i.i.1, align 4, !tbaa !20
  %i.gg = mul i64 %indvars.iv.next38.i.i.i, %i.bc
  %gep.us.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.gg
  store float %i.gf, ptr %gep.us.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i.i, 2 ; 2 uses
  %i.gh = mul i64 %indvars.iv.next38.i.i.i.1, %i.ba
  %gep13.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.gh
  %i.gi = load float, ptr %gep13.us.us.i.i.i.2, align 4, !tbaa !20
  %i.gj = mul i64 %indvars.iv.next38.i.i.i.1, %i.bc
  %gep.us.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.gj
  store float %i.gi, ptr %gep.us.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i.i, 3 ; 2 uses
  %i.gk = mul i64 %indvars.iv.next38.i.i.i.2, %i.ba
  %gep13.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.gk
  %i.gl = load float, ptr %gep13.us.us.i.i.i.3, align 4, !tbaa !20
  %i.gm = mul i64 %indvars.iv.next38.i.i.i.2, %i.bc
  %gep.us.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.gm
  store float %i.gl, ptr %gep.us.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next38.i.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i.i, 4 ; 2 uses
  %exitcond41.not.i.i.i.3 = icmp eq i64 %indvars.iv.next38.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond41.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i, !llvm.loop !1612

._crit_edge.us.us.i.i.i:                          ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us20.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us3.us.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.us.us.us.i.i.i, %middle.block45, %middle.block33, %middle.block
  %indvars.iv.next43.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i, 1 ; 2 uses
  %exitcond46.not.i.i.i = icmp eq i64 %indvars.iv.next43.i.i.i, %wide.trip.count45.i.i.i
  br i1 %exitcond46.not.i.i.i, label %._crit_edge17.split.us.us.i.i.i, label %bb.b, !llvm.loop !1613

._crit_edge17.split.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.i.i.i
  %i.gn = add nsw i32 %.04225.us.i.i.i, 1         ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i32 %i.gn, %.val3
  br i1 %exitcond47.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph16.us.i.i.i, !llvm.loop !1614

_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge17.split.us.us.i.i.i, %bb.a, %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfSA_PfiiiiiibEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS5_PfiiiiiibEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %.val, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(168) %.val6, i64 168, i1 false), !tbaa.struct !132
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 168) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi1EEEvPKfS7_PfiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi2EEEvPKfSA_PfiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph12.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi2EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph12.i.i.i:                                   ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !33    ; 21 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1642, !nonnull !79, !align !113
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1643, !nonnull !79, !align !114
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1644, !nonnull !79, !align !114
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1645, !nonnull !79, !align !114
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1646, !nonnull !79, !align !114
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1647, !nonnull !79, !align !114
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1648, !nonnull !79, !align !114
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1649, !nonnull !79, !align !114
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1650, !nonnull !79, !align !114
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1651, !nonnull !79, !align !113 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !79, !align !113
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !79, !align !113
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.as = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph12.split.i.i.i.preheader, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest2DILi2EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph12.split.i.i.i.preheader:                   ; preds = %.lr.ph12.i.i.i
  %i.au = shl i64 %i.ac, 2
  %i.av = shl i64 %i.z, 2
  %i.aw = shl i64 %i.j, 2
  br label %.lr.ph12.split.i.i.i

.lr.ph12.split.i.i.i:                             ; preds = %.lr.ph12.split.i.i.i.preheader, %._crit_edge9.i.i.i
  %i.ax = phi i32 [ %i.by, %._crit_edge9.i.i.i ], [ %i.as, %.lr.ph12.split.i.i.i.preheader ] ; 2 uses
  %i.ay = phi i32 [ %i.bz, %._crit_edge9.i.i.i ], [ %i.as, %.lr.ph12.split.i.i.i.preheader ] ; 2 uses
  %.04210.i.i.i = phi i32 [ %i.ca, %._crit_edge9.i.i.i ], [ %.val2, %.lr.ph12.split.i.i.i.preheader ] ; 3 uses
  %i.az = load i32, ptr %i.c, align 4, !tbaa !14  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %ident.check41.not = icmp eq i64 %i.bs, 1
  %or.cond = select i1 %min.iters.check43, i1 %ident.check41.not, i1 false
  %n.vec45 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec45, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check29 = icmp ult i32 %i.bn, 24
  %ident.check24 = icmp ne i64 %i.bs, 1
  %ident.check25 = icmp ne i64 %i.bq, 1
  %i.cb = or i1 %ident.check24, %ident.check25
  %n.vec31 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n38 = icmp eq i64 %n.vec31, %wide.trip.count.i.i.i
  %xtraiter54 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  %min.iters.check = icmp ult i32 %i.bn, 24
  %ident.check = icmp ne i64 %i.bs, 1
  %ident.check21 = icmp ne i64 %i.bq, 1
  %i.cc = or i1 %ident.check, %ident.check21
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter57 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br label %.lr.ph20.us.i.i.i

.lr.ph20.us.i.i.i:                                ; preds = %._crit_edge21.split.us.us.i.i.i, %.lr.ph.split.split.us.i.i.i
  %.05629.us.i.i.i = phi i32 [ %.val2, %.lr.ph.split.split.us.i.i.i ], [ %i.is, %._crit_edge21.split.us.us.i.i.i ] ; 3 uses
  %i.cd = sdiv i32 %.05629.us.i.i.i, %i.h         ; 2 uses
  %i.ce = mul i32 %i.cd, %i.h                     ; 0 uses
  %.recomposed = srem i32 %.05629.us.i.i.i, %i.h  ; 2 uses
  %i.cf = sdiv i32 %.recomposed, %i.g             ; 2 uses
  %i.cg = mul nsw i32 %i.cf, %i.g                 ; 0 uses
  %.recomposed60 = srem i32 %.recomposed, %i.g
  %i.ch = sext i32 %i.cd to i64                   ; 7 uses
  %i.ci = mul i64 %i.o, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ci ; 2 uses
  %i.ck = mul i64 %i.u, %i.ch
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ck
  %i.cm = sext i32 %i.cf to i64                   ; 4 uses
  %i.cn = mul i64 %i.x, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = sext i32 %.recomposed60 to i64          ; 4 uses
  %i.cq = mul i64 %i.aa, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cq
  %i.cs = mul i64 %i.ah, %i.ch
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cs
  %i.cu = mul i64 %i.ak, %i.cm
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = mul i64 %i.an, %i.cp
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  %i.cy = mul i64 %i.bt, %i.cp
  %i.cz = add i64 %i.cy, %i.ae
  %i.da = mul i64 %i.bu, %i.ch
  %i.db = add i64 %i.cz, %i.da
  %i.dc = mul i64 %i.bv, %i.cm
  %i.dd = add i64 %i.db, %i.dc
  %i.de = mul i64 %i.bw, %i.ch
  %i.df = add i64 %i.de, %i.l
  %i.dg = mul i64 %i.bx, %i.cp
  %i.dh = add i64 %i.dg, %i.ae
  %i.di = mul i64 %i.by, %i.ch
  %i.dj = add i64 %i.dh, %i.di
  %i.dk = mul i64 %i.bz, %i.cm
  %i.dl = add i64 %i.dj, %i.dk
  %i.dm = mul i64 %i.ca, %i.ch
  %i.dn = add i64 %i.dm, %i.l
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us.i.i.i, %.lr.ph20.us.i.i.i
  %indvars.iv46.i.i.i = phi i64 [ %indvars.iv.next47.i.i.i, %._crit_edge.us.us.i.i.i ], [ 0, %.lr.ph20.us.i.i.i ] ; 7 uses
  %i.do = shl nuw nsw i64 %indvars.iv46.i.i.i, 2
  %i.dp = add i64 %i.dl, %i.do
  %i.dq = shl nuw nsw i64 %indvars.iv46.i.i.i, 2
  %i.dr = add i64 %i.dd, %i.dq
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv46.i.i.i, 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i.i.i ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !20
  %i.du = load float, ptr %i.bg, align 4, !tbaa !20
  %i.dv = load float, ptr %i.bh, align 4, !tbaa !20
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.dv)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dy = load float, ptr %i.bi, align 4, !tbaa !20
  %i.dz = load float, ptr %i.bj, align 4, !tbaa !20
  %i.ea = load float, ptr %i.bk, align 4, !tbaa !20
  %i.eb = load float, ptr %i.bl, align 4, !tbaa !20
  %i.ec = load <2 x float>, ptr %i.dx, align 4, !tbaa !20
  %i.ed = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ea, i64 1
  %i.ef = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.eb, i64 1
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.ee, <2 x float> %i.eg) ; 2 uses
  %i.ei = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.ej = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ei) ; 5 uses
  %i.ek = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.el = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ek) ; 5 uses
  %i.em = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.en = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.em) ; 5 uses
  %i.eo = or i32 %i.el, %i.ej
  %i.ep = or i32 %i.eo, %i.en
  %or.cond3.us.us.i.i.i = icmp sgt i32 %i.ep, -1  ; 2 uses
  br i1 %or.cond3.us.us.i.i.i, label %bb.c, label %..lr.ph.split.us22.us.i_crit_edge.i.i

..lr.ph.split.us22.us.i_crit_edge.i.i:            ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !1909
  %.pre6.i.i = load ptr, ptr %i.as, align 8, !tbaa !1910
  %.pre7.i.i = load i32, ptr %.pre6.i.i, align 4, !tbaa !14
  br label %.lr.ph.split.us22.us.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.eq = load ptr, ptr %i.as, align 8, !tbaa !1910, !nonnull !79, !align !113
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !14 ; 4 uses
  %i.es = icmp slt i32 %i.ej, %i.er
  %.pre5.i.i = load ptr, ptr %i.at, align 8, !tbaa !1909 ; 4 uses
  br i1 %i.es, label %bb.d, label %.lr.ph.split.us22.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.et = load i32, ptr %.pre5.i.i, align 4, !tbaa !14
  %i.eu = icmp slt i32 %i.el, %i.et
  br i1 %i.eu, label %.lr.ph.us.us.i.i.i, label %.lr.ph.split.us22.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %bb.d
  %i.ev = load ptr, ptr %i.au, align 8, !tbaa !1911, !nonnull !79, !align !113
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = icmp slt i32 %i.en, %i.ew
  %invariant.gep.us.us.i.i.i = getelementptr [4 x i8], ptr %i.cx, i64 %indvars.iv46.i.i.i ; 6 uses
  br i1 %i.ex, label %.lr.ph.split.us.us.us.i.i.i, label %.lr.ph.split.us22.us.i.i.i

.lr.ph.split.us22.us.i.i.i:                       ; preds = %.lr.ph.us.us.i.i.i, %bb.d, %bb.c, %..lr.ph.split.us22.us.i_crit_edge.i.i
  %i.ey = phi i32 [ %.pre7.i.i, %..lr.ph.split.us22.us.i_crit_edge.i.i ], [ %i.er, %bb.c ], [ %i.er, %bb.d ], [ %i.er, %.lr.ph.us.us.i.i.i ]
  %i.ez = phi ptr [ %.pre.i.i, %..lr.ph.split.us22.us.i_crit_edge.i.i ], [ %.pre5.i.i, %bb.c ], [ %.pre5.i.i, %bb.d ], [ %.pre5.i.i, %.lr.ph.us.us.i.i.i ]
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !1911, !nonnull !79, !align !113
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !14
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !14
  %.not.i.us.us.i.i.i = icmp slt i32 %i.ej, %i.ey
  %.not24.i.us.us.i.i.i = icmp slt i32 %i.el, %i.fc
  %i.fd = and i1 %.not.i.us.us.i.i.i, %.not24.i.us.us.i.i.i
  %.not25.i.us.us.i.i.i = icmp slt i32 %i.en, %i.fb
  %i.fe = and i1 %.not25.i.us.us.i.i.i, %i.fd
  %or.cond27.i.us.us.i.i.i = and i1 %or.cond3.us.us.i.i.i, %i.fe
  br i1 %or.cond27.i.us.us.i.i.i, label %.lr.ph.split.split.us.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i: ; preds = %.lr.ph.split.us22.us.i.i.i
  %i.ff = getelementptr [4 x i8], ptr %i.cx, i64 %indvars.iv46.i.i.i ; 6 uses
  br i1 %or.cond, label %vector.body46, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader

vector.body46:                                    ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i, %vector.body46
  %index47 = phi i64 [ %index.next48, %vector.body46 ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i ] ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %index47 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  store <4 x float> zeroinitializer, ptr %i.fg, align 4, !tbaa !20
  store <4 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !20
  %index.next48 = add nuw i64 %index47, 8         ; 2 uses
  %i.fi = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.fi, label %middle.block49, label %vector.body46, !llvm.loop !1875

middle.block49:                                   ; preds = %vector.body46
  br i1 %cmp.n50, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i, %middle.block49
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i ], [ %n.vec45, %middle.block49 ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader ]
  %i.fj = mul i64 %indvars.iv.i.i.i.prol, %i.bs
  %gep.us26.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.ff, i64 %i.fj
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol, !llvm.loop !1876

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol ]
  %i.fk = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit ] ; 5 uses
  %i.fm = mul i64 %indvars.iv.i.i.i, %i.bs
  %gep.us26.us.i.i.i = getelementptr [4 x i8], ptr %i.ff, i64 %i.fm
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.fn = mul i64 %indvars.iv.next.i.i.i, %i.bs
  %gep.us26.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.ff, i64 %i.fn
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.fo = mul i64 %indvars.iv.next.i.i.i.1, %i.bs
  %gep.us26.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.ff, i64 %i.fo
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.fp = mul i64 %indvars.iv.next.i.i.i.2, %i.bs
  %gep.us26.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.ff, i64 %i.fp
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i, !llvm.loop !1877

.lr.ph.split.split.us.us.us.i.i.i:                ; preds = %.lr.ph.split.us22.us.i.i.i
  %i.fq = zext nneg i32 %i.en to i64              ; 2 uses
  %i.fr = zext i32 %i.el to i64                   ; 2 uses
  %i.fs = zext i32 %i.ej to i64                   ; 2 uses
  %i.ft = load ptr, ptr %i.aw, align 8, !tbaa !1912, !nonnull !79, !align !114
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !18 ; 2 uses
  %i.fv = load ptr, ptr %i.ax, align 8, !tbaa !1913, !nonnull !79, !align !114
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !18 ; 2 uses
  %i.fx = mul i64 %i.fw, %i.fq
  %i.fy = mul i64 %i.fu, %i.fr
  %invariant.gep6.us.us.i.i.i = getelementptr [4 x i8], ptr %i.cj, i64 %i.fx
  %invariant.gep8.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep6.us.us.i.i.i, i64 %i.fy
  %invariant.gep10.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.fs ; 6 uses
  %i.fz = getelementptr [4 x i8], ptr %i.cx, i64 %indvars.iv46.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check29, i1 true, i1 %i.cb
  br i1 %brmerge, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.lr.ph.split.split.us.us.us.i.i.i
  %i.ga = shl i64 %i.fw, 2
  %i.gb = mul i64 %i.ga, %i.fq
  %i.gc = add i64 %i.dn, %i.gb
  %i.gd = shl i64 %i.fu, 2
  %i.ge = mul i64 %i.gd, %i.fr
  %i.gf = add i64 %i.gc, %i.ge
  %i.gg = shl nuw nsw i64 %i.fs, 2
  %i.gh = add i64 %i.gf, %i.gg
  %i.gi = sub i64 %i.gh, %i.dp
  %diff.check27 = icmp ugt i64 %i.gi, -32
  br i1 %diff.check27, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader, label %vector.body32

vector.body32:                                    ; preds = %vector.memcheck26, %vector.body32
  %index33 = phi i64 [ %index.next36, %vector.body32 ], [ 0, %vector.memcheck26 ] ; 3 uses
  %i.gj = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %index33 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %wide.load34 = load <4 x float>, ptr %i.gj, align 4, !tbaa !20
  %wide.load35 = load <4 x float>, ptr %i.gk, align 4, !tbaa !20
  %i.gl = getelementptr [4 x i8], ptr %i.fz, i64 %index33 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 16
  store <4 x float> %wide.load34, ptr %i.gl, align 4, !tbaa !20
  store <4 x float> %wide.load35, ptr %i.gm, align 4, !tbaa !20
  %index.next36 = add nuw i64 %index33, 8         ; 2 uses
  %i.gn = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.gn, label %middle.block37, label %vector.body32, !llvm.loop !1878

middle.block37:                                   ; preds = %vector.body32
  br i1 %cmp.n38, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.split.us.us.us.i.i.i, %vector.memcheck26, %middle.block37
  %indvars.iv36.i.i.i.ph = phi i64 [ 0, %vector.memcheck26 ], [ %n.vec31, %middle.block37 ], [ 0, %.lr.ph.split.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod55.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol
  %indvars.iv36.i.i.i.prol = phi i64 [ %indvars.iv.next37.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol ], [ %indvars.iv36.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader ]
  %i.go = mul i64 %indvars.iv36.i.i.i.prol, %i.bq
  %gep11.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.go
  %i.gp = load float, ptr %gep11.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.gq = mul i64 %indvars.iv36.i.i.i.prol, %i.bs
  %gep.us5.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.fz, i64 %i.gq
  store float %i.gp, ptr %gep.us5.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.prol = add nuw nsw i64 %indvars.iv36.i.i.i.prol, 1 ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol, !llvm.loop !1879

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader
  %indvars.iv36.i.i.i.unr = phi i64 [ %indvars.iv36.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader ], [ %indvars.iv.next37.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol ]
  %i.gr = sub nsw i64 %indvars.iv36.i.i.i.ph, %wide.trip.count.i.i.i
  %i.gs = icmp ugt i64 %i.gr, -4
  br i1 %i.gs, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i
  %indvars.iv36.i.i.i = phi i64 [ %indvars.iv.next37.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i ], [ %indvars.iv36.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.gt = mul i64 %indvars.iv36.i.i.i, %i.bq
  %gep11.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.gt
  %i.gu = load float, ptr %gep11.us.us.i.i.i, align 4, !tbaa !20
  %i.gv = mul i64 %indvars.iv36.i.i.i, %i.bs
  %gep.us5.us.us.i.i.i = getelementptr [4 x i8], ptr %i.fz, i64 %i.gv
  store float %i.gu, ptr %gep.us5.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i = add nuw nsw i64 %indvars.iv36.i.i.i, 1 ; 2 uses
  %i.gw = mul i64 %indvars.iv.next37.i.i.i, %i.bq
  %gep11.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.gw
  %i.gx = load float, ptr %gep11.us.us.i.i.i.1, align 4, !tbaa !20
  %i.gy = mul i64 %indvars.iv.next37.i.i.i, %i.bs
  %gep.us5.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.fz, i64 %i.gy
  store float %i.gx, ptr %gep.us5.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.1 = add nuw nsw i64 %indvars.iv36.i.i.i, 2 ; 2 uses
  %i.gz = mul i64 %indvars.iv.next37.i.i.i.1, %i.bq
  %gep11.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.gz
  %i.ha = load float, ptr %gep11.us.us.i.i.i.2, align 4, !tbaa !20
  %i.hb = mul i64 %indvars.iv.next37.i.i.i.1, %i.bs
  %gep.us5.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.fz, i64 %i.hb
  store float %i.ha, ptr %gep.us5.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.2 = add nuw nsw i64 %indvars.iv36.i.i.i, 3 ; 2 uses
  %i.hc = mul i64 %indvars.iv.next37.i.i.i.2, %i.bq
  %gep11.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.hc
  %i.hd = load float, ptr %gep11.us.us.i.i.i.3, align 4, !tbaa !20
  %i.he = mul i64 %indvars.iv.next37.i.i.i.2, %i.bs
  %gep.us5.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.fz, i64 %i.he
  store float %i.hd, ptr %gep.us5.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.3 = add nuw nsw i64 %indvars.iv36.i.i.i, 4 ; 2 uses
  %exitcond40.not.i.i.i.3 = icmp eq i64 %indvars.iv.next37.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond40.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i, !llvm.loop !1880

.lr.ph.split.us.us.us.i.i.i:                      ; preds = %.lr.ph.us.us.i.i.i
  %i.hf = sext i32 %i.ej to i64                   ; 2 uses
  %i.hg = sext i32 %i.el to i64                   ; 2 uses
  %2 = zext nneg i32 %i.en to i64                 ; 2 uses
  %i.hh = load ptr, ptr %i.ax, align 8, !tbaa !1913, !nonnull !79, !align !114
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !18 ; 2 uses
  %i.hj = mul i64 %i.hi, %2
  %i.hk = load ptr, ptr %i.aw, align 8, !tbaa !1912, !nonnull !79, !align !114
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !18 ; 2 uses
  %i.hm = mul i64 %i.hl, %i.hg
  %invariant.gep12.us.us.i.i.i = getelementptr [4 x i8], ptr %i.cj, i64 %i.hj
  %invariant.gep14.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.hm
  %invariant.gep16.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep14.us.us.i.i.i, i64 %i.hf ; 6 uses
  %brmerge61 = select i1 %min.iters.check, i1 true, i1 %i.cc
  br i1 %brmerge61, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us.us.i.i.i
  %i.hn = shl i64 %i.hl, 2
  %i.ho = mul i64 %i.hn, %i.hg
  %i.hp = add i64 %i.df, %i.ho
  %i.hq = shl i64 %i.hi, 2
  %i.hr = mul i64 %i.hq, %2
  %i.hs = add i64 %i.hp, %i.hr
  %i.ht = shl nsw i64 %i.hf, 2
  %i.hu = add i64 %i.hs, %i.ht
  %i.hv = sub i64 %i.hu, %i.dr
  %diff.check = icmp ugt i64 %i.hv, -32
  br i1 %diff.check, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hw = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %index ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  %wide.load = load <4 x float>, ptr %i.hw, align 4, !tbaa !20
  %wide.load22 = load <4 x float>, ptr %i.hx, align 4, !tbaa !20
  %i.hy = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %index ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 16
  store <4 x float> %wide.load, ptr %i.hy, align 4, !tbaa !20
  store <4 x float> %wide.load22, ptr %i.hz, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !1881

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.us.us.i.i.i, %vector.memcheck, %middle.block
  %indvars.iv41.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod58.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol
  %indvars.iv41.i.i.i.prol = phi i64 [ %indvars.iv.next42.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol ], [ %indvars.iv41.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader ]
  %i.ib = mul i64 %indvars.iv41.i.i.i.prol, %i.bq
  %gep17.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ib
  %i.ic = load float, ptr %gep17.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.id = mul i64 %indvars.iv41.i.i.i.prol, %i.bs
  %gep.us.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.id
  store float %i.ic, ptr %gep.us.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.prol = add nuw nsw i64 %indvars.iv41.i.i.i.prol, 1 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol, !llvm.loop !1882

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader
  %indvars.iv41.i.i.i.unr = phi i64 [ %indvars.iv41.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader ], [ %indvars.iv.next42.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol ]
  %i.ie = sub nsw i64 %indvars.iv41.i.i.i.ph, %wide.trip.count.i.i.i
  %i.if = icmp ugt i64 %i.ie, -4
  br i1 %i.if, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i
  %indvars.iv41.i.i.i = phi i64 [ %indvars.iv.next42.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i ], [ %indvars.iv41.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.ig = mul i64 %indvars.iv41.i.i.i, %i.bq
  %gep17.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ig
  %i.ih = load float, ptr %gep17.us.us.i.i.i, align 4, !tbaa !20
  %i.ii = mul i64 %indvars.iv41.i.i.i, %i.bs
  %gep.us.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ii
  store float %i.ih, ptr %gep.us.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i = add nuw nsw i64 %indvars.iv41.i.i.i, 1 ; 2 uses
  %i.ij = mul i64 %indvars.iv.next42.i.i.i, %i.bq
  %gep17.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ij
  %i.ik = load float, ptr %gep17.us.us.i.i.i.1, align 4, !tbaa !20
  %i.il = mul i64 %indvars.iv.next42.i.i.i, %i.bs
  %gep.us.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.il
  store float %i.ik, ptr %gep.us.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.1 = add nuw nsw i64 %indvars.iv41.i.i.i, 2 ; 2 uses
  %i.im = mul i64 %indvars.iv.next42.i.i.i.1, %i.bq
  %gep17.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.im
  %i.in = load float, ptr %gep17.us.us.i.i.i.2, align 4, !tbaa !20
  %i.io = mul i64 %indvars.iv.next42.i.i.i.1, %i.bs
  %gep.us.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.io
  store float %i.in, ptr %gep.us.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.2 = add nuw nsw i64 %indvars.iv41.i.i.i, 3 ; 2 uses
  %i.ip = mul i64 %indvars.iv.next42.i.i.i.2, %i.bq
  %gep17.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ip
  %i.iq = load float, ptr %gep17.us.us.i.i.i.3, align 4, !tbaa !20
  %i.ir = mul i64 %indvars.iv.next42.i.i.i.2, %i.bs
  %gep.us.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ir
  store float %i.iq, ptr %gep.us.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.3 = add nuw nsw i64 %indvars.iv41.i.i.i, 4 ; 2 uses
  %exitcond45.not.i.i.i.3 = icmp eq i64 %indvars.iv.next42.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond45.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i, !llvm.loop !1883

._crit_edge.us.us.i.i.i:                          ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us24.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi0EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i, %middle.block49, %middle.block37, %middle.block
  %indvars.iv.next47.i.i.i = add nuw nsw i64 %indvars.iv46.i.i.i, 1 ; 2 uses
  %exitcond50.not.i.i.i = icmp eq i64 %indvars.iv.next47.i.i.i, %wide.trip.count49.i.i.i
  br i1 %exitcond50.not.i.i.i, label %._crit_edge21.split.us.us.i.i.i, label %bb.b, !llvm.loop !1884

._crit_edge21.split.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.i.i.i
  %i.is = add nsw i32 %.05629.us.i.i.i, 1         ; 2 uses
  %exitcond51.not.i.i.i = icmp eq i32 %i.is, %.val3
  br i1 %exitcond51.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph20.us.i.i.i, !llvm.loop !1885

_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge21.split.us.us.i.i.i, %bb.a, %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfSA_PfiiiiiiiibEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS5_PfiiiiiiiibEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %.val, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(224) %.val6, i64 224, i1 false), !tbaa.struct !136
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 224) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi0EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !33    ; 27 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1926, !nonnull !79, !align !113
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1927, !nonnull !79, !align !113
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14   ; 4 uses
  %i.h = mul i32 %i.g, %i.d                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1928, !nonnull !79, !align !114
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1929, !nonnull !79, !align !114
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1930, !nonnull !79, !align !114
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1931, !nonnull !79, !align !114
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1932, !nonnull !79, !align !114
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1933, !nonnull !79, !align !114
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1934, !nonnull !79, !align !114
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1935, !nonnull !79, !align !114
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1936, !nonnull !79, !align !114
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1937, !nonnull !79, !align !114
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1938, !nonnull !79, !align !113
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 216
  br i1 %i.ar, label %.lr.ph.split.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 176
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 136
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.et = load i32, ptr %.pre5.i.i, align 4, !tbaa !14
  %i.eu = icmp slt i32 %i.el, %i.et
  br i1 %i.eu, label %.lr.ph.us.us.i.i.i, label %.lr.ph.split.us22.us.i.i.i

.lr.ph.us.us.i.i.i:                               ; preds = %bb.d
  %i.ev = load ptr, ptr %i.au, align 8, !tbaa !1950, !nonnull !79, !align !113
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = icmp slt i32 %i.en, %i.ew
  %invariant.gep.us.us.i.i.i = getelementptr [4 x i8], ptr %i.cx, i64 %indvars.iv46.i.i.i ; 6 uses
  br i1 %i.ex, label %.lr.ph.split.us.us.us.i.i.i, label %.lr.ph.split.us22.us.i.i.i

.lr.ph.split.us22.us.i.i.i:                       ; preds = %.lr.ph.us.us.i.i.i, %bb.d, %bb.c, %..lr.ph.split.us22.us.i_crit_edge.i.i
  %i.ey = phi i32 [ %.pre7.i.i, %..lr.ph.split.us22.us.i_crit_edge.i.i ], [ %i.er, %bb.c ], [ %i.er, %bb.d ], [ %i.er, %.lr.ph.us.us.i.i.i ] ; 2 uses
  %i.ez = phi ptr [ %.pre.i.i, %..lr.ph.split.us22.us.i_crit_edge.i.i ], [ %.pre5.i.i, %bb.c ], [ %.pre5.i.i, %bb.d ], [ %.pre5.i.i, %.lr.ph.us.us.i.i.i ]
  %i.fa = load ptr, ptr %i.au, align 8, !tbaa !1950, !nonnull !79, !align !113
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !14 ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !14 ; 2 uses
  %i.fd = add nsw i32 %i.ey, -1
  %.sroa.speculated60.i.us.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %i.fd)
  %.sroa.speculated39.i.us.us.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated60.i.us.us.i.i.i, i32 0) ; 2 uses
  %i.fe = add nsw i32 %i.fc, -1
  %.sroa.speculated52.i.us.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.fe)
  %.sroa.speculated33.i.us.us.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated52.i.us.us.i.i.i, i32 0) ; 2 uses
  %i.ff = add nsw i32 %i.fb, -1
  %.sroa.speculated44.i.us.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %i.ff)
  %.sroa.speculated.i.us.us.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated44.i.us.us.i.i.i, i32 0) ; 2 uses
  %.not.i.us.us.i.i.i = icmp slt i32 %.sroa.speculated39.i.us.us.i.i.i, %i.ey
  %.not18.i.us.us.i.i.i = icmp slt i32 %.sroa.speculated33.i.us.us.i.i.i, %i.fc
  %or.cond21.i.us.us.i.i.i = select i1 %.not.i.us.us.i.i.i, i1 %.not18.i.us.us.i.i.i, i1 false
  %.not19.i.us.us.i.i.i = icmp slt i32 %.sroa.speculated.i.us.us.i.i.i, %i.fb
  %or.cond22.i.us.us.i.i.i = select i1 %or.cond21.i.us.us.i.i.i, i1 %.not19.i.us.us.i.i.i, i1 false
  br i1 %or.cond22.i.us.us.i.i.i, label %.lr.ph.split.split.us.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i: ; preds = %.lr.ph.split.us22.us.i.i.i
  %i.fg = getelementptr [4 x i8], ptr %i.cx, i64 %indvars.iv46.i.i.i ; 6 uses
  br i1 %or.cond, label %vector.body43, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader

vector.body43:                                    ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i, %vector.body43
  %index44 = phi i64 [ %index.next45, %vector.body43 ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i ] ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %index44 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store <4 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !20
  store <4 x float> zeroinitializer, ptr %i.fi, align 4, !tbaa !20
  %index.next45 = add nuw i64 %index44, 8         ; 2 uses
  %i.fj = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.fj, label %middle.block46, label %vector.body43, !llvm.loop !1914

middle.block46:                                   ; preds = %vector.body43
  br i1 %cmp.n47, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i, %middle.block46
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.preheader.i.i ], [ %n.vec42, %middle.block46 ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader ]
  %i.fk = mul i64 %indvars.iv.i.i.i.prol, %i.bs
  %gep.us26.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.fg, i64 %i.fk
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol, !llvm.loop !1915

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol ]
  %i.fl = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit ] ; 5 uses
  %i.fn = mul i64 %indvars.iv.i.i.i, %i.bs
  %gep.us26.us.i.i.i = getelementptr [4 x i8], ptr %i.fg, i64 %i.fn
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %i.fo = mul i64 %indvars.iv.next.i.i.i, %i.bs
  %gep.us26.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.fg, i64 %i.fo
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.fp = mul i64 %indvars.iv.next.i.i.i.1, %i.bs
  %gep.us26.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.fg, i64 %i.fp
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.fq = mul i64 %indvars.iv.next.i.i.i.2, %i.bs
  %gep.us26.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.fg, i64 %i.fq
  store float 0.000000e+00, ptr %gep.us26.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i, !llvm.loop !1916

.lr.ph.split.split.us.us.us.i.i.i:                ; preds = %.lr.ph.split.us22.us.i.i.i
  %i.fr = zext nneg i32 %.sroa.speculated39.i.us.us.i.i.i to i64 ; 2 uses
  %i.fs = zext nneg i32 %.sroa.speculated33.i.us.us.i.i.i to i64 ; 2 uses
  %i.ft = zext nneg i32 %.sroa.speculated.i.us.us.i.i.i to i64 ; 2 uses
  %i.fu = load ptr, ptr %i.aw, align 8, !tbaa !1951, !nonnull !79, !align !114
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !18 ; 2 uses
  %i.fw = load ptr, ptr %i.ax, align 8, !tbaa !1952, !nonnull !79, !align !114
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !18 ; 2 uses
  %i.fy = mul i64 %i.fx, %i.ft
  %i.fz = mul i64 %i.fv, %i.fs
  %invariant.gep6.us.us.i.i.i = getelementptr [4 x i8], ptr %i.cj, i64 %i.fy
  %invariant.gep8.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep6.us.us.i.i.i, i64 %i.fz
  %invariant.gep10.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep8.us.us.i.i.i, i64 %i.fr ; 6 uses
  %i.ga = getelementptr [4 x i8], ptr %i.cx, i64 %indvars.iv46.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check26, i1 true, i1 %i.cb
  br i1 %brmerge, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader, label %vector.memcheck23

vector.memcheck23:                                ; preds = %.lr.ph.split.split.us.us.us.i.i.i
  %i.gb = shl i64 %i.fv, 2
  %i.gc = mul i64 %i.gb, %i.fs
  %i.gd = add i64 %i.dn, %i.gc
  %i.ge = shl i64 %i.fx, 2
  %i.gf = mul i64 %i.ge, %i.ft
  %i.gg = add i64 %i.gd, %i.gf
  %i.gh = shl nuw nsw i64 %i.fr, 2
  %i.gi = add i64 %i.gg, %i.gh
  %i.gj = sub i64 %i.gi, %i.dp
  %diff.check24 = icmp ugt i64 %i.gj, -32
  br i1 %diff.check24, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader, label %vector.body29

vector.body29:                                    ; preds = %vector.memcheck23, %vector.body29
  %index30 = phi i64 [ %index.next33, %vector.body29 ], [ 0, %vector.memcheck23 ] ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %index30 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %wide.load31 = load <4 x float>, ptr %i.gk, align 4, !tbaa !20
  %wide.load32 = load <4 x float>, ptr %i.gl, align 4, !tbaa !20
  %i.gm = getelementptr [4 x i8], ptr %i.ga, i64 %index30 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  store <4 x float> %wide.load31, ptr %i.gm, align 4, !tbaa !20
  store <4 x float> %wide.load32, ptr %i.gn, align 4, !tbaa !20
  %index.next33 = add nuw i64 %index30, 8         ; 2 uses
  %i.go = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.go, label %middle.block34, label %vector.body29, !llvm.loop !1917

middle.block34:                                   ; preds = %vector.body29
  br i1 %cmp.n35, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.split.us.us.us.i.i.i, %vector.memcheck23, %middle.block34
  %indvars.iv36.i.i.i.ph = phi i64 [ 0, %vector.memcheck23 ], [ %n.vec28, %middle.block34 ], [ 0, %.lr.ph.split.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod52.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol
  %indvars.iv36.i.i.i.prol = phi i64 [ %indvars.iv.next37.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol ], [ %indvars.iv36.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader ]
  %i.gp = mul i64 %indvars.iv36.i.i.i.prol, %i.bq
  %gep11.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.gp
  %i.gq = load float, ptr %gep11.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.gr = mul i64 %indvars.iv36.i.i.i.prol, %i.bs
  %gep.us5.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %i.ga, i64 %i.gr
  store float %i.gq, ptr %gep.us5.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.prol = add nuw nsw i64 %indvars.iv36.i.i.i.prol, 1 ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol, !llvm.loop !1918

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader
  %indvars.iv36.i.i.i.unr = phi i64 [ %indvars.iv36.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.preheader ], [ %indvars.iv.next37.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol ]
  %i.gs = sub nsw i64 %indvars.iv36.i.i.i.ph, %wide.trip.count.i.i.i
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i
  %indvars.iv36.i.i.i = phi i64 [ %indvars.iv.next37.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i ], [ %indvars.iv36.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.gu = mul i64 %indvars.iv36.i.i.i, %i.bq
  %gep11.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.gu
  %i.gv = load float, ptr %gep11.us.us.i.i.i, align 4, !tbaa !20
  %i.gw = mul i64 %indvars.iv36.i.i.i, %i.bs
  %gep.us5.us.us.i.i.i = getelementptr [4 x i8], ptr %i.ga, i64 %i.gw
  store float %i.gv, ptr %gep.us5.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i = add nuw nsw i64 %indvars.iv36.i.i.i, 1 ; 2 uses
  %i.gx = mul i64 %indvars.iv.next37.i.i.i, %i.bq
  %gep11.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.gx
  %i.gy = load float, ptr %gep11.us.us.i.i.i.1, align 4, !tbaa !20
  %i.gz = mul i64 %indvars.iv.next37.i.i.i, %i.bs
  %gep.us5.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %i.ga, i64 %i.gz
  store float %i.gy, ptr %gep.us5.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.1 = add nuw nsw i64 %indvars.iv36.i.i.i, 2 ; 2 uses
  %i.ha = mul i64 %indvars.iv.next37.i.i.i.1, %i.bq
  %gep11.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.ha
  %i.hb = load float, ptr %gep11.us.us.i.i.i.2, align 4, !tbaa !20
  %i.hc = mul i64 %indvars.iv.next37.i.i.i.1, %i.bs
  %gep.us5.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %i.ga, i64 %i.hc
  store float %i.hb, ptr %gep.us5.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.2 = add nuw nsw i64 %indvars.iv36.i.i.i, 3 ; 2 uses
  %i.hd = mul i64 %indvars.iv.next37.i.i.i.2, %i.bq
  %gep11.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep10.us.us.i.i.i, i64 %i.hd
  %i.he = load float, ptr %gep11.us.us.i.i.i.3, align 4, !tbaa !20
  %i.hf = mul i64 %indvars.iv.next37.i.i.i.2, %i.bs
  %gep.us5.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %i.ga, i64 %i.hf
  store float %i.he, ptr %gep.us5.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next37.i.i.i.3 = add nuw nsw i64 %indvars.iv36.i.i.i, 4 ; 2 uses
  %exitcond40.not.i.i.i.3 = icmp eq i64 %indvars.iv.next37.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond40.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i, !llvm.loop !1919

.lr.ph.split.us.us.us.i.i.i:                      ; preds = %.lr.ph.us.us.i.i.i
  %i.hg = sext i32 %i.ej to i64                   ; 2 uses
  %i.hh = sext i32 %i.el to i64                   ; 2 uses
  %2 = zext nneg i32 %i.en to i64                 ; 2 uses
  %i.hi = load ptr, ptr %i.ax, align 8, !tbaa !1952, !nonnull !79, !align !114
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !18 ; 2 uses
  %i.hk = mul i64 %i.hj, %2
  %i.hl = load ptr, ptr %i.aw, align 8, !tbaa !1951, !nonnull !79, !align !114
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !18 ; 2 uses
  %i.hn = mul i64 %i.hm, %i.hh
  %invariant.gep12.us.us.i.i.i = getelementptr [4 x i8], ptr %i.cj, i64 %i.hk
  %invariant.gep14.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep12.us.us.i.i.i, i64 %i.hn
  %invariant.gep16.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep14.us.us.i.i.i, i64 %i.hg ; 6 uses
  %brmerge58 = select i1 %min.iters.check, i1 true, i1 %i.cc
  br i1 %brmerge58, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us.us.i.i.i
  %i.ho = shl i64 %i.hm, 2
  %i.hp = mul i64 %i.ho, %i.hh
  %i.hq = add i64 %i.df, %i.hp
  %i.hr = shl i64 %i.hj, 2
  %i.hs = mul i64 %i.hr, %2
  %i.ht = add i64 %i.hq, %i.hs
  %i.hu = shl nsw i64 %i.hg, 2
  %i.hv = add i64 %i.ht, %i.hu
  %i.hw = sub i64 %i.hv, %i.dr
  %diff.check = icmp ugt i64 %i.hw, -32
  br i1 %diff.check, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hx = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %index ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %wide.load = load <4 x float>, ptr %i.hx, align 4, !tbaa !20
  %wide.load19 = load <4 x float>, ptr %i.hy, align 4, !tbaa !20
  %i.hz = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %index ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  store <4 x float> %wide.load, ptr %i.hz, align 4, !tbaa !20
  store <4 x float> %wide.load19, ptr %i.ia, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !1920

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader: ; preds = %.lr.ph.split.us.us.us.i.i.i, %vector.memcheck, %middle.block
  %indvars.iv41.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod55.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol
  %indvars.iv41.i.i.i.prol = phi i64 [ %indvars.iv.next42.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol ], [ %indvars.iv41.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader ] ; 3 uses
  %prol.iter56 = phi i64 [ %prol.iter56.next, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol ], [ 0, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader ]
  %i.ic = mul i64 %indvars.iv41.i.i.i.prol, %i.bq
  %gep17.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ic
  %i.id = load float, ptr %gep17.us.us.i.i.i.prol, align 4, !tbaa !20
  %i.ie = mul i64 %indvars.iv41.i.i.i.prol, %i.bs
  %gep.us.us.us.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ie
  store float %i.id, ptr %gep.us.us.us.i.i.i.prol, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.prol = add nuw nsw i64 %indvars.iv41.i.i.i.prol, 1 ; 2 uses
  %prol.iter56.next = add i64 %prol.iter56, 1     ; 2 uses
  %prol.iter56.cmp.not = icmp eq i64 %prol.iter56.next, %xtraiter54
  br i1 %prol.iter56.cmp.not, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol, !llvm.loop !1921

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader
  %indvars.iv41.i.i.i.unr = phi i64 [ %indvars.iv41.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.preheader ], [ %indvars.iv.next42.i.i.i.prol, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol ]
  %i.if = sub nsw i64 %indvars.iv41.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ig = icmp ugt i64 %i.if, -4
  br i1 %i.ig, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i
  %indvars.iv41.i.i.i = phi i64 [ %indvars.iv.next42.i.i.i.3, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i ], [ %indvars.iv41.i.i.i.unr, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit ] ; 6 uses
  %i.ih = mul i64 %indvars.iv41.i.i.i, %i.bq
  %gep17.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ih
  %i.ii = load float, ptr %gep17.us.us.i.i.i, align 4, !tbaa !20
  %i.ij = mul i64 %indvars.iv41.i.i.i, %i.bs
  %gep.us.us.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ij
  store float %i.ii, ptr %gep.us.us.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i = add nuw nsw i64 %indvars.iv41.i.i.i, 1 ; 2 uses
  %i.ik = mul i64 %indvars.iv.next42.i.i.i, %i.bq
  %gep17.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.ik
  %i.il = load float, ptr %gep17.us.us.i.i.i.1, align 4, !tbaa !20
  %i.im = mul i64 %indvars.iv.next42.i.i.i, %i.bs
  %gep.us.us.us.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.im
  store float %i.il, ptr %gep.us.us.us.i.i.i.1, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.1 = add nuw nsw i64 %indvars.iv41.i.i.i, 2 ; 2 uses
  %i.in = mul i64 %indvars.iv.next42.i.i.i.1, %i.bq
  %gep17.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.in
  %i.io = load float, ptr %gep17.us.us.i.i.i.2, align 4, !tbaa !20
  %i.ip = mul i64 %indvars.iv.next42.i.i.i.1, %i.bs
  %gep.us.us.us.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.ip
  store float %i.io, ptr %gep.us.us.us.i.i.i.2, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.2 = add nuw nsw i64 %indvars.iv41.i.i.i, 3 ; 2 uses
  %i.iq = mul i64 %indvars.iv.next42.i.i.i.2, %i.bq
  %gep17.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep16.us.us.i.i.i, i64 %i.iq
  %i.ir = load float, ptr %gep17.us.us.i.i.i.3, align 4, !tbaa !20
  %i.is = mul i64 %indvars.iv.next42.i.i.i.2, %i.bs
  %gep.us.us.us.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i.i.i, i64 %i.is
  store float %i.ir, ptr %gep.us.us.us.i.i.i.3, align 4, !tbaa !20
  %indvars.iv.next42.i.i.i.3 = add nuw nsw i64 %indvars.iv41.i.i.i, 4 ; 2 uses
  %exitcond45.not.i.i.i.3 = icmp eq i64 %indvars.iv.next42.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond45.not.i.i.i.3, label %._crit_edge.us.us.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i, !llvm.loop !1922

._crit_edge.us.us.i.i.i:                          ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us24.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us3.us.us.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i.prol.loopexit, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit.us.us.us.i.i.i, %middle.block46, %middle.block34, %middle.block
  %indvars.iv.next47.i.i.i = add nuw nsw i64 %indvars.iv46.i.i.i, 1 ; 2 uses
  %exitcond50.not.i.i.i = icmp eq i64 %indvars.iv.next47.i.i.i, %wide.trip.count49.i.i.i
  br i1 %exitcond50.not.i.i.i, label %._crit_edge21.split.us.us.i.i.i, label %bb.b, !llvm.loop !1923

._crit_edge21.split.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.i.i.i
  %i.it = add nsw i32 %.05629.us.i.i.i, 1         ; 2 uses
  %exitcond51.not.i.i.i = icmp eq i32 %i.it, %.val3
  br i1 %exitcond51.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph20.us.i.i.i, !llvm.loop !1924

_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge21.split.us.us.i.i.i, %bb.a, %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfSA_PfiiiiiiiibEUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS5_PfiiiiiiiibEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %.val, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(224) %.val6, i64 224, i1 false), !tbaa.struct !136
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 224) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi1EEEvPKfS7_PfiiiiiiiibEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi2EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val2 = load i32, ptr %1, align 4, !tbaa !22   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 2 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph14.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL9nearest3DILi2EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph14.i.i.i:                                   ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !33    ; 28 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !1960, !nonnull !79, !align !113
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1961, !nonnull !79, !align !113
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1962, !nonnull !79, !align !114
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1963, !nonnull !79, !align !114
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1964, !nonnull !79, !align !114
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1965, !nonnull !79, !align !114
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1966, !nonnull !79, !align !114
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1967, !nonnull !79, !align !114
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1968, !nonnull !79, !align !114
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1969, !nonnull !79, !align !114
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1970, !nonnull !79, !align !114
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1971, !nonnull !79, !align !114
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1972, !nonnull !79, !align !113 ; 2 uses
end_hunk_3
