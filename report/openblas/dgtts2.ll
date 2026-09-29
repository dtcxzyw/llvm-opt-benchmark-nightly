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
  %i.g = sext i32 %narrow to i64                  ; 9 uses
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
  %invariant.op695 = or i1 %invariant.op, %bound0564
  %n.vec601 = and i64 %i.cd, -4                   ; 3 uses
  %i.ch = or disjoint i64 %n.vec601, 1
  %cmp.n612 = icmp eq i64 %i.cd, %n.vec601
  %i.ci = icmp ne i32 %i.v, 0
  %.neg = sext i1 %i.ci to i64
  %i.cj = add nsw i64 %i.x, 1
  %i.ck = add nsw i64 %i.cj, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ck, 16
  %i.cl = trunc nsw i64 %i.ac to i35
  %mul.result = shl i35 %i.cl, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ac, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep491
  %bound1 = icmp ult ptr %scevgep490, %scevgep489
  %found.conflict = and i1 %bound0, %bound1
  %stride.check507 = icmp slt i32 %i.f, 0
  %invariant.op696 = or i1 %stride.check507, %found.conflict
  %bound0508 = icmp ult ptr %scevgep, %scevgep497
  %bound1509 = icmp ult ptr %scevgep496, %scevgep489
  %found.conflict510 = and i1 %bound0508, %bound1509
  %invariant.op697 = or i1 %invariant.op696, %found.conflict510
  %bound0518 = icmp ult ptr %scevgep, %scevgep503
  %bound1519 = icmp ult ptr %scevgep502, %scevgep489
  %found.conflict520 = and i1 %bound0518, %bound1519
  %n.vec = and i64 %i.ck, -4                      ; 3 uses
  %i.cm = sub nsw i64 %i.x, %n.vec
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br label %.preheader354

.preheader:                                       ; preds = %bb.d
  %i.cn = add i32 %i.i, -2                        ; 3 uses
  %i.co = icmp samesign ugt i32 %i.i, 2
  %i.cp = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cq
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %.preheader
  %i.ct = sext i32 %i.f to i64                    ; 4 uses
  %wide.trip.count429 = zext nneg i32 %i.i to i64
  %invariant.gep479 = getelementptr [8 x i8], ptr %i.h, i64 %i.ct ; 3 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.h, i64 %i.ct ; 3 uses
  %i.cu = add nsw i64 %wide.trip.count429, -1     ; 3 uses
  %xtraiter689 = and i64 %i.cu, 1
  %i.cv = icmp eq i32 %i.i, 2
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter692 = and i64 %i.cu, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter693 = phi i64 [ 0, %.lr.ph389.new ], [ %niter693.next.1, %bb.e ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 4 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.cz = add i32 %i.f, %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.db = add i32 %i.cz, %i.da
  %i.dc = sub i32 %i.db, %i.cx
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !44
  %i.di = add nsw i32 %i.cx, %i.f
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !44 ; 2 uses
  %i.dm = fneg double %i.dh
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dl, double %i.df)
  %gep480 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426
  store double %i.dl, ptr %gep480, align 8, !tbaa !44
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427
  store double %i.dn, ptr %gep482, align 8, !tbaa !44
  %i.do = getelementptr [4 x i8], ptr %7, i64 %indvars.iv426
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 4 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.dr = add i32 %i.f, %i.dq
  %i.ds = trunc nuw nsw i64 %indvars.iv.next427.1 to i32
  %i.dt = add i32 %i.dr, %i.ds
  %i.du = sub i32 %i.dt, %i.dp
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !44
  %i.dy = getelementptr [8 x i8], ptr %3, i64 %indvars.iv426
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !44
  %i.ea = add nsw i32 %i.dp, %i.f
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !44 ; 2 uses
  %i.ee = fneg double %i.dz
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ed, double %i.dx)
  %gep480.1 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv.next427
  store double %i.ed, ptr %gep480.1, align 8, !tbaa !44
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.1
  store double %i.ef, ptr %gep482.1, align 8, !tbaa !44
  %niter693.next.1 = add nuw i64 %niter693, 2     ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

.thread:                                          ; preds = %.preheader
  %i.eg = load double, ptr %i.q, align 8, !tbaa !44
  %i.eh = add nsw i32 %i.f, %i.i
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !44
  %i.el = fdiv double %i.ek, %i.eg
  store double %i.el, ptr %i.ej, align 8, !tbaa !44
  br label %.loopexit356

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod691 = trunc i64 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod691)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426.epil.init
  %i.en = load i32, ptr %i.em, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.epil = add nuw nsw i64 %indvars.iv426.epil.init, 1 ; 2 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv426.epil.init to i32
  %i.ep = add i32 %i.f, %i.eo
  %i.eq = trunc nuw nsw i64 %indvars.iv.next427.epil to i32
  %i.er = add i32 %i.ep, %i.eq
  %i.es = sub i32 %i.er, %i.en
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !44
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426.epil.init
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !44
  %i.ey = add nsw i32 %i.en, %i.f
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !44 ; 2 uses
  %i.fc = fneg double %i.ex
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fb, double %i.ev)
  %gep480.epil = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426.epil.init
  store double %i.fb, ptr %gep480.epil, align 8, !tbaa !44
  %gep482.epil = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.epil
  store double %i.fd, ptr %gep482.epil, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fe = load double, ptr %i.q, align 8, !tbaa !44
  %i.ff = add nsw i32 %i.f, %i.i
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fg ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !44
  %i.fj = fdiv double %i.fi, %i.fe                ; 2 uses
  store double %i.fj, ptr %i.fh, align 8, !tbaa !44
  %i.fk = add nsw i32 %i.f, %i.cp
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fl ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !44
  %i.fo = load double, ptr %i.cr, align 8, !tbaa !44
  %i.fp = fneg double %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fj, double %i.fn)
  %i.fr = load double, ptr %i.cs, align 8, !tbaa !44
  %i.fs = fdiv double %i.fq, %i.fr
  store double %i.fs, ptr %i.fm, align 8, !tbaa !44
  br i1 %i.co, label %.lr.ph393, label %.loopexit356

.lr.ph393:                                        ; preds = %bb.f
  %i.ft = add i32 %i.f, 1                         ; 2 uses
  %i.fu = add i32 %i.f, 2                         ; 2 uses
  %i.fv = zext i32 %i.cn to i64                   ; 9 uses
  %i.fw = sext i32 %i.f to i64
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.h, i64 %i.fw ; 2 uses
  %i.fx = icmp ne i32 %i.cn, 0                    ; 2 uses
  %10 = zext i1 %i.fx to i64                      ; 2 uses
  %i.fy = add nuw nsw i64 %i.fv, 1
  %11 = sub nuw nsw i64 %i.fy, %10                ; 3 uses
  %min.iters.check651 = icmp samesign ult i64 %11, 32
  br i1 %min.iters.check651, label %scalar.ph650.preheader, label %vector.scevcheck614

vector.scevcheck614:                              ; preds = %.lr.ph393
  %i.fz = icmp ne i32 %i.cn, 0
  %umin615.neg = sext i1 %i.fz to i64
  %i.ga = add nsw i64 %umin615.neg, %i.fv         ; 2 uses
  %i.gb = add i32 %i.f, %i.i
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  %i.gd = trunc i64 %i.ga to i32                  ; 2 uses
  %i.ge = sub i32 %i.gc, %i.gd
  %i.gf = icmp sgt i32 %i.ge, %i.gc
  %i.gg = add i32 %i.f, %i.i                      ; 2 uses
  %i.gh = sub i32 %i.gg, %i.gd
  %i.gi = icmp sgt i32 %i.gh, %i.gg
  %i.gj = icmp ugt i64 %i.ga, 4294967295
  %i.gk = or i1 %i.gi, %i.gj
  %i.gl = or i1 %i.gf, %i.gk
  br i1 %i.gl, label %scalar.ph650.preheader, label %vector.memcheck617

vector.memcheck617:                               ; preds = %vector.scevcheck614
  %i.gm = add nsw i64 %10, %i.ct
  %i.gn = add nsw i64 %i.gm, %i.g
  %i.go = shl nsw i64 %i.gn, 3
  %scevgep619 = getelementptr i8, ptr %8, i64 %i.go ; 5 uses
  %i.gp = shl nsw i64 %i.g, 3                     ; 4 uses
  %12 = shl nuw nsw i64 %i.fv, 3                  ; 5 uses
  %13 = or i64 %i.ct, %i.g
  %i.gq = add nsw i64 %13, %i.fv
  %i.gr = shl nsw i64 %i.gq, 3
  %i.gs = getelementptr i8, ptr %8, i64 %i.gr
  %scevgep620 = getelementptr i8, ptr %i.gs, i64 8 ; 5 uses
  %i.gt = select i1 %i.fx, i64 8, i64 0           ; 3 uses
  %i.gu = add nsw i64 %i.gt, -8                   ; 3 uses
  %scevgep621 = getelementptr i8, ptr %5, i64 %i.gu
  %scevgep622 = getelementptr i8, ptr %5, i64 %12
  %i.gv = add i32 %i.f, %i.i                      ; 2 uses
  %i.gw = add i32 %i.gv, -1
  %i.gx = sext i32 %i.gw to i64
  %i.gy = shl nsw i64 %i.gx, 3                    ; 2 uses
  %i.gz = add nsw i64 %i.gt, %i.gy
  %i.ha = add nsw i64 %i.gz, %i.gp
  %i.hb = sub nsw i64 %i.ha, %12
  %scevgep623 = getelementptr i8, ptr %8, i64 %i.hb
  %i.hc = getelementptr i8, ptr %8, i64 %i.gy
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gp
  %scevgep624 = getelementptr i8, ptr %i.hd, i64 8
  %scevgep625 = getelementptr i8, ptr %6, i64 %i.gu
  %scevgep626 = getelementptr i8, ptr %6, i64 %12
  %i.he = sext i32 %i.gv to i64
  %i.hf = shl nsw i64 %i.he, 3                    ; 2 uses
  %i.hg = add nsw i64 %i.gt, %i.hf
  %i.hh = add nsw i64 %i.hg, %i.gp
  %i.hi = sub nsw i64 %i.hh, %12
  %scevgep627 = getelementptr i8, ptr %8, i64 %i.hi
  %i.hj = getelementptr i8, ptr %8, i64 %i.hf
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.gp
  %scevgep628 = getelementptr i8, ptr %i.hk, i64 8
  %scevgep629 = getelementptr i8, ptr %4, i64 %i.gu
  %scevgep630 = getelementptr i8, ptr %4, i64 %12
  %bound0631 = icmp ult ptr %scevgep619, %scevgep622
  %bound1632 = icmp ult ptr %scevgep621, %scevgep620
  %found.conflict633 = and i1 %bound0631, %bound1632
  %bound0634 = icmp ult ptr %scevgep619, %scevgep624
  %bound1635 = icmp ult ptr %scevgep623, %scevgep620
  %found.conflict636 = and i1 %bound0634, %bound1635
  %conflict.rdx637 = or i1 %found.conflict633, %found.conflict636
  %bound0638 = icmp ult ptr %scevgep619, %scevgep626
  %bound1639 = icmp ult ptr %scevgep625, %scevgep620
  %found.conflict640 = and i1 %bound0638, %bound1639
  %conflict.rdx641 = or i1 %conflict.rdx637, %found.conflict640
  %bound0642 = icmp ult ptr %scevgep619, %scevgep628
  %bound1643 = icmp ult ptr %scevgep627, %scevgep620
  %found.conflict644 = and i1 %bound0642, %bound1643
  %conflict.rdx645 = or i1 %conflict.rdx641, %found.conflict644
  %bound0646 = icmp ult ptr %scevgep619, %scevgep630
  %bound1647 = icmp ult ptr %scevgep629, %scevgep620
  %found.conflict648 = and i1 %bound0646, %bound1647
  %conflict.rdx649 = or i1 %conflict.rdx645, %found.conflict648
  br i1 %conflict.rdx649, label %scalar.ph650.preheader, label %vector.ph652

vector.ph652:                                     ; preds = %vector.memcheck617
  %n.vec653 = and i64 %11, 8589934588             ; 3 uses
  %i.hl = sub nsw i64 %i.fv, %n.vec653
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph652
  %index655 = phi i64 [ 0, %vector.ph652 ], [ %index.next669, %vector.body654 ] ; 2 uses
  %i.hm = sub i64 %i.fv, %index655                ; 5 uses
  %i.hn = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -24    ; 2 uses
  %wide.load656 = load <4 x double>, ptr %i.ho, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hm
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -24
  %wide.load658 = load <4 x double>, ptr %i.hq, align 8, !tbaa !44, !alias.scope !48
  %i.hr = trunc nuw nsw i64 %i.hm to i32          ; 2 uses
  %i.hs = add i32 %i.ft, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -24
  %wide.load659 = load <4 x double>, ptr %i.hv, align 8, !tbaa !44, !alias.scope !49
  %i.hw = fneg <4 x double> %wide.load658
  %i.hx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hw, <4 x double> %wide.load659, <4 x double> %wide.load656)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hm
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -24
  %wide.load662 = load <4 x double>, ptr %i.hz, align 8, !tbaa !44, !alias.scope !50
  %i.ia = add i32 %i.fu, %i.hr
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -24
  %wide.load663 = load <4 x double>, ptr %i.id, align 8, !tbaa !44, !alias.scope !51
  %i.ie = fneg <4 x double> %wide.load662
  %i.if = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ie, <4 x double> %wide.load663, <4 x double> %i.hx)
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hm
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -24
  %wide.load666 = load <4 x double>, ptr %i.ih, align 8, !tbaa !44, !alias.scope !52
  %i.ii = fdiv <4 x double> %i.if, %wide.load666
  store <4 x double> %i.ii, ptr %i.ho, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next669 = add nuw i64 %index655, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next669, %n.vec653
  br i1 %i.ij, label %middle.block670, label %vector.body654, !llvm.loop !16

middle.block670:                                  ; preds = %vector.body654
  %cmp.n671 = icmp eq i64 %11, %n.vec653
  br i1 %cmp.n671, label %.loopexit356, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %vector.memcheck617, %vector.scevcheck614, %.lr.ph393, %middle.block670
  %indvars.iv431.ph = phi i64 [ %i.fv, %vector.memcheck617 ], [ %i.fv, %vector.scevcheck614 ], [ %i.fv, %.lr.ph393 ], [ %i.hl, %middle.block670 ]
  br label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.preheader, %scalar.ph650
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph650 ], [ %indvars.iv431.ph, %scalar.ph650.preheader ] ; 7 uses
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv431 ; 2 uses
  %i.ik = load double, ptr %gep484, align 8, !tbaa !44
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv431
  %i.im = load double, ptr %i.il, align 8, !tbaa !44
  %i.in = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  %i.io = add i32 %i.ft, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !44
  %i.is = fneg double %i.im
  %i.it = tail call double @llvm.fmuladd.f64(double %i.is, double %i.ir, double %i.ik)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv431
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !44
  %i.iw = add i32 %i.fu, %i.in
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !44
  %i.ja = fneg double %i.iv
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.iz, double %i.it)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv431
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !44
  %i.je = fdiv double %i.jb, %i.jd
  store double %i.je, ptr %gep484, align 8, !tbaa !44
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1
  %i.jf = icmp samesign ugt i64 %indvars.iv431, 1
  br i1 %i.jf, label %scalar.ph650, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.jg = trunc i35 %indvar to i32
  %i.jh = mul i32 %i.f, %i.jg
  %i.ji = add i32 %i.jh, %i.bx
  %i.jj = sext i32 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 3                    ; 2 uses
  %scevgep540 = getelementptr i8, ptr %scevgep539, i64 %i.jk ; 5 uses
  %scevgep542 = getelementptr i8, ptr %scevgep541, i64 %i.jk ; 5 uses
  %i.jl = trunc i35 %indvar to i32
  %i.jm = mul i32 %i.f, %i.jl
  %i.jn = add i32 %i.jm, %i.bm                    ; 2 uses
  %i.jo = mul i35 %i.bg, %indvar                  ; 2 uses
  %i.jp = add i35 %i.bf, %i.jo
  %i.jq = sext i35 %i.jp to i64                   ; 2 uses
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.jq
  %scevgep495 = getelementptr i8, ptr %scevgep494, i64 %i.jq
  %i.jr = add i35 %i.bk, %i.jo
  %i.js = sext i35 %i.jr to i64                   ; 2 uses
  %scevgep499 = getelementptr i8, ptr %scevgep498, i64 %i.js
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.js
  %i.jt = mul i35 %i.ai, %indvar                  ; 2 uses
  %i.ju = add i35 %i.ah, %i.jt                    ; 2 uses
  %i.jv = add i35 %i.ak, %i.jt                    ; 2 uses
  %i.jw = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jx = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.jw ; 2 uses
  %i.jy = load double, ptr %gep474, align 8, !tbaa !44
  %i.jz = fdiv double %i.jy, %i.jx
  store double %i.jz, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.ka = trunc nsw i64 %i.jw to i32
  %i.kb = add i32 %i.ka, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.jw ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.jw ; 2 uses
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.scevcheck534

vector.scevcheck534:                              ; preds = %.lr.ph379
  %i.kc = add i32 %i.jn, %i.ce
  %i.kd = icmp slt i32 %i.kc, %i.jn
  %i.ke = or i1 %i.kd, %i.cf
  br i1 %i.ke, label %scalar.ph598.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %vector.scevcheck534
  %bound0545 = icmp ult ptr %scevgep537, %scevgep542
  %bound1546 = icmp ult ptr %scevgep540, %scevgep538
  %found.conflict547 = and i1 %bound0545, %bound1546
  %conflict.rdx568.reass = or i1 %found.conflict547, %invariant.op695
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
  %i.kf = or disjoint i64 %index603, 1            ; 3 uses
  %i.kg = getelementptr [4 x i8], ptr %7, i64 %index603
  %wide.load604 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !42, !alias.scope !55
  %i.kh = zext <4 x i32> %wide.load604 to <4 x i64>
  %i.ki = icmp eq <4 x i64> %vec.ind, %i.kh       ; 5 uses
  %i.kj = xor <4 x i1> %i.ki, splat (i1 true)     ; 5 uses
  %i.kk = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.kf ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kk, <4 x i1> %i.kj, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kl = trunc i64 %i.kf to i32
  %i.km = add i32 %i.kb, %i.kl
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr [8 x i8], ptr %i.h, i64 %i.kn ; 4 uses
  %wide.masked.load605 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ko, <4 x i1> %i.kj, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load605, ptr align 8 %i.kk, <4 x i1> %i.kj), !tbaa !44, !alias.scope !56, !noalias !57
  %i.kp = getelementptr [8 x i8], ptr %3, i64 %index603 ; 2 uses
  %wide.masked.load606 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kp, <4 x i1> %i.kj, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.kq = fneg <4 x double> %wide.masked.load606
  %i.kr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kq, <4 x double> %wide.masked.load605, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kr, ptr align 8 %i.ko, <4 x i1> %i.kj), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load607 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kp, <4 x i1> %i.ki, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.ks = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.kf
  %wide.masked.load608 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ks, <4 x i1> %i.ki, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load609 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ko, <4 x i1> %i.ki, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.kt = fneg <4 x double> %wide.masked.load607
  %i.ku = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kt, <4 x double> %wide.masked.load608, <4 x double> %wide.masked.load609)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ku, ptr align 8 %i.ko, <4 x i1> %i.ki), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next610 = add nuw i64 %index603, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kv = icmp eq i64 %index.next610, %n.vec601
  br i1 %i.kv, label %middle.block611, label %vector.body602, !llvm.loop !25

middle.block611:                                  ; preds = %vector.body602
  br i1 %cmp.n612, label %._crit_edge380, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck536, %vector.scevcheck534, %.lr.ph379, %middle.block611
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck536 ], [ 1, %vector.scevcheck534 ], [ 1, %.lr.ph379 ], [ %i.ch, %middle.block611 ]
  br label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph598.preheader ] ; 9 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !42
  %i.ky = zext i32 %i.kx to i64
  %i.kz = icmp eq i64 %indvars.iv413, %i.ky
  br i1 %i.kz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph598
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.lb = load double, ptr %i.la, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.lc = load double, ptr %gep470, align 8, !tbaa !44
  %i.ld = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.le = add i32 %i.kb, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lf ; 2 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !44
  %i.li = fneg double %i.lb
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.li, double %i.lc, double %i.lh)
  store double %i.lj, ptr %i.lg, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph598
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.lk = load double, ptr %gep468, align 8, !tbaa !44
  %i.ll = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.lm = add i32 %i.kb, %i.ll
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ln ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !44 ; 2 uses
  store double %i.lp, ptr %gep468, align 8, !tbaa !44
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !44
  %i.ls = fneg double %i.lr
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.lp, double %i.lk)
  store double %i.lt, ptr %i.lo, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph598, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block611
  %i.lu = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.jw ; 2 uses
  %i.lv = load double, ptr %gep476, align 8, !tbaa !44
  %i.lw = fdiv double %i.lv, %i.lu                ; 2 uses
  store double %i.lw, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.jw ; 2 uses
  %i.lx = load double, ptr %gep478, align 8, !tbaa !44
  %i.ly = load double, ptr %i.t, align 8, !tbaa !44
  %i.lz = fneg double %i.ly
end_hunk_0
