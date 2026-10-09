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
  %i.o = shl i64 %2, 2
  %i.p = shl i64 %2, 2
  %i.q = shl i64 %2, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit285
  %.0167310 = phi i64 [ %i.a, %.lr.ph ], [ %i.ty, %.loopexit285 ] ; 2 uses
  %.0173309 = phi ptr [ %5, %.lr.ph ], [ %i.tw, %.loopexit285 ] ; 5 uses
  %.0176308 = phi ptr [ %6, %.lr.ph ], [ %i.tx, %.loopexit285 ] ; 3 uses
  br i1 %.not193, label %.loopexit287, label %.preheader286

.preheader286:                                    ; preds = %bb.b, %solve.exit
  %.0304 = phi i64 [ %.1, %solve.exit ], [ %i.c, %bb.b ] ; 8 uses
  %.0169303 = phi i64 [ %i.lw, %solve.exit ], [ 1, %bb.b ] ; 18 uses
  %i.r = and i64 %.0169303, %0
  %.not201 = icmp eq i64 %i.r, 0
  br i1 %.not201, label %solve.exit, label %bb.c

bb.c:                                             ; preds = %.preheader286
  %i.s = sub nsw i64 0, %.0169303                 ; 2 uses
  %i.t = and i64 %0, %i.s
  %i.u = sub i64 %i.t, %.0169303                  ; 5 uses
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
  %i.ao = shl i64 %.0304, 2
  %i.ap = mul i64 %i.ao, %.0169303
  %i.aq = mul i64 %i.o, %i.u
  %i.ar = shl nuw nsw i64 %.0169303, 2
  %i.as = sub nuw nsw i64 -4, %i.ar
  %i.at = shl i64 %.0304, 2
  %i.au = mul i64 %i.at, %.0169303
  %i.av = mul i64 %i.p, %i.u
  %i.aw = shl nuw nsw i64 %.0169303, 2
  %i.ax = sub nuw nsw i64 -4, %i.aw
  %i.ay = shl i64 %.0304, 2
  %i.az = mul i64 %i.ay, %.0169303
  %9 = add i64 %i.az, -4
  %i.ba = mul i64 %i.q, %i.u
  %10 = add i64 %9, %i.ba                         ; 2 uses
  %i.bb = shl nuw nsw i64 %.0169303, 2
  %i.bc = sub nuw nsw i64 -4, %i.bb               ; 2 uses
  %i.bd = add nsw i64 %.0169303, -2
  %i.be = getelementptr i8, ptr %4, i64 %10
  %i.bf = getelementptr i8, ptr %4, i64 %i.au
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.av
  %i.bi = getelementptr i8, ptr %4, i64 %i.ap
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.aq
  %i.bl = getelementptr i8, ptr %4, i64 %10
  br label %iter.check535

.split.i.preheader:                               ; preds = %._crit_edge.us.i.3, %.lr.ph.i
  %.pre-phi343 = phi i64 [ %.pre342, %.lr.ph.i ], [ %i.l, %._crit_edge.us.i.3 ]
  %.pre-phi = phi i64 [ %.pre, %.lr.ph.i ], [ %i.k, %._crit_edge.us.i.3 ]
  %.04452.i.lcssa = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.lt, %._crit_edge.us.i.3 ] ; 4 uses
  %.lcssa294 = phi float [ %i.an, %.lr.ph.i ], [ %i.lv, %._crit_edge.us.i.3 ] ; 4 uses
  %i.bm = load float, ptr %i.x, align 4, !tbaa !48
  %i.bn = fmul float %.lcssa294, %i.bm            ; 2 uses
  store float %i.bn, ptr %.04452.i.lcssa, align 4, !tbaa !48
  store float %i.bn, ptr %i.x, align 4, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 4
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %7 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !48
  %i.br = fmul float %.lcssa294, %i.bq            ; 2 uses
  store float %i.br, ptr %i.bo, align 4, !tbaa !48
  store float %i.br, ptr %i.bp, align 4, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 8
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.pre-phi ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !48
  %i.bv = fmul float %.lcssa294, %i.bu            ; 2 uses
  store float %i.bv, ptr %i.bs, align 4, !tbaa !48
  store float %i.bv, ptr %i.bt, align 4, !tbaa !48
  %i.bw = getelementptr inbounds nuw i8, ptr %.04452.i.lcssa, i64 12
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.pre-phi343 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !48
  %i.bz = fmul float %.lcssa294, %i.by            ; 2 uses
  store float %i.bz, ptr %i.bw, align 4, !tbaa !48
  store float %i.bz, ptr %i.bx, align 4, !tbaa !48
  br label %solve.exit

iter.check535:                                    ; preds = %.lr.ph.us.i.preheader.preheader, %._crit_edge.us.i.3
  %indvar = phi i64 [ 0, %.lr.ph.us.i.preheader.preheader ], [ %indvar.next, %._crit_edge.us.i.3 ] ; 6 uses
  %i.ca = phi float [ %i.an, %.lr.ph.us.i.preheader.preheader ], [ %i.lv, %._crit_edge.us.i.3 ] ; 4 uses
  %.04452.i300 = phi ptr [ %i.aj, %.lr.ph.us.i.preheader.preheader ], [ %i.lt, %._crit_edge.us.i.3 ] ; 5 uses
  %.04353.i299 = phi ptr [ %i.al, %.lr.ph.us.i.preheader.preheader ], [ %i.ls, %._crit_edge.us.i.3 ] ; 49 uses
  %indvars.iv65.i298 = phi i64 [ %i.af, %.lr.ph.us.i.preheader.preheader ], [ %indvars.iv.next66.i, %._crit_edge.us.i.3 ] ; 38 uses
  %i.cb = sub i64 %i.bd, %indvar                  ; 4 uses
  %i.cc = mul i64 %i.bc, %indvar
  %scevgep468 = getelementptr i8, ptr %i.be, i64 %i.cc
  %i.cd = mul i64 %i.ax, %indvar
  %scevgep426 = getelementptr i8, ptr %i.bh, i64 %i.cd
  %i.ce = mul i64 %i.as, %indvar
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.ce
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv65.i298 ; 6 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !48
  %i.ch = fmul float %i.ca, %i.cg                 ; 3 uses
  store float %i.ch, ptr %.04452.i300, align 4, !tbaa !48
  store float %i.ch, ptr %i.cf, align 4, !tbaa !48
  %i.ci = fneg float %i.ch                        ; 11 uses
  %min.iters.check514 = icmp ult i64 %indvars.iv65.i298, 4
  br i1 %min.iters.check514, label %vec.epilog.scalar.ph536.preheader, label %vector.memcheck509

vector.memcheck509:                               ; preds = %iter.check535
  %11 = mul i64 %i.bc, %indvar
  %scevgep510 = getelementptr i8, ptr %i.bl, i64 %11
  %bound0511 = icmp ult ptr %i.x, %scevgep510
  %bound1512 = icmp ult ptr %.04353.i299, %i.cf
  %found.conflict513 = and i1 %bound0511, %bound1512
  br i1 %found.conflict513, label %vec.epilog.scalar.ph536.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %vector.memcheck509
  %min.iters.check516 = icmp ult i64 %indvars.iv65.i298, 32
  br i1 %min.iters.check516, label %vec.epilog.ph539, label %vector.ph517

vector.ph517:                                     ; preds = %vector.main.loop.iter.check515
  %i.cj = and i64 %indvars.iv65.i298, 28
  %n.vec518 = and i64 %indvars.iv65.i298, -32     ; 4 uses
  %broadcast.splatinsert519 = insertelement <8 x float> poison, float %i.ci, i64 0
  %broadcast.splat520 = shufflevector <8 x float> %broadcast.splatinsert519, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body521

vector.body521:                                   ; preds = %vector.ph517, %vector.body521
  %index522 = phi i64 [ 0, %vector.ph517 ], [ %index.next531, %vector.body521 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index522 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %wide.load523.a = load <8 x float>, ptr %i.ck, align 4, !tbaa !48, !alias.scope !49
  %wide.load524.a = load <8 x float>, ptr %i.cl, align 4, !tbaa !48, !alias.scope !49
  %wide.load525.a = load <8 x float>, ptr %i.cm, align 4, !tbaa !48, !alias.scope !49
  %wide.load526.a = load <8 x float>, ptr %i.cn, align 4, !tbaa !48, !alias.scope !49
  %i.co = getelementptr [4 x i8], ptr %i.x, i64 %index522 ; 5 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 64     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 96     ; 2 uses
  %wide.load527.a = load <8 x float>, ptr %i.co, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %wide.load528.a = load <8 x float>, ptr %i.cp, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %wide.load529.a = load <8 x float>, ptr %i.cq, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %wide.load530 = load <8 x float>, ptr %i.cr, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %i.cs = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat520, <8 x float> %wide.load523.a, <8 x float> %wide.load527.a)
  %i.ct = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat520, <8 x float> %wide.load524.a, <8 x float> %wide.load528.a)
  %i.cu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat520, <8 x float> %wide.load525.a, <8 x float> %wide.load529.a)
  %i.cv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat520, <8 x float> %wide.load526.a, <8 x float> %wide.load530)
  store <8 x float> %i.cs, ptr %i.co, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  store <8 x float> %i.ct, ptr %i.cp, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  store <8 x float> %i.cu, ptr %i.cq, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  store <8 x float> %i.cv, ptr %i.cr, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %index.next531 = add nuw i64 %index522, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next531, %n.vec518
  br i1 %i.cw, label %middle.block532, label %vector.body521, !llvm.loop !11

middle.block532:                                  ; preds = %vector.body521
  %cmp.n533 = icmp eq i64 %indvars.iv65.i298, %n.vec518
  br i1 %cmp.n533, label %iter.check493, label %vec.epilog.iter.check537

vec.epilog.iter.check537:                         ; preds = %middle.block532
  %min.epilog.iters.check538 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check538, label %vec.epilog.scalar.ph536.preheader, label %vec.epilog.ph539, !prof !54

vec.epilog.ph539:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check537
  %vec.epilog.resume.val534 = phi i64 [ %n.vec518, %vec.epilog.iter.check537 ], [ 0, %vector.main.loop.iter.check515 ]
  %n.vec540 = and i64 %indvars.iv65.i298, -4      ; 3 uses
  %broadcast.splatinsert541 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat542 = shufflevector <4 x float> %broadcast.splatinsert541, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body543

vec.epilog.vector.body543:                        ; preds = %vec.epilog.vector.body543, %vec.epilog.ph539
  %index544 = phi i64 [ %vec.epilog.resume.val534, %vec.epilog.ph539 ], [ %index.next547, %vec.epilog.vector.body543 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index544
  %wide.load545.a = load <4 x float>, ptr %i.cx, align 4, !tbaa !48, !alias.scope !49
  %i.cy = getelementptr [4 x i8], ptr %i.x, i64 %index544 ; 2 uses
  %wide.load546 = load <4 x float>, ptr %i.cy, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat542, <4 x float> %wide.load545.a, <4 x float> %wide.load546)
  store <4 x float> %i.cz, ptr %i.cy, align 4, !tbaa !48, !alias.scope !50, !noalias !49
  %index.next547 = add nuw i64 %index544, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next547, %n.vec540
  br i1 %i.da, label %vec.epilog.middle.block548, label %vec.epilog.vector.body543, !llvm.loop !12

vec.epilog.middle.block548:                       ; preds = %vec.epilog.vector.body543
  %cmp.n549 = icmp eq i64 %indvars.iv65.i298, %n.vec540
  br i1 %cmp.n549, label %iter.check493, label %vec.epilog.scalar.ph536.preheader

vec.epilog.scalar.ph536.preheader:                ; preds = %iter.check535, %vector.memcheck509, %vec.epilog.iter.check537, %vec.epilog.middle.block548
  %indvars.iv57.i.ph = phi i64 [ 0, %iter.check535 ], [ 0, %vector.memcheck509 ], [ %n.vec518, %vec.epilog.iter.check537 ], [ %n.vec540, %vec.epilog.middle.block548 ] ; 4 uses
  %i.db = sub i64 %indvars.iv65.i298, %indvars.iv57.i.ph
  %i.dc = sub i64 %i.cb, %indvars.iv57.i.ph
  %xtraiter = and i64 %i.db, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph536.prol.loopexit, label %vec.epilog.scalar.ph536.prol

vec.epilog.scalar.ph536.prol:                     ; preds = %vec.epilog.scalar.ph536.preheader, %vec.epilog.scalar.ph536.prol
  %indvars.iv57.i.prol = phi i64 [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph536.prol ], [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph536.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph536.prol ], [ 0, %vec.epilog.scalar.ph536.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i.prol
  %i.de = load float, ptr %i.dd, align 4, !tbaa !48
  %gep.us.i.prol = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv57.i.prol ; 2 uses
  %i.df = load float, ptr %gep.us.i.prol, align 4, !tbaa !48
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.de, float %i.df)
  store float %i.dg, ptr %gep.us.i.prol, align 4, !tbaa !48
  %indvars.iv.next58.i.prol = add nuw nsw i64 %indvars.iv57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph536.prol.loopexit, label %vec.epilog.scalar.ph536.prol, !llvm.loop !13

vec.epilog.scalar.ph536.prol.loopexit:            ; preds = %vec.epilog.scalar.ph536.prol, %vec.epilog.scalar.ph536.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %vec.epilog.scalar.ph536.preheader ], [ %indvars.iv.next58.i.prol, %vec.epilog.scalar.ph536.prol ]
  %i.dh = icmp ult i64 %i.dc, 7
  br i1 %i.dh, label %iter.check493, label %vec.epilog.scalar.ph536

vec.epilog.scalar.ph536:                          ; preds = %vec.epilog.scalar.ph536.prol.loopexit, %vec.epilog.scalar.ph536
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.7, %vec.epilog.scalar.ph536 ], [ %indvars.iv57.i.unr, %vec.epilog.scalar.ph536.prol.loopexit ] ; 10 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv57.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !48
  %gep.us.i = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv57.i ; 2 uses
  %i.dk = load float, ptr %gep.us.i, align 4, !tbaa !48
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.dj, float %i.dk)
  store float %i.dl, ptr %gep.us.i, align 4, !tbaa !48
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !48
  %gep.us.i.1789 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i ; 2 uses
  %i.do = load float, ptr %gep.us.i.1789, align 4, !tbaa !48
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.dn, float %i.do)
  store float %i.dp, ptr %gep.us.i.1789, align 4, !tbaa !48
  %indvars.iv.next58.i.1790 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.1790
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !48
  %gep.us.i.2793 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.1790 ; 2 uses
  %i.ds = load float, ptr %gep.us.i.2793, align 4, !tbaa !48
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.dr, float %i.ds)
  store float %i.dt, ptr %gep.us.i.2793, align 4, !tbaa !48
  %indvars.iv.next58.i.2794 = add nuw nsw i64 %indvars.iv57.i, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.2794
  %i.dv = load float, ptr %i.du, align 4, !tbaa !48
  %gep.us.i.3797 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.2794 ; 2 uses
  %i.dw = load float, ptr %gep.us.i.3797, align 4, !tbaa !48
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.dv, float %i.dw)
  store float %i.dx, ptr %gep.us.i.3797, align 4, !tbaa !48
  %indvars.iv.next58.i.3798 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.3798
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !48
  %gep.us.i.4 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.3798 ; 2 uses
  %i.ea = load float, ptr %gep.us.i.4, align 4, !tbaa !48
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.dz, float %i.ea)
  store float %i.eb, ptr %gep.us.i.4, align 4, !tbaa !48
  %indvars.iv.next58.i.4 = add nuw nsw i64 %indvars.iv57.i, 5 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !48
  %gep.us.i.5 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.4 ; 2 uses
  %i.ee = load float, ptr %gep.us.i.5, align 4, !tbaa !48
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ed, float %i.ee)
  store float %i.ef, ptr %gep.us.i.5, align 4, !tbaa !48
  %indvars.iv.next58.i.5 = add nuw nsw i64 %indvars.iv57.i, 6 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.5
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !48
  %gep.us.i.6 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.5 ; 2 uses
  %i.ei = load float, ptr %gep.us.i.6, align 4, !tbaa !48
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.eh, float %i.ei)
  store float %i.ej, ptr %gep.us.i.6, align 4, !tbaa !48
  %indvars.iv.next58.i.6 = add nuw nsw i64 %indvars.iv57.i, 7 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %indvars.iv.next58.i.6
  %i.el = load float, ptr %i.ek, align 4, !tbaa !48
  %gep.us.i.7 = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv.next58.i.6 ; 2 uses
  %i.em = load float, ptr %gep.us.i.7, align 4, !tbaa !48
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.el, float %i.em)
  store float %i.en, ptr %gep.us.i.7, align 4, !tbaa !48
  %indvars.iv.next58.i.7 = add nuw nsw i64 %indvars.iv57.i, 8 ; 2 uses
  %exitcond60.not.i.7 = icmp eq i64 %indvars.iv.next58.i.7, %indvars.iv65.i298
  br i1 %exitcond60.not.i.7, label %iter.check493, label %vec.epilog.scalar.ph536, !llvm.loop !14

iter.check493:                                    ; preds = %vec.epilog.scalar.ph536.prol.loopexit, %vec.epilog.scalar.ph536, %vec.epilog.middle.block548, %middle.block532
  %i.eo = getelementptr inbounds nuw i8, ptr %.04452.i300, i64 4
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %7 ; 3 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !48
  %i.er = fmul float %i.ca, %i.eq                 ; 3 uses
  store float %i.er, ptr %i.eo, align 4, !tbaa !48
  store float %i.er, ptr %i.ep, align 4, !tbaa !48
  %i.es = fneg float %i.er                        ; 11 uses
  %min.iters.check472 = icmp ult i64 %indvars.iv65.i298, 4
  br i1 %min.iters.check472, label %vec.epilog.scalar.ph494.preheader, label %vector.memcheck467

vector.memcheck467:                               ; preds = %iter.check493
  %bound0469 = icmp ult ptr %invariant.gep.us.i.1, %scevgep468
  %bound1470 = icmp ult ptr %.04353.i299, %i.ep
  %found.conflict471 = and i1 %bound0469, %bound1470
  br i1 %found.conflict471, label %vec.epilog.scalar.ph494.preheader, label %vector.main.loop.iter.check473

vector.main.loop.iter.check473:                   ; preds = %vector.memcheck467
  %min.iters.check474 = icmp ult i64 %indvars.iv65.i298, 32
  br i1 %min.iters.check474, label %vec.epilog.ph497, label %vector.ph475

vector.ph475:                                     ; preds = %vector.main.loop.iter.check473
  %i.et = and i64 %indvars.iv65.i298, 28
  %n.vec476 = and i64 %indvars.iv65.i298, -32     ; 4 uses
  %broadcast.splatinsert477 = insertelement <8 x float> poison, float %i.es, i64 0
  %broadcast.splat478 = shufflevector <8 x float> %broadcast.splatinsert477, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body479

vector.body479:                                   ; preds = %vector.ph475, %vector.body479
  %index480 = phi i64 [ 0, %vector.ph475 ], [ %index.next489, %vector.body479 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.04353.i299, i64 %index480 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 96
  %wide.load481 = load <8 x float>, ptr %i.eu, align 4, !tbaa !48, !alias.scope !56
  %wide.load482 = load <8 x float>, ptr %i.ev, align 4, !tbaa !48, !alias.scope !56
end_hunk_0
