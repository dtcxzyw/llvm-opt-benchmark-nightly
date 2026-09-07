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
  br i1 %min.iters.check, label %.lr.ph193.preheader372, label %vector.ph

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
  br i1 %cmp.n, label %._crit_edge194, label %.lr.ph193.preheader372

.lr.ph193.preheader372:                           ; preds = %.lr.ph193.preheader, %middle.block
  %indvars.iv224.ph = phi i64 [ 0, %.lr.ph193.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader372, %.lr.ph193
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %.lr.ph193 ], [ %indvars.iv224.ph, %.lr.ph193.preheader372 ] ; 5 uses
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
  %4 = icmp ne i32 %i.bf, 0
  %.neg = sext i1 %4 to i64
  %i.bh = zext nneg i32 %3 to i64
  %i.bi = add nsw i64 %.neg, %i.bh                ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.bi, 12
  br i1 %min.iters.check337, label %.lr.ph197.preheader371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph197.preheader
  %i.bj = shl nuw nsw i64 %wide.trip.count, 3
  %i.bk = or disjoint i64 %i.bj, 11
  %diff.check = icmp samesign ult i64 %i.bk, 15
  %i.bl = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.bm = add nsw i64 %i.bl, -5
  %diff.check322 = icmp ult i64 %i.bm, 15
  %conflict.rdx323 = or i1 %diff.check, %diff.check322
  %i.bn = shl nuw nsw i64 %wide.trip.count227, 2
  %i.bo = add nuw nsw i64 %i.bl, %i.bn
  %i.bp = icmp samesign ult i64 %i.bo, 20
  %conflict.rdx327 = or i1 %conflict.rdx323, %i.bp
  %i.bq = shl nuw nsw i64 %wide.trip.count, 2
  %i.br = or disjoint i64 %i.bq, 3
  %diff.check328 = icmp samesign ult i64 %i.br, 15
  %conflict.rdx329 = or i1 %conflict.rdx327, %diff.check328
  %i.bs = add nuw nsw i64 %wide.trip.count227, %wide.trip.count ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = or disjoint i64 %i.bt, 3
  %diff.check332 = icmp samesign ult i64 %i.bu, 15
  %conflict.rdx333 = or i1 %conflict.rdx329, %diff.check332
  %diff.check334 = icmp samesign ult i64 %i.bs, 4
  %conflict.rdx335 = or i1 %conflict.rdx333, %diff.check334
  br i1 %conflict.rdx335, label %.lr.ph197.preheader371, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck
  %n.vec339 = and i64 %i.bi, -4                   ; 3 uses
  %i.bv = sub nsw i64 %i.bg, %n.vec339
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next349, %vector.body340 ] ; 2 uses
  %i.bw = sub i64 %i.bg, %index341                ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -12
  %wide.load342 = load <4 x float>, ptr %i.by, align 4, !tbaa !34
  %i.bz = add nsw i64 %i.bw, -1                   ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %wide.load343 = load <4 x float>, ptr %i.cb, align 4, !tbaa !34
  %i.cc = fsub <4 x float> %wide.load342, %wide.load343
  %reverse = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %reverse)
  %i.ce = fcmp olt <4 x float> %i.cd, splat (float 1.000000e-15)
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> %reverse ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bw
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -12
  %wide.load344 = load <4 x float>, ptr %i.ch, align 4, !tbaa !34
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bz
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -12
  %wide.load345 = load <4 x float>, ptr %i.cj, align 4, !tbaa !34
  %i.ck = fsub <4 x float> %wide.load344, %wide.load345
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bw
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %i.cn = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse347 = fdiv <4 x float> %i.ck, %i.cn
  store <4 x float> %reverse347, ptr %i.cm, align 4, !tbaa !34
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bz
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -12
  %reverse348 = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse348, ptr %i.cp, align 4, !tbaa !34
  %index.next349 = add nuw i64 %index341, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next349, %n.vec339
  br i1 %i.cq, label %middle.block350, label %vector.body340, !llvm.loop !19

middle.block350:                                  ; preds = %vector.body340
  %cmp.n351 = icmp eq i64 %i.bi, %n.vec339
  br i1 %cmp.n351, label %.preheader189, label %.lr.ph197.preheader371

.lr.ph197.preheader371:                           ; preds = %vector.memcheck, %.lr.ph197.preheader, %middle.block350
  %indvars.iv229.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph197.preheader ], [ %i.bv, %middle.block350 ]
  br label %.lr.ph197

.preheader189:                                    ; preds = %.lr.ph197, %middle.block350
  %i.cr = icmp samesign ugt i32 %3, 2
  br i1 %i.cr, label %bb.c, label %.lr.ph217.us.preheader

bb.c:                                             ; preds = %.preheader189
  %i.cs = zext nneg i32 %i.bf to i64              ; 2 uses
  %wide.trip.count235 = zext nneg i32 %i.bf to i64
  %i.ct = load float, ptr %i.ag, align 4, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !34
  %i.cw = fadd float %i.ct, %i.cv
  %i.cx = fmul float %i.cw, 2.000000e+00
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store float %i.cx, ptr %i.da, align 4, !tbaa !34
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre267 = load float, ptr %.phi.trans.insert266, align 4, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !34
  %i.db = fsub float %.pre, %.pre267
  %i.dc = fmul float %i.db, 6.000000e+00
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cs
  store float %i.dc, ptr %i.dd, align 4, !tbaa !34
  %exitcond236.peel.not = icmp eq i32 %i.bf, 2
  br i1 %exitcond236.peel.not, label %.preheader188, label %.peel.next

.lr.ph197:                                        ; preds = %.lr.ph197.preheader371, %.lr.ph197
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph197 ], [ %indvars.iv229.ph, %.lr.ph197.preheader371 ] ; 5 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv229
  %i.df = load float, ptr %i.de, align 4, !tbaa !34
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -1 ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next230
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !34
  %i.di = fsub float %i.df, %i.dh                 ; 2 uses
  %i.dj = tail call float @llvm.fabs.f32(float %i.di)
  %i.dk = fcmp olt float %i.dj, 1.000000e-15
  %spec.store.select = select i1 %i.dk, float 1.000000e+00, float %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv229
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !34
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next230
  %i.do = load float, ptr %i.dn, align 4, !tbaa !34
  %i.dp = fsub float %i.dm, %i.do
  %i.dq = fdiv float %i.dp, %spec.store.select
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv229
  store float %i.dq, ptr %i.dr, align 4, !tbaa !34
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next230
  store float %spec.store.select, ptr %i.ds, align 4, !tbaa !34
  %i.dt = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.dt, label %.lr.ph197, label %.preheader189, !llvm.loop !20

.preheader188:                                    ; preds = %.peel.next, %bb.c
  %i.du = phi i32 [ 2, %bb.c ], [ %i.bf, %.peel.next ] ; 2 uses
  %i.dv = add nsw i32 %3, -2                      ; 4 uses
  %i.dw = icmp sgt i32 %3, 3
  br i1 %i.dw, label %.lr.ph203.preheader, label %.preheader186.lr.ph

.lr.ph203.preheader:                              ; preds = %.preheader188
  %wide.trip.count246 = zext nneg i32 %i.dv to i64
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre270 = load ptr, ptr %.phi.trans.insert269, align 8, !tbaa !32
  %wide.trip.count241 = zext nneg i32 %3 to i64
  %i.dx = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %i.dy = add nsw i64 %wide.trip.count227, -1     ; 2 uses
  %min.iters.check358 = icmp ult i32 %3, 9
  %n.vec360 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec360, 1
  %cmp.n369 = icmp eq i64 %i.dy, %n.vec360
  %i.ea = and i64 %wide.trip.count227, 1
  %lcmp.mod375.not.not = icmp eq i64 %i.ea, 0
  %i.eb = add nsw i64 %wide.trip.count227, -1
  br label %.lr.ph203

.peel.next:                                       ; preds = %bb.c, %.peel.next
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.peel.next ], [ 2, %bb.c ] ; 7 uses
  %i.ec = add nsw i64 %indvars.iv232, -1          ; 3 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ec ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !34
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv232
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !34
  %i.eh = fadd float %i.ee, %i.eg
  %i.ei = fmul float %i.eh, 2.000000e+00
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv232
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !32 ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv232
  store float %i.ei, ptr %i.el, align 4, !tbaa !34
  %i.em = load float, ptr %i.ed, align 4, !tbaa !34 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.ec
  store float %i.em, ptr %i.en, align 4, !tbaa !34
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ec
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !32
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv232
  store float %i.em, ptr %i.eq, align 4, !tbaa !34
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next233
  %i.es = load float, ptr %i.er, align 4, !tbaa !34
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv232
  %i.eu = load float, ptr %i.et, align 4, !tbaa !34
  %i.ev = fsub float %i.es, %i.eu
  %i.ew = fmul float %i.ev, 6.000000e+00
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cs
  store float %i.ew, ptr %i.ex, align 4, !tbaa !34
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader188, label %.peel.next, !llvm.loop !21

..loopexit_crit_edge:                             ; preds = %scalar.ph357.prol.loopexit, %scalar.ph357, %middle.block368
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader186.lr.ph, label %.lr.ph203, !llvm.loop !22

.preheader186.lr.ph:                              ; preds = %..loopexit_crit_edge, %.preheader188
  %i.ey = sext i32 %i.du to i64
  %i.ez = zext i32 %i.dv to i64
  %i.fa = sext i32 %i.dv to i64
  br label %.preheader186

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %..loopexit_crit_edge
  %i.fb = phi ptr [ %.pre270, %.lr.ph203.preheader ], [ %i.fd, %..loopexit_crit_edge ] ; 7 uses
  %indvars.iv243 = phi i64 [ 1, %.lr.ph203.preheader ], [ %indvars.iv.next244, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next244
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !32 ; 8 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv243
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !34
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv243
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !34
end_hunk_0
