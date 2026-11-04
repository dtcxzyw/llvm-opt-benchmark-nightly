Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_chroma_from_luma?download=true
inline.NumInlined: 2420
inline.NumDeleted: 920
loop-unroll.NumCompletelyUnrolled: 476
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 578
begin_hunk_0_@_ZN3jxl6N_SSE411ComputeTileERKNS_6Image3IfEERKNS_5RectTImEERKNS_15DequantMatricesEPKNS_15AcStrategyImageEPKNS_5PlaneIiEEPKNS_9QuantizerES8_bbPNSF_IaEESN_PNSF_IfEENS_4SpanIfEE:bb.a
  %i.cy = getelementptr i8, ptr %i.cc, i64 %i.cg
  %i.cz = getelementptr i8, ptr %i.ce, i64 %i.cg
  %i.da = getelementptr i8, ptr %i.cf, i64 %i.cg
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph344.us, %.loopexit.us
  %indvar457 = phi i64 [ 0, %.lr.ph344.us ], [ %indvar.next458, %.loopexit.us ] ; 2 uses
  %.0221340.us = phi i64 [ %i.i, %.lr.ph344.us ], [ %i.ht, %.loopexit.us ] ; 5 uses
  %.1339.us = phi i64 [ %.0223346.us, %.lr.ph344.us ], [ %.4.us, %.loopexit.us ] ; 4 uses
  %i.db = shl i64 %indvar457, 2                   ; 4 uses
  %scevgep459 = getelementptr i8, ptr %i.cx, i64 %i.db ; 5 uses
  %scevgep461 = getelementptr i8, ptr %i.cy, i64 %i.db ; 5 uses
  %scevgep463 = getelementptr i8, ptr %i.cz, i64 %i.db ; 5 uses
  %scevgep465 = getelementptr i8, ptr %i.da, i64 %i.db ; 5 uses
  br i1 %8, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dc = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.dd = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.de = mul i64 %i.dd, %.0222347.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 64) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0221340.us
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !38  ; 2 uses
  %i.di = lshr i8 %i.dh, 1
  %i.dj = trunc i8 %i.dh to i1
  %extract.t.us = zext nneg i8 %i.di to i32
  br i1 %i.dj, label %.thread.us, label %.loopexit.us

.thread.us:                                       ; preds = %bb.f, %bb.e
  %storemerge307.off0.us = phi i32 [ %extract.t.us, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.dk = zext nneg i32 %storemerge307.off0.us to i64 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !38
  %i.dn = zext i8 %i.dm to i64                    ; 11 uses
  %i.do = shl i64 %.0221340.us, 3                 ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dp, i64 noundef %i.cw, ptr noundef %i.am, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.am, ptr noundef nonnull %i.aw, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dq, i64 noundef %i.cw, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ay, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.do
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dr, i64 noundef %i.cw, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.az, i64 noundef %i.dn, ptr noundef nonnull %i.ba) #44
  %i.ds = load ptr, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %.idx.i229.us = mul nuw nsw i64 %i.dk, 24
  %i.dt = getelementptr i8, ptr %i.bn, i64 %.idx.i229.us ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !69
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !69
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dx
  br i1 %8, label %.preheader314.us.preheader, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.dz = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 60
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !53
  %i.ec = load float, ptr %i.bp, align 4, !tbaa !73
  %i.ed = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fmul float %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 68
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !53
  %i.ei = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x float> %i.ej, %i.el
  %i.en = fdiv <2 x float> splat (float 1.000000e+00), %i.em
  br label %.preheader314.us.preheader

.preheader314.us.preheader:                       ; preds = %.thread.us, %bb.g
  %i.eo = phi <2 x float> [ %i.en, %bb.g ], [ splat (float 1.000000e+00), %.thread.us ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.dk
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !38
  %i.er = zext i8 %i.eq to i64                    ; 6 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1) ; 3 uses
  %umax366 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = tail call i64 @llvm.usub.sat.i64(i64 %i.er, i64 1) ; 2 uses
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = mul nuw nsw i64 %i.et, %i.dn
  %i.ev = shl nuw nsw i64 %umax, 2                ; 2 uses
  %i.ew = getelementptr i8, ptr %scevgep, i64 %i.eu
  %scevgep456 = getelementptr i8, ptr %i.ew, i64 %i.ev ; 4 uses
  %i.ex = mul i64 %i.by, %i.es
  %i.ey = add i64 %i.ex, %i.ev                    ; 4 uses
  %scevgep460 = getelementptr i8, ptr %scevgep459, i64 %i.ey ; 4 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.ey ; 4 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.ey ; 4 uses
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.ey ; 4 uses
  %i.ez = shl nuw i64 1, %i.dk
  %i.fa = and i64 %i.ez, 6291455
  %min.iters.check.not = icmp eq i64 %i.fa, 0
  %bound0 = icmp ult ptr %scevgep465, %scevgep464
  %bound1 = icmp ult ptr %scevgep463, %scevgep466
  %found.conflict = and i1 %bound0, %bound1
  %bound0467 = icmp ult ptr %scevgep465, %scevgep462
  %bound1468 = icmp ult ptr %scevgep461, %scevgep466
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx = or i1 %found.conflict, %found.conflict469
  %bound0470 = icmp ult ptr %scevgep465, %scevgep460
  %bound1471 = icmp ult ptr %scevgep459, %scevgep466
  %found.conflict472 = and i1 %bound0470, %bound1471
  %conflict.rdx473 = or i1 %conflict.rdx, %found.conflict472
  %bound0474 = icmp ult ptr %scevgep465, %scevgep456
  %bound1475 = icmp ult ptr %i.aw, %scevgep466
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %conflict.rdx473, %found.conflict476
  %bound0478 = icmp ult ptr %scevgep463, %scevgep462
  %bound1479 = icmp ult ptr %scevgep461, %scevgep464
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0482 = icmp ult ptr %scevgep463, %scevgep460
  %bound1483 = icmp ult ptr %scevgep459, %scevgep464
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  %bound0486 = icmp ult ptr %scevgep463, %scevgep456
  %bound1487 = icmp ult ptr %i.aw, %scevgep464
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %scevgep461, %scevgep460
  %bound1491 = icmp ult ptr %scevgep459, %scevgep462
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %scevgep461, %scevgep456
  %bound1495 = icmp ult ptr %i.aw, %scevgep462
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  %bound0498 = icmp ult ptr %scevgep459, %scevgep456
  %bound1499 = icmp ult ptr %i.aw, %scevgep460
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  %n.vec = and i64 %umax, 252                     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat503 = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dn
  %i.fb = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.fc = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  br label %.preheader314.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0219328.us = phi i64 [ %i.fu, %scalar.ph ], [ %.0219328.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fd = add nuw nsw i64 %.0219328.us, %i.io     ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fd ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !53
  %i.fg = fmul float %i.fb, %i.ff
  %i.fh = add i64 %i.ir, %.0219328.us             ; 4 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fh
  store float %i.fg, ptr %i.fi, align 4, !tbaa !53
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.fd
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !53
  %i.fl = fmul float %i.fb, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fh
  store float %i.fl, ptr %i.fm, align 4, !tbaa !53
  %i.fn = load float, ptr %i.fe, align 4, !tbaa !53
  %i.fo = fmul float %i.fc, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.fh
  store float %i.fo, ptr %i.fp, align 4, !tbaa !53
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fd
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !53
  %i.fs = fmul float %i.fc, %i.fr
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.fh
  store float %i.fs, ptr %i.ft, align 4, !tbaa !53
  %i.fu = add nuw nsw i64 %.0219328.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.fu, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !115

._crit_edge330.split.us:                          ; preds = %._crit_edge.us
  %i.fv = add i64 %i.i, %i.dn
  %i.fw = icmp ugt i64 %i.fv, %i.l
  %i.fx = add i64 %i.h, %i.er
  %i.fy = icmp ugt i64 %i.fx, %i.o
  %or.cond.us = select i1 %i.fw, i1 true, i1 %i.fy
  br i1 %or.cond.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %._crit_edge330.split.us
  %i.fz = tail call noundef i64 @llvm.umin.i64(i64 %i.er, i64 %i.dn) ; 4 uses
  %i.ga = tail call noundef i64 @llvm.umax.i64(i64 %i.er, i64 %i.dn) ; 3 uses
  %.not = icmp eq i64 %i.fz, 0
  br i1 %.not, label %._crit_edge334.split.us, label %.preheader313.lr.ph.us

._crit_edge334.split.us.loopexit.unr-lcssa:       ; preds = %.preheader313.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge334.split.us, label %.preheader313.us.epil.preheader

.preheader313.us.epil.preheader:                  ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.preheader
  %.0218333.us.epil.init = phi i64 [ 0, %.preheader313.us.preheader ], [ %i.in, %._crit_edge334.split.us.loopexit.unr-lcssa ]
  %lcmp.mod519 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod519)
  br label %.preheader313.us.epil

.preheader313.us.epil:                            ; preds = %.preheader313.us.epil, %.preheader313.us.epil.preheader
  %.0218333.us.epil = phi i64 [ %i.gf, %.preheader313.us.epil ], [ %.0218333.us.epil.init, %.preheader313.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader313.us.epil ], [ 0, %.preheader313.us.epil.preheader ]
  %i.gb = mul nuw nsw i64 %.0218333.us.epil, %i.jh ; 3 uses
  %i.gc = getelementptr [4 x i8], ptr %i.am, i64 %i.gb
  %i.gd = getelementptr [4 x i8], ptr %i.an, i64 %i.gb
  %i.ge = getelementptr [4 x i8], ptr %i.ao, i64 %i.gb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gc, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gd, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ge, i8 0, i64 %i.ji, i1 false), !tbaa !53
  %i.gf = add nuw nsw i64 %.0218333.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge334.split.us, label %.preheader313.us.epil, !llvm.loop !116

._crit_edge334.split.us:                          ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.epil, %.preheader313.lr.ph.us, %bb.h
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge334.split.us
  %i.gg = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.gh = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.gi = mul i64 %i.gh, %.0222347.us
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gj, i64 64) ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.0221340.us
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !77
  %i.gm = sitofp i32 %i.gl to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge334.split.us
  %i.gn = phi float [ %i.gm, %bb.i ], [ 1.000000e+00, %._crit_edge334.split.us ]
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.go = load float, ptr %i.bp, align 4, !tbaa !73
  %i.gp = fmul float %i.go, 1.280000e+02
  %i.gq = fmul float %i.gn, %i.gp
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gr = phi float [ %i.gq, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.gs = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gu = shl nuw nsw i64 %i.dn, 6
  %i.gv = mul nuw nsw i64 %i.gu, %i.er            ; 2 uses
  %.not352 = icmp eq i64 %i.gv, 0
  br i1 %.not352, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %.lr.ph.us
  %.0336.us = phi i64 [ %i.hr, %.lr.ph.us ], [ 0, %bb.l ] ; 6 uses
  %.2335.us = phi i64 [ %i.hq, %.lr.ph.us ], [ %.1339.us, %bb.l ] ; 5 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0336.us
  %i.gx = load <4 x float>, ptr %i.gw, align 16, !tbaa !38 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0336.us
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !38
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0336.us
  %i.hb = load <4 x float>, ptr %i.ha, align 16, !tbaa !38
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0336.us
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !38
  %i.he = fmul <4 x float> %i.gt, %i.hd           ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0336.us
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !tbaa !38
  %i.hh = fmul <4 x float> %i.gt, %i.hg           ; 2 uses
  %i.hi = fmul <4 x float> %i.gx, %i.he
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.2335.us
  store <4 x float> %i.hi, ptr %i.hj, align 16, !tbaa !38
  %i.hk = fmul <4 x float> %i.gz, %i.he
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.2335.us
  store <4 x float> %i.hk, ptr %i.hl, align 16, !tbaa !38
  %i.hm = fmul <4 x float> %i.gx, %i.hh
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.2335.us
  store <4 x float> %i.hm, ptr %i.hn, align 16, !tbaa !38
  %i.ho = fmul <4 x float> %i.hb, %i.hh
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.2335.us
  store <4 x float> %i.ho, ptr %i.hp, align 16, !tbaa !38
  %i.hq = add i64 %.2335.us, 4                    ; 2 uses
  %i.hr = add nuw nsw i64 %.0336.us, 4            ; 2 uses
  %i.hs = icmp samesign ult i64 %i.hr, %i.gv
  br i1 %i.hs, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !117

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.l, %._crit_edge330.split.us, %bb.f
  %.4.us = phi i64 [ %.1339.us, %bb.f ], [ %.1339.us, %._crit_edge330.split.us ], [ %.1339.us, %bb.l ], [ %i.hq, %.lr.ph.us ] ; 12 uses
  %i.ht = add i64 %.0221340.us, 1                 ; 2 uses
  %exitcond369.not = icmp eq i64 %i.ht, %i.l
  %indvar.next458 = add i64 %indvar457, 1
  br i1 %exitcond369.not, label %._crit_edge345.us, label %bb.e, !llvm.loop !118

.preheader313.us:                                 ; preds = %.preheader313.us, %.preheader313.us.preheader.new
  %.0218333.us = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %i.in, %.preheader313.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %niter.next.3, %.preheader313.us ]
  %i.hu = mul nuw nsw i64 %.0218333.us, %i.jh     ; 3 uses
  %i.hv = getelementptr [4 x i8], ptr %i.am, i64 %i.hu
  %i.hw = getelementptr [4 x i8], ptr %i.an, i64 %i.hu
  %i.hx = getelementptr [4 x i8], ptr %i.ao, i64 %i.hu
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hv, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hw, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hx, i8 0, i64 %i.ji, i1 false), !tbaa !53
  %i.hy = or disjoint i64 %.0218333.us, 1
  %i.hz = mul nuw nsw i64 %i.hy, %i.jh            ; 3 uses
  %i.ia = getelementptr [4 x i8], ptr %i.am, i64 %i.hz
  %i.ib = getelementptr [4 x i8], ptr %i.an, i64 %i.hz
  %i.ic = getelementptr [4 x i8], ptr %i.ao, i64 %i.hz
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ib, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ic, i8 0, i64 %i.ji, i1 false), !tbaa !53
  %i.id = or disjoint i64 %.0218333.us, 2
  %i.ie = mul nuw nsw i64 %i.id, %i.jh            ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %i.am, i64 %i.ie
  %i.ig = getelementptr [4 x i8], ptr %i.an, i64 %i.ie
  %i.ih = getelementptr [4 x i8], ptr %i.ao, i64 %i.ie
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.if, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ig, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ih, i8 0, i64 %i.ji, i1 false), !tbaa !53
  %i.ii = or disjoint i64 %.0218333.us, 3
  %i.ij = mul nuw nsw i64 %i.ii, %i.jh            ; 3 uses
  %i.ik = getelementptr [4 x i8], ptr %i.am, i64 %i.ij
  %i.il = getelementptr [4 x i8], ptr %i.an, i64 %i.ij
  %i.im = getelementptr [4 x i8], ptr %i.ao, i64 %i.ij
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ik, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.il, i8 0, i64 %i.ji, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.im, i8 0, i64 %i.ji, i1 false), !tbaa !53
  %i.in = add nuw nsw i64 %.0218333.us, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge334.split.us.loopexit.unr-lcssa, label %.preheader313.us, !llvm.loop !119

.preheader314.us:                                 ; preds = %.preheader314.us.preheader, %._crit_edge.us
  %.0220329.us = phi i64 [ %i.jg, %._crit_edge.us ], [ 0, %.preheader314.us.preheader ] ; 3 uses
  %i.io = mul nuw nsw i64 %.0220329.us, %i.dn     ; 2 uses
  %i.ip = add i64 %.0220329.us, %.0222347.us
  %i.iq = mul i64 %i.ip, %i.c
  %i.ir = add i64 %i.iq, %.0221340.us             ; 2 uses
  %min.iters.check.not.not = xor i1 %min.iters.check.not, true
  %brmerge = select i1 %min.iters.check.not.not, i1 true, i1 %conflict.rdx501
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader314.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader314.us ] ; 3 uses
  %i.is = add nuw nsw i64 %index, %i.io           ; 3 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.is ; 2 uses
  %wide.load = load <4 x float>, ptr %i.it, align 4, !tbaa !53, !alias.scope !129
  %i.iu = fmul <4 x float> %broadcast.splat, %wide.load
  %i.iv = add i64 %i.ir, %index                   ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.iv
  store <4 x float> %i.iu, ptr %i.iw, align 4, !tbaa !53, !alias.scope !130, !noalias !131
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.is
  %wide.load504 = load <4 x float>, ptr %i.ix, align 4, !tbaa !53, !alias.scope !129
  %i.iy = fmul <4 x float> %broadcast.splat, %wide.load504
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.iv
  store <4 x float> %i.iy, ptr %i.iz, align 4, !tbaa !53, !alias.scope !132, !noalias !133
  %wide.load505 = load <4 x float>, ptr %i.it, align 4, !tbaa !53, !alias.scope !129
  %i.ja = fmul <4 x float> %broadcast.splat503, %wide.load505
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.iv
  store <4 x float> %i.ja, ptr %i.jb, align 4, !tbaa !53, !alias.scope !134, !noalias !135
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.is
  %wide.load506 = load <4 x float>, ptr %i.jc, align 4, !tbaa !53, !alias.scope !129
  %i.jd = fmul <4 x float> %broadcast.splat503, %wide.load506
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.iv
  store <4 x float> %i.jd, ptr %i.je, align 4, !tbaa !53, !alias.scope !136, !noalias !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader314.us, %middle.block
  %.0219328.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader314.us ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.jg = add nuw nsw i64 %.0220329.us, 1         ; 2 uses
  %exitcond367.not = icmp eq i64 %i.jg, %umax366
  br i1 %exitcond367.not, label %._crit_edge330.split.us, label %.preheader314.us, !llvm.loop !127

.preheader313.lr.ph.us:                           ; preds = %bb.h
  %.not351 = icmp eq i64 %i.ga, 0
  %i.jh = shl nuw nsw i64 %i.ga, 3                ; 5 uses
  br i1 %.not351, label %._crit_edge334.split.us, label %.preheader313.us.preheader

.preheader313.us.preheader:                       ; preds = %.preheader313.lr.ph.us
  %i.ji = shl nuw nsw i64 %i.ga, 2                ; 15 uses
  %xtraiter = and i64 %i.fz, 3                    ; 3 uses
  %i.jj = icmp samesign ult i64 %i.fz, 4
  br i1 %i.jj, label %.preheader313.us.epil.preheader, label %.preheader313.us.preheader.new

.preheader313.us.preheader.new:                   ; preds = %.preheader313.us.preheader
  %unroll_iter = and i64 %i.fz, 252
  br label %.preheader313.us

._crit_edge345.us:                                ; preds = %.loopexit.us
  %i.jk = add i64 %.0222347.us, 1                 ; 2 uses
  %exitcond370.not = icmp eq i64 %i.jk, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond370.not, label %._crit_edge349, label %.lr.ph344.us, !llvm.loop !128

._crit_edge349:                                   ; preds = %._crit_edge345.us
  %i.jl = and i64 %.4.us, 3
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.m, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit

bb.m:                                             ; preds = %._crit_edge349
  %i.jn = icmp eq i64 %.4.us, 0
  br i1 %i.jn, label %_ZN3jxl6N_SSE418FindBestMultiplierEPKfS2_mffb.exit.thread, label %bb.n

_ZN3jxl6N_SSE418FindBestMultiplierEPKfS2_mffb.exit.thread: ; preds = %.lr.ph348, %.preheader315, %bb.m
  %i.jo = shl i64 %i.i, 29
  %i.jp = ashr i64 %i.jo, 32                      ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.w, i64 %i.jp
  store i8 0, ptr %i.jq, align 1, !tbaa !38
  br label %_ZN3jxl6N_SSE418FindBestMultiplierEPKfS2_mffb.exit256

bb.n:                                             ; preds = %bb.m
  br i1 %7, label %.preheader312.preheader, label %.preheader.i

.preheader312.preheader:                          ; preds = %bb.n
  %i.jr = add i64 %.4.us, -4                      ; 3 uses
  %i.js = lshr exact i64 %i.jr, 2
  %i.jt = add nuw nsw i64 %i.js, 1                ; 2 uses
  %i.ju = icmp eq i64 %i.jr, 0
  br i1 %i.ju, label %.preheader312.epil.preheader, label %.preheader312.preheader.new

.preheader312.preheader.new:                      ; preds = %.preheader312.preheader
  %unroll_iter527 = and i64 %i.jt, 9223372036854775806
  br label %.preheader312

.preheader.i:                                     ; preds = %bb.n
  %i.jv = uitofp i64 %.4.us to float
  %i.jw = fmul nnan float %i.jv, 2.000000e-09     ; 3 uses
  br label %.lr.ph.i.i

.unr-lcssa:                                       ; preds = %.preheader312
  %i.jx = and i64 %i.jr, 4
  %lcmp.mod523.not.not = icmp eq i64 %i.jx, 0
  br i1 %lcmp.mod523.not.not, label %.preheader312.epil.preheader, label %bb.o

.preheader312.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader312.preheader
  %.sroa.039.082.i.epil.init = phi <4 x float> [ zeroinitializer, %.preheader312.preheader ], [ %i.ls, %.unr-lcssa ]
  %.sroa.037.081.i.epil.init = phi <4 x float> [ zeroinitializer, %.preheader312.preheader ], [ %i.lu, %.unr-lcssa ]
  %.06680.i.epil.init = phi i64 [ 0, %.preheader312.preheader ], [ %i.lv, %.unr-lcssa ] ; 2 uses
  %lcmp.mod526 = trunc i64 %i.jt to i1
  tail call void @llvm.assume(i1 %lcmp.mod526)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.06680.i.epil.init
  %i.jz = load <4 x float>, ptr %i.jy, align 16, !tbaa !38 ; 2 uses
  %i.ka = fmul <4 x float> %i.jz, splat (float f0x3C430C31) ; 3 uses
  %i.kb = fmul <4 x float> %i.jz, zeroinitializer
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.06680.i.epil.init
  %i.kd = load <4 x float>, ptr %i.kc, align 16, !tbaa !38
  %i.ke = fsub <4 x float> %i.kb, %i.kd
  %i.kf = fmul <4 x float> %i.ka, %i.ka
  %i.kg = fadd <4 x float> %.sroa.039.082.i.epil.init, %i.kf
  %i.kh = fmul <4 x float> %i.ka, %i.ke
  %i.ki = fadd <4 x float> %.sroa.037.081.i.epil.init, %i.kh
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.preheader312.epil.preheader
  %.lcssa513 = phi <4 x float> [ %i.ls, %.unr-lcssa ], [ %i.kg, %.preheader312.epil.preheader ] ; 2 uses
  %.lcssa512 = phi <4 x float> [ %i.lu, %.unr-lcssa ], [ %i.ki, %.preheader312.epil.preheader ] ; 2 uses
  %i.kj = shufflevector <4 x float> %.lcssa512, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kk = fadd <4 x float> %.lcssa512, %i.kj      ; 2 uses
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.km = fadd <4 x float> %i.kk, %i.kl
  %i.kn = extractelement <4 x float> %i.km, i64 0
  %i.ko = fneg float %i.kn
  %i.kp = shufflevector <4 x float> %.lcssa513, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kq = fadd <4 x float> %.lcssa513, %i.kp      ; 2 uses
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ks = fadd <4 x float> %i.kq, %i.kr
  %i.kt = extractelement <4 x float> %i.ks, i64 0
  %i.ku = uitofp i64 %.4.us to float
  %i.kv = fmul nnan float %i.ku, f0x3089705F
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kv, float 5.000000e-01, float %i.kt)
  %i.kx = fdiv float %i.ko, %i.kw
  br label %.loopexit.i

.preheader312:                                    ; preds = %.preheader312, %.preheader312.preheader.new
  %.sroa.039.082.i = phi <4 x float> [ zeroinitializer, %.preheader312.preheader.new ], [ %i.ls, %.preheader312 ]
  %.sroa.037.081.i = phi <4 x float> [ zeroinitializer, %.preheader312.preheader.new ], [ %i.lu, %.preheader312 ]
  %.06680.i = phi i64 [ 0, %.preheader312.preheader.new ], [ %i.lv, %.preheader312 ] ; 4 uses
  %niter528 = phi i64 [ 0, %.preheader312.preheader.new ], [ %niter528.next.1, %.preheader312 ]
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.06680.i
  %i.kz = load <4 x float>, ptr %i.ky, align 16, !tbaa !38 ; 2 uses
  %i.la = fmul <4 x float> %i.kz, splat (float f0x3C430C31) ; 3 uses
  %i.lb = fmul <4 x float> %i.kz, zeroinitializer
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.06680.i
  %i.ld = load <4 x float>, ptr %i.lc, align 16, !tbaa !38
  %i.le = fsub <4 x float> %i.lb, %i.ld
  %i.lf = fmul <4 x float> %i.la, %i.la
  %i.lg = fadd <4 x float> %.sroa.039.082.i, %i.lf
  %i.lh = fmul <4 x float> %i.la, %i.le
  %i.li = fadd <4 x float> %.sroa.037.081.i, %i.lh
  %i.lj = or disjoint i64 %.06680.i, 4            ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.lj
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !tbaa !38 ; 2 uses
  %i.lm = fmul <4 x float> %i.ll, splat (float f0x3C430C31) ; 3 uses
  %i.ln = fmul <4 x float> %i.ll, zeroinitializer
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.lj
  %i.lp = load <4 x float>, ptr %i.lo, align 16, !tbaa !38
  %i.lq = fsub <4 x float> %i.ln, %i.lp
  %i.lr = fmul <4 x float> %i.lm, %i.lm
  %i.ls = fadd <4 x float> %i.lg, %i.lr           ; 3 uses
  %i.lt = fmul <4 x float> %i.lm, %i.lq
  %i.lu = fadd <4 x float> %i.li, %i.lt           ; 3 uses
  %i.lv = add nuw i64 %.06680.i, 8                ; 2 uses
  %niter528.next.1 = add i64 %niter528, 2         ; 2 uses
  %niter528.ncmp.1.not = icmp eq i64 %niter528.next.1, %unroll_iter527
  br i1 %niter528.ncmp.1.not, label %.unr-lcssa, label %.preheader312, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %_ZNK3jxl6N_SSE411CFLFunction7ComputeEffPfS2_.exit.i, %.preheader.i
  %.06379.i = phi i64 [ 0, %.preheader.i ], [ %i.oz, %_ZNK3jxl6N_SSE411CFLFunction7ComputeEffPfS2_.exit.i ]
  %.06578.i = phi float [ 0.000000e+00, %.preheader.i ], [ %i.ov, %_ZNK3jxl6N_SSE411CFLFunction7ComputeEffPfS2_.exit.i ] ; 5 uses
  %i.lw = fadd float %.06578.i, 1.000000e+02      ; 2 uses
  %i.lx = fadd float %.06578.i, -1.000000e+02     ; 2 uses
  %i.ly = insertelement <4 x float> poison, float %.06578.i, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.p

end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX211ComputeTileERKNS_6Image3IfEERKNS_5RectTImEERKNS_15DequantMatricesEPKNS_15AcStrategyImageEPKNS_5PlaneIiEEPKNS_9QuantizerES8_bbPNSF_IaEESN_PNSF_IfEENS_4SpanIfEE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph344.us, %.loopexit.us
  %indvar457 = phi i64 [ 0, %.lr.ph344.us ], [ %indvar.next458, %.loopexit.us ] ; 2 uses
  %.0221340.us = phi i64 [ %i.i, %.lr.ph344.us ], [ %i.jb, %.loopexit.us ] ; 5 uses
  %.1339.us = phi i64 [ %.0223346.us, %.lr.ph344.us ], [ %.4.us, %.loopexit.us ] ; 4 uses
  %i.dc = shl i64 %indvar457, 2                   ; 4 uses
  %scevgep459 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %scevgep461 = getelementptr i8, ptr %i.cz, i64 %i.dc ; 4 uses
  %scevgep463 = getelementptr i8, ptr %i.da, i64 %i.dc ; 3 uses
  %scevgep465 = getelementptr i8, ptr %i.db, i64 %i.dc ; 5 uses
  br i1 %8, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.de = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.df = mul i64 %i.de, %.0222347.us
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dg, i64 64) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0221340.us
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38  ; 2 uses
  %i.dj = lshr i8 %i.di, 1
  %i.dk = trunc i8 %i.di to i1
  %extract.t.us = zext nneg i8 %i.dj to i32
  br i1 %i.dk, label %.thread.us, label %.loopexit.us

.thread.us:                                       ; preds = %bb.f, %bb.e
  %storemerge307.off0.us = phi i32 [ %extract.t.us, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.dl = zext nneg i32 %storemerge307.off0.us to i64 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !38
  %i.do = zext i8 %i.dn to i64                    ; 11 uses
  %i.dp = shl i64 %.0221340.us, 3                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dq, i64 noundef %i.cx, ptr noundef %i.am, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.am, ptr noundef nonnull %i.aw, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.dr, i64 noundef %i.cx, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ay, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge307.off0.us, ptr noundef %i.ds, i64 noundef %i.cx, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge307.off0.us, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.az, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.dt = load ptr, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %.idx.i229.us = mul nuw nsw i64 %i.dl, 24
  %i.du = getelementptr i8, ptr %i.bn, i64 %.idx.i229.us ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !69
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dy
  br i1 %8, label %.preheader314.us.preheader, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.ea = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !53
  %i.ed = load float, ptr %i.bp, align 4, !tbaa !73
  %i.ee = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.ef = sitofp i32 %i.ee to float
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 68
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !53
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ei, i64 1
  %i.el = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = fdiv <2 x float> splat (float 1.000000e+00), %i.en
  br label %.preheader314.us.preheader

.preheader314.us.preheader:                       ; preds = %.thread.us, %bb.g
  %i.ep = phi <2 x float> [ %i.eo, %bb.g ], [ splat (float 1.000000e+00), %.thread.us ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.dl
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !38
  %i.es = zext i8 %i.er to i64                    ; 6 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 3 uses
  %umax366 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = tail call i64 @llvm.usub.sat.i64(i64 %i.es, i64 1) ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = mul nuw nsw i64 %i.eu, %i.do
  %i.ew = shl nuw nsw i64 %umax, 2                ; 2 uses
  %i.ex = getelementptr i8, ptr %scevgep, i64 %i.ev
  %scevgep456 = getelementptr i8, ptr %i.ex, i64 %i.ew ; 2 uses
  %i.ey = mul i64 %i.by, %i.et
  %i.ez = add i64 %i.ey, %i.ew                    ; 4 uses
  %scevgep460 = getelementptr i8, ptr %scevgep459, i64 %i.ez ; 2 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.ez ; 3 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.ez ; 2 uses
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.ez ; 3 uses
  %i.fa = insertelement <4 x ptr> poison, ptr %scevgep459, i64 0 ; 2 uses
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %scevgep461, i64 1
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep463, i64 2 ; 2 uses
  %i.fd = shufflevector <4 x ptr> %i.fc, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fe = insertelement <4 x ptr> poison, ptr %scevgep464, i64 0
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %scevgep460, i64 1
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %scevgep456, i64 2
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep462, i64 3 ; 2 uses
  %i.fi = insertelement <4 x ptr> %i.fc, ptr %i.aw, i64 3
  %i.fj = shufflevector <4 x ptr> %i.fh, <4 x ptr> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 0>
  %i.fk = insertelement <4 x ptr> %i.fa, ptr %scevgep465, i64 1
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %scevgep461, i64 2
  %i.fm = shufflevector <4 x ptr> %i.fl, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fn = insertelement <4 x ptr> %i.cg, ptr %scevgep465, i64 0
  %i.fo = shufflevector <4 x ptr> %i.fn, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fp = insertelement <4 x ptr> poison, ptr %scevgep460, i64 0
  %i.fq = insertelement <4 x ptr> %i.fp, ptr %scevgep466, i64 1 ; 2 uses
  %i.fr = insertelement <4 x ptr> %i.fq, ptr %scevgep462, i64 2
  %i.fs = shufflevector <4 x ptr> %i.fr, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ft = shufflevector <4 x ptr> %i.fq, <4 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %i.fu = insertelement <2 x ptr> %i.ft, ptr %scevgep456, i64 1
  %i.fv = shufflevector <2 x ptr> %i.fu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fw = shl nuw i64 1, %i.dl
  %i.fx = and i64 %i.fw, 6291455
  %min.iters.check.not = icmp eq i64 %i.fx, 0
  %bound0 = icmp ult ptr %scevgep465, %scevgep464
  %bound1 = icmp ult ptr %scevgep463, %scevgep466
  %found.conflict = and i1 %bound0, %bound1
  %bound0467 = icmp ult ptr %scevgep465, %scevgep462
  %bound1468 = icmp ult ptr %scevgep461, %scevgep466
  %found.conflict469 = and i1 %bound0467, %bound1468
  %i.fy = icmp ult <4 x ptr> %i.fo, %i.fs
  %i.fz = icmp ult <4 x ptr> %i.fm, %i.fv
  %i.ga = icmp ult <4 x ptr> %i.fd, %i.fh
  %i.gb = icmp ult <4 x ptr> %i.fi, %i.fj
  %i.gc = shufflevector <4 x i1> %i.gb, <4 x i1> poison, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %i.gd = and <4 x i1> %i.ga, %i.gc
  %i.ge = and <4 x i1> %i.fz, %i.fy
  %i.gf = bitcast <4 x i1> %i.gd to i4
  %i.gg = icmp ne i4 %i.gf, 0
  %i.gh = bitcast <4 x i1> %i.ge to i4
  %i.gi = icmp ne i4 %i.gh, 0
  %op.rdx512 = or i1 %i.gi, %found.conflict
  %op.rdx513 = or i1 %found.conflict469, %i.gg
  %op.rdx514 = or i1 %op.rdx512, %op.rdx513
  %n.vec = and i64 %umax, 248                     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ep, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat503 = shufflevector <2 x float> %i.ep, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.do
  %i.gj = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %i.gk = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  br label %.preheader314.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0219328.us = phi i64 [ %i.hc, %scalar.ph ], [ %.0219328.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gl = add nuw nsw i64 %.0219328.us, %i.jw     ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !53
  %i.go = fmul float %i.gj, %i.gn
  %i.gp = add i64 %i.jz, %.0219328.us             ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gp
  store float %i.go, ptr %i.gq, align 4, !tbaa !53
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.gl
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !53
  %i.gt = fmul float %i.gj, %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gp
  store float %i.gt, ptr %i.gu, align 4, !tbaa !53
  %i.gv = load float, ptr %i.gm, align 4, !tbaa !53
  %i.gw = fmul float %i.gk, %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.gp
  store float %i.gw, ptr %i.gx, align 4, !tbaa !53
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.gl
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !53
  %i.ha = fmul float %i.gk, %i.gz
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.gp
  store float %i.ha, ptr %i.hb, align 4, !tbaa !53
  %i.hc = add nuw nsw i64 %.0219328.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.hc, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !746

._crit_edge330.split.us:                          ; preds = %._crit_edge.us
  %i.hd = add i64 %i.i, %i.do
  %i.he = icmp ugt i64 %i.hd, %i.l
  %i.hf = add i64 %i.h, %i.es
  %i.hg = icmp ugt i64 %i.hf, %i.o
  %or.cond.us = select i1 %i.he, i1 true, i1 %i.hg
  br i1 %or.cond.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %._crit_edge330.split.us
  %i.hh = tail call noundef i64 @llvm.umin.i64(i64 %i.es, i64 %i.do) ; 4 uses
  %i.hi = tail call noundef i64 @llvm.umax.i64(i64 %i.es, i64 %i.do) ; 3 uses
  %.not = icmp eq i64 %i.hh, 0
  br i1 %.not, label %._crit_edge334.split.us, label %.preheader313.lr.ph.us

._crit_edge334.split.us.loopexit.unr-lcssa:       ; preds = %.preheader313.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge334.split.us, label %.preheader313.us.epil.preheader

.preheader313.us.epil.preheader:                  ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.preheader
  %.0218333.us.epil.init = phi i64 [ 0, %.preheader313.us.preheader ], [ %i.jv, %._crit_edge334.split.us.loopexit.unr-lcssa ]
  %lcmp.mod527 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod527)
  br label %.preheader313.us.epil

.preheader313.us.epil:                            ; preds = %.preheader313.us.epil, %.preheader313.us.epil.preheader
  %.0218333.us.epil = phi i64 [ %i.hn, %.preheader313.us.epil ], [ %.0218333.us.epil.init, %.preheader313.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader313.us.epil ], [ 0, %.preheader313.us.epil.preheader ]
  %i.hj = mul nuw nsw i64 %.0218333.us.epil, %i.kp ; 3 uses
  %i.hk = getelementptr [4 x i8], ptr %i.am, i64 %i.hj
  %i.hl = getelementptr [4 x i8], ptr %i.an, i64 %i.hj
  %i.hm = getelementptr [4 x i8], ptr %i.ao, i64 %i.hj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hk, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hl, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hm, i8 0, i64 %i.kq, i1 false), !tbaa !53
  %i.hn = add nuw nsw i64 %.0218333.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge334.split.us, label %.preheader313.us.epil, !llvm.loop !747

._crit_edge334.split.us:                          ; preds = %._crit_edge334.split.us.loopexit.unr-lcssa, %.preheader313.us.epil, %.preheader313.lr.ph.us, %bb.h
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge334.split.us
  %i.ho = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.hp = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.hq = mul i64 %i.hp, %.0222347.us
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hr, i64 64) ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %.0221340.us
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !77
  %i.hu = sitofp i32 %i.ht to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge334.split.us
  %i.hv = phi float [ %i.hu, %bb.i ], [ 1.000000e+00, %._crit_edge334.split.us ]
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hw = load float, ptr %i.bp, align 4, !tbaa !73
  %i.hx = fmul float %i.hw, 1.280000e+02
  %i.hy = fmul float %i.hv, %i.hx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hz = phi float [ %i.hy, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.ia = insertelement <8 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <8 x float> %i.ia, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ic = shl nuw nsw i64 %i.do, 6
  %i.id = mul nuw nsw i64 %i.ic, %i.es            ; 2 uses
  %.not352 = icmp eq i64 %i.id, 0
  br i1 %.not352, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %.lr.ph.us
  %.0336.us = phi i64 [ %i.iz, %.lr.ph.us ], [ 0, %bb.l ] ; 6 uses
  %.2335.us = phi i64 [ %i.iy, %.lr.ph.us ], [ %.1339.us, %bb.l ] ; 5 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0336.us
  %i.if = load <8 x float>, ptr %i.ie, align 32, !tbaa !38 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0336.us
  %i.ih = load <8 x float>, ptr %i.ig, align 32, !tbaa !38
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0336.us
  %i.ij = load <8 x float>, ptr %i.ii, align 32, !tbaa !38
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.0336.us
  %i.il = load <8 x float>, ptr %i.ik, align 32, !tbaa !38
  %i.im = fmul <8 x float> %i.ib, %i.il           ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.0336.us
  %i.io = load <8 x float>, ptr %i.in, align 32, !tbaa !38
  %i.ip = fmul <8 x float> %i.ib, %i.io           ; 2 uses
  %i.iq = fmul <8 x float> %i.if, %i.im
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.2335.us
  store <8 x float> %i.iq, ptr %i.ir, align 32, !tbaa !38
  %i.is = fmul <8 x float> %i.ih, %i.im
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.2335.us
  store <8 x float> %i.is, ptr %i.it, align 32, !tbaa !38
  %i.iu = fmul <8 x float> %i.if, %i.ip
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.2335.us
  store <8 x float> %i.iu, ptr %i.iv, align 32, !tbaa !38
  %i.iw = fmul <8 x float> %i.ij, %i.ip
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.2335.us
  store <8 x float> %i.iw, ptr %i.ix, align 32, !tbaa !38
  %i.iy = add i64 %.2335.us, 8                    ; 2 uses
  %i.iz = add nuw nsw i64 %.0336.us, 8            ; 2 uses
  %i.ja = icmp samesign ult i64 %i.iz, %i.id
  br i1 %i.ja, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !748

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.l, %._crit_edge330.split.us, %bb.f
  %.4.us = phi i64 [ %.1339.us, %bb.f ], [ %.1339.us, %._crit_edge330.split.us ], [ %.1339.us, %bb.l ], [ %i.iy, %.lr.ph.us ] ; 12 uses
  %i.jb = add i64 %.0221340.us, 1                 ; 2 uses
  %exitcond369.not = icmp eq i64 %i.jb, %i.l
  %indvar.next458 = add i64 %indvar457, 1
  br i1 %exitcond369.not, label %._crit_edge345.us, label %bb.e, !llvm.loop !749

.preheader313.us:                                 ; preds = %.preheader313.us, %.preheader313.us.preheader.new
  %.0218333.us = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %i.jv, %.preheader313.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader313.us.preheader.new ], [ %niter.next.3, %.preheader313.us ]
  %i.jc = mul nuw nsw i64 %.0218333.us, %i.kp     ; 3 uses
  %i.jd = getelementptr [4 x i8], ptr %i.am, i64 %i.jc
  %i.je = getelementptr [4 x i8], ptr %i.an, i64 %i.jc
  %i.jf = getelementptr [4 x i8], ptr %i.ao, i64 %i.jc
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.je, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jf, i8 0, i64 %i.kq, i1 false), !tbaa !53
  %i.jg = or disjoint i64 %.0218333.us, 1
  %i.jh = mul nuw nsw i64 %i.jg, %i.kp            ; 3 uses
  %i.ji = getelementptr [4 x i8], ptr %i.am, i64 %i.jh
  %i.jj = getelementptr [4 x i8], ptr %i.an, i64 %i.jh
  %i.jk = getelementptr [4 x i8], ptr %i.ao, i64 %i.jh
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ji, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jj, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.kq, i1 false), !tbaa !53
  %i.jl = or disjoint i64 %.0218333.us, 2
  %i.jm = mul nuw nsw i64 %i.jl, %i.kp            ; 3 uses
  %i.jn = getelementptr [4 x i8], ptr %i.am, i64 %i.jm
  %i.jo = getelementptr [4 x i8], ptr %i.an, i64 %i.jm
  %i.jp = getelementptr [4 x i8], ptr %i.ao, i64 %i.jm
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jo, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jp, i8 0, i64 %i.kq, i1 false), !tbaa !53
  %i.jq = or disjoint i64 %.0218333.us, 3
  %i.jr = mul nuw nsw i64 %i.jq, %i.kp            ; 3 uses
  %i.js = getelementptr [4 x i8], ptr %i.am, i64 %i.jr
  %i.jt = getelementptr [4 x i8], ptr %i.an, i64 %i.jr
  %i.ju = getelementptr [4 x i8], ptr %i.ao, i64 %i.jr
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.js, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jt, i8 0, i64 %i.kq, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ju, i8 0, i64 %i.kq, i1 false), !tbaa !53
  %i.jv = add nuw nsw i64 %.0218333.us, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge334.split.us.loopexit.unr-lcssa, label %.preheader313.us, !llvm.loop !750

.preheader314.us:                                 ; preds = %.preheader314.us.preheader, %._crit_edge.us
  %.0220329.us = phi i64 [ %i.ko, %._crit_edge.us ], [ 0, %.preheader314.us.preheader ] ; 3 uses
  %i.jw = mul nuw nsw i64 %.0220329.us, %i.do     ; 2 uses
  %i.jx = add i64 %.0220329.us, %.0222347.us
  %i.jy = mul i64 %i.jx, %i.c
  %i.jz = add i64 %i.jy, %.0221340.us             ; 2 uses
  %min.iters.check.not.not = xor i1 %min.iters.check.not, true
  %brmerge = select i1 %min.iters.check.not.not, i1 true, i1 %op.rdx514
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader314.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader314.us ] ; 3 uses
  %i.ka = add nuw nsw i64 %index, %i.jw           ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ka ; 2 uses
  %wide.load = load <8 x float>, ptr %i.kb, align 4, !tbaa !53, !alias.scope !760
  %i.kc = fmul <8 x float> %broadcast.splat, %wide.load
  %i.kd = add i64 %i.jz, %index                   ; 4 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.kd
  store <8 x float> %i.kc, ptr %i.ke, align 4, !tbaa !53, !alias.scope !761, !noalias !762
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ka
  %wide.load504 = load <8 x float>, ptr %i.kf, align 4, !tbaa !53, !alias.scope !760
  %i.kg = fmul <8 x float> %broadcast.splat, %wide.load504
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.kd
  store <8 x float> %i.kg, ptr %i.kh, align 4, !tbaa !53, !alias.scope !763, !noalias !764
  %wide.load505 = load <8 x float>, ptr %i.kb, align 4, !tbaa !53, !alias.scope !760
  %i.ki = fmul <8 x float> %broadcast.splat503, %wide.load505
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.kd
  store <8 x float> %i.ki, ptr %i.kj, align 4, !tbaa !53, !alias.scope !765, !noalias !766
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ka
  %wide.load506 = load <8 x float>, ptr %i.kk, align 4, !tbaa !53, !alias.scope !760
  %i.kl = fmul <8 x float> %broadcast.splat503, %wide.load506
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.kd
  store <8 x float> %i.kl, ptr %i.km, align 4, !tbaa !53, !alias.scope !767, !noalias !760
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !757

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader314.us, %middle.block
  %.0219328.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader314.us ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.ko = add nuw nsw i64 %.0220329.us, 1         ; 2 uses
  %exitcond367.not = icmp eq i64 %i.ko, %umax366
  br i1 %exitcond367.not, label %._crit_edge330.split.us, label %.preheader314.us, !llvm.loop !758

.preheader313.lr.ph.us:                           ; preds = %bb.h
  %.not351 = icmp eq i64 %i.hi, 0
  %i.kp = shl nuw nsw i64 %i.hi, 3                ; 5 uses
  br i1 %.not351, label %._crit_edge334.split.us, label %.preheader313.us.preheader

.preheader313.us.preheader:                       ; preds = %.preheader313.lr.ph.us
  %i.kq = shl nuw nsw i64 %i.hi, 2                ; 15 uses
  %xtraiter = and i64 %i.hh, 3                    ; 3 uses
  %i.kr = icmp samesign ult i64 %i.hh, 4
  br i1 %i.kr, label %.preheader313.us.epil.preheader, label %.preheader313.us.preheader.new

.preheader313.us.preheader.new:                   ; preds = %.preheader313.us.preheader
  %unroll_iter = and i64 %i.hh, 252
  br label %.preheader313.us

._crit_edge345.us:                                ; preds = %.loopexit.us
  %i.ks = add i64 %.0222347.us, 1                 ; 2 uses
  %exitcond370.not = icmp eq i64 %i.ks, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond370.not, label %._crit_edge349, label %.lr.ph344.us, !llvm.loop !759

._crit_edge349:                                   ; preds = %._crit_edge345.us
  %i.kt = and i64 %.4.us, 7
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %bb.m, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit

bb.m:                                             ; preds = %._crit_edge349
  %i.kv = icmp eq i64 %.4.us, 0
  br i1 %i.kv, label %_ZN3jxl6N_AVX218FindBestMultiplierEPKfS2_mffb.exit.thread, label %bb.n

_ZN3jxl6N_AVX218FindBestMultiplierEPKfS2_mffb.exit.thread: ; preds = %.lr.ph348, %.preheader315, %bb.m
  %i.kw = shl i64 %i.i, 29
  %i.kx = ashr i64 %i.kw, 32                      ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %i.w, i64 %i.kx
  store i8 0, ptr %i.ky, align 1, !tbaa !38
  br label %_ZN3jxl6N_AVX218FindBestMultiplierEPKfS2_mffb.exit256

bb.n:                                             ; preds = %bb.m
  br i1 %7, label %.preheader312.preheader, label %.preheader.i

.preheader312.preheader:                          ; preds = %bb.n
  %i.kz = add i64 %.4.us, -8                      ; 3 uses
  %i.la = lshr exact i64 %i.kz, 3
  %i.lb = add nuw nsw i64 %i.la, 1                ; 2 uses
  %i.lc = icmp eq i64 %i.kz, 0
  br i1 %i.lc, label %.preheader312.epil.preheader, label %.preheader312.preheader.new

.preheader312.preheader.new:                      ; preds = %.preheader312.preheader
  %unroll_iter535 = and i64 %i.lb, 4611686018427387902
  br label %.preheader312

.preheader.i:                                     ; preds = %bb.n
  %i.ld = uitofp i64 %.4.us to float
  %i.le = fmul nnan float %i.ld, 2.000000e-09     ; 3 uses
  br label %.lr.ph.i.i

.unr-lcssa:                                       ; preds = %.preheader312
  %i.lf = and i64 %i.kz, 8
  %lcmp.mod531.not.not = icmp eq i64 %i.lf, 0
  br i1 %lcmp.mod531.not.not, label %.preheader312.epil.preheader, label %bb.o

.preheader312.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader312.preheader
  %.sroa.039.088.i.epil.init = phi <8 x float> [ zeroinitializer, %.preheader312.preheader ], [ %i.mz, %.unr-lcssa ]
  %.sroa.037.087.i.epil.init = phi <8 x float> [ zeroinitializer, %.preheader312.preheader ], [ %i.na, %.unr-lcssa ]
  %.06686.i.epil.init = phi i64 [ 0, %.preheader312.preheader ], [ %i.nb, %.unr-lcssa ] ; 2 uses
  %lcmp.mod534 = trunc i64 %i.lb to i1
  tail call void @llvm.assume(i1 %lcmp.mod534)
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.06686.i.epil.init
  %i.lh = load <8 x float>, ptr %i.lg, align 32, !tbaa !38 ; 2 uses
  %i.li = fmul <8 x float> %i.lh, splat (float f0x3C430C31) ; 3 uses
  %i.lj = fmul <8 x float> %i.lh, zeroinitializer
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.06686.i.epil.init
  %i.ll = load <8 x float>, ptr %i.lk, align 32, !tbaa !38
  %i.lm = fsub <8 x float> %i.lj, %i.ll
  %i.ln = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.li, <8 x float> %i.li, <8 x float> %.sroa.039.088.i.epil.init)
  %i.lo = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.li, <8 x float> %i.lm, <8 x float> %.sroa.037.087.i.epil.init)
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.preheader312.epil.preheader
  %.lcssa521 = phi <8 x float> [ %i.mz, %.unr-lcssa ], [ %i.ln, %.preheader312.epil.preheader ] ; 2 uses
  %.lcssa520 = phi <8 x float> [ %i.na, %.unr-lcssa ], [ %i.lo, %.preheader312.epil.preheader ] ; 2 uses
  %i.lp = shufflevector <8 x float> %.lcssa520, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.lq = fadd <8 x float> %.lcssa520, %i.lp      ; 2 uses
  %i.lr = shufflevector <8 x float> %i.lq, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ls = fadd <8 x float> %i.lq, %i.lr           ; 2 uses
  %i.lt = shufflevector <8 x float> %i.ls, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lu = fadd <8 x float> %i.ls, %i.lt
  %i.lv = extractelement <8 x float> %i.lu, i64 0
  %i.lw = fneg float %i.lv
  %i.lx = shufflevector <8 x float> %.lcssa521, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ly = fadd <8 x float> %.lcssa521, %i.lx      ; 2 uses
  %i.lz = shufflevector <8 x float> %i.ly, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ma = fadd <8 x float> %i.ly, %i.lz           ; 2 uses
  %i.mb = shufflevector <8 x float> %i.ma, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mc = fadd <8 x float> %i.ma, %i.mb
  %i.md = extractelement <8 x float> %i.mc, i64 0
  %i.me = uitofp i64 %.4.us to float
  %i.mf = fmul nnan float %i.me, f0x3089705F
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mf, float 5.000000e-01, float %i.md)
  %i.mh = fdiv float %i.lw, %i.mg
  br label %.loopexit.i

.preheader312:                                    ; preds = %.preheader312, %.preheader312.preheader.new
  %.sroa.039.088.i = phi <8 x float> [ zeroinitializer, %.preheader312.preheader.new ], [ %i.mz, %.preheader312 ]
  %.sroa.037.087.i = phi <8 x float> [ zeroinitializer, %.preheader312.preheader.new ], [ %i.na, %.preheader312 ]
  %.06686.i = phi i64 [ 0, %.preheader312.preheader.new ], [ %i.nb, %.preheader312 ] ; 4 uses
  %niter536 = phi i64 [ 0, %.preheader312.preheader.new ], [ %niter536.next.1, %.preheader312 ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.06686.i
  %i.mj = load <8 x float>, ptr %i.mi, align 32, !tbaa !38 ; 2 uses
  %i.mk = fmul <8 x float> %i.mj, splat (float f0x3C430C31) ; 3 uses
  %i.ml = fmul <8 x float> %i.mj, zeroinitializer
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.06686.i
  %i.mn = load <8 x float>, ptr %i.mm, align 32, !tbaa !38
  %i.mo = fsub <8 x float> %i.ml, %i.mn
  %i.mp = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mk, <8 x float> %i.mk, <8 x float> %.sroa.039.088.i)
  %i.mq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mk, <8 x float> %i.mo, <8 x float> %.sroa.037.087.i)
  %i.mr = or disjoint i64 %.06686.i, 8            ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mr
  %i.mt = load <8 x float>, ptr %i.ms, align 32, !tbaa !38 ; 2 uses
  %i.mu = fmul <8 x float> %i.mt, splat (float f0x3C430C31) ; 3 uses
  %i.mv = fmul <8 x float> %i.mt, zeroinitializer
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.mr
  %i.mx = load <8 x float>, ptr %i.mw, align 32, !tbaa !38
  %i.my = fsub <8 x float> %i.mv, %i.mx
  %i.mz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mu, <8 x float> %i.mu, <8 x float> %i.mp) ; 3 uses
  %i.na = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.mu, <8 x float> %i.my, <8 x float> %i.mq) ; 3 uses
  %i.nb = add nuw i64 %.06686.i, 16               ; 2 uses
  %niter536.next.1 = add i64 %niter536, 2         ; 2 uses
  %niter536.ncmp.1.not = icmp eq i64 %niter536.next.1, %unroll_iter535
  br i1 %niter536.ncmp.1.not, label %.unr-lcssa, label %.preheader312, !llvm.loop !4

.lr.ph.i.i:                                       ; preds = %_ZNK3jxl6N_AVX211CFLFunction7ComputeEffPfS2_.exit.i, %.preheader.i
  %.06385.i = phi i64 [ 0, %.preheader.i ], [ %i.qi, %_ZNK3jxl6N_AVX211CFLFunction7ComputeEffPfS2_.exit.i ]
  %.06584.i = phi float [ 0.000000e+00, %.preheader.i ], [ %i.qe, %_ZNK3jxl6N_AVX211CFLFunction7ComputeEffPfS2_.exit.i ] ; 5 uses
  %i.nc = fadd float %.06584.i, 1.000000e+02      ; 2 uses
  %i.nd = fadd float %.06584.i, -1.000000e+02     ; 2 uses
  %i.ne = insertelement <8 x float> poison, float %.06584.i, i64 0
  %i.nf = shufflevector <8 x float> %i.ne, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ng = insertelement <8 x float> poison, float %i.nc, i64 0
  %i.nh = shufflevector <8 x float> %i.ng, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ni = insertelement <8 x float> poison, float %i.nd, i64 0
  %i.nj = shufflevector <8 x float> %i.ni, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0122.0175.i.i = phi <8 x float> [ zeroinitializer, %.lr.ph.i.i ], [ %i.op, %bb.p ]
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE211ComputeTileERKNS_6Image3IfEERKNS_5RectTImEERKNS_15DequantMatricesEPKNS_15AcStrategyImageEPKNS_5PlaneIiEEPKNS_9QuantizerES8_bbPNSF_IaEESN_PNSF_IfEENS_4SpanIfEE:bb.a
bb.e:                                             ; preds = %.lr.ph346.us, %.loopexit.us
  %indvar459 = phi i64 [ 0, %.lr.ph346.us ], [ %indvar.next460, %.loopexit.us ] ; 2 uses
  %.0221342.us = phi i64 [ %i.i, %.lr.ph346.us ], [ %i.io, %.loopexit.us ] ; 5 uses
  %.1341.us = phi i64 [ %.0223348.us, %.lr.ph346.us ], [ %.4.us, %.loopexit.us ] ; 4 uses
  %i.dc = shl i64 %indvar459, 2                   ; 4 uses
  %scevgep461 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 5 uses
  %scevgep463 = getelementptr i8, ptr %i.cz, i64 %i.dc ; 5 uses
  %scevgep465 = getelementptr i8, ptr %i.da, i64 %i.dc ; 5 uses
  %scevgep467 = getelementptr i8, ptr %i.db, i64 %i.dc ; 5 uses
  br i1 %8, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.de = load i64, ptr %i.bl, align 8, !tbaa !51
  %i.df = mul i64 %i.de, %.0222349.us
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dg, i64 64) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.0221342.us
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38  ; 2 uses
  %i.dj = lshr i8 %i.di, 1
  %i.dk = trunc i8 %i.di to i1
  %extract.t.us = zext nneg i8 %i.dj to i32
  br i1 %i.dk, label %.thread.us, label %.loopexit.us

.thread.us:                                       ; preds = %bb.f, %bb.e
  %storemerge309.off0.us = phi i32 [ %extract.t.us, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %i.dl = zext nneg i32 %storemerge309.off0.us to i64 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !38
  %i.do = zext i8 %i.dn to i64                    ; 11 uses
  %i.dp = shl i64 %.0221342.us, 3                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.dq, i64 noundef %i.cx, ptr noundef %i.am, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.am, ptr noundef nonnull %i.aw, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.dr, i64 noundef %i.cx, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge309.off0.us, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ay, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dp
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %storemerge309.off0.us, ptr noundef %i.ds, i64 noundef %i.cx, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ba) #44
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %storemerge309.off0.us, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.az, i64 noundef %i.do, ptr noundef nonnull %i.ba) #44
  %i.dt = load ptr, ptr %i.bm, align 8, !tbaa !68 ; 2 uses
  %.idx.i229.us = mul nuw nsw i64 %i.dl, 24
  %i.du = getelementptr i8, ptr %i.bn, i64 %.idx.i229.us ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !69
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dy
  br i1 %8, label %.preheader316.us.preheader, label %bb.g

bb.g:                                             ; preds = %.thread.us
  %i.ea = load ptr, ptr %i.bo, align 8, !tbaa !72 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !53
  %i.ed = load float, ptr %i.bp, align 4, !tbaa !73
  %i.ee = load i32, ptr %i.bq, align 4, !tbaa !74
  %i.ef = sitofp i32 %i.ee to float
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 68
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !53
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ei, i64 1
  %i.el = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.ek, %i.em
  %i.eo = fdiv <2 x float> splat (float 1.000000e+00), %i.en
  br label %.preheader316.us.preheader

.preheader316.us.preheader:                       ; preds = %.thread.us, %bb.g
  %i.ep = phi <2 x float> [ %i.eo, %bb.g ], [ splat (float 1.000000e+00), %.thread.us ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.dl
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !38
  %i.es = zext i8 %i.er to i64                    ; 6 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1) ; 3 uses
  %umax368 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = tail call i64 @llvm.usub.sat.i64(i64 %i.es, i64 1) ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 2
  %i.ev = mul nuw nsw i64 %i.eu, %i.do
  %i.ew = shl nuw nsw i64 %umax, 2                ; 2 uses
  %i.ex = getelementptr i8, ptr %scevgep, i64 %i.ev
  %scevgep458 = getelementptr i8, ptr %i.ex, i64 %i.ew ; 4 uses
  %i.ey = mul i64 %i.by, %i.et
  %i.ez = add i64 %i.ey, %i.ew                    ; 4 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.ez ; 4 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.ez ; 4 uses
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.ez ; 4 uses
  %scevgep468 = getelementptr i8, ptr %scevgep467, i64 %i.ez ; 4 uses
  %i.fa = insertelement <4 x ptr> poison, ptr %scevgep461, i64 0
  %i.fb = insertelement <4 x ptr> %i.fa, ptr %scevgep467, i64 1
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep463, i64 2
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep465, i64 3
  %i.fe = insertelement <4 x ptr> poison, ptr %scevgep468, i64 0
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %scevgep458, i64 1
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %scevgep466, i64 2
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep462, i64 3
  %i.fi = insertelement <4 x ptr> %i.cg, ptr %scevgep467, i64 0
  %i.fj = insertelement <4 x ptr> %i.fi, ptr %scevgep465, i64 2
  %i.fk = insertelement <4 x ptr> %i.fj, ptr %scevgep461, i64 3
  %i.fl = insertelement <4 x ptr> poison, ptr %scevgep462, i64 0
  %i.fm = insertelement <4 x ptr> %i.fl, ptr %scevgep468, i64 1
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %scevgep464, i64 2
  %i.fo = insertelement <4 x ptr> %i.fn, ptr %scevgep466, i64 3
  %i.fp = shl nuw i64 1, %i.dl
  %i.fq = and i64 %i.fp, 6291455
  %min.iters.check.not = icmp eq i64 %i.fq, 0
  %bound0 = icmp ult ptr %scevgep467, %scevgep466
  %bound1 = icmp ult ptr %scevgep465, %scevgep468
  %found.conflict = and i1 %bound0, %bound1
  %bound0469 = icmp ult ptr %scevgep467, %scevgep464
  %bound1470 = icmp ult ptr %scevgep463, %scevgep468
  %found.conflict471 = and i1 %bound0469, %bound1470
  %i.fr = icmp ult <4 x ptr> %i.fk, %i.fo
  %i.fs = icmp ult <4 x ptr> %i.fd, %i.fh
  %i.ft = and <4 x i1> %i.fs, %i.fr
  %bound0488 = icmp ult ptr %scevgep465, %scevgep458
  %bound1489 = icmp ult ptr %i.aw, %scevgep466
  %found.conflict490 = and i1 %bound0488, %bound1489
  %bound0492 = icmp ult ptr %scevgep463, %scevgep462
  %bound1493 = icmp ult ptr %scevgep461, %scevgep464
  %found.conflict494 = and i1 %bound0492, %bound1493
  %bound0496 = icmp ult ptr %scevgep463, %scevgep458
  %bound1497 = icmp ult ptr %i.aw, %scevgep464
  %found.conflict498 = and i1 %bound0496, %bound1497
  %bound0500 = icmp ult ptr %scevgep461, %scevgep458
  %bound1501 = icmp ult ptr %i.aw, %scevgep462
  %found.conflict502 = and i1 %bound0500, %bound1501
  %i.fu = bitcast <4 x i1> %i.ft to i4
  %i.fv = icmp ne i4 %i.fu, 0
  %op.rdx = or i1 %i.fv, %found.conflict
  %op.rdx509 = or i1 %found.conflict471, %found.conflict490
  %op.rdx510 = or i1 %found.conflict494, %found.conflict498
  %op.rdx511 = or i1 %op.rdx, %op.rdx509
  %op.rdx512 = or i1 %op.rdx510, %found.conflict502
  %op.rdx513 = or i1 %op.rdx511, %op.rdx512
  %n.vec = and i64 %umax, 252                     ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat505 = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.do
  %i.fw = extractelement <2 x float> %i.ep, i64 0 ; 2 uses
  %i.fx = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  br label %.preheader316.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0219330.us = phi i64 [ %i.gp, %scalar.ph ], [ %.0219330.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fy = add nuw nsw i64 %.0219330.us, %i.jj     ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fy ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !53
  %i.gb = fmul float %i.fw, %i.ga
  %i.gc = add i64 %i.jm, %.0219330.us             ; 4 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gc
  store float %i.gb, ptr %i.gd, align 4, !tbaa !53
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.fy
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !53
  %i.gg = fmul float %i.fw, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gc
  store float %i.gg, ptr %i.gh, align 4, !tbaa !53
  %i.gi = load float, ptr %i.fz, align 4, !tbaa !53
  %i.gj = fmul float %i.fx, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.gc
  store float %i.gj, ptr %i.gk, align 4, !tbaa !53
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fy
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !53
  %i.gn = fmul float %i.fx, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.gc
  store float %i.gn, ptr %i.go, align 4, !tbaa !53
  %i.gp = add nuw nsw i64 %.0219330.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %umax
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1827

._crit_edge332.split.us:                          ; preds = %._crit_edge.us
  %i.gq = add i64 %i.i, %i.do
  %i.gr = icmp ugt i64 %i.gq, %i.l
  %i.gs = add i64 %i.h, %i.es
  %i.gt = icmp ugt i64 %i.gs, %i.o
  %or.cond.us = select i1 %i.gr, i1 true, i1 %i.gt
  br i1 %or.cond.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %._crit_edge332.split.us
  %i.gu = tail call noundef i64 @llvm.umin.i64(i64 %i.es, i64 %i.do) ; 4 uses
  %i.gv = tail call noundef i64 @llvm.umax.i64(i64 %i.es, i64 %i.do) ; 3 uses
  %.not = icmp eq i64 %i.gu, 0
  br i1 %.not, label %._crit_edge336.split.us, label %.preheader315.lr.ph.us

._crit_edge336.split.us.loopexit.unr-lcssa:       ; preds = %.preheader315.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge336.split.us, label %.preheader315.us.epil.preheader

.preheader315.us.epil.preheader:                  ; preds = %._crit_edge336.split.us.loopexit.unr-lcssa, %.preheader315.us.preheader
  %.0218335.us.epil.init = phi i64 [ 0, %.preheader315.us.preheader ], [ %i.ji, %._crit_edge336.split.us.loopexit.unr-lcssa ]
  %lcmp.mod530 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod530)
  br label %.preheader315.us.epil

.preheader315.us.epil:                            ; preds = %.preheader315.us.epil, %.preheader315.us.epil.preheader
  %.0218335.us.epil = phi i64 [ %i.ha, %.preheader315.us.epil ], [ %.0218335.us.epil.init, %.preheader315.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader315.us.epil ], [ 0, %.preheader315.us.epil.preheader ]
  %i.gw = mul nuw nsw i64 %.0218335.us.epil, %i.kc ; 3 uses
  %i.gx = getelementptr [4 x i8], ptr %i.am, i64 %i.gw
  %i.gy = getelementptr [4 x i8], ptr %i.an, i64 %i.gw
  %i.gz = getelementptr [4 x i8], ptr %i.ao, i64 %i.gw
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gx, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gy, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gz, i8 0, i64 %i.kd, i1 false), !tbaa !53
  %i.ha = add nuw nsw i64 %.0218335.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge336.split.us, label %.preheader315.us.epil, !llvm.loop !1828

._crit_edge336.split.us:                          ; preds = %._crit_edge336.split.us.loopexit.unr-lcssa, %.preheader315.us.epil, %.preheader315.lr.ph.us, %bb.h
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge336.split.us
  %i.hb = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.hc = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.hd = mul i64 %i.hc, %.0222349.us
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.he, i64 64) ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.0221342.us
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !77
  %i.hh = sitofp i32 %i.hg to float
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge336.split.us
  %i.hi = phi float [ %i.hh, %bb.i ], [ 1.000000e+00, %._crit_edge336.split.us ]
  br i1 %8, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hj = load float, ptr %i.bp, align 4, !tbaa !73
  %i.hk = fmul float %i.hj, 1.280000e+02
  %i.hl = fmul float %i.hi, %i.hk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hm = phi float [ %i.hl, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.hn = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hp = shl nuw nsw i64 %i.do, 6
  %i.hq = mul nuw nsw i64 %i.hp, %i.es            ; 2 uses
  %.not354 = icmp eq i64 %i.hq, 0
  br i1 %.not354, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.l, %.lr.ph.us
  %.0338.us = phi i64 [ %i.im, %.lr.ph.us ], [ 0, %bb.l ] ; 6 uses
  %.2337.us = phi i64 [ %i.il, %.lr.ph.us ], [ %.1341.us, %bb.l ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0338.us
  %i.hs = load <4 x float>, ptr %i.hr, align 16, !tbaa !38 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.0338.us
  %i.hu = load <4 x float>, ptr %i.ht, align 16, !tbaa !38
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0338.us
  %i.hw = load <4 x float>, ptr %i.hv, align 16, !tbaa !38
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.0338.us
  %i.hy = load <4 x float>, ptr %i.hx, align 16, !tbaa !38
  %i.hz = fmul <4 x float> %i.ho, %i.hy           ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.0338.us
  %i.ib = load <4 x float>, ptr %i.ia, align 16, !tbaa !38
  %i.ic = fmul <4 x float> %i.ho, %i.ib           ; 2 uses
  %i.id = fmul <4 x float> %i.hs, %i.hz
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.2337.us
  store <4 x float> %i.id, ptr %i.ie, align 16, !tbaa !38
  %i.if = fmul <4 x float> %i.hu, %i.hz
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.2337.us
  store <4 x float> %i.if, ptr %i.ig, align 16, !tbaa !38
  %i.ih = fmul <4 x float> %i.hs, %i.ic
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.2337.us
  store <4 x float> %i.ih, ptr %i.ii, align 16, !tbaa !38
  %i.ij = fmul <4 x float> %i.hw, %i.ic
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.2337.us
  store <4 x float> %i.ij, ptr %i.ik, align 16, !tbaa !38
  %i.il = add i64 %.2337.us, 4                    ; 2 uses
  %i.im = add nuw nsw i64 %.0338.us, 4            ; 2 uses
  %i.in = icmp samesign ult i64 %i.im, %i.hq
  br i1 %i.in, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !1829

.loopexit.us:                                     ; preds = %.lr.ph.us, %bb.l, %._crit_edge332.split.us, %bb.f
  %.4.us = phi i64 [ %.1341.us, %bb.f ], [ %.1341.us, %._crit_edge332.split.us ], [ %.1341.us, %bb.l ], [ %i.il, %.lr.ph.us ] ; 12 uses
  %i.io = add i64 %.0221342.us, 1                 ; 2 uses
  %exitcond371.not = icmp eq i64 %i.io, %i.l
  %indvar.next460 = add i64 %indvar459, 1
  br i1 %exitcond371.not, label %._crit_edge347.us, label %bb.e, !llvm.loop !1830

.preheader315.us:                                 ; preds = %.preheader315.us, %.preheader315.us.preheader.new
  %.0218335.us = phi i64 [ 0, %.preheader315.us.preheader.new ], [ %i.ji, %.preheader315.us ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader315.us.preheader.new ], [ %niter.next.3, %.preheader315.us ]
  %i.ip = mul nuw nsw i64 %.0218335.us, %i.kc     ; 3 uses
  %i.iq = getelementptr [4 x i8], ptr %i.am, i64 %i.ip
  %i.ir = getelementptr [4 x i8], ptr %i.an, i64 %i.ip
  %i.is = getelementptr [4 x i8], ptr %i.ao, i64 %i.ip
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iq, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ir, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.is, i8 0, i64 %i.kd, i1 false), !tbaa !53
  %i.it = or disjoint i64 %.0218335.us, 1
  %i.iu = mul nuw nsw i64 %i.it, %i.kc            ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %i.am, i64 %i.iu
  %i.iw = getelementptr [4 x i8], ptr %i.an, i64 %i.iu
  %i.ix = getelementptr [4 x i8], ptr %i.ao, i64 %i.iu
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iv, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iw, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ix, i8 0, i64 %i.kd, i1 false), !tbaa !53
  %i.iy = or disjoint i64 %.0218335.us, 2
  %i.iz = mul nuw nsw i64 %i.iy, %i.kc            ; 3 uses
  %i.ja = getelementptr [4 x i8], ptr %i.am, i64 %i.iz
  %i.jb = getelementptr [4 x i8], ptr %i.an, i64 %i.iz
  %i.jc = getelementptr [4 x i8], ptr %i.ao, i64 %i.iz
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ja, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jb, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jc, i8 0, i64 %i.kd, i1 false), !tbaa !53
  %i.jd = or disjoint i64 %.0218335.us, 3
  %i.je = mul nuw nsw i64 %i.jd, %i.kc            ; 3 uses
  %i.jf = getelementptr [4 x i8], ptr %i.am, i64 %i.je
  %i.jg = getelementptr [4 x i8], ptr %i.an, i64 %i.je
  %i.jh = getelementptr [4 x i8], ptr %i.ao, i64 %i.je
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jf, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jg, i8 0, i64 %i.kd, i1 false), !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jh, i8 0, i64 %i.kd, i1 false), !tbaa !53
  %i.ji = add nuw nsw i64 %.0218335.us, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge336.split.us.loopexit.unr-lcssa, label %.preheader315.us, !llvm.loop !1831

.preheader316.us:                                 ; preds = %.preheader316.us.preheader, %._crit_edge.us
  %.0220331.us = phi i64 [ %i.kb, %._crit_edge.us ], [ 0, %.preheader316.us.preheader ] ; 3 uses
  %i.jj = mul nuw nsw i64 %.0220331.us, %i.do     ; 2 uses
  %i.jk = add i64 %.0220331.us, %.0222349.us
  %i.jl = mul i64 %i.jk, %i.c
  %i.jm = add i64 %i.jl, %.0221342.us             ; 2 uses
  %min.iters.check.not.not = xor i1 %min.iters.check.not, true
  %brmerge = select i1 %min.iters.check.not.not, i1 true, i1 %op.rdx513
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader316.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader316.us ] ; 3 uses
  %i.jn = add nuw nsw i64 %index, %i.jj           ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.jn ; 2 uses
  %wide.load = load <4 x float>, ptr %i.jo, align 4, !tbaa !53, !alias.scope !1841
  %i.jp = fmul <4 x float> %broadcast.splat, %wide.load
  %i.jq = add i64 %i.jm, %index                   ; 4 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.jq
  store <4 x float> %i.jp, ptr %i.jr, align 4, !tbaa !53, !alias.scope !1842, !noalias !1843
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.jn
  %wide.load506 = load <4 x float>, ptr %i.js, align 4, !tbaa !53, !alias.scope !1841
  %i.jt = fmul <4 x float> %broadcast.splat, %wide.load506
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.jq
  store <4 x float> %i.jt, ptr %i.ju, align 4, !tbaa !53, !alias.scope !1844, !noalias !1845
  %wide.load507 = load <4 x float>, ptr %i.jo, align 4, !tbaa !53, !alias.scope !1841
  %i.jv = fmul <4 x float> %broadcast.splat505, %wide.load507
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.jq
  store <4 x float> %i.jv, ptr %i.jw, align 4, !tbaa !53, !alias.scope !1846, !noalias !1847
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.jn
  %wide.load508 = load <4 x float>, ptr %i.jx, align 4, !tbaa !53, !alias.scope !1841
  %i.jy = fmul <4 x float> %broadcast.splat505, %wide.load508
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.jq
  store <4 x float> %i.jy, ptr %i.jz, align 4, !tbaa !53, !alias.scope !1848, !noalias !1841
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ka = icmp eq i64 %index.next, %n.vec
  br i1 %i.ka, label %middle.block, label %vector.body, !llvm.loop !1838

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader316.us, %middle.block
  %.0219330.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader316.us ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %i.kb = add nuw nsw i64 %.0220331.us, 1         ; 2 uses
  %exitcond369.not = icmp eq i64 %i.kb, %umax368
  br i1 %exitcond369.not, label %._crit_edge332.split.us, label %.preheader316.us, !llvm.loop !1839

.preheader315.lr.ph.us:                           ; preds = %bb.h
  %.not353 = icmp eq i64 %i.gv, 0
  %i.kc = shl nuw nsw i64 %i.gv, 3                ; 5 uses
  br i1 %.not353, label %._crit_edge336.split.us, label %.preheader315.us.preheader

.preheader315.us.preheader:                       ; preds = %.preheader315.lr.ph.us
  %i.kd = shl nuw nsw i64 %i.gv, 2                ; 15 uses
  %xtraiter = and i64 %i.gu, 3                    ; 3 uses
  %i.ke = icmp samesign ult i64 %i.gu, 4
  br i1 %i.ke, label %.preheader315.us.epil.preheader, label %.preheader315.us.preheader.new

.preheader315.us.preheader.new:                   ; preds = %.preheader315.us.preheader
  %unroll_iter = and i64 %i.gu, 252
  br label %.preheader315.us

._crit_edge347.us:                                ; preds = %.loopexit.us
  %i.kf = add i64 %.0222349.us, 1                 ; 2 uses
  %exitcond372.not = icmp eq i64 %i.kf, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond372.not, label %._crit_edge351, label %.lr.ph346.us, !llvm.loop !1840

._crit_edge351:                                   ; preds = %._crit_edge347.us
  %i.kg = and i64 %.4.us, 3
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.m, label %_ZN3jxl4SpanIfE13remove_prefixEm.exit

bb.m:                                             ; preds = %._crit_edge351
  %i.ki = icmp eq i64 %.4.us, 0
  br i1 %i.ki, label %_ZN3jxl6N_SSE218FindBestMultiplierEPKfS2_mffb.exit.thread, label %bb.n

_ZN3jxl6N_SSE218FindBestMultiplierEPKfS2_mffb.exit.thread: ; preds = %.lr.ph350, %.preheader317, %bb.m
  %i.kj = shl i64 %i.i, 29
  %i.kk = ashr i64 %i.kj, 32                      ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %i.w, i64 %i.kk
  store i8 0, ptr %i.kl, align 1, !tbaa !38
  br label %_ZN3jxl6N_SSE218FindBestMultiplierEPKfS2_mffb.exit258

bb.n:                                             ; preds = %bb.m
  br i1 %7, label %.preheader314.preheader, label %.preheader.i

.preheader314.preheader:                          ; preds = %bb.n
  %i.km = add i64 %.4.us, -4                      ; 3 uses
  %i.kn = lshr exact i64 %i.km, 2
  %i.ko = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %i.kp = icmp eq i64 %i.km, 0
  br i1 %i.kp, label %.preheader314.epil.preheader, label %.preheader314.preheader.new

.preheader314.preheader.new:                      ; preds = %.preheader314.preheader
  %unroll_iter538 = and i64 %i.ko, 9223372036854775806
  br label %.preheader314

.preheader.i:                                     ; preds = %bb.n
  %i.kq = uitofp i64 %.4.us to float
  %i.kr = fmul nnan float %i.kq, 2.000000e-09     ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i

.unr-lcssa:                                       ; preds = %.preheader314
  %i.ku = and i64 %i.km, 4
  %lcmp.mod534.not.not = icmp eq i64 %i.ku, 0
  br i1 %lcmp.mod534.not.not, label %.preheader314.epil.preheader, label %bb.o

.preheader314.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader314.preheader
  %.sroa.039.082.i.epil.init = phi <4 x float> [ zeroinitializer, %.preheader314.preheader ], [ %i.mp, %.unr-lcssa ]
  %.sroa.037.081.i.epil.init = phi <4 x float> [ zeroinitializer, %.preheader314.preheader ], [ %i.mr, %.unr-lcssa ]
  %.06680.i.epil.init = phi i64 [ 0, %.preheader314.preheader ], [ %i.ms, %.unr-lcssa ] ; 2 uses
  %lcmp.mod537 = trunc i64 %i.ko to i1
  tail call void @llvm.assume(i1 %lcmp.mod537)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.06680.i.epil.init
  %i.kw = load <4 x float>, ptr %i.kv, align 16, !tbaa !38 ; 2 uses
  %i.kx = fmul <4 x float> %i.kw, splat (float f0x3C430C31) ; 3 uses
  %i.ky = fmul <4 x float> %i.kw, zeroinitializer
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.06680.i.epil.init
  %i.la = load <4 x float>, ptr %i.kz, align 16, !tbaa !38
  %i.lb = fsub <4 x float> %i.ky, %i.la
  %i.lc = fmul <4 x float> %i.kx, %i.kx
  %i.ld = fadd <4 x float> %.sroa.039.082.i.epil.init, %i.lc
  %i.le = fmul <4 x float> %i.kx, %i.lb
  %i.lf = fadd <4 x float> %.sroa.037.081.i.epil.init, %i.le
  br label %bb.o

bb.o:                                             ; preds = %.unr-lcssa, %.preheader314.epil.preheader
  %.lcssa524 = phi <4 x float> [ %i.mp, %.unr-lcssa ], [ %i.ld, %.preheader314.epil.preheader ] ; 2 uses
  %.lcssa523 = phi <4 x float> [ %i.mr, %.unr-lcssa ], [ %i.lf, %.preheader314.epil.preheader ] ; 2 uses
  %i.lg = shufflevector <4 x float> %.lcssa523, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lh = fadd <4 x float> %.lcssa523, %i.lg      ; 2 uses
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.lj = fadd <4 x float> %i.lh, %i.li
  %i.lk = extractelement <4 x float> %i.lj, i64 0
  %i.ll = fneg float %i.lk
  %i.lm = shufflevector <4 x float> %.lcssa524, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ln = fadd <4 x float> %.lcssa524, %i.lm      ; 2 uses
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.lp = fadd <4 x float> %i.ln, %i.lo
  %i.lq = extractelement <4 x float> %i.lp, i64 0
  %i.lr = uitofp i64 %.4.us to float
  %i.ls = fmul nnan float %i.lr, f0x3089705F
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.ls, float 5.000000e-01, float %i.lq)
  %i.lu = fdiv float %i.ll, %i.lt
  br label %.loopexit.i

.preheader314:                                    ; preds = %.preheader314, %.preheader314.preheader.new
  %.sroa.039.082.i = phi <4 x float> [ zeroinitializer, %.preheader314.preheader.new ], [ %i.mp, %.preheader314 ]
  %.sroa.037.081.i = phi <4 x float> [ zeroinitializer, %.preheader314.preheader.new ], [ %i.mr, %.preheader314 ]
  %.06680.i = phi i64 [ 0, %.preheader314.preheader.new ], [ %i.ms, %.preheader314 ] ; 4 uses
  %niter539 = phi i64 [ 0, %.preheader314.preheader.new ], [ %niter539.next.1, %.preheader314 ]
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.06680.i
  %i.lw = load <4 x float>, ptr %i.lv, align 16, !tbaa !38 ; 2 uses
  %i.lx = fmul <4 x float> %i.lw, splat (float f0x3C430C31) ; 3 uses
  %i.ly = fmul <4 x float> %i.lw, zeroinitializer
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.06680.i
  %i.ma = load <4 x float>, ptr %i.lz, align 16, !tbaa !38
  %i.mb = fsub <4 x float> %i.ly, %i.ma
  %i.mc = fmul <4 x float> %i.lx, %i.lx
  %i.md = fadd <4 x float> %.sroa.039.082.i, %i.mc
  %i.me = fmul <4 x float> %i.lx, %i.mb
  %i.mf = fadd <4 x float> %.sroa.037.081.i, %i.me
  %i.mg = or disjoint i64 %.06680.i, 4            ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.mg
  %i.mi = load <4 x float>, ptr %i.mh, align 16, !tbaa !38 ; 2 uses
  %i.mj = fmul <4 x float> %i.mi, splat (float f0x3C430C31) ; 3 uses
  %i.mk = fmul <4 x float> %i.mi, zeroinitializer
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.mg
  %i.mm = load <4 x float>, ptr %i.ml, align 16, !tbaa !38
  %i.mn = fsub <4 x float> %i.mk, %i.mm
  %i.mo = fmul <4 x float> %i.mj, %i.mj
  %i.mp = fadd <4 x float> %i.md, %i.mo           ; 3 uses
  %i.mq = fmul <4 x float> %i.mj, %i.mn
  %i.mr = fadd <4 x float> %i.mf, %i.mq           ; 3 uses
  %i.ms = add nuw i64 %.06680.i, 8                ; 2 uses
  %niter539.next.1 = add i64 %niter539, 2         ; 2 uses
  %niter539.ncmp.1.not = icmp eq i64 %niter539.next.1, %unroll_iter538
  br i1 %niter539.ncmp.1.not, label %.unr-lcssa, label %.preheader314, !llvm.loop !7

.lr.ph.i.i:                                       ; preds = %_ZNK3jxl6N_SSE211CFLFunction7ComputeEffPfS2_.exit.i, %.preheader.i
  %.06379.i = phi i64 [ 0, %.preheader.i ], [ %i.pn, %_ZNK3jxl6N_SSE211CFLFunction7ComputeEffPfS2_.exit.i ]
  %.06578.i = phi float [ 0.000000e+00, %.preheader.i ], [ %i.pj, %_ZNK3jxl6N_SSE211CFLFunction7ComputeEffPfS2_.exit.i ] ; 4 uses
  %i.mt = insertelement <2 x float> poison, float %.06578.i, i64 0
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mv = fadd <2 x float> %i.mu, <float 1.000000e+02, float -1.000000e+02> ; 3 uses
  %i.mw = insertelement <4 x float> poison, float %.06578.i, i64 0
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = shufflevector <2 x float> %i.mv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mz = shufflevector <2 x float> %i.mv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.p
end_hunk_2
