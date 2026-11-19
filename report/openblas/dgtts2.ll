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
  %i.bj = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.bk = getelementptr i8, ptr %3, i64 %i.bj
  %scevgep604 = getelementptr i8, ptr %i.bk, i64 -8 ; 2 uses
  %10 = shl nuw nsw i64 %wide.trip.count416, 2
  %i.bl = getelementptr i8, ptr %7, i64 %10
  %scevgep605.a = getelementptr i8, ptr %i.bl, i64 -4 ; 2 uses
  %i.bm = shl nsw i64 %i.y, 3
  %11 = shl nsw i64 %i.g, 3                       ; 3 uses
  %i.bn = getelementptr i8, ptr %8, i64 %11
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bj
  %scevgep606 = getelementptr i8, ptr %i.bo, i64 -8
  %i.bp = add i32 %i.f, 2
  %i.bq = shl nuw nsw i64 %wide.trip.count424, 3
  %i.br = add nsw i64 %i.bq, -8
  %i.bs = mul i64 %i.br, %i.y
  %i.bt = getelementptr i8, ptr %8, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 %11
  %scevgep607.a = getelementptr i8, ptr %i.bu, i64 %i.bj ; 4 uses
  %i.bv = getelementptr i8, ptr %8, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 %11
  %scevgep608 = getelementptr i8, ptr %i.bw, i64 8 ; 4 uses
  %i.bx = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %min.iters.check610 = icmp ult i32 %i.i, 25
  %i.by = trunc i64 %i.bh to i32
  %i.bz = icmp ugt i64 %i.bh, 4294967295
  %stride.check615 = icmp slt i32 %i.f, 0
  %bound0617 = icmp ult ptr %scevgep608, %scevgep605.a
  %bound1618 = icmp ult ptr %7, %scevgep607.a
  %found.conflict619 = and i1 %bound0617, %bound1618
  %invariant.op = or i1 %stride.check615, %found.conflict619
  %bound0621 = icmp ult ptr %scevgep608, %scevgep604
  %bound1622 = icmp ult ptr %3, %scevgep607.a
  %found.conflict623 = and i1 %bound0621, %bound1622
  %invariant.op755 = or i1 %invariant.op, %found.conflict623
  %bound0625 = icmp ult ptr %scevgep608, %scevgep607.a
  %invariant.op756 = or i1 %invariant.op755, %bound0625
  %n.vec645 = and i64 %i.bx, -4                   ; 3 uses
  %i.ca = or disjoint i64 %n.vec645, 1
  %cmp.n656 = icmp eq i64 %i.bx, %n.vec645
  %min.iters.check = icmp ult i32 %i.v, 16
  %i.cb = trunc nsw i64 %i.ab to i35
  %mul.result = shl i35 %i.cb, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ab, 4294967295
  %bound0 = icmp ult ptr %scevgep520, %scevgep518
  %bound1 = icmp ult ptr %5, %scevgep519
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.f, 0
  %i.cc = or i1 %found.conflict, %stride.check
  %bound0524 = icmp ult ptr %scevgep520, %scevgep515
  %bound1525 = icmp ult ptr %6, %scevgep519
  %found.conflict526 = and i1 %bound0524, %bound1525
  %invariant.op757 = or i1 %i.cc, %found.conflict526
  %bound0532 = icmp ult ptr %scevgep520, %scevgep
  %bound1533 = icmp ult ptr %4, %scevgep519
  %found.conflict534 = and i1 %bound0532, %bound1533
  %n.vec = and i64 %i.x, 8589934588               ; 2 uses
  %i.cd = and i64 %i.x, 3
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader354

.preheader:                                       ; preds = %bb.d
  %i.ce = add i32 %i.i, -2                        ; 2 uses
  %i.cf = icmp samesign ugt i32 %i.i, 2
  %i.cg = add nsw i32 %i.i, -1                    ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ch
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %.preheader
  %i.ck = sext i32 %i.f to i64                    ; 4 uses
  %wide.trip.count429 = zext nneg i32 %i.i to i64
  %invariant.gep479 = getelementptr [8 x i8], ptr %i.h, i64 %i.ck ; 3 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.h, i64 %i.ck ; 3 uses
  %i.cl = add nsw i64 %wide.trip.count429, -1     ; 3 uses
  %xtraiter749 = and i64 %i.cl, 1
  %i.cm = icmp eq i32 %i.i, 2
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter752 = and i64 %i.cl, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter753 = phi i64 [ 0, %.lr.ph389.new ], [ %niter753.next.1, %bb.e ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 4 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.cq = add i32 %i.f, %i.cp
  %i.cr = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.cs = add i32 %i.cq, %i.cr
  %i.ct = sub i32 %i.cs, %i.co
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !44
  %i.cz = add nsw i32 %i.co, %i.f
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !44 ; 2 uses
  %i.dd = fneg double %i.cy
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dc, double %i.cw)
  %gep480 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426
  store double %i.dc, ptr %gep480, align 8, !tbaa !44
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427
  store double %i.de, ptr %gep482, align 8, !tbaa !44
  %i.df = getelementptr [4 x i8], ptr %7, i64 %indvars.iv426
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 4 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.di = add i32 %i.f, %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv.next427.1 to i32
  %i.dk = add i32 %i.di, %i.dj
  %i.dl = sub i32 %i.dk, %i.dg
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr [8 x i8], ptr %3, i64 %indvars.iv426
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !44
  %i.dr = add nsw i32 %i.dg, %i.f
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !44 ; 2 uses
  %i.dv = fneg double %i.dq
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.du, double %i.do)
  %gep480.1 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv.next427
  store double %i.du, ptr %gep480.1, align 8, !tbaa !44
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.1
  store double %i.dw, ptr %gep482.1, align 8, !tbaa !44
  %niter753.next.1 = add nuw i64 %niter753, 2     ; 2 uses
  %niter753.ncmp.1 = icmp eq i64 %niter753.next.1, %unroll_iter752
  br i1 %niter753.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

.thread:                                          ; preds = %.preheader
  %i.dx = load double, ptr %i.q, align 8, !tbaa !44
  %i.dy = add nsw i32 %i.f, %i.i
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dz ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !44
  %i.ec = fdiv double %i.eb, %i.dx
  store double %i.ec, ptr %i.ea, align 8, !tbaa !44
  br label %.loopexit356

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  br i1 %lcmp.mod750.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod751 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod751)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426.epil.init
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.epil = add nuw nsw i64 %indvars.iv426.epil.init, 1 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv426.epil.init to i32
  %i.eg = add i32 %i.f, %i.ef
  %i.eh = trunc nuw nsw i64 %indvars.iv.next427.epil to i32
  %i.ei = add i32 %i.eg, %i.eh
  %i.ej = sub i32 %i.ei, %i.ee
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426.epil.init
  %i.eo = load double, ptr %i.en, align 8, !tbaa !44
  %i.ep = add nsw i32 %i.ee, %i.f
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !44 ; 2 uses
  %i.et = fneg double %i.eo
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double %i.es, double %i.em)
  %gep480.epil = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426.epil.init
  store double %i.es, ptr %gep480.epil, align 8, !tbaa !44
  %gep482.epil = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.epil
  store double %i.eu, ptr %gep482.epil, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ev = load double, ptr %i.q, align 8, !tbaa !44
  %i.ew = add nsw i32 %i.f, %i.i
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !44
  %i.fa = fdiv double %i.ez, %i.ev                ; 2 uses
  store double %i.fa, ptr %i.ey, align 8, !tbaa !44
  %i.fb = add nsw i32 %i.f, %i.cg
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !44
  %i.ff = load double, ptr %i.ci, align 8, !tbaa !44
  %i.fg = fneg double %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fa, double %i.fe)
  %i.fi = load double, ptr %i.cj, align 8, !tbaa !44
  %i.fj = fdiv double %i.fh, %i.fi
  store double %i.fj, ptr %i.fd, align 8, !tbaa !44
  br i1 %i.cf, label %.lr.ph393, label %.loopexit356

.lr.ph393:                                        ; preds = %bb.f
  %i.fk = add i32 %i.f, 1                         ; 2 uses
  %i.fl = add i32 %i.f, 2                         ; 2 uses
  %i.fm = zext i32 %i.ce to i64                   ; 10 uses
  %i.fn = sext i32 %i.f to i64
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.h, i64 %i.fn ; 2 uses
  %min.iters.check690 = icmp ult i32 %i.ce, 28
  br i1 %min.iters.check690, label %scalar.ph689.preheader, label %vector.scevcheck658

vector.scevcheck658:                              ; preds = %.lr.ph393
  %i.fo = add nsw i64 %i.fm, -1                   ; 2 uses
  %i.fp = add i32 %i.f, %i.i
  %i.fq = add i32 %i.fp, -1                       ; 2 uses
  %i.fr = trunc i64 %i.fo to i32                  ; 2 uses
  %i.fs = sub i32 %i.fq, %i.fr
  %i.ft = icmp sgt i32 %i.fs, %i.fq
  %i.fu = add i32 %i.f, %i.i                      ; 2 uses
  %i.fv = sub i32 %i.fu, %i.fr
  %i.fw = icmp sgt i32 %i.fv, %i.fu
  %i.fx = icmp ugt i64 %i.fo, 4294967295
  %i.fy = or i1 %i.fw, %i.fx
  %i.fz = or i1 %i.ft, %i.fy
  br i1 %i.fz, label %scalar.ph689.preheader, label %vector.memcheck691

vector.memcheck691:                               ; preds = %vector.scevcheck658
  %i.ga = or i64 %i.ck, %i.g
  %i.gb = shl nsw i64 %i.ga, 3
  %i.gc = getelementptr i8, ptr %8, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 8      ; 5 uses
  %i.ge = shl nuw nsw i64 %i.fm, 3                ; 5 uses
  %i.gf = or i64 %i.ck, %i.g
  %i.gg = add nsw i64 %i.gf, %i.fm
  %i.gh = shl nsw i64 %i.gg, 3
  %i.gi = getelementptr i8, ptr %8, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 8      ; 5 uses
  %i.gk = getelementptr i8, ptr %5, i64 %i.ge
  %bound0692 = icmp ult ptr %i.gd, %i.gk
  %bound1693 = icmp ult ptr %5, %i.gj
  %found.conflict694 = and i1 %bound0692, %bound1693
  %i.gl = add i32 %i.f, %i.i                      ; 2 uses
  %i.gm = add i32 %i.gl, -1
  %i.gn = sext i32 %i.gm to i64
  %i.go = add nsw i64 %i.gn, %i.g
  %i.gp = shl nsw i64 %i.go, 3
  %i.gq = add nsw i64 %i.gp, 8                    ; 2 uses
  %i.gr = sub nsw i64 %i.gq, %i.ge
  %i.gs = getelementptr i8, ptr %8, i64 %i.gr
  %i.gt = getelementptr i8, ptr %8, i64 %i.gq
  %bound0695 = icmp ult ptr %i.gd, %i.gt
  %bound1696 = icmp ult ptr %i.gs, %i.gj
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %found.conflict694, %found.conflict697
  %i.gu = getelementptr i8, ptr %6, i64 %i.ge
  %bound0699 = icmp ult ptr %i.gd, %i.gu
  %bound1700 = icmp ult ptr %6, %i.gj
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698, %found.conflict701
  %i.gv = sext i32 %i.gl to i64
  %i.gw = add nsw i64 %i.gv, %i.g
  %i.gx = shl nsw i64 %i.gw, 3
  %i.gy = add nsw i64 %i.gx, 8                    ; 2 uses
  %i.gz = sub nsw i64 %i.gy, %i.ge
  %i.ha = getelementptr i8, ptr %8, i64 %i.gz
  %i.hb = getelementptr i8, ptr %8, i64 %i.gy
  %bound0703 = icmp ult ptr %i.gd, %i.hb
  %bound1704 = icmp ult ptr %i.ha, %i.gj
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %i.hc = getelementptr i8, ptr %4, i64 %i.ge
  %bound0707 = icmp ult ptr %i.gd, %i.hc
  %bound1708 = icmp ult ptr %4, %i.gj
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  br i1 %conflict.rdx710, label %scalar.ph689.preheader, label %vector.ph711

vector.ph711:                                     ; preds = %vector.memcheck691
  %n.vec712 = and i64 %i.fm, 4294967292           ; 2 uses
  %i.hd = and i64 %i.fm, 3
  br label %vector.body713

vector.body713:                                   ; preds = %vector.body713, %vector.ph711
  %index714 = phi i64 [ 0, %vector.ph711 ], [ %index.next728, %vector.body713 ] ; 2 uses
  %i.he = sub i64 %i.fm, %index714                ; 5 uses
  %i.hf = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 -24    ; 2 uses
  %wide.load715 = load <4 x double>, ptr %i.hg, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.he
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -24
  %wide.load717 = load <4 x double>, ptr %i.hi, align 8, !tbaa !44, !alias.scope !48
  %i.hj = trunc nuw nsw i64 %i.he to i32          ; 2 uses
  %i.hk = add i32 %i.fk, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -24
  %wide.load718 = load <4 x double>, ptr %i.hn, align 8, !tbaa !44, !alias.scope !49
  %i.ho = fneg <4 x double> %wide.load717
  %i.hp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ho, <4 x double> %wide.load718, <4 x double> %wide.load715)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.he
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -24
  %wide.load721 = load <4 x double>, ptr %i.hr, align 8, !tbaa !44, !alias.scope !50
  %i.hs = add i32 %i.fl, %i.hj
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -24
  %wide.load722 = load <4 x double>, ptr %i.hv, align 8, !tbaa !44, !alias.scope !51
  %i.hw = fneg <4 x double> %wide.load721
  %i.hx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hw, <4 x double> %wide.load722, <4 x double> %i.hp)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.he
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -24
  %wide.load725 = load <4 x double>, ptr %i.hz, align 8, !tbaa !44, !alias.scope !52
  %i.ia = fdiv <4 x double> %i.hx, %wide.load725
  store <4 x double> %i.ia, ptr %i.hg, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next728 = add nuw i64 %index714, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next728, %n.vec712
  br i1 %i.ib, label %middle.block729, label %vector.body713, !llvm.loop !16

middle.block729:                                  ; preds = %vector.body713
  %cmp.n730 = icmp eq i64 %n.vec712, %i.fm
  br i1 %cmp.n730, label %.loopexit356, label %scalar.ph689.preheader

scalar.ph689.preheader:                           ; preds = %vector.memcheck691, %vector.scevcheck658, %.lr.ph393, %middle.block729
  %indvars.iv431.ph = phi i64 [ %i.fm, %vector.memcheck691 ], [ %i.fm, %vector.scevcheck658 ], [ %i.fm, %.lr.ph393 ], [ %i.hd, %middle.block729 ]
  br label %scalar.ph689

scalar.ph689:                                     ; preds = %scalar.ph689.preheader, %scalar.ph689
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph689 ], [ %indvars.iv431.ph, %scalar.ph689.preheader ] ; 7 uses
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv431 ; 2 uses
  %i.ic = load double, ptr %gep484, align 8, !tbaa !44
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv431
  %i.ie = load double, ptr %i.id, align 8, !tbaa !44
  %i.if = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  %i.ig = add i32 %i.fk, %i.if
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !44
  %i.ik = fneg double %i.ie
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.ij, double %i.ic)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv431
  %i.in = load double, ptr %i.im, align 8, !tbaa !44
  %i.io = add i32 %i.fl, %i.if
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !44
  %i.is = fneg double %i.in
  %i.it = tail call double @llvm.fmuladd.f64(double %i.is, double %i.ir, double %i.il)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv431
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !44
  %i.iw = fdiv double %i.it, %i.iv
  store double %i.iw, ptr %gep484, align 8, !tbaa !44
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1
  %i.ix = icmp samesign ugt i64 %indvars.iv431, 1
  br i1 %i.ix, label %scalar.ph689, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.iy = trunc i35 %indvar to i32
  %i.iz = trunc i35 %indvar to i32
  %i.ja = mul i32 %i.f, %i.iz
  %i.jb = add i32 %i.ja, %i.bi                    ; 2 uses
  %i.jc = mul i35 %i.ah, %indvar                  ; 2 uses
  %i.jd = add i35 %i.ag, %i.jc                    ; 2 uses
  %i.je = add i35 %i.aj, %i.jc                    ; 2 uses
  %i.jf = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jg = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.jf ; 2 uses
  %i.jh = load double, ptr %gep474, align 8, !tbaa !44
  %i.ji = fdiv double %i.jh, %i.jg
  store double %i.ji, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.jj = trunc nsw i64 %i.jf to i32
  %i.jk = add i32 %i.jj, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.jf ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.jf ; 2 uses
  br i1 %min.iters.check610, label %scalar.ph609.preheader, label %vector.scevcheck547

vector.scevcheck547:                              ; preds = %.lr.ph379
  %i.jl = add i32 %i.jb, %i.by
  %i.jm = icmp slt i32 %i.jl, %i.jb
  %i.jn = or i1 %i.jm, %i.bz
  br i1 %i.jn, label %scalar.ph609.preheader, label %vector.memcheck611

vector.memcheck611:                               ; preds = %vector.scevcheck547
  %i.jo = mul i32 %i.f, %i.iy
  %i.jp = add i32 %i.bp, %i.jo
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 3                    ; 2 uses
  %i.js = getelementptr i8, ptr %i.h, i64 %i.jr   ; 4 uses
  %i.jt = getelementptr i8, ptr %scevgep606, i64 %i.jr ; 4 uses
  %bound0612 = icmp ult ptr %scevgep608, %i.jt    ; 2 uses
  %bound1613 = icmp ult ptr %i.js, %scevgep607.a  ; 2 uses
  %found.conflict614 = and i1 %bound0612, %bound1613
  %conflict.rdx627.reass = or i1 %found.conflict614, %invariant.op756
  %bound0628 = icmp ult ptr %i.js, %i.jt
  %conflict.rdx630 = or i1 %conflict.rdx627.reass, %bound0628
  %bound0631 = icmp ult ptr %i.js, %scevgep605.a
  %bound1632 = icmp ult ptr %7, %i.jt
  %found.conflict633 = and i1 %bound0631, %bound1632
  %conflict.rdx634 = or i1 %conflict.rdx630, %found.conflict633
  %bound0635 = icmp ult ptr %i.js, %scevgep604
  %bound1636 = icmp ult ptr %3, %i.jt
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx638 = or i1 %conflict.rdx634, %found.conflict637
  %found.conflict639 = and i1 %bound1613, %bound0612
  %conflict.rdx640 = or i1 %conflict.rdx638, %found.conflict639
  br i1 %conflict.rdx640, label %scalar.ph609.preheader, label %vector.body646

vector.body646:                                   ; preds = %vector.memcheck611, %vector.body646
  %index647 = phi i64 [ %index.next654, %vector.body646 ], [ 0, %vector.memcheck611 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body646 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck611 ] ; 2 uses
  %i.ju = or disjoint i64 %index647, 1            ; 3 uses
  %i.jv = getelementptr [4 x i8], ptr %7, i64 %index647
  %wide.load648 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !42, !alias.scope !55
  %i.jw = zext <4 x i32> %wide.load648 to <4 x i64>
  %i.jx = icmp eq <4 x i64> %vec.ind, %i.jw       ; 5 uses
  %i.jy = xor <4 x i1> %i.jx, splat (i1 true)     ; 5 uses
  %i.jz = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.ju ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jz, <4 x i1> %i.jy, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.ka = trunc i64 %i.ju to i32
  %i.kb = add i32 %i.jk, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [8 x i8], ptr %i.h, i64 %i.kc ; 4 uses
  %wide.masked.load649 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kd, <4 x i1> %i.jy, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load649, ptr align 8 %i.jz, <4 x i1> %i.jy), !tbaa !44, !alias.scope !56, !noalias !57
  %i.ke = getelementptr [8 x i8], ptr %3, i64 %index647 ; 2 uses
  %wide.masked.load650 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ke, <4 x i1> %i.jy, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kf = fneg <4 x double> %wide.masked.load650
  %i.kg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kf, <4 x double> %wide.masked.load649, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kg, ptr align 8 %i.kd, <4 x i1> %i.jy), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load651 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ke, <4 x i1> %i.jx, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kh = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.ju
  %wide.masked.load652 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kh, <4 x i1> %i.jx, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load653 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kd, <4 x i1> %i.jx, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.ki = fneg <4 x double> %wide.masked.load651
  %i.kj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ki, <4 x double> %wide.masked.load652, <4 x double> %wide.masked.load653)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kj, ptr align 8 %i.kd, <4 x i1> %i.jx), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next654 = add nuw i64 %index647, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kk = icmp eq i64 %index.next654, %n.vec645
  br i1 %i.kk, label %middle.block655, label %vector.body646, !llvm.loop !25

middle.block655:                                  ; preds = %vector.body646
  br i1 %cmp.n656, label %._crit_edge380, label %scalar.ph609.preheader

scalar.ph609.preheader:                           ; preds = %vector.memcheck611, %vector.scevcheck547, %.lr.ph379, %middle.block655
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck611 ], [ 1, %vector.scevcheck547 ], [ 1, %.lr.ph379 ], [ %i.ca, %middle.block655 ]
  br label %scalar.ph609

scalar.ph609:                                     ; preds = %scalar.ph609.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph609.preheader ] ; 9 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !42
  %i.kn = zext i32 %i.km to i64
  %i.ko = icmp eq i64 %indvars.iv413, %i.kn
  br i1 %i.ko, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph609
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.kr = load double, ptr %gep470, align 8, !tbaa !44
  %i.ks = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.kt = add i32 %i.jk, %i.ks
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ku ; 2 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !44
  %i.kx = fneg double %i.kq
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.kr, double %i.kw)
  store double %i.ky, ptr %i.kv, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph609
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.kz = load double, ptr %gep468, align 8, !tbaa !44
  %i.la = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.lb = add i32 %i.jk, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lc ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !44 ; 2 uses
  store double %i.le, ptr %gep468, align 8, !tbaa !44
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !44
  %i.lh = fneg double %i.lg
  %i.li = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.le, double %i.kz)
  store double %i.li, ptr %i.ld, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph609, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block655
  %i.lj = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.jf ; 2 uses
  %i.lk = load double, ptr %gep476, align 8, !tbaa !44
  %i.ll = fdiv double %i.lk, %i.lj                ; 2 uses
  store double %i.ll, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.jf ; 2 uses
  %i.lm = load double, ptr %gep478, align 8, !tbaa !44
  %i.ln = load double, ptr %i.t, align 8, !tbaa !44
  %i.lo = fneg double %i.ln
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.ll, double %i.lm)
  %i.lq = load double, ptr %i.u, align 8, !tbaa !44
  %i.lr = fdiv double %i.lp, %i.lq
  store double %i.lr, ptr %gep478, align 8, !tbaa !44
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.ls = add i64 %i.jf, 1                        ; 2 uses
  %i.lt = add i64 %i.jf, 2                        ; 2 uses
  %invariant.gep471 = getelementptr [8 x i8], ptr %i.h, i64 %i.jf ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.lu = sub i35 %i.jd, %mul.result
  %i.lv = icmp sgt i35 %i.lu, %i.jd
  %i.lw = sub i35 %i.je, %mul.result
  %i.lx = icmp sgt i35 %i.lw, %i.je
  %i.ly = or i1 %i.lx, %mul.overflow
  %i.lz = or i1 %i.lv, %i.ly
  br i1 %i.lz, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ma = mul i35 %indvar, %i.as                  ; 2 uses
  %i.mb = add i35 %i.av, %i.ma
  %i.mc = sext i35 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr i8, ptr %scevgep517, i64 %i.mc
  %i.me = getelementptr i8, ptr %scevgep516, i64 %i.mc
  %bound0521 = icmp ult ptr %scevgep520, %i.me
  %bound1522 = icmp ult ptr %i.md, %scevgep519
  %found.conflict523 = and i1 %bound0521, %bound1522
  %conflict.rdx527.reass = or i1 %found.conflict523, %invariant.op757
  %i.mf = add i35 %i.ap, %i.ma
  %i.mg = sext i35 %i.mf to i64                   ; 2 uses
  %i.mh = getelementptr i8, ptr %scevgep517, i64 %i.mg
  %i.mi = getelementptr i8, ptr %scevgep516, i64 %i.mg
  %bound0528 = icmp ult ptr %scevgep520, %i.mi
  %bound1529 = icmp ult ptr %i.mh, %scevgep519
  %found.conflict530 = and i1 %bound0528, %bound1529
  %conflict.rdx531 = or i1 %conflict.rdx527.reass, %found.conflict530
  %conflict.rdx535 = or i1 %conflict.rdx531, %found.conflict534
  br i1 %conflict.rdx535, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.mj = sub i64 %i.x, %index                    ; 6 uses
  %i.mk = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.mj
  %i.ml = getelementptr i8, ptr %i.mk, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ml, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mj
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -24
  %wide.load536 = load <4 x double>, ptr %i.mn, align 8, !tbaa !44, !alias.scope !66
  %i.mo = add i64 %i.ls, %i.mj
  %i.mp = shl i64 %i.mo, 32
  %i.mq = ashr exact i64 %i.mp, 29
  %i.mr = getelementptr inbounds i8, ptr %i.h, i64 %i.mq
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -24
  %wide.load537 = load <4 x double>, ptr %i.ms, align 8, !tbaa !44, !alias.scope !67
  %i.mt = fneg <4 x double> %wide.load536
  %i.mu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mt, <4 x double> %wide.load537, <4 x double> %wide.load)
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mj
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -24
  %wide.load540 = load <4 x double>, ptr %i.mw, align 8, !tbaa !44, !alias.scope !68
  %i.mx = add i64 %i.lt, %i.mj
  %i.my = shl i64 %i.mx, 32
  %i.mz = ashr exact i64 %i.my, 29
  %i.na = getelementptr inbounds i8, ptr %i.h, i64 %i.mz
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 -24
  %wide.load541 = load <4 x double>, ptr %i.nb, align 8, !tbaa !44, !alias.scope !69
  %i.nc = fneg <4 x double> %wide.load540
  %i.nd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nc, <4 x double> %wide.load541, <4 x double> %i.mu)
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mj
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -24
  %wide.load544 = load <4 x double>, ptr %i.nf, align 8, !tbaa !44, !alias.scope !70
  %i.ng = fdiv <4 x double> %i.nd, %wide.load544
  store <4 x double> %i.ng, ptr %i.ml, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nh = icmp eq i64 %index.next, %n.vec
  br i1 %i.nh, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv418.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph383 ], [ %i.cd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %scalar.ph ], [ %indvars.iv418.ph, %scalar.ph.preheader ] ; 8 uses
  %gep472 = getelementptr [8 x i8], ptr %invariant.gep471, i64 %indvars.iv418 ; 2 uses
  %i.ni = load double, ptr %gep472, align 8, !tbaa !44
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv418
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !44
  %i.nl = add i64 %i.ls, %indvars.iv418
  %sext = shl i64 %i.nl, 32
  %i.nm = ashr exact i64 %sext, 29
  %i.nn = getelementptr inbounds i8, ptr %i.h, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !44
  %i.np = fneg double %i.nk
end_hunk_0
