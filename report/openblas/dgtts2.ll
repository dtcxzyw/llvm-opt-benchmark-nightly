Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgtts2?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dgtts2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -8 ; 9 uses
  %i.b = getelementptr inbounds i8, ptr %4, i64 -8 ; 11 uses
  %i.c = getelementptr inbounds i8, ptr %5, i64 -8 ; 10 uses
  %i.d = getelementptr inbounds i8, ptr %6, i64 -8 ; 10 uses
  %i.e = getelementptr inbounds i8, ptr %7, i64 -4 ; 7 uses
  %i.f = load i32, ptr %9, align 4, !tbaa !42     ; 31 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 10 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %8, i64 %i.g ; 44 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !42     ; 27 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit356, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 4, !tbaa !42     ; 4 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit356, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 4, !tbaa !42
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp slt i32 %i.k, 2                     ; 2 uses
  %.not353.not386 = icmp sgt i32 %i.i, 1          ; 4 uses
  br i1 %i.n, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %i.i to i64                     ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.p ; 4 uses
  br i1 %i.o, label %.preheader, label %.preheader355

.preheader355:                                    ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1                     ; 2 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  %i.v = add i32 %i.i, -2                         ; 4 uses
  %i.w = icmp samesign ugt i32 %i.i, 2
  %i.x = sext i32 %i.v to i64                     ; 9 uses
  %i.y = sext i32 %i.f to i64                     ; 5 uses
  %i.z = zext nneg i32 %i.r to i64
  %i.aa = add nuw i32 %i.k, 1
  %wide.trip.count424 = zext i32 %i.aa to i64     ; 3 uses
  %invariant.gep473 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %wide.trip.count416 = zext i32 %i.i to i64      ; 5 uses
  %invariant.gep475 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %invariant.gep477 = getelementptr [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ac = sext i32 %i.f to i35                    ; 2 uses
  %i.ad = sext i32 %i.v to i35
  %i.ae = add nsw i35 %i.ac, %i.ad                ; 2 uses
  %i.af = shl i35 %i.ae, 3
  %i.ag = add i35 %i.af, 8
  %i.ah = shl nsw i35 %i.ac, 3
  %i.ai = shl i35 %i.ae, 3
  %i.aj = add i35 %i.ai, 16
  %i.ak = or i64 %i.y, %i.g
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = getelementptr i8, ptr %8, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 8   ; 5 uses
  %i.an = shl nuw nsw i64 %wide.trip.count424, 3
  %i.ao = add nsw i64 %i.an, -8
  %i.ap = mul i64 %i.ao, %i.y
  %i.aq = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.ar = shl nsw i64 %i.x, 3                     ; 5 uses
  %i.as = getelementptr i8, ptr %8, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ar
  %scevgep488 = getelementptr i8, ptr %i.au, i64 8 ; 5 uses
  %scevgep489 = getelementptr i8, ptr %5, i64 %i.ar
  %i.av = add nsw i64 %i.aq, 8
  %i.aw = sub nsw i64 %i.av, %i.ar                ; 2 uses
  %scevgep490 = getelementptr i8, ptr %8, i64 %i.aw
  %i.ax = sext i32 %i.f to i35                    ; 3 uses
  %i.ay = sext i32 %i.v to i35                    ; 2 uses
  %i.az = add nsw i35 %i.ax, %i.ay
  %i.ba = shl i35 %i.az, 3
  %i.bb = add i35 %i.ba, 8
  %i.bc = shl nsw i35 %i.ax, 3
  %i.bd = add nsw i64 %i.aq, 8                    ; 2 uses
  %scevgep492 = getelementptr i8, ptr %8, i64 %i.bd
  %scevgep494 = getelementptr i8, ptr %6, i64 %i.ar
  %scevgep495 = getelementptr i8, ptr %8, i64 %i.aw
  %i.be = add nsw i35 %i.ax, %i.ay
  %i.bf = shl i35 %i.be, 3
  %i.bg = add i35 %i.bf, 16
  %scevgep497 = getelementptr i8, ptr %8, i64 %i.bd
  %scevgep499 = getelementptr i8, ptr %4, i64 %i.ar
  %i.bh = add nsw i64 %wide.trip.count416, -2     ; 2 uses
  %i.bi = add i32 %i.f, 2
  %i.bj = shl nsw i64 %i.y, 3
  %i.bk = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.bl = getelementptr i8, ptr %8, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  %scevgep529 = getelementptr i8, ptr %i.bm, i64 8 ; 5 uses
  %i.bn = shl nuw nsw i64 %wide.trip.count424, 3
  %i.bo = add nsw i64 %i.bn, -8
  %i.bp = mul i64 %i.bo, %i.y
  %i.bq = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.br = getelementptr i8, ptr %8, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bk
  %scevgep530 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 5 uses
  %scevgep531 = getelementptr i8, ptr %8, i64 %i.bk
  %i.bt = add i32 %i.f, 2
  %i.bu = getelementptr i8, ptr %8, i64 %i.bk
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bq
  %scevgep533 = getelementptr i8, ptr %i.bv, i64 -8
  %i.bw = shl nuw nsw i64 %wide.trip.count416, 2
  %i.bx = getelementptr i8, ptr %7, i64 %i.bw
  %scevgep535 = getelementptr i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.by = getelementptr i8, ptr %3, i64 %i.bq
  %scevgep536 = getelementptr i8, ptr %i.by, i64 -8 ; 2 uses
  %i.bz = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %min.iters.check584 = icmp ult i32 %i.i, 25
  %i.ca = trunc i64 %i.bh to i32
  %i.cb = icmp ugt i64 %i.bh, 4294967295
  %stride.check540 = icmp slt i32 %i.f, 0
  %bound0545 = icmp ult ptr %scevgep529, %scevgep535
  %bound1546 = icmp ult ptr %7, %scevgep530
  %found.conflict547 = and i1 %bound0545, %bound1546
  %invariant.op = or i1 %stride.check540, %found.conflict547
  %bound0549 = icmp ult ptr %scevgep529, %scevgep536
  %bound1550 = icmp ult ptr %3, %scevgep530
  %found.conflict551 = and i1 %bound0549, %bound1550
  %invariant.op696 = or i1 %invariant.op, %found.conflict551
  %bound0553 = icmp ult ptr %scevgep529, %scevgep530
  %invariant.op697 = or i1 %invariant.op696, %bound0553
  %n.vec586 = and i64 %i.bz, -4                   ; 3 uses
  %i.cc = or disjoint i64 %n.vec586, 1
  %cmp.n597 = icmp eq i64 %i.bz, %n.vec586
  %min.iters.check = icmp ult i32 %i.v, 16
  %i.cd = trunc nsw i64 %i.ab to i35
  %mul.result = shl i35 %i.cd, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ab, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep489
  %bound1 = icmp ult ptr %5, %scevgep488
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.f, 0
  %i.ce = or i1 %found.conflict, %stride.check
  %bound0503 = icmp ult ptr %scevgep, %scevgep494
  %bound1504 = icmp ult ptr %6, %scevgep488
  %found.conflict505 = and i1 %bound0503, %bound1504
  %invariant.op698 = or i1 %i.ce, %found.conflict505
  %bound0511 = icmp ult ptr %scevgep, %scevgep499
  %bound1512 = icmp ult ptr %4, %scevgep488
  %found.conflict513 = and i1 %bound0511, %bound1512
  %n.vec = and i64 %i.x, 8589934588               ; 2 uses
  %i.cf = and i64 %i.x, 3
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader354

.preheader:                                       ; preds = %bb.d
  %i.cg = add i32 %i.i, -2                        ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.i, 2
  %i.ci = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cj
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %.preheader
  %i.cm = sext i32 %i.f to i64                    ; 4 uses
  %wide.trip.count429 = zext nneg i32 %i.i to i64
  %invariant.gep479 = getelementptr [8 x i8], ptr %i.h, i64 %i.cm ; 3 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.h, i64 %i.cm ; 3 uses
  %i.cn = add nsw i64 %wide.trip.count429, -1     ; 3 uses
  %xtraiter690 = and i64 %i.cn, 1
  %i.co = icmp eq i32 %i.i, 2
  br i1 %i.co, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter693 = and i64 %i.cn, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter694 = phi i64 [ 0, %.lr.ph389.new ], [ %niter694.next.1, %bb.e ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 4 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.cs = add i32 %i.f, %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.cu = add i32 %i.cs, %i.ct
  %i.cv = sub i32 %i.cu, %i.cq
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !44
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426
  %i.da = load double, ptr %i.cz, align 8, !tbaa !44
  %i.db = add nsw i32 %i.cq, %i.f
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  %i.df = fneg double %i.da
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.de, double %i.cy)
  %gep480 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426
  store double %i.de, ptr %gep480, align 8, !tbaa !44
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427
  store double %i.dg, ptr %gep482, align 8, !tbaa !44
  %i.dh = getelementptr [4 x i8], ptr %7, i64 %indvars.iv426
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 4 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.dk = add i32 %i.f, %i.dj
  %i.dl = trunc nuw nsw i64 %indvars.iv.next427.1 to i32
  %i.dm = add i32 %i.dk, %i.dl
  %i.dn = sub i32 %i.dm, %i.di
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !44
end_hunk_0
begin_hunk_1_@dgtts2_:bb.a
  %wide.masked.load590 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ki, <4 x i1> %i.kd, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load590, ptr align 8 %i.ke, <4 x i1> %i.kd), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kj = getelementptr [8 x i8], ptr %3, i64 %index588 ; 2 uses
  %wide.masked.load591 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.kd, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kk = fneg <4 x double> %wide.masked.load591
  %i.kl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %wide.masked.load590, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kl, ptr align 8 %i.ki, <4 x i1> %i.kd), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load592 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.kc, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.km = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.jz
  %wide.masked.load593 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.km, <4 x i1> %i.kc, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load594 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ki, <4 x i1> %i.kc, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.kn = fneg <4 x double> %wide.masked.load592
  %i.ko = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kn, <4 x double> %wide.masked.load593, <4 x double> %wide.masked.load594)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ko, ptr align 8 %i.ki, <4 x i1> %i.kc), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next595 = add nuw i64 %index588, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kp = icmp eq i64 %index.next595, %n.vec586
  br i1 %i.kp, label %middle.block596, label %vector.body587, !llvm.loop !25

middle.block596:                                  ; preds = %vector.body587
  br i1 %cmp.n597, label %._crit_edge380, label %scalar.ph583.preheader

scalar.ph583.preheader:                           ; preds = %vector.memcheck528, %vector.scevcheck526, %.lr.ph379, %middle.block596
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck528 ], [ 1, %vector.scevcheck526 ], [ 1, %.lr.ph379 ], [ %i.cc, %middle.block596 ]
  br label %scalar.ph583

scalar.ph583:                                     ; preds = %scalar.ph583.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph583.preheader ] ; 9 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !42
  %i.ks = zext i32 %i.kr to i64
  %i.kt = icmp eq i64 %indvars.iv413, %i.ks
  br i1 %i.kt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph583
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.kw = load double, ptr %gep470, align 8, !tbaa !44
  %i.kx = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.ky = add i32 %i.jv, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kz ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !44
  %i.lc = fneg double %i.kv
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.lc, double %i.kw, double %i.lb)
  store double %i.ld, ptr %i.la, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph583
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.le = load double, ptr %gep468, align 8, !tbaa !44
  %i.lf = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.lg = add i32 %i.jv, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lh ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !44 ; 2 uses
  store double %i.lj, ptr %gep468, align 8, !tbaa !44
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !44
  %i.lm = fneg double %i.ll
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lj, double %i.le)
  store double %i.ln, ptr %i.li, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph583, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block596
  %i.lo = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.jq ; 2 uses
  %i.lp = load double, ptr %gep476, align 8, !tbaa !44
  %i.lq = fdiv double %i.lp, %i.lo                ; 2 uses
  store double %i.lq, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.jq ; 2 uses
  %i.lr = load double, ptr %gep478, align 8, !tbaa !44
  %i.ls = load double, ptr %i.t, align 8, !tbaa !44
  %i.lt = fneg double %i.ls
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lq, double %i.lr)
  %i.lv = load double, ptr %i.u, align 8, !tbaa !44
  %i.lw = fdiv double %i.lu, %i.lv
  store double %i.lw, ptr %gep478, align 8, !tbaa !44
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.lx = add i64 %i.jq, 1                        ; 2 uses
  %i.ly = add i64 %i.jq, 2                        ; 2 uses
  %invariant.gep471 = getelementptr [8 x i8], ptr %i.h, i64 %i.jq ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.lz = sub i35 %i.jo, %mul.result
  %i.ma = icmp sgt i35 %i.lz, %i.jo
  %i.mb = sub i35 %i.jp, %mul.result
  %i.mc = icmp sgt i35 %i.mb, %i.jp
  %i.md = or i1 %i.mc, %mul.overflow
  %i.me = or i1 %i.ma, %i.md
  br i1 %i.me, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0500 = icmp ult ptr %scevgep, %scevgep493
  %bound1501 = icmp ult ptr %scevgep491, %scevgep488
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx506.reass = or i1 %found.conflict502, %invariant.op698
  %bound0507 = icmp ult ptr %scevgep, %scevgep498
  %bound1508 = icmp ult ptr %scevgep496, %scevgep488
  %found.conflict509 = and i1 %bound0507, %bound1508
  %conflict.rdx510 = or i1 %conflict.rdx506.reass, %found.conflict509
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict513
  br i1 %conflict.rdx514, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.mf = sub i64 %i.x, %index                    ; 6 uses
  %i.mg = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mh, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mf
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -24
  %wide.load515 = load <4 x double>, ptr %i.mj, align 8, !tbaa !44, !alias.scope !66
  %i.mk = add i64 %i.lx, %i.mf
  %i.ml = shl i64 %i.mk, 32
  %i.mm = ashr exact i64 %i.ml, 29
  %i.mn = getelementptr inbounds i8, ptr %i.h, i64 %i.mm
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -24
  %wide.load516 = load <4 x double>, ptr %i.mo, align 8, !tbaa !44, !alias.scope !67
  %i.mp = fneg <4 x double> %wide.load515
  %i.mq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mp, <4 x double> %wide.load516, <4 x double> %wide.load)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mf
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -24
  %wide.load519 = load <4 x double>, ptr %i.ms, align 8, !tbaa !44, !alias.scope !68
  %i.mt = add i64 %i.ly, %i.mf
  %i.mu = shl i64 %i.mt, 32
  %i.mv = ashr exact i64 %i.mu, 29
  %i.mw = getelementptr inbounds i8, ptr %i.h, i64 %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -24
  %wide.load520 = load <4 x double>, ptr %i.mx, align 8, !tbaa !44, !alias.scope !69
  %i.my = fneg <4 x double> %wide.load519
  %i.mz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.my, <4 x double> %wide.load520, <4 x double> %i.mq)
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mf
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 -24
  %wide.load523 = load <4 x double>, ptr %i.nb, align 8, !tbaa !44, !alias.scope !70
  %i.nc = fdiv <4 x double> %i.mz, %wide.load523
  store <4 x double> %i.nc, ptr %i.mh, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nd = icmp eq i64 %index.next, %n.vec
  br i1 %i.nd, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv418.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph383 ], [ %i.cf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %scalar.ph ], [ %indvars.iv418.ph, %scalar.ph.preheader ] ; 8 uses
  %gep472 = getelementptr [8 x i8], ptr %invariant.gep471, i64 %indvars.iv418 ; 2 uses
  %i.ne = load double, ptr %gep472, align 8, !tbaa !44
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv418
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !44
  %i.nh = add i64 %i.lx, %indvars.iv418
  %sext = shl i64 %i.nh, 32
  %i.ni = ashr exact i64 %sext, 29
  %i.nj = getelementptr inbounds i8, ptr %i.h, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !44
  %i.nl = fneg double %i.ng
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.nk, double %i.ne)
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv418
  %i.no = load double, ptr %i.nn, align 8, !tbaa !44
  %i.np = add i64 %i.ly, %indvars.iv418
  %sext435 = shl i64 %i.np, 32
  %i.nq = ashr exact i64 %sext435, 29
  %i.nr = getelementptr inbounds i8, ptr %i.h, i64 %i.nq
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !44
  %i.nt = fneg double %i.no
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.ns, double %i.nm)
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv418
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !44
  %i.nx = fdiv double %i.nu, %i.nw
  store double %i.nx, ptr %gep472, align 8, !tbaa !44
  %indvars.iv.next419 = add nsw i64 %indvars.iv418, -1
  %i.ny = icmp samesign ugt i64 %indvars.iv418, 1
  br i1 %i.ny, label %scalar.ph, label %._crit_edge384, !llvm.loop !35

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond425.not, label %.loopexit356, label %.preheader354, !llvm.loop !36

bb.j:                                             ; preds = %bb.c
  br i1 %i.o, label %.preheader358, label %.preheader361

.preheader361:                                    ; preds = %bb.j
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp samesign ult i32 %i.i, 3
  %i.oa = add i32 %i.i, 1                         ; 2 uses
  %i.ob = sext i32 %i.i to i64
  %i.oc = sext i32 %i.f to i64                    ; 3 uses
  %i.od = add nuw i32 %i.k, 1
  %wide.trip.count403 = zext i32 %i.od to i64
  %wide.trip.count = zext i32 %i.oa to i64
  %i.oe = or i64 %i.oc, %i.g
  %i.of = shl nsw i64 %i.oe, 3
  %i.og = shl nsw i64 %i.oc, 3
  %i.oh = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.oi = getelementptr i8, ptr %8, i64 %i.of
  %i.oj = getelementptr i8, ptr %i.oi, i64 16
  %xtraiter = and i64 %i.oh, 1
  %i.ok = icmp eq i32 %i.oa, 4
  %unroll_iter = and i64 %i.oh, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod682 = trunc i64 %i.oh to i1
  br label %bb.l

.preheader358:                                    ; preds = %bb.j
  %i.ol = load double, ptr %4, align 8, !tbaa !44
  %i.om = sext i32 %i.f to i64                    ; 6 uses
  %i.on = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 2 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 8      ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !44
  %i.oq = fdiv double %i.op, %i.ol                ; 2 uses
  store double %i.oq, ptr %i.oo, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.k, label %.loopexit356

bb.k:                                             ; preds = %.preheader358
  %.not350370 = icmp eq i32 %i.i, 2
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.os = getelementptr i8, ptr %i.on, i64 16     ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !44
  %i.ou = load double, ptr %5, align 8, !tbaa !44
  %i.ov = fneg double %i.ou
  %i.ow = tail call double @llvm.fmuladd.f64(double %i.ov, double %i.oq, double %i.ot)
  %i.ox = load double, ptr %i.or, align 8, !tbaa !44
  %i.oy = fdiv double %i.ow, %i.ox
  store double %i.oy, ptr %i.os, align 8, !tbaa !44
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.k
  %invariant.gep457 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 3 uses
  %invariant.gep461 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 3 uses
  %i.oz = or i64 %i.om, %i.g
  %i.pa = shl nsw i64 %i.oz, 3
  %i.pb = getelementptr i8, ptr %8, i64 %i.pa
  %scevgep673 = getelementptr i8, ptr %i.pb, i64 16
  %load_initial = load double, ptr %scevgep673, align 8 ; 2 uses
  %i.pc = zext nneg i32 %i.i to i64               ; 2 uses
  %xtraiter683 = and i64 %i.pc, 1
  %i.pd = icmp eq i32 %i.i, 3
  br i1 %i.pd, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %i.pe = and i64 %i.pc, 2147483646
  %i.pf = add nsw i64 %i.pe, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod684.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod684.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.ro, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv405.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next406.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod685 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod685)
  %gep458.epil = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405.epil.init ; 2 uses
  %i.pg = load double, ptr %gep458.epil, align 8, !tbaa !44
  %i.ph = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405.epil.init
  %i.pi = getelementptr i8, ptr %i.ph, i64 -8
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !44
  %i.pk = fneg double %i.pj
  %i.pl = tail call double @llvm.fmuladd.f64(double %i.pk, double %store_forwarded.epil.init, double %i.pg)
  %i.pm = add nsw i64 %indvars.iv405.epil.init, -2 ; 2 uses
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.pm
  %i.po = load double, ptr %i.pn, align 8, !tbaa !44
  %gep462.epil = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.pm
  %i.pp = load double, ptr %gep462.epil, align 8, !tbaa !44
  %i.pq = fneg double %i.po
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pq, double %i.pp, double %i.pl)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405.epil.init
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !44
  %i.pu = fdiv double %i.pr, %i.pt
  store double %i.pu, ptr %gep458.epil, align 8, !tbaa !44
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %i.pv = zext nneg i32 %i.i to i64               ; 4 uses
  %invariant.gep463 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 3 uses
  %invariant.gep465 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 3 uses
  %i.pw = and i64 %i.pv, 1
  %lcmp.mod689.not.not = icmp eq i64 %i.pw, 0
  br i1 %lcmp.mod689.not.not, label %.lr.ph375.prol, label %.lr.ph375.prol.loopexit

.lr.ph375.prol:                                   ; preds = %.lr.ph375.preheader
  %indvars.iv.next411.prol = add nsw i64 %i.pv, -1 ; 4 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411.prol
  %i.py = load i32, ptr %i.px, align 4, !tbaa !42
  %gep464.prol = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411.prol ; 2 uses
  %i.pz = load double, ptr %gep464.prol, align 8, !tbaa !44
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411.prol
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !44
  %gep466.prol = getelementptr [8 x i8], ptr %invariant.gep465, i64 %i.pv
  %i.qc = load double, ptr %gep466.prol, align 8, !tbaa !44
  %i.qd = fneg double %i.qb
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.qc, double %i.pz)
  %i.qf = add nsw i32 %i.py, %i.f
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.qg ; 2 uses
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !44
  store double %i.qi, ptr %gep464.prol, align 8, !tbaa !44
  store double %i.qe, ptr %i.qh, align 8, !tbaa !44
  br label %.lr.ph375.prol.loopexit

.lr.ph375.prol.loopexit:                          ; preds = %.lr.ph375.prol, %.lr.ph375.preheader
  %indvars.iv410.unr = phi i64 [ %i.pv, %.lr.ph375.preheader ], [ %indvars.iv.next411.prol, %.lr.ph375.prol ]
  %i.qj = icmp eq i32 %i.i, 2
  br i1 %i.qj, label %.loopexit356, label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.ro, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter687 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter687.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.qk = load double, ptr %gep458, align 8, !tbaa !44
  %i.ql = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.qm = getelementptr i8, ptr %i.ql, i64 -8
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !44
  %i.qo = fneg double %i.qn
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.qo, double %store_forwarded, double %i.qk)
  %i.qq = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qq
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qq
  %i.qt = load double, ptr %gep462, align 8, !tbaa !44
  %i.qu = fneg double %i.qs
  %i.qv = tail call double @llvm.fmuladd.f64(double %i.qu, double %i.qt, double %i.qp)
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !44
  %i.qy = fdiv double %i.qv, %i.qx                ; 2 uses
  store double %i.qy, ptr %gep458, align 8, !tbaa !44
  %i.qz = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405
  %gep458.1 = getelementptr i8, ptr %i.qz, i64 8  ; 2 uses
  %i.ra = load double, ptr %gep458.1, align 8, !tbaa !44
  %i.rb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv405
  %i.rc = getelementptr i8, ptr %i.rb, i64 -8
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !44
  %i.re = fneg double %i.rd
  %i.rf = tail call double @llvm.fmuladd.f64(double %i.re, double %i.qy, double %i.ra)
  %i.rg = add nsw i64 %indvars.iv405, -1          ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.rg
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !44
  %gep462.1 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.rg
  %i.rj = load double, ptr %gep462.1, align 8, !tbaa !44
  %i.rk = fneg double %i.ri
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.rk, double %i.rj, double %i.rf)
  %i.rm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv405
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !44
  %i.ro = fdiv double %i.rl, %i.rn                ; 3 uses
  store double %i.ro, ptr %gep458.1, align 8, !tbaa !44
  %indvars.iv.next406.1 = add nuw nsw i64 %indvars.iv405, 2 ; 2 uses
  %niter687.next.1 = add i64 %niter687, 2
  %niter687.ncmp.1 = icmp eq i64 %niter687, %i.pf
  br i1 %niter687.ncmp.1, label %.lr.ph375.preheader.loopexit.unr-lcssa, label %.lr.ph373, !llvm.loop !37

.lr.ph375:                                        ; preds = %.lr.ph375.prol.loopexit, %.lr.ph375
  %indvars.iv410 = phi i64 [ %indvars.iv.next411.1, %.lr.ph375 ], [ %indvars.iv410.unr, %.lr.ph375.prol.loopexit ] ; 4 uses
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, -1 ; 4 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !42
  %gep464 = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411 ; 2 uses
  %i.rr = load double, ptr %gep464, align 8, !tbaa !44
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !44
  %gep466 = getelementptr [8 x i8], ptr %invariant.gep465, i64 %indvars.iv410
  %i.ru = load double, ptr %gep466, align 8, !tbaa !44
  %i.rv = fneg double %i.rt
  %i.rw = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.ru, double %i.rr)
  %i.rx = add nsw i32 %i.rq, %i.f
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ry ; 2 uses
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !44
  store double %i.sa, ptr %gep464, align 8, !tbaa !44
  store double %i.rw, ptr %i.rz, align 8, !tbaa !44
  %indvars.iv.next411.1 = add nsw i64 %indvars.iv410, -2 ; 4 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411.1
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !42
  %gep464.1 = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411.1 ; 2 uses
  %i.sd = load double, ptr %gep464.1, align 8, !tbaa !44
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411.1
  %i.sf = load double, ptr %i.se, align 8, !tbaa !44
  %gep466.1 = getelementptr [8 x i8], ptr %invariant.gep465, i64 %indvars.iv.next411
  %i.sg = load double, ptr %gep466.1, align 8, !tbaa !44
  %i.sh = fneg double %i.sf
  %i.si = tail call double @llvm.fmuladd.f64(double %i.sh, double %i.sg, double %i.sd)
  %i.sj = add nsw i32 %i.sc, %i.f
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.sk ; 2 uses
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !44
  store double %i.sm, ptr %gep464.1, align 8, !tbaa !44
  store double %i.si, ptr %i.sl, align 8, !tbaa !44
  %i.sn = icmp sgt i64 %indvars.iv410, 3
  br i1 %i.sn, label %.lr.ph375, label %.loopexit356, !llvm.loop !38

bb.l:                                             ; preds = %.preheader361, %._crit_edge
  %indvar674 = phi i64 [ 0, %.preheader361 ], [ %indvar.next675, %._crit_edge ] ; 2 uses
  %indvars.iv400 = phi i64 [ 1, %.preheader361 ], [ %indvars.iv.next401, %._crit_edge ] ; 2 uses
  %i.so = mul i64 %i.og, %indvar674
  %scevgep676 = getelementptr i8, ptr %i.oj, i64 %i.so
  %i.sp = load double, ptr %4, align 8, !tbaa !44
  %i.sq = mul nsw i64 %indvars.iv400, %i.oc       ; 7 uses
  %i.sr = getelementptr [8 x i8], ptr %i.h, i64 %i.sq ; 2 uses
  %i.ss = getelementptr i8, ptr %i.sr, i64 8      ; 2 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !44
  %i.su = fdiv double %i.st, %i.sp                ; 2 uses
  store double %i.su, ptr %i.ss, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.sv = getelementptr i8, ptr %i.sr, i64 16     ; 2 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !44
  %i.sx = load double, ptr %5, align 8, !tbaa !44
  %i.sy = fneg double %i.sx
  %i.sz = tail call double @llvm.fmuladd.f64(double %i.sy, double %i.su, double %i.sw)
  %i.ta = load double, ptr %i.nz, align 8, !tbaa !44
  %i.tb = fdiv double %i.sz, %i.ta
  store double %i.tb, ptr %i.sv, align 8, !tbaa !44
  br i1 %.not349363, label %.lr.ph368.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.sq ; 3 uses
  %invariant.gep447 = getelementptr [8 x i8], ptr %i.h, i64 %i.sq ; 3 uses
  %load_initial677 = load double, ptr %scevgep676, align 8 ; 2 uses
  br i1 %i.ok, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph368.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph368.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph368.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded678.epil.init = phi double [ %load_initial677, %.lr.ph.preheader ], [ %i.uv, %.lr.ph368.preheader.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph368.preheader.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod682)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.tc = load double, ptr %gep.epil, align 8, !tbaa !44
  %i.td = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.te = getelementptr i8, ptr %i.td, i64 -8
  %i.tf = load double, ptr %i.te, align 8, !tbaa !44
  %i.tg = fneg double %i.tf
  %i.th = tail call double @llvm.fmuladd.f64(double %i.tg, double %store_forwarded678.epil.init, double %i.tc)
  %i.ti = add nsw i64 %indvars.iv.epil.init, -2   ; 2 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ti
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !44
  %gep448.epil = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.ti
  %i.tl = load double, ptr %gep448.epil, align 8, !tbaa !44
  %i.tm = fneg double %i.tk
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.tm, double %i.tl, double %i.th)
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.tp = load double, ptr %i.to, align 8, !tbaa !44
  %i.tq = fdiv double %i.tn, %i.tp
  store double %i.tq, ptr %gep.epil, align 8, !tbaa !44
  br label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %.lr.ph.epil.preheader, %.lr.ph368.preheader.loopexit.unr-lcssa, %bb.m
  %invariant.gep449 = getelementptr [8 x i8], ptr %i.h, i64 %i.sq
  %invariant.gep451 = getelementptr [8 x i8], ptr %i.h, i64 %i.sq
  %invariant.gep453 = getelementptr [8 x i8], ptr %i.h, i64 %i.sq
  %invariant.gep455 = getelementptr [8 x i8], ptr %i.h, i64 %i.sq
  br label %.lr.ph368

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded678 = phi double [ %i.uv, %.lr.ph ], [ %load_initial677, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.tr = load double, ptr %gep, align 8, !tbaa !44
  %i.ts = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.tt = getelementptr i8, ptr %i.ts, i64 -8
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !44
  %i.tv = fneg double %i.tu
  %i.tw = tail call double @llvm.fmuladd.f64(double %i.tv, double %store_forwarded678, double %i.tr)
  %i.tx = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.tx
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !44
  %gep448 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.tx
  %i.ua = load double, ptr %gep448, align 8, !tbaa !44
  %i.ub = fneg double %i.tz
  %i.uc = tail call double @llvm.fmuladd.f64(double %i.ub, double %i.ua, double %i.tw)
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !44
  %i.uf = fdiv double %i.uc, %i.ue                ; 2 uses
  store double %i.uf, ptr %gep, align 8, !tbaa !44
  %i.ug = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ug, i64 8     ; 2 uses
  %i.uh = load double, ptr %gep.1, align 8, !tbaa !44
  %i.ui = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.uj = getelementptr i8, ptr %i.ui, i64 -8
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !44
  %i.ul = fneg double %i.uk
  %i.um = tail call double @llvm.fmuladd.f64(double %i.ul, double %i.uf, double %i.uh)
  %i.un = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.un
  %i.up = load double, ptr %i.uo, align 8, !tbaa !44
  %gep448.1 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.un
  %i.uq = load double, ptr %gep448.1, align 8, !tbaa !44
  %i.ur = fneg double %i.up
  %i.us = tail call double @llvm.fmuladd.f64(double %i.ur, double %i.uq, double %i.um)
  %i.ut = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !44
  %i.uv = fdiv double %i.us, %i.uu                ; 3 uses
  store double %i.uv, ptr %gep.1, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph368.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !39

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.p
  %indvars.iv397 = phi i64 [ %i.ob, %.lr.ph368.preheader ], [ %indvars.iv.next398, %bb.p ] ; 4 uses
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, -1 ; 7 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next398
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !42
  %i.uy = zext i32 %i.ux to i64
  %i.uz = icmp eq i64 %indvars.iv.next398, %i.uy
  br i1 %i.uz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph368
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next398
  %i.vb = load double, ptr %i.va, align 8, !tbaa !44
  %gep454.a = getelementptr [8 x i8], ptr %invariant.gep453, i64 %indvars.iv397
  %i.vc = load double, ptr %gep454.a, align 8, !tbaa !44
  %gep456.a = getelementptr [8 x i8], ptr %invariant.gep455, i64 %indvars.iv.next398 ; 2 uses
  %i.vd = load double, ptr %gep456.a, align 8, !tbaa !44
  %i.ve = fneg double %i.vb
  %i.vf = tail call double @llvm.fmuladd.f64(double %i.ve, double %i.vc, double %i.vd)
  store double %i.vf, ptr %gep456.a, align 8, !tbaa !44
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph368
  %gep450 = getelementptr [8 x i8], ptr %invariant.gep449, i64 %indvars.iv397 ; 2 uses
  %i.vg = load double, ptr %gep450, align 8, !tbaa !44 ; 2 uses
  %gep452 = getelementptr [8 x i8], ptr %invariant.gep451, i64 %indvars.iv.next398 ; 2 uses
  %i.vh = load double, ptr %gep452, align 8, !tbaa !44
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next398
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !44
  %i.vk = fneg double %i.vj
  %i.vl = tail call double @llvm.fmuladd.f64(double %i.vk, double %i.vg, double %i.vh)
  store double %i.vl, ptr %gep450, align 8, !tbaa !44
  store double %i.vg, ptr %gep452, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %10 = icmp samesign ugt i64 %indvars.iv397, 2
  br i1 %10, label %.lr.ph368, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.p, %bb.l
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count403
  %indvar.next675 = add i64 %indvar674, 1
  br i1 %exitcond404.not, label %.loopexit356, label %bb.l, !llvm.loop !41

.loopexit356:                                     ; preds = %._crit_edge, %.lr.ph375.prol.loopexit, %.lr.ph375, %._crit_edge384, %scalar.ph630, %middle.block670, %.preheader358, %bb.f, %.thread, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f64.p0(<4 x double>, ptr captures(none), <4 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!8 = distinct !{!8, !45}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !45, !53, !54}
!17 = distinct !{!17, !45, !53}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !45, !53, !54}
!26 = distinct !{!26, !45, !53}
!27 = distinct !{!27, i1 false, !"LVerDomain"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !45, !53, !54}
!35 = distinct !{!35, !45, !53}
!36 = distinct !{!36, !45}
!37 = distinct !{!37, !45}
!38 = distinct !{!38, !45}
!39 = distinct !{!39, !45}
!40 = distinct !{!40, !45}
!41 = distinct !{!41, !45}
!42 = !{!5, !5, i64 0}
!43 = !{!"double", !4, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!10}
!47 = !{!15, !14, !13, !12, !11}
!48 = !{!15}
!49 = !{!14}
!50 = !{!13}
!51 = !{!12}
!52 = !{!11}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!19}
!56 = !{!20}
!57 = !{!24, !23, !19, !22, !21}
!58 = !{!24}
!59 = !{!23, !19, !22, !21}
!60 = !{!22}
!61 = !{!21}
!62 = !{!23}
!63 = !{!19, !22, !21}
!64 = !{!28}
!65 = !{!33, !32, !31, !30, !29}
!66 = !{!33}
!67 = !{!32}
!68 = !{!31}
!69 = !{!30}
!70 = !{!29}
end_hunk_1
