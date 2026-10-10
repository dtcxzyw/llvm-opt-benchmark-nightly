Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3CloneAndTransformHull:bb.a
  %bound0524 = icmp ult ptr %i.ff, %i.fk
  %bound1525 = icmp ult ptr %i.eq, %i.fh
  %found.conflict526 = and i1 %bound0524, %bound1525
  %conflict.rdx527 = or i1 %conflict.rdx523, %found.conflict526
  %bound0528 = icmp ult ptr %i.ff, %i.fm
  %bound1529 = icmp ult ptr %i.er, %i.fh
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527, %found.conflict530
  br i1 %conflict.rdx531, label %.lr.ph379.preheader573, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ew, -8                      ; 3 uses
  %i.fn = add nsw i64 %n.vec, %i.ev
  %i.fo = load float, ptr %i.eo, align 4, !tbaa !23, !alias.scope !274
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fp = load float, ptr %i.eq, align 4, !tbaa !23, !alias.scope !275
  %broadcast.splatinsert532 = insertelement <4 x float> poison, float %i.fp, i64 0
  %broadcast.splat533 = shufflevector <4 x float> %broadcast.splatinsert532, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fq = load float, ptr %i.er, align 4, !tbaa !23, !alias.scope !276
  %broadcast.splatinsert534 = insertelement <4 x float> poison, float %i.fq, i64 0
  %broadcast.splat535 = shufflevector <4 x float> %broadcast.splatinsert534, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fr = add i64 %index, %i.ev                   ; 3 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x float> %broadcast.splat, ptr %i.fs, align 4, !tbaa !23, !alias.scope !277, !noalias !278
  store <4 x float> %broadcast.splat, ptr %i.ft, align 4, !tbaa !23, !alias.scope !277, !noalias !278
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.fr ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <4 x float> %broadcast.splat533, ptr %i.fu, align 4, !tbaa !23, !alias.scope !279, !noalias !280
  store <4 x float> %broadcast.splat533, ptr %i.fv, align 4, !tbaa !23, !alias.scope !279, !noalias !280
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fr ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x float> %broadcast.splat535, ptr %i.fw, align 4, !tbaa !23, !alias.scope !281, !noalias !282
  store <4 x float> %broadcast.splat535, ptr %i.fx, align 4, !tbaa !23, !alias.scope !281, !noalias !282
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %._crit_edge380, label %.lr.ph379.preheader573

.lr.ph379.preheader573:                           ; preds = %vector.memcheck, %.lr.ph379.preheader, %middle.block
  %indvars.iv406.ph = phi i64 [ %i.ev, %vector.memcheck ], [ %i.ev, %.lr.ph379.preheader ], [ %i.fn, %middle.block ] ; 7 uses
  %xtraiter575 = and i64 %indvars.iv406.ph, 1
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %.lr.ph379.prol.loopexit, label %.lr.ph379.prol

.lr.ph379.prol:                                   ; preds = %.lr.ph379.preheader573
  %i.fz = load float, ptr %i.eo, align 4, !tbaa !23
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv406.ph
  store float %i.fz, ptr %i.ga, align 4, !tbaa !23
  %i.gb = load float, ptr %i.eq, align 4, !tbaa !23
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv406.ph
  store float %i.gb, ptr %i.gc, align 4, !tbaa !23
  %i.gd = load float, ptr %i.er, align 4, !tbaa !23
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv406.ph
  store float %i.gd, ptr %i.ge, align 4, !tbaa !23
  %indvars.iv.next407.prol = add nsw i64 %indvars.iv406.ph, 1
  br label %.lr.ph379.prol.loopexit

.lr.ph379.prol.loopexit:                          ; preds = %.lr.ph379.prol, %.lr.ph379.preheader573
  %indvars.iv406.unr = phi i64 [ %indvars.iv406.ph, %.lr.ph379.preheader573 ], [ %indvars.iv.next407.prol, %.lr.ph379.prol ]
  %i.gf = add nsw i64 %i.ep, -1
  %i.gg = icmp eq i64 %indvars.iv406.ph, %i.gf
  br i1 %i.gg, label %._crit_edge380, label %.lr.ph379

bb.g:                                             ; preds = %.lr.ph377, %bb.g
  %indvars.iv401 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next402, %bb.g ] ; 5 uses
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %indvars.iv401 ; 3 uses
  %.sroa.0147.0.copyload = load <2 x float>, ptr %i.gh, align 4
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %.sroa.2148.0.copyload = load float, ptr %.sroa.2148.0..sroa_idx, align 4
  %i.gi = fmul float %i.w, %.sroa.2148.0.copyload ; 2 uses
  %i.gj = fmul float %i.ea, %i.gi
  %i.gk = fmul <2 x float> %i.u, %.sroa.0147.0.copyload ; 3 uses
  %i.gl = fmul <2 x float> %i.dq, %i.gk
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gn = fmul <2 x float> %i.dr, %i.gm
  %i.go = fadd <2 x float> %i.gl, %i.gn
  %i.gp = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.dx, %i.gq
  %i.gs = fadd <2 x float> %i.gr, %i.go
  %i.gt = fmul <2 x float> %i.dv, %i.gk           ; 2 uses
  %shift552 = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop553 = fadd <2 x float> %i.gt, %shift552
  %i.gu = extractelement <2 x float> %foldExtExtBinop553, i64 0
  %i.gv = fadd float %i.gj, %i.gu
  %i.gw = fadd <2 x float> %i.et, %i.gs           ; 3 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = fadd float %.sroa.2134.0.copyload, %i.gv ; 2 uses
  store <2 x float> %i.gx, ptr %i.gh, align 4, !tbaa !23
  store float %i.gy, ptr %.sroa.2148.0..sroa_idx, align 4, !tbaa !23
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv401
  %i.ha = extractelement <2 x float> %i.gw, i64 1
  store float %i.ha, ptr %i.gz, align 4, !tbaa !23
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv401
  %i.hc = extractelement <2 x float> %i.gw, i64 0
  store float %i.hc, ptr %i.hb, align 4, !tbaa !23
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv401
  store float %i.gy, ptr %i.hd, align 4, !tbaa !23
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.preheader360, label %bb.g, !llvm.loop !269

._crit_edge380:                                   ; preds = %.lr.ph379.prol.loopexit, %.lr.ph379, %middle.block, %.preheader360
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !22 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  %i.hh = sext i32 %i.hf to i64
  %i.hi = add nsw i64 %i.hh, %i.aa
  %i.hj = inttoptr i64 %i.hi to ptr
  %.0.i314 = select i1 %i.hg, ptr null, ptr %i.hj
  %i.hk = add i32 %i.ak, 3
  %i.hl = and i32 %i.hk, -4                       ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !73 ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = sext i32 %i.hn to i64
  %i.hq = add nsw i64 %i.hp, %i.aa
  %i.hr = inttoptr i64 %i.hq to ptr               ; 5 uses
  %.0.i315 = select i1 %i.ho, ptr null, ptr %i.hr
  %i.hs = sext i32 %i.hl to i64                   ; 4 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %.0.i315, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hs
  %i.hv = icmp sgt i32 %i.ak, 0
  br i1 %i.hv, label %.lr.ph383.preheader, label %.preheader

.lr.ph383.preheader:                              ; preds = %._crit_edge380
  %wide.trip.count414 = zext nneg i32 %i.ak to i64
  br label %.lr.ph383

.lr.ph379:                                        ; preds = %.lr.ph379.prol.loopexit, %.lr.ph379
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.1, %.lr.ph379 ], [ %indvars.iv406.unr, %.lr.ph379.prol.loopexit ] ; 5 uses
  %i.hw = load float, ptr %i.eo, align 4, !tbaa !23
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv406
  store float %i.hw, ptr %i.hx, align 4, !tbaa !23
  %i.hy = load float, ptr %i.eq, align 4, !tbaa !23
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv406
  store float %i.hy, ptr %i.hz, align 4, !tbaa !23
  %i.ia = load float, ptr %i.er, align 4, !tbaa !23
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv406
  store float %i.ia, ptr %i.ib, align 4, !tbaa !23
  %indvars.iv.next407 = add nsw i64 %indvars.iv406, 1 ; 3 uses
  %i.ic = load float, ptr %i.eo, align 4, !tbaa !23
  %i.id = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv.next407
  store float %i.ic, ptr %i.id, align 4, !tbaa !23
  %i.ie = load float, ptr %i.eq, align 4, !tbaa !23
  %i.if = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv.next407
  store float %i.ie, ptr %i.if, align 4, !tbaa !23
  %i.ig = load float, ptr %i.er, align 4, !tbaa !23
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.er, i64 %indvars.iv.next407
  store float %i.ig, ptr %i.ih, align 4, !tbaa !23
  %indvars.iv.next407.1 = add nsw i64 %indvars.iv406, 2 ; 2 uses
  %exitcond410.not.1 = icmp eq i64 %indvars.iv.next407.1, %i.ep
  br i1 %exitcond410.not.1, label %._crit_edge380, label %.lr.ph379, !llvm.loop !270

.preheader:                                       ; preds = %bb.i, %._crit_edge380
  %i.ii = icmp slt i32 %i.ak, %i.hl
  br i1 %i.ii, label %.lr.ph385.preheader, label %._crit_edge386

.lr.ph385.preheader:                              ; preds = %.preheader
  %i.ij = sext i32 %i.ak to i64                   ; 2 uses
  %i.ik = shl nsw i64 %i.ij, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hr, i64 %i.ik
  %i.il = xor i32 %i.ak, -1
  %i.im = add i32 %i.hl, %i.il
  %i.in = zext i32 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 2
  %i.ip = add nuw nsw i64 %i.io, 4                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ip, i1 false), !tbaa !23
  %i.iq = add nsw i64 %i.ij, %i.hs
  %i.ir = shl nsw i64 %i.iq, 2
  %scevgep416 = getelementptr i8, ptr %i.hr, i64 %i.ir
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep416, i8 0, i64 %i.ip, i1 false), !tbaa !23
  %i.is = shl nsw i64 %i.hs, 3
  %i.it = getelementptr i8, ptr %i.hr, i64 %i.is
  %scevgep417 = getelementptr i8, ptr %i.it, i64 %i.ik
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep417, i8 0, i64 %i.ip, i1 false), !tbaa !23
  br label %._crit_edge386

.lr.ph383:                                        ; preds = %.lr.ph383.preheader, %bb.i
  %indvars.iv411 = phi i64 [ 0, %.lr.ph383.preheader ], [ %indvars.iv.next412, %bb.i ] ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv411
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !84  ; 3 uses
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !82
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.ja ; 2 uses
  %.sroa.078.0.copyload = load <2 x float>, ptr %i.jb, align 4, !tbaa !23 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !23 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph383
  %.0289 = phi i8 [ %i.iv, %.lr.ph383 ], [ %i.jv, %bb.h ]
  %.sroa.088.0 = phi <2 x float> [ zeroinitializer, %.lr.ph383 ], [ %.sroa.088.4.vec.insert, %bb.h ] ; 2 uses
  %.sroa.13.0 = phi float [ 0.000000e+00, %.lr.ph383 ], [ %19, %bb.h ]
  %.sroa.099.0 = phi <2 x float> [ zeroinitializer, %.lr.ph383 ], [ %i.js, %bb.h ]
  %.sroa.10.0 = phi float [ 0.000000e+00, %.lr.ph383 ], [ %7, %bb.h ]
  %.0288 = phi i32 [ 0, %.lr.ph383 ], [ %i.jq, %bb.h ]
  %i.jc = zext i8 %.0289 to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.jc ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !81
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !82
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.jk ; 2 uses
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.jl, align 4
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.sroa.266.0.copyload = load float, ptr %.sroa.266.0..sroa_idx, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !82
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %i.jo ; 2 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.jp, align 4
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.252.0.copyload = load float, ptr %.sroa.252.0..sroa_idx, align 4
  %i.jq = add nuw nsw i32 %.0288, 1               ; 2 uses
  %.sroa.088.4.vec.extract = extractelement <2 x float> %.sroa.088.0, i64 1
  %4 = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.078.0.copyload ; 4 uses
  %5 = fsub float %.sroa.266.0.copyload, %.sroa.6.0.copyload ; 3 uses
  %i.jr = fsub <2 x float> %.sroa.051.0.copyload, %.sroa.078.0.copyload ; 3 uses
  %6 = fsub float %.sroa.252.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %i.js = fadd <2 x float> %.sroa.099.0, %4       ; 3 uses
  %7 = fadd float %.sroa.10.0, %5                 ; 2 uses
  %8 = fadd float %5, %6
  %9 = fsub <2 x float> %4, %i.jr
  %foldExtExtBinop555 = fadd <2 x float> %4, %i.jr
  %i.jt = shufflevector <2 x float> %foldExtExtBinop555, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %i.jt, float %8, i64 1
  %11 = fmul <2 x float> %9, %10
  %12 = shufflevector <2 x float> %.sroa.088.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = insertelement <2 x float> %12, float %.sroa.13.0, i64 0
  %13 = fadd <2 x float> %i.ju, %11               ; 5 uses
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = fsub float %5, %6
  %foldExtExtBinop557.a = fadd <2 x float> %4, %i.jr
  %16 = extractelement <2 x float> %foldExtExtBinop557.a, i64 0
  %17 = fmul float %15, %16
  %18 = fadd float %.sroa.088.4.vec.extract, %17  ; 4 uses
  %.sroa.088.4.vec.insert = insertelement <2 x float> %14, float %18, i64 1
  %i.jv = load i8, ptr %i.jd, align 1, !tbaa !80  ; 2 uses
  %.not = icmp eq i8 %i.jv, %i.iv
  %19 = extractelement <2 x float> %13, i64 0
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !271

bb.i:                                             ; preds = %bb.h
  %i.jw = uitofp nneg i32 %i.jq to float
  %20 = fmul float %18, %18
  %21 = fmul <2 x float> %13, %13                 ; 2 uses
  %22 = extractelement <2 x float> %21, i64 1
  %23 = fadd float %22, %20
  %24 = extractelement <2 x float> %21, i64 0
  %25 = fadd float %24, %23
  %sqrt.i = tail call float @llvm.sqrt.f32(float %25)
  %26 = getelementptr inbounds nuw [16 x i8], ptr %.0.i314, i64 %indvars.iv411 ; 2 uses
  %i.jx = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %sqrt.i, i64 1
  %i.jz = fdiv <2 x float> splat (float 1.000000e+00), %i.jy ; 4 uses
  %shift559 = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop560 = fmul <2 x float> %i.jz, %shift559
  %27 = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = insertelement <2 x float> poison, float %7, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> %i.js, <2 x i32> <i32 0, i32 2>
  %i.ka = fmul <2 x float> %27, %29
  %shift562 = shufflevector <2 x float> %.sroa.078.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop563 = fadd <2 x float> %shift562, %foldExtExtBinop560
  %i.kb = extractelement <2 x float> %foldExtExtBinop563, i64 0
  %30 = shufflevector <2 x float> %.sroa.078.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %31 = insertelement <2 x float> %30, float %.sroa.6.0.copyload, i64 0
  %32 = fadd <2 x float> %31, %i.ka
  %33 = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kc = fmul <2 x float> %13, %33               ; 5 uses
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %34 = extractelement <2 x float> %i.jz, i64 1
  %35 = fmul float %18, %34                       ; 3 uses
  %.sroa.06.4.vec.insert.i353 = insertelement <2 x float> %i.kd, float %35, i64 1
  %36 = fmul float %i.kb, %35
  %37 = fmul <2 x float> %32, %i.kc               ; 2 uses
  %i.ke = extractelement <2 x float> %37, i64 1
  %38 = fadd float %i.ke, %36
  %39 = extractelement <2 x float> %37, i64 0
  %i.kf = fadd float %39, %38
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %i.kc, float %i.kf, i64 1
  store <2 x float> %.sroa.06.4.vec.insert.i353, ptr %26, align 4, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store <2 x float> %.sroa.211.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv411
  %40 = extractelement <2 x float> %i.kc, i64 1
  store float %40, ptr %i.kg, align 4, !tbaa !23
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv411
  store float %35, ptr %i.kh, align 4, !tbaa !23
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv411
  %41 = extractelement <2 x float> %i.kc, i64 0
  store float %41, ptr %i.ki, align 4, !tbaa !23
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next412, %wide.trip.count414
  br i1 %exitcond415.not, label %.preheader, label %.lr.ph383, !llvm.loop !272

._crit_edge386:                                   ; preds = %.lr.ph385.preheader, %.preheader
  %i.kj = load i32, ptr %i.al, align 4, !tbaa !18 ; 2 uses
  %.sroa.020.0.copyload21.i = load <2 x float>, ptr %i.eg, align 4, !tbaa !23 ; 4 uses
  %.sroa.6.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.6.0.copyload23.i = load float, ptr %.sroa.6.0..sroa_idx22.i, align 4, !tbaa !23 ; 4 uses
  %i.kk = icmp sgt i32 %i.kj, 1
  br i1 %i.kk, label %.lr.ph.preheader.i, label %b3UpdateHullBounds.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge386
  %wide.trip.count.i = zext nneg i32 %i.kj to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.sroa.11.042.i = phi float [ %.sroa.6.0.copyload23.i, %.lr.ph.preheader.i ], [ %i.kt, %.lr.ph.i ] ; 2 uses
  %.sroa.8.041.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %.lr.ph.preheader.i ], [ %i.kr, %.lr.ph.i ] ; 2 uses
  %.sroa.6.040.i = phi float [ %.sroa.6.0.copyload23.i, %.lr.ph.preheader.i ], [ %i.kp, %.lr.ph.i ] ; 2 uses
  %.sroa.020.039.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %.lr.ph.preheader.i ], [ %i.kn, %.lr.ph.i ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %.0.i300, i64 %indvars.iv.i ; 2 uses
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.kl, align 4, !tbaa !23 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !23 ; 4 uses
  %i.km = fcmp olt <2 x float> %.sroa.020.039.i, %.sroa.016.0.copyload.i
  %i.kn = select <2 x i1> %i.km, <2 x float> %.sroa.020.039.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.ko = fcmp olt float %.sroa.6.040.i, %.sroa.5.0.copyload.i
  %i.kp = select i1 %i.ko, float %.sroa.6.040.i, float %.sroa.5.0.copyload.i ; 2 uses
  %i.kq = fcmp ogt <2 x float> %.sroa.8.041.i, %.sroa.016.0.copyload.i
  %i.kr = select <2 x i1> %i.kq, <2 x float> %.sroa.8.041.i, <2 x float> %.sroa.016.0.copyload.i ; 2 uses
  %i.ks = fcmp ogt float %.sroa.11.042.i, %.sroa.5.0.copyload.i
  %i.kt = select i1 %i.ks, float %.sroa.11.042.i, float %.sroa.5.0.copyload.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b3UpdateHullBounds.exit, label %.lr.ph.i, !llvm.loop !0

b3UpdateHullBounds.exit:                          ; preds = %.lr.ph.i, %._crit_edge386
  %.sroa.020.0.lcssa.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %._crit_edge386 ], [ %i.kn, %.lr.ph.i ]
  %.sroa.6.0.lcssa.i = phi float [ %.sroa.6.0.copyload23.i, %._crit_edge386 ], [ %i.kp, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi <2 x float> [ %.sroa.020.0.copyload21.i, %._crit_edge386 ], [ %i.kr, %.lr.ph.i ]
  %.sroa.11.0.lcssa.i = phi float [ %.sroa.6.0.copyload23.i, %._crit_edge386 ], [ %i.kt, %.lr.ph.i ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x float> %.sroa.020.0.lcssa.i, ptr %i.ku, align 8, !tbaa !23
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store float %.sroa.6.0.lcssa.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store <2 x float> %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !23
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  store float %.sroa.11.0.lcssa.i, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !23
  %i.kv = tail call fastcc zeroext i1 @b3UpdateHullBulkProperties(ptr noundef nonnull %i.e)
  br i1 %i.kv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %b3UpdateHullBounds.exit
  %i.kw = load i32, ptr %i.b, align 4, !tbaa !74
  %i.kx = sext i32 %i.kw to i64
  tail call void @b3Free(ptr noundef nonnull %i.e, i64 noundef %i.kx) #24
  br label %bb.l

bb.k:                                             ; preds = %b3UpdateHullBounds.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 0, ptr %i.ky, align 8, !tbaa !86
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !74
  %i.lb = tail call i64 @b3Hash64NonZero(ptr noundef nonnull %i.e, i32 noundef %i.la) #24
  store i64 %i.lb, ptr %i.ky, align 8, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ %i.e, %bb.k ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @b3ComputeHullMass(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3MassData) align 4 captures(none) initializes((0, 52)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load float, ptr %i.a, align 4, !tbaa !89
  %i.c = fmul float %2, %i.b
  store float %i.c, ptr %0, align 4, !tbaa !284
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !116
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.1113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1113.0.copyload = load float, ptr %.sroa.1113.0..sroa_idx, align 8
  %i.h = fmul float %2, %.sroa.1113.0.copyload
  %i.i = load <4 x float>, ptr %i.g, align 8
  %i.j = insertelement <4 x float> poison, float %2, i64 0
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.l = fmul <4 x float> %i.k, %i.i
  store <4 x float> %i.l, ptr %i.f, align 4, !tbaa !23
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load <4 x float>, ptr %.sroa.79.0..sroa_idx, align 8
  %i.n = fmul <4 x float> %i.k, %i.m
  store <4 x float> %i.n, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !23
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.h, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @b3ComputeHullAABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.545.0.copyload = load float, ptr %.sroa.545.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.7.0.copyload = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0.copyload = load float, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4 ; 13 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 9 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.5.0.copyload, i64 0
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.4.0.copyload, i64 1 ; 2 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.4.0.copyload, i64 0
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.5.0.copyload, i64 1 ; 2 uses
  %i.b = fadd <2 x float> %.sroa.043.0.copyload, %.sroa.7.0.copyload ; 2 uses
  %i.c = fadd float %.sroa.545.0.copyload, %.sroa.9.0.copyload
  %i.d = fmul <2 x float> %i.b, splat (float 5.000000e-01) ; 4 uses
  %i.e = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.f = insertelement <2 x float> %i.e, float %i.c, i64 0
  %i.g = fmul <2 x float> %i.f, splat (float 5.000000e-01) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.d, %.sroa.5.0.copyload
  %i.h = extractelement <2 x float> %i.g, i64 0
  %foldExtExtBinop69 = fmul <2 x float> %i.g, %.sroa.4.0.copyload
  %foldExtExtBinop71 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop69
  %i.i = shufflevector <2 x float> %i.d, <2 x float> %i.g, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.j = fmul <2 x float> %i.i, %.sroa.4.0.copyload
  %i.k = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.5.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.l = fmul <2 x float> %i.d, %i.k
  %i.m = fsub <2 x float> %i.j, %i.l              ; 2 uses
  %i.n = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.o = fmul <2 x float> %i.g, %i.n
  %i.p = fmul <2 x float> %i.i, %i.n
  %i.q = fadd <2 x float> %i.o, %i.m              ; 2 uses
  %i.r = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = shufflevector <2 x float> %foldExtExtBinop71, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.t = fadd <2 x float> %i.p, %i.s              ; 2 uses
  %i.u = fmul <2 x float> %i.k, %i.q
  %i.v = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.v, %i.t
  %i.x = fsub <2 x float> %i.u, %i.w
  %foldExtExtBinop73 = fmul <2 x float> %.sroa.4.0.copyload, %i.t
  %foldExtExtBinop75 = fmul <2 x float> %.sroa.4.0.copyload, %i.q
  %shift = shufflevector <2 x float> %foldExtExtBinop75, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop77 = fsub <2 x float> %foldExtExtBinop73, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.z = fmul <2 x float> %i.x, splat (float 2.000000e+00)
  %i.aa = fadd <2 x float> %i.d, %i.z
  %i.ab = fmul float %i.y, 2.000000e+00
  %i.ac = fadd float %i.h, %i.ab
  %i.ad = fadd <2 x float> %.sroa.0.sroa.0.0.copyload, %i.aa ; 2 uses
  %i.ae = fadd float %.sroa.0.sroa.4.0.copyload, %i.ac ; 2 uses
  %i.af = fmul <2 x float> %.sroa.4.0.copyload, %.sroa.4.0.copyload ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop79 = fmul <2 x float> %.sroa.4.0.copyload, %.sroa.5.0.copyload
  %i.ah = extractelement <2 x float> %foldExtExtBinop79, i64 0 ; 2 uses
  %i.ai = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.aj = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.3.8.vec.extract.i ; 2 uses
  %i.ak = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.al = fsub float %.sroa.9.0.copyload, %.sroa.545.0.copyload
  %i.am = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.5.0.copyload, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.an = insertelement <4 x float> %i.am, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.5.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 2>
  %i.ap = insertelement <4 x float> %i.ao, float 5.000000e-01, i64 0
  %i.aq = fmul <4 x float> %i.an, %i.ap           ; 5 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 1 ; 2 uses
  %i.as = extractelement <4 x float> %i.aq, i64 2 ; 2 uses
  %i.at = fadd float %i.ar, %i.as
  %i.au = fsub float %i.ah, %i.ak
  %i.av = fmul float %i.au, 2.000000e+00          ; 3 uses
  %i.aw = fsub float %i.ar, %i.as
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.at, i64 1
  %i.az = fmul <2 x float> %i.ay, splat (float 2.000000e+00) ; 3 uses
  %i.ba = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bb = fadd <2 x float> %i.ag, %i.ba
  %i.bc = fmul <2 x float> %i.bb, splat (float 2.000000e+00)
  %i.bd = fsub <2 x float> splat (float 1.000000e+00), %i.bc ; 3 uses
  %i.be = fadd float %i.aj, %i.ai
  %i.bf = fmul float %i.be, 2.000000e+00          ; 3 uses
  %i.bg = fadd float %i.ah, %i.ak
  %i.bh = fsub float %i.aj, %i.ai
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul <2 x float> %i.bj, splat (float 2.000000e+00) ; 3 uses
  %i.bl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af)
  %i.bm = fmul float %i.bl, 2.000000e+00
  %i.bn = fsub float 1.000000e+00, %i.bm          ; 3 uses
  %i.bo = fcmp olt float %i.av, 0.000000e+00
end_hunk_0
