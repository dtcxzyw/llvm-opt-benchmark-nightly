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
  %scevgep533.a = getelementptr i8, ptr %i.bm, i64 8 ; 5 uses
  %i.bn = shl nuw nsw i64 %wide.trip.count424, 3
  %i.bo = add nsw i64 %i.bn, -8
  %i.bp = mul i64 %i.bo, %i.y
  %i.bq = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.br = getelementptr i8, ptr %8, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bk
  %scevgep534.a = getelementptr i8, ptr %i.bs, i64 %i.bq ; 5 uses
  %scevgep535.a = getelementptr i8, ptr %8, i64 %i.bk
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
  %bound0550 = icmp ult ptr %scevgep533.a, %scevgep539
  %bound1551 = icmp ult ptr %7, %scevgep534.a
  %found.conflict552 = and i1 %bound0550, %bound1551
  %stride.check553 = icmp slt i32 %i.f, 0
  %i.cc = or i1 %found.conflict552, %stride.check553
  %bound0555 = icmp ult ptr %scevgep533.a, %scevgep540
  %bound1556 = icmp ult ptr %3, %scevgep534.a
  %found.conflict557 = and i1 %bound0555, %bound1556
  %invariant.op = or i1 %i.cc, %found.conflict557
  %bound0560 = icmp ult ptr %scevgep533.a, %scevgep534.a
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
  %i.dr = getelementptr [8 x i8], ptr %3, i64 %indvars.iv426
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !44
  %i.dt = add nsw i32 %i.di, %i.f
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !44 ; 2 uses
  %i.dx = fneg double %i.ds
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dq)
  %gep480.1 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv.next427
  store double %i.dw, ptr %gep480.1, align 8, !tbaa !44
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.1
  store double %i.dy, ptr %gep482.1, align 8, !tbaa !44
  %niter703.next.1 = add nuw i64 %niter703, 2     ; 2 uses
  %niter703.ncmp.1 = icmp eq i64 %niter703.next.1, %unroll_iter702
  br i1 %niter703.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

.thread:                                          ; preds = %.preheader
  %i.dz = load double, ptr %i.q, align 8, !tbaa !44
  %i.ea = add nsw i32 %i.f, %i.i
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !44
  %i.ee = fdiv double %i.ed, %i.dz
  store double %i.ee, ptr %i.ec, align 8, !tbaa !44
  br label %.loopexit356

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod701 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod701)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426.epil.init
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.epil = add nuw nsw i64 %indvars.iv426.epil.init, 1 ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv426.epil.init to i32
  %i.ei = add i32 %i.f, %i.eh
  %i.ej = trunc nuw nsw i64 %indvars.iv.next427.epil to i32
  %i.ek = add i32 %i.ei, %i.ej
  %i.el = sub i32 %i.ek, %i.eg
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !44
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426.epil.init
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !44
  %i.er = add nsw i32 %i.eg, %i.f
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !44 ; 2 uses
  %i.ev = fneg double %i.eq
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.eu, double %i.eo)
  %gep480.epil = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426.epil.init
  store double %i.eu, ptr %gep480.epil, align 8, !tbaa !44
  %gep482.epil = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.epil
  store double %i.ew, ptr %gep482.epil, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ex = load double, ptr %i.q, align 8, !tbaa !44
  %i.ey = add nsw i32 %i.f, %i.i
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !44
  %i.fc = fdiv double %i.fb, %i.ex                ; 2 uses
  store double %i.fc, ptr %i.fa, align 8, !tbaa !44
  %i.fd = add nsw i32 %i.f, %i.ci
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fe ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !44
  %i.fh = load double, ptr %i.ck, align 8, !tbaa !44
  %i.fi = fneg double %i.fh
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fc, double %i.fg)
  %i.fk = load double, ptr %i.cl, align 8, !tbaa !44
  %i.fl = fdiv double %i.fj, %i.fk
  store double %i.fl, ptr %i.ff, align 8, !tbaa !44
  br i1 %i.ch, label %.lr.ph393, label %.loopexit356

.lr.ph393:                                        ; preds = %bb.f
  %i.fm = add i32 %i.f, 1                         ; 2 uses
  %i.fn = add i32 %i.f, 2                         ; 2 uses
  %i.fo = zext i32 %i.cg to i64                   ; 10 uses
  %i.fp = sext i32 %i.f to i64
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.h, i64 %i.fp ; 2 uses
  %min.iters.check642 = icmp ult i32 %i.cg, 28
  br i1 %min.iters.check642, label %scalar.ph641.preheader, label %vector.scevcheck610

vector.scevcheck610:                              ; preds = %.lr.ph393
  %i.fq = add nsw i64 %i.fo, -1                   ; 2 uses
  %i.fr = add i32 %i.f, %i.i
  %i.fs = add i32 %i.fr, -1                       ; 2 uses
  %i.ft = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fu = sub i32 %i.fs, %i.ft
  %i.fv = icmp sgt i32 %i.fu, %i.fs
  %i.fw = add i32 %i.f, %i.i                      ; 2 uses
  %i.fx = sub i32 %i.fw, %i.ft
  %i.fy = icmp sgt i32 %i.fx, %i.fw
  %i.fz = icmp ugt i64 %i.fq, 4294967295
  %i.ga = or i1 %i.fy, %i.fz
  %i.gb = or i1 %i.fv, %i.ga
  br i1 %i.gb, label %scalar.ph641.preheader, label %vector.memcheck643

vector.memcheck643:                               ; preds = %vector.scevcheck610
  %i.gc = or i64 %i.cm, %i.g
  %i.gd = shl nsw i64 %i.gc, 3
  %i.ge = getelementptr i8, ptr %8, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 8      ; 5 uses
  %i.gg = shl nuw nsw i64 %i.fo, 3                ; 5 uses
  %i.gh = or i64 %i.cm, %i.g
  %i.gi = add nsw i64 %i.gh, %i.fo
  %i.gj = shl nsw i64 %i.gi, 3
  %i.gk = getelementptr i8, ptr %8, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 8      ; 5 uses
  %i.gm = getelementptr i8, ptr %5, i64 %i.gg
  %i.gn = add i32 %i.f, %i.i                      ; 2 uses
  %i.go = add i32 %i.gn, -1
  %i.gp = sext i32 %i.go to i64
  %i.gq = add nsw i64 %i.gp, %i.g
  %i.gr = shl nsw i64 %i.gq, 3
  %i.gs = add nsw i64 %i.gr, 8                    ; 2 uses
  %i.gt = sub nsw i64 %i.gs, %i.gg
  %i.gu = getelementptr i8, ptr %8, i64 %i.gt
  %i.gv = getelementptr i8, ptr %8, i64 %i.gs
  %i.gw = getelementptr i8, ptr %6, i64 %i.gg
  %i.gx = sext i32 %i.gn to i64
  %i.gy = add nsw i64 %i.gx, %i.g
  %i.gz = shl nsw i64 %i.gy, 3
  %i.ha = add nsw i64 %i.gz, 8                    ; 2 uses
  %i.hb = sub nsw i64 %i.ha, %i.gg
  %i.hc = getelementptr i8, ptr %8, i64 %i.hb
  %i.hd = getelementptr i8, ptr %8, i64 %i.ha
  %i.he = getelementptr i8, ptr %4, i64 %i.gg
  %bound0644.a = icmp ult ptr %i.gf, %i.gm
  %bound1645.a = icmp ult ptr %5, %i.gl
  %found.conflict646.a = and i1 %bound0644.a, %bound1645.a
  %bound0647 = icmp ult ptr %i.gf, %i.gv
  %bound1648 = icmp ult ptr %i.gu, %i.gl
  %found.conflict649 = and i1 %bound0647, %bound1648
  %conflict.rdx650 = or i1 %found.conflict646.a, %found.conflict649
  %bound0651 = icmp ult ptr %i.gf, %i.gw
  %bound1652 = icmp ult ptr %6, %i.gl
  %found.conflict653 = and i1 %bound0651, %bound1652
  %conflict.rdx654 = or i1 %conflict.rdx650, %found.conflict653
  %bound0655 = icmp ult ptr %i.gf, %i.hd
  %bound1656 = icmp ult ptr %i.hc, %i.gl
  %found.conflict657 = and i1 %bound0655, %bound1656
  %conflict.rdx658 = or i1 %conflict.rdx654, %found.conflict657
  %bound0659 = icmp ult ptr %i.gf, %i.he
  %bound1660 = icmp ult ptr %4, %i.gl
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx662 = or i1 %conflict.rdx658, %found.conflict661
  br i1 %conflict.rdx662, label %scalar.ph641.preheader, label %vector.ph663

vector.ph663:                                     ; preds = %vector.memcheck643
  %n.vec664 = and i64 %i.fo, 4294967292           ; 2 uses
  %i.hf = and i64 %i.fo, 3
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph663
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next680, %vector.body665 ] ; 2 uses
  %i.hg = sub i64 %i.fo, %index666                ; 5 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24    ; 2 uses
  %wide.load667 = load <4 x double>, ptr %i.hi, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -24
  %wide.load669 = load <4 x double>, ptr %i.hk, align 8, !tbaa !44, !alias.scope !48
  %i.hl = trunc nuw nsw i64 %i.hg to i32          ; 2 uses
  %i.hm = add i32 %i.fm, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -24
  %wide.load670 = load <4 x double>, ptr %i.hp, align 8, !tbaa !44, !alias.scope !49
  %i.hq = fneg <4 x double> %wide.load669
  %i.hr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hq, <4 x double> %wide.load670, <4 x double> %wide.load667)
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hg
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -24
  %wide.load673 = load <4 x double>, ptr %i.ht, align 8, !tbaa !44, !alias.scope !50
  %i.hu = add i32 %i.fn, %i.hl
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -24
  %wide.load674 = load <4 x double>, ptr %i.hx, align 8, !tbaa !44, !alias.scope !51
  %i.hy = fneg <4 x double> %wide.load673
  %i.hz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hy, <4 x double> %wide.load674, <4 x double> %i.hr)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -24
  %wide.load677 = load <4 x double>, ptr %i.ib, align 8, !tbaa !44, !alias.scope !52
  %i.ic = fdiv <4 x double> %i.hz, %wide.load677
  store <4 x double> %i.ic, ptr %i.hi, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next680 = add nuw i64 %index666, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next680, %n.vec664
  br i1 %i.id, label %middle.block681, label %vector.body665, !llvm.loop !16

middle.block681:                                  ; preds = %vector.body665
  %cmp.n682 = icmp eq i64 %n.vec664, %i.fo
  br i1 %cmp.n682, label %.loopexit356, label %scalar.ph641.preheader

scalar.ph641.preheader:                           ; preds = %vector.memcheck643, %vector.scevcheck610, %.lr.ph393, %middle.block681
  %indvars.iv431.ph = phi i64 [ %i.fo, %vector.memcheck643 ], [ %i.fo, %vector.scevcheck610 ], [ %i.fo, %.lr.ph393 ], [ %i.hf, %middle.block681 ]
  br label %scalar.ph641

scalar.ph641:                                     ; preds = %scalar.ph641.preheader, %scalar.ph641
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph641 ], [ %indvars.iv431.ph, %scalar.ph641.preheader ] ; 7 uses
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv431 ; 2 uses
  %i.ie = load double, ptr %gep484, align 8, !tbaa !44
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv431
  %i.ig = load double, ptr %i.if, align 8, !tbaa !44
  %i.ih = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  %i.ii = add i32 %i.fm, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !44
  %i.im = fneg double %i.ig
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double %i.il, double %i.ie)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv431
  %i.ip = load double, ptr %i.io, align 8, !tbaa !44
  %i.iq = add i32 %i.fn, %i.ih
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !44
  %i.iu = fneg double %i.ip
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.it, double %i.in)
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv431
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !44
  %i.iy = fdiv double %i.iv, %i.ix
  store double %i.iy, ptr %gep484, align 8, !tbaa !44
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1
  %i.iz = icmp samesign ugt i64 %indvars.iv431, 1
  br i1 %i.iz, label %scalar.ph641, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.ja = trunc i35 %indvar to i32
  %i.jb = mul i32 %i.f, %i.ja
  %i.jc = add i32 %i.jb, %i.bt
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 3                    ; 2 uses
  %scevgep536 = getelementptr i8, ptr %scevgep535.a, i64 %i.je ; 5 uses
  %scevgep538 = getelementptr i8, ptr %scevgep537, i64 %i.je ; 5 uses
  %i.jf = trunc i35 %indvar to i32
  %i.jg = mul i32 %i.f, %i.jf
  %i.jh = add i32 %i.jg, %i.bi                    ; 2 uses
  %i.ji = mul i35 %i.bc, %indvar                  ; 2 uses
  %i.jj = add i35 %i.bb, %i.ji
  %i.jk = sext i35 %i.jj to i64                   ; 2 uses
  %scevgep491 = getelementptr i8, ptr %scevgep490, i64 %i.jk
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.jk
  %i.jl = add i35 %i.bg, %i.ji
  %i.jm = sext i35 %i.jl to i64                   ; 2 uses
  %scevgep496 = getelementptr i8, ptr %scevgep495, i64 %i.jm
  %scevgep498 = getelementptr i8, ptr %scevgep497, i64 %i.jm
  %i.jn = mul i35 %i.ah, %indvar                  ; 2 uses
  %i.jo = add i35 %i.ag, %i.jn                    ; 2 uses
  %i.jp = add i35 %i.aj, %i.jn                    ; 2 uses
  %i.jq = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jr = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.jq ; 2 uses
  %i.js = load double, ptr %gep474, align 8, !tbaa !44
  %i.jt = fdiv double %i.js, %i.jr
  store double %i.jt, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.ju = trunc nsw i64 %i.jq to i32
  %i.jv = add i32 %i.ju, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.jq ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.jq ; 2 uses
  br i1 %min.iters.check595, label %scalar.ph594.preheader, label %vector.scevcheck530

vector.scevcheck530:                              ; preds = %.lr.ph379
  %i.jw = add i32 %i.jh, %i.ca
  %i.jx = icmp slt i32 %i.jw, %i.jh
  %i.jy = or i1 %i.jx, %i.cb
  br i1 %i.jy, label %scalar.ph594.preheader, label %vector.memcheck532

vector.memcheck532:                               ; preds = %vector.scevcheck530
  %bound0541 = icmp ult ptr %scevgep533.a, %scevgep538
  %bound1542 = icmp ult ptr %scevgep536, %scevgep534.a
  %found.conflict543 = and i1 %bound0541, %bound1542
  %conflict.rdx564.reass = or i1 %found.conflict543, %invariant.op705
  %bound0565 = icmp ult ptr %scevgep536, %scevgep538
  %conflict.rdx567 = or i1 %conflict.rdx564.reass, %bound0565
  %bound0568 = icmp ult ptr %scevgep536, %scevgep539
  %bound1569 = icmp ult ptr %7, %scevgep538
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  %bound0572 = icmp ult ptr %scevgep536, %scevgep540
  %bound1573 = icmp ult ptr %3, %scevgep538
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  %bound0589 = icmp ult ptr %scevgep536, %scevgep534.a
  %bound1590 = icmp ult ptr %scevgep533.a, %scevgep538
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx593 = or i1 %found.conflict591, %conflict.rdx575
  br i1 %conflict.rdx593, label %scalar.ph594.preheader, label %vector.body598

vector.body598:                                   ; preds = %vector.memcheck532, %vector.body598
  %index599 = phi i64 [ %index.next606, %vector.body598 ], [ 0, %vector.memcheck532 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body598 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck532 ] ; 2 uses
  %i.jz = or disjoint i64 %index599, 1            ; 3 uses
  %i.ka = getelementptr [4 x i8], ptr %7, i64 %index599
  %wide.load600 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !42, !alias.scope !55
  %i.kb = zext <4 x i32> %wide.load600 to <4 x i64>
  %i.kc = icmp eq <4 x i64> %vec.ind, %i.kb       ; 5 uses
  %i.kd = xor <4 x i1> %i.kc, splat (i1 true)     ; 5 uses
  %i.ke = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.jz ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ke, <4 x i1> %i.kd, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kf = trunc i64 %i.jz to i32
  %i.kg = add i32 %i.jv, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr [8 x i8], ptr %i.h, i64 %i.kh ; 4 uses
  %wide.masked.load601 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ki, <4 x i1> %i.kd, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load601, ptr align 8 %i.ke, <4 x i1> %i.kd), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kj = getelementptr [8 x i8], ptr %3, i64 %index599 ; 2 uses
  %wide.masked.load602 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.kd, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kk = fneg <4 x double> %wide.masked.load602
  %i.kl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %wide.masked.load601, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kl, ptr align 8 %i.ki, <4 x i1> %i.kd), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load603 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.kc, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.km = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.jz
  %wide.masked.load604 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.km, <4 x i1> %i.kc, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load605 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ki, <4 x i1> %i.kc, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.kn = fneg <4 x double> %wide.masked.load603
  %i.ko = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kn, <4 x double> %wide.masked.load604, <4 x double> %wide.masked.load605)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ko, ptr align 8 %i.ki, <4 x i1> %i.kc), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next606 = add nuw i64 %index599, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kp = icmp eq i64 %index.next606, %n.vec597
  br i1 %i.kp, label %middle.block607, label %vector.body598, !llvm.loop !25

middle.block607:                                  ; preds = %vector.body598
  br i1 %cmp.n608, label %._crit_edge380, label %scalar.ph594.preheader

scalar.ph594.preheader:                           ; preds = %vector.memcheck532, %vector.scevcheck530, %.lr.ph379, %middle.block607
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck532 ], [ 1, %vector.scevcheck530 ], [ 1, %.lr.ph379 ], [ %i.cd, %middle.block607 ]
  br label %scalar.ph594

scalar.ph594:                                     ; preds = %scalar.ph594.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph594.preheader ] ; 9 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !42
  %i.ks = zext i32 %i.kr to i64
  %i.kt = icmp eq i64 %indvars.iv413, %i.ks
  br i1 %i.kt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph594
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
  %wide.load519.a = load <4 x double>, ptr %i.mj, align 8, !tbaa !44, !alias.scope !66
  %i.mk = add i64 %i.lx, %i.mf
  %i.ml = shl i64 %i.mk, 32
  %i.mm = ashr exact i64 %i.ml, 29
  %i.mn = getelementptr inbounds i8, ptr %i.h, i64 %i.mm
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -24
  %wide.load520.a = load <4 x double>, ptr %i.mo, align 8, !tbaa !44, !alias.scope !67
  %i.mp = fneg <4 x double> %wide.load519.a
  %i.mq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mp, <4 x double> %wide.load520.a, <4 x double> %wide.load)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mf
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -24
  %wide.load523.a = load <4 x double>, ptr %i.ms, align 8, !tbaa !44, !alias.scope !68
  %i.mt = add i64 %i.ly, %i.mf
  %i.mu = shl i64 %i.mt, 32
  %i.mv = ashr exact i64 %i.mu, 29
  %i.mw = getelementptr inbounds i8, ptr %i.h, i64 %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -24
  %wide.load524 = load <4 x double>, ptr %i.mx, align 8, !tbaa !44, !alias.scope !69
  %i.my = fneg <4 x double> %wide.load523.a
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
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

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
  br i1 %lcmp.mod695.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.ra, %.lr.ph375.preheader.loopexit.unr-lcssa ]
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
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %i.pv = zext nneg i32 %i.i to i64
  %invariant.gep463 = getelementptr [8 x i8], ptr %i.h, i64 %i.om
  %invariant.gep465 = getelementptr [8 x i8], ptr %i.h, i64 %i.om
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.ra, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter698 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter698.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.pw = load double, ptr %gep458, align 8, !tbaa !44
  %i.px = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.py = getelementptr i8, ptr %i.px, i64 -8
  %i.pz = load double, ptr %i.py, align 8, !tbaa !44
  %i.qa = fneg double %i.pz
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.qa, double %store_forwarded, double %i.pw)
  %i.qc = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qc
  %i.qf = load double, ptr %gep462, align 8, !tbaa !44
  %i.qg = fneg double %i.qe
end_hunk_0
