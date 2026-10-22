Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.09?download=true
inline.NumInlined: 1250
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants:bb.a
  store <4 x i8> %i.to, ptr %i.tn, align 1, !alias.scope !1384, !noalias !1383
  %index.next569 = add nuw i64 %index567, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next569, %n.vec557
  br i1 %i.tp, label %middle.block570, label %vector.body566, !llvm.loop !1370

middle.block570:                                  ; preds = %vector.body566
  br i1 %cmp.n571, label %._crit_edge367, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader: ; preds = %.lr.ph366, %middle.block570
  %.sroa.0119.0365.ph = phi i64 [ %n.vec557, %middle.block570 ], [ 0, %.lr.ph366 ] ; 5 uses
  %.neg631 = or disjoint i64 %.sroa.0119.0365.ph, 1
  br i1 %lcmp.mod626.not, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0119.0365.ph
  %i.tr = load float, ptr %i.tq, align 4, !noundef !4
  %i.ts = fmul float %i.uh, %i.tr
  %i.tt = tail call float @llvm.round.f32(float %i.ts)
  %i.tu = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.tt) ; 2 uses
  %i.tv = or disjoint i64 %.sroa.0119.0365.ph, 1
  %i.tw = icmp slt i32 %i.tu, %i.bf
  %..i153.prol = tail call i32 @llvm.smin.i32(i32 %i.tu, i32 %i.bg)
  %.sroa.0.0.i154.prol = select i1 %i.tw, i32 %i.bf, i32 %..i153.prol
  %i.tx = add i32 %.sroa.0.0.i154.prol, %1
  %i.ty = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0119.0365.ph
  %i.tz = trunc i32 %i.tx to i8
  store i8 %i.tz, ptr %i.ty, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader
  %.sroa.0119.0365.unr = phi i64 [ %.sroa.0119.0365.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.preheader ], [ %i.tv, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol ]
  %i.ua = icmp eq i64 %0, %.neg631
  br i1 %i.ua, label %._crit_edge367, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157

._crit_edge362.thread:                            ; preds = %bb.be, %._crit_edge362, %._crit_edge367
  %.sroa.041.5 = phi float [ %i.uj, %._crit_edge367 ], [ %.sroa.041.4.ph484, %bb.be ], [ %.sroa.041.4.ph484, %._crit_edge362 ]
  %.sroa.0.6 = phi float [ %i.ui, %._crit_edge367 ], [ %.sroa.0.4.ph485, %bb.be ], [ %.sroa.0.4.ph485, %._crit_edge362 ] ; 2 uses
  %i.ub = icmp slt i32 %.sroa.0115.0.lcssa387, 3
  br i1 %i.ub, label %.lr.ph361, label %.loopexit

.lr.ph361:                                        ; preds = %.outer.preheader, %._crit_edge362.thread
  %.sroa.0.4.ph485 = phi float [ %.sroa.0.8.us.lcssa.lcssa, %.outer.preheader ], [ %.sroa.0.6, %._crit_edge362.thread ] ; 2 uses
  %.sroa.041.4.ph484 = phi float [ %.sroa.041.6.us.lcssa.lcssa, %.outer.preheader ], [ %.sroa.041.5, %._crit_edge362.thread ] ; 3 uses
  %.sroa.0115.0.ph483 = phi i32 [ -4, %.outer.preheader ], [ %i.uc, %._crit_edge362.thread ]
  %.sroa.0115.0.lcssa387 = tail call i32 @llvm.umax.i32(i32 %.sroa.0115.0.ph483, i32 1) ; 3 uses
  %i.uc = add nsw i32 %.sroa.0115.0.lcssa387, 1
  %i.ud = sitofp i32 %.sroa.0115.0.lcssa387 to float
  %i.ue = fmul nnan float %i.ud, 1.000000e-01
  %i.uf = fadd float %i.ue, %i.z
  %i.ug = fneg float %i.uf
  %i.uh = fdiv float %i.ug, %.sroa.07.1.lcssa     ; 5 uses
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151

._crit_edge367:                                   ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157, %middle.block570
  %i.ui = fdiv float %i.vj, %i.vm                 ; 2 uses
  %i.uj = fmul float %i.vj, %i.ui
  br label %._crit_edge362.thread

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157
  %.sroa.0119.0365 = phi i64 [ %i.uz, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157 ], [ %.sroa.0119.0365.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157.prol.loopexit ] ; 4 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0119.0365
  %i.ul = load float, ptr %i.uk, align 4, !noundef !4
  %i.um = fmul float %i.uh, %i.ul
  %i.un = tail call float @llvm.round.f32(float %i.um)
  %i.uo = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.un) ; 2 uses
  %i.up = add nuw i64 %.sroa.0119.0365, 1         ; 2 uses
  %i.uq = icmp slt i32 %i.uo, %i.bf
  %..i153 = tail call i32 @llvm.smin.i32(i32 %i.uo, i32 %i.bg)
  %.sroa.0.0.i154 = select i1 %i.uq, i32 %i.bf, i32 %..i153
  %i.ur = add i32 %.sroa.0.0.i154, %1
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0119.0365
  %i.ut = trunc i32 %i.ur to i8
  store i8 %i.ut, ptr %i.us, align 1
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.up
  %i.uv = load float, ptr %i.uu, align 4, !noundef !4
  %i.uw = fmul float %i.uh, %i.uv
  %i.ux = tail call float @llvm.round.f32(float %i.uw)
  %i.uy = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.ux) ; 2 uses
  %i.uz = add nuw i64 %.sroa.0119.0365, 2         ; 2 uses
  %i.va = icmp slt i32 %i.uy, %i.bf
  %..i153.1 = tail call i32 @llvm.smin.i32(i32 %i.uy, i32 %i.bg)
  %.sroa.0.0.i154.1 = select i1 %i.va, i32 %i.bf, i32 %..i153.1
  %i.vb = add i32 %.sroa.0.0.i154.1, %1
  %i.vc = getelementptr inbounds nuw i8, ptr %3, i64 %i.up
  %i.vd = trunc i32 %i.vb to i8
  store i8 %i.vd, ptr %i.vc, align 1
  %exitcond409.not.1 = icmp eq i64 %i.uz, %0
  br i1 %exitcond409.not.1, label %._crit_edge367, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit157, !llvm.loop !1371

bb.bf:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0117.0357
  %i.vf = load float, ptr %i.ve, align 4, !noundef !4
  br label %bb.bh

bb.bg:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151
  br i1 %i.ct, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bi, %bb.bf
  %.sroa.093.0 = phi float [ %i.vn, %bb.bi ], [ %i.vf, %bb.bf ], [ 1.000000e+00, %bb.bg ] ; 2 uses
  %i.vg = sitofp i32 %.sroa.0.0.i148 to float     ; 3 uses
  %i.vh = fmul float %i.sx, %.sroa.093.0
  %i.vi = fmul float %i.vh, %i.vg
  %i.vj = fadd float %.sroa.082.0359, %i.vi       ; 5 uses
  %i.vk = fmul float %.sroa.093.0, %i.vg
  %i.vl = fmul float %i.vk, %i.vg
  %i.vm = fadd float %.sroa.087.0358, %i.vl       ; 4 uses
  %exitcond408.not = icmp eq i64 %i.sv, %0
  br i1 %exitcond408.not, label %._crit_edge362, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151

bb.bi:                                            ; preds = %bb.bg
  %i.vn = fmul float %i.sx, %i.sx
  br label %bb.bh

bb.bj:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0107.0218
  %i.vp = load float, ptr %i.vo, align 4, !noundef !4
  br label %bb.bl

bb.bk:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139
  br i1 %i.ct, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bm, %bb.bj
  %.sroa.056.0 = phi float [ %i.vx, %bb.bm ], [ %i.vp, %bb.bj ], [ 1.000000e+00, %bb.bk ] ; 2 uses
  %i.vq = sitofp i32 %.sroa.0.0.i136 to float     ; 3 uses
  %i.vr = fmul float %i.ku, %.sroa.056.0
  %i.vs = fmul float %i.vr, %i.vq
  %i.vt = fadd float %.sroa.045.0221, %i.vs       ; 7 uses
  %i.vu = fmul float %.sroa.056.0, %i.vq
  %i.vv = fmul float %i.vu, %i.vq
  %i.vw = fadd float %.sroa.049.0220, %i.vv       ; 6 uses
  %exitcond396.not = icmp eq i64 %i.ks, %0
  br i1 %exitcond396.not, label %._crit_edge224, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139

bb.bm:                                            ; preds = %bb.bk
  %i.vx = fmul float %i.ku, %i.ku
  br label %bb.bl

bb.bn:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0103.0210
  %i.vz = load float, ptr %i.vy, align 4, !noundef !4
  br label %bb.bp

bb.bo:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133
  br i1 %i.bi, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bq, %bb.bn
  %.sroa.039.0 = phi float [ %i.wh, %bb.bq ], [ %i.vz, %bb.bn ], [ 1.000000e+00, %bb.bo ] ; 2 uses
  %i.wa = sitofp i32 %.sroa.0.0.i130 to float     ; 3 uses
  %i.wb = fmul float %i.ch, %.sroa.039.0
  %i.wc = fmul float %i.wb, %i.wa
  %i.wd = fadd float %.sroa.021.0212, %i.wc       ; 5 uses
  %i.we = fmul float %.sroa.039.0, %i.wa
  %i.wf = fmul float %i.we, %i.wa
  %i.wg = fadd float %.sroa.031.0211, %i.wf       ; 4 uses
  %exitcond395.not = icmp eq i64 %i.cf, %0
  br i1 %exitcond395.not, label %.lr.ph223, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit133

bb.bq:                                            ; preds = %bb.bo
  %i.wh = fmul float %i.ch, %i.ch
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1421
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !1421
  %i.f = load i64, ptr %i.d, align 8, !range !9, !noalias !1421, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !1421, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1421
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #33, !noalias !1421
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1421, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1421
  store i64 %i.i, ptr %i.e, align 8, !alias.scope !1421
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !1421
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %3, ptr %i.n, align 8, !alias.scope !1421
  %.idx = shl nuw nsw i64 %3, 2                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsltEA4u8Pgfu_11candle_core.exit
  %i.q = add nsw i64 %3, -1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %gepdiff = add nsw i64 %.idx, -4                ; 3 uses
  %4 = lshr exact i64 %gepdiff, 2                 ; 3 uses
  %5 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %4) ; 5 uses
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %.loopexit72, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %.pre.i.i.i = load i32, ptr %2, align 4, !alias.scope !1424, !noalias !1425 ; 2 uses
  %xtraiter = and i64 %5, 1
  %i.s = icmp eq i64 %5, 1
  br i1 %i.s, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %5, 4611686018427387902
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %i.t = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %i.an, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.010.i.i.i = phi ptr [ %2, %.lr.ph.preheader.i.i.i.new ], [ %..i.i.i.i.i.1, %.lr.ph.i.i.i ]
  %.sroa.02.09.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ad, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.02.09.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !1430, !noalias !1431, !noundef !4 ; 3 uses
  %i.w = ashr i32 %i.t, 31
  %i.x = lshr i32 %i.w, 1
  %i.y = xor i32 %i.x, %i.t
  %i.z = ashr i32 %i.v, 31
  %i.aa = lshr i32 %i.z, 1
  %i.ab = xor i32 %i.aa, %i.v
  %.not.i.i.i.i.i = icmp sgt i32 %i.y, %i.ab      ; 2 uses
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.u, ptr %.sroa.0.010.i.i.i
  %i.ac = select i1 %.not.i.i.i.i.i, i32 %i.v, i32 %i.t ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.02.09.i.i.i, 2   ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.02.09.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !1432, !noalias !1431, !noundef !4 ; 3 uses
  %i.ah = ashr i32 %i.ac, 31
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = xor i32 %i.ai, %i.ac
  %i.ak = ashr i32 %i.ag, 31
  %i.al = lshr i32 %i.ak, 1
  %i.am = xor i32 %i.al, %i.ag
  %.not.i.i.i.i.i.1 = icmp sgt i32 %i.aj, %i.am   ; 2 uses
  %..i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.1, ptr %i.af, ptr %..i.i.i.i.i ; 3 uses
  %i.an = select i1 %.not.i.i.i.i.i.1, i32 %i.ag, i32 %i.ac ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit72.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.invoke, %.split96.us
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #34
          to label %common.resume unwind label %bb.q

.loopexit72.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit72, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit72.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.epil.init = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.an, %.loopexit72.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.010.i.i.i.epil.init = phi ptr [ %2, %.lr.ph.preheader.i.i.i ], [ %..i.i.i.i.i.1, %.loopexit72.loopexit.unr-lcssa ]
  %.sroa.02.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ad, %.loopexit72.loopexit.unr-lcssa ]
  %lcmp.mod145 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.02.09.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !1430, !noalias !1431, !noundef !4 ; 2 uses
  %i.ar = ashr i32 %.epil.init, 31
  %i.as = lshr i32 %i.ar, 1
  %i.at = xor i32 %i.as, %.epil.init
  %i.au = ashr i32 %i.aq, 31
  %i.av = lshr i32 %i.au, 1
  %i.aw = xor i32 %i.av, %i.aq
  %.not.i.i.i.i.i.epil = icmp sgt i32 %i.at, %i.aw
  %..i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.epil, ptr %i.ap, ptr %.sroa.0.010.i.i.i.epil.init
  br label %.loopexit72

.loopexit72:                                      ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit72.loopexit.unr-lcssa, %bb.c
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.c ], [ %..i.i.i.i.i.1, %.loopexit72.loopexit.unr-lcssa ], [ %..i.i.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader ]
  %i.ax = load float, ptr %.sroa.0.0.i.ph, align 4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.ay = icmp eq i64 %3, 1
  br i1 %i.ay, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit, label %6

6:                                                ; preds = %.loopexit72
  %.pre.i.i = load i32, ptr %2, align 4, !alias.scope !1434 ; 2 uses
  %7 = icmp eq i64 %gepdiff, 4
  br i1 %7, label %.epil.preheader, label %.new

.new:                                             ; preds = %6
  %unroll_iter153 = and i64 %4, 4611686018427387902
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %i.az = phi i32 [ %.pre.i.i, %.new ], [ %i.bv, %bb.e ] ; 3 uses
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.bu, %bb.e ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %2, %.new ], [ %..i.i.i.i.1, %bb.e ]
  %niter154 = phi i64 [ 0, %.new ], [ %niter154.next.1, %bb.e ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.04.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !1439, !noalias !1433, !noundef !4 ; 3 uses
  %i.bc = ashr i32 %i.az, 31
  %i.bd = lshr i32 %i.bc, 1
  %i.be = xor i32 %i.bd, %i.az
  %i.bf = ashr i32 %i.bb, 31
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = xor i32 %i.bg, %i.bb
  %i.bi = icmp sgt i32 %i.be, %i.bh               ; 2 uses
  %..i.i.i.i = select i1 %i.bi, ptr %.sroa.02.0.i.i, ptr %i.ba
  %i.bj = select i1 %i.bi, i32 %i.az, i32 %i.bb   ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.04.0.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !1440, !noalias !1433, !noundef !4 ; 3 uses
  %i.bn = ashr i32 %i.bj, 31
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = xor i32 %i.bo, %i.bj
  %i.bq = ashr i32 %i.bm, 31
  %i.br = lshr i32 %i.bq, 1
  %i.bs = xor i32 %i.br, %i.bm
  %i.bt = icmp sgt i32 %i.bp, %i.bs               ; 2 uses
  %..i.i.i.i.1 = select i1 %i.bt, ptr %..i.i.i.i, ptr %i.bl ; 3 uses
  %i.bu = add nuw i64 %.sroa.04.0.i.i, 2          ; 2 uses
  %i.bv = select i1 %i.bt, i32 %i.bj, i32 %i.bm   ; 2 uses
  %niter154.next.1 = add i64 %niter154, 2         ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa, label %bb.e

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %i.bw = and i64 %gepdiff, 4
  %lcmp.mod150.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod150.not, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa, %6
  %.epil.init149 = phi i32 [ %.pre.i.i, %6 ], [ %i.bv, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %6 ], [ %i.bu, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi ptr [ %2, %6 ], [ %..i.i.i.i.1, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa ]
  %lcmp.mod152 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.04.0.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !1439, !noalias !1433, !noundef !4 ; 2 uses
  %i.bz = ashr i32 %.epil.init149, 31
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, %.epil.init149
  %i.cc = ashr i32 %i.by, 31
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, %i.by
  %i.cf = icmp sgt i32 %i.cb, %i.ce
  %..i.i.i.i.epil = select i1 %i.cf, ptr %.sroa.02.0.i.i.epil.init, ptr %i.bx
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit: ; preds = %.epil.preheader, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa, %.loopexit72
  %.sroa.0.0.i45 = phi ptr [ %2, %.loopexit72 ], [ %..i.i.i.i.1, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ]
  %i.cg = load float, ptr %.sroa.0.0.i45, align 4, !noundef !4 ; 2 uses
  %i.ch = fcmp oeq float %i.cg, %i.ax
  br i1 %i.ch, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit
  %i.ci = tail call nsz float @llvm.minimumnum.f32(float %i.ax, float 0.000000e+00) ; 3 uses
  %i.cj = sitofp i32 %0 to float
  %i.ck = fsub float %i.cg, %i.ci
  %i.cl = fdiv float %i.cj, %i.ck                 ; 2 uses
  %i.cm = fdiv float 1.000000e+00, %i.cl
  %.old1.not = icmp eq i64 %1, 0
  br i1 %.old1.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not.i = icmp slt i32 %0, 0
  %i.cn = uitofp nneg i64 %3 to float
  br i1 %.not.i, label %.split96.us, label %.split, !prof !11

bb.g:                                             ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNCINvNvBL_6max_by4foldRfNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss_0E0EB23_.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.j ], [ %i.co, %bb.h ], [ %i.ao, %bb.d ]
  resume { ptr, i32 } %common.resume.op

.split:                                           ; preds = %.preheader, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit
  %.pre119.pre120 = phi i64 [ %.pre119.pre120123, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ %3, %.preheader ] ; 2 uses
  %.sroa.025.0 = phi i64 [ %i.cq, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ 0, %.preheader ]
  %.sroa.013.0 = phi float [ %i.eo, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ %i.cl, %.preheader ]
  %.sroa.08.0 = phi float [ %spec.store.select, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ], [ %i.ci, %.preheader ]
  %i.cq = add nuw i64 %.sroa.025.0, 1             ; 2 uses
  br label %bb.l

.split96.us:                                      ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1441
  store i32 0, ptr %i.c, align 4, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1441
  store i32 %0, ptr %i.b, align 4, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1441
  store ptr %i.c, ptr %i.a, align 8, !noalias !1441
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1441
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cr, align 8, !noalias !1441
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1441
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #32
          to label %.noexc unwind label %bb.d

.loopexit:                                        ; preds = %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, %bb.f
  %.sroa.051.0 = phi float [ %i.cm, %bb.f ], [ %i.dj, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ]
  %.sroa.08.1 = phi float [ %i.ci, %bb.f ], [ %spec.store.select, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 unwind label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47: ; preds = %.loopexit
  %i.cu = fneg float %.sroa.08.1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit

bb.l:                                             ; preds = %.split, %bb.o
  %.pre119.pre120125 = phi i64 [ %.pre119.pre120, %.split ], [ %.pre119.pre120124, %bb.o ] ; 2 uses
  %.pre119 = phi i64 [ %.pre119.pre120, %.split ], [ %.pre, %bb.o ] ; 4 uses
  %.sroa.015.088 = phi float [ 0.000000e+00, %.split ], [ %i.fa, %bb.o ] ; 2 uses
  %.sroa.017.087 = phi i32 [ 0, %.split ], [ %i.fc, %bb.o ] ; 2 uses
  %.sroa.019.086 = phi i1 [ false, %.split ], [ %.sroa.019.1, %bb.o ] ; 2 uses
  %.sroa.054.085 = phi ptr [ %2, %.split ], [ %i.cx, %bb.o ] ; 3 uses
  %.sroa.7.084 = phi i64 [ 0, %.split ], [ %i.cy, %bb.o ] ; 4 uses
  %.sroa.10.083 = phi i64 [ %3, %.split ], [ %i.cv, %bb.o ]
  %i.cv = add nsw i64 %.sroa.10.083, -1           ; 2 uses
  %i.cw = icmp eq ptr %.sroa.054.085, %i.o
  br i1 %i.cw, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.054.085, i64 4
  %i.cy = add nuw nsw i64 %.sroa.7.084, 1
  %i.cz = load float, ptr %.sroa.054.085, align 4, !noundef !4
  %i.da = fsub float %i.cz, %.sroa.08.0           ; 2 uses
  %i.db = fmul float %.sroa.013.0, %i.da
  %i.dc = tail call float @llvm.round.f32(float %i.db)
  %i.dd = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.dc) ; 2 uses
  %i.de = icmp slt i32 %i.dd, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %0)
  %.sroa.0.0.i49 = select i1 %i.de, i32 0, i32 %..i ; 4 uses
  %i.df = trunc i32 %.sroa.0.0.i49 to i8          ; 2 uses
  %i.dg = icmp ult i64 %.sroa.7.084, %.pre119
  br i1 %i.dg, label %bb.n, label %.invoke

.noexc:                                           ; preds = %.split96.us
  unreachable

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split: ; preds = %bb.o, %bb.l
  %.pre119.pre120123 = phi i64 [ %.pre119.pre120125, %bb.l ], [ %.pre119.pre120124, %bb.o ]
  %i.dh = phi i64 [ %.pre119, %bb.l ], [ %.pre, %bb.o ] ; 3 uses
  %.sroa.019.0.lcssa = phi i1 [ %.sroa.019.086, %bb.l ], [ %.sroa.019.1, %bb.o ]
  %.sroa.017.0.lcssa = phi i32 [ %.sroa.017.087, %bb.l ], [ %i.fc, %bb.o ]
  %.sroa.015.0.lcssa = phi float [ %.sroa.015.088, %bb.l ], [ %i.fa, %bb.o ]
  %i.di = sitofp i32 %.sroa.017.0.lcssa to float
  %i.dj = fdiv float %.sroa.015.0.lcssa, %i.di    ; 5 uses
  %i.dk = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dh ; 3 uses
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 %3) ; 4 uses
  %.not.i50 = icmp eq i64 %i.dh, 0
  br i1 %.not.i50, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split
  %xtraiter155 = and i64 %i.dm, 1
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader
  %unroll_iter163 = and i64 %i.dm, 2305843009213693950
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new
  %i.do = phi ptr [ %i.dk, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %i.eb, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ] ; 4 uses
  %.sroa.0.120.i = phi float [ -0.000000e+00, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %i.ef, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ]
  %i.dp = phi ptr [ %2, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %i.dz, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ] ; 4 uses
  %niter164 = phi i64 [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader.new ], [ %niter164.next.1, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i ]
  %i.dq = icmp ne ptr %i.dp, %i.o
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.dl
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %.val14.i = load float, ptr %i.dp, align 4, !noalias !1442, !noundef !4
  %.val15.i = load i8, ptr %i.do, align 1, !noalias !1442, !noundef !4
  %i.du = uitofp i8 %.val15.i to float
  %i.dv = fmul float %i.dj, %i.du
  %i.dw = fsub float %.val14.i, %i.dv
  %i.dx = fadd float %.sroa.0.120.i, %i.dw
  %i.dy = icmp ne ptr %i.dr, %i.o
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.ea = icmp ne ptr %i.dt, %i.dl
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 2 uses
  %.val14.i.1 = load float, ptr %i.dr, align 4, !noalias !1442, !noundef !4
  %.val15.i.1 = load i8, ptr %i.dt, align 1, !noalias !1442, !noundef !4
  %i.ec = uitofp i8 %.val15.i.1 to float
  %i.ed = fmul float %i.dj, %i.ec
  %i.ee = fsub float %.val14.i.1, %i.ed
  %i.ef = fadd float %i.dx, %i.ee                 ; 3 uses
  %niter164.next.1 = add i64 %niter164, 2         ; 2 uses
  %niter164.ncmp.1 = icmp eq i64 %niter164.next.1, %unroll_iter163
  br i1 %niter164.ncmp.1, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i

_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i
  %lcmp.mod160.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod160.not, label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader: ; preds = %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader
  %.epil.init157 = phi ptr [ %i.dk, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.eb, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.120.i.epil.init = phi float [ -0.000000e+00, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.ef, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ]
  %.epil.init159 = phi ptr [ %2, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.preheader ], [ %i.dz, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod162 = trunc i64 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.eg = icmp ne ptr %.epil.init159, %i.o
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp ne ptr %.epil.init157, %i.dl
  tail call void @llvm.assume(i1 %i.eh)
  %.val14.i.epil = load float, ptr %.epil.init159, align 4, !noalias !1442, !noundef !4
  %.val15.i.epil = load i8, ptr %.epil.init157, align 1, !noalias !1442, !noundef !4
  %i.ei = uitofp i8 %.val15.i.epil to float
  %i.ej = fmul float %i.dj, %i.ei
  %i.ek = fsub float %.val14.i.epil, %i.ej
  %i.el = fadd float %.sroa.0.120.i.epil.init, %i.ek
  br label %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit

_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split
  %.sroa.0.1.lcssa.i = phi float [ -0.000000e+00, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtB7_4take4TakeINtNtNtBb_5slice4iter4IterfEEIBX_IB1f_hEEEINtB5_7ZipImplBW_B1H_E9size_hintCsltEA4u8Pgfu_11candle_core.exit.i.split ], [ %i.ef, %_RINvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterfEEIBY_IB1g_hEEENtB6_8SpecFold9spec_foldfNCINvNtB8_3map8map_foldTRfRhEffNCNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quantss0_0NCINvXs22_NtNtBa_6traits5accumfNtB4a_3Sum3sumINtB2p_3MapBN_B2P_EE0E0EB2X_.exit.loopexit.unr-lcssa ], [ %i.el, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.i.epil.preheader ]
  %i.em = fdiv float %.sroa.0.1.lcssa.i, %i.cn    ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
  %spec.store.select = select i1 %i.en, float 0.000000e+00, float %i.em ; 2 uses
  %i.eo = fdiv float 1.000000e+00, %i.dj
  %i.ep = icmp ult i64 %i.cq, %1
  %or.cond = select i1 %.sroa.019.0.lcssa, i1 %i.ep, i1 false
  br i1 %or.cond, label %.split, label %.loopexit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47
  %.sroa.3.0 = phi float [ %i.cu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 ], [ 0.000000e+00, %bb.g ]
  %.sroa.0.0 = phi float [ %.sroa.051.0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit47 ], [ 0.000000e+00, %bb.g ]
end_hunk_0
