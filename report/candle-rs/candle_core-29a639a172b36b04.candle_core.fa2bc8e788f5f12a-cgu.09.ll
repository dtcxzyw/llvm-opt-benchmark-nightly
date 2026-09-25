Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.09?download=true
inline.NumInlined: 1250
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants:bb.a
  br i1 %i.jj, label %bb.ag, label %bb.ad

bb.ag:                                            ; preds = %bb.af
  store i8 %i.iy, ptr %i.cz, align 1
  %i.jk = add i32 %.sroa.031.0212, 1
  br label %bb.ad

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89
  %.sroa.0.015.i = phi float [ %i.jy, %.lr.ph.i89 ], [ -0.000000e+00, %.lr.ph.i89.preheader ]
  %.sroa.02.014.i = phi i64 [ %i.jl, %.lr.ph.i89 ], [ 0, %.lr.ph.i89.preheader ] ; 3 uses
  %i.jl = add nuw nsw i64 %.sroa.02.014.i, 1      ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.02.014.i
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.02.014.i
  %.val12.i = load float, ptr %i.jm, align 4, !noalias !1478, !noundef !4 ; 2 uses
  %.val13.i = load float, ptr %i.jn, align 4, !noalias !1478, !noundef !4
  %i.jo = fmul float %i.cd, %.val12.i
  %i.jp = tail call float @llvm.round.f32(float %i.jo)
  %i.jq = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.jp)
  %i.jr = trunc i32 %i.jq to i8
  %i.js = tail call i8 @llvm.umin.i8(i8 %i.jr, i8 %1)
  %i.jt = uitofp i8 %i.js to float
  %i.ju = fmul float %i.ce, %i.jt
  %i.jv = fsub float %.val12.i, %i.ju             ; 2 uses
  %i.jw = fmul float %.val13.i, %i.jv
  %i.jx = fmul float %i.jv, %i.jw
  %i.jy = fadd float %.sroa.0.015.i, %i.jx        ; 3 uses
  %exitcond.not.i91 = icmp eq i64 %i.jl, %3
  br i1 %exitcond.not.i91, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterfEBX_EINtB6_7ZipImplBX_BX_E4foldfNCINvNtB8_3map8map_foldTRfB2i_EffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB3K_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit, label %.lr.ph.i89

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterfEBX_EINtB6_7ZipImplBX_BX_E4foldfNCINvNtB8_3map8map_foldTRfB2i_EffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB3K_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2z_.exit.loopexit: ; preds = %.lr.ph.i89
  %i.jz = fcmp olt float %i.jy, %.sroa.011.0.ph   ; 2 uses
  %.sroa.011.1 = select i1 %i.jz, float %i.jy, float %.sroa.011.0.ph
  %.sroa.05.1 = select i1 %i.jz, float %i.cd, float %.sroa.05.0.ph
  br label %.outer
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 3 uses
  %i.i = alloca [4 x i8], align 4                 ; 3 uses
  %.not.a = icmp eq i64 %0, 0
  br i1 %.not.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %0, 1
  %i.j = icmp eq i64 %0, 1
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %0, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.sroa.07.0208.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.07.1.1, %._crit_edge.unr-lcssa ]
  %.sroa.09.0207.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.09.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.097.0206.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.unr-lcssa ]
  %lcmp.mod605 = trunc i64 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod605)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.097.0206.epil.init
  %i.l = load float, ptr %i.k, align 4, !noundef !4 ; 2 uses
  %i.m = tail call float @llvm.fabs.f32(float %i.l) ; 2 uses
  %i.n = fcmp ogt float %i.m, %.sroa.09.0207.epil.init ; 2 uses
  %.sroa.09.1.epil = select i1 %i.n, float %i.m, float %.sroa.09.0207.epil.init
  %.sroa.07.1.epil = select i1 %i.n, float %i.l, float %.sroa.07.0208.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.sroa.09.1.lcssa = phi float [ %.sroa.09.1.1, %._crit_edge.unr-lcssa ], [ %.sroa.09.1.epil, %.lr.ph.epil.preheader ]
  %.sroa.07.1.lcssa = phi float [ %.sroa.07.1.1, %._crit_edge.unr-lcssa ], [ %.sroa.07.1.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.o = fcmp oeq float %.sroa.09.1.lcssa, 0.000000e+00
  br i1 %i.o, label %.lr.ph372.preheader, label %bb.b

.lr.ph372.preheader:                              ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %0, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.07.0208 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.sroa.07.1.1, %.lr.ph ]
  %.sroa.09.0207 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.sroa.09.1.1, %.lr.ph ] ; 2 uses
  %.sroa.097.0206 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.097.0206
  %i.q = load float, ptr %i.p, align 4, !noundef !4 ; 2 uses
  %i.r = tail call float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.s = fcmp ogt float %i.r, %.sroa.09.0207      ; 2 uses
  %.sroa.09.1 = select i1 %i.s, float %i.r, float %.sroa.09.0207 ; 2 uses
  %.sroa.07.1 = select i1 %i.s, float %i.q, float %.sroa.07.0208
  %i.t = add nuw i64 %.sroa.097.0206, 2           ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.097.0206
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !noundef !4 ; 2 uses
  %i.x = tail call float @llvm.fabs.f32(float %i.w) ; 2 uses
  %i.y = fcmp ogt float %i.x, %.sroa.09.1         ; 2 uses
  %.sroa.09.1.1 = select i1 %i.y, float %i.x, float %.sroa.09.1 ; 3 uses
  %.sroa.07.1.1 = select i1 %i.y, float %i.w, float %.sroa.07.1 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.z = sitofp i32 %1 to float                   ; 2 uses
  %i.aa = fneg float %i.z
  %i.ab = fdiv float %i.aa, %.sroa.07.1.lcssa     ; 6 uses
  %i.ac = icmp eq i32 %4, 0
  br i1 %i.ac, label %.lr.ph369, label %.lr.ph214

.lr.ph369:                                        ; preds = %bb.b
  %i.ad = sub i32 0, %1                           ; 9 uses
  %i.ae = add i32 %1, -1                          ; 6 uses
  %.not.i = icmp slt i32 %i.ae, %i.ad
  br i1 %.not.i, label %bb.c, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader, !prof !11

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader: ; preds = %.lr.ph369
  %min.iters.check575 = icmp ult i64 %0, 4
  br i1 %min.iters.check575, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593, label %vector.memcheck568

vector.memcheck568:                               ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader
  %scevgep569 = getelementptr i8, ptr %3, i64 %0
  %i.af = shl i64 %0, 2
  %scevgep570 = getelementptr i8, ptr %2, i64 %i.af
  %bound0571 = icmp ult ptr %3, %scevgep570
  %bound1572 = icmp ult ptr %2, %scevgep569
  %found.conflict573 = and i1 %bound0571, %bound1572
  br i1 %found.conflict573, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593, label %vector.ph576

vector.ph576:                                     ; preds = %vector.memcheck568
  %n.vec577 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert578 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat579 = shufflevector <4 x float> %broadcast.splatinsert578, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert580 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat581 = shufflevector <4 x i32> %broadcast.splatinsert580, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert582 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat583 = shufflevector <4 x i32> %broadcast.splatinsert582, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert584 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat585 = shufflevector <4 x i32> %broadcast.splatinsert584, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body586

vector.body586:                                   ; preds = %vector.body586, %vector.ph576
  %index587 = phi i64 [ 0, %vector.ph576 ], [ %index.next589, %vector.body586 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index587
  %wide.load588 = load <4 x float>, ptr %i.ag, align 4, !alias.scope !1510
  %i.ah = fmul <4 x float> %broadcast.splat579, %wide.load588
  %i.ai = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ah)
  %i.aj = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.ai) ; 2 uses
  %i.ak = icmp slt <4 x i32> %i.aj, %broadcast.splat581
  %i.al = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aj, <4 x i32> %broadcast.splat583)
  %i.am = select <4 x i1> %i.ak, <4 x i32> %broadcast.splat581, <4 x i32> %i.al
  %i.an = add <4 x i32> %i.am, %broadcast.splat585
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %index587
  %i.ap = trunc <4 x i32> %i.an to <4 x i8>
  store <4 x i8> %i.ap, ptr %i.ao, align 1, !alias.scope !1511, !noalias !1510
  %index.next589 = add nuw i64 %index587, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next589, %n.vec577
  br i1 %i.aq, label %middle.block590, label %vector.body586, !llvm.loop !1482

middle.block590:                                  ; preds = %vector.body586
  %cmp.n591 = icmp eq i64 %0, %n.vec577
  br i1 %cmp.n591, label %._crit_edge370, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593: ; preds = %vector.memcheck568, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader, %middle.block590
  %.sroa.0101.0368.ph = phi i64 [ 0, %vector.memcheck568 ], [ 0, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader ], [ %n.vec577, %middle.block590 ] ; 5 uses
  %.neg623.a = or disjoint i64 %.sroa.0101.0368.ph, 1
  %xtraiter618.a = and i64 %0, 1
  %lcmp.mod619.not.a = icmp eq i64 %xtraiter618.a, 0
  br i1 %lcmp.mod619.not.a, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0101.0368.ph
  %i.as = load float, ptr %i.ar, align 4, !noundef !4
  %i.at = fmul float %i.ab, %i.as
  %i.au = tail call float @llvm.round.f32(float %i.at)
  %i.av = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.au) ; 2 uses
  %i.aw = or disjoint i64 %.sroa.0101.0368.ph, 1
  %i.ax = icmp slt i32 %i.av, %i.ad
  %..i.prol = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ae)
  %.sroa.0.0.i.prol = select i1 %i.ax, i32 %i.ad, i32 %..i.prol
  %i.ay = add i32 %.sroa.0.0.i.prol, %1
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0101.0368.ph
  %i.ba = trunc i32 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593
  %.sroa.0101.0368.unr = phi i64 [ %.sroa.0101.0368.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.preheader593 ], [ %i.aw, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol ]
  %i.bb = icmp eq i64 %0, %.neg623.a
  br i1 %i.bb, label %._crit_edge370, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit

.lr.ph214:                                        ; preds = %bb.b
  %i.bc = srem i32 %4, 2                          ; 3 uses
  %i.bd = sub i32 0, %1                           ; 52 uses
  %i.be = add i32 %1, -1                          ; 30 uses
  %.not.i128 = icmp slt i32 %i.be, %i.bd
  %i.bf = icmp eq ptr %5, null
  %i.bg = icmp eq i32 %i.bc, 1
  br i1 %.not.i128, label %bb.d, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133, !prof !11

._crit_edge370:                                   ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit, %middle.block590
  %i.bh = fdiv float 1.000000e+00, %i.ab
  br label %.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit
  %.sroa.0101.0368 = phi i64 [ %i.bx, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit ], [ %.sroa.0101.0368.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0101.0368
  %i.bj = load float, ptr %i.bi, align 4, !noundef !4
  %i.bk = fmul float %i.ab, %i.bj
  %i.bl = tail call float @llvm.round.f32(float %i.bk)
  %i.bm = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.bl) ; 2 uses
  %i.bn = add nuw i64 %.sroa.0101.0368, 1         ; 2 uses
  %i.bo = icmp slt i32 %i.bm, %i.ad
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.ae)
  %.sroa.0.0.i = select i1 %i.bo, i32 %i.ad, i32 %..i
  %i.bp = add i32 %.sroa.0.0.i, %1
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0101.0368
  %i.br = trunc i32 %i.bp to i8
  store i8 %i.br, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bn
  %i.bt = load float, ptr %i.bs, align 4, !noundef !4
  %i.bu = fmul float %i.ab, %i.bt
  %i.bv = tail call float @llvm.round.f32(float %i.bu)
  %i.bw = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.bv) ; 2 uses
  %i.bx = add nuw i64 %.sroa.0101.0368, 2         ; 2 uses
  %i.by = icmp slt i32 %i.bw, %i.ad
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.ae)
  %.sroa.0.0.i.1 = select i1 %i.by, i32 %i.ad, i32 %..i.1
  %i.bz = add i32 %.sroa.0.0.i.1, %1
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %i.bn
  %i.cb = trunc i32 %i.bz to i8
  store i8 %i.cb, ptr %i.ca, align 1
  %exitcond410.not.1 = icmp eq i64 %i.bx, %0
  br i1 %exitcond410.not.1, label %._crit_edge370, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit, !llvm.loop !1483

bb.c:                                             ; preds = %.lr.ph369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1512
  store i32 %i.ad, ptr %i.i, align 4, !noalias !1512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1512
  store i32 %i.ae, ptr %i.h, align 4, !noalias !1512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1512
  store ptr %i.i, ptr %i.g, align 8, !noalias !1512
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.cc, align 8, !noalias !1512
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1512
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #32
  unreachable

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133: ; preds = %.lr.ph214, %bb.bp
  %.sroa.021.0212 = phi float [ %i.vv, %bb.bp ], [ 0.000000e+00, %.lr.ph214 ]
  %.sroa.031.0211 = phi float [ %i.vy, %bb.bp ], [ 0.000000e+00, %.lr.ph214 ]
  %.sroa.0103.0210 = phi i64 [ %i.cd, %bb.bp ], [ 0, %.lr.ph214 ] ; 4 uses
  %i.cd = add nuw i64 %.sroa.0103.0210, 1         ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0103.0210
  %i.cf = load float, ptr %i.ce, align 4, !noundef !4 ; 4 uses
  %i.cg = fmul float %i.ab, %i.cf
  %i.ch = tail call float @llvm.round.f32(float %i.cg)
  %i.ci = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.ch) ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.bd
  %..i129 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.be)
  %.sroa.0.0.i130 = select i1 %i.cj, i32 %i.bd, i32 %..i129 ; 2 uses
  %i.ck = add i32 %.sroa.0.0.i130, %1
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0103.0210
  %i.cm = trunc i32 %i.ck to i8
  store i8 %i.cm, ptr %i.cl, align 1
  br i1 %i.bf, label %bb.bo, label %bb.bn

bb.d:                                             ; preds = %.lr.ph214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1513
  store i32 %i.bd, ptr %i.f, align 4, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1513
  store i32 %i.be, ptr %i.e, align 4, !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1513
  store ptr %i.f, ptr %i.d, align 8, !noalias !1513
  %.sroa.43.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i131, align 8, !noalias !1513
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.cn, align 8, !noalias !1513
  %.sroa.47.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i132, align 8, !noalias !1513
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #32
  unreachable

.lr.ph223:                                        ; preds = %bb.bp
  %i.co = fdiv float %i.vv, %i.vy                 ; 4 uses
  %i.cp = fmul float %i.vv, %i.co                 ; 3 uses
  %.not.i134 = icmp slt i32 %i.be, %i.bd
  %i.cq = icmp eq ptr %5, null                    ; 9 uses
  %i.cr = icmp eq i32 %i.bc, 1                    ; 8 uses
  %i.cs = fdiv float 1.000000e+00, %i.co          ; 5 uses
  br i1 %.not.i134, label %bb.as, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139, !prof !11

.lr.ph243.us:                                     ; preds = %.lr.ph243.us.preheader.preheader, %bb.l
  %.sroa.0.3241.us = phi float [ %.sroa.0.8.us, %bb.l ], [ %.sroa.0.1.us482.ph, %.lr.ph243.us.preheader.preheader ] ; 4 uses
  %.sroa.021.3240.us = phi float [ %.sroa.021.4.us, %bb.l ], [ %.sroa.021.2.us481.ph, %.lr.ph243.us.preheader.preheader ] ; 7 uses
  %.sroa.031.3239.us = phi float [ %.sroa.031.4.us, %bb.l ], [ %.sroa.031.2.us480.ph, %.lr.ph243.us.preheader.preheader ] ; 6 uses
  %.sroa.041.3238.us = phi float [ %.sroa.041.6.us, %bb.l ], [ %.sroa.041.1.us479.ph, %.lr.ph243.us.preheader.preheader ] ; 4 uses
  %.sroa.062.0237.us = phi i32 [ %.sroa.062.1.us, %bb.l ], [ 0, %.lr.ph243.us.preheader.preheader ] ; 5 uses
  %.sroa.0113.0236.us284 = phi i64 [ %i.ct, %bb.l ], [ 0, %.lr.ph243.us.preheader.preheader ] ; 4 uses
  %i.ct = add nuw i64 %.sroa.0113.0236.us284, 1   ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0113.0236.us284
  %i.cv = load float, ptr %i.cu, align 4, !noundef !4 ; 4 uses
  br i1 %i.cq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph243.us
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0113.0236.us284
  %i.cx = load float, ptr %i.cw, align 4, !noundef !4
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph243.us
  br i1 %i.cr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cy = fmul float %i.cv, %i.cv
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.066.0.us = phi float [ %i.cy, %bb.g ], [ %i.cx, %bb.e ], [ 1.000000e+00, %bb.f ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0113.0236.us284 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !noundef !4
  %i.db = sext i8 %i.da to i32
  %i.dc = sub i32 %i.db, %1                       ; 2 uses
  %i.dd = fmul float %i.cv, %.sroa.066.0.us       ; 2 uses
  %i.de = sitofp i32 %i.dc to float               ; 3 uses
  %i.df = fmul float %i.dd, %i.de
  %i.dg = fsub float %.sroa.021.3240.us, %i.df    ; 3 uses
  %i.dh = fcmp ogt float %i.dg, 0.000000e+00
  br i1 %i.dh, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us, label %bb.l

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us: ; preds = %bb.h
  %i.di = fmul float %.sroa.066.0.us, %i.de
  %i.dj = fmul float %i.di, %i.de
  %i.dk = fsub float %.sroa.031.3239.us, %i.dj    ; 2 uses
  %i.dl = fmul float %i.cv, %i.dk
  %i.dm = fdiv float %i.dl, %i.dg
  %i.dn = tail call float @llvm.round.f32(float %i.dm)
  %i.do = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.dn) ; 2 uses
  %i.dp = icmp slt i32 %i.do, %i.bd
  %..i159.us = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.be)
  %.sroa.0.0.i160.us = select i1 %i.dp, i32 %i.bd, i32 %..i159.us ; 3 uses
  %.not.us = icmp eq i32 %.sroa.0.0.i160.us, %i.dc
  br i1 %.not.us, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us
  %i.dq = sitofp i32 %.sroa.0.0.i160.us to float  ; 3 uses
  %i.dr = fmul float %i.dd, %i.dq
  %i.ds = fadd float %i.dg, %i.dr                 ; 5 uses
  %i.dt = fmul float %.sroa.066.0.us, %i.dq
  %i.du = fmul float %i.dt, %i.dq
  %i.dv = fadd float %i.dk, %i.du                 ; 4 uses
  %i.dw = fcmp ogt float %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dx = fmul float %i.ds, %i.ds
  %i.dy = fmul float %.sroa.031.3239.us, %i.dx
  %i.dz = fmul float %.sroa.021.3240.us, %.sroa.021.3240.us
  %i.ea = fmul float %i.dz, %i.dv
  %i.eb = fcmp ogt float %i.dy, %i.ea
  br i1 %i.eb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ec = add i32 %.sroa.0.0.i160.us, %1
  %i.ed = trunc i32 %i.ec to i8
  store i8 %i.ed, ptr %i.cz, align 1
  %i.ee = fdiv float %i.ds, %i.dv                 ; 2 uses
  %i.ef = fmul float %i.ds, %i.ee
  %i.eg = add i32 %.sroa.062.0237.us, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us, %bb.h
  %.sroa.062.1.us = phi i32 [ %i.eg, %bb.k ], [ %.sroa.062.0237.us, %bb.j ], [ %.sroa.062.0237.us, %bb.i ], [ %.sroa.062.0237.us, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us ], [ %.sroa.062.0237.us, %bb.h ] ; 2 uses
  %.sroa.041.6.us = phi float [ %i.ef, %bb.k ], [ %.sroa.041.3238.us, %bb.j ], [ %.sroa.041.3238.us, %bb.i ], [ %.sroa.041.3238.us, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us ], [ %.sroa.041.3238.us, %bb.h ] ; 3 uses
  %.sroa.031.4.us = phi float [ %i.dv, %bb.k ], [ %.sroa.031.3239.us, %bb.j ], [ %.sroa.031.3239.us, %bb.i ], [ %.sroa.031.3239.us, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us ], [ %.sroa.031.3239.us, %bb.h ] ; 2 uses
  %.sroa.021.4.us = phi float [ %i.ds, %bb.k ], [ %.sroa.021.3240.us, %bb.j ], [ %.sroa.021.3240.us, %bb.i ], [ %.sroa.021.3240.us, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us ], [ %.sroa.021.3240.us, %bb.h ] ; 2 uses
  %.sroa.0.8.us = phi float [ %i.ee, %bb.k ], [ %.sroa.0.3241.us, %bb.j ], [ %.sroa.0.3241.us, %bb.i ], [ %.sroa.0.3241.us, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us ], [ %.sroa.0.3241.us, %bb.h ] ; 3 uses
  %exitcond399.not = icmp eq i64 %i.ct, %0
  br i1 %exitcond399.not, label %._crit_edge244.split.us285, label %.lr.ph243.us

._crit_edge244.split.us285:                       ; preds = %bb.l
  %i.eh = icmp eq i32 %.sroa.062.1.us, 0
  br i1 %i.eh, label %.split293.us, label %.lr.ph243.us.1

.lr.ph243.us.1:                                   ; preds = %._crit_edge244.split.us285, %bb.t
  %.sroa.0.3241.us.1 = phi float [ %.sroa.0.8.us.1, %bb.t ], [ %.sroa.0.8.us, %._crit_edge244.split.us285 ] ; 4 uses
  %.sroa.021.3240.us.1 = phi float [ %.sroa.021.4.us.1, %bb.t ], [ %.sroa.021.4.us, %._crit_edge244.split.us285 ] ; 7 uses
  %.sroa.031.3239.us.1 = phi float [ %.sroa.031.4.us.1, %bb.t ], [ %.sroa.031.4.us, %._crit_edge244.split.us285 ] ; 6 uses
  %.sroa.041.3238.us.1 = phi float [ %.sroa.041.6.us.1, %bb.t ], [ %.sroa.041.6.us, %._crit_edge244.split.us285 ] ; 4 uses
  %.sroa.062.0237.us.1 = phi i32 [ %.sroa.062.1.us.1, %bb.t ], [ 0, %._crit_edge244.split.us285 ] ; 5 uses
  %.sroa.0113.0236.us284.1 = phi i64 [ %i.ei, %bb.t ], [ 0, %._crit_edge244.split.us285 ] ; 4 uses
  %i.ei = add nuw i64 %.sroa.0113.0236.us284.1, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0113.0236.us284.1
  %i.ek = load float, ptr %i.ej, align 4, !noundef !4 ; 4 uses
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph243.us.1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0113.0236.us284.1
  %i.em = load float, ptr %i.el, align 4, !noundef !4
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph243.us.1
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.en = fmul float %i.ek, %i.ek
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.066.0.us.1 = phi float [ %i.en, %bb.o ], [ %i.em, %bb.m ], [ 1.000000e+00, %bb.n ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0113.0236.us284.1 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !noundef !4
  %i.eq = sext i8 %i.ep to i32
  %i.er = sub i32 %i.eq, %1                       ; 2 uses
  %i.es = fmul float %i.ek, %.sroa.066.0.us.1     ; 2 uses
  %i.et = sitofp i32 %i.er to float               ; 3 uses
  %i.eu = fmul float %i.es, %i.et
  %i.ev = fsub float %.sroa.021.3240.us.1, %i.eu  ; 3 uses
  %i.ew = fcmp ogt float %i.ev, 0.000000e+00
  br i1 %i.ew, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1, label %bb.t

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1: ; preds = %bb.p
  %i.ex = fmul float %.sroa.066.0.us.1, %i.et
  %i.ey = fmul float %i.ex, %i.et
  %i.ez = fsub float %.sroa.031.3239.us.1, %i.ey  ; 2 uses
  %i.fa = fmul float %i.ek, %i.ez
  %i.fb = fdiv float %i.fa, %i.ev
  %i.fc = tail call float @llvm.round.f32(float %i.fb)
  %i.fd = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.fc) ; 2 uses
  %i.fe = icmp slt i32 %i.fd, %i.bd
  %..i159.us.1 = tail call i32 @llvm.smin.i32(i32 %i.fd, i32 %i.be)
  %.sroa.0.0.i160.us.1 = select i1 %i.fe, i32 %i.bd, i32 %..i159.us.1 ; 3 uses
  %.not.us.1 = icmp eq i32 %.sroa.0.0.i160.us.1, %i.er
  br i1 %.not.us.1, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1
  %i.ff = sitofp i32 %.sroa.0.0.i160.us.1 to float ; 3 uses
  %i.fg = fmul float %i.es, %i.ff
  %i.fh = fadd float %i.ev, %i.fg                 ; 5 uses
  %i.fi = fmul float %.sroa.066.0.us.1, %i.ff
  %i.fj = fmul float %i.fi, %i.ff
  %i.fk = fadd float %i.ez, %i.fj                 ; 4 uses
  %i.fl = fcmp ogt float %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fm = fmul float %i.fh, %i.fh
  %i.fn = fmul float %.sroa.031.3239.us.1, %i.fm
  %i.fo = fmul float %.sroa.021.3240.us.1, %.sroa.021.3240.us.1
  %i.fp = fmul float %i.fo, %i.fk
  %i.fq = fcmp ogt float %i.fn, %i.fp
  br i1 %i.fq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fr = add i32 %.sroa.0.0.i160.us.1, %1
  %i.fs = trunc i32 %i.fr to i8
  store i8 %i.fs, ptr %i.eo, align 1
  %i.ft = fdiv float %i.fh, %i.fk                 ; 2 uses
  %i.fu = fmul float %i.fh, %i.ft
  %i.fv = add i32 %.sroa.062.0237.us.1, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1, %bb.p
  %.sroa.062.1.us.1 = phi i32 [ %i.fv, %bb.s ], [ %.sroa.062.0237.us.1, %bb.r ], [ %.sroa.062.0237.us.1, %bb.q ], [ %.sroa.062.0237.us.1, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1 ], [ %.sroa.062.0237.us.1, %bb.p ] ; 2 uses
  %.sroa.041.6.us.1 = phi float [ %i.fu, %bb.s ], [ %.sroa.041.3238.us.1, %bb.r ], [ %.sroa.041.3238.us.1, %bb.q ], [ %.sroa.041.3238.us.1, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1 ], [ %.sroa.041.3238.us.1, %bb.p ] ; 3 uses
  %.sroa.031.4.us.1 = phi float [ %i.fk, %bb.s ], [ %.sroa.031.3239.us.1, %bb.r ], [ %.sroa.031.3239.us.1, %bb.q ], [ %.sroa.031.3239.us.1, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1 ], [ %.sroa.031.3239.us.1, %bb.p ] ; 2 uses
  %.sroa.021.4.us.1 = phi float [ %i.fh, %bb.s ], [ %.sroa.021.3240.us.1, %bb.r ], [ %.sroa.021.3240.us.1, %bb.q ], [ %.sroa.021.3240.us.1, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1 ], [ %.sroa.021.3240.us.1, %bb.p ] ; 2 uses
  %.sroa.0.8.us.1 = phi float [ %i.ft, %bb.s ], [ %.sroa.0.3241.us.1, %bb.r ], [ %.sroa.0.3241.us.1, %bb.q ], [ %.sroa.0.3241.us.1, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.1 ], [ %.sroa.0.3241.us.1, %bb.p ] ; 3 uses
  %exitcond399.not.1.a = icmp eq i64 %i.ei, %0
  br i1 %exitcond399.not.1.a, label %._crit_edge244.split.us285.1, label %.lr.ph243.us.1

._crit_edge244.split.us285.1:                     ; preds = %bb.t
  %i.fw = icmp eq i32 %.sroa.062.1.us.1, 0
  br i1 %i.fw, label %.split293.us, label %.lr.ph243.us.2

.lr.ph243.us.2:                                   ; preds = %._crit_edge244.split.us285.1, %bb.ab
  %.sroa.0.3241.us.2 = phi float [ %.sroa.0.8.us.2, %bb.ab ], [ %.sroa.0.8.us.1, %._crit_edge244.split.us285.1 ] ; 4 uses
  %.sroa.021.3240.us.2 = phi float [ %.sroa.021.4.us.2, %bb.ab ], [ %.sroa.021.4.us.1, %._crit_edge244.split.us285.1 ] ; 7 uses
  %.sroa.031.3239.us.2 = phi float [ %.sroa.031.4.us.2, %bb.ab ], [ %.sroa.031.4.us.1, %._crit_edge244.split.us285.1 ] ; 6 uses
  %.sroa.041.3238.us.2 = phi float [ %.sroa.041.6.us.2, %bb.ab ], [ %.sroa.041.6.us.1, %._crit_edge244.split.us285.1 ] ; 4 uses
  %.sroa.062.0237.us.2 = phi i32 [ %.sroa.062.1.us.2, %bb.ab ], [ 0, %._crit_edge244.split.us285.1 ] ; 5 uses
  %.sroa.0113.0236.us284.2 = phi i64 [ %i.fx, %bb.ab ], [ 0, %._crit_edge244.split.us285.1 ] ; 4 uses
  %i.fx = add nuw i64 %.sroa.0113.0236.us284.2, 1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0113.0236.us284.2
  %i.fz = load float, ptr %i.fy, align 4, !noundef !4 ; 4 uses
  br i1 %i.cq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph243.us.2
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0113.0236.us284.2
  %i.gb = load float, ptr %i.ga, align 4, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants:bb.a
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0107.0218.2
  %i.pa = load float, ptr %i.oz, align 4, !noundef !4 ; 4 uses
  %i.pb = fmul float %i.ox, %i.pa
  %i.pc = tail call float @llvm.round.f32(float %i.pb)
  %i.pd = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.pc) ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %i.bd
  %..i135.2 = tail call i32 @llvm.smin.i32(i32 %i.pd, i32 %i.be)
  %.sroa.0.0.i136.2 = select i1 %i.pe, i32 %i.bd, i32 %..i135.2 ; 2 uses
  %i.pf = add i32 %.sroa.0.0.i136.2, %1
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0107.0218.2
  %i.ph = load i8, ptr %i.pg, align 1, !noundef !4
  %i.pi = sext i8 %i.ph to i32
  %.not127.2 = icmp ne i32 %i.pf, %i.pi
  %spec.select.2 = select i1 %.not127.2, i1 true, i1 %.sroa.053.0219.2 ; 2 uses
  br i1 %i.cq, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0107.0218.2
  %i.pk = load float, ptr %i.pj, align 4, !noundef !4
  br label %bb.bc

bb.ba:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2
  br i1 %i.cr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pl = fmul float %i.pa, %i.pa
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.056.0.2 = phi float [ %i.pl, %bb.bb ], [ %i.pk, %bb.az ], [ 1.000000e+00, %bb.ba ] ; 2 uses
  %i.pm = sitofp i32 %.sroa.0.0.i136.2 to float   ; 3 uses
  %i.pn = fmul float %i.pa, %.sroa.056.0.2
  %i.po = fmul float %i.pn, %i.pm
  %i.pp = fadd float %.sroa.045.0221.2, %i.po     ; 6 uses
  %i.pq = fmul float %.sroa.056.0.2, %i.pm
  %i.pr = fmul float %i.pq, %i.pm
  %i.ps = fadd float %.sroa.049.0220.2, %i.pr     ; 5 uses
  %exitcond396.2.not = icmp eq i64 %i.oy, %0
  br i1 %exitcond396.2.not, label %._crit_edge224.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2

._crit_edge224.2:                                 ; preds = %bb.bc
  %i.pt = fcmp une float %i.ps, 0.000000e+00
  %or.cond.not.2 = select i1 %spec.select.2, i1 %i.pt, i1 false
  br i1 %or.cond.not.2, label %bb.bd, label %.lr.ph243.us.preheader.preheader

bb.bd:                                            ; preds = %._crit_edge224.2
  %i.pu = fmul float %i.pp, %i.pp
  %i.pv = fmul float %i.ow, %i.ps
  %i.pw = fcmp ugt float %i.pu, %i.pv
  br i1 %i.pw, label %.lr.ph229.2, label %.lr.ph243.us.preheader.preheader

.lr.ph229.2:                                      ; preds = %bb.bd
  %min.iters.check525 = icmp ult i64 %0, 4
  br i1 %min.iters.check525, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader, label %vector.memcheck518

vector.memcheck518:                               ; preds = %.lr.ph229.2
  %scevgep519 = getelementptr i8, ptr %3, i64 %0
  %i.px = shl i64 %0, 2
  %scevgep520 = getelementptr i8, ptr %2, i64 %i.px
  %bound0521 = icmp ult ptr %3, %scevgep520
  %bound1522 = icmp ult ptr %2, %scevgep519
  %found.conflict523 = and i1 %bound0521, %bound1522
  br i1 %found.conflict523, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader, label %vector.ph526

vector.ph526:                                     ; preds = %vector.memcheck518
  %n.vec527 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert528 = insertelement <4 x float> poison, float %i.ox, i64 0
  %broadcast.splat529 = shufflevector <4 x float> %broadcast.splatinsert528, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert532 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat533 = shufflevector <4 x i32> %broadcast.splatinsert532, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert534 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat535 = shufflevector <4 x i32> %broadcast.splatinsert534, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph526
  %index537 = phi i64 [ 0, %vector.ph526 ], [ %index.next539, %vector.body536 ] ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index537
  %wide.load538 = load <4 x float>, ptr %i.py, align 4, !alias.scope !1519
  %i.pz = fmul <4 x float> %broadcast.splat529, %wide.load538
  %i.qa = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.pz)
  %i.qb = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.qa) ; 2 uses
  %i.qc = icmp slt <4 x i32> %i.qb, %broadcast.splat531
  %i.qd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qb, <4 x i32> %broadcast.splat533)
  %i.qe = select <4 x i1> %i.qc, <4 x i32> %broadcast.splat531, <4 x i32> %i.qd
  %i.qf = add <4 x i32> %i.qe, %broadcast.splat535
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 %index537
  %i.qh = trunc <4 x i32> %i.qf to <4 x i8>
  store <4 x i8> %i.qh, ptr %i.qg, align 1, !alias.scope !1520, !noalias !1519
  %index.next539 = add nuw i64 %index537, 4       ; 2 uses
  %i.qi = icmp eq i64 %index.next539, %n.vec527
  br i1 %i.qi, label %middle.block540, label %vector.body536, !llvm.loop !1502

middle.block540:                                  ; preds = %vector.body536
  %cmp.n541 = icmp eq i64 %0, %n.vec527
  br i1 %cmp.n541, label %._crit_edge230.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader: ; preds = %vector.memcheck518, %.lr.ph229.2, %middle.block540
  %.sroa.0109.0228.2.ph = phi i64 [ 0, %vector.memcheck518 ], [ 0, %.lr.ph229.2 ], [ %n.vec527, %middle.block540 ] ; 5 uses
  %.neg621 = or disjoint i64 %.sroa.0109.0228.2.ph, 1
  %xtraiter614 = and i64 %0, 1
  %lcmp.mod615.not = icmp eq i64 %xtraiter614, 0
  br i1 %lcmp.mod615.not, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.2.ph
  %i.qk = load float, ptr %i.qj, align 4, !noundef !4
  %i.ql = fmul float %i.ox, %i.qk
  %i.qm = tail call float @llvm.round.f32(float %i.ql)
  %i.qn = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.qm) ; 2 uses
  %i.qo = or disjoint i64 %.sroa.0109.0228.2.ph, 1
  %i.qp = icmp slt i32 %i.qn, %i.bd
  %..i141.2.prol = tail call i32 @llvm.smin.i32(i32 %i.qn, i32 %i.be)
  %.sroa.0.0.i142.2.prol = select i1 %i.qp, i32 %i.bd, i32 %..i141.2.prol
  %i.qq = add i32 %.sroa.0.0.i142.2.prol, %1
  %i.qr = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.2.ph
  %i.qs = trunc i32 %i.qq to i8
  store i8 %i.qs, ptr %i.qr, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader
  %.sroa.0109.0228.2.unr = phi i64 [ %.sroa.0109.0228.2.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader ], [ %i.qo, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol ]
  %i.qt = icmp eq i64 %0, %.neg621
  br i1 %i.qt, label %._crit_edge230.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2
  %.sroa.0109.0228.2 = phi i64 [ %i.rj, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2 ], [ %.sroa.0109.0228.2.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit ] ; 4 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.2
  %i.qv = load float, ptr %i.qu, align 4, !noundef !4
  %i.qw = fmul float %i.ox, %i.qv
  %i.qx = tail call float @llvm.round.f32(float %i.qw)
  %i.qy = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.qx) ; 2 uses
  %i.qz = add nuw i64 %.sroa.0109.0228.2, 1       ; 2 uses
  %i.ra = icmp slt i32 %i.qy, %i.bd
  %..i141.2 = tail call i32 @llvm.smin.i32(i32 %i.qy, i32 %i.be)
  %.sroa.0.0.i142.2 = select i1 %i.ra, i32 %i.bd, i32 %..i141.2
  %i.rb = add i32 %.sroa.0.0.i142.2, %1
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.2
  %i.rd = trunc i32 %i.rb to i8
  store i8 %i.rd, ptr %i.rc, align 1
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qz
  %i.rf = load float, ptr %i.re, align 4, !noundef !4
  %i.rg = fmul float %i.ox, %i.rf
  %i.rh = tail call float @llvm.round.f32(float %i.rg)
  %i.ri = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.rh) ; 2 uses
  %i.rj = add nuw i64 %.sroa.0109.0228.2, 2       ; 2 uses
  %i.rk = icmp slt i32 %i.ri, %i.bd
  %..i141.2.1 = tail call i32 @llvm.smin.i32(i32 %i.ri, i32 %i.be)
  %.sroa.0.0.i142.2.1 = select i1 %i.rk, i32 %i.bd, i32 %..i141.2.1
  %i.rl = add i32 %.sroa.0.0.i142.2.1, %1
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 %i.qz
  %i.rn = trunc i32 %i.rl to i8
  store i8 %i.rn, ptr %i.rm, align 1
  %exitcond397.2.not.1 = icmp eq i64 %i.rj, %0
  br i1 %exitcond397.2.not.1, label %._crit_edge230.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2, !llvm.loop !1503

._crit_edge230.2:                                 ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2, %middle.block540
  %i.ro = fdiv float %i.pp, %i.ps                 ; 2 uses
  %i.rp = fmul float %i.pp, %i.ro
  br label %.lr.ph243.us.preheader.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145
  %.sroa.0109.0228 = phi i64 [ %i.sf, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145 ], [ %.sroa.0109.0228.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit ] ; 4 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228
  %i.rr = load float, ptr %i.rq, align 4, !noundef !4
  %i.rs = fmul float %i.cs, %i.rr
  %i.rt = tail call float @llvm.round.f32(float %i.rs)
  %i.ru = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.rt) ; 2 uses
  %i.rv = add nuw i64 %.sroa.0109.0228, 1         ; 2 uses
  %i.rw = icmp slt i32 %i.ru, %i.bd
  %..i141 = tail call i32 @llvm.smin.i32(i32 %i.ru, i32 %i.be)
  %.sroa.0.0.i142 = select i1 %i.rw, i32 %i.bd, i32 %..i141
  %i.rx = add i32 %.sroa.0.0.i142, %1
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228
  %i.rz = trunc i32 %i.rx to i8
  store i8 %i.rz, ptr %i.ry, align 1
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.rv
  %i.sb = load float, ptr %i.sa, align 4, !noundef !4
  %i.sc = fmul float %i.cs, %i.sb
  %i.sd = tail call float @llvm.round.f32(float %i.sc)
  %i.se = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.sd) ; 2 uses
  %i.sf = add nuw i64 %.sroa.0109.0228, 2         ; 2 uses
  %i.sg = icmp slt i32 %i.se, %i.bd
  %..i141.1609 = tail call i32 @llvm.smin.i32(i32 %i.se, i32 %i.be)
  %.sroa.0.0.i142.1610 = select i1 %i.sg, i32 %i.bd, i32 %..i141.1609
  %i.sh = add i32 %.sroa.0.0.i142.1610, %1
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 %i.rv
  %i.sj = trunc i32 %i.sh to i8
  store i8 %i.sj, ptr %i.si, align 1
  %exitcond397.not.1 = icmp eq i64 %i.sf, %0
  br i1 %exitcond397.not.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145, !llvm.loop !1504

.split293.us:                                     ; preds = %bb.ar, %._crit_edge244.split.us285.3, %._crit_edge244.split.us285.2, %._crit_edge244.split.us285.1, %._crit_edge244.split.us285
  %.sroa.041.6.us.lcssa.lcssa = phi float [ %.sroa.041.6.us, %._crit_edge244.split.us285 ], [ %.sroa.041.6.us.1, %._crit_edge244.split.us285.1 ], [ %.sroa.041.6.us.2, %._crit_edge244.split.us285.2 ], [ %.sroa.041.6.us.3, %._crit_edge244.split.us285.3 ], [ %.sroa.041.6.us.4, %bb.ar ]
  %.sroa.0.8.us.lcssa.lcssa = phi float [ %.sroa.0.8.us, %._crit_edge244.split.us285 ], [ %.sroa.0.8.us.1, %._crit_edge244.split.us285.1 ], [ %.sroa.0.8.us.2, %._crit_edge244.split.us285.2 ], [ %.sroa.0.8.us.3, %._crit_edge244.split.us285.3 ], [ %.sroa.0.8.us.4, %bb.ar ] ; 2 uses
  %i.sk = icmp slt i32 %4, 3
  br i1 %i.sk, label %.loopexit, label %.outer.preheader

.outer.preheader:                                 ; preds = %.split293.us
  %.not = icmp eq i32 %i.bc, 0
  %scevgep544 = getelementptr i8, ptr %3, i64 %0
  %i.sl = shl i64 %0, 2
  %scevgep545 = getelementptr i8, ptr %2, i64 %i.sl
  %min.iters.check550 = icmp ult i64 %0, 4
  %bound0546 = icmp ult ptr %3, %scevgep545
  %bound1547 = icmp ult ptr %2, %scevgep544
  %found.conflict548 = and i1 %bound0546, %bound1547
  %n.vec552 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert555.a = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat556.a = shufflevector <4 x i32> %broadcast.splatinsert555.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert557 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat558 = shufflevector <4 x i32> %broadcast.splatinsert557, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat560 = shufflevector <4 x i32> %broadcast.splatinsert559, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n566 = icmp eq i64 %0, %n.vec552
  %xtraiter616 = and i64 %0, 1
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br label %.lr.ph361

.loopexit:                                        ; preds = %._crit_edge362.thread, %bb.a, %.lr.ph372.preheader, %._crit_edge370, %.split293.us
  %.sroa.0.5 = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.0.8.us.lcssa.lcssa, %.split293.us ], [ %i.bh, %._crit_edge370 ], [ 0.000000e+00, %.lr.ph372.preheader ], [ %.sroa.0.6, %._crit_edge362.thread ]
  ret float %.sroa.0.5

._crit_edge362:                                   ; preds = %bb.bh
  %i.sm = fcmp ogt float %i.ve, 0.000000e+00
  br i1 %i.sm, label %bb.be, label %._crit_edge362.thread

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151: ; preds = %.lr.ph361, %bb.bh
  %.sroa.082.0359 = phi float [ %i.vb, %bb.bh ], [ 0.000000e+00, %.lr.ph361 ]
  %.sroa.087.0358 = phi float [ %i.ve, %bb.bh ], [ 0.000000e+00, %.lr.ph361 ]
  %.sroa.0117.0357 = phi i64 [ %i.sn, %bb.bh ], [ 0, %.lr.ph361 ] ; 3 uses
  %i.sn = add nuw i64 %.sroa.0117.0357, 1         ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0117.0357
  %i.sp = load float, ptr %i.so, align 4, !noundef !4 ; 4 uses
  %i.sq = fmul float %i.tz, %i.sp
  %i.sr = tail call float @llvm.round.f32(float %i.sq)
  %i.ss = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.sr) ; 2 uses
  %i.st = icmp slt i32 %i.ss, %i.bd
  %..i147 = tail call i32 @llvm.smin.i32(i32 %i.ss, i32 %i.be)
  %.sroa.0.0.i148 = select i1 %i.st, i32 %i.bd, i32 %..i147
  br i1 %i.cq, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %._crit_edge362
  %i.su = fmul float %i.vb, %i.vb
  %i.sv = fmul float %.sroa.041.4.ph484, %i.ve
  %i.sw = fcmp ogt float %i.su, %i.sv
  br i1 %i.sw, label %.lr.ph366, label %._crit_edge362.thread

.lr.ph366:                                        ; preds = %bb.be
  %brmerge = or i1 %min.iters.check550, %found.conflict548
  br i1 %brmerge, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader, label %vector.ph551

vector.ph551:                                     ; preds = %.lr.ph366
  %broadcast.splatinsert553 = insertelement <4 x float> poison, float %i.tz, i64 0
  %broadcast.splat554 = shufflevector <4 x float> %broadcast.splatinsert553, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph551
  %index562 = phi i64 [ 0, %vector.ph551 ], [ %index.next564, %vector.body561 ] ; 3 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index562
  %wide.load563 = load <4 x float>, ptr %i.sx, align 4, !alias.scope !1521
  %i.sy = fmul <4 x float> %broadcast.splat554, %wide.load563
  %i.sz = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.sy)
  %i.ta = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.sz) ; 2 uses
  %i.tb = icmp slt <4 x i32> %i.ta, %broadcast.splat556.a
  %i.tc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ta, <4 x i32> %broadcast.splat558)
  %i.td = select <4 x i1> %i.tb, <4 x i32> %broadcast.splat556.a, <4 x i32> %i.tc
  %i.te = add <4 x i32> %i.td, %broadcast.splat560
  %i.tf = getelementptr inbounds nuw i8, ptr %3, i64 %index562
  %i.tg = trunc <4 x i32> %i.te to <4 x i8>
  store <4 x i8> %i.tg, ptr %i.tf, align 1, !alias.scope !1522, !noalias !1521
  %index.next564 = add nuw i64 %index562, 4       ; 2 uses
  %i.th = icmp eq i64 %index.next564, %n.vec552
  br i1 %i.th, label %middle.block565, label %vector.body561, !llvm.loop !1508

middle.block565:                                  ; preds = %vector.body561
  br i1 %cmp.n566, label %._crit_edge367, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader: ; preds = %.lr.ph366, %middle.block565
  %.sroa.0119.0365.ph = phi i64 [ %n.vec552, %middle.block565 ], [ 0, %.lr.ph366 ] ; 5 uses
  %.neg622 = or disjoint i64 %.sroa.0119.0365.ph, 1
  br i1 %lcmp.mod617.not, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0119.0365.ph
  %i.tj = load float, ptr %i.ti, align 4, !noundef !4
  %i.tk = fmul float %i.tz, %i.tj
  %i.tl = tail call float @llvm.round.f32(float %i.tk)
  %i.tm = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.tl) ; 2 uses
  %i.tn = or disjoint i64 %.sroa.0119.0365.ph, 1
  %i.to = icmp slt i32 %i.tm, %i.bd
  %..i153.prol = tail call i32 @llvm.smin.i32(i32 %i.tm, i32 %i.be)
  %.sroa.0.0.i154.prol = select i1 %i.to, i32 %i.bd, i32 %..i153.prol
  %i.tp = add i32 %.sroa.0.0.i154.prol, %1
  %i.tq = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0119.0365.ph
  %i.tr = trunc i32 %i.tp to i8
  store i8 %i.tr, ptr %i.tq, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader
  %.sroa.0119.0365.unr = phi i64 [ %.sroa.0119.0365.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader ], [ %i.tn, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol ]
  %i.ts = icmp eq i64 %0, %.neg622
  br i1 %i.ts, label %._crit_edge367, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157

._crit_edge362.thread:                            ; preds = %bb.be, %._crit_edge362, %._crit_edge367
  %.sroa.041.5 = phi float [ %i.ub, %._crit_edge367 ], [ %.sroa.041.4.ph484, %bb.be ], [ %.sroa.041.4.ph484, %._crit_edge362 ]
  %.sroa.0.6 = phi float [ %i.ua, %._crit_edge367 ], [ %.sroa.0.4.ph485, %bb.be ], [ %.sroa.0.4.ph485, %._crit_edge362 ] ; 2 uses
  %i.tt = icmp slt i32 %.sroa.0115.0.lcssa387, 3
  br i1 %i.tt, label %.lr.ph361, label %.loopexit

.lr.ph361:                                        ; preds = %.outer.preheader, %._crit_edge362.thread
  %.sroa.0.4.ph485 = phi float [ %.sroa.0.8.us.lcssa.lcssa, %.outer.preheader ], [ %.sroa.0.6, %._crit_edge362.thread ] ; 2 uses
  %.sroa.041.4.ph484 = phi float [ %.sroa.041.6.us.lcssa.lcssa, %.outer.preheader ], [ %.sroa.041.5, %._crit_edge362.thread ] ; 3 uses
  %.sroa.0115.0.ph483 = phi i32 [ -4, %.outer.preheader ], [ %i.tu, %._crit_edge362.thread ]
  %.sroa.0115.0.lcssa387 = tail call i32 @llvm.umax.i32(i32 %.sroa.0115.0.ph483, i32 1) ; 3 uses
  %i.tu = add nsw i32 %.sroa.0115.0.lcssa387, 1
  %i.tv = sitofp i32 %.sroa.0115.0.lcssa387 to float
  %i.tw = fmul nnan float %i.tv, 1.000000e-01
  %i.tx = fadd float %i.tw, %i.z
  %i.ty = fneg float %i.tx
  %i.tz = fdiv float %i.ty, %.sroa.07.1.lcssa     ; 5 uses
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151

._crit_edge367:                                   ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157, %middle.block565
  %i.ua = fdiv float %i.vb, %i.ve                 ; 2 uses
  %i.ub = fmul float %i.vb, %i.ua
  br label %._crit_edge362.thread

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157
  %.sroa.0119.0365 = phi i64 [ %i.ur, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157 ], [ %.sroa.0119.0365.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit ] ; 4 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0119.0365
  %i.ud = load float, ptr %i.uc, align 4, !noundef !4
  %i.ue = fmul float %i.tz, %i.ud
  %i.uf = tail call float @llvm.round.f32(float %i.ue)
  %i.ug = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.uf) ; 2 uses
  %i.uh = add nuw i64 %.sroa.0119.0365, 1         ; 2 uses
  %i.ui = icmp slt i32 %i.ug, %i.bd
  %..i153 = tail call i32 @llvm.smin.i32(i32 %i.ug, i32 %i.be)
  %.sroa.0.0.i154 = select i1 %i.ui, i32 %i.bd, i32 %..i153
  %i.uj = add i32 %.sroa.0.0.i154, %1
  %i.uk = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0119.0365
  %i.ul = trunc i32 %i.uj to i8
  store i8 %i.ul, ptr %i.uk, align 1
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uh
  %i.un = load float, ptr %i.um, align 4, !noundef !4
  %i.uo = fmul float %i.tz, %i.un
  %i.up = tail call float @llvm.round.f32(float %i.uo)
  %i.uq = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.up) ; 2 uses
  %i.ur = add nuw i64 %.sroa.0119.0365, 2         ; 2 uses
  %i.us = icmp slt i32 %i.uq, %i.bd
  %..i153.1 = tail call i32 @llvm.smin.i32(i32 %i.uq, i32 %i.be)
  %.sroa.0.0.i154.1 = select i1 %i.us, i32 %i.bd, i32 %..i153.1
  %i.ut = add i32 %.sroa.0.0.i154.1, %1
  %i.uu = getelementptr inbounds nuw i8, ptr %3, i64 %i.uh
  %i.uv = trunc i32 %i.ut to i8
  store i8 %i.uv, ptr %i.uu, align 1
  %exitcond409.not.1 = icmp eq i64 %i.ur, %0
  br i1 %exitcond409.not.1, label %._crit_edge367, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157, !llvm.loop !1509

bb.bf:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0117.0357
  %i.ux = load float, ptr %i.uw, align 4, !noundef !4
  br label %bb.bh

bb.bg:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151
  br i1 %.not, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bi, %bb.bf
  %.sroa.093.0 = phi float [ %i.vf, %bb.bi ], [ %i.ux, %bb.bf ], [ 1.000000e+00, %bb.bg ] ; 2 uses
  %i.uy = sitofp i32 %.sroa.0.0.i148 to float     ; 3 uses
  %i.uz = fmul float %i.sp, %.sroa.093.0
  %i.va = fmul float %i.uz, %i.uy
  %i.vb = fadd float %.sroa.082.0359, %i.va       ; 5 uses
  %i.vc = fmul float %.sroa.093.0, %i.uy
  %i.vd = fmul float %i.vc, %i.uy
  %i.ve = fadd float %.sroa.087.0358, %i.vd       ; 4 uses
  %exitcond408.not = icmp eq i64 %i.sn, %0
  br i1 %exitcond408.not, label %._crit_edge362, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151

bb.bi:                                            ; preds = %bb.bg
  %i.vf = fmul float %i.sp, %i.sp
  br label %bb.bh

bb.bj:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0107.0218
  %i.vh = load float, ptr %i.vg, align 4, !noundef !4
  br label %bb.bl

bb.bk:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139
  br i1 %i.cr, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bm, %bb.bj
  %.sroa.056.0 = phi float [ %i.vp, %bb.bm ], [ %i.vh, %bb.bj ], [ 1.000000e+00, %bb.bk ] ; 2 uses
  %i.vi = sitofp i32 %.sroa.0.0.i136 to float     ; 3 uses
  %i.vj = fmul float %i.ks, %.sroa.056.0
  %i.vk = fmul float %i.vj, %i.vi
  %i.vl = fadd float %.sroa.045.0221, %i.vk       ; 7 uses
  %i.vm = fmul float %.sroa.056.0, %i.vi
  %i.vn = fmul float %i.vm, %i.vi
  %i.vo = fadd float %.sroa.049.0220, %i.vn       ; 6 uses
  %exitcond396.not = icmp eq i64 %i.kq, %0
  br i1 %exitcond396.not, label %._crit_edge224, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139

bb.bm:                                            ; preds = %bb.bk
  %i.vp = fmul float %i.ks, %i.ks
  br label %bb.bl

bb.bn:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0103.0210
  %i.vr = load float, ptr %i.vq, align 4, !noundef !4
  br label %bb.bp

bb.bo:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133
  br i1 %i.bg, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bq, %bb.bn
  %.sroa.039.0 = phi float [ %i.vz, %bb.bq ], [ %i.vr, %bb.bn ], [ 1.000000e+00, %bb.bo ] ; 2 uses
  %i.vs = sitofp i32 %.sroa.0.0.i130 to float     ; 3 uses
  %i.vt = fmul float %i.cf, %.sroa.039.0
  %i.vu = fmul float %i.vt, %i.vs
  %i.vv = fadd float %.sroa.021.0212, %i.vu       ; 5 uses
  %i.vw = fmul float %.sroa.039.0, %i.vs
  %i.vx = fmul float %i.vw, %i.vs
  %i.vy = fadd float %.sroa.031.0211, %i.vx       ; 4 uses
  %exitcond395.not = icmp eq i64 %i.cd, %0
  br i1 %exitcond395.not, label %.lr.ph223, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133

bb.bq:                                            ; preds = %bb.bo
  %i.vz = fmul float %i.cf, %i.cf
  br label %bb.bp
}

; Function Attrs: nonlazybind uwtable
define hidden { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quants(i32 noundef %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1559
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1559
  %i.f = load i64, ptr %i.d, align 8, !range !9, !noalias !1559, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !1559, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1559
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33, !noalias !1559
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1559, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1559
  store i64 %i.i, ptr %i.e, align 8, !alias.scope !1559
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !1559
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 %3, ptr %i.n, align 8, !alias.scope !1559
  %.idx = shl nuw nsw i64 %3, 2                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit
  %i.q = add nsw i64 %3, -1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  %gepdiff = add nsw i64 %.idx, -4                ; 3 uses
  %i.s = lshr exact i64 %gepdiff, 2               ; 3 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.s) ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %.loopexit72, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %.pre.i.i.i = load i32, ptr %2, align 4, !alias.scope !1562, !noalias !1563 ; 2 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.t, 4611686018427387902
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %i.v = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %i.ap, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.010.i.i.i = phi ptr [ %2, %.lr.ph.preheader.i.i.i.new ], [ %..i.i.i.i.i.1, %.lr.ph.i.i.i ]
  %.sroa.02.09.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.af, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.02.09.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !1568, !noalias !1569, !noundef !4 ; 3 uses
  %i.y = ashr i32 %i.v, 31
  %i.z = lshr i32 %i.y, 1
  %i.aa = xor i32 %i.z, %i.v
  %i.ab = ashr i32 %i.x, 31
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = xor i32 %i.ac, %i.x
  %.not.i.i.i.i.i = icmp sgt i32 %i.aa, %i.ad     ; 2 uses
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.w, ptr %.sroa.0.010.i.i.i
  %i.ae = select i1 %.not.i.i.i.i.i, i32 %i.x, i32 %i.v ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.02.09.i.i.i, 2   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.02.09.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !1570, !noalias !1571, !noundef !4 ; 3 uses
  %i.aj = ashr i32 %i.ae, 31
  %i.ak = lshr i32 %i.aj, 1
  %i.al = xor i32 %i.ak, %i.ae
  %i.am = ashr i32 %i.ai, 31
  %i.an = lshr i32 %i.am, 1
  %i.ao = xor i32 %i.an, %i.ai
  %.not.i.i.i.i.i.1 = icmp sgt i32 %i.al, %i.ao   ; 2 uses
  %..i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.1, ptr %i.ah, ptr %..i.i.i.i.i ; 3 uses
  %i.ap = select i1 %.not.i.i.i.i.i.1, i32 %i.ai, i32 %i.ae ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit72.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.invoke, %.split96.us
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #34
          to label %common.resume unwind label %bb.r

.loopexit72.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit72, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit72.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.epil.init = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ap, %.loopexit72.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.010.i.i.i.epil.init = phi ptr [ %2, %.lr.ph.preheader.i.i.i ], [ %..i.i.i.i.i.1, %.loopexit72.loopexit.unr-lcssa ]
  %.sroa.02.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.af, %.loopexit72.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.02.09.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1567)
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !1568, !noalias !1569, !noundef !4 ; 2 uses
  %i.at = ashr i32 %.epil.init, 31
  %i.au = lshr i32 %i.at, 1
  %i.av = xor i32 %i.au, %.epil.init
  %i.aw = ashr i32 %i.as, 31
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = xor i32 %i.ax, %i.as
  %.not.i.i.i.i.i.epil = icmp sgt i32 %i.av, %i.ay
  %..i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.epil, ptr %i.ar, ptr %.sroa.0.010.i.i.i.epil.init
  br label %.loopexit72

.loopexit72:                                      ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit72.loopexit.unr-lcssa, %bb.c
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.c ], [ %..i.i.i.i.i.1, %.loopexit72.loopexit.unr-lcssa ], [ %..i.i.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader ]
  %i.az = load float, ptr %.sroa.0.0.i.ph, align 4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.ba = icmp eq i64 %3, 1
  br i1 %i.ba, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit, label %bb.e

end_hunk_1
begin_hunk_2_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quants:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.cv, %bb.k ], [ %i.cr, %bb.i ], [ %i.aq, %bb.d ]
  resume { ptr, i32 } %common.resume.op

.split:                                           ; preds = %.preheader, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit
  %.sroa.025.0 = phi i64 [ %i.ct, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ 0, %.preheader ]
  %.sroa.013.0 = phi float [ %i.er, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ %i.co, %.preheader ]
  %.sroa.08.0 = phi float [ %spec.store.select, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ %i.cl, %.preheader ]
  %i.ct = add nuw i64 %.sroa.025.0, 1             ; 2 uses
  br label %bb.m

.split96.us:                                      ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1581
  store i32 0, ptr %i.c, align 4, !noalias !1581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1581
  store i32 %0, ptr %i.b, align 4, !noalias !1581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1581
  store ptr %i.c, ptr %i.a, align 8, !noalias !1581
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1581
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cu, align 8, !noalias !1581
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1581
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #32
          to label %.noexc unwind label %bb.d

.loopexit:                                        ; preds = %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, %bb.g
  %.sroa.051.0 = phi float [ %i.cp, %bb.g ], [ %i.dm, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ]
  %.sroa.08.1 = phi float [ %i.cl, %bb.g ], [ %spec.store.select, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 unwind label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47: ; preds = %.loopexit
  %i.cx = fneg float %.sroa.08.1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit

bb.m:                                             ; preds = %.split, %bb.p
  %.sroa.015.088 = phi float [ 0.000000e+00, %.split ], [ %i.fc, %bb.p ] ; 2 uses
  %.sroa.017.087 = phi i32 [ 0, %.split ], [ %i.fe, %bb.p ] ; 2 uses
  %.sroa.019.086 = phi i1 [ false, %.split ], [ %.sroa.019.1, %bb.p ] ; 2 uses
  %.sroa.054.085 = phi ptr [ %2, %.split ], [ %i.da, %bb.p ] ; 3 uses
  %.sroa.7.084 = phi i64 [ 0, %.split ], [ %i.db, %bb.p ] ; 4 uses
  %.sroa.10.083 = phi i64 [ %3, %.split ], [ %i.cy, %bb.p ]
  %i.cy = add nsw i64 %.sroa.10.083, -1           ; 2 uses
  %i.cz = icmp eq ptr %.sroa.054.085, %i.o
  %.pre119 = load i64, ptr %i.n, align 8          ; 3 uses
  br i1 %i.cz, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.054.085, i64 4
  %i.db = add nuw nsw i64 %.sroa.7.084, 1
  %i.dc = load float, ptr %.sroa.054.085, align 4, !noundef !4
  %i.dd = fsub float %i.dc, %.sroa.08.0           ; 2 uses
  %i.de = fmul float %.sroa.013.0, %i.dd
  %i.df = tail call float @llvm.round.f32(float %i.de)
  %i.dg = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.df) ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 %0)
  %.sroa.0.0.i49 = select i1 %i.dh, i32 0, i32 %..i ; 4 uses
  %i.di = trunc i32 %.sroa.0.0.i49 to i8          ; 2 uses
  %i.dj = icmp ult i64 %.sroa.7.084, %.pre119
  br i1 %i.dj, label %bb.o, label %.invoke

.noexc:                                           ; preds = %.split96.us
  unreachable

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split: ; preds = %bb.m, %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge
  %i.dk = phi i64 [ %.pre, %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge ], [ %.pre119, %bb.m ] ; 3 uses
  %.sroa.019.0.lcssa = phi i1 [ %.sroa.019.1, %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge ], [ %.sroa.019.086, %bb.m ]
  %.sroa.017.0.lcssa = phi i32 [ %i.fe, %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge ], [ %.sroa.017.087, %bb.m ]
  %.sroa.015.0.lcssa = phi float [ %i.fc, %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge ], [ %.sroa.015.088, %bb.m ]
  %i.dl = sitofp i32 %.sroa.017.0.lcssa to float
  %i.dm = fdiv float %.sroa.015.0.lcssa, %i.dl    ; 5 uses
  %i.dn = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dk ; 3 uses
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 %3) ; 4 uses
  %.not.i50 = icmp eq i64 %i.dk, 0
  br i1 %.not.i50, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split
  %xtraiter178 = and i64 %i.dp, 1
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader
  %unroll_iter186 = and i64 %i.dp, 2305843009213693950
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new
  %i.dr = phi ptr [ %i.dn, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %i.ee, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ] ; 4 uses
  %.sroa.0.120.i = phi float [ -0.000000e+00, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %i.ei, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ]
  %i.ds = phi ptr [ %2, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %i.ec, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ] ; 4 uses
  %niter187 = phi i64 [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %niter187.next.1, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ]
  %i.dt = icmp ne ptr %i.ds, %i.o
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.dv = icmp ne ptr %i.dr, %i.do
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  %.val14.i = load float, ptr %i.ds, align 4, !noalias !1582, !noundef !4
  %.val15.i = load i8, ptr %i.dr, align 1, !noalias !1582, !noundef !4
  %i.dx = uitofp i8 %.val15.i to float
  %i.dy = fmul float %i.dm, %i.dx
  %i.dz = fsub float %.val14.i, %i.dy
  %i.ea = fadd float %.sroa.0.120.i, %i.dz
  %i.eb = icmp ne ptr %i.du, %i.o
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.ed = icmp ne ptr %i.dw, %i.do
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 2 ; 2 uses
  %.val14.i.1 = load float, ptr %i.du, align 4, !noalias !1582, !noundef !4
  %.val15.i.1 = load i8, ptr %i.dw, align 1, !noalias !1582, !noundef !4
  %i.ef = uitofp i8 %.val15.i.1 to float
  %i.eg = fmul float %i.dm, %i.ef
  %i.eh = fsub float %.val14.i.1, %i.eg
  %i.ei = fadd float %i.ea, %i.eh                 ; 3 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i

_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod183.not, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader: ; preds = %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader
  %.epil.init180 = phi ptr [ %i.dn, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ee, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.120.i.epil.init = phi float [ -0.000000e+00, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ei, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ]
  %.epil.init182 = phi ptr [ %2, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ec, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i64 %i.dp to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.ej = icmp ne ptr %.epil.init182, %i.o
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp ne ptr %.epil.init180, %i.do
  tail call void @llvm.assume(i1 %i.ek)
  %.val14.i.epil = load float, ptr %.epil.init182, align 4, !noalias !1582, !noundef !4
  %.val15.i.epil = load i8, ptr %.epil.init180, align 1, !noalias !1582, !noundef !4
  %i.el = uitofp i8 %.val15.i.epil to float
  %i.em = fmul float %i.dm, %i.el
  %i.en = fsub float %.val14.i.epil, %i.em
  %i.eo = fadd float %.sroa.0.120.i.epil.init, %i.en
  br label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit

_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split
  %.sroa.0.1.lcssa.i = phi float [ -0.000000e+00, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split ], [ %i.ei, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ], [ %i.eo, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader ]
  %i.ep = fdiv float %.sroa.0.1.lcssa.i, %i.cq    ; 2 uses
  %i.eq = fcmp ogt float %i.ep, 0.000000e+00
  %spec.store.select = select i1 %i.eq, float 0.000000e+00, float %i.ep ; 2 uses
  %i.er = fdiv float 1.000000e+00, %i.dm
  %i.es = icmp ult i64 %i.ct, %1
  %or.cond = select i1 %.sroa.019.0.lcssa, i1 %i.es, i1 false
  br i1 %or.cond, label %.split, label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47
  %.sroa.3.0 = phi float [ %i.cx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 ], [ 0.000000e+00, %bb.h ]
  %.sroa.0.0 = phi float [ %.sroa.051.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 ], [ 0.000000e+00, %bb.h ]
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.et = insertvalue { float, float } poison, float %.sroa.0.0, 0
  %i.eu = insertvalue { float, float } %i.et, float %.sroa.3.0, 1
  ret { float, float } %i.eu

bb.o:                                             ; preds = %bb.n
  %i.ev = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sroa.7.084 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !noundef !4
  %.not43 = icmp eq i8 %i.ex, %i.di
  br i1 %.not43, label %bb.p, label %bb.q

.invoke:                                          ; preds = %bb.n, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit
  %i.ey = phi i64 [ 0, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.7.084, %bb.n ]
  %i.ez = phi i64 [ 0, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit ], [ %.pre119, %bb.n ]
  %i.fa = phi ptr [ @37, %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit ], [ @39, %bb.n ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa) #33
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.q
  %.sroa.019.1 = phi i1 [ true, %bb.q ], [ %.sroa.019.086, %bb.o ] ; 2 uses
  %4 = uitofp nneg i32 %.sroa.0.0.i49 to float
  %i.fb = fmul float %i.dd, %4
  %i.fc = fadd float %.sroa.015.088, %i.fb        ; 2 uses
  %i.fd = mul i32 %.sroa.0.0.i49, %.sroa.0.0.i49
  %i.fe = add i32 %i.fd, %.sroa.017.087           ; 2 uses
  %i.ff = icmp eq i64 %i.cy, 0
  br i1 %i.ff, label %._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge, label %bb.m

._RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split_crit_edge: ; preds = %bb.p
  %.pre = load i64, ptr %i.n, align 8
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split

bb.q:                                             ; preds = %bb.o
  store i8 %i.di, ptr %i.ew, align 1
  br label %bb.p

bb.r:                                             ; preds = %bb.d
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx3_quants(i32 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias nofree noundef readonly align 4 captures(address_is_null) %3, i64 %4, float noundef %5, float noundef %6, i64 noundef %7, i1 noundef zeroext %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [32 x i8], align 1                ; 7 uses
  %i.e = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load float, ptr %1, align 4, !noundef !4 ; 12 uses
  %.not98 = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not98, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not99 = icmp eq i64 %4, 0
  br i1 %.not99, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #32
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.g = fmul float %i.f, %i.f                    ; 3 uses
  %i.h = fmul float %i.f, %i.g                    ; 2 uses
  %.not180 = icmp eq i64 %2, 1
  br i1 %.not180, label %._crit_edge, label %.lr.ph.split.us

.thread:                                          ; preds = %bb.d
  %i.i = load float, ptr %3, align 4, !noundef !4 ; 3 uses
  %i.j = fmul float %i.f, %i.i                    ; 2 uses
  %.not180230 = icmp eq i64 %2, 1
  br i1 %.not180230, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.f, %.lr.ph.split.us
  %.sroa.012.0153.us = phi float [ %.sroa.012.3.us, %.lr.ph.split.us ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.023.0152.us = phi float [ %.sroa.023.1.us, %.lr.ph.split.us ], [ %i.f, %bb.f ] ; 2 uses
  %.sroa.027.1151.us = phi float [ %i.q, %.lr.ph.split.us ], [ %i.g, %bb.f ]
  %.sroa.031.0150.us = phi float [ %i.s, %.lr.ph.split.us ], [ %i.h, %bb.f ]
  %.sroa.084.0149.us = phi i64 [ %i.k, %.lr.ph.split.us ], [ 1, %bb.f ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.084.0149.us, 1    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.084.0149.us
  %i.m = load float, ptr %i.l, align 4, !noundef !4 ; 7 uses
  %i.n = fcmp olt float %i.m, %.sroa.012.0153.us
  %.sroa.012.3.us = select i1 %i.n, float %i.m, float %.sroa.012.0153.us ; 2 uses
  %i.o = fcmp ogt float %i.m, %.sroa.023.0152.us
  %.sroa.023.1.us = select i1 %i.o, float %i.m, float %.sroa.023.0152.us ; 2 uses
  %i.p = fmul float %i.m, %i.m                    ; 2 uses
  %i.q = fadd float %.sroa.027.1151.us, %i.p      ; 2 uses
  %i.r = fmul float %i.m, %i.p
  %i.s = fadd float %.sroa.031.0150.us, %i.r      ; 2 uses
  %exitcond204.not = icmp eq i64 %i.k, %2
  br i1 %exitcond204.not, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.ae, %.lr.ph.split.us, %.thread, %bb.f
  %.sroa.031.0.lcssa = phi float [ %i.h, %bb.f ], [ %i.j, %.thread ], [ %i.s, %.lr.ph.split.us ], [ %i.fh, %bb.ae ] ; 2 uses
  %.sroa.027.1.lcssa = phi float [ %i.g, %bb.f ], [ %i.i, %.thread ], [ %i.q, %.lr.ph.split.us ], [ %i.ff, %bb.ae ] ; 2 uses
  %.sroa.023.0.lcssa = phi float [ %i.f, %bb.f ], [ %i.f, %.thread ], [ %.sroa.023.1.us, %.lr.ph.split.us ], [ %.sroa.023.1, %bb.ae ] ; 3 uses
  %.sroa.012.0.lcssa = phi float [ %i.f, %bb.f ], [ %i.f, %.thread ], [ %.sroa.012.3.us, %.lr.ph.split.us ], [ %.sroa.012.3, %bb.ae ] ; 2 uses
  %i.t = fcmp ogt float %.sroa.012.0.lcssa, 0.000000e+00
  %spec.store.select = select i1 %i.t, float 0.000000e+00, float %.sroa.012.0.lcssa ; 5 uses
  %i.u = fcmp ugt float %.sroa.023.0.lcssa, %spec.store.select
  %i.v = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.store.select, i64 1 ; 2 uses
  br i1 %i.u, label %bb.g, label %.loopexit

.lr.ph.split:                                     ; preds = %.thread, %bb.ae
  %.sroa.012.0153 = phi float [ %.sroa.012.3, %bb.ae ], [ %i.f, %.thread ] ; 2 uses
  %.sroa.023.0152 = phi float [ %.sroa.023.1, %bb.ae ], [ %i.f, %.thread ] ; 2 uses
  %.sroa.027.1151 = phi float [ %i.ff, %bb.ae ], [ %i.i, %.thread ]
  %.sroa.031.0150 = phi float [ %i.fh, %bb.ae ], [ %i.j, %.thread ]
  %.sroa.084.0149 = phi i64 [ %i.fc, %bb.ae ], [ 1, %.thread ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.084.0149, %4
  br i1 %exitcond.not, label %bb.af, label %bb.ae

bb.g:                                             ; preds = %._crit_edge
  %i.w = sitofp i32 %0 to float                   ; 2 uses
  %i.x = fsub float %.sroa.023.0.lcssa, %spec.store.select
  %i.y = fdiv float %i.w, %i.x                    ; 2 uses
  %i.z = fdiv float 1.000000e+00, %i.y            ; 2 uses
  %.not.i = icmp slt i32 %0, 0
  br i1 %.not.i, label %bb.i, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit, !prof !11

bb.h:                                             ; preds = %bb.ab
  %i.aa = icmp eq i64 %7, 0
  %i.ab = insertelement <2 x float> %i.v, float %i.z, i64 0 ; 2 uses
  br i1 %i.aa, label %.loopexit, label %.split166.preheader

.split166.preheader:                              ; preds = %bb.h
  %.not228 = icmp samesign ugt i64 %2, 32
  %i.ac = insertelement <2 x float> poison, float %.sroa.027.1.lcssa, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %.sroa.031.0.lcssa, i64 1
  br label %.split166

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit: ; preds = %bb.g, %bb.ab
  %.sroa.044.0161 = phi float [ %i.ev, %bb.ab ], [ 0.000000e+00, %bb.g ]
  %.sroa.086.0160 = phi i64 [ %i.ae, %bb.ab ], [ 0, %bb.g ] ; 7 uses
  %i.ae = add nuw nsw i64 %.sroa.086.0160, 1      ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.086.0160
  %i.ag = load float, ptr %i.af, align 4, !noundef !4 ; 4 uses
  %exitcond205.not = icmp eq i64 %.sroa.086.0160, 32
  br i1 %exitcond205.not, label %bb.y, label %bb.x

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1585
  store i32 0, ptr %i.c, align 4, !noalias !1585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1585
  store i32 %0, ptr %i.b, align 4, !noalias !1585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1585
  store ptr %i.c, ptr %i.a, align 8, !noalias !1585
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1585
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ah, align 8, !noalias !1585
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1585
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #32
  unreachable

.split166:                                        ; preds = %.split166.preheader, %bb.k
  %.sroa.044.1177 = phi float [ %.sroa.044.2, %bb.k ], [ %i.ev, %.split166.preheader ] ; 3 uses
  %.sroa.0.0176 = phi i64 [ %i.aj, %bb.k ], [ 0, %.split166.preheader ] ; 3 uses
  %i.ai = phi <2 x float> [ %i.bn, %bb.k ], [ %i.ab, %.split166.preheader ] ; 3 uses
  %i.aj = add i64 %.sroa.0.0176, 1
  %i.ak = uitofp i64 %.sroa.0.0176 to float
  %i.al = fmul float %6, %i.ak
  %i.am = fadd float %5, %i.al
  %i.an = fadd float %i.am, %i.w
  %i.ao = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ap = fsub float %.sroa.023.0.lcssa, %i.ao
  %i.aq = fdiv float %i.an, %i.ap
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107

.loopexit:                                        ; preds = %bb.k, %._crit_edge, %bb.h
  %i.ar = phi <2 x float> [ %i.v, %._crit_edge ], [ %i.ab, %bb.h ], [ %i.bn, %bb.k ] ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1
  %i.at = fneg float %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = insertvalue { float, float } poison, float %i.au, 0
  %i.aw = insertvalue { float, float } %i.av, float %i.at, 1
  ret { float, float } %i.aw

bb.j:                                             ; preds = %bb.w
  %i.ax = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.ay = fmul float %.sroa.027.1.lcssa, %i.ax
  %i.az = fmul float %i.ec, %i.ec
  %i.ba = fsub float %i.ay, %i.az                 ; 2 uses
  %i.bb = fcmp ogt float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.l, label %bb.k

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit107: ; preds = %.split166, %bb.w
  %.sroa.088.0165 = phi i64 [ 0, %.split166 ], [ %i.bd, %bb.w ] ; 7 uses
  %.sroa.054.0164 = phi float [ 0.000000e+00, %.split166 ], [ %i.ec, %bb.w ]
  %i.bc = phi <2 x float> [ zeroinitializer, %.split166 ], [ %i.ed, %bb.w ]
  %i.bd = add nuw nsw i64 %.sroa.088.0165, 1      ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.088.0165
  %i.bf = load float, ptr %i.be, align 4, !noundef !4 ; 4 uses
  %i.bg = fsub float %i.bf, %i.ao
  %i.bh = fmul float %i.aq, %i.bg
  %i.bi = call float @llvm.round.f32(float %i.bh)
  %i.bj = call i32 @llvm.fptosi.sat.i32.f32(float %i.bi) ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %..i103 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %0)
  %i.bl = trunc i32 %..i103 to i8
  %i.bm = select i1 %i.bk, i8 0, i8 %i.bl         ; 2 uses
  %exitcond208.not = icmp eq i64 %.sroa.088.0165, 32
  br i1 %exitcond208.not, label %bb.r, label %bb.q
end_hunk_2
