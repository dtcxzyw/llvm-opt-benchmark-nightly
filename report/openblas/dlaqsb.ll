Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqsb?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaqsb_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !22     ; 7 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64                  ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 -8 ; 8 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !22
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @dlamch_(ptr noundef nonnull @.str) #3
  %i.h = tail call double @dlamch_(ptr noundef nonnull @.str.1) #3
  %i.i = load double, ptr %6, align 8, !tbaa !24
  %i.j = fcmp ult double %i.i, 1.000000e-01
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fdiv double %i.g, %i.h                   ; 2 uses
  %i.l = fdiv double 1.000000e+00, %i.k
  %i.m = load double, ptr %7, align 8, !tbaa !24  ; 2 uses
  %i.n = fcmp ult double %i.m, %i.k
  %i.o = fcmp ugt double %i.m, %i.l
  %or.cond = or i1 %i.n, %i.o
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #3
  %.not = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %1, align 4, !tbaa !22     ; 6 uses
  %.not7997 = icmp slt i32 %i.q, 1                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not7997, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.e
  %i.r = load i32, ptr %2, align 4, !tbaa !22     ; 5 uses
  %i.s = add nuw i32 %i.q, 1
  %wide.trip.count = zext i32 %i.s to i64
  %.not8386 = icmp slt i32 %i.r, 0
  %.089101 = add i32 %i.a, -1                     ; 2 uses
  %invariant.op = add i32 %i.r, 1
  %9 = sub i32 1, %i.r                            ; 2 uses
  %i.t = add i32 %i.a, %i.r
  %i.u = shl nsw i64 %i.b, 3                      ; 2 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %i.u
  %invariant.op212 = add i64 %i.u, 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph91, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph91 ], [ %indvar.next, %._crit_edge ] ; 4 uses
  %indvars.iv107 = phi i64 [ 1, %.lr.ph91 ], [ %indvars.iv.next108, %._crit_edge ] ; 8 uses
  %10 = add i32 %9, %indvar
  %smax132 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %i.v = zext nneg i32 %smax132 to i64            ; 2 uses
  %umax133 = tail call i64 @llvm.umax.i64(i64 %indvars.iv107, i64 %i.v)
  %i.w = add nuw i64 %umax133, 1
  %i.x = sub i64 %i.w, %i.v                       ; 7 uses
  %11 = add i32 %9, %indvar
  %smax123 = tail call i32 @llvm.smax.i32(i32 %11, i32 1) ; 2 uses
  %i.y = zext nneg i32 %smax123 to i64
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv107, i64 %i.y) ; 2 uses
  %i.aa = mul i32 %.089101, %indvar
  %i.ab = add i32 %i.t, %i.aa
  %i.ac = add i32 %smax123, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv107
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  br i1 %.not8386, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.f
  %12 = trunc i64 %indvars.iv107 to i32
  %13 = sub i32 %12, %i.r
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1) ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv107 to i32
  %reass.sub = mul i32 %.089101, %i.af
  %.reass = add i32 %reass.sub, %invariant.op     ; 4 uses
  %15 = zext nneg i32 %14 to i64                  ; 9 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ag = trunc i64 %i.z to i32
  %i.ah = add i32 %i.ac, %i.ag
  %i.ai = icmp slt i32 %i.ah, %i.ac
  %i.aj = icmp samesign ugt i64 %i.z, 4294967295
  %i.ak = or i1 %i.ai, %i.aj
  br i1 %i.ak, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.al = shl nuw nsw i64 %15, 3                  ; 2 uses
  %i.am = getelementptr i8, ptr %5, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = tail call i64 @llvm.umax.i64(i64 %indvars.iv107, i64 %15)
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  %i.aq = getelementptr i8, ptr %5, i64 %i.ap
  %i.ar = add i32 %14, %.reass
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 3                    ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.at
  %i.au = add i64 %i.ap, %i.at
  %.reass213 = add i64 %i.au, %invariant.op212
  %i.av = sub i64 %.reass213, %i.al
  %i.aw = getelementptr i8, ptr %3, i64 %i.av
  %bound0 = icmp ult ptr %i.an, %i.aw
  %bound1 = icmp ult ptr %gep, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check134 = icmp ult i64 %i.x, 16
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.x, 12
  %n.vec = and i64 %i.x, -16                      ; 4 uses
  %i.ay = add i64 %n.vec, %15
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = add nuw i64 %index, %15                 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %wide.load = load <4 x double>, ptr %i.ba, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load135.a = load <4 x double>, ptr %i.bb, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load136.a = load <4 x double>, ptr %i.bc, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load137.a = load <4 x double>, ptr %i.bd, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %i.be = fmul <4 x double> %broadcast.splat, %wide.load
  %i.bf = fmul <4 x double> %broadcast.splat, %wide.load135.a
  %i.bg = fmul <4 x double> %broadcast.splat, %wide.load136.a
  %i.bh = fmul <4 x double> %broadcast.splat, %wide.load137.a
  %i.bi = trunc nuw nsw i64 %i.az to i32
  %i.bj = add i32 %.reass, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bk ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96 ; 2 uses
  %wide.load138.a = load <4 x double>, ptr %i.bl, align 8, !tbaa !24, !alias.scope !26
  %wide.load139 = load <4 x double>, ptr %i.bm, align 8, !tbaa !24, !alias.scope !26
  %wide.load140 = load <4 x double>, ptr %i.bn, align 8, !tbaa !24, !alias.scope !26
  %wide.load141 = load <4 x double>, ptr %i.bo, align 8, !tbaa !24, !alias.scope !26
  %i.bp = fmul <4 x double> %i.be, %wide.load138.a
  %i.bq = fmul <4 x double> %i.bf, %wide.load139
  %i.br = fmul <4 x double> %i.bg, %wide.load140
  %i.bs = fmul <4 x double> %i.bh, %wide.load141
  store <4 x double> %i.bp, ptr %i.bl, align 8, !tbaa !24, !alias.scope !26
  store <4 x double> %i.bq, ptr %i.bm, align 8, !tbaa !24, !alias.scope !26
  store <4 x double> %i.br, ptr %i.bn, align 8, !tbaa !24, !alias.scope !26
  store <4 x double> %i.bs, ptr %i.bo, align 8, !tbaa !24, !alias.scope !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.x, -4                    ; 3 uses
  %i.bu = add i64 %n.vec142, %15
  %broadcast.splatinsert143 = insertelement <4 x double> poison, double %i.ae, i64 0
  %broadcast.splat144 = shufflevector <4 x double> %broadcast.splatinsert143, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 2 uses
  %i.bv = add nuw i64 %index145, %15              ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bv
  %wide.load146 = load <4 x double>, ptr %i.bw, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %i.bx = fmul <4 x double> %broadcast.splat144, %wide.load146
  %i.by = trunc nuw nsw i64 %i.bv to i32
  %i.bz = add i32 %.reass, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ca ; 2 uses
  %wide.load147 = load <4 x double>, ptr %i.cb, align 8, !tbaa !24, !alias.scope !26
  %i.cc = fmul <4 x double> %i.bx, %wide.load147
  store <4 x double> %i.cc, ptr %i.cb, align 8, !tbaa !24, !alias.scope !26
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.x, %n.vec142
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.ph = phi i64 [ %15, %iter.check ], [ %15, %vector.scevcheck ], [ %15, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %vec.epilog.scalar.ph ], [ %indvars.iv104.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv104
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = fmul double %i.ae, %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv104 to i32
  %i.ci = add i32 %.reass, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cj ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !24
  %i.cm = fmul double %i.cg, %i.cl
  store double %i.cm, ptr %i.ck, align 8, !tbaa !24
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %.not83.not = icmp samesign ult i64 %indvars.iv104, %indvars.iv107
  br i1 %.not83.not, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !14

bb.g:                                             ; preds = %bb.d
  br i1 %.not7997, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.cn = load i32, ptr %2, align 4, !tbaa !22    ; 2 uses
  %i.co = add nuw i32 %i.q, 1
  %wide.trip.count116 = zext i32 %i.co to i64
  %.198102 = add i32 %i.a, -1
  %i.cp = zext nneg i32 %i.q to i64
  %i.cq = add i32 %i.cn, 1                        ; 2 uses
  %i.cr = add i32 %i.a, 1                         ; 2 uses
  %i.cs = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.ct = zext nneg i32 %i.q to i64
  %invariant.gep218 = getelementptr i8, ptr %3, i64 %i.cs
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph100, %._crit_edge96
  %indvar154 = phi i64 [ 0, %.lr.ph100 ], [ %indvar.next155, %._crit_edge96 ] ; 8 uses
  %indvar151 = phi i32 [ 0, %.lr.ph100 ], [ %indvar.next152.a, %._crit_edge96 ] ; 2 uses
  %indvars.iv110 = phi i64 [ 1, %.lr.ph100 ], [ %indvars.iv.next111, %._crit_edge96 ] ; 15 uses
  %i.cu = trunc i64 %indvar154 to i32
  %i.cv = trunc i64 %indvar154 to i32
  %i.cw = add i32 %i.cq, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %smin168 = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 %i.cx)
  %smax169 = tail call i64 @llvm.smax.i64(i64 %smin168, i64 %indvars.iv110)
  %i.cy = sub i64 %smax169, %indvar154            ; 7 uses
  %i.cz = add i32 %i.cq, %indvar151
  %i.da = sext i32 %i.cz to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cp, i64 %i.da)
  %smax153 = tail call i64 @llvm.smax.i64(i64 %smin, i64 %indvars.iv110)
  %i.db = xor i64 %indvar154, -1
  %i.dc = add i64 %smax153, %i.db                 ; 2 uses
  %i.dd = trunc i64 %indvar154 to i32
  %i.de = mul i32 %i.a, %i.dd
  %i.df = add i32 %i.de, %i.cr                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv110
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !24 ; 3 uses
  %i.di = trunc i64 %indvars.iv110 to i32
  %i.dj = add i32 %i.cn, %i.di
  %i.dk = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.dj)
  %i.dl = sext i32 %i.dk to i64                   ; 3 uses
  %.not8192 = icmp sgt i64 %indvars.iv110, %i.dl
  br i1 %.not8192, label %._crit_edge96, label %iter.check194

iter.check194:                                    ; preds = %bb.h
  %i.dm = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.dn = mul i32 %.198102, %i.dm                 ; 3 uses
  %min.iters.check170 = icmp ult i64 %i.cy, 4
  br i1 %min.iters.check170, label %vec.epilog.scalar.ph196.preheader, label %vector.scevcheck150

vector.scevcheck150:                              ; preds = %iter.check194
  %i.do = trunc i64 %i.dc to i32
  %i.dp = add i32 %i.df, %i.do
  %i.dq = icmp slt i32 %i.dp, %i.df
  %i.dr = icmp ugt i64 %i.dc, 4294967295
  %i.ds = or i1 %i.dq, %i.dr
  br i1 %i.ds, label %vec.epilog.scalar.ph196.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %vector.scevcheck150
  %i.dt = shl nuw nsw i64 %indvar154, 3           ; 2 uses
  %i.du = getelementptr i8, ptr %5, i64 %i.dt
  %i.dv = tail call i64 @llvm.smax.i64(i64 %i.dl, i64 %indvars.iv110)
  %i.dw = xor i64 %indvar154, -1
  %i.dx = add i64 %i.dv, %i.dw
  %i.dy = shl nsw i64 %i.dx, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %5, i64 %i.dt
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy
  %i.ec = mul i32 %i.a, %i.cu
  %i.ed = add i32 %i.cr, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = shl nsw i64 %i.ee, 3                    ; 2 uses
  %gep219 = getelementptr i8, ptr %invariant.gep218, i64 %i.ef
  %i.eg = getelementptr i8, ptr %3, i64 %i.dy
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.ef
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.cs
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %bound0172 = icmp ult ptr %i.du, %i.ej
  %bound1173 = icmp ult ptr %gep219, %i.eb
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %vec.epilog.scalar.ph196.preheader, label %vector.main.loop.iter.check175

vector.main.loop.iter.check175:                   ; preds = %vector.memcheck171
  %min.iters.check176 = icmp ult i64 %i.cy, 16
  br i1 %min.iters.check176, label %vec.epilog.ph198, label %vector.ph177

vector.ph177:                                     ; preds = %vector.main.loop.iter.check175
  %i.ek = and i64 %i.cy, 12
  %n.vec178 = and i64 %i.cy, -16                  ; 4 uses
  %i.el = add i64 %indvars.iv110, %n.vec178
  %broadcast.splatinsert179 = insertelement <4 x double> poison, double %i.dh, i64 0
  %broadcast.splat180 = shufflevector <4 x double> %broadcast.splatinsert179, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op214 = add i32 1, %i.dn
  br label %vector.body181

vector.body181:                                   ; preds = %vector.ph177, %vector.body181
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next191, %vector.body181 ] ; 2 uses
  %i.em = add nuw i64 %indvars.iv110, %index182   ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.em ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %wide.load183.a = load <4 x double>, ptr %i.en, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %wide.load184.a = load <4 x double>, ptr %i.eo, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %wide.load185.a = load <4 x double>, ptr %i.ep, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %wide.load186.a = load <4 x double>, ptr %i.eq, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %i.er = fmul <4 x double> %broadcast.splat180, %wide.load183.a
  %i.es = fmul <4 x double> %broadcast.splat180, %wide.load184.a
  %i.et = fmul <4 x double> %broadcast.splat180, %wide.load185.a
  %i.eu = fmul <4 x double> %broadcast.splat180, %wide.load186.a
  %i.ev = trunc i64 %i.em to i32
  %.reass215 = add i32 %i.ev, %invariant.op214
  %i.ew = sext i32 %.reass215 to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 64 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 96 ; 2 uses
  %wide.load187.a = load <4 x double>, ptr %i.ex, align 8, !tbaa !24, !alias.scope !32
  %wide.load188 = load <4 x double>, ptr %i.ey, align 8, !tbaa !24, !alias.scope !32
  %wide.load189 = load <4 x double>, ptr %i.ez, align 8, !tbaa !24, !alias.scope !32
  %wide.load190 = load <4 x double>, ptr %i.fa, align 8, !tbaa !24, !alias.scope !32
  %i.fb = fmul <4 x double> %i.er, %wide.load187.a
  %i.fc = fmul <4 x double> %i.es, %wide.load188
  %i.fd = fmul <4 x double> %i.et, %wide.load189
  %i.fe = fmul <4 x double> %i.eu, %wide.load190
  store <4 x double> %i.fb, ptr %i.ex, align 8, !tbaa !24, !alias.scope !32
  store <4 x double> %i.fc, ptr %i.ey, align 8, !tbaa !24, !alias.scope !32
  store <4 x double> %i.fd, ptr %i.ez, align 8, !tbaa !24, !alias.scope !32
  store <4 x double> %i.fe, ptr %i.fa, align 8, !tbaa !24, !alias.scope !32
  %index.next191 = add nuw i64 %index182, 16      ; 2 uses
  %i.ff = icmp eq i64 %index.next191, %n.vec178
  br i1 %i.ff, label %middle.block192, label %vector.body181, !llvm.loop !18

middle.block192:                                  ; preds = %vector.body181
  %cmp.n193 = icmp eq i64 %i.cy, %n.vec178
  br i1 %cmp.n193, label %._crit_edge96, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block192
  %min.epilog.iters.check197 = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check197, label %vec.epilog.scalar.ph196.preheader, label %vec.epilog.ph198, !prof !30

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check175, %vec.epilog.iter.check195
  %vec.epilog.resume.val199 = phi i64 [ %n.vec178, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check175 ]
  %n.vec200 = and i64 %i.cy, -4                   ; 3 uses
  %i.fg = add i64 %indvars.iv110, %n.vec200
  %broadcast.splatinsert201 = insertelement <4 x double> poison, double %i.dh, i64 0
  %broadcast.splat202 = shufflevector <4 x double> %broadcast.splatinsert201, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op216 = add i32 1, %i.dn
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph198
  %index204 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph198 ], [ %index.next207, %vec.epilog.vector.body203 ] ; 2 uses
  %i.fh = add nuw i64 %indvars.iv110, %index204   ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fh
  %wide.load205 = load <4 x double>, ptr %i.fi, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %i.fj = fmul <4 x double> %broadcast.splat202, %wide.load205
  %i.fk = trunc i64 %i.fh to i32
  %.reass217 = add i32 %i.fk, %invariant.op216
  %i.fl = sext i32 %.reass217 to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fl ; 2 uses
  %wide.load206 = load <4 x double>, ptr %i.fm, align 8, !tbaa !24, !alias.scope !32
  %i.fn = fmul <4 x double> %i.fj, %wide.load206
  store <4 x double> %i.fn, ptr %i.fm, align 8, !tbaa !24, !alias.scope !32
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.fo, label %vec.epilog.middle.block208, label %vec.epilog.vector.body203, !llvm.loop !19

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body203
  %cmp.n209 = icmp eq i64 %i.cy, %n.vec200
  br i1 %cmp.n209, label %._crit_edge96, label %vec.epilog.scalar.ph196.preheader

vec.epilog.scalar.ph196.preheader:                ; preds = %iter.check194, %vector.scevcheck150, %vector.memcheck171, %vec.epilog.iter.check195, %vec.epilog.middle.block208
  %indvars.iv112.ph = phi i64 [ %indvars.iv110, %iter.check194 ], [ %indvars.iv110, %vector.scevcheck150 ], [ %indvars.iv110, %vector.memcheck171 ], [ %i.el, %vec.epilog.iter.check195 ], [ %i.fg, %vec.epilog.middle.block208 ]
  br label %vec.epilog.scalar.ph196

vec.epilog.scalar.ph196:                          ; preds = %vec.epilog.scalar.ph196.preheader, %vec.epilog.scalar.ph196
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %vec.epilog.scalar.ph196 ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph196.preheader ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv112
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24
  %i.fr = fmul double %i.dh, %i.fq
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.fs = trunc nsw i64 %indvars.iv.next113 to i32
  %i.ft = add i32 %i.dn, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fu ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24
  %i.fx = fmul double %i.fr, %i.fw
  store double %i.fx, ptr %i.fv, align 8, !tbaa !24
  %.not81.not = icmp slt i64 %indvars.iv112, %i.dl
  br i1 %.not81.not, label %vec.epilog.scalar.ph196, label %._crit_edge96, !llvm.loop !20

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph196, %middle.block192, %vec.epilog.middle.block208, %bb.h
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count116
  %indvar.next152.a = add i32 %indvar151, 1
end_hunk_0
