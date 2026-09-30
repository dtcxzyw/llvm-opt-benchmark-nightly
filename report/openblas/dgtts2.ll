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
  %10 = or i64 %i.y, %i.g
  %11 = shl nsw i64 %10, 3
  %12 = getelementptr i8, ptr %8, i64 %11
  %scevgep = getelementptr i8, ptr %12, i64 8     ; 5 uses
  %i.ak = shl nuw nsw i64 %wide.trip.count424, 3
  %i.al = add nsw i64 %i.ak, -8
  %i.am = mul i64 %i.al, %i.y
  %i.an = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.ao = shl nsw i64 %i.x, 3                     ; 5 uses
  %i.ap = getelementptr i8, ptr %8, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep489.a = getelementptr i8, ptr %i.aq, i64 %i.ao
  %scevgep490.a = getelementptr i8, ptr %scevgep489.a, i64 8 ; 5 uses
  %scevgep491.a = getelementptr i8, ptr %5, i64 %i.ao
  %i.ar = add nsw i64 %i.an, 8
  %i.as = sub nsw i64 %i.ar, %i.ao                ; 2 uses
  %scevgep492.a = getelementptr i8, ptr %8, i64 %i.as
  %i.at = sext i32 %i.f to i35                    ; 3 uses
  %i.au = sext i32 %i.v to i35                    ; 2 uses
  %i.av = add nsw i35 %i.at, %i.au
  %i.aw = shl i35 %i.av, 3
  %i.ax = add i35 %i.aw, 8
  %i.ay = shl nsw i35 %i.at, 3
  %i.az = add nsw i64 %i.an, 8                    ; 2 uses
  %scevgep496.a = getelementptr i8, ptr %8, i64 %i.az
  %scevgep497.a = getelementptr i8, ptr %6, i64 %i.ao
  %scevgep498.a = getelementptr i8, ptr %8, i64 %i.as
  %i.ba = add nsw i35 %i.at, %i.au
  %i.bb = shl i35 %i.ba, 3
  %i.bc = add i35 %i.bb, 16
  %scevgep502 = getelementptr i8, ptr %8, i64 %i.az
  %scevgep503 = getelementptr i8, ptr %4, i64 %i.ao
  %i.bd = add nsw i64 %wide.trip.count416, -2     ; 2 uses
  %i.be = add i32 %i.f, 2
  %i.bf = shl nsw i64 %i.y, 3
  %i.bg = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.bh = getelementptr i8, ptr %8, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bg
  %scevgep537.a = getelementptr i8, ptr %i.bi, i64 8 ; 5 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count424, 3
  %i.bk = add nsw i64 %i.bj, -8
  %i.bl = mul i64 %i.bk, %i.y
  %i.bm = shl nuw nsw i64 %wide.trip.count416, 3  ; 3 uses
  %i.bn = getelementptr i8, ptr %8, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bg
  %scevgep538.a = getelementptr i8, ptr %i.bo, i64 %i.bm ; 5 uses
  %scevgep539.a = getelementptr i8, ptr %8, i64 %i.bg
  %i.bp = add i32 %i.f, 2
  %i.bq = getelementptr i8, ptr %8, i64 %i.bg
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bm
  %scevgep541 = getelementptr i8, ptr %i.br, i64 -8
  %i.bs = shl nuw nsw i64 %wide.trip.count416, 2
  %i.bt = getelementptr i8, ptr %7, i64 %i.bs
  %scevgep543 = getelementptr i8, ptr %i.bt, i64 -4 ; 2 uses
  %i.bu = getelementptr i8, ptr %3, i64 %i.bm
  %scevgep544 = getelementptr i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bv = add nsw i64 %wide.trip.count416, -1     ; 2 uses
  %min.iters.check599 = icmp ult i32 %i.i, 33
  %i.bw = trunc i64 %i.bd to i32
  %i.bx = icmp ugt i64 %i.bd, 4294967295
  %bound0554 = icmp ult ptr %scevgep537.a, %scevgep543
  %bound1555 = icmp ult ptr %7, %scevgep538.a
  %found.conflict556 = and i1 %bound0554, %bound1555
  %stride.check557 = icmp slt i32 %i.f, 0
  %i.by = or i1 %found.conflict556, %stride.check557
  %bound0559 = icmp ult ptr %scevgep537.a, %scevgep544
  %bound1560 = icmp ult ptr %3, %scevgep538.a
  %found.conflict561 = and i1 %bound0559, %bound1560
  %invariant.op = or i1 %i.by, %found.conflict561
  %bound0564 = icmp ult ptr %scevgep537.a, %scevgep538.a
  %invariant.op714 = or i1 %invariant.op, %bound0564
  %n.vec601 = and i64 %i.bv, -4                   ; 3 uses
  %i.bz = or disjoint i64 %n.vec601, 1
  %cmp.n612 = icmp eq i64 %i.bv, %n.vec601
  %min.iters.check = icmp ult i32 %i.v, 16
  %i.ca = trunc nsw i64 %i.ab to i35
  %mul.result = shl i35 %i.ca, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ab, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep491.a
  %bound1 = icmp ult ptr %5, %scevgep490.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check507 = icmp slt i32 %i.f, 0
  %invariant.op715 = or i1 %stride.check507, %found.conflict
  %bound0508 = icmp ult ptr %scevgep, %scevgep497.a
  %bound1509 = icmp ult ptr %6, %scevgep490.a
  %found.conflict510 = and i1 %bound0508, %bound1509
  %invariant.op716 = or i1 %invariant.op715, %found.conflict510
  %bound0518 = icmp ult ptr %scevgep, %scevgep503
  %bound1519 = icmp ult ptr %4, %scevgep490.a
  %found.conflict520 = and i1 %bound0518, %bound1519
  %n.vec = and i64 %i.x, 8589934588               ; 2 uses
  %13 = and i64 %i.x, 3
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader354

.preheader:                                       ; preds = %bb.d
  %i.cb = add i32 %i.i, -2                        ; 2 uses
  %i.cc = icmp samesign ugt i32 %i.i, 2
  %i.cd = add nsw i32 %i.i, -1                    ; 2 uses
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ce
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %.preheader
  %i.ch = sext i32 %i.f to i64                    ; 4 uses
  %wide.trip.count429 = zext nneg i32 %i.i to i64
  %invariant.gep479 = getelementptr [8 x i8], ptr %i.h, i64 %i.ch ; 3 uses
  %invariant.gep481 = getelementptr [8 x i8], ptr %i.h, i64 %i.ch ; 3 uses
  %i.ci = add nsw i64 %wide.trip.count429, -1     ; 3 uses
  %xtraiter708 = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.i, 2
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter711 = and i64 %i.ci, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter712 = phi i64 [ 0, %.lr.ph389.new ], [ %niter712.next.1, %bb.e ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 4 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.cn = add i32 %i.f, %i.cm
  %i.co = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.cp = add i32 %i.cn, %i.co
  %i.cq = sub i32 %i.cp, %i.cl
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !44
  %i.cw = add nsw i32 %i.cl, %i.f
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !44 ; 2 uses
  %i.da = fneg double %i.cv
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.ct)
  %gep480 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426
  store double %i.cz, ptr %gep480, align 8, !tbaa !44
  %gep482 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427
  store double %i.db, ptr %gep482, align 8, !tbaa !44
  %i.dc = getelementptr [4 x i8], ptr %7, i64 %indvars.iv426
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.1 = add nuw nsw i64 %indvars.iv426, 2 ; 4 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.next427 to i32
  %i.df = add i32 %i.f, %i.de
  %i.dg = trunc nuw nsw i64 %indvars.iv.next427.1 to i32
  %i.dh = add i32 %i.df, %i.dg
  %i.di = sub i32 %i.dh, %i.dd
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !44
  %i.dm = getelementptr [8 x i8], ptr %3, i64 %indvars.iv426
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !44
  %i.do = add nsw i32 %i.dd, %i.f
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !44 ; 2 uses
  %i.ds = fneg double %i.dn
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dr, double %i.dl)
  %gep480.1 = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv.next427
  store double %i.dr, ptr %gep480.1, align 8, !tbaa !44
  %gep482.1 = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.1
  store double %i.dt, ptr %gep482.1, align 8, !tbaa !44
  %niter712.next.1 = add nuw i64 %niter712, 2     ; 2 uses
  %niter712.ncmp.1 = icmp eq i64 %niter712.next.1, %unroll_iter711
  br i1 %niter712.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

.thread:                                          ; preds = %.preheader
  %i.du = load double, ptr %i.q, align 8, !tbaa !44
  %i.dv = add nsw i32 %i.f, %i.i
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dw ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !44
  %i.dz = fdiv double %i.dy, %i.du
  store double %i.dz, ptr %i.dx, align 8, !tbaa !44
  br label %.loopexit356

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod710 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod710)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv426.epil.init
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !42 ; 2 uses
  %indvars.iv.next427.epil = add nuw nsw i64 %indvars.iv426.epil.init, 1 ; 2 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv426.epil.init to i32
  %i.ed = add i32 %i.f, %i.ec
  %i.ee = trunc nuw nsw i64 %indvars.iv.next427.epil to i32
  %i.ef = add i32 %i.ed, %i.ee
  %i.eg = sub i32 %i.ef, %i.eb
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !44
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv426.epil.init
  %i.el = load double, ptr %i.ek, align 8, !tbaa !44
  %i.em = add nsw i32 %i.eb, %i.f
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !44 ; 2 uses
  %i.eq = fneg double %i.el
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.ep, double %i.ej)
  %gep480.epil = getelementptr [8 x i8], ptr %invariant.gep479, i64 %indvars.iv426.epil.init
  store double %i.ep, ptr %gep480.epil, align 8, !tbaa !44
  %gep482.epil = getelementptr [8 x i8], ptr %invariant.gep481, i64 %indvars.iv.next427.epil
  store double %i.er, ptr %gep482.epil, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.es = load double, ptr %i.q, align 8, !tbaa !44
  %i.et = add nsw i32 %i.f, %i.i
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eu ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !44
  %i.ex = fdiv double %i.ew, %i.es                ; 2 uses
  store double %i.ex, ptr %i.ev, align 8, !tbaa !44
  %i.ey = add nsw i32 %i.f, %i.cd
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !44
  %i.fc = load double, ptr %i.cf, align 8, !tbaa !44
  %i.fd = fneg double %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.ex, double %i.fb)
  %i.ff = load double, ptr %i.cg, align 8, !tbaa !44
  %i.fg = fdiv double %i.fe, %i.ff
  store double %i.fg, ptr %i.fa, align 8, !tbaa !44
  br i1 %i.cc, label %.lr.ph393, label %.loopexit356

.lr.ph393:                                        ; preds = %bb.f
  %i.fh = add i32 %i.f, 1                         ; 2 uses
  %i.fi = add i32 %i.f, 2                         ; 2 uses
  %i.fj = zext i32 %i.cb to i64                   ; 10 uses
  %i.fk = sext i32 %i.f to i64
  %invariant.gep483 = getelementptr [8 x i8], ptr %i.h, i64 %i.fk ; 2 uses
  %min.iters.check651 = icmp ult i32 %i.cb, 28
  br i1 %min.iters.check651, label %scalar.ph650.preheader, label %vector.scevcheck614

vector.scevcheck614:                              ; preds = %.lr.ph393
  %i.fl = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fm = add i32 %i.f, %i.i
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  %i.fo = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fp = sub i32 %i.fn, %i.fo
  %i.fq = icmp sgt i32 %i.fp, %i.fn
  %i.fr = add i32 %i.f, %i.i                      ; 2 uses
  %i.fs = sub i32 %i.fr, %i.fo
  %i.ft = icmp sgt i32 %i.fs, %i.fr
  %i.fu = icmp ugt i64 %i.fl, 4294967295
  %i.fv = or i1 %i.ft, %i.fu
  %i.fw = or i1 %i.fq, %i.fv
  br i1 %i.fw, label %scalar.ph650.preheader, label %vector.memcheck652

vector.memcheck652:                               ; preds = %vector.scevcheck614
  %14 = or i64 %i.ch, %i.g
  %i.fx = shl nsw i64 %14, 3
  %i.fy = getelementptr i8, ptr %8, i64 %i.fx
  %15 = getelementptr i8, ptr %i.fy, i64 8        ; 5 uses
  %i.fz = shl nuw nsw i64 %i.fj, 3                ; 5 uses
  %i.ga = or i64 %i.ch, %i.g
  %i.gb = add nsw i64 %i.ga, %i.fj
  %i.gc = shl nsw i64 %i.gb, 3
  %i.gd = getelementptr i8, ptr %8, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 8      ; 5 uses
  %i.gf = getelementptr i8, ptr %5, i64 %i.fz
  %i.gg = add i32 %i.f, %i.i                      ; 2 uses
  %i.gh = add i32 %i.gg, -1
  %i.gi = sext i32 %i.gh to i64
  %16 = add nsw i64 %i.gi, %i.g
  %17 = shl nsw i64 %16, 3
  %i.gj = add nsw i64 %17, 8                      ; 2 uses
  %i.gk = sub nsw i64 %i.gj, %i.fz
  %i.gl = getelementptr i8, ptr %8, i64 %i.gk
  %i.gm = getelementptr i8, ptr %8, i64 %i.gj
  %i.gn = getelementptr i8, ptr %6, i64 %i.fz
  %i.go = sext i32 %i.gg to i64
  %18 = add nsw i64 %i.go, %i.g
  %19 = shl nsw i64 %18, 3
  %i.gp = add nsw i64 %19, 8                      ; 2 uses
  %i.gq = sub nsw i64 %i.gp, %i.fz
  %i.gr = getelementptr i8, ptr %8, i64 %i.gq
  %i.gs = getelementptr i8, ptr %8, i64 %i.gp
  %i.gt = getelementptr i8, ptr %4, i64 %i.fz
  %bound0653 = icmp ult ptr %15, %i.gf
  %bound1654 = icmp ult ptr %5, %i.ge
  %found.conflict655 = and i1 %bound0653, %bound1654
  %bound0656 = icmp ult ptr %15, %i.gm
  %bound1657 = icmp ult ptr %i.gl, %i.ge
  %found.conflict658 = and i1 %bound0656, %bound1657
  %conflict.rdx659 = or i1 %found.conflict655, %found.conflict658
  %bound0660 = icmp ult ptr %15, %i.gn
  %bound1661 = icmp ult ptr %6, %i.ge
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %conflict.rdx659, %found.conflict662
  %bound0664 = icmp ult ptr %15, %i.gs
  %bound1665 = icmp ult ptr %i.gr, %i.ge
  %found.conflict666 = and i1 %bound0664, %bound1665
  %conflict.rdx667 = or i1 %conflict.rdx663, %found.conflict666
  %bound0668 = icmp ult ptr %15, %i.gt
  %bound1669 = icmp ult ptr %4, %i.ge
  %found.conflict670 = and i1 %bound0668, %bound1669
  %conflict.rdx671 = or i1 %conflict.rdx667, %found.conflict670
  br i1 %conflict.rdx671, label %scalar.ph650.preheader, label %vector.ph672

vector.ph672:                                     ; preds = %vector.memcheck652
  %n.vec673 = and i64 %i.fj, 4294967292           ; 2 uses
  %20 = and i64 %i.fj, 3
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph672
  %index675 = phi i64 [ 0, %vector.ph672 ], [ %index.next689, %vector.body674 ] ; 2 uses
  %i.gu = sub i64 %i.fj, %index675                ; 5 uses
  %i.gv = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -24    ; 2 uses
  %wide.load676 = load <4 x double>, ptr %i.gw, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gu
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -24
  %wide.load678 = load <4 x double>, ptr %i.gy, align 8, !tbaa !44, !alias.scope !48
  %i.gz = trunc nuw nsw i64 %i.gu to i32          ; 2 uses
  %i.ha = add i32 %i.fh, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hb
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -24
  %wide.load679 = load <4 x double>, ptr %i.hd, align 8, !tbaa !44, !alias.scope !49
  %i.he = fneg <4 x double> %wide.load678
  %i.hf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.he, <4 x double> %wide.load679, <4 x double> %wide.load676)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gu
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -24
  %wide.load682 = load <4 x double>, ptr %i.hh, align 8, !tbaa !44, !alias.scope !50
  %i.hi = add i32 %i.fi, %i.gz
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -24
  %wide.load683 = load <4 x double>, ptr %i.hl, align 8, !tbaa !44, !alias.scope !51
  %i.hm = fneg <4 x double> %wide.load682
  %i.hn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hm, <4 x double> %wide.load683, <4 x double> %i.hf)
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gu
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -24
  %wide.load686 = load <4 x double>, ptr %i.hp, align 8, !tbaa !44, !alias.scope !52
  %i.hq = fdiv <4 x double> %i.hn, %wide.load686
  store <4 x double> %i.hq, ptr %i.gw, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next689 = add nuw i64 %index675, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next689, %n.vec673
  br i1 %i.hr, label %middle.block690, label %vector.body674, !llvm.loop !16

middle.block690:                                  ; preds = %vector.body674
  %cmp.n691 = icmp eq i64 %n.vec673, %i.fj
  br i1 %cmp.n691, label %.loopexit356, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %vector.memcheck652, %vector.scevcheck614, %.lr.ph393, %middle.block690
  %indvars.iv431.ph = phi i64 [ %i.fj, %vector.memcheck652 ], [ %i.fj, %vector.scevcheck614 ], [ %i.fj, %.lr.ph393 ], [ %20, %middle.block690 ]
  br label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.preheader, %scalar.ph650
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph650 ], [ %indvars.iv431.ph, %scalar.ph650.preheader ] ; 7 uses
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv431 ; 2 uses
  %i.hs = load double, ptr %gep484, align 8, !tbaa !44
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv431
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !44
  %i.hv = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  %i.hw = add i32 %i.fh, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hx
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !44
  %i.ia = fneg double %i.hu
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.hz, double %i.hs)
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv431
  %i.id = load double, ptr %i.ic, align 8, !tbaa !44
  %i.ie = add i32 %i.fi, %i.hv
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !44
  %i.ii = fneg double %i.id
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.ii, double %i.ih, double %i.ib)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv431
  %i.il = load double, ptr %i.ik, align 8, !tbaa !44
  %i.im = fdiv double %i.ij, %i.il
  store double %i.im, ptr %gep484, align 8, !tbaa !44
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1
  %i.in = icmp samesign ugt i64 %indvars.iv431, 1
  br i1 %i.in, label %scalar.ph650, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.io = trunc i35 %indvar to i32
  %i.ip = mul i32 %i.f, %i.io
  %i.iq = add i32 %i.ip, %i.bp
  %i.ir = sext i32 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 3                    ; 2 uses
  %scevgep540 = getelementptr i8, ptr %scevgep539.a, i64 %i.is ; 5 uses
  %scevgep542 = getelementptr i8, ptr %scevgep541, i64 %i.is ; 5 uses
  %i.it = trunc i35 %indvar to i32
  %i.iu = mul i32 %i.f, %i.it
  %i.iv = add i32 %i.iu, %i.be                    ; 2 uses
  %i.iw = mul i35 %i.ay, %indvar                  ; 2 uses
  %i.ix = add i35 %i.ax, %i.iw
  %i.iy = sext i35 %i.ix to i64                   ; 2 uses
  %scevgep493.a = getelementptr i8, ptr %scevgep492.a, i64 %i.iy
  %scevgep495 = getelementptr i8, ptr %scevgep496.a, i64 %i.iy
  %i.iz = add i35 %i.bc, %i.iw
  %i.ja = sext i35 %i.iz to i64                   ; 2 uses
  %scevgep499 = getelementptr i8, ptr %scevgep498.a, i64 %i.ja
  %scevgep501 = getelementptr i8, ptr %scevgep502, i64 %i.ja
  %i.jb = mul i35 %i.ah, %indvar                  ; 2 uses
  %i.jc = add i35 %i.ag, %i.jb                    ; 2 uses
  %i.jd = add i35 %i.aj, %i.jb                    ; 2 uses
  %i.je = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jf = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.je ; 2 uses
  %i.jg = load double, ptr %gep474, align 8, !tbaa !44
  %i.jh = fdiv double %i.jg, %i.jf
  store double %i.jh, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.ji = trunc nsw i64 %i.je to i32
  %i.jj = add i32 %i.ji, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.je ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.je ; 2 uses
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.scevcheck534

vector.scevcheck534:                              ; preds = %.lr.ph379
  %i.jk = add i32 %i.iv, %i.bw
  %i.jl = icmp slt i32 %i.jk, %i.iv
  %i.jm = or i1 %i.jl, %i.bx
  br i1 %i.jm, label %scalar.ph598.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %vector.scevcheck534
  %bound0545 = icmp ult ptr %scevgep537.a, %scevgep542
  %bound1546 = icmp ult ptr %scevgep540, %scevgep538.a
  %found.conflict547 = and i1 %bound0545, %bound1546
  %conflict.rdx568.reass = or i1 %found.conflict547, %invariant.op714
  %bound0569 = icmp ult ptr %scevgep540, %scevgep542
  %conflict.rdx571.a = or i1 %conflict.rdx568.reass, %bound0569
  %bound0572.a = icmp ult ptr %scevgep540, %scevgep543
  %bound1573.a = icmp ult ptr %7, %scevgep542
  %found.conflict574.a = and i1 %bound0572.a, %bound1573.a
  %conflict.rdx575.a = or i1 %conflict.rdx571.a, %found.conflict574.a
  %bound0576 = icmp ult ptr %scevgep540, %scevgep544
  %bound1577 = icmp ult ptr %3, %scevgep542
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx579 = or i1 %conflict.rdx575.a, %found.conflict578
  %bound0593 = icmp ult ptr %scevgep540, %scevgep538.a
  %bound1594 = icmp ult ptr %scevgep537.a, %scevgep542
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx597 = or i1 %found.conflict595, %conflict.rdx579
  br i1 %conflict.rdx597, label %scalar.ph598.preheader, label %vector.body602

vector.body602:                                   ; preds = %vector.memcheck536, %vector.body602
  %index603 = phi i64 [ %index.next610, %vector.body602 ], [ 0, %vector.memcheck536 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body602 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck536 ] ; 2 uses
  %i.jn = or disjoint i64 %index603, 1            ; 3 uses
  %i.jo = getelementptr [4 x i8], ptr %7, i64 %index603
  %wide.load604 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !42, !alias.scope !55
  %i.jp = zext <4 x i32> %wide.load604 to <4 x i64>
  %i.jq = icmp eq <4 x i64> %vec.ind, %i.jp       ; 5 uses
  %i.jr = xor <4 x i1> %i.jq, splat (i1 true)     ; 5 uses
  %i.js = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.jn ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.js, <4 x i1> %i.jr, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.jt = trunc i64 %i.jn to i32
  %i.ju = add i32 %i.jj, %i.jt
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr [8 x i8], ptr %i.h, i64 %i.jv ; 4 uses
  %wide.masked.load605.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jw, <4 x i1> %i.jr, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load605.a, ptr align 8 %i.js, <4 x i1> %i.jr), !tbaa !44, !alias.scope !56, !noalias !57
  %i.jx = getelementptr [8 x i8], ptr %3, i64 %index603 ; 2 uses
  %wide.masked.load606 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jx, <4 x i1> %i.jr, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.jy = fneg <4 x double> %wide.masked.load606
  %i.jz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jy, <4 x double> %wide.masked.load605.a, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.jz, ptr align 8 %i.jw, <4 x i1> %i.jr), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load607 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jx, <4 x i1> %i.jq, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.ka = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.jn
  %wide.masked.load608 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ka, <4 x i1> %i.jq, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load609 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jw, <4 x i1> %i.jq, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.kb = fneg <4 x double> %wide.masked.load607
  %i.kc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kb, <4 x double> %wide.masked.load608, <4 x double> %wide.masked.load609)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kc, ptr align 8 %i.jw, <4 x i1> %i.jq), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next610 = add nuw i64 %index603, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kd = icmp eq i64 %index.next610, %n.vec601
  br i1 %i.kd, label %middle.block611, label %vector.body602, !llvm.loop !25

middle.block611:                                  ; preds = %vector.body602
  br i1 %cmp.n612, label %._crit_edge380, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck536, %vector.scevcheck534, %.lr.ph379, %middle.block611
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck536 ], [ 1, %vector.scevcheck534 ], [ 1, %.lr.ph379 ], [ %i.bz, %middle.block611 ]
  br label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph598.preheader ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !42
  %i.kg = zext i32 %i.kf to i64
  %i.kh = icmp eq i64 %indvars.iv413, %i.kg
  br i1 %i.kh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph598
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.kk = load double, ptr %gep470, align 8, !tbaa !44
  %i.kl = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.km = add i32 %i.jj, %i.kl
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kn ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !44
  %i.kq = fneg double %i.kj
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.kq, double %i.kk, double %i.kp)
  store double %i.kr, ptr %i.ko, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph598
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.ks = load double, ptr %gep468, align 8, !tbaa !44
  %i.kt = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.ku = add i32 %i.jj, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kv ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !44 ; 2 uses
  store double %i.kx, ptr %gep468, align 8, !tbaa !44
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !44
  %i.la = fneg double %i.kz
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.la, double %i.kx, double %i.ks)
  store double %i.lb, ptr %i.kw, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph598, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block611
  %i.lc = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.je ; 2 uses
  %i.ld = load double, ptr %gep476, align 8, !tbaa !44
  %i.le = fdiv double %i.ld, %i.lc                ; 2 uses
  store double %i.le, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.je ; 2 uses
  %i.lf = load double, ptr %gep478, align 8, !tbaa !44
  %i.lg = load double, ptr %i.t, align 8, !tbaa !44
  %i.lh = fneg double %i.lg
  %i.li = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.le, double %i.lf)
  %i.lj = load double, ptr %i.u, align 8, !tbaa !44
  %i.lk = fdiv double %i.li, %i.lj
  store double %i.lk, ptr %gep478, align 8, !tbaa !44
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.ll = add i64 %i.je, 1                        ; 2 uses
  %i.lm = add i64 %i.je, 2                        ; 2 uses
  %invariant.gep471 = getelementptr [8 x i8], ptr %i.h, i64 %i.je ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.ln = sub i35 %i.jc, %mul.result
  %i.lo = icmp sgt i35 %i.ln, %i.jc
  %i.lp = sub i35 %i.jd, %mul.result
  %i.lq = icmp sgt i35 %i.lp, %i.jd
  %i.lr = or i1 %i.lq, %mul.overflow
  %i.ls = or i1 %i.lo, %i.lr
  br i1 %i.ls, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0504 = icmp ult ptr %scevgep, %scevgep495
  %bound1505 = icmp ult ptr %scevgep493.a, %scevgep490.a
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx512.reass = or i1 %found.conflict506, %invariant.op716
  %bound0513 = icmp ult ptr %scevgep, %scevgep501
  %bound1514 = icmp ult ptr %scevgep499, %scevgep490.a
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx517 = or i1 %found.conflict515, %conflict.rdx512.reass
  %conflict.rdx522 = or i1 %found.conflict520, %conflict.rdx517
  br i1 %conflict.rdx522, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.lt = sub i64 %i.x, %index                    ; 6 uses
  %i.lu = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.lt
  %i.lv = getelementptr i8, ptr %i.lu, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.lv, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.lt
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -24
  %wide.load523.a = load <4 x double>, ptr %i.lx, align 8, !tbaa !44, !alias.scope !66
  %i.ly = add i64 %i.ll, %i.lt
  %i.lz = shl i64 %i.ly, 32
  %i.ma = ashr exact i64 %i.lz, 29
  %i.mb = getelementptr inbounds i8, ptr %i.h, i64 %i.ma
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -24
  %wide.load524.a = load <4 x double>, ptr %i.mc, align 8, !tbaa !44, !alias.scope !67
  %i.md = fneg <4 x double> %wide.load523.a
  %i.me = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.md, <4 x double> %wide.load524.a, <4 x double> %wide.load)
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.lt
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -24
  %wide.load527.a = load <4 x double>, ptr %i.mg, align 8, !tbaa !44, !alias.scope !68
  %i.mh = add i64 %i.lm, %i.lt
  %i.mi = shl i64 %i.mh, 32
  %i.mj = ashr exact i64 %i.mi, 29
  %i.mk = getelementptr inbounds i8, ptr %i.h, i64 %i.mj
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -24
  %wide.load528 = load <4 x double>, ptr %i.ml, align 8, !tbaa !44, !alias.scope !69
  %i.mm = fneg <4 x double> %wide.load527.a
  %i.mn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mm, <4 x double> %wide.load528, <4 x double> %i.me)
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lt
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -24
  %wide.load531 = load <4 x double>, ptr %i.mp, align 8, !tbaa !44, !alias.scope !70
  %i.mq = fdiv <4 x double> %i.mn, %wide.load531
  store <4 x double> %i.mq, ptr %i.lv, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv418.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph383 ], [ %13, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %scalar.ph ], [ %indvars.iv418.ph, %scalar.ph.preheader ] ; 8 uses
  %gep472 = getelementptr [8 x i8], ptr %invariant.gep471, i64 %indvars.iv418 ; 2 uses
  %i.ms = load double, ptr %gep472, align 8, !tbaa !44
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv418
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !44
  %i.mv = add i64 %i.ll, %indvars.iv418
  %sext = shl i64 %i.mv, 32
  %i.mw = ashr exact i64 %sext, 29
  %i.mx = getelementptr inbounds i8, ptr %i.h, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !44
  %i.mz = fneg double %i.mu
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.my, double %i.ms)
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv418
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !44
  %i.nd = add i64 %i.lm, %indvars.iv418
  %sext435 = shl i64 %i.nd, 32
  %i.ne = ashr exact i64 %sext435, 29
  %i.nf = getelementptr inbounds i8, ptr %i.h, i64 %i.ne
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !44
  %i.nh = fneg double %i.nc
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.ng, double %i.na)
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv418
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !44
  %i.nl = fdiv double %i.ni, %i.nk
  store double %i.nl, ptr %gep472, align 8, !tbaa !44
  %indvars.iv.next419 = add nsw i64 %indvars.iv418, -1
  %i.nm = icmp samesign ugt i64 %indvars.iv418, 1
  br i1 %i.nm, label %scalar.ph, label %._crit_edge384, !llvm.loop !35

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond425.not, label %.loopexit356, label %.preheader354, !llvm.loop !36

bb.j:                                             ; preds = %bb.c
  br i1 %i.o, label %.preheader358, label %.preheader361

.preheader361:                                    ; preds = %bb.j
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp samesign ult i32 %i.i, 3
  %i.no = add i32 %i.i, 1                         ; 2 uses
  %i.np = sext i32 %i.i to i64
  %i.nq = sext i32 %i.f to i64                    ; 3 uses
  %i.nr = add nuw i32 %i.k, 1
  %wide.trip.count403 = zext i32 %i.nr to i64
  %wide.trip.count = zext i32 %i.no to i64
  %i.ns = or i64 %i.nq, %i.g
  %i.nt = shl nsw i64 %i.ns, 3
  %i.nu = shl nsw i64 %i.nq, 3
  %i.nv = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.nw = getelementptr i8, ptr %8, i64 %i.nt
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  %xtraiter = and i64 %i.nv, 1
  %i.ny = icmp eq i32 %i.no, 4
  %unroll_iter = and i64 %i.nv, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod702 = trunc i64 %i.nv to i1
  br label %bb.l

.preheader358:                                    ; preds = %bb.j
  %i.nz = load double, ptr %4, align 8, !tbaa !44
  %i.oa = sext i32 %i.f to i64                    ; 6 uses
  %i.ob = getelementptr [8 x i8], ptr %i.h, i64 %i.oa ; 2 uses
  %i.oc = getelementptr i8, ptr %i.ob, i64 8      ; 2 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !44
  %i.oe = fdiv double %i.od, %i.nz                ; 2 uses
  store double %i.oe, ptr %i.oc, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.k, label %.loopexit356

bb.k:                                             ; preds = %.preheader358
  %.not350370 = icmp eq i32 %i.i, 2
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.og = getelementptr i8, ptr %i.ob, i64 16     ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !44
  %i.oi = load double, ptr %5, align 8, !tbaa !44
  %i.oj = fneg double %i.oi
  %i.ok = tail call double @llvm.fmuladd.f64(double %i.oj, double %i.oe, double %i.oh)
  %i.ol = load double, ptr %i.of, align 8, !tbaa !44
  %i.om = fdiv double %i.ok, %i.ol
  store double %i.om, ptr %i.og, align 8, !tbaa !44
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.k
  %invariant.gep457 = getelementptr [8 x i8], ptr %i.h, i64 %i.oa ; 3 uses
  %invariant.gep461 = getelementptr [8 x i8], ptr %i.h, i64 %i.oa ; 3 uses
  %i.on = or i64 %i.oa, %i.g
  %i.oo = shl nsw i64 %i.on, 3
  %i.op = getelementptr i8, ptr %8, i64 %i.oo
  %scevgep693 = getelementptr i8, ptr %i.op, i64 16
  %load_initial = load double, ptr %scevgep693, align 8 ; 2 uses
  %i.oq = zext nneg i32 %i.i to i64               ; 2 uses
  %xtraiter703 = and i64 %i.oq, 1
  %i.or = icmp eq i32 %i.i, 3
  br i1 %i.or, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %i.os = and i64 %i.oq, 2147483646
  %i.ot = add nsw i64 %i.os, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  br i1 %lcmp.mod704.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.qo, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv405.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next406.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod705 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod705)
  %gep458.epil = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405.epil.init ; 2 uses
  %i.ou = load double, ptr %gep458.epil, align 8, !tbaa !44
  %i.ov = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405.epil.init
  %i.ow = getelementptr i8, ptr %i.ov, i64 -8
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !44
  %i.oy = fneg double %i.ox
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.oy, double %store_forwarded.epil.init, double %i.ou)
  %i.pa = add nsw i64 %indvars.iv405.epil.init, -2 ; 2 uses
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.pa
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !44
  %gep462.epil = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.pa
  %i.pd = load double, ptr %gep462.epil, align 8, !tbaa !44
  %i.pe = fneg double %i.pc
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pd, double %i.oz)
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405.epil.init
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !44
  %i.pi = fdiv double %i.pf, %i.ph
  store double %i.pi, ptr %gep458.epil, align 8, !tbaa !44
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %i.pj = zext nneg i32 %i.i to i64
  %invariant.gep463 = getelementptr [8 x i8], ptr %i.h, i64 %i.oa
  %invariant.gep465 = getelementptr [8 x i8], ptr %i.h, i64 %i.oa
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.qo, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter707 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter707.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.pk = load double, ptr %gep458, align 8, !tbaa !44
  %i.pl = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.pm = getelementptr i8, ptr %i.pl, i64 -8
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !44
  %i.po = fneg double %i.pn
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.po, double %store_forwarded, double %i.pk)
  %i.pq = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.pq
  %i.pt = load double, ptr %gep462, align 8, !tbaa !44
  %i.pu = fneg double %i.ps
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pu, double %i.pt, double %i.pp)
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405
  %i.px = load double, ptr %i.pw, align 8, !tbaa !44
  %i.py = fdiv double %i.pv, %i.px                ; 2 uses
  store double %i.py, ptr %gep458, align 8, !tbaa !44
  %i.pz = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405
  %gep458.1 = getelementptr i8, ptr %i.pz, i64 8  ; 2 uses
  %i.qa = load double, ptr %gep458.1, align 8, !tbaa !44
  %i.qb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv405
  %i.qc = getelementptr i8, ptr %i.qb, i64 -8
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !44
  %i.qe = fneg double %i.qd
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.qe, double %i.py, double %i.qa)
  %i.qg = add nsw i64 %indvars.iv405, -1          ; 2 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qg
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !44
  %gep462.1 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.qg
  %i.qj = load double, ptr %gep462.1, align 8, !tbaa !44
  %i.qk = fneg double %i.qi
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qk, double %i.qj, double %i.qf)
  %i.qm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv405
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !44
  %i.qo = fdiv double %i.ql, %i.qn                ; 3 uses
  store double %i.qo, ptr %gep458.1, align 8, !tbaa !44
  %indvars.iv.next406.1 = add nuw nsw i64 %indvars.iv405, 2 ; 2 uses
  %niter707.next.1 = add i64 %niter707, 2
  %niter707.ncmp.1 = icmp eq i64 %niter707, %i.ot
  br i1 %niter707.ncmp.1, label %.lr.ph375.preheader.loopexit.unr-lcssa, label %.lr.ph373, !llvm.loop !37

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %indvars.iv410 = phi i64 [ %i.pj, %.lr.ph375.preheader ], [ %indvars.iv.next411, %.lr.ph375 ] ; 3 uses
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, -1 ; 4 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !42
  %gep464 = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411 ; 2 uses
  %i.qr = load double, ptr %gep464, align 8, !tbaa !44
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !44
  %gep466 = getelementptr [8 x i8], ptr %invariant.gep465, i64 %indvars.iv410
  %i.qu = load double, ptr %gep466, align 8, !tbaa !44
  %i.qv = fneg double %i.qt
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qv, double %i.qu, double %i.qr)
  %i.qx = add nsw i32 %i.qq, %i.f
  %i.qy = sext i32 %i.qx to i64
end_hunk_0
