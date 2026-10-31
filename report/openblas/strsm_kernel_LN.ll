Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/strsm_kernel_LN?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @strsm_kernel_LN(i64 noundef %0, i64 noundef %1, i64 noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 2                           ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = add nsw i64 %8, %0                       ; 2 uses
  %i.d = and i64 %0, 15
  %.not193 = icmp eq i64 %i.d, 0
  %i.e = ashr i64 %0, 4                           ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  %i.g = and i64 %0, -16
  %i.h = add nsw i64 %i.g, -16                    ; 2 uses
  %i.i = mul nsw i64 %i.h, %2
  %i.j = getelementptr inbounds [4 x i8], ptr %4, i64 %i.i
  %.idx198 = mul i64 %2, -64
  %.idx199 = shl nsw i64 %2, 4
  %.idx200 = shl i64 %7, 4
  %i.k = shl i64 %7, 1                            ; 3 uses
  %i.l = mul i64 %7, 3                            ; 3 uses
  %.pre = shl nsw i64 %7, 1
  %.pre342 = mul nsw i64 %7, 3
  %i.m = shl nsw i64 %7, 1                        ; 3 uses
  %i.n = mul nsw i64 %7, 3                        ; 3 uses
  %9 = shl i64 %2, 2
  %i.o = shl i64 %2, 2
  %i.p = shl i64 %2, 2
  %i.q = shl i64 %2, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit285
  %.0167310 = phi i64 [ %i.a, %.lr.ph ], [ %i.tw, %.loopexit285 ] ; 2 uses
  %.0173309 = phi ptr [ %5, %.lr.ph ], [ %i.tu, %.loopexit285 ] ; 5 uses
  %.0176308 = phi ptr [ %6, %.lr.ph ], [ %i.tv, %.loopexit285 ] ; 3 uses
  br i1 %.not193, label %.loopexit287, label %.preheader286

.preheader286:                                    ; preds = %bb.b, %solve.exit
  %.0304 = phi i64 [ %.1, %solve.exit ], [ %i.c, %bb.b ] ; 9 uses
  %.0169303 = phi i64 [ %i.lu, %solve.exit ], [ 1, %bb.b ] ; 20 uses
  %i.r = and i64 %.0169303, %0
  %.not201 = icmp eq i64 %i.r, 0
  br i1 %.not201, label %solve.exit, label %bb.c

bb.c:                                             ; preds = %.preheader286
  %i.s = sub nsw i64 0, %.0169303                 ; 2 uses
  %i.t = and i64 %0, %i.s
  %i.u = sub i64 %i.t, %.0169303                  ; 6 uses
  %i.v = mul nsw i64 %i.u, %2
  %i.w = getelementptr inbounds [4 x i8], ptr %4, i64 %i.v ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0176308, i64 %i.u ; 22 uses
  %i.y = sub nsw i64 %2, %.0304                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.aa = mul nsw i64 %.0304, %.0169303
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.aa
  %.idx202 = shl nsw i64 %.0304, 4
  %i.ac = getelementptr inbounds i8, ptr %.0173309, i64 %.idx202
  %i.ad = tail call i32 @sgemm_kernel(i64 noundef %.0169303, i64 noundef 4, i64 noundef %i.y, float noundef -1.000000e+00, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.x, i64 noundef %7) #4 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %i.ae = sub nsw i64 %.0304, %.0169303           ; 3 uses
  %i.af = add nsw i64 %.0169303, -1               ; 5 uses
  %.idx203 = shl nsw i64 %i.ae, 4
  %i.ag = getelementptr inbounds i8, ptr %.0173309, i64 %.idx203
  %i.ah = mul nsw i64 %i.ae, %.0169303
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ah
  %.idx281 = shl nsw i64 %i.af, 4
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %.idx281 ; 2 uses
  %i.ak = mul nuw nsw i64 %i.af, %.0169303
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.af
  %i.an = load float, ptr %i.am, align 4, !tbaa !48 ; 2 uses
  %.not.i297 = icmp eq i64 %i.af, 0
  br i1 %.not.i297, label %.split.i.preheader, label %.lr.ph.us.i.preheader.preheader

.lr.ph.us.i.preheader.preheader:                  ; preds = %.lr.ph.i
  %invariant.gep.us.i.1 = getelementptr [4 x i8], ptr %i.x, i64 %7 ; 12 uses
  %invariant.gep.us.i.2 = getelementptr [4 x i8], ptr %i.x, i64 %i.k ; 12 uses
  %invariant.gep.us.i.3 = getelementptr [4 x i8], ptr %i.x, i64 %i.l ; 12 uses
  %10 = shl nuw nsw i64 %.0169303, 2
  %11 = sub nuw nsw i64 -4, %10
  %i.ao = shl i64 %.0304, 2
  %i.ap = mul i64 %i.ao, %.0169303
  %i.aq = mul i64 %9, %i.u
  %i.ar = shl nuw nsw i64 %.0169303, 2
  %i.as = sub nuw nsw i64 -4, %i.ar
  %i.at = shl i64 %.0304, 2
  %i.au = mul i64 %i.at, %.0169303
  %i.av = mul i64 %i.o, %i.u
  %i.aw = shl nuw nsw i64 %.0169303, 2
  %i.ax = sub nuw nsw i64 -4, %i.aw
  %i.ay = shl i64 %.0304, 2
  %i.az = mul i64 %i.ay, %.0169303
  %i.ba = mul i64 %i.p, %i.u
  %i.bb = shl nuw nsw i64 %.0169303, 2
  %i.bc = sub nuw nsw i64 -4, %i.bb
  %12 = shl i64 %.0304, 2
  %13 = mul i64 %12, %.0169303
  %14 = mul i64 %i.q, %i.u
  %i.bd = add nsw i64 %.0169303, -2
  %15 = getelementptr i8, ptr %4, i64 %13
  %16 = getelementptr i8, ptr %15, i64 -4
  %17 = getelementptr i8, ptr %16, i64 %14
  %i.be = getelementptr i8, ptr %4, i64 %i.az
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.ba
  %i.bh = getelementptr i8, ptr %4, i64 %i.au
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.av
  %i.bk = getelementptr i8, ptr %4, i64 %i.ap
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.aq
  br label %iter.check533

.split.i.preheader:                               ; preds = %._crit_edge.us.i.3, %.lr.ph.i
  %.pre-phi343 = phi i64 [ %.pre342, %.lr.ph.i ], [ %i.l, %._crit_edge.us.i.3 ]
  %.pre-phi = phi i64 [ %.pre, %.lr.ph.i ], [ %i.k, %._crit_edge.us.i.3 ]
  %.04452.i.lcssa = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.lr, %._crit_edge.us.i.3 ] ; 4 uses
  %.lcssa294 = phi float [ %i.an, %.lr.ph.i ], [ %i.lt, %._crit_edge.us.i.3 ] ; 4 uses
  %i.bn = load float, ptr %i.x, align 4, !tbaa !48
  %i.bo = fmul float %.lcssa294, %i.bn            ; 2 uses
  store float %i.bo, ptr %.04452.i.lcssa, align 4, !tbaa !48
  store float %i.bo, ptr %i.x, align 4, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 4
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.x, i64 %7 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !48
  %i.bs = fmul float %.lcssa294, %i.br            ; 2 uses
  store float %i.bs, ptr %i.bp, align 4, !tbaa !48
  store float %i.bs, ptr %i.bq, align 4, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 8
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.pre-phi ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !48
  %i.bw = fmul float %.lcssa294, %i.bv            ; 2 uses
  store float %i.bw, ptr %i.bt, align 4, !tbaa !48
  store float %i.bw, ptr %i.bu, align 4, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 12
  %i.by = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.pre-phi343 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !48
  %i.ca = fmul float %.lcssa294, %i.bz            ; 2 uses
  store float %i.ca, ptr %i.bx, align 4, !tbaa !48
  store float %i.ca, ptr %i.by, align 4, !tbaa !48
  br label %solve.exit

iter.check533:                                    ; preds = %.lr.ph.us.i.preheader.preheader, %._crit_edge.us.i.3
  %indvar = phi i64 [ 0, %.lr.ph.us.i.preheader.preheader ], [ %indvar.next, %._crit_edge.us.i.3 ] ; 6 uses
  %i.cb = phi float [ %i.an, %.lr.ph.us.i.preheader.preheader ], [ %i.lt, %._crit_edge.us.i.3 ] ; 4 uses
  %.04452.i300 = phi ptr [ %i.aj, %.lr.ph.us.i.preheader.preheader ], [ %i.lr, %._crit_edge.us.i.3 ] ; 5 uses
  %.04353.i299 = phi ptr [ %i.al, %.lr.ph.us.i.preheader.preheader ], [ %i.lq, %._crit_edge.us.i.3 ] ; 49 uses
  %indvars.iv65.i298 = phi i64 [ %i.af, %.lr.ph.us.i.preheader.preheader ], [ %indvars.iv.next66.i, %._crit_edge.us.i.3 ] ; 38 uses
  %i.cc = sub i64 %i.bd, %indvar                  ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv65.i298 ; 6 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !48
  %i.cf = fmul float %i.cb, %i.ce                 ; 3 uses
  store float %i.cf, ptr %.04452.i300, align 4, !tbaa !48
  store float %i.cf, ptr %i.cd, align 4, !tbaa !48
  %i.cg = fneg float %i.cf                        ; 11 uses
  %min.iters.check513 = icmp ult i64 %indvars.iv65.i298, 4
  br i1 %min.iters.check513, label %vec.epilog.scalar.ph535.preheader, label %vector.memcheck509

vector.memcheck509:                               ; preds = %iter.check533
  %18 = mul nsw i64 %indvar, %i.bc
  %19 = getelementptr i8, ptr %17, i64 %18
  %bound0510 = icmp ult ptr %i.x, %19
  %bound1511 = icmp ult ptr %.04353.i299, %i.cd
  %found.conflict512 = and i1 %bound0510, %bound1511
  br i1 %found.conflict512, label %vec.epilog.scalar.ph535.preheader, label %vector.main.loop.iter.check514

vector.main.loop.iter.check514:                   ; preds = %vector.memcheck509
  %min.iters.check515 = icmp ult i64 %indvars.iv65.i298, 32
  br i1 %min.iters.check515, label %vec.epilog.ph537, label %vector.ph516

vector.ph516:                                     ; preds = %vector.main.loop.iter.check514
  %i.ch = and i64 %indvars.iv65.i298, 28
  %n.vec517 = and i64 %indvars.iv65.i298, -32     ; 4 uses
  %broadcast.splatinsert518 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat519 = shufflevector <8 x float> %broadcast.splatinsert518, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.ph516, %vector.body520
  %index521 = phi i64 [ 0, %vector.ph516 ], [ %index.next530, %vector.body520 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index521 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %wide.load522 = load <8 x float>, ptr %i.ci, align 4, !tbaa !48, !alias.scope !49
  %wide.load523 = load <8 x float>, ptr %i.cj, align 4, !tbaa !48, !alias.scope !49
  %wide.load524 = load <8 x float>, ptr %i.ck, align 4, !tbaa !48, !alias.scope !49
  %wide.load525 = load <8 x float>, ptr %i.cl, align 4, !tbaa !48, !alias.scope !49
  %i.cm = getelementptr [4 x i8], ptr %i.x, i64 %index521 ; 5 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 32     ; 2 uses
  %i.co = getelementptr i8, ptr %i.cm, i64 64     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cm, i64 96     ; 2 uses
  %wide.load526 = load <8 x float>, ptr %i.cm, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %wide.load527 = load <8 x float>, ptr %i.cn, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %wide.load528 = load <8 x float>, ptr %i.co, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %wide.load529 = load <8 x float>, ptr %i.cp, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %i.cq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat519, <8 x float> %wide.load522, <8 x float> %wide.load526)
  %i.cr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat519, <8 x float> %wide.load523, <8 x float> %wide.load527)
  %i.cs = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat519, <8 x float> %wide.load524, <8 x float> %wide.load528)
  %i.ct = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat519, <8 x float> %wide.load525, <8 x float> %wide.load529)
  store <8 x float> %i.cq, ptr %i.cm, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  store <8 x float> %i.cr, ptr %i.cn, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  store <8 x float> %i.cs, ptr %i.co, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  store <8 x float> %i.ct, ptr %i.cp, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %index.next530 = add nuw i64 %index521, 32      ; 2 uses
  %i.cu = icmp eq i64 %index.next530, %n.vec517
  br i1 %i.cu, label %middle.block531, label %vector.body520, !llvm.loop !11

middle.block531:                                  ; preds = %vector.body520
  %cmp.n532 = icmp eq i64 %indvars.iv65.i298, %n.vec517
  br i1 %cmp.n532, label %iter.check492, label %vec.epilog.iter.check534

vec.epilog.iter.check534:                         ; preds = %middle.block531
  %min.epilog.iters.check536 = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check536, label %vec.epilog.scalar.ph535.preheader, label %vec.epilog.ph537, !prof !54

vec.epilog.ph537:                                 ; preds = %vector.main.loop.iter.check514, %vec.epilog.iter.check534
  %vec.epilog.resume.val538 = phi i64 [ %n.vec517, %vec.epilog.iter.check534 ], [ 0, %vector.main.loop.iter.check514 ]
  %n.vec539 = and i64 %indvars.iv65.i298, -4      ; 3 uses
  %broadcast.splatinsert540 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat541 = shufflevector <4 x float> %broadcast.splatinsert540, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body542

vec.epilog.vector.body542:                        ; preds = %vec.epilog.vector.body542, %vec.epilog.ph537
  %index543 = phi i64 [ %vec.epilog.resume.val538, %vec.epilog.ph537 ], [ %index.next546, %vec.epilog.vector.body542 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index543
  %wide.load544 = load <4 x float>, ptr %i.cv, align 4, !tbaa !48, !alias.scope !49
  %i.cw = getelementptr [4 x i8], ptr %i.x, i64 %index543 ; 2 uses
  %wide.load545 = load <4 x float>, ptr %i.cw, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat541, <4 x float> %wide.load544, <4 x float> %wide.load545)
  store <4 x float> %i.cx, ptr %i.cw, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %index.next546 = add nuw i64 %index543, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next546, %n.vec539
  br i1 %i.cy, label %vec.epilog.middle.block547, label %vec.epilog.vector.body542, !llvm.loop !12

vec.epilog.middle.block547:                       ; preds = %vec.epilog.vector.body542
  %cmp.n548 = icmp eq i64 %indvars.iv65.i298, %n.vec539
  br i1 %cmp.n548, label %iter.check492, label %vec.epilog.scalar.ph535.preheader

vec.epilog.scalar.ph535.preheader:                ; preds = %iter.check533, %vector.memcheck509, %vec.epilog.iter.check534, %vec.epilog.middle.block547
  %indvars.iv57.i.ph = phi i64 [ 0, %iter.check533 ], [ 0, %vector.memcheck509 ], [ %n.vec517, %vec.epilog.iter.check534 ], [ %n.vec539, %vec.epilog.middle.block547 ] ; 4 uses
  %i.cz = sub i64 %indvars.iv65.i298, %indvars.iv57.i.ph
  %i.da = sub i64 %i.cc, %indvars.iv57.i.ph
  %xtraiter = and i64 %i.cz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph535.prol.loopexit, label %vec.epilog.scalar.ph535.prol

vec.epilog.scalar.ph535.prol:                     ; preds = %vec.epilog.scalar.ph535.preheader, %vec.epilog.scalar.ph535.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph535.prol ], [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph535.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph535.prol ], [ 0, %vec.epilog.scalar.ph535.preheader ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.prol
  %i.dc = load float, ptr %i.db, align 4, !tbaa !48
  %gep.us.i.prol = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv57.i.prol ; 2 uses
  %i.dd = load float, ptr %gep.us.i.prol, align 4, !tbaa !48
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dc, float %i.dd)
  store float %i.de, ptr %gep.us.i.prol, align 4, !tbaa !48
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph535.prol.loopexit, label %vec.epilog.scalar.ph535.prol, !llvm.loop !13

vec.epilog.scalar.ph535.prol.loopexit:            ; preds = %vec.epilog.scalar.ph535.prol, %vec.epilog.scalar.ph535.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph535.preheader ], [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph535.prol ]
  %i.df = icmp ult i64 %i.da, 7
  br i1 %i.df, label %iter.check492, label %vec.epilog.scalar.ph535

vec.epilog.scalar.ph535:                          ; preds = %vec.epilog.scalar.ph535.prol.loopexit, %vec.epilog.scalar.ph535
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.7, %vec.epilog.scalar.ph535 ], [ %indvars.iv57.i.unr, %vec.epilog.scalar.ph535.prol.loopexit ] ; 10 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !48
  %gep.us.i = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv57.i ; 2 uses
  %i.di = load float, ptr %gep.us.i, align 4, !tbaa !48
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dh, float %i.di)
  store float %i.dj, ptr %gep.us.i, align 4, !tbaa !48
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !48
  %gep.us.i.1788 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i ; 2 uses
  %i.dm = load float, ptr %gep.us.i.1788, align 4, !tbaa !48
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dl, float %i.dm)
  store float %i.dn, ptr %gep.us.i.1788, align 4, !tbaa !48
  %indvars.iv.next58.i.1789 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1789
  %i.dp = load float, ptr %i.do, align 4, !tbaa !48
  %gep.us.i.2792 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.1789 ; 2 uses
  %i.dq = load float, ptr %gep.us.i.2792, align 4, !tbaa !48
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dp, float %i.dq)
  store float %i.dr, ptr %gep.us.i.2792, align 4, !tbaa !48
  %indvars.iv.next58.i.2793 = add nuw nsw i64 %indvars.iv57.i, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2793
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !48
  %gep.us.i.3796 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.2793 ; 2 uses
  %i.du = load float, ptr %gep.us.i.3796, align 4, !tbaa !48
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dt, float %i.du)
  store float %i.dv, ptr %gep.us.i.3796, align 4, !tbaa !48
  %indvars.iv.next58.i.3797 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3797
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !48
  %gep.us.i.4 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.3797 ; 2 uses
  %i.dy = load float, ptr %gep.us.i.4, align 4, !tbaa !48
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.dx, float %i.dy)
  store float %i.dz, ptr %gep.us.i.4, align 4, !tbaa !48
  %indvars.iv.next58.i.4 = add nuw nsw i64 %indvars.iv57.i, 5 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !48
  %gep.us.i.5 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.4 ; 2 uses
  %i.ec = load float, ptr %gep.us.i.5, align 4, !tbaa !48
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.eb, float %i.ec)
  store float %i.ed, ptr %gep.us.i.5, align 4, !tbaa !48
  %indvars.iv.next58.i.5 = add nuw nsw i64 %indvars.iv57.i, 6 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.5
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !48
  %gep.us.i.6 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.5 ; 2 uses
  %i.eg = load float, ptr %gep.us.i.6, align 4, !tbaa !48
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ef, float %i.eg)
  store float %i.eh, ptr %gep.us.i.6, align 4, !tbaa !48
  %indvars.iv.next58.i.6 = add nuw nsw i64 %indvars.iv57.i, 7 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.6
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !48
  %gep.us.i.7 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.6 ; 2 uses
  %i.ek = load float, ptr %gep.us.i.7, align 4, !tbaa !48
  %i.el = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.ej, float %i.ek)
  store float %i.el, ptr %gep.us.i.7, align 4, !tbaa !48
  %indvars.iv.next58.i.7 = add nuw nsw i64 %indvars.iv57.i, 8 ; 2 uses
  %exitcond60.not.i.7 = icmp eq i64 %indvars.iv.next58.i.7, %indvars.iv65.i298
  br i1 %exitcond60.not.i.7, label %iter.check492, label %vec.epilog.scalar.ph535, !llvm.loop !14

iter.check492:                                    ; preds = %vec.epilog.scalar.ph535.prol.loopexit, %vec.epilog.scalar.ph535, %vec.epilog.middle.block547, %middle.block531
  %i.em = getelementptr inbounds nuw i8, ptr %.04452.i300, i64 4
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %7 ; 3 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !48
  %i.ep = fmul float %i.cb, %i.eo                 ; 3 uses
  store float %i.ep, ptr %i.em, align 4, !tbaa !48
  store float %i.ep, ptr %i.en, align 4, !tbaa !48
  %i.eq = fneg float %i.ep                        ; 11 uses
  %min.iters.check472 = icmp ult i64 %indvars.iv65.i298, 4
  br i1 %min.iters.check472, label %vec.epilog.scalar.ph494.preheader, label %vector.memcheck467

vector.memcheck467:                               ; preds = %iter.check492
  %20 = mul nsw i64 %indvar, %i.ax
  %21 = getelementptr i8, ptr %i.bg, i64 %20
  %bound0469 = icmp ult ptr %invariant.gep.us.i.1, %21
  %bound1470 = icmp ult ptr %.04353.i299, %i.en
  %found.conflict471 = and i1 %bound0469, %bound1470
  br i1 %found.conflict471, label %vec.epilog.scalar.ph494.preheader, label %vector.main.loop.iter.check473

vector.main.loop.iter.check473:                   ; preds = %vector.memcheck467
  %min.iters.check474 = icmp ult i64 %indvars.iv65.i298, 32
  br i1 %min.iters.check474, label %vec.epilog.ph496, label %vector.ph475

vector.ph475:                                     ; preds = %vector.main.loop.iter.check473
  %i.er = and i64 %indvars.iv65.i298, 28
  %n.vec476 = and i64 %indvars.iv65.i298, -32     ; 4 uses
  %broadcast.splatinsert477 = insertelement <8 x float> poison, float %i.eq, i64 0
  %broadcast.splat478 = shufflevector <8 x float> %broadcast.splatinsert477, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body479

vector.body479:                                   ; preds = %vector.ph475, %vector.body479
  %index480 = phi i64 [ 0, %vector.ph475 ], [ %index.next489, %vector.body479 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index480 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %wide.load481 = load <8 x float>, ptr %i.es, align 4, !tbaa !48, !alias.scope !56
  %wide.load482 = load <8 x float>, ptr %i.et, align 4, !tbaa !48, !alias.scope !56
  %wide.load483 = load <8 x float>, ptr %i.eu, align 4, !tbaa !48, !alias.scope !56
  %wide.load484 = load <8 x float>, ptr %i.ev, align 4, !tbaa !48, !alias.scope !56
  %i.ew = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %index480 ; 5 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 32     ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ew, i64 64     ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ew, i64 96     ; 2 uses
  %wide.load485 = load <8 x float>, ptr %i.ew, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %wide.load486 = load <8 x float>, ptr %i.ex, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %wide.load487 = load <8 x float>, ptr %i.ey, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %wide.load488 = load <8 x float>, ptr %i.ez, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %i.fa = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat478, <8 x float> %wide.load481, <8 x float> %wide.load485)
  %i.fb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat478, <8 x float> %wide.load482, <8 x float> %wide.load486)
  %i.fc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat478, <8 x float> %wide.load483, <8 x float> %wide.load487)
  %i.fd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat478, <8 x float> %wide.load484, <8 x float> %wide.load488)
  store <8 x float> %i.fa, ptr %i.ew, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  store <8 x float> %i.fb, ptr %i.ex, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  store <8 x float> %i.fc, ptr %i.ey, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  store <8 x float> %i.fd, ptr %i.ez, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %index.next489 = add nuw i64 %index480, 32      ; 2 uses
  %i.fe = icmp eq i64 %index.next489, %n.vec476
  br i1 %i.fe, label %middle.block490, label %vector.body479, !llvm.loop !18

middle.block490:                                  ; preds = %vector.body479
  %cmp.n491 = icmp eq i64 %indvars.iv65.i298, %n.vec476
  br i1 %cmp.n491, label %iter.check450, label %vec.epilog.iter.check493

vec.epilog.iter.check493:                         ; preds = %middle.block490
  %min.epilog.iters.check495 = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check495, label %vec.epilog.scalar.ph494.preheader, label %vec.epilog.ph496, !prof !54

vec.epilog.ph496:                                 ; preds = %vector.main.loop.iter.check473, %vec.epilog.iter.check493
  %vec.epilog.resume.val497 = phi i64 [ %n.vec476, %vec.epilog.iter.check493 ], [ 0, %vector.main.loop.iter.check473 ]
  %n.vec498 = and i64 %indvars.iv65.i298, -4      ; 3 uses
  %broadcast.splatinsert499 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat500 = shufflevector <4 x float> %broadcast.splatinsert499, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body501

vec.epilog.vector.body501:                        ; preds = %vec.epilog.vector.body501, %vec.epilog.ph496
  %index502 = phi i64 [ %vec.epilog.resume.val497, %vec.epilog.ph496 ], [ %index.next505, %vec.epilog.vector.body501 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index502
  %wide.load503 = load <4 x float>, ptr %i.ff, align 4, !tbaa !48, !alias.scope !56
  %i.fg = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %index502 ; 2 uses
  %wide.load504 = load <4 x float>, ptr %i.fg, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat500, <4 x float> %wide.load503, <4 x float> %wide.load504)
  store <4 x float> %i.fh, ptr %i.fg, align 4, !tbaa !48, !alias.scope !57, !noalias !56
  %index.next505 = add nuw i64 %index502, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next505, %n.vec498
  br i1 %i.fi, label %vec.epilog.middle.block506, label %vec.epilog.vector.body501, !llvm.loop !19

vec.epilog.middle.block506:                       ; preds = %vec.epilog.vector.body501
  %cmp.n507 = icmp eq i64 %indvars.iv65.i298, %n.vec498
  br i1 %cmp.n507, label %iter.check450, label %vec.epilog.scalar.ph494.preheader

vec.epilog.scalar.ph494.preheader:                ; preds = %iter.check492, %vector.memcheck467, %vec.epilog.iter.check493, %vec.epilog.middle.block506
  %indvars.iv57.i.1.ph = phi i64 [ 0, %iter.check492 ], [ 0, %vector.memcheck467 ], [ %n.vec476, %vec.epilog.iter.check493 ], [ %n.vec498, %vec.epilog.middle.block506 ] ; 4 uses
  %i.fj = sub i64 %indvars.iv65.i298, %indvars.iv57.i.1.ph
  %i.fk = sub i64 %i.cc, %indvars.iv57.i.1.ph
  %xtraiter799 = and i64 %i.fj, 7                 ; 2 uses
  %lcmp.mod800.not = icmp eq i64 %xtraiter799, 0
  br i1 %lcmp.mod800.not, label %vec.epilog.scalar.ph494.prol.loopexit, label %vec.epilog.scalar.ph494.prol

vec.epilog.scalar.ph494.prol:                     ; preds = %vec.epilog.scalar.ph494.preheader, %vec.epilog.scalar.ph494.prol
  %indvars.iv57.i.1.prol = phi i64 [ %indvars.iv.next58.i.1.prol, %vec.epilog.scalar.ph494.prol ], [ %indvars.iv57.i.1.ph, %vec.epilog.scalar.ph494.preheader ] ; 3 uses
  %prol.iter801 = phi i64 [ %prol.iter801.next, %vec.epilog.scalar.ph494.prol ], [ 0, %vec.epilog.scalar.ph494.preheader ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.1.prol
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !48
  %gep.us.i.1.prol = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv57.i.1.prol ; 2 uses
  %i.fn = load float, ptr %gep.us.i.1.prol, align 4, !tbaa !48
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.fm, float %i.fn)
  store float %i.fo, ptr %gep.us.i.1.prol, align 4, !tbaa !48
  %indvars.iv.next58.i.1.prol = add nuw nsw i64 %indvars.iv57.i.1.prol, 1 ; 2 uses
  %prol.iter801.next = add i64 %prol.iter801, 1   ; 2 uses
  %prol.iter801.cmp.not = icmp eq i64 %prol.iter801.next, %xtraiter799
  br i1 %prol.iter801.cmp.not, label %vec.epilog.scalar.ph494.prol.loopexit, label %vec.epilog.scalar.ph494.prol, !llvm.loop !20

vec.epilog.scalar.ph494.prol.loopexit:            ; preds = %vec.epilog.scalar.ph494.prol, %vec.epilog.scalar.ph494.preheader
  %indvars.iv57.i.1.unr = phi i64 [ %indvars.iv57.i.1.ph, %vec.epilog.scalar.ph494.preheader ], [ %indvars.iv.next58.i.1.prol, %vec.epilog.scalar.ph494.prol ]
  %i.fp = icmp ult i64 %i.fk, 7
  br i1 %i.fp, label %iter.check450, label %vec.epilog.scalar.ph494

vec.epilog.scalar.ph494:                          ; preds = %vec.epilog.scalar.ph494.prol.loopexit, %vec.epilog.scalar.ph494
  %indvars.iv57.i.1 = phi i64 [ %indvars.iv.next58.i.1.7, %vec.epilog.scalar.ph494 ], [ %indvars.iv57.i.1.unr, %vec.epilog.scalar.ph494.prol.loopexit ] ; 10 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.1
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !48
  %gep.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv57.i.1 ; 2 uses
  %i.fs = load float, ptr %gep.us.i.1, align 4, !tbaa !48
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.fr, float %i.fs)
  store float %i.ft, ptr %gep.us.i.1, align 4, !tbaa !48
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i.1, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !48
  %gep.us.i.1.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1 ; 2 uses
  %i.fw = load float, ptr %gep.us.i.1.1, align 4, !tbaa !48
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.fv, float %i.fw)
  store float %i.fx, ptr %gep.us.i.1.1, align 4, !tbaa !48
  %indvars.iv.next58.i.1.1 = add nuw nsw i64 %indvars.iv57.i.1, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1.1
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !48
  %gep.us.i.1.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.1 ; 2 uses
  %i.ga = load float, ptr %gep.us.i.1.2, align 4, !tbaa !48
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.fz, float %i.ga)
  store float %i.gb, ptr %gep.us.i.1.2, align 4, !tbaa !48
  %indvars.iv.next58.i.1.2 = add nuw nsw i64 %indvars.iv57.i.1, 3 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !48
  %gep.us.i.1.3 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.2 ; 2 uses
  %i.ge = load float, ptr %gep.us.i.1.3, align 4, !tbaa !48
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gd, float %i.ge)
  store float %i.gf, ptr %gep.us.i.1.3, align 4, !tbaa !48
  %indvars.iv.next58.i.1.3 = add nuw nsw i64 %indvars.iv57.i.1, 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1.3
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !48
  %gep.us.i.1.4 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.3 ; 2 uses
  %i.gi = load float, ptr %gep.us.i.1.4, align 4, !tbaa !48
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gh, float %i.gi)
  store float %i.gj, ptr %gep.us.i.1.4, align 4, !tbaa !48
  %indvars.iv.next58.i.1.4 = add nuw nsw i64 %indvars.iv57.i.1, 5 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1.4
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !48
  %gep.us.i.1.5 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.4 ; 2 uses
  %i.gm = load float, ptr %gep.us.i.1.5, align 4, !tbaa !48
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gl, float %i.gm)
  store float %i.gn, ptr %gep.us.i.1.5, align 4, !tbaa !48
  %indvars.iv.next58.i.1.5 = add nuw nsw i64 %indvars.iv57.i.1, 6 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1.5
  %i.gp = load float, ptr %i.go, align 4, !tbaa !48
  %gep.us.i.1.6 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.5 ; 2 uses
  %i.gq = load float, ptr %gep.us.i.1.6, align 4, !tbaa !48
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gp, float %i.gq)
  store float %i.gr, ptr %gep.us.i.1.6, align 4, !tbaa !48
  %indvars.iv.next58.i.1.6 = add nuw nsw i64 %indvars.iv57.i.1, 7 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1.6
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !48
  %gep.us.i.1.7 = getelementptr [4 x i8], ptr %invariant.gep.us.i.1, i64 %indvars.iv.next58.i.1.6 ; 2 uses
  %i.gu = load float, ptr %gep.us.i.1.7, align 4, !tbaa !48
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.gt, float %i.gu)
  store float %i.gv, ptr %gep.us.i.1.7, align 4, !tbaa !48
  %indvars.iv.next58.i.1.7 = add nuw nsw i64 %indvars.iv57.i.1, 8 ; 2 uses
  %exitcond60.not.i.1.7 = icmp eq i64 %indvars.iv.next58.i.1.7, %indvars.iv65.i298
  br i1 %exitcond60.not.i.1.7, label %iter.check450, label %vec.epilog.scalar.ph494, !llvm.loop !21

iter.check450:                                    ; preds = %vec.epilog.scalar.ph494.prol.loopexit, %vec.epilog.scalar.ph494, %vec.epilog.middle.block506, %middle.block490
  %i.gw = getelementptr inbounds nuw i8, ptr %.04452.i300, i64 8
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.k ; 3 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !48
  %i.gz = fmul float %i.cb, %i.gy                 ; 3 uses
  store float %i.gz, ptr %i.gw, align 4, !tbaa !48
  store float %i.gz, ptr %i.gx, align 4, !tbaa !48
  %i.ha = fneg float %i.gz                        ; 11 uses
  %min.iters.check430 = icmp ult i64 %indvars.iv65.i298, 4
  br i1 %min.iters.check430, label %vec.epilog.scalar.ph452.preheader, label %vector.memcheck425

vector.memcheck425:                               ; preds = %iter.check450
  %22 = mul nsw i64 %indvar, %i.as
  %23 = getelementptr i8, ptr %i.bj, i64 %22
  %bound0427 = icmp ult ptr %invariant.gep.us.i.2, %23
  %bound1428 = icmp ult ptr %.04353.i299, %i.gx
  %found.conflict429 = and i1 %bound0427, %bound1428
  br i1 %found.conflict429, label %vec.epilog.scalar.ph452.preheader, label %vector.main.loop.iter.check431

vector.main.loop.iter.check431:                   ; preds = %vector.memcheck425
  %min.iters.check432 = icmp ult i64 %indvars.iv65.i298, 32
  br i1 %min.iters.check432, label %vec.epilog.ph454, label %vector.ph433

vector.ph433:                                     ; preds = %vector.main.loop.iter.check431
  %i.hb = and i64 %indvars.iv65.i298, 28
  %n.vec434 = and i64 %indvars.iv65.i298, -32     ; 4 uses
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.ha, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.ph433, %vector.body437
  %index438 = phi i64 [ 0, %vector.ph433 ], [ %index.next447, %vector.body437 ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index438 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  %wide.load439 = load <8 x float>, ptr %i.hc, align 4, !tbaa !48, !alias.scope !58
  %wide.load440 = load <8 x float>, ptr %i.hd, align 4, !tbaa !48, !alias.scope !58
  %wide.load441 = load <8 x float>, ptr %i.he, align 4, !tbaa !48, !alias.scope !58
  %wide.load442 = load <8 x float>, ptr %i.hf, align 4, !tbaa !48, !alias.scope !58
  %i.hg = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %index438 ; 5 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 32     ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 64     ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hg, i64 96     ; 2 uses
  %wide.load443 = load <8 x float>, ptr %i.hg, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %wide.load444 = load <8 x float>, ptr %i.hh, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %wide.load445 = load <8 x float>, ptr %i.hi, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %wide.load446 = load <8 x float>, ptr %i.hj, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %i.hk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> %wide.load439, <8 x float> %wide.load443)
  %i.hl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> %wide.load440, <8 x float> %wide.load444)
  %i.hm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> %wide.load441, <8 x float> %wide.load445)
  %i.hn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> %wide.load442, <8 x float> %wide.load446)
  store <8 x float> %i.hk, ptr %i.hg, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  store <8 x float> %i.hl, ptr %i.hh, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  store <8 x float> %i.hm, ptr %i.hi, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  store <8 x float> %i.hn, ptr %i.hj, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %index.next447 = add nuw i64 %index438, 32      ; 2 uses
  %i.ho = icmp eq i64 %index.next447, %n.vec434
  br i1 %i.ho, label %middle.block448, label %vector.body437, !llvm.loop !25

middle.block448:                                  ; preds = %vector.body437
  %cmp.n449 = icmp eq i64 %indvars.iv65.i298, %n.vec434
  br i1 %cmp.n449, label %iter.check, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block448
  %min.epilog.iters.check453 = icmp eq i64 %i.hb, 0
  br i1 %min.epilog.iters.check453, label %vec.epilog.scalar.ph452.preheader, label %vec.epilog.ph454, !prof !54

vec.epilog.ph454:                                 ; preds = %vector.main.loop.iter.check431, %vec.epilog.iter.check451
  %vec.epilog.resume.val455 = phi i64 [ %n.vec434, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check431 ]
  %n.vec456 = and i64 %indvars.iv65.i298, -4      ; 3 uses
  %broadcast.splatinsert457 = insertelement <4 x float> poison, float %i.ha, i64 0
  %broadcast.splat458 = shufflevector <4 x float> %broadcast.splatinsert457, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body459

vec.epilog.vector.body459:                        ; preds = %vec.epilog.vector.body459, %vec.epilog.ph454
  %index460 = phi i64 [ %vec.epilog.resume.val455, %vec.epilog.ph454 ], [ %index.next463, %vec.epilog.vector.body459 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index460
  %wide.load461 = load <4 x float>, ptr %i.hp, align 4, !tbaa !48, !alias.scope !58
  %i.hq = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %index460 ; 2 uses
  %wide.load462 = load <4 x float>, ptr %i.hq, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat458, <4 x float> %wide.load461, <4 x float> %wide.load462)
  store <4 x float> %i.hr, ptr %i.hq, align 4, !tbaa !48, !alias.scope !59, !noalias !58
  %index.next463 = add nuw i64 %index460, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next463, %n.vec456
  br i1 %i.hs, label %vec.epilog.middle.block464, label %vec.epilog.vector.body459, !llvm.loop !26

vec.epilog.middle.block464:                       ; preds = %vec.epilog.vector.body459
  %cmp.n465 = icmp eq i64 %indvars.iv65.i298, %n.vec456
  br i1 %cmp.n465, label %iter.check, label %vec.epilog.scalar.ph452.preheader

vec.epilog.scalar.ph452.preheader:                ; preds = %iter.check450, %vector.memcheck425, %vec.epilog.iter.check451, %vec.epilog.middle.block464
  %indvars.iv57.i.2.ph = phi i64 [ 0, %iter.check450 ], [ 0, %vector.memcheck425 ], [ %n.vec434, %vec.epilog.iter.check451 ], [ %n.vec456, %vec.epilog.middle.block464 ] ; 4 uses
  %i.ht = sub i64 %indvars.iv65.i298, %indvars.iv57.i.2.ph
  %i.hu = sub i64 %i.cc, %indvars.iv57.i.2.ph
  %xtraiter802 = and i64 %i.ht, 7                 ; 2 uses
  %lcmp.mod803.not = icmp eq i64 %xtraiter802, 0
  br i1 %lcmp.mod803.not, label %vec.epilog.scalar.ph452.prol.loopexit, label %vec.epilog.scalar.ph452.prol

vec.epilog.scalar.ph452.prol:                     ; preds = %vec.epilog.scalar.ph452.preheader, %vec.epilog.scalar.ph452.prol
  %indvars.iv57.i.2.prol = phi i64 [ %indvars.iv.next58.i.2.prol, %vec.epilog.scalar.ph452.prol ], [ %indvars.iv57.i.2.ph, %vec.epilog.scalar.ph452.preheader ] ; 3 uses
  %prol.iter804 = phi i64 [ %prol.iter804.next, %vec.epilog.scalar.ph452.prol ], [ 0, %vec.epilog.scalar.ph452.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.2.prol
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !48
  %gep.us.i.2.prol = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv57.i.2.prol ; 2 uses
  %i.hx = load float, ptr %gep.us.i.2.prol, align 4, !tbaa !48
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hw, float %i.hx)
  store float %i.hy, ptr %gep.us.i.2.prol, align 4, !tbaa !48
  %indvars.iv.next58.i.2.prol = add nuw nsw i64 %indvars.iv57.i.2.prol, 1 ; 2 uses
  %prol.iter804.next = add i64 %prol.iter804, 1   ; 2 uses
  %prol.iter804.cmp.not = icmp eq i64 %prol.iter804.next, %xtraiter802
  br i1 %prol.iter804.cmp.not, label %vec.epilog.scalar.ph452.prol.loopexit, label %vec.epilog.scalar.ph452.prol, !llvm.loop !27

vec.epilog.scalar.ph452.prol.loopexit:            ; preds = %vec.epilog.scalar.ph452.prol, %vec.epilog.scalar.ph452.preheader
  %indvars.iv57.i.2.unr = phi i64 [ %indvars.iv57.i.2.ph, %vec.epilog.scalar.ph452.preheader ], [ %indvars.iv.next58.i.2.prol, %vec.epilog.scalar.ph452.prol ]
  %i.hz = icmp ult i64 %i.hu, 7
  br i1 %i.hz, label %iter.check, label %vec.epilog.scalar.ph452

vec.epilog.scalar.ph452:                          ; preds = %vec.epilog.scalar.ph452.prol.loopexit, %vec.epilog.scalar.ph452
  %indvars.iv57.i.2 = phi i64 [ %indvars.iv.next58.i.2.7, %vec.epilog.scalar.ph452 ], [ %indvars.iv57.i.2.unr, %vec.epilog.scalar.ph452.prol.loopexit ] ; 10 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.2
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !48
  %gep.us.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv57.i.2 ; 2 uses
  %i.ic = load float, ptr %gep.us.i.2, align 4, !tbaa !48
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ib, float %i.ic)
  store float %i.id, ptr %gep.us.i.2, align 4, !tbaa !48
  %indvars.iv.next58.i.2 = add nuw nsw i64 %indvars.iv57.i.2, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2
  %i.if = load float, ptr %i.ie, align 4, !tbaa !48
  %gep.us.i.2.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2 ; 2 uses
  %i.ig = load float, ptr %gep.us.i.2.1, align 4, !tbaa !48
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.if, float %i.ig)
  store float %i.ih, ptr %gep.us.i.2.1, align 4, !tbaa !48
  %indvars.iv.next58.i.2.1 = add nuw nsw i64 %indvars.iv57.i.2, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2.1
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !48
  %gep.us.i.2.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2.1 ; 2 uses
  %i.ik = load float, ptr %gep.us.i.2.2, align 4, !tbaa !48
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ij, float %i.ik)
  store float %i.il, ptr %gep.us.i.2.2, align 4, !tbaa !48
  %indvars.iv.next58.i.2.2 = add nuw nsw i64 %indvars.iv57.i.2, 3 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2.2
  %i.in = load float, ptr %i.im, align 4, !tbaa !48
  %gep.us.i.2.3 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2.2 ; 2 uses
  %i.io = load float, ptr %gep.us.i.2.3, align 4, !tbaa !48
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.in, float %i.io)
  store float %i.ip, ptr %gep.us.i.2.3, align 4, !tbaa !48
  %indvars.iv.next58.i.2.3 = add nuw nsw i64 %indvars.iv57.i.2, 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2.3
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !48
  %gep.us.i.2.4 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2.3 ; 2 uses
  %i.is = load float, ptr %gep.us.i.2.4, align 4, !tbaa !48
  %i.it = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.ir, float %i.is)
  store float %i.it, ptr %gep.us.i.2.4, align 4, !tbaa !48
  %indvars.iv.next58.i.2.4 = add nuw nsw i64 %indvars.iv57.i.2, 5 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2.4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !48
  %gep.us.i.2.5 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2.4 ; 2 uses
  %i.iw = load float, ptr %gep.us.i.2.5, align 4, !tbaa !48
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.iv, float %i.iw)
  store float %i.ix, ptr %gep.us.i.2.5, align 4, !tbaa !48
  %indvars.iv.next58.i.2.5 = add nuw nsw i64 %indvars.iv57.i.2, 6 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2.5
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !48
  %gep.us.i.2.6 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2.5 ; 2 uses
  %i.ja = load float, ptr %gep.us.i.2.6, align 4, !tbaa !48
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.iz, float %i.ja)
  store float %i.jb, ptr %gep.us.i.2.6, align 4, !tbaa !48
  %indvars.iv.next58.i.2.6 = add nuw nsw i64 %indvars.iv57.i.2, 7 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2.6
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !48
  %gep.us.i.2.7 = getelementptr [4 x i8], ptr %invariant.gep.us.i.2, i64 %indvars.iv.next58.i.2.6 ; 2 uses
  %i.je = load float, ptr %gep.us.i.2.7, align 4, !tbaa !48
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.jd, float %i.je)
  store float %i.jf, ptr %gep.us.i.2.7, align 4, !tbaa !48
  %indvars.iv.next58.i.2.7 = add nuw nsw i64 %indvars.iv57.i.2, 8 ; 2 uses
  %exitcond60.not.i.2.7 = icmp eq i64 %indvars.iv.next58.i.2.7, %indvars.iv65.i298
  br i1 %exitcond60.not.i.2.7, label %iter.check, label %vec.epilog.scalar.ph452, !llvm.loop !28

iter.check:                                       ; preds = %vec.epilog.scalar.ph452.prol.loopexit, %vec.epilog.scalar.ph452, %vec.epilog.middle.block464, %middle.block448
  %i.jg = getelementptr inbounds nuw i8, ptr %.04452.i300, i64 12
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.l ; 3 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !48
  %i.jj = fmul float %i.cb, %i.ji                 ; 3 uses
  store float %i.jj, ptr %i.jg, align 4, !tbaa !48
  store float %i.jj, ptr %i.jh, align 4, !tbaa !48
  %i.jk = fneg float %i.jj                        ; 11 uses
  %min.iters.check = icmp ult i64 %indvars.iv65.i298, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %24 = mul nsw i64 %indvar, %11
  %25 = getelementptr i8, ptr %i.bm, i64 %24
  %bound0 = icmp ult ptr %invariant.gep.us.i.3, %25
  %bound1 = icmp ult ptr %.04353.i299, %i.jh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check409 = icmp ult i64 %indvars.iv65.i298, 32
  br i1 %min.iters.check409, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jl = and i64 %indvars.iv65.i298, 28
  %n.vec = and i64 %indvars.iv65.i298, -32        ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.jk, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  %wide.load = load <8 x float>, ptr %i.jm, align 4, !tbaa !48, !alias.scope !60
  %wide.load410 = load <8 x float>, ptr %i.jn, align 4, !tbaa !48, !alias.scope !60
  %wide.load411 = load <8 x float>, ptr %i.jo, align 4, !tbaa !48, !alias.scope !60
  %wide.load412 = load <8 x float>, ptr %i.jp, align 4, !tbaa !48, !alias.scope !60
  %i.jq = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %index ; 5 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 32     ; 2 uses
  %i.js = getelementptr i8, ptr %i.jq, i64 64     ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jq, i64 96     ; 2 uses
  %wide.load413 = load <8 x float>, ptr %i.jq, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %wide.load414 = load <8 x float>, ptr %i.jr, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %wide.load415 = load <8 x float>, ptr %i.js, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %wide.load416 = load <8 x float>, ptr %i.jt, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %i.ju = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load, <8 x float> %wide.load413)
  %i.jv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load410, <8 x float> %wide.load414)
  %i.jw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load411, <8 x float> %wide.load415)
  %i.jx = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load412, <8 x float> %wide.load416)
  store <8 x float> %i.ju, ptr %i.jq, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  store <8 x float> %i.jv, ptr %i.jr, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  store <8 x float> %i.jw, ptr %i.js, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  store <8 x float> %i.jx, ptr %i.jt, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jy = icmp eq i64 %index.next, %n.vec
  br i1 %i.jy, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv65.i298, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.i.3, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec417 = and i64 %indvars.iv65.i298, -4      ; 3 uses
  %broadcast.splatinsert418 = insertelement <4 x float> poison, float %i.jk, i64 0
  %broadcast.splat419 = shufflevector <4 x float> %broadcast.splatinsert418, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index420 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next423, %vec.epilog.vector.body ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index420
  %wide.load421 = load <4 x float>, ptr %i.jz, align 4, !tbaa !48, !alias.scope !60
  %i.ka = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %index420 ; 2 uses
  %wide.load422 = load <4 x float>, ptr %i.ka, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %i.kb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat419, <4 x float> %wide.load421, <4 x float> %wide.load422)
  store <4 x float> %i.kb, ptr %i.ka, align 4, !tbaa !48, !alias.scope !61, !noalias !60
  %index.next423 = add nuw i64 %index420, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next423, %n.vec417
  br i1 %i.kc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n424 = icmp eq i64 %indvars.iv65.i298, %n.vec417
  br i1 %cmp.n424, label %._crit_edge.us.i.3, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.3.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec417, %vec.epilog.middle.block ] ; 4 uses
  %i.kd = sub i64 %indvars.iv65.i298, %indvars.iv57.i.3.ph
  %i.ke = sub i64 %i.cc, %indvars.iv57.i.3.ph
  %xtraiter805 = and i64 %i.kd, 7                 ; 2 uses
  %lcmp.mod806.not = icmp eq i64 %xtraiter805, 0
  br i1 %lcmp.mod806.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv57.i.3.prol = phi i64 [ %indvars.iv.next58.i.3.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv57.i.3.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter807 = phi i64 [ %prol.iter807.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.3.prol
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !48
  %gep.us.i.3.prol = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv57.i.3.prol ; 2 uses
  %i.kh = load float, ptr %gep.us.i.3.prol, align 4, !tbaa !48
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.kg, float %i.kh)
  store float %i.ki, ptr %gep.us.i.3.prol, align 4, !tbaa !48
  %indvars.iv.next58.i.3.prol = add nuw nsw i64 %indvars.iv57.i.3.prol, 1 ; 2 uses
  %prol.iter807.next = add i64 %prol.iter807, 1   ; 2 uses
  %prol.iter807.cmp.not = icmp eq i64 %prol.iter807.next, %xtraiter805
  br i1 %prol.iter807.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !34

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv57.i.3.unr = phi i64 [ %indvars.iv57.i.3.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next58.i.3.prol, %vec.epilog.scalar.ph.prol ]
  %i.kj = icmp ult i64 %i.ke, 7
  br i1 %i.kj, label %._crit_edge.us.i.3, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv57.i.3 = phi i64 [ %indvars.iv.next58.i.3.7, %vec.epilog.scalar.ph ], [ %indvars.iv57.i.3.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.3
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !48
  %gep.us.i.3 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv57.i.3 ; 2 uses
  %i.km = load float, ptr %gep.us.i.3, align 4, !tbaa !48
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.kl, float %i.km)
  store float %i.kn, ptr %gep.us.i.3, align 4, !tbaa !48
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i.3, 1 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !48
  %gep.us.i.3.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3 ; 2 uses
  %i.kq = load float, ptr %gep.us.i.3.1, align 4, !tbaa !48
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.kp, float %i.kq)
  store float %i.kr, ptr %gep.us.i.3.1, align 4, !tbaa !48
  %indvars.iv.next58.i.3.1 = add nuw nsw i64 %indvars.iv57.i.3, 2 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3.1
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !48
  %gep.us.i.3.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3.1 ; 2 uses
  %i.ku = load float, ptr %gep.us.i.3.2, align 4, !tbaa !48
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.kt, float %i.ku)
  store float %i.kv, ptr %gep.us.i.3.2, align 4, !tbaa !48
  %indvars.iv.next58.i.3.2 = add nuw nsw i64 %indvars.iv57.i.3, 3 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3.2
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !48
  %gep.us.i.3.3 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3.2 ; 2 uses
  %i.ky = load float, ptr %gep.us.i.3.3, align 4, !tbaa !48
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.kx, float %i.ky)
  store float %i.kz, ptr %gep.us.i.3.3, align 4, !tbaa !48
  %indvars.iv.next58.i.3.3 = add nuw nsw i64 %indvars.iv57.i.3, 4 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3.3
  %i.lb = load float, ptr %i.la, align 4, !tbaa !48
  %gep.us.i.3.4 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3.3 ; 2 uses
  %i.lc = load float, ptr %gep.us.i.3.4, align 4, !tbaa !48
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.lb, float %i.lc)
  store float %i.ld, ptr %gep.us.i.3.4, align 4, !tbaa !48
  %indvars.iv.next58.i.3.4 = add nuw nsw i64 %indvars.iv57.i.3, 5 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3.4
  %i.lf = load float, ptr %i.le, align 4, !tbaa !48
  %gep.us.i.3.5 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3.4 ; 2 uses
  %i.lg = load float, ptr %gep.us.i.3.5, align 4, !tbaa !48
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.lf, float %i.lg)
  store float %i.lh, ptr %gep.us.i.3.5, align 4, !tbaa !48
  %indvars.iv.next58.i.3.5 = add nuw nsw i64 %indvars.iv57.i.3, 6 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3.5
  %i.lj = load float, ptr %i.li, align 4, !tbaa !48
  %gep.us.i.3.6 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3.5 ; 2 uses
  %i.lk = load float, ptr %gep.us.i.3.6, align 4, !tbaa !48
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.lj, float %i.lk)
  store float %i.ll, ptr %gep.us.i.3.6, align 4, !tbaa !48
  %indvars.iv.next58.i.3.6 = add nuw nsw i64 %indvars.iv57.i.3, 7 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3.6
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !48
  %gep.us.i.3.7 = getelementptr [4 x i8], ptr %invariant.gep.us.i.3, i64 %indvars.iv.next58.i.3.6 ; 2 uses
  %i.lo = load float, ptr %gep.us.i.3.7, align 4, !tbaa !48
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.ln, float %i.lo)
  store float %i.lp, ptr %gep.us.i.3.7, align 4, !tbaa !48
  %indvars.iv.next58.i.3.7 = add nuw nsw i64 %indvars.iv57.i.3, 8 ; 2 uses
  %exitcond60.not.i.3.7 = icmp eq i64 %indvars.iv.next58.i.3.7, %indvars.iv65.i298
  br i1 %exitcond60.not.i.3.7, label %._crit_edge.us.i.3, label %vec.epilog.scalar.ph, !llvm.loop !35

._crit_edge.us.i.3:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lq = getelementptr inbounds [4 x i8], ptr %.04353.i299, i64 %i.s ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %.04452.i300, i64 -16 ; 2 uses
  %indvars.iv.next66.i = add nsw i64 %indvars.iv65.i298, -1 ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv.next66.i
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !48 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next66.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %.split.i.preheader, label %iter.check533

solve.exit:                                       ; preds = %.split.i.preheader, %.preheader286
  %.1 = phi i64 [ %.0304, %.preheader286 ], [ %i.ae, %.split.i.preheader ] ; 2 uses
  %i.lu = shl nuw nsw i64 %.0169303, 1
  %i.lv = icmp samesign ult i64 %.0169303, 8
  br i1 %i.lv, label %.preheader286, label %.loopexit287, !llvm.loop !36

.loopexit287:                                     ; preds = %solve.exit, %bb.b
  %.2 = phi i64 [ %i.c, %bb.b ], [ %.1, %solve.exit ]
  br i1 %i.f, label %bb.e, label %.loopexit285

bb.e:                                             ; preds = %.loopexit287
  %i.lw = getelementptr inbounds [4 x i8], ptr %.0176308, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %.split.i223.preheader, %bb.e
  %.1170 = phi i64 [ %i.e, %bb.e ], [ %i.na, %.split.i223.preheader ] ; 2 uses
  %.0165 = phi ptr [ %i.j, %bb.e ], [ %i.my, %.split.i223.preheader ] ; 3 uses
  %.0163 = phi ptr [ %i.lw, %bb.e ], [ %i.mz, %.split.i223.preheader ] ; 16 uses
  %.3 = phi i64 [ %.2, %bb.e ], [ %i.mc, %.split.i223.preheader ] ; 4 uses
  %i.lx = sub nsw i64 %2, %.3                     ; 2 uses
  %i.ly = icmp sgt i64 %i.lx, 0
  br i1 %i.ly, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.idx194 = shl nsw i64 %.3, 6
  %i.lz = getelementptr inbounds i8, ptr %.0165, i64 %.idx194
end_hunk_0
