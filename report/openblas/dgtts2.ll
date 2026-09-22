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
  %i.g = sext i32 %narrow to i64                  ; 10 uses
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
  %invariant.op695 = or i1 %invariant.op, %bound0564
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
  %invariant.op696 = or i1 %stride.check507, %found.conflict
  %bound0508 = icmp ult ptr %scevgep, %scevgep497.a
  %bound1509 = icmp ult ptr %6, %scevgep490.a
  %found.conflict510 = and i1 %bound0508, %bound1509
  %invariant.op697 = or i1 %invariant.op696, %found.conflict510
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
  %xtraiter689 = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.i, 2
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter692 = and i64 %i.ci, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph389.new
  %indvars.iv426 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next427.1, %bb.e ] ; 8 uses
  %niter693 = phi i64 [ 0, %.lr.ph389.new ], [ %niter693.next.1, %bb.e ]
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
  %niter693.next.1 = add nuw i64 %niter693, 2     ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !8

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
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %bb.f, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv426.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next427.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod691 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod691)
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
  br i1 %i.fw, label %scalar.ph650.preheader, label %vector.memcheck617

vector.memcheck617:                               ; preds = %vector.scevcheck614
  %14 = or i64 %i.ch, %i.g
  %i.fx = shl nsw i64 %14, 3
  %scevgep619.a = getelementptr i8, ptr %8, i64 %i.fx
  %scevgep613 = getelementptr i8, ptr %scevgep619.a, i64 8 ; 5 uses
  %i.fy = or i64 %i.ch, %i.g
  %i.fz = shl nuw nsw i64 %i.fj, 3                ; 5 uses
  %i.ga = add nsw i64 %i.fy, %i.fj
  %i.gb = shl nsw i64 %i.ga, 3
  %scevgep620.a = getelementptr i8, ptr %8, i64 %i.gb
  %scevgep621.a = getelementptr i8, ptr %scevgep620.a, i64 8 ; 5 uses
  %scevgep622 = getelementptr i8, ptr %5, i64 %i.fz
  %i.gc = add i32 %i.f, %i.i
  %i.gd = add i32 %i.gc, -1
  %i.ge = sext i32 %i.gd to i64
  %15 = add nsw i64 %i.ge, %i.g
  %16 = shl nsw i64 %15, 3
  %i.gf = add nsw i64 %16, 8                      ; 2 uses
  %i.gg = sub nsw i64 %i.gf, %i.fz
  %scevgep624 = getelementptr i8, ptr %8, i64 %i.gg
  %scevgep625 = getelementptr i8, ptr %8, i64 %i.gf
  %scevgep626 = getelementptr i8, ptr %6, i64 %i.fz
  %i.gh = add i32 %i.f, %i.i
  %i.gi = sext i32 %i.gh to i64
  %17 = add nsw i64 %i.gi, %i.g
  %18 = shl nsw i64 %17, 3
  %i.gj = add nsw i64 %18, 8                      ; 2 uses
  %i.gk = sub nsw i64 %i.gj, %i.fz
  %scevgep628 = getelementptr i8, ptr %8, i64 %i.gk
  %scevgep629 = getelementptr i8, ptr %8, i64 %i.gj
  %scevgep630 = getelementptr i8, ptr %4, i64 %i.fz
  %bound0631 = icmp ult ptr %scevgep613, %scevgep622
  %bound1632 = icmp ult ptr %5, %scevgep621.a
  %found.conflict633 = and i1 %bound0631, %bound1632
  %bound0634 = icmp ult ptr %scevgep613, %scevgep625
  %bound1635 = icmp ult ptr %scevgep624, %scevgep621.a
  %found.conflict636 = and i1 %bound0634, %bound1635
  %conflict.rdx637 = or i1 %found.conflict633, %found.conflict636
  %bound0638 = icmp ult ptr %scevgep613, %scevgep626
  %bound1639 = icmp ult ptr %6, %scevgep621.a
  %found.conflict640 = and i1 %bound0638, %bound1639
  %conflict.rdx641 = or i1 %conflict.rdx637, %found.conflict640
  %bound0642 = icmp ult ptr %scevgep613, %scevgep629
  %bound1643 = icmp ult ptr %scevgep628, %scevgep621.a
  %found.conflict644 = and i1 %bound0642, %bound1643
  %conflict.rdx645 = or i1 %conflict.rdx641, %found.conflict644
  %bound0646 = icmp ult ptr %scevgep613, %scevgep630
  %bound1647 = icmp ult ptr %4, %scevgep621.a
  %found.conflict648 = and i1 %bound0646, %bound1647
  %conflict.rdx649 = or i1 %conflict.rdx645, %found.conflict648
  br i1 %conflict.rdx649, label %scalar.ph650.preheader, label %vector.ph652

vector.ph652:                                     ; preds = %vector.memcheck617
  %n.vec653 = and i64 %i.fj, 4294967292           ; 2 uses
  %19 = and i64 %i.fj, 3
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph652
  %index655 = phi i64 [ 0, %vector.ph652 ], [ %index.next669, %vector.body654 ] ; 2 uses
  %i.gl = sub i64 %i.fj, %index655                ; 5 uses
  %i.gm = getelementptr [8 x i8], ptr %invariant.gep483, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -24    ; 2 uses
  %wide.load656 = load <4 x double>, ptr %i.gn, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gl
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -24
  %wide.load658 = load <4 x double>, ptr %i.gp, align 8, !tbaa !44, !alias.scope !48
  %i.gq = trunc nuw nsw i64 %i.gl to i32          ; 2 uses
  %i.gr = add i32 %i.fh, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.gs
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -24
  %wide.load659 = load <4 x double>, ptr %i.gu, align 8, !tbaa !44, !alias.scope !49
  %i.gv = fneg <4 x double> %wide.load658
  %i.gw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gv, <4 x double> %wide.load659, <4 x double> %wide.load656)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gl
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -24
  %wide.load662 = load <4 x double>, ptr %i.gy, align 8, !tbaa !44, !alias.scope !50
  %i.gz = add i32 %i.fi, %i.gq
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ha
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -24
  %wide.load663 = load <4 x double>, ptr %i.hc, align 8, !tbaa !44, !alias.scope !51
  %i.hd = fneg <4 x double> %wide.load662
  %i.he = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hd, <4 x double> %wide.load663, <4 x double> %i.gw)
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gl
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -24
  %wide.load666 = load <4 x double>, ptr %i.hg, align 8, !tbaa !44, !alias.scope !52
  %i.hh = fdiv <4 x double> %i.he, %wide.load666
  store <4 x double> %i.hh, ptr %i.gn, align 8, !tbaa !44, !alias.scope !46, !noalias !47
  %index.next669 = add nuw i64 %index655, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next669, %n.vec653
  br i1 %i.hi, label %middle.block670, label %vector.body654, !llvm.loop !16

middle.block670:                                  ; preds = %vector.body654
  %cmp.n671 = icmp eq i64 %n.vec653, %i.fj
  br i1 %cmp.n671, label %.loopexit356, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %vector.memcheck617, %vector.scevcheck614, %.lr.ph393, %middle.block670
  %indvars.iv431.ph = phi i64 [ %i.fj, %vector.memcheck617 ], [ %i.fj, %vector.scevcheck614 ], [ %i.fj, %.lr.ph393 ], [ %19, %middle.block670 ]
  br label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.preheader, %scalar.ph650
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %scalar.ph650 ], [ %indvars.iv431.ph, %scalar.ph650.preheader ] ; 7 uses
  %gep484 = getelementptr [8 x i8], ptr %invariant.gep483, i64 %indvars.iv431 ; 2 uses
  %i.hj = load double, ptr %gep484, align 8, !tbaa !44
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv431
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !44
  %i.hm = trunc nuw nsw i64 %indvars.iv431 to i32 ; 2 uses
  %i.hn = add i32 %i.fh, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !44
  %i.hr = fneg double %i.hl
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.hq, double %i.hj)
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv431
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !44
  %i.hv = add i32 %i.fi, %i.hm
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !44
  %i.hz = fneg double %i.hu
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.hy, double %i.hs)
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv431
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !44
  %i.id = fdiv double %i.ia, %i.ic
  store double %i.id, ptr %gep484, align 8, !tbaa !44
  %indvars.iv.next432 = add nsw i64 %indvars.iv431, -1
  %i.ie = icmp samesign ugt i64 %indvars.iv431, 1
  br i1 %i.ie, label %scalar.ph650, label %.loopexit356, !llvm.loop !17

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv421 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next422, %._crit_edge384 ] ; 2 uses
  %i.if = trunc i35 %indvar to i32
  %i.ig = mul i32 %i.f, %i.if
  %i.ih = add i32 %i.ig, %i.bp
  %i.ii = sext i32 %i.ih to i64
  %i.ij = shl nsw i64 %i.ii, 3                    ; 2 uses
  %scevgep540 = getelementptr i8, ptr %scevgep539.a, i64 %i.ij ; 5 uses
  %scevgep542 = getelementptr i8, ptr %scevgep541, i64 %i.ij ; 5 uses
  %i.ik = trunc i35 %indvar to i32
  %i.il = mul i32 %i.f, %i.ik
  %i.im = add i32 %i.il, %i.be                    ; 2 uses
  %i.in = mul i35 %i.ay, %indvar                  ; 2 uses
  %i.io = add i35 %i.ax, %i.in
  %i.ip = sext i35 %i.io to i64                   ; 2 uses
  %scevgep493.a = getelementptr i8, ptr %scevgep492.a, i64 %i.ip
  %scevgep495 = getelementptr i8, ptr %scevgep496.a, i64 %i.ip
  %i.iq = add i35 %i.bc, %i.in
  %i.ir = sext i35 %i.iq to i64                   ; 2 uses
  %scevgep499 = getelementptr i8, ptr %scevgep498.a, i64 %i.ir
  %scevgep501 = getelementptr i8, ptr %scevgep502, i64 %i.ir
  %i.is = mul i35 %i.ah, %indvar                  ; 2 uses
  %i.it = add i35 %i.ag, %i.is                    ; 2 uses
  %i.iu = add i35 %i.aj, %i.is                    ; 2 uses
  %i.iv = mul nsw i64 %indvars.iv421, %i.y        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.iw = load double, ptr %i.q, align 8, !tbaa !44
  %gep474 = getelementptr [8 x i8], ptr %invariant.gep473, i64 %i.iv ; 2 uses
  %i.ix = load double, ptr %gep474, align 8, !tbaa !44
  %i.iy = fdiv double %i.ix, %i.iw
  store double %i.iy, ptr %gep474, align 8, !tbaa !44
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.iz = trunc nsw i64 %i.iv to i32
  %i.ja = add i32 %i.iz, 1                        ; 3 uses
  %invariant.gep467 = getelementptr [8 x i8], ptr %i.h, i64 %i.iv ; 2 uses
  %invariant.gep469 = getelementptr [8 x i8], ptr %i.h, i64 %i.iv ; 2 uses
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.scevcheck534

vector.scevcheck534:                              ; preds = %.lr.ph379
  %i.jb = add i32 %i.im, %i.bw
  %i.jc = icmp slt i32 %i.jb, %i.im
  %i.jd = or i1 %i.jc, %i.bx
  br i1 %i.jd, label %scalar.ph598.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %vector.scevcheck534
  %bound0545 = icmp ult ptr %scevgep537.a, %scevgep542
  %bound1546 = icmp ult ptr %scevgep540, %scevgep538.a
  %found.conflict547 = and i1 %bound0545, %bound1546
  %conflict.rdx568.reass = or i1 %found.conflict547, %invariant.op695
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
  %i.je = or disjoint i64 %index603, 1            ; 3 uses
  %i.jf = getelementptr [4 x i8], ptr %7, i64 %index603
  %wide.load604 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !42, !alias.scope !55
  %i.jg = zext <4 x i32> %wide.load604 to <4 x i64>
  %i.jh = icmp eq <4 x i64> %vec.ind, %i.jg       ; 5 uses
  %i.ji = xor <4 x i1> %i.jh, splat (i1 true)     ; 5 uses
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep467, i64 %i.je ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jj, <4 x i1> %i.ji, <4 x double> poison), !tbaa !44, !alias.scope !56, !noalias !57
  %i.jk = trunc i64 %i.je to i32
  %i.jl = add i32 %i.ja, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr [8 x i8], ptr %i.h, i64 %i.jm ; 4 uses
  %wide.masked.load605.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jn, <4 x i1> %i.ji, <4 x double> poison), !tbaa !44, !alias.scope !58, !noalias !59 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load605.a, ptr align 8 %i.jj, <4 x i1> %i.ji), !tbaa !44, !alias.scope !56, !noalias !57
  %i.jo = getelementptr [8 x i8], ptr %3, i64 %index603 ; 2 uses
  %wide.masked.load606 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jo, <4 x i1> %i.ji, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.jp = fneg <4 x double> %wide.masked.load606
  %i.jq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jp, <4 x double> %wide.masked.load605.a, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.jq, ptr align 8 %i.jn, <4 x i1> %i.ji), !tbaa !44, !alias.scope !58, !noalias !59
  %wide.masked.load607 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jo, <4 x i1> %i.jh, <4 x double> poison), !tbaa !44, !alias.scope !60
  %i.jr = getelementptr [8 x i8], ptr %invariant.gep469, i64 %i.je
  %wide.masked.load608 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jr, <4 x i1> %i.jh, <4 x double> poison), !tbaa !44, !alias.scope !61
  %wide.masked.load609 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jn, <4 x i1> %i.jh, <4 x double> poison), !tbaa !44, !alias.scope !62, !noalias !63
  %i.js = fneg <4 x double> %wide.masked.load607
  %i.jt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.js, <4 x double> %wide.masked.load608, <4 x double> %wide.masked.load609)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.jt, ptr align 8 %i.jn, <4 x i1> %i.jh), !tbaa !44, !alias.scope !62, !noalias !63
  %index.next610 = add nuw i64 %index603, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ju = icmp eq i64 %index.next610, %n.vec601
  br i1 %i.ju, label %middle.block611, label %vector.body602, !llvm.loop !25

middle.block611:                                  ; preds = %vector.body602
  br i1 %cmp.n612, label %._crit_edge380, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck536, %vector.scevcheck534, %.lr.ph379, %middle.block611
  %indvars.iv413.ph = phi i64 [ 1, %vector.memcheck536 ], [ 1, %vector.scevcheck534 ], [ 1, %.lr.ph379 ], [ %i.bz, %middle.block611 ]
  br label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.preheader, %bb.i
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.i ], [ %indvars.iv413.ph, %scalar.ph598.preheader ] ; 9 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv413
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !42
  %i.jx = zext i32 %i.jw to i64
  %i.jy = icmp eq i64 %indvars.iv413, %i.jx
  br i1 %i.jy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph598
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !44
  %gep470 = getelementptr [8 x i8], ptr %invariant.gep469, i64 %indvars.iv413
  %i.kb = load double, ptr %gep470, align 8, !tbaa !44
  %i.kc = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.kd = add i32 %i.ja, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ke ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !44
  %i.kh = fneg double %i.ka
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.kb, double %i.kg)
  store double %i.ki, ptr %i.kf, align 8, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %scalar.ph598
  %gep468 = getelementptr [8 x i8], ptr %invariant.gep467, i64 %indvars.iv413 ; 2 uses
  %i.kj = load double, ptr %gep468, align 8, !tbaa !44
  %i.kk = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.kl = add i32 %i.ja, %i.kk
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.km ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !44 ; 2 uses
  store double %i.ko, ptr %gep468, align 8, !tbaa !44
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv413
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !44
  %i.kr = fneg double %i.kq
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.ko, double %i.kj)
  store double %i.ks, ptr %i.kn, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge380, label %scalar.ph598, !llvm.loop !26

._crit_edge380:                                   ; preds = %bb.i, %middle.block611
  %i.kt = load double, ptr %i.q, align 8, !tbaa !44
  %gep476 = getelementptr [8 x i8], ptr %invariant.gep475, i64 %i.iv ; 2 uses
  %i.ku = load double, ptr %gep476, align 8, !tbaa !44
  %i.kv = fdiv double %i.ku, %i.kt                ; 2 uses
  store double %i.kv, ptr %gep476, align 8, !tbaa !44
  %gep478 = getelementptr [8 x i8], ptr %invariant.gep477, i64 %i.iv ; 2 uses
  %i.kw = load double, ptr %gep478, align 8, !tbaa !44
  %i.kx = load double, ptr %i.t, align 8, !tbaa !44
  %i.ky = fneg double %i.kx
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.ky, double %i.kv, double %i.kw)
  %i.la = load double, ptr %i.u, align 8, !tbaa !44
  %i.lb = fdiv double %i.kz, %i.la
  store double %i.lb, ptr %gep478, align 8, !tbaa !44
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.lc = add i64 %i.iv, 1                        ; 2 uses
  %i.ld = add i64 %i.iv, 2                        ; 2 uses
  %invariant.gep471 = getelementptr [8 x i8], ptr %i.h, i64 %i.iv ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.le = sub i35 %i.it, %mul.result
  %i.lf = icmp sgt i35 %i.le, %i.it
  %i.lg = sub i35 %i.iu, %mul.result
  %i.lh = icmp sgt i35 %i.lg, %i.iu
  %i.li = or i1 %i.lh, %mul.overflow
  %i.lj = or i1 %i.lf, %i.li
  br i1 %i.lj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0504 = icmp ult ptr %scevgep, %scevgep495
  %bound1505 = icmp ult ptr %scevgep493.a, %scevgep490.a
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx512.reass = or i1 %found.conflict506, %invariant.op697
  %bound0513 = icmp ult ptr %scevgep, %scevgep501
  %bound1514 = icmp ult ptr %scevgep499, %scevgep490.a
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx517 = or i1 %found.conflict515, %conflict.rdx512.reass
  %conflict.rdx522 = or i1 %found.conflict520, %conflict.rdx517
  br i1 %conflict.rdx522, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.lk = sub i64 %i.x, %index                    ; 6 uses
  %i.ll = getelementptr [8 x i8], ptr %invariant.gep471, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.ll, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.lm, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.lk
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -24
  %wide.load523.a = load <4 x double>, ptr %i.lo, align 8, !tbaa !44, !alias.scope !66
  %i.lp = add i64 %i.lc, %i.lk
  %i.lq = shl i64 %i.lp, 32
  %i.lr = ashr exact i64 %i.lq, 29
  %i.ls = getelementptr inbounds i8, ptr %i.h, i64 %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -24
  %wide.load524.a = load <4 x double>, ptr %i.lt, align 8, !tbaa !44, !alias.scope !67
  %i.lu = fneg <4 x double> %wide.load523.a
  %i.lv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lu, <4 x double> %wide.load524.a, <4 x double> %wide.load)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.lk
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -24
  %wide.load527.a = load <4 x double>, ptr %i.lx, align 8, !tbaa !44, !alias.scope !68
  %i.ly = add i64 %i.ld, %i.lk
  %i.lz = shl i64 %i.ly, 32
  %i.ma = ashr exact i64 %i.lz, 29
  %i.mb = getelementptr inbounds i8, ptr %i.h, i64 %i.ma
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -24
  %wide.load528 = load <4 x double>, ptr %i.mc, align 8, !tbaa !44, !alias.scope !69
  %i.md = fneg <4 x double> %wide.load527.a
  %i.me = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.md, <4 x double> %wide.load528, <4 x double> %i.lv)
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lk
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -24
  %wide.load531 = load <4 x double>, ptr %i.mg, align 8, !tbaa !44, !alias.scope !70
  %i.mh = fdiv <4 x double> %i.me, %wide.load531
  store <4 x double> %i.mh, ptr %i.lm, align 8, !tbaa !44, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mi = icmp eq i64 %index.next, %n.vec
  br i1 %i.mi, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv418.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph383 ], [ %13, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv418 = phi i64 [ %indvars.iv.next419, %scalar.ph ], [ %indvars.iv418.ph, %scalar.ph.preheader ] ; 8 uses
  %gep472 = getelementptr [8 x i8], ptr %invariant.gep471, i64 %indvars.iv418 ; 2 uses
  %i.mj = load double, ptr %gep472, align 8, !tbaa !44
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv418
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !44
  %i.mm = add i64 %i.lc, %indvars.iv418
  %sext = shl i64 %i.mm, 32
  %i.mn = ashr exact i64 %sext, 29
  %i.mo = getelementptr inbounds i8, ptr %i.h, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !44
  %i.mq = fneg double %i.ml
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.mp, double %i.mj)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv418
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !44
  %i.mu = add i64 %i.ld, %indvars.iv418
  %sext435 = shl i64 %i.mu, 32
  %i.mv = ashr exact i64 %sext435, 29
  %i.mw = getelementptr inbounds i8, ptr %i.h, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !44
  %i.my = fneg double %i.mt
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.my, double %i.mx, double %i.mr)
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv418
  %i.nb = load double, ptr %i.na, align 8, !tbaa !44
  %i.nc = fdiv double %i.mz, %i.nb
  store double %i.nc, ptr %gep472, align 8, !tbaa !44
  %indvars.iv.next419 = add nsw i64 %indvars.iv418, -1
  %i.nd = icmp samesign ugt i64 %indvars.iv418, 1
  br i1 %i.nd, label %scalar.ph, label %._crit_edge384, !llvm.loop !35

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond425.not, label %.loopexit356, label %.preheader354, !llvm.loop !36

bb.j:                                             ; preds = %bb.c
  br i1 %i.o, label %.preheader358, label %.preheader361

.preheader361:                                    ; preds = %bb.j
  %i.ne = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp samesign ult i32 %i.i, 3
  %i.nf = add i32 %i.i, 1                         ; 2 uses
  %i.ng = sext i32 %i.i to i64
  %i.nh = sext i32 %i.f to i64                    ; 3 uses
  %i.ni = add nuw i32 %i.k, 1
  %wide.trip.count403 = zext i32 %i.ni to i64
  %wide.trip.count = zext i32 %i.nf to i64
  %i.nj = or i64 %i.nh, %i.g
  %i.nk = shl nsw i64 %i.nj, 3
  %i.nl = shl nsw i64 %i.nh, 3
  %i.nm = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.nn = getelementptr i8, ptr %8, i64 %i.nk
  %i.no = getelementptr i8, ptr %i.nn, i64 16
  %xtraiter = and i64 %i.nm, 1
  %i.np = icmp eq i32 %i.nf, 4
  %unroll_iter = and i64 %i.nm, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod683 = trunc i64 %i.nm to i1
  br label %bb.l

.preheader358:                                    ; preds = %bb.j
  %i.nq = load double, ptr %4, align 8, !tbaa !44
  %i.nr = sext i32 %i.f to i64                    ; 6 uses
  %i.ns = getelementptr [8 x i8], ptr %i.h, i64 %i.nr ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 8      ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !44
  %i.nv = fdiv double %i.nu, %i.nq                ; 2 uses
  store double %i.nv, ptr %i.nt, align 8, !tbaa !44
  br i1 %.not353.not386, label %bb.k, label %.loopexit356

bb.k:                                             ; preds = %.preheader358
  %.not350370 = icmp eq i32 %i.i, 2
  %i.nw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nx = getelementptr i8, ptr %i.ns, i64 16     ; 2 uses
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !44
  %i.nz = load double, ptr %5, align 8, !tbaa !44
  %i.oa = fneg double %i.nz
  %i.ob = tail call double @llvm.fmuladd.f64(double %i.oa, double %i.nv, double %i.ny)
  %i.oc = load double, ptr %i.nw, align 8, !tbaa !44
  %i.od = fdiv double %i.ob, %i.oc
  store double %i.od, ptr %i.nx, align 8, !tbaa !44
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.k
  %invariant.gep457 = getelementptr [8 x i8], ptr %i.h, i64 %i.nr ; 3 uses
  %invariant.gep461 = getelementptr [8 x i8], ptr %i.h, i64 %i.nr ; 3 uses
  %i.oe = or i64 %i.nr, %i.g
  %i.of = shl nsw i64 %i.oe, 3
  %i.og = getelementptr i8, ptr %8, i64 %i.of
  %scevgep673 = getelementptr i8, ptr %i.og, i64 16
  %load_initial = load double, ptr %scevgep673, align 8 ; 2 uses
  %i.oh = zext nneg i32 %i.i to i64               ; 2 uses
  %xtraiter684 = and i64 %i.oh, 1
  %i.oi = icmp eq i32 %i.i, 3
  br i1 %i.oi, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %i.oj = and i64 %i.oh, 2147483646
  %i.ok = add nsw i64 %i.oj, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.qf, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv405.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next406.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod686 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod686)
  %gep458.epil = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405.epil.init ; 2 uses
  %i.ol = load double, ptr %gep458.epil, align 8, !tbaa !44
  %i.om = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405.epil.init
  %i.on = getelementptr i8, ptr %i.om, i64 -8
  %i.oo = load double, ptr %i.on, align 8, !tbaa !44
  %i.op = fneg double %i.oo
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.op, double %store_forwarded.epil.init, double %i.ol)
  %i.or = add nsw i64 %indvars.iv405.epil.init, -2 ; 2 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.or
  %i.ot = load double, ptr %i.os, align 8, !tbaa !44
  %gep462.epil = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.or
  %i.ou = load double, ptr %gep462.epil, align 8, !tbaa !44
  %i.ov = fneg double %i.ot
  %i.ow = tail call double @llvm.fmuladd.f64(double %i.ov, double %i.ou, double %i.oq)
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405.epil.init
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !44
  %i.oz = fdiv double %i.ow, %i.oy
  store double %i.oz, ptr %gep458.epil, align 8, !tbaa !44
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.k
  %i.pa = zext nneg i32 %i.i to i64
  %invariant.gep463 = getelementptr [8 x i8], ptr %i.h, i64 %i.nr
  %invariant.gep465 = getelementptr [8 x i8], ptr %i.h, i64 %i.nr
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.qf, %.lr.ph373 ]
  %indvars.iv405 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next406.1, %.lr.ph373 ] ; 9 uses
  %niter688 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter688.next.1, %.lr.ph373 ] ; 2 uses
  %gep458 = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405 ; 2 uses
  %i.pb = load double, ptr %gep458, align 8, !tbaa !44
  %i.pc = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv405
  %i.pd = getelementptr i8, ptr %i.pc, i64 -8
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !44
  %i.pf = fneg double %i.pe
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.pf, double %store_forwarded, double %i.pb)
  %i.ph = add nsw i64 %indvars.iv405, -2          ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ph
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !44
  %gep462 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.ph
  %i.pk = load double, ptr %gep462, align 8, !tbaa !44
  %i.pl = fneg double %i.pj
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.pl, double %i.pk, double %i.pg)
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv405
  %i.po = load double, ptr %i.pn, align 8, !tbaa !44
  %i.pp = fdiv double %i.pm, %i.po                ; 2 uses
  store double %i.pp, ptr %gep458, align 8, !tbaa !44
  %i.pq = getelementptr [8 x i8], ptr %invariant.gep457, i64 %indvars.iv405
  %gep458.1 = getelementptr i8, ptr %i.pq, i64 8  ; 2 uses
  %i.pr = load double, ptr %gep458.1, align 8, !tbaa !44
  %i.ps = getelementptr [8 x i8], ptr %5, i64 %indvars.iv405
  %i.pt = getelementptr i8, ptr %i.ps, i64 -8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !44
  %i.pv = fneg double %i.pu
  %i.pw = tail call double @llvm.fmuladd.f64(double %i.pv, double %i.pp, double %i.pr)
  %i.px = add nsw i64 %indvars.iv405, -1          ; 2 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.px
  %i.pz = load double, ptr %i.py, align 8, !tbaa !44
  %gep462.1 = getelementptr [8 x i8], ptr %invariant.gep461, i64 %i.px
  %i.qa = load double, ptr %gep462.1, align 8, !tbaa !44
  %i.qb = fneg double %i.pz
  %i.qc = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.qa, double %i.pw)
  %i.qd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv405
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !44
  %i.qf = fdiv double %i.qc, %i.qe                ; 3 uses
  store double %i.qf, ptr %gep458.1, align 8, !tbaa !44
  %indvars.iv.next406.1 = add nuw nsw i64 %indvars.iv405, 2 ; 2 uses
  %niter688.next.1 = add i64 %niter688, 2
  %niter688.ncmp.1 = icmp eq i64 %niter688, %i.ok
  br i1 %niter688.ncmp.1, label %.lr.ph375.preheader.loopexit.unr-lcssa, label %.lr.ph373, !llvm.loop !37

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %indvars.iv410 = phi i64 [ %i.pa, %.lr.ph375.preheader ], [ %indvars.iv.next411, %.lr.ph375 ] ; 3 uses
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, -1 ; 4 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next411
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !42
  %gep464 = getelementptr [8 x i8], ptr %invariant.gep463, i64 %indvars.iv.next411 ; 2 uses
  %i.qi = load double, ptr %gep464, align 8, !tbaa !44
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next411
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !44
  %gep466 = getelementptr [8 x i8], ptr %invariant.gep465, i64 %indvars.iv410
  %i.ql = load double, ptr %gep466, align 8, !tbaa !44
  %i.qm = fneg double %i.qk
  %i.qn = tail call double @llvm.fmuladd.f64(double %i.qm, double %i.ql, double %i.qi)
  %i.qo = add nsw i32 %i.qh, %i.f
  %i.qp = sext i32 %i.qo to i64
end_hunk_0
