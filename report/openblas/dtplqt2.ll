Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtplqt2?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DTPLQT2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b4 = internal global double 1.000000e+00, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@c_b10 = internal global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1

; Function Attrs: nounwind uwtable
define void @dtplqt2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %3 to i64
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca double, align 8                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.i = load i32, ptr %4, align 4, !tbaa !34     ; 4 uses
  %narrow = xor i32 %i.i, -1
  %i.j = sext i32 %narrow to i64                  ; 3 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j ; 15 uses
  %i.l = load i32, ptr %6, align 4, !tbaa !34     ; 11 uses
  %narrow257 = xor i32 %i.l, -1
  %i.m = sext i32 %narrow257 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %5, i64 %i.m ; 7 uses
  %i.o = load i32, ptr %8, align 4, !tbaa !34     ; 13 uses
  %narrow258 = xor i32 %i.o, -1
  %i.p = sext i32 %narrow258 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %7, i64 %i.p ; 13 uses
  store i32 0, ptr %9, align 4, !tbaa !34
  %i.r = load i32, ptr %0, align 4, !tbaa !34     ; 5 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %1, align 4, !tbaa !34     ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %2, align 4, !tbaa !34     ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %. = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.t)
  %i.x = icmp samesign ugt i32 %i.v, %.
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %4, align 4, !tbaa !34
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.r, i32 1) ; 3 uses
  %i.z = icmp slt i32 %i.y, %spec.select
  br i1 %i.z, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %6, align 4, !tbaa !34
  %i.ab = icmp slt i32 %i.aa, %spec.select
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %8, align 4, !tbaa !34
  %i.ad = icmp slt i32 %i.ac, %spec.select
  br i1 %i.ad, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -5, %bb.d ], [ -7, %bb.e ], [ -3, %bb.c ], [ -9, %bb.f ]
  %.neg = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 5, %bb.d ], [ 7, %bb.e ], [ 3, %bb.c ], [ 9, %bb.f ]
  store i32 %.sink, ptr %9, align 4, !tbaa !34
  store i32 %.neg, ptr %i.d, align 4, !tbaa !34
  %i.ae = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.d, i32 noundef 7) #4 ; 0 uses
  br label %.loopexit266

bb.g:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.t, 0
  %i.ag = icmp eq i32 %i.r, 0
  %or.cond358 = or i1 %i.af, %i.ag
  br i1 %or.cond358, label %.loopexit266, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.g
  %i.ah = add i32 %i.l, 1
  %i.ai = sext i32 %i.o to i64                    ; 11 uses
  %i.aj = sext i32 %i.l to i64
  %invariant.gep344 = getelementptr [8 x i8], ptr %i.n, i64 %i.aj
  %i.ak = zext nneg i32 %i.r to i64
  %i.al = add i32 %i.i, 2                         ; 4 uses
  %i.am = add i32 %i.i, 1                         ; 4 uses
  %ident.check383 = icmp ne i32 %i.o, 1
  %ident.check = icmp ne i32 %i.o, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph278, %bb.j
  %indvar = phi i32 [ 0, %.lr.ph278 ], [ %indvar.next, %bb.j ] ; 5 uses
  %indvars.iv307 = phi i64 [ 1, %.lr.ph278 ], [ %indvars.iv.next308, %bb.j ] ; 7 uses
  %indvars.iv300 = phi i32 [ 0, %.lr.ph278 ], [ %indvars.iv.next301, %bb.j ] ; 3 uses
  %i.an = mul i32 %i.am, %indvar
  %i.ao = add i32 %i.al, %i.an                    ; 2 uses
  %i.ap = mul i32 %i.am, %indvar
  %i.aq = add i32 %i.al, %i.ap                    ; 2 uses
  %indvars309 = trunc nuw i64 %indvars.iv307 to i32 ; 7 uses
  %i.ar = load i32, ptr %1, align 4, !tbaa !34
  %i.as = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %i.at = sub nsw i32 %i.ar, %i.as
  %.0228. = call i32 @llvm.smin.i32(i32 %i.as, i32 %indvars309)
  %i.au = add nsw i32 %i.at, %.0228.              ; 2 uses
  store i32 %i.au, ptr %i.g, align 4, !tbaa !34
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.e, align 4, !tbaa !34
  %i.aw = mul nsw i32 %i.i, %indvars309           ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv307
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ax
  %gep345 = getelementptr [8 x i8], ptr %invariant.gep344, i64 %indvars.iv307 ; 3 uses
  %i.ba = mul nsw i64 %indvars.iv307, %i.ai
  %i.bb = getelementptr [8 x i8], ptr %i.q, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  call void @dlarfg_(ptr noundef nonnull %i.e, ptr noundef %i.az, ptr noundef %gep345, ptr noundef nonnull %6, ptr noundef %i.bc) #4
  %i.bd = load i32, ptr %0, align 4, !tbaa !34    ; 4 uses
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = icmp slt i64 %indvars.iv307, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = sub nuw nsw i32 %i.bd, %indvars309      ; 2 uses
  %.not260267 = icmp slt i32 %i.bg, 1
  br i1 %.not260267, label %._crit_edge, label %iter.check400

iter.check400:                                    ; preds = %bb.i
  %i.bh = add i32 %i.aw, %indvars309              ; 7 uses
  %i.bi = add i32 %i.bd, %indvars.iv300
  %wide.trip.count = zext i32 %i.bi to i64        ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.q, i64 %i.be ; 7 uses
  %i.bj = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check385 = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check385, label %vec.epilog.scalar.ph402.preheader, label %vector.scevcheck382

vector.scevcheck382:                              ; preds = %iter.check400
  %i.bk = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add i32 %i.ao, %i.bl
  %i.bn = icmp slt i32 %i.bm, %i.ao
  %i.bo = icmp ugt i64 %i.bk, 4294967295
  %i.bp = or i1 %i.bn, %i.bo
  %i.bq = or i1 %ident.check383, %i.bp
  br i1 %i.bq, label %vec.epilog.scalar.ph402.preheader, label %vector.memcheck386

vector.memcheck386:                               ; preds = %vector.scevcheck382
  %i.br = shl nsw i64 %i.be, 3
  %i.bs = mul i32 %indvar, %i.am
  %i.bt = add i32 %i.al, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %10 = add nsw i64 %i.bu, %i.j
  %i.bv = shl nsw i64 %10, 3
  %11 = add i64 %i.bv, %i.c
  %i.bw = add i64 %i.br, %i.b
  %i.bx = sub i64 %i.bw, %11
  %i.by = add i64 %i.bx, -9
  %diff.check = icmp ult i64 %i.by, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck386
  %min.iters.check388 = icmp ult i64 %i.bj, 16
  br i1 %min.iters.check388, label %vec.epilog.ph404, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.bz = and i64 %i.bj, 12
  %n.vec390 = and i64 %i.bj, -16                  ; 4 uses
  %i.ca = or disjoint i64 %n.vec390, 1
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph389, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next397, %vector.body391 ] ; 2 uses
  %i.cb = or disjoint i64 %index392, 1            ; 2 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = add i32 %i.bh, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ce ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %wide.load393 = load <4 x double>, ptr %i.cf, align 8, !tbaa !36
  %wide.load394 = load <4 x double>, ptr %i.cg, align 8, !tbaa !36
  %wide.load395 = load <4 x double>, ptr %i.ch, align 8, !tbaa !36
  %wide.load396 = load <4 x double>, ptr %i.ci, align 8, !tbaa !36
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cb ; 4 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %i.cl = getelementptr i8, ptr %i.cj, i64 64
  %i.cm = getelementptr i8, ptr %i.cj, i64 96
  store <4 x double> %wide.load393, ptr %i.cj, align 8, !tbaa !36
  store <4 x double> %wide.load394, ptr %i.ck, align 8, !tbaa !36
  store <4 x double> %wide.load395, ptr %i.cl, align 8, !tbaa !36
  store <4 x double> %wide.load396, ptr %i.cm, align 8, !tbaa !36
  %index.next397 = add nuw i64 %index392, 16      ; 2 uses
  %i.cn = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.cn, label %middle.block398, label %vector.body391, !llvm.loop !8

middle.block398:                                  ; preds = %vector.body391
  %cmp.n399 = icmp eq i64 %i.bj, %n.vec390
  br i1 %cmp.n399, label %._crit_edge, label %vec.epilog.iter.check401

vec.epilog.iter.check401:                         ; preds = %middle.block398
  %min.epilog.iters.check403 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check403, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph404, !prof !40

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check401
  %vec.epilog.resume.val405 = phi i64 [ %n.vec390, %vec.epilog.iter.check401 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec406 = and i64 %i.bj, -4                   ; 3 uses
  %i.co = or disjoint i64 %n.vec406, 1
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph404
  %index408 = phi i64 [ %vec.epilog.resume.val405, %vec.epilog.ph404 ], [ %index.next410, %vec.epilog.vector.body407 ] ; 2 uses
  %i.cp = or disjoint i64 %index408, 1            ; 2 uses
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = add i32 %i.bh, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cs
  %wide.load409 = load <4 x double>, ptr %i.ct, align 8, !tbaa !36
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cp
  store <4 x double> %wide.load409, ptr %i.cu, align 8, !tbaa !36
  %index.next410 = add nuw i64 %index408, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next410, %n.vec406
  br i1 %i.cv, label %vec.epilog.middle.block411, label %vec.epilog.vector.body407, !llvm.loop !9

vec.epilog.middle.block411:                       ; preds = %vec.epilog.vector.body407
  %cmp.n412 = icmp eq i64 %i.bj, %n.vec406
  br i1 %cmp.n412, label %._crit_edge, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check400, %vector.scevcheck382, %vector.memcheck386, %vec.epilog.iter.check401, %vec.epilog.middle.block411
  %indvars.iv.ph = phi i64 [ 1, %iter.check400 ], [ 1, %vector.scevcheck382 ], [ 1, %vector.memcheck386 ], [ %i.ca, %vec.epilog.iter.check401 ], [ %i.co, %vec.epilog.middle.block411 ] ; 4 uses
  %i.cw = sub i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol

vec.epilog.scalar.ph402.prol:                     ; preds = %vec.epilog.scalar.ph402.preheader, %vec.epilog.scalar.ph402.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph402.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph402.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph402.prol ], [ 0, %vec.epilog.scalar.ph402.preheader ]
  %i.cx = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.cy = add i32 %i.bh, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !36
  %i.dc = mul nsw i64 %indvars.iv.prol, %i.ai
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dc
  store double %i.db, ptr %gep.prol, align 8, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph402.prol.loopexit, label %vec.epilog.scalar.ph402.prol, !llvm.loop !10

vec.epilog.scalar.ph402.prol.loopexit:            ; preds = %vec.epilog.scalar.ph402.prol, %vec.epilog.scalar.ph402.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph402.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph402.prol ]
  %i.dd = sub i64 %indvars.iv.ph, %wide.trip.count
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %._crit_edge, label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph402 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph402.prol.loopexit ] ; 6 uses
  %i.df = trunc nuw nsw i64 %indvars.iv to i32
  %i.dg = add i32 %i.bh, %i.df
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !36
  %i.dk = mul nsw i64 %indvars.iv, %i.ai
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dk
  store double %i.dj, ptr %gep, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dm = add i32 %i.bh, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !36
  %i.dq = mul nsw i64 %indvars.iv.next, %i.ai
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dq
  store double %i.dp, ptr %gep.1, align 8, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ds = add i32 %i.bh, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !36
  %i.dw = mul nsw i64 %indvars.iv.next.1, %i.ai
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dw
  store double %i.dv, ptr %gep.2, align 8, !tbaa !36
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.dy = add i32 %i.bh, %i.dx
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !36
  %i.ec = mul nsw i64 %indvars.iv.next.2, %i.ai
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ec
  store double %i.eb, ptr %gep.3, align 8, !tbaa !36
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph402, !llvm.loop !11

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph402.prol.loopexit, %vec.epilog.scalar.ph402, %middle.block398, %vec.epilog.middle.block411, %bb.i
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !34
  %i.ed = add i32 %i.ah, %indvars309
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ee ; 2 uses
  %i.eg = add nsw i32 %i.bd, %i.o
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.eh
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b4, ptr noundef %i.ef, ptr noundef nonnull %6, ptr noundef %gep345, ptr noundef nonnull %6, ptr noundef nonnull @c_b4, ptr noundef %i.ei, ptr noundef nonnull %8) #4
  %i.ej = load double, ptr %i.bc, align 8, !tbaa !36
  %i.ek = fneg double %i.ej                       ; 8 uses
  store double %i.ek, ptr %i.h, align 8, !tbaa !36
  %i.el = load i32, ptr %0, align 4, !tbaa !34    ; 4 uses
  %i.em = sub nsw i32 %i.el, %indvars309          ; 2 uses
  %.not261269 = icmp slt i32 %i.em, 1
  br i1 %.not261269, label %._crit_edge273, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.en = add i32 %i.aw, %indvars309              ; 7 uses
  %i.eo = sext i32 %i.el to i64                   ; 2 uses
  %i.ep = add i32 %i.el, %indvars.iv300
  %wide.trip.count305 = zext i32 %i.ep to i64     ; 6 uses
  %invariant.gep342 = getelementptr [8 x i8], ptr %i.q, i64 %i.eo ; 7 uses
  %i.eq = add nsw i64 %wide.trip.count305, -1     ; 7 uses
  %min.iters.check = icmp ult i64 %i.eq, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.er = add nsw i64 %wide.trip.count305, -2     ; 2 uses
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.aq, %i.es
  %i.eu = icmp slt i32 %i.et, %i.aq
  %i.ev = icmp ugt i64 %i.er, 4294967295
  %i.ew = or i1 %i.eu, %i.ev
  %i.ex = or i1 %ident.check, %i.ew
  br i1 %i.ex, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ey = shl nsw i64 %i.eo, 3                    ; 2 uses
  %i.ez = getelementptr i8, ptr %7, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = shl nuw nsw i64 %wide.trip.count305, 3  ; 2 uses
  %i.fc = getelementptr i8, ptr %7, i64 %i.ey
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.fb
  %i.fe = getelementptr i8, ptr %i.fd, i64 -16
  %i.ff = mul i32 %indvar, %i.am
  %i.fg = add i32 %i.al, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %12 = add nsw i64 %i.fh, %i.j
  %i.fi = shl nsw i64 %12, 3                      ; 2 uses
  %13 = getelementptr i8, ptr %3, i64 %i.fi
  %i.fj = getelementptr i8, ptr %3, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.fb
  %i.fl = getelementptr i8, ptr %i.fk, i64 -8
  %bound0 = icmp ult ptr %i.fa, %i.fl
  %bound1 = icmp ult ptr %13, %i.fe
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check366 = icmp ult i64 %i.eq, 16
  br i1 %min.iters.check366, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fm = and i64 %i.eq, 12
  %n.vec = and i64 %i.eq, -16                     ; 4 uses
  %i.fn = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ek, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = or disjoint i64 %index, 1               ; 2 uses
  %i.fp = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.fo ; 4 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 32
  %i.fr = getelementptr i8, ptr %i.fp, i64 64
  %i.fs = getelementptr i8, ptr %i.fp, i64 96
  %wide.load = load <4 x double>, ptr %i.fp, align 8, !tbaa !36, !alias.scope !42, !noalias !43
  %wide.load367 = load <4 x double>, ptr %i.fq, align 8, !tbaa !36, !alias.scope !42, !noalias !43
  %wide.load368 = load <4 x double>, ptr %i.fr, align 8, !tbaa !36, !alias.scope !42, !noalias !43
  %wide.load369 = load <4 x double>, ptr %i.fs, align 8, !tbaa !36, !alias.scope !42, !noalias !43
  %i.ft = trunc nuw nsw i64 %i.fo to i32
  %i.fu = add i32 %i.en, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.fv ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 64 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 96 ; 2 uses
  %wide.load370 = load <4 x double>, ptr %i.fw, align 8, !tbaa !36, !alias.scope !43
  %wide.load371 = load <4 x double>, ptr %i.fx, align 8, !tbaa !36, !alias.scope !43
  %wide.load372 = load <4 x double>, ptr %i.fy, align 8, !tbaa !36, !alias.scope !43
  %wide.load373 = load <4 x double>, ptr %i.fz, align 8, !tbaa !36, !alias.scope !43
  %i.ga = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load, <4 x double> %wide.load370)
  %i.gb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load367, <4 x double> %wide.load371)
  %i.gc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load368, <4 x double> %wide.load372)
  %i.gd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load369, <4 x double> %wide.load373)
  store <4 x double> %i.ga, ptr %i.fw, align 8, !tbaa !36, !alias.scope !43
  store <4 x double> %i.gb, ptr %i.fx, align 8, !tbaa !36, !alias.scope !43
  store <4 x double> %i.gc, ptr %i.fy, align 8, !tbaa !36, !alias.scope !43
  store <4 x double> %i.gd, ptr %i.fz, align 8, !tbaa !36, !alias.scope !43
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %._crit_edge273, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec374 = and i64 %i.eq, -4                   ; 3 uses
  %i.gf = or disjoint i64 %n.vec374, 1
  %broadcast.splatinsert375 = insertelement <4 x double> poison, double %i.ek, i64 0
  %broadcast.splat376 = shufflevector <4 x double> %broadcast.splatinsert375, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index377 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next380, %vec.epilog.vector.body ] ; 2 uses
  %i.gg = or disjoint i64 %index377, 1            ; 2 uses
  %i.gh = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.gg
  %wide.load378 = load <4 x double>, ptr %i.gh, align 8, !tbaa !36, !alias.scope !42, !noalias !43
  %i.gi = trunc nuw nsw i64 %i.gg to i32
  %i.gj = add i32 %i.en, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gk ; 2 uses
  %wide.load379 = load <4 x double>, ptr %i.gl, align 8, !tbaa !36, !alias.scope !43
  %i.gm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat376, <4 x double> %wide.load378, <4 x double> %wide.load379)
  store <4 x double> %i.gm, ptr %i.gl, align 8, !tbaa !36, !alias.scope !43
  %index.next380 = add nuw i64 %index377, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next380, %n.vec374
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n381 = icmp eq i64 %i.eq, %n.vec374
  br i1 %cmp.n381, label %._crit_edge273, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv302.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck ], [ %i.fn, %vec.epilog.iter.check ], [ %i.gf, %vec.epilog.middle.block ] ; 4 uses
  %i.go = sub i64 %wide.trip.count305, %indvars.iv302.ph
  %xtraiter515 = and i64 %i.go, 3                 ; 2 uses
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv302.prol = phi i64 [ %indvars.iv.next303.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv302.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter517 = phi i64 [ %prol.iter517.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gp = mul nsw i64 %indvars.iv302.prol, %i.ai
  %gep343.prol = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.gp
  %i.gq = load double, ptr %gep343.prol, align 8, !tbaa !36
  %i.gr = trunc nuw nsw i64 %indvars.iv302.prol to i32
  %i.gs = add i32 %i.en, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.gt ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !36
  %i.gw = call double @llvm.fmuladd.f64(double %i.ek, double %i.gq, double %i.gv)
  store double %i.gw, ptr %i.gu, align 8, !tbaa !36
  %indvars.iv.next303.prol = add nuw nsw i64 %indvars.iv302.prol, 1 ; 2 uses
  %prol.iter517.next = add i64 %prol.iter517, 1   ; 2 uses
  %prol.iter517.cmp.not = icmp eq i64 %prol.iter517.next, %xtraiter515
  br i1 %prol.iter517.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !17

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv302.unr = phi i64 [ %indvars.iv302.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next303.prol, %vec.epilog.scalar.ph.prol ]
  %i.gx = sub i64 %indvars.iv302.ph, %wide.trip.count305
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %._crit_edge273, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.3, %vec.epilog.scalar.ph ], [ %indvars.iv302.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gz = mul nsw i64 %indvars.iv302, %i.ai
  %gep343 = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.gz
  %i.ha = load double, ptr %gep343, align 8, !tbaa !36
  %i.hb = trunc nuw nsw i64 %indvars.iv302 to i32
  %i.hc = add i32 %i.en, %i.hb
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hd ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !36
  %i.hg = call double @llvm.fmuladd.f64(double %i.ek, double %i.ha, double %i.hf)
  store double %i.hg, ptr %i.he, align 8, !tbaa !36
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.hh = mul nsw i64 %indvars.iv.next303, %i.ai
  %gep343.1 = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.hh
  %i.hi = load double, ptr %gep343.1, align 8, !tbaa !36
  %i.hj = trunc nuw nsw i64 %indvars.iv.next303 to i32
  %i.hk = add i32 %i.en, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hl ; 2 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !36
  %i.ho = call double @llvm.fmuladd.f64(double %i.ek, double %i.hi, double %i.hn)
  store double %i.ho, ptr %i.hm, align 8, !tbaa !36
  %indvars.iv.next303.1 = add nuw nsw i64 %indvars.iv302, 2 ; 2 uses
  %i.hp = mul nsw i64 %indvars.iv.next303.1, %i.ai
  %gep343.2 = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.hp
  %i.hq = load double, ptr %gep343.2, align 8, !tbaa !36
  %i.hr = trunc nuw nsw i64 %indvars.iv.next303.1 to i32
  %i.hs = add i32 %i.en, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ht ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !36
  %i.hw = call double @llvm.fmuladd.f64(double %i.ek, double %i.hq, double %i.hv)
  store double %i.hw, ptr %i.hu, align 8, !tbaa !36
  %indvars.iv.next303.2 = add nuw nsw i64 %indvars.iv302, 3 ; 2 uses
  %i.hx = mul nsw i64 %indvars.iv.next303.2, %i.ai
  %gep343.3 = getelementptr [8 x i8], ptr %invariant.gep342, i64 %i.hx
  %i.hy = load double, ptr %gep343.3, align 8, !tbaa !36
  %i.hz = trunc nuw nsw i64 %indvars.iv.next303.2 to i32
  %i.ia = add i32 %i.en, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ib ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !36
  %i.ie = call double @llvm.fmuladd.f64(double %i.ek, double %i.hy, double %i.id)
  store double %i.ie, ptr %i.ic, align 8, !tbaa !36
  %indvars.iv.next303.3 = add nuw nsw i64 %indvars.iv302, 4 ; 2 uses
  %exitcond306.not.3 = icmp eq i64 %indvars.iv.next303.3, %wide.trip.count305
  br i1 %exitcond306.not.3, label %._crit_edge273, label %vec.epilog.scalar.ph, !llvm.loop !18

._crit_edge273:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge
  store i32 %i.em, ptr %i.e, align 4, !tbaa !34
  %i.if = add nsw i32 %i.el, %i.o
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ig
  call void @dger_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %i.ih, ptr noundef nonnull %8, ptr noundef %gep345, ptr noundef nonnull %6, ptr noundef %i.ef, ptr noundef nonnull %6) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %._crit_edge273
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1
  %.not248.not = icmp samesign ult i64 %indvars.iv307, %i.ak
  %indvars.iv.next301 = add nsw i32 %indvars.iv300, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %.not248.not, label %bb.h, label %._crit_edge279, !llvm.loop !19

._crit_edge279:                                   ; preds = %bb.j
  %.pre = load i32, ptr %0, align 4, !tbaa !34    ; 3 uses
  %.not249286 = icmp slt i32 %.pre, 2
  br i1 %.not249286, label %._crit_edge290, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %._crit_edge279
  %i.ii = sext i32 %i.o to i64                    ; 16 uses
  %i.ij = sext i32 %i.l to i64
  %invariant.gep350 = getelementptr [8 x i8], ptr %i.q, i64 %i.ii
  %invariant.gep352 = getelementptr [8 x i8], ptr %i.n, i64 %i.ij
  %i.ik = zext nneg i32 %.pre to i64
  %ident.check454.not = icmp eq i32 %i.o, 1
  %ident.check415 = icmp ne i32 %i.o, 1
  %ident.check416 = icmp ne i32 %i.l, 1
  %i.il = or i1 %ident.check415, %ident.check416
  br label %iter.check467

iter.check467:                                    ; preds = %.lr.ph289.preheader, %._crit_edge285
  %indvar455 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvar.next456, %._crit_edge285 ] ; 2 uses
  %indvars.iv322 = phi i64 [ 2, %.lr.ph289.preheader ], [ %indvars.iv.next323, %._crit_edge285 ] ; 15 uses
end_hunk_0
