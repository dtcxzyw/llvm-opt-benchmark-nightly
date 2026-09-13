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
  %i.bh = icmp ne i32 %i.bf, 0
  %.neg = sext i1 %i.bh to i64
  %i.bi = zext nneg i32 %3 to i64
  %i.bj = add nsw i64 %.neg, %i.bi                ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.bj, 12
  br i1 %min.iters.check337, label %.lr.ph197.preheader371, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph197.preheader
  %i.bk = shl nuw nsw i64 %wide.trip.count, 3
  %i.bl = or disjoint i64 %i.bk, 11
  %diff.check = icmp samesign ult i64 %i.bl, 15
  %i.bm = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.bn = add nsw i64 %i.bm, -5
  %diff.check322 = icmp ult i64 %i.bn, 15
  %conflict.rdx323 = or i1 %diff.check, %diff.check322
  %i.bo = shl nuw nsw i64 %wide.trip.count227, 2
  %i.bp = add nuw nsw i64 %i.bm, %i.bo
  %i.bq = icmp samesign ult i64 %i.bp, 20
  %conflict.rdx327 = or i1 %conflict.rdx323, %i.bq
  %i.br = shl nuw nsw i64 %wide.trip.count, 2
  %i.bs = or disjoint i64 %i.br, 3
  %diff.check328 = icmp samesign ult i64 %i.bs, 15
  %conflict.rdx329 = or i1 %conflict.rdx327, %diff.check328
  %i.bt = add nuw nsw i64 %wide.trip.count227, %wide.trip.count ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = or disjoint i64 %i.bu, 3
  %diff.check332 = icmp samesign ult i64 %i.bv, 15
  %conflict.rdx333 = or i1 %conflict.rdx329, %diff.check332
  %diff.check334 = icmp samesign ult i64 %i.bt, 4
  %conflict.rdx335 = or i1 %conflict.rdx333, %diff.check334
  br i1 %conflict.rdx335, label %.lr.ph197.preheader371, label %vector.ph338

vector.ph338:                                     ; preds = %vector.memcheck
  %n.vec339 = and i64 %i.bj, -4                   ; 3 uses
  %i.bw = sub nsw i64 %i.bg, %n.vec339
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next349, %vector.body340 ] ; 2 uses
  %i.bx = sub i64 %i.bg, %index341                ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12
  %wide.load342 = load <4 x float>, ptr %i.bz, align 4, !tbaa !34
  %i.ca = add nsw i64 %i.bx, -1                   ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %wide.load343 = load <4 x float>, ptr %i.cc, align 4, !tbaa !34
  %i.cd = fsub <4 x float> %wide.load342, %wide.load343
  %reverse = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ce = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %reverse)
  %i.cf = fcmp olt <4 x float> %i.ce, splat (float 1.000000e-15)
  %i.cg = select <4 x i1> %i.cf, <4 x float> splat (float 1.000000e+00), <4 x float> %reverse ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bx
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -12
  %wide.load344 = load <4 x float>, ptr %i.ci, align 4, !tbaa !34
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ca
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -12
  %wide.load345 = load <4 x float>, ptr %i.ck, align 4, !tbaa !34
  %i.cl = fsub <4 x float> %wide.load344, %wide.load345
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -12
  %i.co = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse347 = fdiv <4 x float> %i.cl, %i.co
  store <4 x float> %reverse347, ptr %i.cn, align 4, !tbaa !34
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ca
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -12
  %reverse348 = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse348, ptr %i.cq, align 4, !tbaa !34
  %index.next349 = add nuw i64 %index341, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next349, %n.vec339
  br i1 %i.cr, label %middle.block350, label %vector.body340, !llvm.loop !19

middle.block350:                                  ; preds = %vector.body340
  %cmp.n351 = icmp eq i64 %i.bj, %n.vec339
  br i1 %cmp.n351, label %.preheader189, label %.lr.ph197.preheader371

.lr.ph197.preheader371:                           ; preds = %vector.memcheck, %.lr.ph197.preheader, %middle.block350
  %indvars.iv229.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph197.preheader ], [ %i.bw, %middle.block350 ]
  br label %.lr.ph197

.preheader189:                                    ; preds = %.lr.ph197, %middle.block350
  %i.cs = icmp samesign ugt i32 %3, 2
  br i1 %i.cs, label %bb.c, label %.lr.ph217.us.preheader

bb.c:                                             ; preds = %.preheader189
  %4 = zext nneg i32 %i.bf to i64                 ; 2 uses
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
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %4
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
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %4
  store float %i.ew, ptr %i.ex, align 4, !tbaa !34
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader188, label %.peel.next, !llvm.loop !21

..loopexit_crit_edge:                             ; preds = %scalar.ph357.prol.loopexit, %scalar.ph357, %middle.block368
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader186.lr.ph, label %.lr.ph203, !llvm.loop !22

.preheader186.lr.ph:                              ; preds = %..loopexit_crit_edge, %.preheader188
  %5 = sext i32 %i.du to i64
  %i.ey = zext i32 %i.dv to i64
  %i.ez = sext i32 %i.dv to i64
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
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %.lr.ph203
  %scevgep = getelementptr nuw i8, ptr %i.fc, i64 4
  %scevgep354 = getelementptr i8, ptr %i.fc, i64 %i.dx
  %scevgep355 = getelementptr nuw i8, ptr %i.fa, i64 4
  %scevgep356 = getelementptr i8, ptr %i.fa, i64 %i.dx
  %bound0 = icmp ult ptr %scevgep, %scevgep356
  %bound1 = icmp ult ptr %scevgep355, %scevgep354
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck353
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body361 ] ; 2 uses
  %i.fj = or disjoint i64 %index362, 1            ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load363 = load <4 x float>, ptr %i.fk, align 4, !tbaa !34, !alias.scope !38
  %wide.load364 = load <4 x float>, ptr %i.fl, align 4, !tbaa !34, !alias.scope !38
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fj ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load365 = load <4 x float>, ptr %i.fm, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  %wide.load366 = load <4 x float>, ptr %i.fn, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load363, <4 x float> %wide.load365)
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load364, <4 x float> %wide.load366)
  store <4 x float> %i.fo, ptr %i.fm, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  store <4 x float> %i.fp, ptr %i.fn, align 4, !tbaa !34, !alias.scope !39, !noalias !38
  %index.next367 = add nuw i64 %index362, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.fq, label %middle.block368, label %vector.body361, !llvm.loop !26

middle.block368:                                  ; preds = %vector.body361
  br i1 %cmp.n369, label %..loopexit_crit_edge, label %scalar.ph357.preheader

scalar.ph357.preheader:                           ; preds = %vector.memcheck353, %.lr.ph203, %middle.block368
  %indvars.iv238.ph = phi i64 [ 1, %vector.memcheck353 ], [ 1, %.lr.ph203 ], [ %i.dz, %middle.block368 ] ; 5 uses
  br i1 %lcmp.mod375.not.not, label %scalar.ph357.prol, label %scalar.ph357.prol.loopexit

scalar.ph357.prol:                                ; preds = %scalar.ph357.preheader
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv238.ph
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !34
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv238.ph ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !34
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fs, float %i.fu)
  store float %i.fv, ptr %i.ft, align 4, !tbaa !34
  %indvars.iv.next239.prol = add nuw nsw i64 %indvars.iv238.ph, 1
  br label %scalar.ph357.prol.loopexit

scalar.ph357.prol.loopexit:                       ; preds = %scalar.ph357.prol, %scalar.ph357.preheader
  %indvars.iv238.unr = phi i64 [ %indvars.iv238.ph, %scalar.ph357.preheader ], [ %indvars.iv.next239.prol, %scalar.ph357.prol ]
  %i.fw = icmp eq i64 %indvars.iv238.ph, %i.eb
  br i1 %i.fw, label %..loopexit_crit_edge, label %scalar.ph357

scalar.ph357:                                     ; preds = %scalar.ph357.prol.loopexit, %scalar.ph357
  %indvars.iv238 = phi i64 [ %indvars.iv.next239.1, %scalar.ph357 ], [ %indvars.iv238.unr, %scalar.ph357.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv238
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !34
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv238 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !34
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fy, float %i.ga)
  store float %i.gb, ptr %i.fz, align 4, !tbaa !34
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv.next239
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !34
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next239 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !34
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.gd, float %i.gf)
  store float %i.gg, ptr %i.ge, align 4, !tbaa !34
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %exitcond242.not.1 = icmp eq i64 %indvars.iv.next239.1, %wide.trip.count241
  br i1 %exitcond242.not.1, label %..loopexit_crit_edge, label %scalar.ph357, !llvm.loop !27

.preheader186:                                    ; preds = %.preheader186.lr.ph, %._crit_edge211
  %indvars.iv248 = phi i64 [ %i.ey, %.preheader186.lr.ph ], [ %indvars.iv.next249, %._crit_edge211 ] ; 7 uses
  %.not184207 = icmp sgt i64 %indvars.iv248, %i.ez
  %.phi.trans.insert271 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv248
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8, !tbaa !32 ; 3 uses
  br i1 %.not184207, label %._crit_edge211, label %.lr.ph210

.preheader.split.preheader:                       ; preds = %bb.b, %._crit_edge194
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.gh, i8 0, i64 131072, i1 false), !tbaa !14
  br label %.split.us

.lr.ph217.us.preheader.loopexit:                  ; preds = %._crit_edge211
  %i.gi = zext i32 %i.du to i64
  br label %.lr.ph217.us.preheader

.lr.ph217.us.preheader:                           ; preds = %.lr.ph217.us.preheader.loopexit, %.preheader189
  %wide.trip.count260 = phi i64 [ 1, %.preheader189 ], [ %i.gi, %.lr.ph217.us.preheader.loopexit ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5600
  br label %.lr.ph217.us

.lr.ph217.us:                                     ; preds = %.lr.ph217.us.preheader, %bb.i
  %indvars.iv262 = phi i64 [ 0, %.lr.ph217.us.preheader ], [ %indvars.iv.next263, %bb.i ] ; 3 uses
  %i.gk = trunc nuw nsw i64 %indvars.iv262 to i32
  %i.gl = uitofp nneg i32 %i.gk to float
  %i.gm = fdiv float %i.gl, 6.553500e+04          ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph217.us, %._crit_edge273
  %indvars.iv257 = phi i64 [ 0, %.lr.ph217.us ], [ %.pre274, %._crit_edge273 ] ; 5 uses
  %.0215.us = phi float [ 0.000000e+00, %.lr.ph217.us ], [ %.1.us, %._crit_edge273 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv257
  %i.go = load float, ptr %i.gn, align 4, !tbaa !34 ; 2 uses
  %i.gp = fcmp ugt float %i.go, %i.gm
  %.pre274 = add nuw nsw i64 %indvars.iv257, 1    ; 5 uses
  br i1 %i.gp, label %._crit_edge273, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.pre274
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !34
  %i.gs = fcmp ugt float %i.gm, %i.gr
  br i1 %i.gs, label %._crit_edge273, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gt = fsub float %i.gm, %i.go                 ; 6 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv257
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !34 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.pre274
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !34
  %i.gy = fsub float %i.gx, %i.gv
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv257
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !34 ; 4 uses
  %i.hb = fdiv float %i.gy, %i.ha
  %i.hc = fmul float %i.ha, 2.000000e+00
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv257
  %i.he = load float, ptr %i.hd, align 4, !tbaa !34 ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.pre274
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !34 ; 2 uses
  %i.hh = fmul float %i.ha, %i.hg
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.he, float %i.hh)
  %i.hj = fdiv float %i.hi, 6.000000e+00
  %i.hk = fsub float %i.hb, %i.hj
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.gt, float %i.gv)
  %i.hm = fmul float %i.he, 5.000000e-01
  %i.hn = fmul float %i.gt, %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.gt, float %i.hl)
  %i.hp = fsub float %i.hg, %i.he
  %i.hq = fmul float %i.ha, 6.000000e+00
  %i.hr = fdiv float %i.hp, %i.hq
  %i.hs = fmul float %i.gt, %i.hr
  %i.ht = fmul float %i.gt, %i.hs
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.gt, float %i.ho)
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %bb.d, %bb.f, %bb.e
  %.1.us = phi float [ %.0215.us, %bb.e ], [ %i.hu, %bb.f ], [ %.0215.us, %bb.d ] ; 4 uses
  %exitcond261.not = icmp eq i64 %.pre274, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge218.us, label %bb.d, !llvm.loop !28

bb.g:                                             ; preds = %._crit_edge218.us
  %i.hv = fcmp ult float %.1.us, 1.000000e+00
  br i1 %i.hv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hw = tail call float @llvm.fmuladd.f32(float %.1.us, float 6.553500e+04, float 5.000000e-01)
  %i.hx = fptoui float %i.hw to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge218.us
  %i.hy = phi i16 [ 0, %._crit_edge218.us ], [ %i.hx, %bb.h ], [ -1, %bb.g ]
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %indvars.iv262
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !14
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 65536
  br i1 %exitcond265.not, label %.split.us, label %.lr.ph217.us, !llvm.loop !29

._crit_edge218.us:                                ; preds = %._crit_edge273
  %i.ia = fcmp olt float %.1.us, 0.000000e+00
  br i1 %i.ia, label %bb.i, label %bb.g

.lr.ph210:                                        ; preds = %.preheader186, %.lr.ph210
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph210 ], [ %indvars.iv248, %.preheader186 ] ; 4 uses
  %.0169209 = phi float [ %i.if, %.lr.ph210 ], [ 0.000000e+00, %.preheader186 ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %indvars.iv250
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !34
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv250
  %i.ie = load float, ptr %i.id, align 4, !tbaa !34
  %i.if = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ie, float %.0169209) ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %i.ig = trunc nuw i64 %indvars.iv250 to i32
  %.not184.not = icmp sgt i32 %i.dv, %i.ig
  br i1 %.not184.not, label %.lr.ph210, label %._crit_edge211, !llvm.loop !30

._crit_edge211:                                   ; preds = %.lr.ph210, %.preheader186
  %.0169.lcssa = phi float [ 0.000000e+00, %.preheader186 ], [ %i.if, %.lr.ph210 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %.pre272, i64 %5
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !34
  %i.ij = fsub float %i.ii, %.0169.lcssa
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %indvars.iv248
  %i.il = load float, ptr %i.ik, align 4, !tbaa !34
  %i.im = fdiv float %i.ij, %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv248
  store float %i.im, ptr %i.in, align 4, !tbaa !34
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, -1
  %i.io = icmp sgt i64 %indvars.iv248, 1
  br i1 %i.io, label %.preheader186, label %.lr.ph217.us.preheader.loopexit, !llvm.loop !31

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
end_hunk_0
