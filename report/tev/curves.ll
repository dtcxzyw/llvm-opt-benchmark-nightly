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
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
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
  %i.bj = add nsw i64 %.neg, %i.bi                ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.bj, 12
  br i1 %min.iters.check337, label %.lr.ph197.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph197.preheader
  %i.bk = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.bl = add nsw i64 %i.bk, -5
  %diff.check339 = icmp ult i64 %i.bl, 15
  %i.bm = shl nuw nsw i64 %wide.trip.count227, 2
  %i.bn = add nuw nsw i64 %i.bk, %i.bm
  %i.bo = icmp samesign ult i64 %i.bn, 20
  %conflict.rdx344 = or i1 %diff.check339, %i.bo
  %i.bp = shl nuw nsw i64 %wide.trip.count, 2
  %i.bq = or disjoint i64 %i.bp, 3
  %diff.check345.a = icmp samesign ult i64 %i.bq, 15
  %conflict.rdx346.a = or i1 %conflict.rdx344, %diff.check345.a
  %i.br = add nuw nsw i64 %wide.trip.count227, %wide.trip.count ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = or disjoint i64 %i.bs, 3
  %diff.check349 = icmp samesign ult i64 %i.bt, 15
  %conflict.rdx350 = or i1 %conflict.rdx346.a, %diff.check349
  %diff.check351 = icmp samesign ult i64 %i.br, 4
  %conflict.rdx352 = or i1 %conflict.rdx350, %diff.check351
  br i1 %conflict.rdx352, label %.lr.ph197.preheader387, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck
  %n.vec354 = and i64 %i.bj, -4                   ; 3 uses
  %i.bu = sub nsw i64 %i.bg, %n.vec354
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next364, %vector.body355 ] ; 2 uses
  %i.bv = sub i64 %i.bg, %index356                ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -12
  %wide.load357 = load <4 x float>, ptr %i.bx, align 4, !tbaa !34
  %i.by = add nsw i64 %i.bv, -1                   ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -12
  %wide.load358 = load <4 x float>, ptr %i.ca, align 4, !tbaa !34
  %i.cb = fsub <4 x float> %wide.load357, %wide.load358
  %reverse = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %reverse)
  %i.cd = fcmp olt <4 x float> %i.cc, splat (float 1.000000e-15)
  %i.ce = select <4 x i1> %i.cd, <4 x float> splat (float 1.000000e+00), <4 x float> %reverse ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bv
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -12
  %wide.load359 = load <4 x float>, ptr %i.cg, align 4, !tbaa !34
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.by
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -12
  %wide.load360 = load <4 x float>, ptr %i.ci, align 4, !tbaa !34
  %i.cj = fsub <4 x float> %wide.load359, %wide.load360
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bv
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -12
  %i.cm = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse362 = fdiv <4 x float> %i.cj, %i.cm
  store <4 x float> %reverse362, ptr %i.cl, align 4, !tbaa !34
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.by
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -12
  %reverse363 = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse363, ptr %i.co, align 4, !tbaa !34
  %index.next364 = add nuw i64 %index356, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next364, %n.vec354
  br i1 %i.cp, label %middle.block365, label %vector.body355, !llvm.loop !19

middle.block365:                                  ; preds = %vector.body355
  %cmp.n366 = icmp eq i64 %i.bj, %n.vec354
  br i1 %cmp.n366, label %.preheader189, label %.lr.ph197.preheader387

.lr.ph197.preheader387:                           ; preds = %vector.memcheck, %.lr.ph197.preheader, %middle.block365
  %indvars.iv229.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph197.preheader ], [ %i.bu, %middle.block365 ]
  br label %.lr.ph197

.preheader189:                                    ; preds = %.lr.ph197, %middle.block365
  %i.cq = icmp samesign ugt i32 %3, 2
  br i1 %i.cq, label %bb.c, label %.lr.ph217.us.preheader

bb.c:                                             ; preds = %.preheader189
  %i.cr = zext nneg i32 %i.bf to i64              ; 2 uses
  %wide.trip.count235 = zext nneg i32 %i.bf to i64
  %i.cs = load float, ptr %i.ag, align 4, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !34
  %i.cv = fadd float %i.cs, %i.cu
  %i.cw = fmul float %i.cv, 2.000000e+00
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store float %i.cw, ptr %i.cz, align 4, !tbaa !34
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre267 = load float, ptr %.phi.trans.insert266, align 4, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !34
  %i.da = fsub float %.pre, %.pre267
  %i.db = fmul float %i.da, 6.000000e+00
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cr
  store float %i.db, ptr %i.dc, align 4, !tbaa !34
  %exitcond236.peel.not = icmp eq i32 %i.bf, 2
  br i1 %exitcond236.peel.not, label %.preheader188, label %.peel.next

.lr.ph197:                                        ; preds = %.lr.ph197.preheader387, %.lr.ph197
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph197 ], [ %indvars.iv229.ph, %.lr.ph197.preheader387 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv229
  %i.de = load float, ptr %i.dd, align 4, !tbaa !34
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -1 ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next230
  %i.dg = load float, ptr %i.df, align 4, !tbaa !34
  %i.dh = fsub float %i.de, %i.dg                 ; 2 uses
  %i.di = tail call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp olt float %i.di, 1.000000e-15
  %spec.store.select = select i1 %i.dj, float 1.000000e+00, float %i.dh ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv229
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !34
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next230
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !34
  %i.do = fsub float %i.dl, %i.dn
  %i.dp = fdiv float %i.do, %spec.store.select
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv229
  store float %i.dp, ptr %i.dq, align 4, !tbaa !34
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next230
  store float %spec.store.select, ptr %i.dr, align 4, !tbaa !34
  %i.ds = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.ds, label %.lr.ph197, label %.preheader189, !llvm.loop !20

.preheader188:                                    ; preds = %.peel.next, %bb.c
  %i.dt = phi i32 [ 2, %bb.c ], [ %i.bf, %.peel.next ] ; 2 uses
  %i.du = add nsw i32 %3, -2                      ; 4 uses
  %i.dv = icmp sgt i32 %3, 3
  br i1 %i.dv, label %.lr.ph203.preheader, label %.preheader186.lr.ph

.lr.ph203.preheader:                              ; preds = %.preheader188
  %wide.trip.count246 = zext nneg i32 %i.du to i64
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre270 = load ptr, ptr %.phi.trans.insert269, align 8, !tbaa !32
  %wide.trip.count241 = zext nneg i32 %3 to i64
  %i.dw = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %i.dx = add nsw i64 %wide.trip.count227, -1     ; 2 uses
  %min.iters.check373 = icmp ult i32 %3, 9
  %n.vec376 = and i64 %i.dx, -8                   ; 3 uses
  %i.dy = or disjoint i64 %n.vec376, 1
  %cmp.n385 = icmp eq i64 %i.dx, %n.vec376
  %i.dz = and i64 %wide.trip.count227, 1
  %lcmp.mod391.not.not = icmp eq i64 %i.dz, 0
  %i.ea = add nsw i64 %wide.trip.count227, -1
  br label %.lr.ph203

.peel.next:                                       ; preds = %bb.c, %.peel.next
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.peel.next ], [ 2, %bb.c ] ; 7 uses
  %i.eb = add nsw i64 %indvars.iv232, -1          ; 3 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.eb ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !34
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv232
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !34
  %i.eg = fadd float %i.ed, %i.ef
  %i.eh = fmul float %i.eg, 2.000000e+00
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv232
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv232
  store float %i.eh, ptr %i.ek, align 4, !tbaa !34
  %i.el = load float, ptr %i.ec, align 4, !tbaa !34 ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eb
  store float %i.el, ptr %i.em, align 4, !tbaa !34
  %i.en = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.eb
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !32
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv232
  store float %i.el, ptr %i.ep, align 4, !tbaa !34
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next233
  %i.er = load float, ptr %i.eq, align 4, !tbaa !34
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv232
  %i.et = load float, ptr %i.es, align 4, !tbaa !34
  %i.eu = fsub float %i.er, %i.et
  %i.ev = fmul float %i.eu, 6.000000e+00
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.cr
  store float %i.ev, ptr %i.ew, align 4, !tbaa !34
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader188, label %.peel.next, !llvm.loop !21

..loopexit_crit_edge:                             ; preds = %scalar.ph372.prol.loopexit, %scalar.ph372, %middle.block384
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader186.lr.ph, label %.lr.ph203, !llvm.loop !22

.preheader186.lr.ph:                              ; preds = %..loopexit_crit_edge, %.preheader188
  %i.ex = sext i32 %i.dt to i64
  %i.ey = zext i32 %i.du to i64
  %i.ez = sext i32 %i.du to i64
  br label %.preheader186

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %..loopexit_crit_edge
  %i.fa = phi ptr [ %.pre270, %.lr.ph203.preheader ], [ %i.fc, %..loopexit_crit_edge ] ; 7 uses
  %indvars.iv243 = phi i64 [ 1, %.lr.ph203.preheader ], [ %indvars.iv.next244, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next244
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !32 ; 8 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv243
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !34
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv243
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !34
  %i.fh = fneg float %i.fe
  %i.fi = fdiv float %i.fh, %i.fg                 ; 4 uses
  br i1 %min.iters.check373, label %scalar.ph372.preheader, label %vector.memcheck374

vector.memcheck374:                               ; preds = %.lr.ph203
  %i.fj = getelementptr nuw i8, ptr %i.fc, i64 4
  %i.fk = getelementptr i8, ptr %i.fc, i64 %i.dw
  %i.fl = getelementptr nuw i8, ptr %i.fa, i64 4
  %i.fm = getelementptr i8, ptr %i.fa, i64 %i.dw
  %bound0 = icmp ult ptr %i.fj, %i.fm
  %bound1 = icmp ult ptr %i.fl, %i.fk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph372.preheader, label %vector.ph375

end_hunk_0
