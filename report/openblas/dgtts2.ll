Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgtts2?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dgtts2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -8 ; 7 uses
  %i.b = getelementptr inbounds i8, ptr %4, i64 -8 ; 11 uses
  %i.c = getelementptr inbounds i8, ptr %5, i64 -8 ; 10 uses
  %i.d = getelementptr inbounds i8, ptr %6, i64 -8 ; 10 uses
  %i.e = getelementptr inbounds i8, ptr %7, i64 -4 ; 5 uses
  %i.f = load i32, ptr %9, align 4, !tbaa !42     ; 29 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 10 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %8, i64 %i.g ; 42 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !42     ; 26 uses
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
  %scevgep533 = getelementptr i8, ptr %i.bm, i64 8 ; 5 uses
  %i.bn = shl nuw nsw i64 %wide.trip.count424, 3
  %i.bo = add nsw i64 %i.bn, -8
  %i.bp = mul i64 %i.bo, %i.y
  %i.bq = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.br = getelementptr i8, ptr %8, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bk
  %scevgep534 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 5 uses
  %scevgep535 = getelementptr i8, ptr %8, i64 %i.bk
  %i.bt = add i32 %i.f, 2
  %i.bu = getelementptr i8, ptr %8, i64 %i.bk
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bq
  %scevgep537 = getelementptr i8, ptr %i.bv, i64 -8
  %i.bw = shl nuw nsw i64 %wide.trip.count416, 2
  %i.bx = getelementptr i8, ptr %7, i64 %i.bw
  %scevgep539 = getelementptr i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.by = getelementptr i8, ptr %3, i64 %i.bq
  %scevgep540 = getelementptr i8, ptr %i.by, i64 -8 ; 2 uses
  %i.bz = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %min.iters.check595 = icmp ult i32 %i.i, 33
  %i.ca = trunc i64 %i.bh to i32
  %i.cb = icmp ugt i64 %i.bh, 4294967295
  %bound0550 = icmp ult ptr %scevgep533, %scevgep539
  %bound1551 = icmp ult ptr %7, %scevgep534
  %found.conflict552 = and i1 %bound0550, %bound1551
  %stride.check553 = icmp slt i32 %i.f, 0
  %i.cc = or i1 %found.conflict552, %stride.check553
  %bound0555 = icmp ult ptr %scevgep533, %scevgep540
  %bound1556 = icmp ult ptr %3, %scevgep534
  %found.conflict557 = and i1 %bound0555, %bound1556
  %invariant.op = or i1 %i.cc, %found.conflict557
  %bound0560 = icmp ult ptr %scevgep533, %scevgep534
  %invariant.op705 = or i1 %invariant.op, %bound0560
  %n.vec597 = and i64 %i.bz, -4                   ; 3 uses
  %i.cd = or disjoint i64 %n.vec597, 1
  %cmp.n608 = icmp eq i64 %i.bz, %n.vec597
  %min.iters.check = icmp ult i32 %i.v, 16
  %i.ce = trunc nsw i64 %i.ab to i35
  %mul.result = shl i35 %i.ce, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ab, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep489
  %bound1 = icmp ult ptr %5, %scevgep488
  %found.conflict = and i1 %bound0, %bound1
  %stride.check503 = icmp slt i32 %i.f, 0
  %invariant.op706 = or i1 %stride.check503, %found.conflict
  %bound0504 = icmp ult ptr %scevgep, %scevgep494
  %bound1505 = icmp ult ptr %6, %scevgep488
  %found.conflict506 = and i1 %bound0504, %bound1505
  %invariant.op707 = or i1 %invariant.op706, %found.conflict506
  %bound0514 = icmp ult ptr %scevgep, %scevgep499
  %bound1515 = icmp ult ptr %4, %scevgep488
  %found.conflict516 = and i1 %bound0514, %bound1515
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
  %xtraiter699 = and i64 %i.cn, 1
  %i.co = icmp eq i32 %i.i, 2
  br i1 %i.co, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter702 = and i64 %i.cn, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter703 = phi i64 [ 0, %.lr.ph389.new ], [ %niter703.next.1, %bb.e ]
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
  %i.kx = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.ky = add i32 %i.jv, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kz ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !44
  %i.lc = fneg double %i.kv
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.lc, double %i.kw, double %i.lb)
  store double %i.ld, ptr %i.la, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph594
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
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph594, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block607
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
  %conflict.rdx508.reass = or i1 %found.conflict502, %invariant.op707
  %bound0509 = icmp ult ptr %scevgep, %scevgep498
  %bound1510 = icmp ult ptr %scevgep496, %scevgep488
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx513 = or i1 %found.conflict511, %conflict.rdx508.reass
  %conflict.rdx518 = or i1 %found.conflict516, %conflict.rdx513
  br i1 %conflict.rdx518, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.mf = sub i64 %i.x, %index                    ; 6 uses
  %i.mg = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mh, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mf
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -24
  %wide.load519 = load <4 x double>, ptr %i.mj, align 8, !tbaa !44, !alias.scope !66
  %i.mk = add i64 %i.lx, %i.mf
  %i.ml = shl i64 %i.mk, 32
  %i.mm = ashr exact i64 %i.ml, 29
  %i.mn = getelementptr inbounds i8, ptr %i.h, i64 %i.mm
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -24
  %wide.load520 = load <4 x double>, ptr %i.mo, align 8, !tbaa !44, !alias.scope !67
  %i.mp = fneg <4 x double> %wide.load519
  %i.mq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mp, <4 x double> %wide.load520, <4 x double> %wide.load)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mf
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -24
  %wide.load523 = load <4 x double>, ptr %i.ms, align 8, !tbaa !44, !alias.scope !68
  %i.mt = add i64 %i.ly, %i.mf
  %i.mu = shl i64 %i.mt, 32
  %i.mv = ashr exact i64 %i.mu, 29
  %i.mw = getelementptr inbounds i8, ptr %i.h, i64 %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -24
  %wide.load524 = load <4 x double>, ptr %i.mx, align 8, !tbaa !44, !alias.scope !69
  %i.my = fneg <4 x double> %wide.load523
  %i.mz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.my, <4 x double> %wide.load524, <4 x double> %i.mq)
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mf
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 -24
  %wide.load527 = load <4 x double>, ptr %i.nb, align 8, !tbaa !44, !alias.scope !70
  %i.nc = fdiv <4 x double> %i.mz, %wide.load527
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
  %lcmp.mod693 = trunc i64 %i.oh to i1
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
  br i1 %.not350370, label %.lr.ph375.preheader.a, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.k
  %invariant.gep457 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 3 uses
  %invariant.gep461 = getelementptr [8 x i8], ptr %i.h, i64 %i.om ; 3 uses
  %i.oz = or i64 %i.om, %i.g
  %i.pa = shl nsw i64 %i.oz, 3
  %i.pb = getelementptr i8, ptr %8, i64 %i.pa
  %scevgep684 = getelementptr i8, ptr %i.pb, i64 16
  %load_initial = load double, ptr %scevgep684, align 8 ; 2 uses
  %i.pc = zext nneg i32 %i.i to i64               ; 2 uses
  %xtraiter694 = and i64 %i.pc, 1
  %i.pd = icmp eq i32 %i.i, 3
  br i1 %i.pd, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %i.pe = and i64 %i.pc, 2147483646
  %i.pf = add nsw i64 %i.pe, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  br i1 %lcmp.mod695.not, label %.lr.ph375.preheader.a, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.qz, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv405.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next406.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod696 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod696)
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
  br label %.lr.ph375.preheader.a

.lr.ph375.preheader.a:                            ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %10 = zext nneg i32 %i.i to i64
  %invariant.gep463.a = getelementptr [8 x i8], ptr %i.h, i64 %i.om
  %invariant.gep465.a = getelementptr [8 x i8], ptr %i.h, i64 %i.om
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.qz, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter698 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter698.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.pv = load double, ptr %gep458, align 8, !tbaa !44
  %i.pw = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.px = getelementptr i8, ptr %i.pw, i64 -8
  %i.py = load double, ptr %i.px, align 8, !tbaa !44
  %i.pz = fneg double %i.py
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.pz, double %store_forwarded, double %i.pv)
  %i.qb = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qb
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qb
  %i.qe = load double, ptr %gep462, align 8, !tbaa !44
  %i.qf = fneg double %i.qd
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.qe, double %i.qa)
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !44
  %i.qj = fdiv double %i.qg, %i.qi                ; 2 uses
  store double %i.qj, ptr %gep458, align 8, !tbaa !44
  %i.qk = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405
  %gep458.1 = getelementptr i8, ptr %i.qk, i64 8  ; 2 uses
  %i.ql = load double, ptr %gep458.1, align 8, !tbaa !44
  %i.qm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv405
  %i.qn = getelementptr i8, ptr %i.qm, i64 -8
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !44
  %i.qp = fneg double %i.qo
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qp, double %i.qj, double %i.ql)
  %i.qr = add nsw i64 %indvars.iv405, -1          ; 2 uses
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qr
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !44
  %gep462.1 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qr
  %i.qu = load double, ptr %gep462.1, align 8, !tbaa !44
  %i.qv = fneg double %i.qt
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qv, double %i.qu, double %i.qq)
  %i.qx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv405
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !44
  %i.qz = fdiv double %i.qw, %i.qy                ; 3 uses
  store double %i.qz, ptr %gep458.1, align 8, !tbaa !44
  %indvars.iv.next406.1 = add nuw nsw i64 %indvars.iv405, 2 ; 2 uses
  %niter698.next.1 = add i64 %niter698, 2
  %niter698.ncmp.1 = icmp eq i64 %niter698, %i.pf
  br i1 %niter698.ncmp.1, label %.lr.ph375.preheader.loopexit.unr-lcssa, label %.lr.ph373, !llvm.loop !37

.lr.ph375:                                        ; preds = %.lr.ph375.preheader.a, %.lr.ph375
  %indvars.iv410 = phi i64 [ %10, %.lr.ph375.preheader.a ], [ %indvars.iv.next411.a, %.lr.ph375 ] ; 3 uses
  %indvars.iv.next411.a = add nsw i64 %indvars.iv410, -1 ; 4 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411.a
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !42
  %gep464.a = getelementptr [8 x i8], ptr %invariant.gep463.a, i64 %indvars.iv.next411.a ; 2 uses
  %i.rc = load double, ptr %gep464.a, align 8, !tbaa !44
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411.a
  %i.re = load double, ptr %i.rd, align 8, !tbaa !44
  %gep466.a = getelementptr [8 x i8], ptr %invariant.gep465.a, i64 %indvars.iv410
  %i.rf = load double, ptr %gep466.a, align 8, !tbaa !44
  %i.rg = fneg double %i.re
  %i.rh = tail call double @llvm.fmuladd.f64(double %i.rg, double %i.rf, double %i.rc)
  %i.ri = add nsw i32 %i.rb, %i.f
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.rj ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !44
  store double %i.rl, ptr %gep464.a, align 8, !tbaa !44
  store double %i.rh, ptr %i.rk, align 8, !tbaa !44
  %11 = icmp samesign ugt i64 %indvars.iv410, 2
  br i1 %11, label %.lr.ph375, label %.loopexit356, !llvm.loop !38

bb.l:                                             ; preds = %.preheader361, %._crit_edge
  %indvar685 = phi i64 [ 0, %.preheader361 ], [ %indvar.next686, %._crit_edge ] ; 2 uses
  %indvars.iv400 = phi i64 [ 1, %.preheader361 ], [ %indvars.iv.next401, %._crit_edge ] ; 2 uses
  %i.rm = mul i64 %i.og, %indvar685
  %scevgep687 = getelementptr i8, ptr %i.oj, i64 %i.rm
  %i.rn = load double, ptr %4, align 8, !tbaa !44
  %i.ro = mul nsw i64 %indvars.iv400, %i.oc       ; 7 uses
  %i.rp = getelementptr [8 x i8], ptr %i.h, i64 %i.ro ; 2 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 8      ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !44
  %i.rs = fdiv double %i.rr, %i.rn                ; 2 uses
  store double %i.rs, ptr %i.rq, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.rt = getelementptr i8, ptr %i.rp, i64 16     ; 2 uses
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !44
  %i.rv = load double, ptr %5, align 8, !tbaa !44
  %i.rw = fneg double %i.rv
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.rs, double %i.ru)
  %i.ry = load double, ptr %i.nz, align 8, !tbaa !44
  %i.rz = fdiv double %i.rx, %i.ry
  store double %i.rz, ptr %i.rt, align 8, !tbaa !44
  br i1 %.not349363, label %.lr.ph368.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.ro ; 3 uses
  %invariant.gep447 = getelementptr [8 x i8], ptr %i.h, i64 %i.ro ; 3 uses
  %load_initial688 = load double, ptr %scevgep687, align 8 ; 2 uses
  br i1 %i.ok, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph368.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph368.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph368.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded689.epil.init = phi double [ %load_initial688, %.lr.ph.preheader ], [ %i.tt, %.lr.ph368.preheader.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph368.preheader.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod693)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.sa = load double, ptr %gep.epil, align 8, !tbaa !44
  %i.sb = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.sc = getelementptr i8, ptr %i.sb, i64 -8
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !44
  %i.se = fneg double %i.sd
  %i.sf = tail call double @llvm.fmuladd.f64(double %i.se, double %store_forwarded689.epil.init, double %i.sa)
  %i.sg = add nsw i64 %indvars.iv.epil.init, -2   ; 2 uses
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.sg
  %i.si = load double, ptr %i.sh, align 8, !tbaa !44
  %gep448.epil = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.sg
  %i.sj = load double, ptr %gep448.epil, align 8, !tbaa !44
  %i.sk = fneg double %i.si
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.sk, double %i.sj, double %i.sf)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !44
  %i.so = fdiv double %i.sl, %i.sn
  store double %i.so, ptr %gep.epil, align 8, !tbaa !44
  br label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %.lr.ph.epil.preheader, %.lr.ph368.preheader.loopexit.unr-lcssa, %bb.m
  %invariant.gep449 = getelementptr [8 x i8], ptr %i.h, i64 %i.ro
  %invariant.gep451 = getelementptr [8 x i8], ptr %i.h, i64 %i.ro
  %invariant.gep453 = getelementptr [8 x i8], ptr %i.h, i64 %i.ro
  %invariant.gep455 = getelementptr [8 x i8], ptr %i.h, i64 %i.ro
  br label %.lr.ph368

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded689 = phi double [ %i.tt, %.lr.ph ], [ %load_initial688, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.sp = load double, ptr %gep, align 8, !tbaa !44
  %i.sq = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.sr = getelementptr i8, ptr %i.sq, i64 -8
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !44
  %i.st = fneg double %i.ss
  %i.su = tail call double @llvm.fmuladd.f64(double %i.st, double %store_forwarded689, double %i.sp)
  %i.sv = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.sv
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !44
  %gep448 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.sv
  %i.sy = load double, ptr %gep448, align 8, !tbaa !44
  %i.sz = fneg double %i.sx
  %i.ta = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.sy, double %i.su)
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !44
  %i.td = fdiv double %i.ta, %i.tc                ; 2 uses
  store double %i.td, ptr %gep, align 8, !tbaa !44
  %i.te = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.te, i64 8     ; 2 uses
  %i.tf = load double, ptr %gep.1, align 8, !tbaa !44
  %i.tg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.th = getelementptr i8, ptr %i.tg, i64 -8
  %i.ti = load double, ptr %i.th, align 8, !tbaa !44
  %i.tj = fneg double %i.ti
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.tj, double %i.td, double %i.tf)
  %i.tl = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.tl
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !44
  %gep448.1 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.tl
  %i.to = load double, ptr %gep448.1, align 8, !tbaa !44
  %i.tp = fneg double %i.tn
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.tp, double %i.to, double %i.tk)
  %i.tr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !44
  %i.tt = fdiv double %i.tq, %i.ts                ; 3 uses
  store double %i.tt, ptr %gep.1, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph368.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !39

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.p
  %indvars.iv397 = phi i64 [ %i.ob, %.lr.ph368.preheader ], [ %indvars.iv.next398, %bb.p ] ; 4 uses
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, -1 ; 7 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next398
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !42
  %i.tw = zext i32 %i.tv to i64
  %i.tx = icmp eq i64 %indvars.iv.next398, %i.tw
  br i1 %i.tx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph368
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next398
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !44
  %gep454 = getelementptr [8 x i8], ptr %invariant.gep453, i64 %indvars.iv397
  %i.ua = load double, ptr %gep454, align 8, !tbaa !44
  %gep456 = getelementptr [8 x i8], ptr %invariant.gep455, i64 %indvars.iv.next398 ; 2 uses
  %i.ub = load double, ptr %gep456, align 8, !tbaa !44
  %i.uc = fneg double %i.tz
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.uc, double %i.ua, double %i.ub)
  store double %i.ud, ptr %gep456, align 8, !tbaa !44
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph368
  %gep450 = getelementptr [8 x i8], ptr %invariant.gep449, i64 %indvars.iv397 ; 2 uses
  %i.ue = load double, ptr %gep450, align 8, !tbaa !44 ; 2 uses
  %gep452 = getelementptr [8 x i8], ptr %invariant.gep451, i64 %indvars.iv.next398 ; 2 uses
  %i.uf = load double, ptr %gep452, align 8, !tbaa !44
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next398
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !44
  %i.ui = fneg double %i.uh
  %i.uj = tail call double @llvm.fmuladd.f64(double %i.ui, double %i.ue, double %i.uf)
  store double %i.uj, ptr %gep450, align 8, !tbaa !44
  store double %i.ue, ptr %gep452, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.uk = icmp samesign ugt i64 %indvars.iv397, 2
  br i1 %i.uk, label %.lr.ph368, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.p, %bb.l
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count403
  %indvar.next686 = add i64 %indvar685, 1
  br i1 %exitcond404.not, label %.loopexit356, label %bb.l, !llvm.loop !41

.loopexit356:                                     ; preds = %._crit_edge, %.lr.ph375, %._crit_edge384, %scalar.ph641, %middle.block681, %.preheader358, %bb.f, %.thread, %bb.a, %bb.b
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
!9 = distinct !{!9, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !45, !53, !54}
!17 = distinct !{!17, !45, !53}
!18 = distinct !{!18, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !45, !53, !54}
!26 = distinct !{!26, !45, !53}
!27 = distinct !{!27, !"LVerDomain"}
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
