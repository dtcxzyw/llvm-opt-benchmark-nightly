Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_:_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.oe = fsub float %i.nq, %sqrt.i88
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.63 = phi float [ %i.nv, %bb.j ], [ %i.nt, %bb.k ]
  %i.of = phi float [ %i.ny, %bb.j ], [ %i.oe, %bb.k ]
  %i.og = fdiv float %i.of, %.63                  ; 3 uses
  %i.oh = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.oi = insertelement <2 x i32> %i.oh, i32 %i.ar, i64 1
  %i.oj = uitofp <2 x i32> %i.oi to <2 x float>
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ol = insertelement <2 x float> poison, float %i.og, i64 0
  %i.om = insertelement <2 x float> %i.ol, float %i.hh, i64 1
  %i.on = fadd <2 x float> %i.om, %i.oj
  %i.oo = load <2 x float>, ptr %i.ok, align 8, !tbaa !20
  %i.op = fmul <2 x float> %i.oo, %i.on
  %i.oq = fsub float 1.000000e+00, %i.og
  %i.or = fmul float %i.nq, %i.oq
  %i.os = fmul float %i.ns, %i.og
  %i.ot = fadd float %i.os, %i.or
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ou, align 8, !tbaa !20 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %shift
  %i.ov = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ow = fmul float %i.ot, %i.ov
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.op, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ow, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = trunc i32 %6 to i1
  %i.a = fmul float %2, %4
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %2, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fneg <2 x float> %1
  %i.e = fneg float %2
  %i.f = fneg <2 x float> %3
  %i.g = fneg float %4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0106.0 = phi <2 x float> [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sroa.7.0 = phi float [ %i.g, %bb.c ], [ %4, %bb.b ]
  %.sroa.0113.0 = phi <2 x float> [ %i.d, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %.sroa.10.0 = phi float [ %i.e, %bb.c ], [ %2, %bb.b ] ; 5 uses
  %i.h = fadd <2 x float> %.sroa.0106.0, %.sroa.0113.0 ; 3 uses
  %i.i = fadd float %.sroa.7.0, %.sroa.10.0       ; 3 uses
  %i.j = fmul <2 x float> %i.h, %i.h              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.i, %i.i
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0113.0, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0113.0, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.o = fdiv float %i.i, %sqrt.i.i               ; 4 uses
  %i.p = fcmp olt float %.sroa.10.0, -1.000000e+00
  %i.q = fcmp ogt float %.sroa.10.0, 1.000000e+00
  %..i.i.i = select i1 %i.q, float 1.000000e+00, float %.sroa.10.0
  %.0.i.i.i = select i1 %i.p, float -1.000000e+00, float %..i.i.i
  %i.r = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 2 uses
  %i.s = tail call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i, float noundef %.sroa.03.0.vec.extract.i) #31 ; 3 uses
  %i.t = fcmp olt float %i.o, -1.000000e+00
  %i.u = fcmp ogt float %i.o, 1.000000e+00
  %..i.i.i97 = select i1 %i.u, float 1.000000e+00, float %i.o
  %.0.i.i.i98 = select i1 %i.t, float -1.000000e+00, float %..i.i.i97
  %i.v = tail call noundef float @acosf(float noundef %.0.i.i.i98) #31
  %i.w = fmul float %i.v, f0x3F22F983
  %i.x = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv <2 x float> %i.h, %i.y              ; 5 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  %i.ac = tail call noundef float @atan2f(float noundef %i.ab, float noundef %i.aa) #31 ; 2 uses
  %i.ad = tail call noundef float @sqrtf(float noundef %i.w) #31 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !148, !range !56, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = fsub float %i.ac, %i.s
  %i.aj = select i1 %i.ah, float %i.ai, float %i.ac
  %i.ak = fmul float %i.aj, f0x3E22F983
  %i.al = fadd float %i.ak, 5.000000e-01          ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.am = tail call noundef float @llvm.floor.f32(float %i.al)
  %i.an = fsub float %i.al, %i.am
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.an, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %i.ap = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.ao, <2 x float> %.sroa.0.4.vec.insert, float noundef %i.s, float noundef %i.r) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ap, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ap, 1
  %i.aq = load ptr, ptr %0, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 688
  %i.as = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.ar, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r)
  %foldExtExtBinop127 = fmul <2 x float> %i.z, %i.z
  %i.at = extractelement <2 x float> %foldExtExtBinop127, i64 0
  %i.au = fmul float %i.ab, %i.ab
  %i.av = fadd float %i.at, %i.au
  %sqrt = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fmul <2 x float> %.sroa.0113.0, %i.z    ; 2 uses
  %shift129 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop130 = fadd <2 x float> %i.aw, %shift129
  %i.ax = extractelement <2 x float> %foldExtExtBinop130, i64 0
  %i.ay = fmul float %.sroa.10.0, %i.o
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fmul float %i.az, 4.000000e+00
  %i.bb = fmul float %i.ad, f0x419DE9E7
  %i.bc = fmul float %sqrt, %i.bb                 ; 2 uses
  %i.bd = fcmp olt float %i.bc, f0x358637BD
  %.sroa.speculated = select i1 %i.bd, float f0x358637BD, float %i.bc
  %i.be = fmul float %i.ba, %.sroa.speculated
  %i.bf = fmul float %.fca.1.extract, %i.as
  %i.bg = fdiv float %i.bf, %i.be
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ], [ %i.bg, %bb.e ]
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.g = zext i32 %i.e to i64
  %i.h = add nsw i64 %i.g, -2                     ; 2 uses
  %i.i = icmp ugt i32 %i.e, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150  ; 2 uses
  br i1 %i.i, label %.lr.ph.i65, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i65:                                       ; preds = %bb.a, %.lr.ph.i65
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i65 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.u, %.lr.ph.i65 ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.m = add i64 %i.l, %.017.i                    ; 2 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  %i.q = fcmp ole float %i.p, %2                  ; 2 uses
  %i.r = add i64 %i.m, 1
  %i.s = select i1 %i.q, i64 %i.r, i64 %.017.i
  %.fr.i = freeze i64 %i.s                        ; 3 uses
  %.neg.i = xor i64 %i.l, -1
  %i.t = add nsw i64 %.01516.i, %.neg.i
  %i.u = select i1 %i.q, i64 %i.t, i64 %i.l       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i65, label %._crit_edge.i, !llvm.loop !557

._crit_edge.i:                                    ; preds = %.lr.ph.i65
  %i.w = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.h)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.x = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = fsub float %2, %i.aa
  %i.ae = fsub float %i.ac, %i.aa
  %i.af = fdiv float %i.ad, %i.ae                 ; 3 uses
  %i.ag = fcmp olt float %i.af, 0.000000e+00
  %i.ah = fcmp ogt float %i.af, 1.000000e+00
  %..i = select i1 %i.ah, float 1.000000e+00, float %i.af
  %.0.i = select i1 %i.ag, float 0.000000e+00, float %..i ; 2 uses
  %i.ai = fsub float 1.000000e+00, %.0.i
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !98
  %i.ak = mul i32 %i.aj, %i.y
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ]
  %.sroa.0.0 = phi float [ %i.ai, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ]
  %.1 = phi i32 [ %i.ak, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !98 ; 3 uses
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = zext i32 %i.am to i64
  %i.ap = add nsw i64 %i.ao, -2                   ; 2 uses
  %i.aq = icmp ugt i32 %i.am, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150 ; 2 uses
  br i1 %i.aq, label %.lr.ph.i65.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i65.1:                                     ; preds = %bb.c, %.lr.ph.i65.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i65.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bc, %.lr.ph.i65.1 ], [ %i.ap, %bb.c ] ; 2 uses
  %i.at = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.au = add i64 %i.at, %.017.i.1                ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !20
  %i.ay = fcmp ole float %i.ax, %3                ; 2 uses
  %i.az = add i64 %i.au, 1
  %i.ba = select i1 %i.ay, i64 %i.az, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.ba                     ; 3 uses
  %.neg.i.1 = xor i64 %i.at, -1
  %i.bb = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bc = select i1 %i.ay, i64 %i.bb, i64 %i.at   ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i65.1, label %._crit_edge.i.1, !llvm.loop !557

._crit_edge.i.1:                                  ; preds = %.lr.ph.i65.1
  %i.be = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ap)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.bf = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bf ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !20
  %i.bl = fsub float %3, %i.bi
  %i.bm = fsub float %i.bk, %i.bi
  %i.bn = fdiv float %i.bl, %i.bm                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, 0.000000e+00
  %i.bp = fcmp ogt float %i.bn, 1.000000e+00
  %..i.1 = select i1 %i.bp, float 1.000000e+00, float %i.bn
  %.0.i.1 = select i1 %i.bo, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bq = fsub float 1.000000e+00, %.0.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !98 ; 2 uses
  %i.bt = mul i32 %i.bs, %i.bg
  %i.bu = add i32 %i.bt, %.1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre95 = load i32, ptr %.phi.trans.insert94, align 4, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %i.bv = phi i32 [ %.pre95, %bb.d ], [ %i.bs, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ]
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.d ], [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 4 uses
  %.sroa.9.0 = phi float [ 1.000000e+00, %bb.d ], [ %i.bq, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 4 uses
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.bu, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bw, align 8, !tbaa !20
  %i.by = fmul <2 x float> %1, %i.bx              ; 3 uses
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = load <2 x i32>, ptr %0, align 8, !tbaa !98
  %i.cb = load i32, ptr %0, align 8, !tbaa !158
  %i.cc = add nsw <2 x i32> %i.ca, splat (i32 -2)
  %i.cd = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cc, <2 x i32> %i.bz) ; 3 uses
  %i.ce = sitofp <2 x i32> %i.cd to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.by, %i.ce
  %i.cf = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop98 = fsub <2 x float> %i.by, %i.ce
  %i.cg = extractelement <2 x float> %foldExtExtBinop98, i64 1 ; 2 uses
  %i.ch = fsub float 1.000000e+00, %i.cf          ; 2 uses
  %i.ci = fsub float 1.000000e+00, %i.cg
  %i.cj = extractelement <2 x i32> %i.cd, i64 1
  %i.ck = mul nsw i32 %i.cj, %i.cb
  %i.cl = extractelement <2 x i32> %i.cd, i64 0
  %i.cm = add nsw i32 %i.ck, %i.cl
  %.sroa.04.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i60 = trunc i64 %.sroa.04.0.copyload to i32
  %.sroa.2.0.extract.shift.i61 = lshr i64 %.sroa.04.0.copyload, 32
  %.sroa.2.0.extract.trunc.i62 = trunc nuw i64 %.sroa.2.0.extract.shift.i61 to i32
  %i.cn = mul nsw i32 %.sroa.2.0.extract.trunc.i62, %.sroa.0.0.extract.trunc.i60 ; 3 uses
  %i.co = mul i32 %i.cn, %.1.1
  %i.cp = add i32 %i.cm, %i.co                    ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !150 ; 5 uses
  %i.cs = mul i32 %i.cn, %i.bv
  %i.ct = add i32 %i.cp, %i.cs                    ; 2 uses
  %i.cu = load i32, ptr %i.d, align 8, !tbaa !98
  %i.cv = mul i32 %i.cu, %i.cn                    ; 2 uses
  %i.cw = add i32 %i.cv, %i.cp
  %i.cx = zext i32 %i.cp to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cx
  %i.cz = zext i32 %i.cw to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cz
  %i.db = add i32 %i.cv, %i.ct
  %i.dc = zext i32 %i.ct to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dc
  %i.de = zext i32 %i.db to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.de
  %i.dg = load <2 x float>, ptr %i.cy, align 4, !tbaa !20
  %i.dh = load <2 x float>, ptr %i.da, align 4, !tbaa !20
  %i.di = load <2 x float>, ptr %i.dd, align 4, !tbaa !20
  %i.dj = load <2 x float>, ptr %i.df, align 4, !tbaa !20
  %i.dk = insertelement <4 x float> poison, float %.sroa.5.0, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dh, <2 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dn = fmul <4 x float> %i.dl, %i.dm
  %i.do = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dp = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dr = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.do, <4 x float> %i.dq, <4 x float> %i.dn) ; 4 uses
  %i.ds = extractelement <4 x float> %i.dr, i64 2
  %i.dt = fmul float %.sroa.12.0, %i.ds
  %i.du = extractelement <4 x float> %i.dr, i64 0
  %i.dv = tail call noundef float @llvm.fma.f32(float %i.du, float %.sroa.9.0, float %i.dt)
  %i.dw = extractelement <4 x float> %i.dr, i64 3
  %i.dx = fmul float %.sroa.12.0, %i.dw
  %i.dy = extractelement <4 x float> %i.dr, i64 1
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dy, float %.sroa.9.0, float %i.dx)
  %sext = shl i64 %.sroa.04.0.copyload, 32
  %i.ea = ashr exact i64 %sext, 30
  %i.eb = getelementptr inbounds i8, ptr %i.cr, i64 %i.ea ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cx
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.cz
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dc
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.de
  %4 = load <2 x float>, ptr %i.ec, align 4, !tbaa !20
  %5 = load <2 x float>, ptr %i.ed, align 4, !tbaa !20
  %6 = load <2 x float>, ptr %i.ee, align 4, !tbaa !20
  %7 = load <2 x float>, ptr %i.ef, align 4, !tbaa !20
  %8 = shufflevector <2 x float> %5, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = fmul <4 x float> %i.dl, %8
  %10 = shufflevector <2 x float> %4, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %10, <4 x float> %i.dq, <4 x float> %9) ; 4 uses
  %12 = extractelement <4 x float> %11, i64 2
  %i.eg = fmul float %.sroa.12.0, %12
  %13 = extractelement <4 x float> %11, i64 0
  %14 = tail call noundef float @llvm.fma.f32(float %13, float %.sroa.9.0, float %i.eg)
  %15 = extractelement <4 x float> %11, i64 3
  %i.eh = fmul float %.sroa.12.0, %15
  %16 = extractelement <4 x float> %11, i64 1
  %i.ei = tail call noundef float @llvm.fma.f32(float %16, float %.sroa.9.0, float %i.eh)
  %i.ej = fmul float %i.cf, %i.dz
  %i.ek = tail call noundef float @llvm.fma.f32(float %i.ch, float %i.dv, float %i.ej)
  %i.el = fmul float %i.cf, %i.ei
  %i.em = tail call noundef float @llvm.fma.f32(float %i.ch, float %14, float %i.el)
  %i.en = fmul float %i.cg, %i.em
  %i.eo = tail call noundef float @llvm.fma.f32(float %i.ci, float %i.ek, float %i.en)
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bw, align 8, !tbaa !20 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop100 = fmul <2 x float> %.sroa.0.0.copyload, %shift
  %i.ep = extractelement <2 x float> %foldExtExtBinop100, i64 0
  %i.eq = fmul float %i.ep, %i.eo
  ret float %i.eq
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt12MeasuredBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !36, !alias.scope !560
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !39, !alias.scope !560
  store i8 0, ptr %i.b, align 8, !tbaa !21, !alias.scope !560
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_16MeasuredBxDFDataEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(888) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_16MeasuredBxDFDataEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !560 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !21, !alias.scope !560
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKNS_16MeasuredBxDFDataEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36, !alias.scope !563
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !563
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !563
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.77, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !563 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21, !alias.scope !563
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.c

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, <2 x float> %1, float %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, i64 %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %8 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %9 = alloca %class.anon.78, align 8             ; 8 uses
  %10 = alloca %"class.pstd::optional", align 8   ; 8 uses
  %i.d = fcmp oeq float %2, 0.000000e+00
  br i1 %i.d, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.sroa.10.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.10.1, %bb.d ]
  %.sroa.047.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.047.1, %bb.d ]
  %i.k = uitofp i64 %4 to float
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fdiv <2 x float> %.sroa.047.0.lcssa, %i.m
  %i.o = fdiv <2 x float> %.sroa.10.0.lcssa, %i.m
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.071 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  %.sroa.047.070 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.047.1, %bb.d ] ; 3 uses
  %.sroa.10.069 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.071
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.071
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x float> %1, ptr %7, align 8, !noalias !569
  store float %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !569
  store <2 x float> %.sroa.05.0.copyload, ptr %8, align 8, !noalias !569
  store float %i.q, ptr %i.a, align 4, !tbaa !20, !noalias !569
  store i32 0, ptr %i.b, align 4, !tbaa !181, !noalias !569
  store i32 3, ptr %i.c, align 4, !tbaa !183, !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !569
  store ptr %7, ptr %9, align 8, !tbaa !185, !noalias !569
  store ptr %i.a, ptr %i.e, align 8, !tbaa !149, !noalias !569
  store ptr %8, ptr %i.f, align 8, !tbaa !187, !noalias !569
  store ptr %i.b, ptr %i.g, align 8, !tbaa !188, !noalias !569
  store ptr %i.c, ptr %i.h, align 8, !tbaa !188, !noalias !569
  %i.s = load i64, ptr %0, align 8, !tbaa !190, !noalias !570 ; 2 uses
  %i.t = and i64 %i.s, 144115188075855871
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = lshr i64 %i.s, 57
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add nsw i32 %i.w, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %10, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %i.u, i32 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = load i8, ptr %i.i, align 4, !tbaa !55, !range !56, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.d

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit:  ; preds = %bb.b
  %i.aa = load float, ptr %i.j, align 4, !tbaa !62 ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 8
  %i.ac = call noundef float @llvm.fabs.f32(float %.sroa.22.0.copyload)
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %10, align 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !21
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = fmul <2 x float> %i.ae, %.sroa.0.0.copyload.i
  %i.ag = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fdiv <2 x float> %i.af, %i.ah
  %i.aj = fadd <2 x float> %.sroa.047.070, %i.ai
  %i.ak = fmul <2 x float> %i.ae, %.sroa.6.0.copyload.i
  %i.al = fdiv <2 x float> %i.ak, %i.ah
  %i.am = fadd <2 x float> %.sroa.10.069, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, %bb.b
  %.sroa.10.1 = phi <2 x float> [ %i.am, %bb.c ], [ %.sroa.10.069, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit ], [ %.sroa.10.069, %bb.b ] ; 2 uses
  %.sroa.047.1 = phi <2 x float> [ %i.aj, %bb.c ], [ %.sroa.047.070, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit ], [ %.sroa.047.070, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.an = add nuw i64 %.071, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !568

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.066.0 = phi <2 x float> [ %i.n, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %.sroa.4.0 = phi <2 x float> [ %i.o, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.066.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoEN4pstd4spanIKNS_6Point2IfEEEENS2_IKfEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef readonly byval(%"class.pstd::span.53") align 8 captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %7 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_0
