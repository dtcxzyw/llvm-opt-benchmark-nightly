Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqsp?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: nounwind uwtable
define void @dlaqsp_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -8 ; 16 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -8 ; 8 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @dlamch_(ptr noundef nonnull @.str) #2
  %i.f = tail call double @dlamch_(ptr noundef nonnull @.str.1) #2
  %i.g = load double, ptr %4, align 8, !tbaa !9
  %i.h = fcmp ult double %i.g, 1.000000e-01
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv double %i.e, %i.f                   ; 2 uses
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = load double, ptr %5, align 8, !tbaa !9   ; 2 uses
  %i.l = fcmp ult double %i.k, %i.i
  %i.m = fcmp ugt double %i.k, %i.j
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #2
  %.not = icmp eq i32 %i.n, 0
  %i.o = load i32, ptr %1, align 4, !tbaa !8      ; 5 uses
  %.not6374 = icmp slt i32 %i.o, 1                ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not6374, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.p = add nuw i32 %i.o, 1
  %wide.trip.count90 = zext i32 %i.p to i64
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %.loopexit173
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.loopexit173 ] ; 2 uses
  %indvars.iv85 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next86, %.loopexit173 ] ; 11 uses
  %indvars.iv83 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next84, %.loopexit173 ] ; 3 uses
  %.072 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.dc, %.loopexit173 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.r = load double, ptr %i.q, align 8, !tbaa !9 ; 11 uses
  %i.s = zext i32 %.072 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.s ; 12 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv85, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.t = shl nuw nsw i64 %indvar, 3               ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %i.t
  %scevgep106 = getelementptr i8, ptr %i.u, i64 8
  %scevgep = getelementptr i8, ptr %2, i64 %i.t
  %i.v = zext i32 %.072 to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %scevgep105 = getelementptr i8, ptr %scevgep, i64 %i.w
  %bound0 = icmp ult ptr %invariant.gep, %scevgep106
  %bound1 = icmp ult ptr %3, %scevgep105
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check107 = icmp samesign ult i64 %indvars.iv85, 16
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %indvars.iv85, 12
  %n.vec = and i64 %indvars.iv85, 9223372036854775792 ; 4 uses
  %i.y = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.r, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %3, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <4 x double>, ptr %i.z, align 8, !tbaa !9, !alias.scope !11
  %wide.load108 = load <4 x double>, ptr %i.aa, align 8, !tbaa !9, !alias.scope !11
  %wide.load109 = load <4 x double>, ptr %i.ab, align 8, !tbaa !9, !alias.scope !11
  %wide.load110 = load <4 x double>, ptr %i.ac, align 8, !tbaa !9, !alias.scope !11
  %i.ad = fmul <4 x double> %broadcast.splat, %wide.load
  %i.ae = fmul <4 x double> %broadcast.splat, %wide.load108
  %i.af = fmul <4 x double> %broadcast.splat, %wide.load109
  %i.ag = fmul <4 x double> %broadcast.splat, %wide.load110
  %i.ah = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 32     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 64     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 96     ; 2 uses
  %wide.load111 = load <4 x double>, ptr %i.ah, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %wide.load112 = load <4 x double>, ptr %i.ai, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %wide.load113 = load <4 x double>, ptr %i.aj, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %wide.load114 = load <4 x double>, ptr %i.ak, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %i.al = fmul <4 x double> %i.ad, %wide.load111
  %i.am = fmul <4 x double> %i.ae, %wide.load112
  %i.an = fmul <4 x double> %i.af, %wide.load113
  %i.ao = fmul <4 x double> %i.ag, %wide.load114
  store <4 x double> %i.al, ptr %i.ah, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %i.am, ptr %i.ai, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %i.an, ptr %i.aj, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %i.ao, ptr %i.ak, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv85, %n.vec
  br i1 %cmp.n, label %.loopexit173, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %indvars.iv85, 9223372036854775804 ; 3 uses
  %i.aq = or disjoint i64 %n.vec115, 1
  %broadcast.splatinsert116 = insertelement <4 x double> poison, double %i.r, i64 0
  %broadcast.splat117 = shufflevector <4 x double> %broadcast.splatinsert116, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %3, i64 %index118
  %wide.load119 = load <4 x double>, ptr %i.ar, align 8, !tbaa !9, !alias.scope !11
  %i.as = fmul <4 x double> %broadcast.splat117, %wide.load119
  %i.at = getelementptr [8 x i8], ptr %invariant.gep, i64 %index118 ; 2 uses
  %wide.load120 = load <4 x double>, ptr %i.at, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %i.au = fmul <4 x double> %i.as, %wide.load120
  store <4 x double> %i.au, ptr %i.at, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i64 %indvars.iv85, %n.vec115
  br i1 %cmp.n122, label %.loopexit173, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 4 uses
  %i.aw = sub i64 %indvars.iv83, %indvars.iv.ph
  %i.ax = sub i64 %indvars.iv85, %indvars.iv.ph
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.prol
  %i.az = load double, ptr %i.ay, align 8, !tbaa !9
  %i.ba = fmul double %i.r, %i.az
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bb = getelementptr i8, ptr %gep.prol, i64 -8 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !9
  %i.bd = fmul double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.be = icmp ult i64 %i.ax, 7
  br i1 %i.be, label %.loopexit173, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 11 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !9
  %i.bh = fmul double %i.r, %i.bg
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %gep, i64 -8      ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !9
  %i.bk = fmul double %i.bh, %i.bj
  store double %i.bk, ptr %i.bi, align 8, !tbaa !9
  %i.bl = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9
  %i.bn = fmul double %i.r, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !9
  %i.bq = fmul double %i.bn, %i.bp
  store double %i.bq, ptr %i.bo, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.bs = load double, ptr %i.br, align 8, !tbaa !9
  %i.bt = fmul double %i.r, %i.bs
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bu = getelementptr i8, ptr %gep.2, i64 -8    ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !9
  %i.bw = fmul double %i.bt, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9
  %i.bz = fmul double %i.r, %i.by
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ca = getelementptr i8, ptr %gep.3, i64 -8    ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !9
  %i.cc = fmul double %i.bz, %i.cb
  store double %i.cc, ptr %i.ca, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.3
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !9
  %i.cf = fmul double %i.r, %i.ce
  %gep.4 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.cg = getelementptr i8, ptr %gep.4, i64 -8    ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9
  %i.ci = fmul double %i.cf, %i.ch
  store double %i.ci, ptr %i.cg, align 8, !tbaa !9
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.4
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !9
  %i.cl = fmul double %i.r, %i.ck
  %gep.5 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.cm = getelementptr i8, ptr %gep.5, i64 -8    ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !9
  %i.co = fmul double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !9
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.5
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !9
  %i.cr = fmul double %i.r, %i.cq
  %gep.6 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.cs = getelementptr i8, ptr %gep.6, i64 -8    ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !9
  %i.cu = fmul double %i.cr, %i.ct
  store double %i.cu, ptr %i.cs, align 8, !tbaa !9
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.6
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !9
  %i.cx = fmul double %i.r, %i.cw
  %gep.7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.cy = getelementptr i8, ptr %gep.7, i64 -8    ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !9
  %i.da = fmul double %i.cx, %i.cz
  store double %i.da, ptr %i.cy, align 8, !tbaa !9
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %indvars.iv83
  br i1 %exitcond.not.7, label %.loopexit173, label %vec.epilog.scalar.ph, !llvm.loop !24

.loopexit173:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.db = trunc nuw nsw i64 %indvars.iv85 to i32
  %i.dc = add nuw nsw i32 %.072, %i.db
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count90
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond91.not, label %.loopexit, label %iter.check, !llvm.loop !25

bb.f:                                             ; preds = %bb.d
  br i1 %.not6374, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.f
end_hunk_0
