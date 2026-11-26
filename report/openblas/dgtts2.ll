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
  %i.h = getelementptr [8 x i8], ptr %8, i64 %i.g ; 45 uses
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
  %i.ak = shl nsw i64 %i.x, 3                     ; 5 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.ak
  %i.al = sext i32 %i.f to i35                    ; 3 uses
  %i.am = sext i32 %i.v to i35                    ; 2 uses
  %i.an = add nsw i35 %i.al, %i.am
  %i.ao = shl i35 %i.an, 3
  %i.ap = add i35 %i.ao, 16
  %scevgep515 = getelementptr i8, ptr %6, i64 %i.ak
  %i.aq = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.ar = getelementptr i8, ptr %8, i64 %i.aq
  %scevgep516 = getelementptr i8, ptr %i.ar, i64 8 ; 2 uses
  %i.as = shl nsw i35 %i.al, 3
  %i.at = add nsw i35 %i.al, %i.am
  %i.au = shl i35 %i.at, 3
  %i.av = add i35 %i.au, 8
  %i.aw = add nsw i64 %i.aq, 8
  %i.ax = sub nsw i64 %i.aw, %i.ak
  %scevgep517 = getelementptr i8, ptr %8, i64 %i.ax ; 2 uses
  %scevgep518 = getelementptr i8, ptr %5, i64 %i.ak
  %i.ay = shl nuw nsw i64 %wide.trip.count424, 3
  %i.az = add nsw i64 %i.ay, -8
  %i.ba = mul i64 %i.az, %i.y
  %i.bb = getelementptr i8, ptr %8, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.aq
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ak
  %scevgep519 = getelementptr i8, ptr %i.bd, i64 8 ; 5 uses
  %i.be = or i64 %i.y, %i.g
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = getelementptr i8, ptr %8, i64 %i.bf
  %scevgep520 = getelementptr i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bh = add nsw i64 %wide.trip.count416, -2     ; 2 uses
  %i.bi = add i32 %i.f, 2
  %i.bj = shl nsw i64 %i.y, 3
  %i.bk = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.bl = getelementptr i8, ptr %3, i64 %i.bk
  %scevgep604 = getelementptr i8, ptr %i.bl, i64 -8 ; 2 uses
  %i.bm = shl nuw nsw i64 %wide.trip.count416, 2
  %i.bn = getelementptr i8, ptr %7, i64 %i.bm
  %scevgep605 = getelementptr i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bo = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.bp = getelementptr i8, ptr %8, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bk
  %scevgep606 = getelementptr i8, ptr %i.bq, i64 -8
  %i.br = add i32 %i.f, 2
  %i.bs = shl nuw nsw i64 %wide.trip.count424, 3
  %i.bt = add nsw i64 %i.bs, -8
  %i.bu = mul i64 %i.bt, %i.y
  %i.bv = getelementptr i8, ptr %8, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bo
  %scevgep607 = getelementptr i8, ptr %i.bw, i64 %i.bk ; 4 uses
  %i.bx = getelementptr i8, ptr %8, i64 %i.bj
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bo
  %scevgep608 = getelementptr i8, ptr %i.by, i64 8 ; 4 uses
  %i.bz = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %min.iters.check610 = icmp ult i32 %i.i, 25
  %i.ca = trunc i64 %i.bh to i32
  %i.cb = icmp ugt i64 %i.bh, 4294967295
  %stride.check615 = icmp slt i32 %i.f, 0
  %bound0617 = icmp ult ptr %scevgep608, %scevgep605
  %bound1618 = icmp ult ptr %7, %scevgep607
  %found.conflict619 = and i1 %bound0617, %bound1618
  %invariant.op = or i1 %stride.check615, %found.conflict619
  %bound0621 = icmp ult ptr %scevgep608, %scevgep604
  %bound1622 = icmp ult ptr %3, %scevgep607
  %found.conflict623 = and i1 %bound0621, %bound1622
  %invariant.op755 = or i1 %invariant.op, %found.conflict623
  %bound0625 = icmp ult ptr %scevgep608, %scevgep607
  %invariant.op756 = or i1 %invariant.op755, %bound0625
  %n.vec645 = and i64 %i.bz, -4                   ; 3 uses
  %i.cc = or disjoint i64 %n.vec645, 1
  %cmp.n656 = icmp eq i64 %i.bz, %n.vec645
  %min.iters.check = icmp ult i32 %i.v, 16
  %i.cd = trunc nsw i64 %i.ab to i35
  %mul.result = shl i35 %i.cd, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ab, 4294967295
  %bound0 = icmp ult ptr %scevgep520, %scevgep518
  %bound1 = icmp ult ptr %5, %scevgep519
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.f, 0
  %i.ce = or i1 %found.conflict, %stride.check
  %bound0524 = icmp ult ptr %scevgep520, %scevgep515
  %bound1525 = icmp ult ptr %6, %scevgep519
  %found.conflict526 = and i1 %bound0524, %bound1525
  %invariant.op757 = or i1 %i.ce, %found.conflict526
  %bound0532 = icmp ult ptr %scevgep520, %scevgep
  %bound1533 = icmp ult ptr %4, %scevgep519
  %found.conflict534 = and i1 %bound0532, %bound1533
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
  %xtraiter749 = and i64 %i.cn, 1
  %i.co = icmp eq i32 %i.i, 2
  br i1 %i.co, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter752 = and i64 %i.cn, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter753 = phi i64 [ 0, %.lr.ph389.new ], [ %niter753.next.1, %bb.e ]
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
  %niter753.next.1 = add nuw i64 %niter753, 2     ; 2 uses
  %niter753.ncmp.1 = icmp eq i64 %niter753.next.1, %unroll_iter752
  br i1 %niter753.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

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
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  br i1 %lcmp.mod750.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod751 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod751)
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
  %min.iters.check690 = icmp ult i32 %i.cg, 28
  br i1 %min.iters.check690, label %scalar.ph689.preheader, label %vector.scevcheck658

vector.scevcheck658:                              ; preds = %.lr.ph393
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
  br i1 %i.gb, label %scalar.ph689.preheader, label %vector.memcheck691

vector.memcheck691:                               ; preds = %vector.scevcheck658
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
  %bound0692 = icmp ult ptr %i.gf, %i.gm
  %bound1693 = icmp ult ptr %5, %i.gl
  %found.conflict694 = and i1 %bound0692, %bound1693
  %bound0695.a = icmp ult ptr %i.gf, %i.gv
  %bound1696.a = icmp ult ptr %i.gu, %i.gl
  %found.conflict697.a = and i1 %bound0695.a, %bound1696.a
  %conflict.rdx698.a = or i1 %found.conflict694, %found.conflict697.a
  %bound0699 = icmp ult ptr %i.gf, %i.gw
  %bound1700 = icmp ult ptr %6, %i.gl
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698.a, %found.conflict701
  %bound0703 = icmp ult ptr %i.gf, %i.hd
  %bound1704 = icmp ult ptr %i.hc, %i.gl
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %bound0707 = icmp ult ptr %i.gf, %i.he
  %bound1708 = icmp ult ptr %4, %i.gl
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  br i1 %conflict.rdx710, label %scalar.ph689.preheader, label %vector.ph711

vector.ph711:                                     ; preds = %vector.memcheck691
  %n.vec712 = and i64 %i.fo, 4294967292           ; 2 uses
  %i.hf = and i64 %i.fo, 3
  br label %vector.body713

vector.body713:                                   ; preds = %vector.body713, %vector.ph711
  %index714 = phi i64 [ 0, %vector.ph711 ], [ %index.next728, %vector.body713 ] ; 2 uses
  %i.hg = sub i64 %i.fo, %index714                ; 5 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24    ; 2 uses
  %wide.load715 = load <4 x double>, ptr %i.hi, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -24
  %wide.load717 = load <4 x double>, ptr %i.hk, align 8, !tbaa !44, !alias.scope !48
  %i.hl = trunc nuw nsw i64 %i.hg to i32          ; 2 uses
  %i.hm = add i32 %i.fm, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -24
  %wide.load718 = load <4 x double>, ptr %i.hp, align 8, !tbaa !44, !alias.scope !49
  %i.hq = fneg <4 x double> %wide.load717
  %i.hr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hq, <4 x double> %wide.load718, <4 x double> %wide.load715)
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hg
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -24
  %wide.load721 = load <4 x double>, ptr %i.ht, align 8, !tbaa !44, !alias.scope !50
  %i.hu = add i32 %i.fn, %i.hl
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -24
  %wide.load722 = load <4 x double>, ptr %i.hx, align 8, !tbaa !44, !alias.scope !51
  %i.hy = fneg <4 x double> %wide.load721
  %i.hz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hy, <4 x double> %wide.load722, <4 x double> %i.hr)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -24
  %wide.load725 = load <4 x double>, ptr %i.ib, align 8, !tbaa !44, !alias.scope !52
  %i.ic = fdiv <4 x double> %i.hz, %wide.load725
  store <4 x double> %i.ic, ptr %i.hi, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next728 = add nuw i64 %index714, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next728, %n.vec712
  br i1 %i.id, label %middle.block729, label %vector.body713, !llvm.loop !16

middle.block729:                                  ; preds = %vector.body713
  %cmp.n730 = icmp eq i64 %n.vec712, %i.fo
  br i1 %cmp.n730, label %.loopexit356, label %scalar.ph689.preheader

scalar.ph689.preheader:                           ; preds = %vector.memcheck691, %vector.scevcheck658, %.lr.ph393, %middle.block729
  %indvars.iv431.ph = phi i64 [ %i.fo, %vector.memcheck691 ], [ %i.fo, %vector.scevcheck658 ], [ %i.fo, %.lr.ph393 ], [ %i.hf, %middle.block729 ]
  br label %scalar.ph689

scalar.ph689:                                     ; preds = %scalar.ph689.preheader, %scalar.ph689
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph689 ], [ %indvars.iv431.ph, %scalar.ph689.preheader ] ; 7 uses
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
  br i1 %i.iz, label %scalar.ph689, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.ja = trunc i35 %indvar to i32
  %i.jb = trunc i35 %indvar to i32
  %i.jc = mul i32 %i.f, %i.jb
  %i.jd = add i32 %i.jc, %i.bi                    ; 2 uses
  %i.je = mul i35 %i.ah, %indvar                  ; 2 uses
  %i.jf = add i35 %i.ag, %i.je                    ; 2 uses
  %i.jg = add i35 %i.aj, %i.je                    ; 2 uses
  %i.jh = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.ji = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.jh ; 2 uses
  %i.jj = load double, ptr %gep474, align 8, !tbaa !44
  %i.jk = fdiv double %i.jj, %i.ji
  store double %i.jk, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.jl = trunc nsw i64 %i.jh to i32
  %i.jm = add i32 %i.jl, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.jh ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.jh ; 2 uses
  br i1 %min.iters.check610, label %scalar.ph609.preheader, label %vector.scevcheck547

vector.scevcheck547:                              ; preds = %.lr.ph379
  %i.jn = add i32 %i.jd, %i.ca
  %i.jo = icmp slt i32 %i.jn, %i.jd
  %i.jp = or i1 %i.jo, %i.cb
  br i1 %i.jp, label %scalar.ph609.preheader, label %vector.memcheck611

vector.memcheck611:                               ; preds = %vector.scevcheck547
  %i.jq = mul i32 %i.f, %i.ja
  %i.jr = add i32 %i.br, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = shl nsw i64 %i.js, 3                    ; 2 uses
  %i.ju = getelementptr i8, ptr %i.h, i64 %i.jt   ; 4 uses
  %i.jv = getelementptr i8, ptr %scevgep606, i64 %i.jt ; 4 uses
  %bound0612 = icmp ult ptr %scevgep608, %i.jv    ; 2 uses
  %bound1613 = icmp ult ptr %i.ju, %scevgep607    ; 2 uses
  %found.conflict614 = and i1 %bound0612, %bound1613
  %conflict.rdx627.reass = or i1 %found.conflict614, %invariant.op756
  %bound0628 = icmp ult ptr %i.ju, %i.jv
  %conflict.rdx630 = or i1 %conflict.rdx627.reass, %bound0628
  %bound0631 = icmp ult ptr %i.ju, %scevgep605
  %bound1632 = icmp ult ptr %7, %i.jv
  %found.conflict633 = and i1 %bound0631, %bound1632
  %conflict.rdx634 = or i1 %conflict.rdx630, %found.conflict633
  %bound0635 = icmp ult ptr %i.ju, %scevgep604
  %bound1636 = icmp ult ptr %3, %i.jv
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx638 = or i1 %conflict.rdx634, %found.conflict637
  %found.conflict639 = and i1 %bound1613, %bound0612
  %conflict.rdx640 = or i1 %conflict.rdx638, %found.conflict639
  br i1 %conflict.rdx640, label %scalar.ph609.preheader, label %vector.body646

vector.body646:                                   ; preds = %vector.memcheck611, %vector.body646
  %index647 = phi i64 [ %index.next654, %vector.body646 ], [ 0, %vector.memcheck611 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body646 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck611 ] ; 2 uses
  %i.jw = or disjoint i64 %index647, 1            ; 3 uses
  %i.jx = getelementptr [4 x i8], ptr %7, i64 %index647
  %wide.load648 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !42, !alias.scope !55
  %i.jy = zext <4 x i32> %wide.load648 to <4 x i64>
  %i.jz = icmp eq <4 x i64> %vec.ind, %i.jy       ; 5 uses
  %i.ka = xor <4 x i1> %i.jz, splat (i1 true)     ; 5 uses
  %i.kb = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.jw ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kb, <4 x i1> %i.ka, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kc = trunc i64 %i.jw to i32
  %i.kd = add i32 %i.jm, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr [8 x i8], ptr %i.h, i64 %i.ke ; 4 uses
  %wide.masked.load649 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kf, <4 x i1> %i.ka, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load649, ptr align 8 %i.kb, <4 x i1> %i.ka), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kg = getelementptr [8 x i8], ptr %3, i64 %index647 ; 2 uses
  %wide.masked.load650 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kg, <4 x i1> %i.ka, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kh = fneg <4 x double> %wide.masked.load650
  %i.ki = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kh, <4 x double> %wide.masked.load649, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ki, ptr align 8 %i.kf, <4 x i1> %i.ka), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load651 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kg, <4 x i1> %i.jz, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.jw
  %wide.masked.load652 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.jz, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load653 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kf, <4 x i1> %i.jz, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.kk = fneg <4 x double> %wide.masked.load651
  %i.kl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %wide.masked.load652, <4 x double> %wide.masked.load653)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kl, ptr align 8 %i.kf, <4 x i1> %i.jz), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next654 = add nuw i64 %index647, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.km = icmp eq i64 %index.next654, %n.vec645
  br i1 %i.km, label %middle.block655, label %vector.body646, !llvm.loop !25

middle.block655:                                  ; preds = %vector.body646
  br i1 %cmp.n656, label %._crit_edge380, label %scalar.ph609.preheader

scalar.ph609.preheader:                           ; preds = %vector.memcheck611, %vector.scevcheck547, %.lr.ph379, %middle.block655
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck611 ], [ 1, %vector.scevcheck547 ], [ 1, %.lr.ph379 ], [ %i.cc, %middle.block655 ]
  br label %scalar.ph609

scalar.ph609:                                     ; preds = %scalar.ph609.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph609.preheader ] ; 9 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !42
  %i.kp = zext i32 %i.ko to i64
  %i.kq = icmp eq i64 %indvars.iv413, %i.kp
  br i1 %i.kq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph609
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.kt = load double, ptr %gep470, align 8, !tbaa !44
  %i.ku = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.kv = add i32 %i.jm, %i.ku
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kw ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !44
  %i.kz = fneg double %i.ks
  %i.la = tail call double @llvm.fmuladd.f64(double %i.kz, double %i.kt, double %i.ky)
  store double %i.la, ptr %i.kx, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph609
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.lb = load double, ptr %gep468, align 8, !tbaa !44
  %i.lc = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.ld = add i32 %i.jm, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.le ; 2 uses
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !44 ; 2 uses
  store double %i.lg, ptr %gep468, align 8, !tbaa !44
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.li = load double, ptr %i.lh, align 8, !tbaa !44
  %i.lj = fneg double %i.li
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.lg, double %i.lb)
  store double %i.lk, ptr %i.lf, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph609, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block655
  %i.ll = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.jh ; 2 uses
  %i.lm = load double, ptr %gep476, align 8, !tbaa !44
  %i.ln = fdiv double %i.lm, %i.ll                ; 2 uses
  store double %i.ln, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.jh ; 2 uses
  %i.lo = load double, ptr %gep478, align 8, !tbaa !44
  %i.lp = load double, ptr %i.t, align 8, !tbaa !44
  %i.lq = fneg double %i.lp
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.ln, double %i.lo)
  %i.ls = load double, ptr %i.u, align 8, !tbaa !44
  %i.lt = fdiv double %i.lr, %i.ls
  store double %i.lt, ptr %gep478, align 8, !tbaa !44
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.lu = add i64 %i.jh, 1                        ; 2 uses
  %i.lv = add i64 %i.jh, 2                        ; 2 uses
  %invariant.gep471 = getelementptr [8 x i8], ptr %i.h, i64 %i.jh ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.lw = sub i35 %i.jf, %mul.result
  %i.lx = icmp sgt i35 %i.lw, %i.jf
  %i.ly = sub i35 %i.jg, %mul.result
  %i.lz = icmp sgt i35 %i.ly, %i.jg
  %i.ma = or i1 %i.lz, %mul.overflow
  %i.mb = or i1 %i.lx, %i.ma
  br i1 %i.mb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.mc = mul i35 %indvar, %i.as                  ; 2 uses
  %i.md = add i35 %i.av, %i.mc
  %i.me = sext i35 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr i8, ptr %scevgep517, i64 %i.me
  %i.mg = getelementptr i8, ptr %scevgep516, i64 %i.me
  %i.mh = add i35 %i.ap, %i.mc
  %i.mi = sext i35 %i.mh to i64                   ; 2 uses
  %i.mj = getelementptr i8, ptr %scevgep517, i64 %i.mi
  %i.mk = getelementptr i8, ptr %scevgep516, i64 %i.mi
  %bound0521 = icmp ult ptr %scevgep520, %i.mg
  %bound1522 = icmp ult ptr %i.mf, %scevgep519
  %found.conflict523 = and i1 %bound0521, %bound1522
  %conflict.rdx527.reass = or i1 %found.conflict523, %invariant.op757
  %bound0528 = icmp ult ptr %scevgep520, %i.mk
  %bound1529 = icmp ult ptr %i.mj, %scevgep519
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527.reass, %found.conflict530
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  br i1 %conflict.rdx535, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.ml = sub i64 %i.x, %index                    ; 6 uses
  %i.mm = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mn, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ml
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -24
  %wide.load536 = load <4 x double>, ptr %i.mp, align 8, !tbaa !44, !alias.scope !66
  %i.mq = add i64 %i.lu, %i.ml
  %i.mr = shl i64 %i.mq, 32
  %i.ms = ashr exact i64 %i.mr, 29
  %i.mt = getelementptr inbounds i8, ptr %i.h, i64 %i.ms
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 -24
  %wide.load537 = load <4 x double>, ptr %i.mu, align 8, !tbaa !44, !alias.scope !67
  %i.mv = fneg <4 x double> %wide.load536
  %i.mw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mv, <4 x double> %wide.load537, <4 x double> %wide.load)
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ml
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -24
  %wide.load540 = load <4 x double>, ptr %i.my, align 8, !tbaa !44, !alias.scope !68
  %i.mz = add i64 %i.lv, %i.ml
  %i.na = shl i64 %i.mz, 32
  %i.nb = ashr exact i64 %i.na, 29
  %i.nc = getelementptr inbounds i8, ptr %i.h, i64 %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 -24
  %wide.load541 = load <4 x double>, ptr %i.nd, align 8, !tbaa !44, !alias.scope !69
  %i.ne = fneg <4 x double> %wide.load540
  %i.nf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ne, <4 x double> %wide.load541, <4 x double> %i.mw)
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ml
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 -24
  %wide.load544 = load <4 x double>, ptr %i.nh, align 8, !tbaa !44, !alias.scope !70
  %i.ni = fdiv <4 x double> %i.nf, %wide.load544
  store <4 x double> %i.ni, ptr %i.mn, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nj = icmp eq i64 %index.next, %n.vec
  br i1 %i.nj, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv418.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph383 ], [ %i.cf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %scalar.ph ], [ %indvars.iv418.ph, %scalar.ph.preheader ] ; 8 uses
  %gep472 = getelementptr [8 x i8], ptr %invariant.gep471, i64 %indvars.iv418 ; 2 uses
  %i.nk = load double, ptr %gep472, align 8, !tbaa !44
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv418
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !44
  %i.nn = add i64 %i.lu, %indvars.iv418
  %sext = shl i64 %i.nn, 32
  %i.no = ashr exact i64 %sext, 29
  %i.np = getelementptr inbounds i8, ptr %i.h, i64 %i.no
  %i.nq = load double, ptr %i.np, align 8, !tbaa !44
  %i.nr = fneg double %i.nm
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nq, double %i.nk)
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv418
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !44
  %i.nv = add i64 %i.lv, %indvars.iv418
  %sext435 = shl i64 %i.nv, 32
  %i.nw = ashr exact i64 %sext435, 29
  %i.nx = getelementptr inbounds i8, ptr %i.h, i64 %i.nw
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !44
  %i.nz = fneg double %i.nu
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.ny, double %i.ns)
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv418
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !44
  %i.od = fdiv double %i.oa, %i.oc
  store double %i.od, ptr %gep472, align 8, !tbaa !44
  %indvars.iv.next419 = add nsw i64 %indvars.iv418, -1
  %i.oe = icmp samesign ugt i64 %indvars.iv418, 1
  br i1 %i.oe, label %scalar.ph, label %._crit_edge384, !llvm.loop !35

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond425.not, label %.loopexit356, label %.preheader354, !llvm.loop !36

bb.j:                                             ; preds = %bb.c
  br i1 %i.o, label %.preheader358, label %.preheader361

.preheader361:                                    ; preds = %bb.j
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp samesign ult i32 %i.i, 3
  %i.og = add i32 %i.i, 1                         ; 2 uses
  %i.oh = sext i32 %i.i to i64
  %i.oi = sext i32 %i.f to i64                    ; 3 uses
  %i.oj = add nuw i32 %i.k, 1
  %wide.trip.count403 = zext i32 %i.oj to i64
  %wide.trip.count = zext i32 %i.og to i64
  %i.ok = or i64 %i.oi, %i.g
  %i.ol = shl nsw i64 %i.ok, 3
  %i.om = shl nsw i64 %i.oi, 3
  %i.on = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.oo = getelementptr i8, ptr %8, i64 %i.ol
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  %xtraiter = and i64 %i.on, 1
  %i.oq = icmp eq i32 %i.og, 4
  %unroll_iter = and i64 %i.on, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod741 = trunc i64 %i.on to i1
  br label %bb.l

.preheader358:                                    ; preds = %bb.j
  %i.or = load double, ptr %4, align 8, !tbaa !44
  %i.os = sext i32 %i.f to i64                    ; 6 uses
  %i.ot = getelementptr [8 x i8], ptr %i.h, i64 %i.os ; 2 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 8      ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !44
  %i.ow = fdiv double %i.ov, %i.or                ; 2 uses
  store double %i.ow, ptr %i.ou, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.k, label %.loopexit356

bb.k:                                             ; preds = %.preheader358
  %.not350370 = icmp eq i32 %i.i, 2
  %i.ox = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oy = getelementptr i8, ptr %i.ot, i64 16     ; 2 uses
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !44
  %i.pa = load double, ptr %5, align 8, !tbaa !44
  %i.pb = fneg double %i.pa
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.pb, double %i.ow, double %i.oz)
  %i.pd = load double, ptr %i.ox, align 8, !tbaa !44
  %i.pe = fdiv double %i.pc, %i.pd
  store double %i.pe, ptr %i.oy, align 8, !tbaa !44
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.k
  %invariant.gep457 = getelementptr [8 x i8], ptr %i.h, i64 %i.os ; 3 uses
  %invariant.gep461 = getelementptr [8 x i8], ptr %i.h, i64 %i.os ; 3 uses
  %i.pf = or i64 %i.os, %i.g
  %i.pg = shl nsw i64 %i.pf, 3
  %i.ph = getelementptr i8, ptr %8, i64 %i.pg
  %scevgep732 = getelementptr i8, ptr %i.ph, i64 16
  %load_initial = load double, ptr %scevgep732, align 8 ; 2 uses
  %i.pi = zext nneg i32 %i.i to i64               ; 2 uses
  %xtraiter742 = and i64 %i.pi, 1
  %i.pj = icmp eq i32 %i.i, 3
  br i1 %i.pj, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %i.pk = and i64 %i.pi, 2147483646
  %i.pl = add nsw i64 %i.pk, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.ru, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv405.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next406.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod744 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod744)
  %gep458.epil = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405.epil.init ; 2 uses
  %i.pm = load double, ptr %gep458.epil, align 8, !tbaa !44
  %i.pn = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405.epil.init
  %i.po = getelementptr i8, ptr %i.pn, i64 -8
  %i.pp = load double, ptr %i.po, align 8, !tbaa !44
  %i.pq = fneg double %i.pp
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pq, double %store_forwarded.epil.init, double %i.pm)
  %i.ps = add nsw i64 %indvars.iv405.epil.init, -2 ; 2 uses
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ps
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !44
  %gep462.epil = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.ps
  %i.pv = load double, ptr %gep462.epil, align 8, !tbaa !44
  %i.pw = fneg double %i.pu
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pw, double %i.pv, double %i.pr)
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405.epil.init
  %i.pz = load double, ptr %i.py, align 8, !tbaa !44
  %i.qa = fdiv double %i.px, %i.pz
  store double %i.qa, ptr %gep458.epil, align 8, !tbaa !44
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %i.qb = zext nneg i32 %i.i to i64               ; 4 uses
  %invariant.gep463 = getelementptr [8 x i8], ptr %i.h, i64 %i.os ; 3 uses
  %invariant.gep465 = getelementptr [8 x i8], ptr %i.h, i64 %i.os ; 3 uses
  %i.qc = and i64 %i.qb, 1
  %lcmp.mod748.not.not = icmp eq i64 %i.qc, 0
  br i1 %lcmp.mod748.not.not, label %.lr.ph375.prol, label %.lr.ph375.prol.loopexit

.lr.ph375.prol:                                   ; preds = %.lr.ph375.preheader
  %indvars.iv.next411.prol = add nsw i64 %i.qb, -1 ; 4 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411.prol
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !42
  %gep464.prol = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411.prol ; 2 uses
  %i.qf = load double, ptr %gep464.prol, align 8, !tbaa !44
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411.prol
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !44
  %gep466.prol = getelementptr [8 x i8], ptr %invariant.gep465, i64 %i.qb
  %i.qi = load double, ptr %gep466.prol, align 8, !tbaa !44
  %i.qj = fneg double %i.qh
  %i.qk = tail call double @llvm.fmuladd.f64(double %i.qj, double %i.qi, double %i.qf)
  %i.ql = add nsw i32 %i.qe, %i.f
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.qm ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !44
  store double %i.qo, ptr %gep464.prol, align 8, !tbaa !44
  store double %i.qk, ptr %i.qn, align 8, !tbaa !44
  br label %.lr.ph375.prol.loopexit

.lr.ph375.prol.loopexit:                          ; preds = %.lr.ph375.prol, %.lr.ph375.preheader
  %indvars.iv410.unr = phi i64 [ %i.qb, %.lr.ph375.preheader ], [ %indvars.iv.next411.prol, %.lr.ph375.prol ]
  %i.qp = icmp eq i32 %i.i, 2
  br i1 %i.qp, label %.loopexit356, label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.ru, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter746 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter746.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.qq = load double, ptr %gep458, align 8, !tbaa !44
  %i.qr = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.qs = getelementptr i8, ptr %i.qr, i64 -8
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !44
  %i.qu = fneg double %i.qt
  %i.qv = tail call double @llvm.fmuladd.f64(double %i.qu, double %store_forwarded, double %i.qq)
  %i.qw = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qw
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qw
  %i.qz = load double, ptr %gep462, align 8, !tbaa !44
  %i.ra = fneg double %i.qy
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.ra, double %i.qz, double %i.qv)
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !44
  %i.re = fdiv double %i.rb, %i.rd                ; 2 uses
  store double %i.re, ptr %gep458, align 8, !tbaa !44
  %i.rf = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405
  %gep458.1 = getelementptr i8, ptr %i.rf, i64 8  ; 2 uses
  %i.rg = load double, ptr %gep458.1, align 8, !tbaa !44
end_hunk_0
begin_hunk_1_@dgtts2_:bb.a
  %i.tk = getelementptr i8, ptr %i.tj, i64 -8
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !44
  %i.tm = fneg double %i.tl
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.tm, double %store_forwarded737.epil.init, double %i.ti)
  %i.to = add nsw i64 %indvars.iv.epil.init, -2   ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.to
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !44
  %gep448.epil = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.to
  %i.tr = load double, ptr %gep448.epil, align 8, !tbaa !44
  %i.ts = fneg double %i.tq
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.ts, double %i.tr, double %i.tn)
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !44
  %i.tw = fdiv double %i.tt, %i.tv
  store double %i.tw, ptr %gep.epil, align 8, !tbaa !44
  br label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %.lr.ph.epil.preheader, %.lr.ph368.preheader.loopexit.unr-lcssa, %bb.m
  %invariant.gep449 = getelementptr [8 x i8], ptr %i.h, i64 %i.sw
  %invariant.gep451 = getelementptr [8 x i8], ptr %i.h, i64 %i.sw
  %invariant.gep453 = getelementptr [8 x i8], ptr %i.h, i64 %i.sw
  %invariant.gep455 = getelementptr [8 x i8], ptr %i.h, i64 %i.sw
  br label %.lr.ph368

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded737 = phi double [ %i.vb, %.lr.ph ], [ %load_initial736, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.tx = load double, ptr %gep, align 8, !tbaa !44
  %i.ty = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.tz = getelementptr i8, ptr %i.ty, i64 -8
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !44
  %i.ub = fneg double %i.ua
  %i.uc = tail call double @llvm.fmuladd.f64(double %i.ub, double %store_forwarded737, double %i.tx)
  %i.ud = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ud
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !44
  %gep448 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.ud
  %i.ug = load double, ptr %gep448, align 8, !tbaa !44
  %i.uh = fneg double %i.uf
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.ug, double %i.uc)
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !44
  %i.ul = fdiv double %i.ui, %i.uk                ; 2 uses
  store double %i.ul, ptr %gep, align 8, !tbaa !44
  %i.um = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.um, i64 8     ; 2 uses
  %i.un = load double, ptr %gep.1, align 8, !tbaa !44
  %i.uo = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.up = getelementptr i8, ptr %i.uo, i64 -8
  %i.uq = load double, ptr %i.up, align 8, !tbaa !44
  %i.ur = fneg double %i.uq
  %i.us = tail call double @llvm.fmuladd.f64(double %i.ur, double %i.ul, double %i.un)
  %i.ut = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ut
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !44
  %gep448.1 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.ut
  %i.uw = load double, ptr %gep448.1, align 8, !tbaa !44
  %i.ux = fneg double %i.uv
  %i.uy = tail call double @llvm.fmuladd.f64(double %i.ux, double %i.uw, double %i.us)
  %i.uz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.va = load double, ptr %i.uz, align 8, !tbaa !44
  %i.vb = fdiv double %i.uy, %i.va                ; 3 uses
  store double %i.vb, ptr %gep.1, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph368.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !39

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.p
  %indvars.iv397 = phi i64 [ %i.oh, %.lr.ph368.preheader ], [ %indvars.iv.next398, %bb.p ] ; 4 uses
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, -1 ; 7 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next398
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !42
  %i.ve = zext i32 %i.vd to i64
  %i.vf = icmp eq i64 %indvars.iv.next398, %i.ve
  br i1 %i.vf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph368
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next398
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !44
  %gep454 = getelementptr [8 x i8], ptr %invariant.gep453, i64 %indvars.iv397
  %i.vi = load double, ptr %gep454, align 8, !tbaa !44
  %gep456 = getelementptr [8 x i8], ptr %invariant.gep455, i64 %indvars.iv.next398 ; 2 uses
  %i.vj = load double, ptr %gep456, align 8, !tbaa !44
  %i.vk = fneg double %i.vh
  %i.vl = tail call double @llvm.fmuladd.f64(double %i.vk, double %i.vi, double %i.vj)
  store double %i.vl, ptr %gep456, align 8, !tbaa !44
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph368
  %gep450 = getelementptr [8 x i8], ptr %invariant.gep449, i64 %indvars.iv397 ; 2 uses
  %i.vm = load double, ptr %gep450, align 8, !tbaa !44 ; 2 uses
  %gep452 = getelementptr [8 x i8], ptr %invariant.gep451, i64 %indvars.iv.next398 ; 2 uses
  %i.vn = load double, ptr %gep452, align 8, !tbaa !44
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next398
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !44
  %i.vq = fneg double %i.vp
  %i.vr = tail call double @llvm.fmuladd.f64(double %i.vq, double %i.vm, double %i.vn)
  store double %i.vr, ptr %gep450, align 8, !tbaa !44
  store double %i.vm, ptr %gep452, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.vs = icmp samesign ugt i64 %indvars.iv397, 2
  br i1 %i.vs, label %.lr.ph368, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.p, %bb.l
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count403
  %indvar.next734 = add i64 %indvar733, 1
  br i1 %exitcond404.not, label %.loopexit356, label %bb.l, !llvm.loop !41

.loopexit356:                                     ; preds = %._crit_edge, %.lr.ph375.prol.loopexit, %.lr.ph375, %._crit_edge384, %scalar.ph689, %middle.block729, %.preheader358, %bb.f, %.thread, %bb.a, %bb.b
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
