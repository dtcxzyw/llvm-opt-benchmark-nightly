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
  %i.f = load i32, ptr %9, align 4, !tbaa !42     ; 30 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 9 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %8, i64 %i.g ; 42 uses
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
  %i.v = add i32 %i.i, -2                         ; 6 uses
  %i.w = icmp samesign ugt i32 %i.i, 2
  %i.x = sext i32 %i.v to i64                     ; 8 uses
  %i.y = sext i32 %i.f to i64                     ; 5 uses
  %i.z = zext nneg i32 %i.r to i64
  %i.aa = add nuw i32 %i.k, 1
  %wide.trip.count424 = zext i32 %i.aa to i64     ; 3 uses
  %invariant.gep473 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %wide.trip.count416 = zext i32 %i.i to i64      ; 5 uses
  %invariant.gep475 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %invariant.gep477 = getelementptr [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = icmp ne i32 %i.v, 0
  %umin.neg = sext i1 %i.ab to i64
  %i.ac = add nsw i64 %umin.neg, %i.x             ; 2 uses
  %i.ad = sext i32 %i.f to i35                    ; 2 uses
  %i.ae = sext i32 %i.v to i35
  %i.af = add nsw i35 %i.ad, %i.ae                ; 2 uses
  %i.ag = shl i35 %i.af, 3
  %i.ah = add i35 %i.ag, 8
  %i.ai = shl nsw i35 %i.ad, 3
  %i.aj = shl i35 %i.af, 3
  %i.ak = add i35 %i.aj, 16
  %i.al = icmp ne i32 %i.v, 0                     ; 2 uses
  %umin488 = zext i1 %i.al to i64
  %i.am = add nsw i64 %umin488, %i.y
  %i.an = add nsw i64 %i.am, %i.g
  %i.ao = shl nsw i64 %i.an, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.ao  ; 5 uses
  %i.ap = shl nuw nsw i64 %wide.trip.count424, 3
  %i.aq = add nsw i64 %i.ap, -8
  %i.ar = mul i64 %i.aq, %i.y
  %i.as = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.at = shl nsw i64 %i.x, 3                     ; 5 uses
  %i.au = getelementptr i8, ptr %8, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.at
  %scevgep489 = getelementptr i8, ptr %i.aw, i64 8 ; 5 uses
  %i.ax = select i1 %i.al, i64 8, i64 0           ; 2 uses
  %i.ay = add nsw i64 %i.ax, -8                   ; 3 uses
  %scevgep490 = getelementptr i8, ptr %5, i64 %i.ay
  %scevgep491 = getelementptr i8, ptr %5, i64 %i.at
  %i.az = add nsw i64 %i.ax, %i.as
  %i.ba = sub nsw i64 %i.az, %i.at                ; 2 uses
  %scevgep492 = getelementptr i8, ptr %8, i64 %i.ba
  %i.bb = sext i32 %i.f to i35                    ; 3 uses
  %i.bc = sext i32 %i.v to i35                    ; 2 uses
  %i.bd = add nsw i35 %i.bb, %i.bc
  %i.be = shl i35 %i.bd, 3
  %i.bf = add i35 %i.be, 8
  %i.bg = shl nsw i35 %i.bb, 3
  %i.bh = add nsw i64 %i.as, 8                    ; 2 uses
  %scevgep494 = getelementptr i8, ptr %8, i64 %i.bh
  %scevgep496 = getelementptr i8, ptr %6, i64 %i.ay
  %scevgep497 = getelementptr i8, ptr %6, i64 %i.at
  %scevgep498 = getelementptr i8, ptr %8, i64 %i.ba
  %i.bi = add nsw i35 %i.bb, %i.bc
  %i.bj = shl i35 %i.bi, 3
  %i.bk = add i35 %i.bj, 16
  %scevgep500 = getelementptr i8, ptr %8, i64 %i.bh
  %scevgep502 = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep503 = getelementptr i8, ptr %4, i64 %i.at
  %i.bl = add nsw i64 %wide.trip.count416, -2     ; 2 uses
  %i.bm = add i32 %i.f, 2
  %i.bn = shl nsw i64 %i.y, 3
  %i.bo = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.bp = getelementptr i8, ptr %8, i64 %i.bn
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %scevgep537 = getelementptr i8, ptr %i.bq, i64 8 ; 5 uses
  %i.br = shl nuw nsw i64 %wide.trip.count424, 3
  %i.bs = add nsw i64 %i.br, -8
  %i.bt = mul i64 %i.bs, %i.y
  %i.bu = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.bv = getelementptr i8, ptr %8, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bo
  %scevgep538 = getelementptr i8, ptr %i.bw, i64 %i.bu ; 5 uses
  %scevgep539 = getelementptr i8, ptr %8, i64 %i.bo
  %i.bx = add i32 %i.f, 2
  %i.by = getelementptr i8, ptr %8, i64 %i.bo
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bu
  %scevgep541 = getelementptr i8, ptr %i.bz, i64 -8
  %i.ca = shl nuw nsw i64 %wide.trip.count416, 2
  %i.cb = getelementptr i8, ptr %7, i64 %i.ca
  %scevgep543 = getelementptr i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cc = getelementptr i8, ptr %3, i64 %i.bu
  %scevgep544 = getelementptr i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.cd = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %min.iters.check599 = icmp ult i32 %i.i, 33
  %i.ce = trunc i64 %i.bl to i32
  %i.cf = icmp ugt i64 %i.bl, 4294967295
  %bound0554 = icmp ult ptr %scevgep537, %scevgep543
  %bound1555 = icmp ult ptr %7, %scevgep538
  %found.conflict556 = and i1 %bound0554, %bound1555
  %stride.check557 = icmp slt i32 %i.f, 0
  %i.cg = or i1 %found.conflict556, %stride.check557
  %bound0559 = icmp ult ptr %scevgep537, %scevgep544
  %bound1560 = icmp ult ptr %3, %scevgep538
  %found.conflict561 = and i1 %bound0559, %bound1560
  %invariant.op = or i1 %i.cg, %found.conflict561
  %bound0564 = icmp ult ptr %scevgep537, %scevgep538
  %invariant.op695.a = or i1 %invariant.op, %bound0564
  %n.vec601 = and i64 %i.cd, -4                   ; 3 uses
  %i.ch = or disjoint i64 %n.vec601, 1
  %cmp.n612 = icmp eq i64 %i.cd, %n.vec601
  %10 = icmp ne i32 %i.v, 0
  %.neg = sext i1 %10 to i64
  %11 = add nsw i64 %i.x, 1
  %12 = add nsw i64 %11, %.neg                    ; 3 uses
  %min.iters.check = icmp ult i64 %12, 16
  %i.ci = trunc nsw i64 %i.ac to i35
  %mul.result = shl i35 %i.ci, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ac, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep491
  %bound1 = icmp ult ptr %scevgep490, %scevgep489
  %found.conflict = and i1 %bound0, %bound1
  %stride.check507 = icmp slt i32 %i.f, 0
  %invariant.op696.a = or i1 %stride.check507, %found.conflict
  %bound0508 = icmp ult ptr %scevgep, %scevgep497
  %bound1509 = icmp ult ptr %scevgep496, %scevgep489
  %found.conflict510 = and i1 %bound0508, %bound1509
  %invariant.op697 = or i1 %invariant.op696.a, %found.conflict510
  %bound0518 = icmp ult ptr %scevgep, %scevgep503
  %bound1519 = icmp ult ptr %scevgep502, %scevgep489
  %found.conflict520 = and i1 %bound0518, %bound1519
  %n.vec = and i64 %12, -4                        ; 3 uses
  %13 = sub nsw i64 %i.x, %n.vec
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %.preheader354

.preheader:                                       ; preds = %bb.d
  %i.cj = add i32 %i.i, -2                        ; 4 uses
  %i.ck = icmp samesign ugt i32 %i.i, 2
  %i.cl = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cm
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %.preheader
  %i.cp = sext i32 %i.f to i64                    ; 4 uses
  %wide.trip.count429 = zext nneg i32 %i.i to i64
  %invariant.gep479 = getelementptr [8 x i8], ptr %i.h, i64 %i.cp ; 3 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.h, i64 %i.cp ; 3 uses
  %i.cq = add nsw i64 %wide.trip.count429, -1     ; 3 uses
  %xtraiter689 = and i64 %i.cq, 1
  %i.cr = icmp eq i32 %i.i, 2
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter692 = and i64 %i.cq, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter693 = phi i64 [ 0, %.lr.ph389.new ], [ %niter693.next.1, %bb.e ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 4 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.cv = add i32 %i.f, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.cx = add i32 %i.cv, %i.cw
  %i.cy = sub i32 %i.cx, %i.ct
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !44
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !44
  %i.de = add nsw i32 %i.ct, %i.f
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !44 ; 2 uses
  %i.di = fneg double %i.dd
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dh, double %i.db)
  %gep480 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426
  store double %i.dh, ptr %gep480, align 8, !tbaa !44
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427
  store double %i.dj, ptr %gep482, align 8, !tbaa !44
  %i.dk = getelementptr [4 x i8], ptr %7, i64 %indvars.iv426
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 4 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.dn = add i32 %i.f, %i.dm
  %i.do = trunc nuw nsw i64 %indvars.iv.next427.1 to i32
  %i.dp = add i32 %i.dn, %i.do
  %i.dq = sub i32 %i.dp, %i.dl
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !44
  %i.du = getelementptr [8 x i8], ptr %3, i64 %indvars.iv426
  %i.dv = load double, ptr %i.du, align 8, !tbaa !44
  %i.dw = add nsw i32 %i.dl, %i.f
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !44 ; 2 uses
  %i.ea = fneg double %i.dv
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dz, double %i.dt)
  %gep480.1 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv.next427
  store double %i.dz, ptr %gep480.1, align 8, !tbaa !44
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.1
  store double %i.eb, ptr %gep482.1, align 8, !tbaa !44
  %niter693.next.1 = add nuw i64 %niter693, 2     ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

.thread:                                          ; preds = %.preheader
  %i.ec = load double, ptr %i.q, align 8, !tbaa !44
  %i.ed = add nsw i32 %i.f, %i.i
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ee ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !44
  %i.eh = fdiv double %i.eg, %i.ec
  store double %i.eh, ptr %i.ef, align 8, !tbaa !44
  br label %.loopexit356

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod691 = trunc i64 %i.cq to i1
  tail call void @llvm.assume(i1 %lcmp.mod691)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426.epil.init
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.epil = add nuw nsw i64 %indvars.iv426.epil.init, 1 ; 2 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv426.epil.init to i32
  %i.el = add i32 %i.f, %i.ek
  %i.em = trunc nuw nsw i64 %indvars.iv.next427.epil to i32
  %i.en = add i32 %i.el, %i.em
  %i.eo = sub i32 %i.en, %i.ej
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426.epil.init
  %i.et = load double, ptr %i.es, align 8, !tbaa !44
  %i.eu = add nsw i32 %i.ej, %i.f
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !44 ; 2 uses
  %i.ey = fneg double %i.et
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.ex, double %i.er)
  %gep480.epil = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426.epil.init
  store double %i.ex, ptr %gep480.epil, align 8, !tbaa !44
  %gep482.epil = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.epil
  store double %i.ez, ptr %gep482.epil, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fa = load double, ptr %i.q, align 8, !tbaa !44
  %i.fb = add nsw i32 %i.f, %i.i
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !44
  %i.ff = fdiv double %i.fe, %i.fa                ; 2 uses
  store double %i.ff, ptr %i.fd, align 8, !tbaa !44
  %i.fg = add nsw i32 %i.f, %i.cl
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !44
  %i.fk = load double, ptr %i.cn, align 8, !tbaa !44
  %i.fl = fneg double %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.ff, double %i.fj)
  %i.fn = load double, ptr %i.co, align 8, !tbaa !44
  %i.fo = fdiv double %i.fm, %i.fn
  store double %i.fo, ptr %i.fi, align 8, !tbaa !44
  br i1 %i.ck, label %.lr.ph393, label %.loopexit356

.lr.ph393:                                        ; preds = %bb.f
  %i.fp = add i32 %i.f, 1                         ; 2 uses
  %i.fq = add i32 %i.f, 2                         ; 2 uses
  %i.fr = zext i32 %i.cj to i64                   ; 9 uses
  %i.fs = sext i32 %i.f to i64
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.h, i64 %i.fs ; 2 uses
  %14 = icmp ne i32 %i.cj, 0
  %.neg679 = sext i1 %14 to i64
  %15 = add nuw nsw i64 %i.fr, 1
  %16 = add nsw i64 %15, %.neg679                 ; 3 uses
  %min.iters.check651 = icmp ult i64 %16, 32
  br i1 %min.iters.check651, label %scalar.ph650.preheader, label %vector.scevcheck614

vector.scevcheck614:                              ; preds = %.lr.ph393
  %17 = icmp ne i32 %i.cj, 0
  %umin615.neg = sext i1 %17 to i64
  %i.ft = add nsw i64 %umin615.neg, %i.fr         ; 2 uses
  %i.fu = add i32 %i.f, %i.i
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  %i.fw = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fx = sub i32 %i.fv, %i.fw
  %i.fy = icmp sgt i32 %i.fx, %i.fv
  %i.fz = add i32 %i.f, %i.i                      ; 2 uses
  %i.ga = sub i32 %i.fz, %i.fw
  %i.gb = icmp sgt i32 %i.ga, %i.fz
  %i.gc = icmp ugt i64 %i.ft, 4294967295
  %i.gd = or i1 %i.gb, %i.gc
  %i.ge = or i1 %i.fy, %i.gd
  br i1 %i.ge, label %scalar.ph650.preheader, label %vector.memcheck617

vector.memcheck617:                               ; preds = %vector.scevcheck614
  %18 = icmp ne i32 %i.cj, 0                      ; 2 uses
  %umin618 = zext i1 %18 to i64
  %i.gf = add nsw i64 %umin618, %i.cp
  %i.gg = add nsw i64 %i.gf, %i.g
  %i.gh = shl nsw i64 %i.gg, 3
  %scevgep619 = getelementptr i8, ptr %8, i64 %i.gh ; 5 uses
  %i.gi = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.gj = or i64 %i.cp, %i.g
  %i.gk = shl nuw nsw i64 %i.fr, 3                ; 5 uses
  %i.gl = add nsw i64 %i.gj, %i.fr
  %i.gm = shl nsw i64 %i.gl, 3
  %19 = getelementptr i8, ptr %8, i64 %i.gm
  %scevgep620.a = getelementptr i8, ptr %19, i64 8 ; 5 uses
  %20 = select i1 %18, i64 8, i64 0               ; 3 uses
  %21 = add nsw i64 %20, -8                       ; 3 uses
  %scevgep621 = getelementptr i8, ptr %5, i64 %21
  %scevgep622 = getelementptr i8, ptr %5, i64 %i.gk
  %i.gn = add i32 %i.f, %i.i
  %i.go = add i32 %i.gn, -1
  %i.gp = sext i32 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 3                    ; 2 uses
  %i.gr = add nsw i64 %20, %i.gq
  %i.gs = add nsw i64 %i.gr, %i.gi
  %i.gt = sub nsw i64 %i.gs, %i.gk
  %scevgep623 = getelementptr i8, ptr %8, i64 %i.gt
  %i.gu = getelementptr i8, ptr %8, i64 %i.gq
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gi
  %scevgep624.a = getelementptr i8, ptr %i.gv, i64 8
  %scevgep625 = getelementptr i8, ptr %6, i64 %21
  %scevgep626 = getelementptr i8, ptr %6, i64 %i.gk
  %i.gw = add i32 %i.f, %i.i
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 3                    ; 2 uses
  %i.gz = add nsw i64 %20, %i.gy
  %i.ha = add nsw i64 %i.gz, %i.gi
  %i.hb = sub nsw i64 %i.ha, %i.gk
  %scevgep627 = getelementptr i8, ptr %8, i64 %i.hb
  %i.hc = getelementptr i8, ptr %8, i64 %i.gy
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gi
  %scevgep628.a = getelementptr i8, ptr %i.hd, i64 8
  %scevgep629 = getelementptr i8, ptr %4, i64 %21
  %scevgep630 = getelementptr i8, ptr %4, i64 %i.gk
  %bound0631 = icmp ult ptr %scevgep619, %scevgep622
  %bound1632 = icmp ult ptr %scevgep621, %scevgep620.a
  %found.conflict633 = and i1 %bound0631, %bound1632
  %bound0634 = icmp ult ptr %scevgep619, %scevgep624.a
  %bound1635 = icmp ult ptr %scevgep623, %scevgep620.a
  %found.conflict636 = and i1 %bound0634, %bound1635
  %conflict.rdx637 = or i1 %found.conflict633, %found.conflict636
  %bound0638 = icmp ult ptr %scevgep619, %scevgep626
  %bound1639 = icmp ult ptr %scevgep625, %scevgep620.a
  %found.conflict640 = and i1 %bound0638, %bound1639
  %conflict.rdx641 = or i1 %conflict.rdx637, %found.conflict640
  %bound0642 = icmp ult ptr %scevgep619, %scevgep628.a
  %bound1643 = icmp ult ptr %scevgep627, %scevgep620.a
  %found.conflict644 = and i1 %bound0642, %bound1643
  %conflict.rdx645 = or i1 %conflict.rdx641, %found.conflict644
  %bound0646 = icmp ult ptr %scevgep619, %scevgep630
  %bound1647 = icmp ult ptr %scevgep629, %scevgep620.a
  %found.conflict648 = and i1 %bound0646, %bound1647
  %conflict.rdx649 = or i1 %conflict.rdx645, %found.conflict648
  br i1 %conflict.rdx649, label %scalar.ph650.preheader, label %vector.ph652

vector.ph652:                                     ; preds = %vector.memcheck617
  %n.vec653 = and i64 %16, -4                     ; 3 uses
  %22 = sub nsw i64 %i.fr, %n.vec653
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph652
  %index655 = phi i64 [ 0, %vector.ph652 ], [ %index.next669, %vector.body654 ] ; 2 uses
  %i.he = sub i64 %i.fr, %index655                ; 5 uses
  %i.hf = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 -24    ; 2 uses
  %wide.load656 = load <4 x double>, ptr %i.hg, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.he
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -24
  %wide.load658 = load <4 x double>, ptr %i.hi, align 8, !tbaa !44, !alias.scope !48
  %i.hj = trunc nuw nsw i64 %i.he to i32          ; 2 uses
  %i.hk = add i32 %i.fp, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -24
  %wide.load659 = load <4 x double>, ptr %i.hn, align 8, !tbaa !44, !alias.scope !49
  %i.ho = fneg <4 x double> %wide.load658
  %i.hp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ho, <4 x double> %wide.load659, <4 x double> %wide.load656)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.he
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -24
  %wide.load662 = load <4 x double>, ptr %i.hr, align 8, !tbaa !44, !alias.scope !50
  %i.hs = add i32 %i.fq, %i.hj
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -24
  %wide.load663 = load <4 x double>, ptr %i.hv, align 8, !tbaa !44, !alias.scope !51
  %i.hw = fneg <4 x double> %wide.load662
  %i.hx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hw, <4 x double> %wide.load663, <4 x double> %i.hp)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.he
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -24
  %wide.load666 = load <4 x double>, ptr %i.hz, align 8, !tbaa !44, !alias.scope !52
  %i.ia = fdiv <4 x double> %i.hx, %wide.load666
  store <4 x double> %i.ia, ptr %i.hg, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next669 = add nuw i64 %index655, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next669, %n.vec653
  br i1 %i.ib, label %middle.block670, label %vector.body654, !llvm.loop !16

middle.block670:                                  ; preds = %vector.body654
  %cmp.n671 = icmp eq i64 %16, %n.vec653
  br i1 %cmp.n671, label %.loopexit356, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %vector.memcheck617, %vector.scevcheck614, %.lr.ph393, %middle.block670
  %indvars.iv431.ph = phi i64 [ %i.fr, %vector.memcheck617 ], [ %i.fr, %vector.scevcheck614 ], [ %i.fr, %.lr.ph393 ], [ %22, %middle.block670 ]
  br label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.preheader, %scalar.ph650
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph650 ], [ %indvars.iv431.ph, %scalar.ph650.preheader ] ; 7 uses
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv431 ; 2 uses
  %i.ic = load double, ptr %gep484, align 8, !tbaa !44
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv431
  %i.ie = load double, ptr %i.id, align 8, !tbaa !44
  %i.if = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  %i.ig = add i32 %i.fp, %i.if
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !44
  %i.ik = fneg double %i.ie
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.ij, double %i.ic)
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv431
  %i.in = load double, ptr %i.im, align 8, !tbaa !44
  %i.io = add i32 %i.fq, %i.if
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
  br i1 %i.ix, label %scalar.ph650, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.iy = trunc i35 %indvar to i32
  %i.iz = mul i32 %i.f, %i.iy
  %i.ja = add i32 %i.iz, %i.bx
  %i.jb = sext i32 %i.ja to i64
  %i.jc = shl nsw i64 %i.jb, 3                    ; 2 uses
  %scevgep540 = getelementptr i8, ptr %scevgep539, i64 %i.jc ; 5 uses
  %scevgep542 = getelementptr i8, ptr %scevgep541, i64 %i.jc ; 5 uses
  %i.jd = trunc i35 %indvar to i32
  %i.je = mul i32 %i.f, %i.jd
  %i.jf = add i32 %i.je, %i.bm                    ; 2 uses
  %i.jg = mul i35 %i.bg, %indvar                  ; 2 uses
  %i.jh = add i35 %i.bf, %i.jg
  %i.ji = sext i35 %i.jh to i64                   ; 2 uses
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.ji
  %scevgep495 = getelementptr i8, ptr %scevgep494, i64 %i.ji
  %i.jj = add i35 %i.bk, %i.jg
  %i.jk = sext i35 %i.jj to i64                   ; 2 uses
  %scevgep499 = getelementptr i8, ptr %scevgep498, i64 %i.jk
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.jk
  %i.jl = mul i35 %i.ai, %indvar                  ; 2 uses
  %i.jm = add i35 %i.ah, %i.jl                    ; 2 uses
  %i.jn = add i35 %i.ak, %i.jl                    ; 2 uses
  %i.jo = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jp = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.jo ; 2 uses
  %i.jq = load double, ptr %gep474, align 8, !tbaa !44
  %i.jr = fdiv double %i.jq, %i.jp
  store double %i.jr, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.js = trunc nsw i64 %i.jo to i32
  %i.jt = add i32 %i.js, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.jo ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.jo ; 2 uses
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.scevcheck534

vector.scevcheck534:                              ; preds = %.lr.ph379
  %i.ju = add i32 %i.jf, %i.ce
  %i.jv = icmp slt i32 %i.ju, %i.jf
  %i.jw = or i1 %i.jv, %i.cf
  br i1 %i.jw, label %scalar.ph598.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %vector.scevcheck534
  %bound0545 = icmp ult ptr %scevgep537, %scevgep542
  %bound1546 = icmp ult ptr %scevgep540, %scevgep538
  %found.conflict547 = and i1 %bound0545, %bound1546
  %conflict.rdx568.reass = or i1 %found.conflict547, %invariant.op695.a
  %bound0569 = icmp ult ptr %scevgep540, %scevgep542
  %conflict.rdx571 = or i1 %conflict.rdx568.reass, %bound0569
  %bound0572 = icmp ult ptr %scevgep540, %scevgep543
  %bound1573 = icmp ult ptr %7, %scevgep542
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  %bound0576 = icmp ult ptr %scevgep540, %scevgep544
  %bound1577 = icmp ult ptr %3, %scevgep542
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx579 = or i1 %conflict.rdx575, %found.conflict578
  %bound0593 = icmp ult ptr %scevgep540, %scevgep538
  %bound1594 = icmp ult ptr %scevgep537, %scevgep542
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx597 = or i1 %found.conflict595, %conflict.rdx579
  br i1 %conflict.rdx597, label %scalar.ph598.preheader, label %vector.body602

vector.body602:                                   ; preds = %vector.memcheck536, %vector.body602
  %index603 = phi i64 [ %index.next610, %vector.body602 ], [ 0, %vector.memcheck536 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body602 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck536 ] ; 2 uses
  %i.jx = or disjoint i64 %index603, 1            ; 3 uses
  %i.jy = getelementptr [4 x i8], ptr %7, i64 %index603
  %wide.load604 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !42, !alias.scope !55
  %i.jz = zext <4 x i32> %wide.load604 to <4 x i64>
  %i.ka = icmp eq <4 x i64> %vec.ind, %i.jz       ; 5 uses
  %i.kb = xor <4 x i1> %i.ka, splat (i1 true)     ; 5 uses
  %i.kc = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.jx ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kc, <4 x i1> %i.kb, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kd = trunc i64 %i.jx to i32
  %i.ke = add i32 %i.jt, %i.kd
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr [8 x i8], ptr %i.h, i64 %i.kf ; 4 uses
  %wide.masked.load605 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kg, <4 x i1> %i.kb, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load605, ptr align 8 %i.kc, <4 x i1> %i.kb), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kh = getelementptr [8 x i8], ptr %3, i64 %index603 ; 2 uses
  %wide.masked.load606 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kh, <4 x i1> %i.kb, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.ki = fneg <4 x double> %wide.masked.load606
  %i.kj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ki, <4 x double> %wide.masked.load605, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kj, ptr align 8 %i.kg, <4 x i1> %i.kb), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load607 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kh, <4 x i1> %i.ka, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kk = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.jx
  %wide.masked.load608 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kk, <4 x i1> %i.ka, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load609 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kg, <4 x i1> %i.ka, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.kl = fneg <4 x double> %wide.masked.load607
  %i.km = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kl, <4 x double> %wide.masked.load608, <4 x double> %wide.masked.load609)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.km, ptr align 8 %i.kg, <4 x i1> %i.ka), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next610 = add nuw i64 %index603, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kn = icmp eq i64 %index.next610, %n.vec601
  br i1 %i.kn, label %middle.block611, label %vector.body602, !llvm.loop !25

middle.block611:                                  ; preds = %vector.body602
  br i1 %cmp.n612, label %._crit_edge380, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck536, %vector.scevcheck534, %.lr.ph379, %middle.block611
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck536 ], [ 1, %vector.scevcheck534 ], [ 1, %.lr.ph379 ], [ %i.ch, %middle.block611 ]
  br label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph598.preheader ] ; 9 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !42
  %i.kq = zext i32 %i.kp to i64
  %i.kr = icmp eq i64 %indvars.iv413, %i.kq
  br i1 %i.kr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph598
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.ku = load double, ptr %gep470, align 8, !tbaa !44
  %i.kv = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.kw = add i32 %i.jt, %i.kv
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kx ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !44
  %i.la = fneg double %i.kt
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.la, double %i.ku, double %i.kz)
  store double %i.lb, ptr %i.ky, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph598
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.lc = load double, ptr %gep468, align 8, !tbaa !44
  %i.ld = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.le = add i32 %i.jt, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lf ; 2 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !44 ; 2 uses
  store double %i.lh, ptr %gep468, align 8, !tbaa !44
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.lj = load double, ptr %i.li, align 8, !tbaa !44
  %i.lk = fneg double %i.lj
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.lh, double %i.lc)
  store double %i.ll, ptr %i.lg, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph598, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block611
  %i.lm = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.jo ; 2 uses
  %i.ln = load double, ptr %gep476, align 8, !tbaa !44
  %i.lo = fdiv double %i.ln, %i.lm                ; 2 uses
  store double %i.lo, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.jo ; 2 uses
  %i.lp = load double, ptr %gep478, align 8, !tbaa !44
  %i.lq = load double, ptr %i.t, align 8, !tbaa !44
  %i.lr = fneg double %i.lq
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.lo, double %i.lp)
  %i.lt = load double, ptr %i.u, align 8, !tbaa !44
  %i.lu = fdiv double %i.ls, %i.lt
  store double %i.lu, ptr %gep478, align 8, !tbaa !44
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.lv = add i64 %i.jo, 1                        ; 2 uses
  %i.lw = add i64 %i.jo, 2                        ; 2 uses
  %invariant.gep471 = getelementptr [8 x i8], ptr %i.h, i64 %i.jo ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.lx = sub i35 %i.jm, %mul.result
  %i.ly = icmp sgt i35 %i.lx, %i.jm
  %i.lz = sub i35 %i.jn, %mul.result
  %i.ma = icmp sgt i35 %i.lz, %i.jn
  %i.mb = or i1 %i.ma, %mul.overflow
  %i.mc = or i1 %i.ly, %i.mb
  br i1 %i.mc, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0504 = icmp ult ptr %scevgep, %scevgep495
  %bound1505 = icmp ult ptr %scevgep493, %scevgep489
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx512.reass = or i1 %found.conflict506, %invariant.op697
  %bound0513 = icmp ult ptr %scevgep, %scevgep501
  %bound1514 = icmp ult ptr %scevgep499, %scevgep489
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx517 = or i1 %found.conflict515, %conflict.rdx512.reass
  %conflict.rdx522 = or i1 %found.conflict520, %conflict.rdx517
  br i1 %conflict.rdx522, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.md = sub i64 %i.x, %index                    ; 6 uses
  %i.me = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.md
  %i.mf = getelementptr i8, ptr %i.me, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mf, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.md
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -24
  %wide.load523 = load <4 x double>, ptr %i.mh, align 8, !tbaa !44, !alias.scope !66
  %i.mi = add i64 %i.lv, %i.md
  %i.mj = shl i64 %i.mi, 32
  %i.mk = ashr exact i64 %i.mj, 29
  %i.ml = getelementptr inbounds i8, ptr %i.h, i64 %i.mk
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -24
  %wide.load524 = load <4 x double>, ptr %i.mm, align 8, !tbaa !44, !alias.scope !67
  %i.mn = fneg <4 x double> %wide.load523
  %i.mo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mn, <4 x double> %wide.load524, <4 x double> %wide.load)
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.md
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 -24
  %wide.load527 = load <4 x double>, ptr %i.mq, align 8, !tbaa !44, !alias.scope !68
  %i.mr = add i64 %i.lw, %i.md
  %i.ms = shl i64 %i.mr, 32
  %i.mt = ashr exact i64 %i.ms, 29
  %i.mu = getelementptr inbounds i8, ptr %i.h, i64 %i.mt
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -24
  %wide.load528 = load <4 x double>, ptr %i.mv, align 8, !tbaa !44, !alias.scope !69
  %i.mw = fneg <4 x double> %wide.load527
  %i.mx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mw, <4 x double> %wide.load528, <4 x double> %i.mo)
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.md
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -24
  %wide.load531 = load <4 x double>, ptr %i.mz, align 8, !tbaa !44, !alias.scope !70
  %i.na = fdiv <4 x double> %i.mx, %wide.load531
  store <4 x double> %i.na, ptr %i.mf, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nb = icmp eq i64 %index.next, %n.vec
  br i1 %i.nb, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv418.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph383 ], [ %13, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %scalar.ph ], [ %indvars.iv418.ph, %scalar.ph.preheader ] ; 8 uses
  %gep472 = getelementptr [8 x i8], ptr %invariant.gep471, i64 %indvars.iv418 ; 2 uses
  %i.nc = load double, ptr %gep472, align 8, !tbaa !44
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv418
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !44
  %i.nf = add i64 %i.lv, %indvars.iv418
  %sext = shl i64 %i.nf, 32
  %i.ng = ashr exact i64 %sext, 29
  %i.nh = getelementptr inbounds i8, ptr %i.h, i64 %i.ng
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !44
  %i.nj = fneg double %i.ne
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.ni, double %i.nc)
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv418
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !44
  %i.nn = add i64 %i.lw, %indvars.iv418
  %sext435 = shl i64 %i.nn, 32
  %i.no = ashr exact i64 %sext435, 29
  %i.np = getelementptr inbounds i8, ptr %i.h, i64 %i.no
  %i.nq = load double, ptr %i.np, align 8, !tbaa !44
  %i.nr = fneg double %i.nm
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nq, double %i.nk)
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv418
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !44
  %i.nv = fdiv double %i.ns, %i.nu
  store double %i.nv, ptr %gep472, align 8, !tbaa !44
  %indvars.iv.next419 = add nsw i64 %indvars.iv418, -1
  %i.nw = icmp samesign ugt i64 %indvars.iv418, 1
  br i1 %i.nw, label %scalar.ph, label %._crit_edge384, !llvm.loop !35

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond425.not, label %.loopexit356, label %.preheader354, !llvm.loop !36

bb.j:                                             ; preds = %bb.c
  br i1 %i.o, label %.preheader358, label %.preheader361

.preheader361:                                    ; preds = %bb.j
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp samesign ult i32 %i.i, 3
  %i.ny = add i32 %i.i, 1                         ; 2 uses
  %i.nz = sext i32 %i.i to i64
  %i.oa = sext i32 %i.f to i64                    ; 3 uses
  %i.ob = add nuw i32 %i.k, 1
  %wide.trip.count403 = zext i32 %i.ob to i64
  %wide.trip.count = zext i32 %i.ny to i64
  %i.oc = or i64 %i.oa, %i.g
  %i.od = shl nsw i64 %i.oc, 3
  %i.oe = shl nsw i64 %i.oa, 3
  %i.of = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.og = getelementptr i8, ptr %8, i64 %i.od
  %i.oh = getelementptr i8, ptr %i.og, i64 16
  %xtraiter = and i64 %i.of, 1
  %i.oi = icmp eq i32 %i.ny, 4
  %unroll_iter = and i64 %i.of, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod683 = trunc i64 %i.of to i1
  br label %bb.l

.preheader358:                                    ; preds = %bb.j
  %i.oj = load double, ptr %4, align 8, !tbaa !44
  %i.ok = sext i32 %i.f to i64                    ; 6 uses
  %i.ol = getelementptr [8 x i8], ptr %i.h, i64 %i.ok ; 2 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 8      ; 2 uses
  %i.on = load double, ptr %i.om, align 8, !tbaa !44
  %i.oo = fdiv double %i.on, %i.oj                ; 2 uses
  store double %i.oo, ptr %i.om, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.k, label %.loopexit356

bb.k:                                             ; preds = %.preheader358
  %.not350370 = icmp eq i32 %i.i, 2
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oq = getelementptr i8, ptr %i.ol, i64 16     ; 2 uses
  %i.or = load double, ptr %i.oq, align 8, !tbaa !44
  %i.os = load double, ptr %5, align 8, !tbaa !44
  %i.ot = fneg double %i.os
  %i.ou = tail call double @llvm.fmuladd.f64(double %i.ot, double %i.oo, double %i.or)
  %i.ov = load double, ptr %i.op, align 8, !tbaa !44
  %i.ow = fdiv double %i.ou, %i.ov
  store double %i.ow, ptr %i.oq, align 8, !tbaa !44
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.k
  %invariant.gep457 = getelementptr [8 x i8], ptr %i.h, i64 %i.ok ; 3 uses
  %invariant.gep461 = getelementptr [8 x i8], ptr %i.h, i64 %i.ok ; 3 uses
  %i.ox = or i64 %i.ok, %i.g
  %i.oy = shl nsw i64 %i.ox, 3
  %i.oz = getelementptr i8, ptr %8, i64 %i.oy
  %scevgep673 = getelementptr i8, ptr %i.oz, i64 16
  %load_initial = load double, ptr %scevgep673, align 8 ; 2 uses
  %i.pa = zext nneg i32 %i.i to i64               ; 2 uses
  %xtraiter684 = and i64 %i.pa, 1
  %i.pb = icmp eq i32 %i.i, 3
  br i1 %i.pb, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %i.pc = and i64 %i.pa, 2147483646
  %i.pd = add nsw i64 %i.pc, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.qy, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv405.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next406.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod686 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod686)
  %gep458.epil = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405.epil.init ; 2 uses
  %i.pe = load double, ptr %gep458.epil, align 8, !tbaa !44
  %i.pf = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405.epil.init
  %i.pg = getelementptr i8, ptr %i.pf, i64 -8
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !44
  %i.pi = fneg double %i.ph
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.pi, double %store_forwarded.epil.init, double %i.pe)
  %i.pk = add nsw i64 %indvars.iv405.epil.init, -2 ; 2 uses
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.pk
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !44
  %gep462.epil = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.pk
  %i.pn = load double, ptr %gep462.epil, align 8, !tbaa !44
  %i.po = fneg double %i.pm
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.po, double %i.pn, double %i.pj)
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405.epil.init
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !44
  %i.ps = fdiv double %i.pp, %i.pr
  store double %i.ps, ptr %gep458.epil, align 8, !tbaa !44
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %i.pt = zext nneg i32 %i.i to i64
  %invariant.gep463 = getelementptr [8 x i8], ptr %i.h, i64 %i.ok
  %invariant.gep465 = getelementptr [8 x i8], ptr %i.h, i64 %i.ok
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.qy, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter688 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter688.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.pu = load double, ptr %gep458, align 8, !tbaa !44
  %i.pv = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.pw = getelementptr i8, ptr %i.pv, i64 -8
  %i.px = load double, ptr %i.pw, align 8, !tbaa !44
  %i.py = fneg double %i.px
  %i.pz = tail call double @llvm.fmuladd.f64(double %i.py, double %store_forwarded, double %i.pu)
  %i.qa = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qa
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qa
  %i.qd = load double, ptr %gep462, align 8, !tbaa !44
  %i.qe = fneg double %i.qc
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.qd, double %i.pz)
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !44
  %i.qi = fdiv double %i.qf, %i.qh                ; 2 uses
  store double %i.qi, ptr %gep458, align 8, !tbaa !44
  %i.qj = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405
  %gep458.1 = getelementptr i8, ptr %i.qj, i64 8  ; 2 uses
  %i.qk = load double, ptr %gep458.1, align 8, !tbaa !44
  %i.ql = getelementptr [8 x i8], ptr %5, i64 %indvars.iv405
  %i.qm = getelementptr i8, ptr %i.ql, i64 -8
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !44
  %i.qo = fneg double %i.qn
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.qo, double %i.qi, double %i.qk)
  %i.qq = add nsw i64 %indvars.iv405, -1          ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qq
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !44
  %gep462.1 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qq
  %i.qt = load double, ptr %gep462.1, align 8, !tbaa !44
  %i.qu = fneg double %i.qs
  %i.qv = tail call double @llvm.fmuladd.f64(double %i.qu, double %i.qt, double %i.qp)
  %i.qw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv405
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !44
  %i.qy = fdiv double %i.qv, %i.qx                ; 3 uses
  store double %i.qy, ptr %gep458.1, align 8, !tbaa !44
  %indvars.iv.next406.1 = add nuw nsw i64 %indvars.iv405, 2 ; 2 uses
  %niter688.next.1 = add i64 %niter688, 2
  %niter688.ncmp.1 = icmp eq i64 %niter688, %i.pd
  br i1 %niter688.ncmp.1, label %.lr.ph375.preheader.loopexit.unr-lcssa, label %.lr.ph373, !llvm.loop !37

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %indvars.iv410 = phi i64 [ %i.pt, %.lr.ph375.preheader ], [ %indvars.iv.next411, %.lr.ph375 ] ; 3 uses
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, -1 ; 4 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !42
  %gep464 = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411 ; 2 uses
  %i.rb = load double, ptr %gep464, align 8, !tbaa !44
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !44
  %gep466 = getelementptr [8 x i8], ptr %invariant.gep465, i64 %indvars.iv410
  %i.re = load double, ptr %gep466, align 8, !tbaa !44
  %i.rf = fneg double %i.rd
  %i.rg = tail call double @llvm.fmuladd.f64(double %i.rf, double %i.re, double %i.rb)
  %i.rh = add nsw i32 %i.ra, %i.f
  %i.ri = sext i32 %i.rh to i64
end_hunk_0
