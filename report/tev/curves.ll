Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/curves?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12cubic_splineEPKiS1_i(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 4 uses
  %i.b = add nsw i32 %i.a, 4
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 8
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.e, i64 noundef %i.f) ; 15 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.f ; 7 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader.split.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.j = zext nneg i32 %i.a to i64                ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2) ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.k = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.k, 3
  %i.l = icmp slt i32 %3, 3
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.k, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = mul nuw nsw i64 %indvars.iv, %i.j
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %i.n, ptr %i.o, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = mul nuw nsw i64 %indvars.iv.next, %i.j
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.s = mul nuw nsw i64 %indvars.iv.next.1, %i.j
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  store ptr %i.t, ptr %i.u, align 8, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv.next.2, %i.j
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  store ptr %i.w, ptr %i.x, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.epil.preheader, label %.lr.ph, !llvm.loop !15

.lr.ph.epil.preheader:                            ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph ]
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.y = mul nuw nsw i64 %indvars.iv.epil, %i.j
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph193.preheader, label %.lr.ph.epil, !llvm.loop !16

.lr.ph193.preheader:                              ; preds = %.lr.ph.epil
  %i.ab = mul nuw nsw i32 %smax, %smax
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ac ; 7 uses
  %i.ae = zext nneg i32 %smax to i64              ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae ; 8 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae ; 9 uses
  %i.ai = zext nneg i32 %3 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ai ; 8 uses
  %wide.trip.count227 = zext nneg i32 %3 to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph193.preheader388, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph193.preheader
  %n.vec = and i64 %wide.trip.count227, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !33
  %i.al = sitofp <4 x i32> %wide.load to <4 x float>
  %i.am = fdiv <4 x float> %i.al, splat (float 6.553500e+04)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index
  store <4 x float> %i.am, ptr %i.an, align 4, !tbaa !34
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load320 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !33
  %i.ap = sitofp <4 x i32> %wide.load320 to <4 x float>
  %i.aq = fdiv <4 x float> %i.ap, splat (float 6.553500e+04)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  store <4 x float> %i.aq, ptr %i.ar, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count227
  br i1 %cmp.n, label %._crit_edge194, label %.lr.ph193.preheader388

.lr.ph193.preheader388:                           ; preds = %.lr.ph193.preheader, %middle.block
  %indvars.iv224.ph = phi i64 [ 0, %.lr.ph193.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader388, %.lr.ph193
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %.lr.ph193 ], [ %indvars.iv224.ph, %.lr.ph193.preheader388 ] ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv224
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv224
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33
  %i.ay = insertelement <2 x i32> poison, i32 %i.au, i64 0
  %i.az = insertelement <2 x i32> %i.ay, i32 %i.ax, i64 1
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>
  %i.bb = fdiv <2 x float> %i.ba, splat (float 6.553500e+04) ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  store float %i.bc, ptr %i.av, align 4, !tbaa !34
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv224
  %i.be = extractelement <2 x float> %i.bb, i64 1
  store float %i.be, ptr %i.bd, align 4, !tbaa !34
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge194, label %.lr.ph193, !llvm.loop !18

._crit_edge194:                                   ; preds = %.lr.ph193, %middle.block
  %i.bf = add nsw i32 %3, -1                      ; 6 uses
  %.not319 = icmp eq i32 %3, 1
  br i1 %.not319, label %.preheader.split.preheader, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %._crit_edge194
  %i.bg = zext i32 %i.bf to i64                   ; 4 uses
  %i.bh = icmp ne i32 %i.bf, 0
  %.neg = sext i1 %i.bh to i64
  %i.bi = zext nneg i32 %3 to i64
  %4 = add nsw i64 %.neg, %i.bi                   ; 3 uses
  %min.iters.check337 = icmp ult i64 %4, 12
  br i1 %min.iters.check337, label %.lr.ph197.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph197.preheader
  %i.bj = shl nuw nsw i64 %wide.trip.count, 3
  %i.bk = or disjoint i64 %i.bj, 11
  %diff.check = icmp samesign ult i64 %i.bk, 15
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.bm = add nsw i64 %i.bl, -5
  %diff.check339 = icmp ult i64 %i.bm, 15
  %conflict.rdx340 = or i1 %diff.check, %diff.check339
  %i.bn = shl nuw nsw i64 %wide.trip.count227, 2
  %5 = add nuw nsw i64 %i.bl, %i.bn
  %i.bo = icmp samesign ult i64 %5, 20
  %conflict.rdx344 = or i1 %conflict.rdx340, %i.bo
  %6 = shl nuw nsw i64 %wide.trip.count, 2
  %7 = or disjoint i64 %6, 3
  %diff.check345 = icmp samesign ult i64 %7, 15
  %conflict.rdx346 = or i1 %conflict.rdx344, %diff.check345
  %8 = add nuw nsw i64 %wide.trip.count227, %wide.trip.count ; 2 uses
  %9 = shl nuw nsw i64 %8, 2
  %10 = or disjoint i64 %9, 3
  %diff.check349 = icmp samesign ult i64 %10, 15
  %conflict.rdx350 = or i1 %conflict.rdx346, %diff.check349
  %diff.check351 = icmp samesign ult i64 %8, 4
  %conflict.rdx352 = or i1 %conflict.rdx350, %diff.check351
  br i1 %conflict.rdx352, label %.lr.ph197.preheader387, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck
  %n.vec354 = and i64 %4, -4                      ; 3 uses
  %i.bp = sub nsw i64 %i.bg, %n.vec354
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next364, %vector.body355 ] ; 2 uses
  %i.bq = sub i64 %i.bg, %index356                ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -12
  %wide.load357 = load <4 x float>, ptr %i.bs, align 4, !tbaa !34
  %i.bt = add nsw i64 %i.bq, -1                   ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bt
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -12
  %wide.load358 = load <4 x float>, ptr %i.bv, align 4, !tbaa !34
  %i.bw = fsub <4 x float> %wide.load357, %wide.load358
  %reverse = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %reverse)
  %i.by = fcmp olt <4 x float> %i.bx, splat (float 1.000000e-15)
  %i.bz = select <4 x i1> %i.by, <4 x float> splat (float 1.000000e+00), <4 x float> %reverse ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bq
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %wide.load359 = load <4 x float>, ptr %i.cb, align 4, !tbaa !34
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bt
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -12
  %wide.load360 = load <4 x float>, ptr %i.cd, align 4, !tbaa !34
  %i.ce = fsub <4 x float> %wide.load359, %wide.load360
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bq
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -12
  %i.ch = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse362 = fdiv <4 x float> %i.ce, %i.ch
  store <4 x float> %reverse362, ptr %i.cg, align 4, !tbaa !34
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bt
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %reverse363 = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse363, ptr %i.cj, align 4, !tbaa !34
  %index.next364 = add nuw i64 %index356, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next364, %n.vec354
  br i1 %i.ck, label %middle.block365, label %vector.body355, !llvm.loop !19

middle.block365:                                  ; preds = %vector.body355
  %cmp.n366 = icmp eq i64 %4, %n.vec354
  br i1 %cmp.n366, label %.preheader189, label %.lr.ph197.preheader387

.lr.ph197.preheader387:                           ; preds = %vector.memcheck, %.lr.ph197.preheader, %middle.block365
  %indvars.iv229.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph197.preheader ], [ %i.bp, %middle.block365 ]
  br label %.lr.ph197

.preheader189:                                    ; preds = %.lr.ph197, %middle.block365
  %i.cl = icmp samesign ugt i32 %3, 2
  br i1 %i.cl, label %bb.c, label %.lr.ph217.us.preheader

bb.c:                                             ; preds = %.preheader189
  %i.cm = zext nneg i32 %i.bf to i64              ; 2 uses
  %wide.trip.count235 = zext nneg i32 %i.bf to i64
  %i.cn = load float, ptr %i.ag, align 4, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !34
  %i.cq = fadd float %i.cn, %i.cp
  %i.cr = fmul float %i.cq, 2.000000e+00
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cr, ptr %i.cu, align 4, !tbaa !34
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre267 = load float, ptr %.phi.trans.insert266, align 4, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !34
  %i.cv = fsub float %.pre, %.pre267
  %i.cw = fmul float %i.cv, 6.000000e+00
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cm
  store float %i.cw, ptr %i.cx, align 4, !tbaa !34
  %exitcond236.peel.not = icmp eq i32 %i.bf, 2
  br i1 %exitcond236.peel.not, label %.preheader188, label %.peel.next

.lr.ph197:                                        ; preds = %.lr.ph197.preheader387, %.lr.ph197
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph197 ], [ %indvars.iv229.ph, %.lr.ph197.preheader387 ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv229
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !34
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -1 ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next230
  %i.db = load float, ptr %i.da, align 4, !tbaa !34
  %i.dc = fsub float %i.cz, %i.db                 ; 2 uses
  %i.dd = tail call float @llvm.fabs.f32(float %i.dc)
  %i.de = fcmp olt float %i.dd, 1.000000e-15
  %spec.store.select = select i1 %i.de, float 1.000000e+00, float %i.dc ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv229
  %i.dg = load float, ptr %i.df, align 4, !tbaa !34
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next230
  %i.di = load float, ptr %i.dh, align 4, !tbaa !34
  %i.dj = fsub float %i.dg, %i.di
  %i.dk = fdiv float %i.dj, %spec.store.select
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv229
  store float %i.dk, ptr %i.dl, align 4, !tbaa !34
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next230
  store float %spec.store.select, ptr %i.dm, align 4, !tbaa !34
  %i.dn = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.dn, label %.lr.ph197, label %.preheader189, !llvm.loop !20

.preheader188:                                    ; preds = %.peel.next, %bb.c
  %i.do = phi i32 [ 2, %bb.c ], [ %i.bf, %.peel.next ] ; 2 uses
  %i.dp = add nsw i32 %3, -2                      ; 4 uses
  %i.dq = icmp sgt i32 %3, 3
  br i1 %i.dq, label %.lr.ph203.preheader, label %.preheader186.lr.ph

.lr.ph203.preheader:                              ; preds = %.preheader188
  %wide.trip.count246 = zext nneg i32 %i.dp to i64
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre270 = load ptr, ptr %.phi.trans.insert269, align 8, !tbaa !32
  %wide.trip.count241 = zext nneg i32 %3 to i64
  %i.dr = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %i.ds = add nsw i64 %wide.trip.count227, -1     ; 2 uses
  %min.iters.check373 = icmp ult i32 %3, 9
  %n.vec376 = and i64 %i.ds, -8                   ; 3 uses
  %i.dt = or disjoint i64 %n.vec376, 1
  %cmp.n385 = icmp eq i64 %i.ds, %n.vec376
  %i.du = and i64 %wide.trip.count227, 1
  %lcmp.mod391.not.not = icmp eq i64 %i.du, 0
  %i.dv = add nsw i64 %wide.trip.count227, -1
  br label %.lr.ph203

.peel.next:                                       ; preds = %bb.c, %.peel.next
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.peel.next ], [ 2, %bb.c ] ; 7 uses
  %i.dw = add nsw i64 %indvars.iv232, -1          ; 3 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.dw ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !34
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv232
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !34
  %i.eb = fadd float %i.dy, %i.ea
  %i.ec = fmul float %i.eb, 2.000000e+00
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv232
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !32 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv232
  store float %i.ec, ptr %i.ef, align 4, !tbaa !34
  %i.eg = load float, ptr %i.dx, align 4, !tbaa !34 ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.dw
  store float %i.eg, ptr %i.eh, align 4, !tbaa !34
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dw
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv232
  store float %i.eg, ptr %i.ek, align 4, !tbaa !34
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next233
  %i.em = load float, ptr %i.el, align 4, !tbaa !34
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv232
  %i.eo = load float, ptr %i.en, align 4, !tbaa !34
  %i.ep = fsub float %i.em, %i.eo
  %i.eq = fmul float %i.ep, 6.000000e+00
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.cm
  store float %i.eq, ptr %i.er, align 4, !tbaa !34
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader188, label %.peel.next, !llvm.loop !21

..loopexit_crit_edge:                             ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372, %middle.block384
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader186.lr.ph, label %.lr.ph203, !llvm.loop !22

.preheader186.lr.ph:                              ; preds = %..loopexit_crit_edge, %.preheader188
  %i.es = sext i32 %i.do to i64
  %i.et = zext i32 %i.dp to i64
  %i.eu = sext i32 %i.dp to i64
  br label %.preheader186

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %..loopexit_crit_edge
  %i.ev = phi ptr [ %.pre270, %.lr.ph203.preheader ], [ %i.ex, %..loopexit_crit_edge ] ; 7 uses
  %indvars.iv243 = phi i64 [ 1, %.lr.ph203.preheader ], [ %indvars.iv.next244, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next244
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !32 ; 8 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv243
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !34
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv243
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !34
  %i.fc = fneg float %i.ez
  %i.fd = fdiv float %i.fc, %i.fb                 ; 4 uses
  br i1 %min.iters.check373, label %scalar.ph372.preheader, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph203
  %i.fe = getelementptr nuw i8, ptr %i.ex, i64 4
  %i.ff = getelementptr i8, ptr %i.ex, i64 %i.dr
  %i.fg = getelementptr nuw i8, ptr %i.ev, i64 4
  %i.fh = getelementptr i8, ptr %i.ev, i64 %i.dr
  %bound0 = icmp ult ptr %i.fe, %i.fh
  %bound1.a = icmp ult ptr %i.fg, %i.ff
  %found.conflict.a = and i1 %bound0, %bound1.a
  br i1 %found.conflict.a, label %scalar.ph372.preheader, label %vector.ph375

vector.ph375:                                     ; preds = %vector.memcheck374
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next383, %vector.body377 ] ; 2 uses
  %i.fi = or disjoint i64 %index378, 1            ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load379 = load <4 x float>, ptr %i.fj, align 4, !tbaa !34, !alias.scope !38
  %wide.load380 = load <4 x float>, ptr %i.fk, align 4, !tbaa !34, !alias.scope !38
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fi ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load381 = load <4 x float>, ptr %i.fl, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  %wide.load382 = load <4 x float>, ptr %i.fm, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load379, <4 x float> %wide.load381)
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load380, <4 x float> %wide.load382)
  store <4 x float> %i.fn, ptr %i.fl, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  store <4 x float> %i.fo, ptr %i.fm, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  %index.next383 = add nuw i64 %index378, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next383, %n.vec376
  br i1 %i.fp, label %middle.block384, label %vector.body377, !llvm.loop !26

middle.block384:                                  ; preds = %vector.body377
  br i1 %cmp.n385, label %..loopexit_crit_edge, label %scalar.ph372.preheader

scalar.ph372.preheader:                           ; preds = %vector.memcheck374, %.lr.ph203, %middle.block384
  %indvars.iv238.ph = phi i64 [ 1, %vector.memcheck374 ], [ 1, %.lr.ph203 ], [ %i.dt, %middle.block384 ] ; 5 uses
  br i1 %lcmp.mod391.not.not, label %scalar.ph372.prol, label %scalar.ph372.prol.loopexit

scalar.ph372.prol:                                ; preds = %scalar.ph372.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv238.ph
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !34
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv238.ph ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !34
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fr, float %i.ft)
  store float %i.fu, ptr %i.fs, align 4, !tbaa !34
  %indvars.iv.next239.prol = add nuw nsw i64 %indvars.iv238.ph, 1
  br label %scalar.ph372.prol.loopexit

scalar.ph372.prol.loopexit:                       ; preds = %scalar.ph372.prol, %scalar.ph372.preheader
  %indvars.iv238.unr = phi i64 [ %indvars.iv238.ph, %scalar.ph372.preheader ], [ %indvars.iv.next239.prol, %scalar.ph372.prol ]
  %i.fv = icmp eq i64 %indvars.iv238.ph, %i.dv
  br i1 %i.fv, label %..loopexit_crit_edge, label %scalar.ph372

scalar.ph372:                                     ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.1, %scalar.ph372 ], [ %indvars.iv238.unr, %scalar.ph372.prol.loopexit ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv238
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !34
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv238 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !34
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fx, float %i.fz)
  store float %i.ga, ptr %i.fy, align 4, !tbaa !34
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next239
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !34
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next239 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !34
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.gc, float %i.ge)
  store float %i.gf, ptr %i.gd, align 4, !tbaa !34
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %exitcond242.not.1 = icmp eq i64 %indvars.iv.next239.1, %wide.trip.count241
  br i1 %exitcond242.not.1, label %..loopexit_crit_edge, label %scalar.ph372, !llvm.loop !27

.preheader186:                                    ; preds = %.preheader186.lr.ph, %._crit_edge211
  %indvars.iv248 = phi i64 [ %i.et, %.preheader186.lr.ph ], [ %indvars.iv.next249, %._crit_edge211 ] ; 7 uses
  %.not184207 = icmp sgt i64 %indvars.iv248, %i.eu
  %.phi.trans.insert271 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv248
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8, !tbaa !32 ; 3 uses
  br i1 %.not184207, label %._crit_edge211, label %.lr.ph210

.preheader.split.preheader:                       ; preds = %bb.b, %._crit_edge194
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.gg, i8 0, i64 131072, i1 false), !tbaa !14
  br label %.split.us

.lr.ph217.us.preheader.loopexit:                  ; preds = %._crit_edge211
  %i.gh = zext i32 %i.do to i64
  br label %.lr.ph217.us.preheader

.lr.ph217.us.preheader:                           ; preds = %.lr.ph217.us.preheader.loopexit, %.preheader189
  %wide.trip.count260 = phi i64 [ 1, %.preheader189 ], [ %i.gh, %.lr.ph217.us.preheader.loopexit ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 5600
  br label %.lr.ph217.us

.lr.ph217.us:                                     ; preds = %.lr.ph217.us.preheader, %bb.i
  %indvars.iv262 = phi i64 [ 0, %.lr.ph217.us.preheader ], [ %indvars.iv.next263, %bb.i ] ; 3 uses
  %i.gj = trunc nuw nsw i64 %indvars.iv262 to i32
  %i.gk = uitofp nneg i32 %i.gj to float
  %i.gl = fdiv float %i.gk, 6.553500e+04          ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph217.us, %._crit_edge273
  %indvars.iv257 = phi i64 [ 0, %.lr.ph217.us ], [ %.pre274, %._crit_edge273 ] ; 5 uses
  %.0215.us = phi float [ 0.000000e+00, %.lr.ph217.us ], [ %.1.us, %._crit_edge273 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv257
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !34 ; 2 uses
  %i.go = fcmp ugt float %i.gn, %i.gl
  %.pre274 = add nuw nsw i64 %indvars.iv257, 1    ; 5 uses
  br i1 %i.go, label %._crit_edge273, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.pre274
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !34
  %i.gr = fcmp ugt float %i.gl, %i.gq
  br i1 %i.gr, label %._crit_edge273, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gs = fsub float %i.gl, %i.gn                 ; 6 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv257
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !34 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.pre274
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !34
  %i.gx = fsub float %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv257
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !34 ; 4 uses
  %i.ha = fdiv float %i.gx, %i.gz
  %i.hb = fmul float %i.gz, 2.000000e+00
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv257
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !34 ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.pre274
  %i.hf = load float, ptr %i.he, align 4, !tbaa !34 ; 2 uses
  %i.hg = fmul float %i.gz, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.hd, float %i.hg)
  %i.hi = fdiv float %i.hh, 6.000000e+00
  %i.hj = fsub float %i.ha, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.gs, float %i.gu)
  %i.hl = fmul float %i.hd, 5.000000e-01
  %i.hm = fmul float %i.gs, %i.hl
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.gs, float %i.hk)
  %i.ho = fsub float %i.hf, %i.hd
  %i.hp = fmul float %i.gz, 6.000000e+00
  %i.hq = fdiv float %i.ho, %i.hp
  %i.hr = fmul float %i.gs, %i.hq
  %i.hs = fmul float %i.gs, %i.hr
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.gs, float %i.hn)
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %bb.d, %bb.f, %bb.e
  %.1.us = phi float [ %.0215.us, %bb.e ], [ %i.ht, %bb.f ], [ %.0215.us, %bb.d ] ; 4 uses
  %exitcond261.not = icmp eq i64 %.pre274, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge218.us, label %bb.d, !llvm.loop !28

bb.g:                                             ; preds = %._crit_edge218.us
  %i.hu = fcmp ult float %.1.us, 1.000000e+00
  br i1 %i.hu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hv = tail call float @llvm.fmuladd.f32(float %.1.us, float 6.553500e+04, float 5.000000e-01)
  %i.hw = fptoui float %i.hv to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge218.us
  %i.hx = phi i16 [ 0, %._crit_edge218.us ], [ %i.hw, %bb.h ], [ -1, %bb.g ]
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %indvars.iv262
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !14
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 65536
  br i1 %exitcond265.not, label %.split.us, label %.lr.ph217.us, !llvm.loop !29

._crit_edge218.us:                                ; preds = %._crit_edge273
  %i.hz = fcmp olt float %.1.us, 0.000000e+00
  br i1 %i.hz, label %bb.i, label %bb.g

.lr.ph210:                                        ; preds = %.preheader186, %.lr.ph210
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph210 ], [ %indvars.iv248, %.preheader186 ] ; 4 uses
  %.0169209 = phi float [ %i.ie, %.lr.ph210 ], [ 0.000000e+00, %.preheader186 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %indvars.iv250
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !34
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv250
  %i.id = load float, ptr %i.ic, align 4, !tbaa !34
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.id, float %.0169209) ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %i.if = trunc nuw i64 %indvars.iv250 to i32
  %.not184.not = icmp sgt i32 %i.dp, %i.if
  br i1 %.not184.not, label %.lr.ph210, label %._crit_edge211, !llvm.loop !30

._crit_edge211:                                   ; preds = %.lr.ph210, %.preheader186
  %.0169.lcssa = phi float [ 0.000000e+00, %.preheader186 ], [ %i.ie, %.lr.ph210 ]
  %i.ig = getelementptr inbounds [4 x i8], ptr %.pre272, i64 %i.es
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !34
  %i.ii = fsub float %i.ih, %.0169.lcssa
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %indvars.iv248
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !34
  %i.il = fdiv float %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv248
  store float %i.il, ptr %i.im, align 4, !tbaa !34
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, -1
  %i.in = icmp sgt i64 %indvars.iv248, 1
  br i1 %i.in, label %.preheader186, label %.lr.ph217.us.preheader.loopexit, !llvm.loop !31

.split.us:                                        ; preds = %bb.i, %.preheader.split.preheader
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.split.us
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @_ZN6LibRaw11gamma_curveEddii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
.cont18:
  %i.a = fcmp une double %2, 0.000000e+00
  br i1 %i.a, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.cont18
  %i.b = fadd double %2, -1.000000e+00
  %i.c = fadd double %1, -1.000000e+00
  %i.d = fmul double %i.c, %i.b
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %.preheader89

.preheader89:                                     ; preds = %bb.a
  %i.f = fcmp ult double %2, 1.000000e+00         ; 2 uses
  %. = select i1 %i.f, double 1.000000e+00, double 0.000000e+00 ; 2 uses
  %.86 = select i1 %i.f, double 0.000000e+00, double 1.000000e+00 ; 2 uses
  %i.g = fcmp une double %1, 0.000000e+00
  %i.h = fneg double %1
  br i1 %i.g, label %.cont15.us, label %.cont

.cont15.us:                                       ; preds = %.preheader89, %.cont15.us
  %.sroa.7.092.us = phi double [ %..sroa.7.0.us, %.cont15.us ], [ %.86, %.preheader89 ] ; 2 uses
  %.sroa.0.091.us = phi double [ %.sroa.0.0..us, %.cont15.us ], [ %., %.preheader89 ] ; 2 uses
  %.090.us = phi i32 [ %i.r, %.cont15.us ], [ 0, %.preheader89 ]
  %i.i = fadd double %.sroa.0.091.us, %.sroa.7.092.us
  %i.j = fmul double %i.i, 5.000000e-01           ; 6 uses
  %i.k = fdiv double %i.j, %2                     ; 2 uses
  %i.l = tail call double @pow(double noundef %i.k, double noundef %i.h) #6
  %i.m = fadd double %i.l, -1.000000e+00
  %i.n = fdiv double %i.m, %1
  %i.o = fdiv double 1.000000e+00, %i.j
  %i.p = fsub double %i.n, %i.o
  %i.q = fcmp ogt double %i.p, -1.000000e+00      ; 2 uses
  %.sroa.0.0..us = select i1 %i.q, double %.sroa.0.091.us, double %i.j
  %..sroa.7.0.us = select i1 %i.q, double %i.j, double %.sroa.7.092.us
  %i.r = add nuw nsw i32 %.090.us, 1              ; 2 uses
  %exitcond100.not = icmp eq i32 %i.r, 48
  br i1 %exitcond100.not, label %bb.b, label %.cont15.us, !llvm.loop !40

.cont:                                            ; preds = %.preheader89, %.cont
  %.sroa.7.092 = phi double [ %..sroa.7.088, %.cont ], [ %.86, %.preheader89 ] ; 2 uses
  %.sroa.0.091 = phi double [ %.sroa.0.0.87, %.cont ], [ %., %.preheader89 ] ; 2 uses
  %.090 = phi i32 [ %i.z, %.cont ], [ 0, %.preheader89 ]
  %i.s = fadd double %.sroa.0.091, %.sroa.7.092
  %i.t = fmul double %i.s, 5.000000e-01           ; 6 uses
  %i.u = fdiv double 1.000000e+00, %i.t
  %i.v = fsub double 1.000000e+00, %i.u
  %i.w = tail call double @exp(double noundef %i.v) #6
  %i.x = fdiv double %i.t, %i.w
  %i.y = fcmp olt double %i.x, %2                 ; 2 uses
  %.sroa.0.0.87 = select i1 %i.y, double %.sroa.0.091, double %i.t
  %..sroa.7.088 = select i1 %i.y, double %i.t, double %.sroa.7.092
  %i.z = add nuw nsw i32 %.090, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, 48
  br i1 %exitcond.not, label %.split.us, label %.cont, !llvm.loop !40

.split.us:                                        ; preds = %.cont
  %.pre = fdiv double %i.t, %2
  br label %bb.c

bb.b:                                             ; preds = %.cont15.us
  %i.aa = fdiv double 1.000000e+00, %1
  %i.ab = fadd double %i.aa, -1.000000e+00
  %i.ac = fmul double %i.ab, %i.j
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %bb.b, %bb.a, %.cont18
  %.sroa.55.0 = phi double [ %i.ac, %bb.b ], [ 0.000000e+00, %.split.us ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.cont18 ] ; 6 uses
  %.sroa.43.0 = phi double [ %i.k, %bb.b ], [ %.pre, %.split.us ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.cont18 ] ; 10 uses
  %.sroa.28.1 = phi double [ %i.j, %bb.b ], [ %i.t, %.split.us ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.cont18 ] ; 7 uses
  %i.ad = fcmp une double %1, 0.000000e+00        ; 3 uses
  %i.ae = fmul double %.sroa.43.0, %.sroa.43.0
  %i.af = fmul double %2, %i.ae
  %i.ag = fmul double %i.af, 5.000000e-01         ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = fsub double 1.000000e+00, %.sroa.43.0
  %i.ai = fneg double %.sroa.55.0
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ah, double %i.ag)
  %i.ak = fadd double %1, 1.000000e+00            ; 2 uses
  %i.al = tail call double @pow(double noundef %.sroa.43.0, double noundef %i.ak) #6
  %i.am = fsub double 1.000000e+00, %i.al
  %i.an = fadd double %.sroa.55.0, 1.000000e+00
  %i.ao = fmul double %i.an, %i.am
  %i.ap = fdiv double %i.ao, %i.ak
  %i.aq = fadd double %i.aj, %i.ap
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = fadd double %i.ag, 1.000000e+00
  %i.as = fsub double %i.ar, %.sroa.28.1
  %i.at = fsub double %i.as, %.sroa.43.0
  %i.au = tail call double @log(double noundef %.sroa.43.0) #6
  %i.av = fadd double %i.au, -1.000000e+00
  %i.aw = fneg double %.sroa.43.0
  %i.ax = fmul double %.sroa.28.1, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.av, double %i.at)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi double [ %i.aq, %bb.d ], [ %i.ay, %bb.e ]
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 4 uses
  %i.ba = sitofp i32 %4 to double                 ; 4 uses
  %.not85 = icmp eq i32 %3, 1
  %i.bb = fadd double %.sroa.55.0, 1.000000e+00   ; 2 uses
  %i.bc = fneg double %.sroa.55.0
  %i.bd = fdiv double 1.000000e+00, %1
  br i1 %.not85, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %i.ad, label %.preheader.split.us.split.us, label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us, %bb.k
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %bb.k ], [ 0, %.preheader.split.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv111 ; 2 uses
  store i16 -1, ptr %i.be, align 2, !tbaa !14
  %i.bf = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.bg = uitofp nneg i32 %i.bf to double
  %i.bh = fdiv double %i.bg, %i.ba                ; 4 uses
  %i.bi = fcmp olt double %i.bh, 1.000000e+00
  br i1 %i.bi, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.preheader.split.us.split.us
  %i.bj = fcmp olt double %i.bh, %.sroa.28.1
  br i1 %i.bj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = fadd double %.sroa.55.0, %i.bh
  %i.bl = fdiv double %i.bk, %i.bb
  %i.bm = tail call double @pow(double noundef %i.bl, double noundef %i.bd) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = fdiv double %i.bh, %2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = phi double [ %i.bm, %bb.h ], [ %i.bn, %bb.i ]
  %i.bp = fmul double %i.bo, 6.553600e+04
  %i.bq = fptoui double %i.bp to i16
  store i16 %i.bq, ptr %i.be, align 2, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.split.us.split.us
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, 65536
  br i1 %exitcond114.not, label %.loopexit, label %.preheader.split.us.split.us, !llvm.loop !41

.preheader.split.us.split:                        ; preds = %.preheader.split.us, %bb.p
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.p ], [ 0, %.preheader.split.us ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv107 ; 2 uses
  store i16 -1, ptr %i.br, align 2, !tbaa !14
  %i.bs = trunc nuw nsw i64 %indvars.iv107 to i32
  %i.bt = uitofp nneg i32 %i.bs to double
  %i.bu = fdiv double %i.bt, %i.ba                ; 4 uses
  %i.bv = fcmp olt double %i.bu, 1.000000e+00
  br i1 %i.bv, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.preheader.split.us.split
  %i.bw = fcmp olt double %i.bu, %.sroa.28.1
  br i1 %i.bw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = fadd double %i.bu, -1.000000e+00
  %i.by = fdiv double %i.bx, %.sroa.28.1
  %i.bz = tail call double @exp(double noundef %i.by) #6
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ca = fdiv double %i.bu, %2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cb = phi double [ %i.bz, %bb.m ], [ %i.ca, %bb.n ]
  %i.cc = fmul double %i.cb, 6.553600e+04
  %i.cd = fptoui double %i.cc to i16
  store i16 %i.cd, ptr %i.br, align 2, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.split.us.split
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next108, 65536
  br i1 %exitcond110.not, label %.loopexit, label %.preheader.split.us.split, !llvm.loop !41

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.ad, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %bb.u
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %bb.u ], [ 0, %.preheader.split ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv103 ; 2 uses
  store i16 -1, ptr %i.ce, align 2, !tbaa !14
  %i.cf = trunc nuw nsw i64 %indvars.iv103 to i32
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = fdiv double %i.cg, %i.ba                ; 4 uses
  %i.ci = fcmp olt double %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.preheader.split.split.us
  %i.cj = fcmp olt double %i.ch, %.sroa.43.0
  br i1 %i.cj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = tail call double @pow(double noundef %i.ch, double noundef %1) #6
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.bb, double %i.bc)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cm = fmul double %2, %i.ch
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cn = phi double [ %i.cl, %bb.r ], [ %i.cm, %bb.s ]
  %i.co = fmul double %i.cn, 6.553600e+04
  %i.cp = fptoui double %i.co to i16
  store i16 %i.cp, ptr %i.ce, align 2, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.split.split.us
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next104, 65536
  br i1 %exitcond106.not, label %.loopexit, label %.preheader.split.split.us, !llvm.loop !41

bb.v:                                             ; preds = %bb.f
  %.sroa.63.0.in = fdiv double 1.000000e+00, %.pn
  %.sroa.63.0 = fadd double %.sroa.63.0.in, -1.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5304
  store double %1, ptr %i.cq, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5312
  store double %2, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5320
  store double %.sroa.28.1, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5328
  store double %.sroa.43.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5336
  store double %.sroa.55.0, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5344
  store double %.sroa.63.0, ptr %.sroa.63.0..sroa_idx, align 8
  br label %.loopexit

.preheader.split.split:                           ; preds = %.preheader.split, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ 0, %.preheader.split ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  store i16 -1, ptr %i.cr, align 2, !tbaa !14
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = uitofp nneg i32 %i.cs to double
  %i.cu = fdiv double %i.ct, %i.ba                ; 4 uses
  %i.cv = fcmp olt double %i.cu, 1.000000e+00
  br i1 %i.cv, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.preheader.split.split
  %i.cw = fcmp olt double %i.cu, %.sroa.43.0
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = fmul double %2, %i.cu
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cy = tail call double @log(double noundef %i.cu) #6
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double %.sroa.28.1, double 1.000000e+00)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.da = phi double [ %i.cz, %bb.y ], [ %i.cx, %bb.x ]
  %i.db = fmul double %i.da, 6.553600e+04
  %i.dc = fptoui double %i.db to i16
  store i16 %i.dc, ptr %i.cr, align 2, !tbaa !14
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader.split.split, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond102.not, label %.loopexit, label %.preheader.split.split, !llvm.loop !41

.loopexit:                                        ; preds = %bb.aa, %bb.u, %bb.p, %bb.k, %bb.v
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12linear_tableEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 65536
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b, i32 noundef 65536)
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 10 uses
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.d, i32 noundef %1)
  %.not = icmp eq i32 %1, 65536
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %umin = zext nneg i32 %1 to i64                 ; 4 uses
  %i.e = shl nuw nsw i64 %umin, 1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.f, i64 5598
  %load_initial = load i16, ptr %scevgep, align 2 ; 9 uses
  %i.g = sub nsw i64 0, %umin
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %umin, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.h = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.prol
  store i16 %load_initial, ptr %i.h, align 2, !tbaa !14
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !42

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %umin, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.i = add nsw i32 %1, -65529
  %i.j = icmp ult i32 %i.i, 7
  br i1 %i.j, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.k = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  store i16 %load_initial, ptr %i.k, align 2, !tbaa !14
  %i.l = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 2
  store i16 %load_initial, ptr %i.m, align 2, !tbaa !14
  %i.n = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 4
  store i16 %load_initial, ptr %i.o, align 2, !tbaa !14
  %i.p = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 6
  store i16 %load_initial, ptr %i.q, align 2, !tbaa !14
  %i.r = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store i16 %load_initial, ptr %i.s, align 2, !tbaa !14
  %i.t = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 10
  store i16 %load_initial, ptr %i.u, align 2, !tbaa !14
  %i.v = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 12
  store i16 %load_initial, ptr %i.w, align 2, !tbaa !14
  %i.x = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 14
  store i16 %load_initial, ptr %i.y, align 2, !tbaa !14
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 65536
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %i.z = tail call i32 @llvm.umax.i32(i32 %1, i32 4096)
  %i.aa = zext nneg i32 %i.z to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread, %bb.c
  %.01015 = phi i64 [ 65536, %.thread ], [ 65536, %bb.c ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ab = getelementptr [2 x i8], ptr %0, i64 %.01015
  %i.ac = getelementptr i8, ptr %i.ab, i64 5598
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !14
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 float", !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"float", !4, i64 0}
!13 = !{!"short", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !10, !35, !36}
!18 = distinct !{!18, !10, !36, !35}
!19 = distinct !{!19, !10, !35, !36}
!20 = distinct !{!20, !10, !35}
!21 = distinct !{!21, !10, !37}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, i1 false, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !10, !35, !36}
!27 = distinct !{!27, !10, !35}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = !{!9, !9, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{!24}
!39 = !{!25}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !10}
!44 = !{!"p1 short", !8, i64 0}
!45 = !{!"double", !4, i64 0}
!46 = !{!"_ZTS20libraw_image_sizes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !5, i64 16, !45, i64 24, !5, i64 32, !4, i64 36, !13, i64 164, !4, i64 166}
!47 = !{!"p1 omnipotent char", !8, i64 0}
!48 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !47, i64 432}
!49 = !{!"_ZTS18libraw_nikonlens_t", !12, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!50 = !{!"_ZTS16libraw_dnglens_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!51 = !{!"long long", !4, i64 0}
!52 = !{!"_ZTS24libraw_makernotes_lens_t", !51, i64 0, !4, i64 8, !13, i64 136, !13, i64 138, !51, i64 144, !13, i64 152, !13, i64 154, !4, i64 156, !13, i64 220, !4, i64 222, !4, i64 238, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !51, i64 320, !4, i64 328, !51, i64 456, !4, i64 464, !51, i64 592, !4, i64 600, !13, i64 728, !12, i64 732}
!53 = !{!"_ZTS17libraw_lensinfo_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !13, i64 532, !49, i64 536, !50, i64 544, !52, i64 560}
!54 = !{!"_ZTS13libraw_area_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!55 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !13, i64 52, !13, i64 54, !4, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !5, i64 84, !12, i64 88, !13, i64 92, !13, i64 94, !13, i64 96, !13, i64 98, !5, i64 100, !13, i64 104, !5, i64 108, !5, i64 112, !13, i64 116, !5, i64 120, !54, i64 124, !54, i64 132, !54, i64 140, !54, i64 148, !54, i64 156, !4, i64 164}
!56 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!57 = !{!"_ZTS25libraw_nikon_makernotes_t", !45, i64 0, !13, i64 8, !13, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !13, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !13, i64 170, !56, i64 172, !13, i64 180, !13, i64 182, !13, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !47, i64 256, !13, i64 264, !13, i64 266, !4, i64 268, !13, i64 270, !45, i64 272, !45, i64 280, !45, i64 288}
!58 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !45, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!59 = !{!"_ZTS18libraw_fuji_info_t", !12, i64 0, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !13, i64 16, !13, i64 18, !4, i64 20, !4, i64 53, !12, i64 88, !13, i64 92, !13, i64 94, !4, i64 96, !13, i64 100, !5, i64 104, !5, i64 108, !13, i64 112, !4, i64 114, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !5, i64 132, !13, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !13, i64 168, !5, i64 172, !13, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!60 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !13, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !13, i64 82, !4, i64 84, !13, i64 88, !13, i64 90, !4, i64 92, !4, i64 352, !13, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !13, i64 416, !13, i64 418, !13, i64 420, !13, i64 422, !45, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !13, i64 456, !13, i64 458}
!61 = !{!"_ZTS18libraw_sony_info_t", !13, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !13, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !13, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !13, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !13, i64 54, !5, i64 56, !13, i64 60, !4, i64 62, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !5, i64 80, !12, i64 84, !13, i64 88, !5, i64 92, !5, i64 96, !13, i64 100, !4, i64 102, !5, i64 124, !13, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !13, i64 138, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !5, i64 156, !13, i64 160, !4, i64 162, !12, i64 180}
!62 = !{!"_ZTS25libraw_kodak_makernotes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !12, i64 236, !12, i64 240}
!63 = !{!"_ZTS29libraw_panasonic_makernotes_t", !13, i64 0, !13, i64 2, !4, i64 4, !5, i64 36, !12, i64 40, !4, i64 44, !13, i64 56, !13, i64 58, !5, i64 60, !5, i64 64}
!64 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !13, i64 12, !5, i64 16, !5, i64 20, !13, i64 24, !4, i64 26, !13, i64 30, !4, i64 32, !4, i64 33, !13, i64 34}
!65 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!66 = !{!"_ZTS25libraw_ricoh_makernotes_t", !13, i64 0, !4, i64 4, !4, i64 12, !13, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !45, i64 56, !45, i64 64}
!67 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !45, i64 88, !5, i64 96, !4, i64 100}
!68 = !{!"_ZTS24libraw_metadata_common_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !13, i64 64, !4, i64 66, !12, i64 196, !4, i64 200, !5, i64 296}
!69 = !{!"_ZTS19libraw_makernotes_t", !55, i64 0, !57, i64 168, !58, i64 464, !59, i64 848, !60, i64 1200, !61, i64 1664, !62, i64 1848, !63, i64 2092, !64, i64 2160, !65, i64 2196, !66, i64 2648, !67, i64 2720, !68, i64 2856}
!70 = !{!"_ZTS21libraw_shootinginfo_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !4, i64 14, !4, i64 78}
!71 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !12, i64 128, !12, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !47, i64 168, !47, i64 176, !47, i64 184, !47, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !12, i64 248, !12, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !12, i64 288, !12, i64 292, !5, i64 296, !5, i64 300}
!72 = !{!"any p2 pointer", !8, i64 0}
!73 = !{!"p2 omnipotent char", !72, i64 0}
!74 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 28, !4, i64 32, !73, i64 40}
!75 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !12, i64 32}
!76 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !12, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !12, i64 32920, !12, i64 32924, !4, i64 32928}
!77 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !12, i64 147516, !12, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !75, i64 147876, !12, i64 147912, !12, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !8, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !76, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!78 = !{!"long", !4, i64 0}
!79 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !12, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!80 = !{!"_ZTS17libraw_imgother_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !78, i64 16, !5, i64 24, !4, i64 28, !79, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!81 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!82 = !{!"_ZTS18libraw_thumbnail_t", !81, i64 0, !13, i64 4, !13, i64 6, !5, i64 8, !5, i64 12, !47, i64 16}
!83 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!84 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 12, !13, i64 14}
!85 = !{!"_ZTS16libraw_rawdata_t", !8, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !44, i64 56, !44, i64 64, !48, i64 72, !46, i64 512, !84, i64 696, !77, i64 712}
!86 = !{!"_ZTS13libraw_data_t", !44, i64 0, !46, i64 8, !48, i64 192, !53, i64 632, !69, i64 1928, !70, i64 5088, !71, i64 5232, !74, i64 5536, !5, i64 5584, !5, i64 5588, !77, i64 5592, !80, i64 192680, !82, i64 193480, !83, i64 193504, !85, i64 193768, !8, i64 381568}
!87 = !{!"p1 _ZTS10LibRaw_TLS", !8, i64 0}
!88 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !8, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!90 = !{!"_ZTS15internal_data_t", !88, i64 0, !89, i64 8, !5, i64 16, !47, i64 24, !51, i64 32, !51, i64 40, !4, i64 48}
!91 = !{!"p1 int", !8, i64 0}
!92 = !{!"_ZTS13output_data_t", !91, i64 0, !91, i64 8}
!93 = !{!"_ZTS15identify_data_t", !5, i64 0, !51, i64 8, !51, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!94 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!95 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !13, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !13, i64 148, !13, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!96 = !{!"_ZTS15unpacker_data_t", !13, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !94, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !51, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !95, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !13, i64 2496, !13, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !13, i64 2608}
!97 = !{!"_ZTS22libraw_internal_data_t", !90, i64 0, !84, i64 64, !92, i64 80, !93, i64 96, !96, i64 136}
!98 = !{!"p1 _ZTS6decode", !8, i64 0}
!99 = !{!"_ZTS13libraw_memmgr", !72, i64 0, !5, i64 8}
!100 = !{!"_ZTS18libraw_callbacks_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!101 = !{!"_ZTS6LibRaw", !86, i64 8, !87, i64 381584, !97, i64 381592, !4, i64 384344, !98, i64 433496, !98, i64 433504, !4, i64 433512, !99, i64 768232, !100, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !8, i64 768448, !8, i64 768456, !8, i64 768464, !78, i64 768472, !8, i64 768480, !8, i64 768488, !8, i64 768496, !8, i64 768504}
!102 = !{!101, !5, i64 153096}
end_hunk_0
