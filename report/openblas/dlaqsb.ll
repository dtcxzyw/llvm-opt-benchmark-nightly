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
  %i.r = load i32, ptr %2, align 4, !tbaa !22     ; 4 uses
  %i.s = sub i32 1, %i.r
  %i.t = add nuw i32 %i.q, 1
  %wide.trip.count = zext i32 %i.t to i64
  %.not8386 = icmp slt i32 %i.r, 0
  %.089101 = add i32 %i.a, -1                     ; 2 uses
  %invariant.op = add i32 %i.r, 1
  %i.u = add i32 %i.a, %i.r
  %i.v = shl nsw i64 %i.b, 3                      ; 2 uses
  %invariant.gep.a = getelementptr i8, ptr %3, i64 %i.v
  %invariant.op212 = add i64 %i.v, 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph91, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph91 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv107 = phi i64 [ 1, %.lr.ph91 ], [ %indvars.iv.next108, %._crit_edge ] ; 7 uses
  %indvars.iv = phi i32 [ %i.s, %.lr.ph91 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %smax132 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  %i.w = zext nneg i32 %smax132 to i64            ; 2 uses
  %umax133 = tail call i64 @llvm.umax.i64(i64 %indvars.iv107, i64 %i.w)
  %i.x = add nuw i64 %umax133, 1
  %i.y = sub i64 %i.x, %i.w                       ; 7 uses
  %smax123 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1) ; 2 uses
  %i.z = zext nneg i32 %smax123 to i64
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv107, i64 %i.z) ; 2 uses
  %i.ab = mul i32 %.089101, %indvar
  %i.ac = add i32 %i.u, %i.ab
  %i.ad = add i32 %smax123, %i.ac                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv107
  %i.af = load double, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  br i1 %.not8386, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.f
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1) ; 2 uses
  %i.ag = zext nneg i32 %smax to i64              ; 9 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv107 to i32
  %reass.sub = mul i32 %.089101, %i.ah
  %.reass = add i32 %reass.sub, %invariant.op     ; 4 uses
  %min.iters.check = icmp ult i64 %i.y, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ai = trunc i64 %i.aa to i32
  %i.aj = add i32 %i.ad, %i.ai
  %i.ak = icmp slt i32 %i.aj, %i.ad
  %i.al = icmp samesign ugt i64 %i.aa, 4294967295
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.an = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ao = getelementptr i8, ptr %5, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = tail call i64 @llvm.umax.i64(i64 %indvars.iv107, i64 %i.ag)
  %i.ar = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.as = getelementptr i8, ptr %5, i64 %i.ar
  %i.at = add i32 %smax, %.reass
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 3                    ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep.a, i64 %i.av
  %9 = add i64 %i.ar, %i.av
  %.reass213.a = add i64 %9, %invariant.op212
  %i.aw = sub i64 %.reass213.a, %i.an
  %i.ax = getelementptr i8, ptr %3, i64 %i.aw
  %bound0 = icmp ult ptr %i.ap, %i.ax
  %bound1 = icmp ult ptr %gep, %i.as
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check134 = icmp ult i64 %i.y, 16
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.y, 12
  %n.vec = and i64 %i.y, -16                      ; 4 uses
  %i.az = add i64 %n.vec, %i.ag
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.af, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index, %i.ag               ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %wide.load = load <4 x double>, ptr %i.bb, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load135 = load <4 x double>, ptr %i.bc, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load136 = load <4 x double>, ptr %i.bd, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %wide.load137 = load <4 x double>, ptr %i.be, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %i.bf = fmul <4 x double> %broadcast.splat, %wide.load
  %i.bg = fmul <4 x double> %broadcast.splat, %wide.load135
  %i.bh = fmul <4 x double> %broadcast.splat, %wide.load136
  %i.bi = fmul <4 x double> %broadcast.splat, %wide.load137
  %i.bj = trunc nuw nsw i64 %i.ba to i32
  %i.bk = add i32 %.reass, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bl ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 2 uses
  %wide.load138 = load <4 x double>, ptr %i.bm, align 8, !tbaa !24, !alias.scope !26
  %wide.load139 = load <4 x double>, ptr %i.bn, align 8, !tbaa !24, !alias.scope !26
  %wide.load140 = load <4 x double>, ptr %i.bo, align 8, !tbaa !24, !alias.scope !26
  %wide.load141 = load <4 x double>, ptr %i.bp, align 8, !tbaa !24, !alias.scope !26
  %i.bq = fmul <4 x double> %i.bf, %wide.load138
  %i.br = fmul <4 x double> %i.bg, %wide.load139
  %i.bs = fmul <4 x double> %i.bh, %wide.load140
  %i.bt = fmul <4 x double> %i.bi, %wide.load141
  store <4 x double> %i.bq, ptr %i.bm, align 8, !tbaa !24, !alias.scope !26
  store <4 x double> %i.br, ptr %i.bn, align 8, !tbaa !24, !alias.scope !26
  store <4 x double> %i.bs, ptr %i.bo, align 8, !tbaa !24, !alias.scope !26
  store <4 x double> %i.bt, ptr %i.bp, align 8, !tbaa !24, !alias.scope !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.y, -4                    ; 3 uses
  %i.bv = add i64 %n.vec142, %i.ag
  %broadcast.splatinsert143 = insertelement <4 x double> poison, double %i.af, i64 0
  %broadcast.splat144 = shufflevector <4 x double> %broadcast.splatinsert143, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = add nuw i64 %index145, %i.ag            ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bw
  %wide.load146 = load <4 x double>, ptr %i.bx, align 8, !tbaa !24, !alias.scope !25, !noalias !26
  %i.by = fmul <4 x double> %broadcast.splat144, %wide.load146
  %i.bz = trunc nuw nsw i64 %i.bw to i32
  %i.ca = add i32 %.reass, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cb ; 2 uses
  %wide.load147 = load <4 x double>, ptr %i.cc, align 8, !tbaa !24, !alias.scope !26
  %i.cd = fmul <4 x double> %i.by, %wide.load147
  store <4 x double> %i.cd, ptr %i.cc, align 8, !tbaa !24, !alias.scope !26
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.y, %n.vec142
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.ph = phi i64 [ %i.ag, %iter.check ], [ %i.ag, %vector.scevcheck ], [ %i.ag, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %vec.epilog.scalar.ph ], [ %indvars.iv104.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv104
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !24
  %i.ch = fmul double %i.af, %i.cg
  %i.ci = trunc nuw nsw i64 %indvars.iv104 to i32
  %i.cj = add i32 %.reass, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ck ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !24
  %i.cn = fmul double %i.ch, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !tbaa !24
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %.not83.not = icmp samesign ult i64 %indvars.iv104, %indvars.iv107
  br i1 %.not83.not, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !14

bb.g:                                             ; preds = %bb.d
  br i1 %.not7997, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.co = load i32, ptr %2, align 4, !tbaa !22    ; 2 uses
  %i.cp = add nuw i32 %i.q, 1
  %wide.trip.count116 = zext i32 %i.cp to i64
  %.198102 = add i32 %i.a, -1
  %i.cq = zext nneg i32 %i.q to i64
  %i.cr = add i32 %i.co, 1                        ; 2 uses
  %i.cs = add i32 %i.a, 1                         ; 2 uses
  %i.ct = shl nsw i64 %i.b, 3                     ; 2 uses
  %i.cu = zext nneg i32 %i.q to i64
  %invariant.gep218 = getelementptr i8, ptr %3, i64 %i.ct
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph100, %._crit_edge96
  %indvar154 = phi i64 [ 0, %.lr.ph100 ], [ %indvar.next155, %._crit_edge96 ] ; 8 uses
  %indvar151 = phi i32 [ 0, %.lr.ph100 ], [ %indvar.next152, %._crit_edge96 ] ; 2 uses
  %indvars.iv110 = phi i64 [ 1, %.lr.ph100 ], [ %indvars.iv.next111, %._crit_edge96 ] ; 15 uses
  %i.cv = trunc i64 %indvar154 to i32
  %i.cw = trunc i64 %indvar154 to i32
  %i.cx = add i32 %i.cr, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %smin168 = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.cy)
  %smax169 = tail call i64 @llvm.smax.i64(i64 %smin168, i64 %indvars.iv110)
  %i.cz = sub i64 %smax169, %indvar154            ; 7 uses
  %i.da = add i32 %i.cr, %indvar151
  %i.db = sext i32 %i.da to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %i.db)
  %smax153 = tail call i64 @llvm.smax.i64(i64 %smin, i64 %indvars.iv110)
  %i.dc = xor i64 %indvar154, -1
  %i.dd = add i64 %smax153, %i.dc                 ; 2 uses
  %i.de = trunc i64 %indvar154 to i32
  %i.df = mul i32 %i.a, %i.de
  %i.dg = add i32 %i.df, %i.cs                    ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv110
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24 ; 3 uses
  %i.dj = trunc i64 %indvars.iv110 to i32
  %i.dk = add i32 %i.co, %i.dj
  %i.dl = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.dk)
  %i.dm = sext i32 %i.dl to i64                   ; 3 uses
  %.not8192 = icmp sgt i64 %indvars.iv110, %i.dm
  br i1 %.not8192, label %._crit_edge96, label %iter.check194

iter.check194:                                    ; preds = %bb.h
  %i.dn = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.do = mul i32 %.198102, %i.dn                 ; 3 uses
  %min.iters.check170 = icmp ult i64 %i.cz, 4
  br i1 %min.iters.check170, label %vec.epilog.scalar.ph196.preheader, label %vector.scevcheck150

vector.scevcheck150:                              ; preds = %iter.check194
  %i.dp = trunc i64 %i.dd to i32
  %i.dq = add i32 %i.dg, %i.dp
  %i.dr = icmp slt i32 %i.dq, %i.dg
  %i.ds = icmp ugt i64 %i.dd, 4294967295
  %i.dt = or i1 %i.dr, %i.ds
  br i1 %i.dt, label %vec.epilog.scalar.ph196.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %vector.scevcheck150
  %i.du = shl nuw nsw i64 %indvar154, 3           ; 2 uses
  %i.dv = getelementptr i8, ptr %5, i64 %i.du
  %i.dw = tail call i64 @llvm.smax.i64(i64 %i.dm, i64 %indvars.iv110)
  %i.dx = xor i64 %indvar154, -1
  %i.dy = add i64 %i.dw, %i.dx
  %i.dz = shl nsw i64 %i.dy, 3                    ; 2 uses
  %i.ea = getelementptr i8, ptr %5, i64 %i.du
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 %i.dz
  %i.ed = mul i32 %i.a, %i.cv
  %i.ee = add i32 %i.cs, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 3                    ; 2 uses
  %gep219 = getelementptr i8, ptr %invariant.gep218, i64 %i.eg
  %10 = getelementptr i8, ptr %3, i64 %i.dz
  %i.eh = getelementptr i8, ptr %10, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ct
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %bound0172 = icmp ult ptr %i.dv, %i.ej
  %bound1173 = icmp ult ptr %gep219, %i.ec
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %vec.epilog.scalar.ph196.preheader, label %vector.main.loop.iter.check175

vector.main.loop.iter.check175:                   ; preds = %vector.memcheck171
  %min.iters.check176 = icmp ult i64 %i.cz, 16
  br i1 %min.iters.check176, label %vec.epilog.ph198, label %vector.ph177

vector.ph177:                                     ; preds = %vector.main.loop.iter.check175
  %i.ek = and i64 %i.cz, 12
  %n.vec178 = and i64 %i.cz, -16                  ; 4 uses
  %i.el = add i64 %indvars.iv110, %n.vec178
  %broadcast.splatinsert179 = insertelement <4 x double> poison, double %i.di, i64 0
  %broadcast.splat180 = shufflevector <4 x double> %broadcast.splatinsert179, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op214.a = add i32 1, %i.do
  br label %vector.body181

vector.body181:                                   ; preds = %vector.ph177, %vector.body181
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next191, %vector.body181 ] ; 2 uses
  %i.em = add nuw i64 %indvars.iv110, %index182   ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.em ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  %wide.load183 = load <4 x double>, ptr %i.en, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %wide.load184 = load <4 x double>, ptr %i.eo, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %wide.load185 = load <4 x double>, ptr %i.ep, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %wide.load186 = load <4 x double>, ptr %i.eq, align 8, !tbaa !24, !alias.scope !31, !noalias !32
  %i.er = fmul <4 x double> %broadcast.splat180, %wide.load183
  %i.es = fmul <4 x double> %broadcast.splat180, %wide.load184
  %i.et = fmul <4 x double> %broadcast.splat180, %wide.load185
  %i.eu = fmul <4 x double> %broadcast.splat180, %wide.load186
  %i.ev = trunc i64 %i.em to i32
  %.reass215.a = add i32 %i.ev, %invariant.op214.a
  %i.ew = sext i32 %.reass215.a to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 64 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 96 ; 2 uses
  %wide.load187 = load <4 x double>, ptr %i.ex, align 8, !tbaa !24, !alias.scope !32
  %wide.load188 = load <4 x double>, ptr %i.ey, align 8, !tbaa !24, !alias.scope !32
  %wide.load189 = load <4 x double>, ptr %i.ez, align 8, !tbaa !24, !alias.scope !32
  %wide.load190 = load <4 x double>, ptr %i.fa, align 8, !tbaa !24, !alias.scope !32
  %i.fb = fmul <4 x double> %i.er, %wide.load187
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
  %cmp.n193 = icmp eq i64 %i.cz, %n.vec178
  br i1 %cmp.n193, label %._crit_edge96, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block192
  %min.epilog.iters.check197 = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check197, label %vec.epilog.scalar.ph196.preheader, label %vec.epilog.ph198, !prof !30

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check175, %vec.epilog.iter.check195
  %vec.epilog.resume.val199 = phi i64 [ %n.vec178, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check175 ]
  %n.vec200 = and i64 %i.cz, -4                   ; 3 uses
  %i.fg = add i64 %indvars.iv110, %n.vec200
  %broadcast.splatinsert201 = insertelement <4 x double> poison, double %i.di, i64 0
  %broadcast.splat202 = shufflevector <4 x double> %broadcast.splatinsert201, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op216 = add i32 1, %i.do
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
  %cmp.n209 = icmp eq i64 %i.cz, %n.vec200
  br i1 %cmp.n209, label %._crit_edge96, label %vec.epilog.scalar.ph196.preheader

vec.epilog.scalar.ph196.preheader:                ; preds = %iter.check194, %vector.scevcheck150, %vector.memcheck171, %vec.epilog.iter.check195, %vec.epilog.middle.block208
  %indvars.iv112.ph = phi i64 [ %indvars.iv110, %iter.check194 ], [ %indvars.iv110, %vector.scevcheck150 ], [ %indvars.iv110, %vector.memcheck171 ], [ %i.el, %vec.epilog.iter.check195 ], [ %i.fg, %vec.epilog.middle.block208 ]
  br label %vec.epilog.scalar.ph196

vec.epilog.scalar.ph196:                          ; preds = %vec.epilog.scalar.ph196.preheader, %vec.epilog.scalar.ph196
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %vec.epilog.scalar.ph196 ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph196.preheader ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv112
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24
  %i.fr = fmul double %i.di, %i.fq
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.fs = trunc nsw i64 %indvars.iv.next113 to i32
  %i.ft = add i32 %i.do, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fu ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24
  %i.fx = fmul double %i.fr, %i.fw
  store double %i.fx, ptr %i.fv, align 8, !tbaa !24
  %.not81.not = icmp slt i64 %indvars.iv112, %i.dm
  br i1 %.not81.not, label %vec.epilog.scalar.ph196, label %._crit_edge96, !llvm.loop !20

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph196, %middle.block192, %vec.epilog.middle.block208, %bb.h
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count116
  %indvar.next152 = add i32 %indvar151, 1
  %indvar.next155 = add i64 %indvar154, 1
  br i1 %exitcond117.not, label %.loopexit, label %bb.h, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge96, %bb.e, %bb.g, %bb.c, %bb.a
  %storemerge84 = phi i8 [ 78, %bb.a ], [ 78, %bb.c ], [ 89, %bb.g ], [ 89, %bb.e ], [ 89, %._crit_edge96 ], [ 89, %._crit_edge ]
  store i8 %storemerge84, ptr %8, align 1, !tbaa !33
  ret void
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !27, !28, !29}
!12 = distinct !{!12, !27, !28, !29}
!13 = distinct !{!13, !27, !28}
!14 = distinct !{!14, !27}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !27, !28, !29}
!19 = distinct !{!19, !27, !28, !29}
!20 = distinct !{!20, !27, !28}
!21 = distinct !{!21, !27}
!22 = !{!5, !5, i64 0}
!23 = !{!"double", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!9}
!26 = !{!10}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = !{!16}
!32 = !{!17}
!33 = !{!4, !4, i64 0}
end_hunk_0
