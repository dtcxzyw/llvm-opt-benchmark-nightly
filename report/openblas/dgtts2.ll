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
  %i.f = load i32, ptr %9, align 4, !tbaa !8      ; 30 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 9 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %8, i64 %i.g ; 42 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !8      ; 27 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %2, align 4, !tbaa !8      ; 4 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 4, !tbaa !8
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp slt i32 %i.k, 2                     ; 2 uses
  %.not353.not386 = icmp sgt i32 %i.i, 1          ; 4 uses
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %i.i to i64                     ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.p ; 4 uses
  br i1 %i.o, label %bb.e, label %.preheader355

.preheader355:                                    ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1                     ; 2 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  %i.v = add i32 %i.i, -2                         ; 6 uses
  %i.w = icmp samesign ugt i32 %i.i, 2
  %10 = sext i32 %i.v to i64                      ; 8 uses
  %i.x = sext i32 %i.f to i64                     ; 5 uses
  %i.y = zext nneg i32 %i.r to i64
  %i.z = add nuw i32 %i.k, 1
  %wide.trip.count431 = zext i32 %i.z to i64      ; 3 uses
  %invariant.gep490 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %wide.trip.count423 = zext i32 %i.i to i64      ; 5 uses
  %invariant.gep492 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %invariant.gep494 = getelementptr [8 x i8], ptr %i.h, i64 %i.y
  %i.aa = icmp ne i32 %i.v, 0
  %umin.neg = sext i1 %i.aa to i64
  %i.ab = add nsw i64 %umin.neg, %10              ; 2 uses
  %i.ac = sext i32 %i.f to i35                    ; 2 uses
  %i.ad = sext i32 %i.v to i35
  %i.ae = add nsw i35 %i.ac, %i.ad                ; 2 uses
  %i.af = shl i35 %i.ae, 3
  %i.ag = add i35 %i.af, 8
  %i.ah = shl nsw i35 %i.ac, 3
  %i.ai = shl i35 %i.ae, 3
  %i.aj = add i35 %i.ai, 16
  %i.ak = icmp ne i32 %i.v, 0                     ; 2 uses
  %umin507 = zext i1 %i.ak to i64
  %i.al = add nsw i64 %umin507, %i.x
  %i.am = add nsw i64 %i.al, %i.g
  %i.an = shl nsw i64 %i.am, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.an  ; 5 uses
  %i.ao = shl nuw nsw i64 %wide.trip.count431, 3
  %i.ap = add nsw i64 %i.ao, -8
  %i.aq = mul i64 %i.ap, %i.x
  %i.ar = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.as = shl nsw i64 %10, 3                      ; 5 uses
  %i.at = getelementptr i8, ptr %8, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  %scevgep508 = getelementptr i8, ptr %i.av, i64 8 ; 5 uses
  %i.aw = select i1 %i.ak, i64 8, i64 0           ; 2 uses
  %i.ax = add nsw i64 %i.aw, -8                   ; 3 uses
  %scevgep509 = getelementptr i8, ptr %5, i64 %i.ax
  %scevgep510 = getelementptr i8, ptr %5, i64 %i.as
  %i.ay = add nsw i64 %i.aw, %i.ar
  %i.az = sub nsw i64 %i.ay, %i.as                ; 2 uses
  %scevgep511 = getelementptr i8, ptr %8, i64 %i.az
  %i.ba = sext i32 %i.f to i35                    ; 3 uses
  %i.bb = sext i32 %i.v to i35                    ; 2 uses
  %i.bc = add nsw i35 %i.ba, %i.bb
  %i.bd = shl i35 %i.bc, 3
  %i.be = add i35 %i.bd, 8
  %i.bf = shl nsw i35 %i.ba, 3
  %i.bg = add nsw i64 %i.ar, 8                    ; 2 uses
  %scevgep513 = getelementptr i8, ptr %8, i64 %i.bg
  %scevgep515 = getelementptr i8, ptr %6, i64 %i.ax
  %scevgep516 = getelementptr i8, ptr %6, i64 %i.as
  %scevgep517 = getelementptr i8, ptr %8, i64 %i.az
  %i.bh = add nsw i35 %i.ba, %i.bb
  %i.bi = shl i35 %i.bh, 3
  %i.bj = add i35 %i.bi, 16
  %scevgep519 = getelementptr i8, ptr %8, i64 %i.bg
  %scevgep521 = getelementptr i8, ptr %4, i64 %i.ax
  %scevgep522 = getelementptr i8, ptr %4, i64 %i.as
  %i.bk = add nsw i64 %wide.trip.count423, -2     ; 2 uses
  %i.bl = add i32 %i.f, 2
  %i.bm = shl nsw i64 %i.x, 3
  %i.bn = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.bo = getelementptr i8, ptr %8, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bn
  %scevgep556 = getelementptr i8, ptr %i.bp, i64 8 ; 5 uses
  %i.bq = shl nuw nsw i64 %wide.trip.count431, 3
  %i.br = add nsw i64 %i.bq, -8
  %i.bs = mul i64 %i.br, %i.x
  %i.bt = shl nuw nsw i64 %wide.trip.count423, 3  ; 3 uses
  %i.bu = getelementptr i8, ptr %8, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bn
  %scevgep557 = getelementptr i8, ptr %i.bv, i64 %i.bt ; 5 uses
  %scevgep558 = getelementptr i8, ptr %8, i64 %i.bn
  %i.bw = add i32 %i.f, 2
  %i.bx = getelementptr i8, ptr %8, i64 %i.bn
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bt
  %scevgep560 = getelementptr i8, ptr %i.by, i64 -8
  %i.bz = shl nuw nsw i64 %wide.trip.count423, 2
  %i.ca = getelementptr i8, ptr %7, i64 %i.bz
  %scevgep562 = getelementptr i8, ptr %i.ca, i64 -4 ; 2 uses
  %i.cb = getelementptr i8, ptr %3, i64 %i.bt
  %scevgep563 = getelementptr i8, ptr %i.cb, i64 -8 ; 2 uses
  %i.cc = add nsw i64 %wide.trip.count423, -1     ; 2 uses
  %min.iters.check618 = icmp ult i32 %i.i, 33
  %i.cd = trunc i64 %i.bk to i32
  %i.ce = icmp ugt i64 %i.bk, 4294967295
  %bound0573 = icmp ult ptr %scevgep556, %scevgep562
  %bound1574 = icmp ult ptr %7, %scevgep557
  %found.conflict575 = and i1 %bound0573, %bound1574
  %stride.check576 = icmp slt i32 %i.f, 0
  %i.cf = or i1 %found.conflict575, %stride.check576
  %bound0578 = icmp ult ptr %scevgep556, %scevgep563
  %bound1579 = icmp ult ptr %3, %scevgep557
  %found.conflict580 = and i1 %bound0578, %bound1579
  %invariant.op = or i1 %i.cf, %found.conflict580
  %bound0583 = icmp ult ptr %scevgep556, %scevgep557
  %invariant.op714 = or i1 %invariant.op, %bound0583
  %n.vec620 = and i64 %i.cc, -4                   ; 3 uses
  %i.cg = or disjoint i64 %n.vec620, 1
  %cmp.n631 = icmp eq i64 %i.cc, %n.vec620
  %i.ch = icmp ne i32 %i.v, 0
  %.neg = sext i1 %i.ch to i64
  %i.ci = add nsw i64 %10, 1
  %i.cj = add nsw i64 %i.ci, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cj, 16
  %i.ck = trunc nsw i64 %i.ab to i35
  %mul.result = shl i35 %i.ck, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ab, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep510
  %bound1 = icmp ult ptr %scevgep509, %scevgep508
  %found.conflict = and i1 %bound0, %bound1
  %stride.check526 = icmp slt i32 %i.f, 0
  %invariant.op715 = or i1 %stride.check526, %found.conflict
  %bound0527 = icmp ult ptr %scevgep, %scevgep516
  %bound1528 = icmp ult ptr %scevgep515, %scevgep508
  %found.conflict529 = and i1 %bound0527, %bound1528
  %invariant.op716 = or i1 %invariant.op715, %found.conflict529
  %bound0537 = icmp ult ptr %scevgep, %scevgep522
  %bound1538 = icmp ult ptr %scevgep521, %scevgep508
  %found.conflict539 = and i1 %bound0537, %bound1538
  %n.vec = and i64 %i.cj, -4                      ; 3 uses
  %i.cl = sub nsw i64 %10, %n.vec
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br label %.preheader354

bb.e:                                             ; preds = %bb.d
  %i.cm = add i32 %i.i, -2                        ; 4 uses
  %i.cn = icmp samesign ugt i32 %i.i, 2
  %i.co = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cp
  %invariant.gep496 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %bb.e
  %11 = sext i32 %i.f to i64                      ; 4 uses
  %wide.trip.count436 = zext nneg i32 %i.i to i64
  %invariant.gep498 = getelementptr [8 x i8], ptr %i.h, i64 %11 ; 3 uses
  %invariant.gep500 = getelementptr [8 x i8], ptr %i.h, i64 %11 ; 3 uses
  %i.cr = add nsw i64 %wide.trip.count436, -1     ; 3 uses
  %xtraiter708 = and i64 %i.cr, 1
  %i.cs = icmp eq i32 %i.i, 2
  br i1 %i.cs, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter711 = and i64 %i.cr, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph389.new
  %indvars.iv433 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next434.1, %bb.f ] ; 8 uses
  %niter712 = phi i64 [ 0, %.lr.ph389.new ], [ %niter712.next.1, %bb.f ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv433
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 4 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv433 to i32
  %i.cw = add i32 %i.f, %i.cv
  %i.cx = trunc nuw nsw i64 %indvars.iv.next434 to i32
  %i.cy = add i32 %i.cw, %i.cx
  %i.cz = sub i32 %i.cy, %i.cu
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv433
  %i.de = load double, ptr %i.dd, align 8, !tbaa !9
  %12 = add nsw i32 %i.cu, %i.f
  %i.df = sext i32 %12 to i64
  %gep497 = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.df
  %i.dg = load double, ptr %gep497, align 8, !tbaa !9 ; 2 uses
  %i.dh = fneg double %i.de
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dg, double %i.dc)
  %gep499 = getelementptr [8 x i8], ptr %invariant.gep498, i64 %indvars.iv433
  store double %i.dg, ptr %gep499, align 8, !tbaa !9
  %gep501 = getelementptr [8 x i8], ptr %invariant.gep500, i64 %indvars.iv.next434
  store double %i.di, ptr %gep501, align 8, !tbaa !9
  %i.dj = getelementptr [4 x i8], ptr %7, i64 %indvars.iv433
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 4 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.next434 to i32
  %i.dm = add i32 %i.f, %i.dl
  %i.dn = trunc nuw nsw i64 %indvars.iv.next434.1 to i32
  %i.do = add i32 %i.dm, %i.dn
  %i.dp = sub i32 %i.do, %i.dk
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !9
  %i.dt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv433
  %i.du = load double, ptr %i.dt, align 8, !tbaa !9
  %13 = add nsw i32 %i.dk, %i.f
  %i.dv = sext i32 %13 to i64
  %gep497.1 = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dv
  %i.dw = load double, ptr %gep497.1, align 8, !tbaa !9 ; 2 uses
  %i.dx = fneg double %i.du
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.ds)
  %gep499.1 = getelementptr [8 x i8], ptr %invariant.gep498, i64 %indvars.iv.next434
  store double %i.dw, ptr %gep499.1, align 8, !tbaa !9
  %gep501.1 = getelementptr [8 x i8], ptr %invariant.gep500, i64 %indvars.iv.next434.1
  store double %i.dy, ptr %gep501.1, align 8, !tbaa !9
  %niter712.next.1 = add nuw i64 %niter712, 2     ; 2 uses
  %niter712.ncmp.1 = icmp eq i64 %niter712.next.1, %unroll_iter711
  br i1 %niter712.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !11

.thread:                                          ; preds = %bb.e
  %i.dz = load double, ptr %i.q, align 8, !tbaa !9
  %14 = add nsw i32 %i.f, %i.i
  %15 = sext i32 %14 to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.h, i64 %15 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !9
  %i.ec = fdiv double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !9
  br label %.loopexit

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv433.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next434.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod710 = trunc i64 %i.cr to i1
  tail call void @llvm.assume(i1 %lcmp.mod710)
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv433.epil.init
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next434.epil = add nuw nsw i64 %indvars.iv433.epil.init, 1 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv433.epil.init to i32
  %i.eg = add i32 %i.f, %i.ef
  %i.eh = trunc nuw nsw i64 %indvars.iv.next434.epil to i32
  %i.ei = add i32 %i.eg, %i.eh
  %i.ej = sub i32 %i.ei, %i.ee
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv433.epil.init
  %i.eo = load double, ptr %i.en, align 8, !tbaa !9
  %16 = add nsw i32 %i.ee, %i.f
  %i.ep = sext i32 %16 to i64
  %gep497.epil = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ep
  %i.eq = load double, ptr %gep497.epil, align 8, !tbaa !9 ; 2 uses
  %i.er = fneg double %i.eo
  %i.es = tail call double @llvm.fmuladd.f64(double %i.er, double %i.eq, double %i.em)
  %gep499.epil = getelementptr [8 x i8], ptr %invariant.gep498, i64 %indvars.iv433.epil.init
  store double %i.eq, ptr %gep499.epil, align 8, !tbaa !9
  %gep501.epil = getelementptr [8 x i8], ptr %invariant.gep500, i64 %indvars.iv.next434.epil
  store double %i.es, ptr %gep501.epil, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.et = load double, ptr %i.q, align 8, !tbaa !9
  %17 = add nsw i32 %i.f, %i.i
  %18 = sext i32 %17 to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.h, i64 %18 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !9
  %i.ew = fdiv double %i.ev, %i.et                ; 2 uses
  store double %i.ew, ptr %i.eu, align 8, !tbaa !9
  %19 = add nsw i32 %i.f, %i.co
  %20 = sext i32 %19 to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.h, i64 %20 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !9
  %i.ez = load double, ptr %i.cq, align 8, !tbaa !9
  %i.fa = fneg double %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ew, double %i.ey)
  %i.fc = load double, ptr %invariant.gep496, align 8, !tbaa !9
  %i.fd = fdiv double %i.fb, %i.fc
  store double %i.fd, ptr %i.ex, align 8, !tbaa !9
  br i1 %i.cn, label %.lr.ph393, label %.loopexit

.lr.ph393:                                        ; preds = %bb.g
  %i.fe = add i32 %i.f, 1                         ; 2 uses
  %i.ff = add i32 %i.f, 2                         ; 2 uses
  %21 = zext i32 %i.cm to i64                     ; 9 uses
  %22 = sext i32 %i.f to i64
  %invariant.gep502 = getelementptr [8 x i8], ptr %i.h, i64 %22 ; 2 uses
  %i.fg = icmp ne i32 %i.cm, 0
  %.neg698 = sext i1 %i.fg to i64
  %i.fh = add nuw nsw i64 %21, 1
  %i.fi = add nsw i64 %i.fh, %.neg698             ; 3 uses
  %min.iters.check670 = icmp ult i64 %i.fi, 32
  br i1 %min.iters.check670, label %scalar.ph669.preheader, label %vector.scevcheck633

vector.scevcheck633:                              ; preds = %.lr.ph393
  %i.fj = icmp ne i32 %i.cm, 0
  %umin634.neg = sext i1 %i.fj to i64
  %i.fk = add nsw i64 %umin634.neg, %21           ; 2 uses
  %i.fl = add i32 %i.f, %i.i
  %i.fm = add i32 %i.fl, -1                       ; 2 uses
  %i.fn = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fo = sub i32 %i.fm, %i.fn
  %i.fp = icmp sgt i32 %i.fo, %i.fm
  %i.fq = add i32 %i.f, %i.i                      ; 2 uses
  %i.fr = sub i32 %i.fq, %i.fn
  %i.fs = icmp sgt i32 %i.fr, %i.fq
  %i.ft = icmp ugt i64 %i.fk, 4294967295
  %i.fu = or i1 %i.fs, %i.ft
  %i.fv = or i1 %i.fp, %i.fu
  br i1 %i.fv, label %scalar.ph669.preheader, label %vector.memcheck636

vector.memcheck636:                               ; preds = %vector.scevcheck633
  %i.fw = icmp ne i32 %i.cm, 0                    ; 2 uses
  %umin637 = zext i1 %i.fw to i64
  %i.fx = add nsw i64 %umin637, %11
  %i.fy = add nsw i64 %i.fx, %i.g
  %i.fz = shl nsw i64 %i.fy, 3
  %scevgep638 = getelementptr i8, ptr %8, i64 %i.fz ; 5 uses
  %i.ga = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.gb = or i64 %11, %i.g
  %i.gc = shl nuw nsw i64 %21, 3                  ; 5 uses
  %i.gd = add nsw i64 %i.gb, %21
  %i.ge = shl nsw i64 %i.gd, 3
  %i.gf = getelementptr i8, ptr %8, i64 %i.ge
  %scevgep639 = getelementptr i8, ptr %i.gf, i64 8 ; 5 uses
  %i.gg = select i1 %i.fw, i64 8, i64 0           ; 3 uses
  %i.gh = add nsw i64 %i.gg, -8                   ; 3 uses
  %scevgep640 = getelementptr i8, ptr %5, i64 %i.gh
  %scevgep641 = getelementptr i8, ptr %5, i64 %i.gc
  %i.gi = add i32 %i.f, %i.i
  %i.gj = add i32 %i.gi, -1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = shl nsw i64 %i.gk, 3                    ; 2 uses
  %i.gm = add nsw i64 %i.gg, %i.gl
  %i.gn = add nsw i64 %i.gm, %i.ga
  %i.go = sub nsw i64 %i.gn, %i.gc
  %scevgep642 = getelementptr i8, ptr %8, i64 %i.go
  %i.gp = getelementptr i8, ptr %8, i64 %i.gl
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.ga
  %scevgep643 = getelementptr i8, ptr %i.gq, i64 8
  %scevgep644 = getelementptr i8, ptr %6, i64 %i.gh
  %scevgep645 = getelementptr i8, ptr %6, i64 %i.gc
  %i.gr = add i32 %i.f, %i.i
  %i.gs = sext i32 %i.gr to i64
  %i.gt = shl nsw i64 %i.gs, 3                    ; 2 uses
  %i.gu = add nsw i64 %i.gg, %i.gt
  %i.gv = add nsw i64 %i.gu, %i.ga
  %i.gw = sub nsw i64 %i.gv, %i.gc
  %scevgep646 = getelementptr i8, ptr %8, i64 %i.gw
  %i.gx = getelementptr i8, ptr %8, i64 %i.gt
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.ga
  %scevgep647 = getelementptr i8, ptr %i.gy, i64 8
  %scevgep648 = getelementptr i8, ptr %4, i64 %i.gh
  %scevgep649 = getelementptr i8, ptr %4, i64 %i.gc
  %bound0650 = icmp ult ptr %scevgep638, %scevgep641
  %bound1651 = icmp ult ptr %scevgep640, %scevgep639
  %found.conflict652 = and i1 %bound0650, %bound1651
  %bound0653 = icmp ult ptr %scevgep638, %scevgep643
  %bound1654 = icmp ult ptr %scevgep642, %scevgep639
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %found.conflict652, %found.conflict655
  %bound0657 = icmp ult ptr %scevgep638, %scevgep645
  %bound1658 = icmp ult ptr %scevgep644, %scevgep639
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %scevgep638, %scevgep647
  %bound1662 = icmp ult ptr %scevgep646, %scevgep639
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  %bound0665 = icmp ult ptr %scevgep638, %scevgep649
  %bound1666 = icmp ult ptr %scevgep648, %scevgep639
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %conflict.rdx664, %found.conflict667
  br i1 %conflict.rdx668, label %scalar.ph669.preheader, label %vector.ph671

vector.ph671:                                     ; preds = %vector.memcheck636
  %n.vec672 = and i64 %i.fi, -4                   ; 3 uses
  %i.gz = sub nsw i64 %21, %n.vec672
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph671
  %index674 = phi i64 [ 0, %vector.ph671 ], [ %index.next688, %vector.body673 ] ; 2 uses
  %i.ha = sub i64 %21, %index674                  ; 5 uses
  %i.hb = getelementptr [8 x i8], ptr %invariant.gep502, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -24    ; 2 uses
  %wide.load675 = load <4 x double>, ptr %i.hc, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ha
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -24
  %wide.load677 = load <4 x double>, ptr %i.he, align 8, !tbaa !9, !alias.scope !22
  %i.hf = trunc nuw nsw i64 %i.ha to i32          ; 2 uses
  %i.hg = add i32 %i.fe, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hh
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -24
  %wide.load678 = load <4 x double>, ptr %i.hj, align 8, !tbaa !9, !alias.scope !23
  %i.hk = fneg <4 x double> %wide.load677
  %i.hl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hk, <4 x double> %wide.load678, <4 x double> %wide.load675)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ha
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -24
  %wide.load681 = load <4 x double>, ptr %i.hn, align 8, !tbaa !9, !alias.scope !24
  %i.ho = add i32 %i.ff, %i.hf
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -24
  %wide.load682 = load <4 x double>, ptr %i.hr, align 8, !tbaa !9, !alias.scope !25
  %i.hs = fneg <4 x double> %wide.load681
  %i.ht = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hs, <4 x double> %wide.load682, <4 x double> %i.hl)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ha
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -24
  %wide.load685 = load <4 x double>, ptr %i.hv, align 8, !tbaa !9, !alias.scope !26
  %i.hw = fdiv <4 x double> %i.ht, %wide.load685
  store <4 x double> %i.hw, ptr %i.hc, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %index.next688 = add nuw i64 %index674, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next688, %n.vec672
  br i1 %i.hx, label %middle.block689, label %vector.body673, !llvm.loop !27

middle.block689:                                  ; preds = %vector.body673
  %cmp.n690 = icmp eq i64 %i.fi, %n.vec672
  br i1 %cmp.n690, label %.loopexit, label %scalar.ph669.preheader

scalar.ph669.preheader:                           ; preds = %vector.memcheck636, %vector.scevcheck633, %.lr.ph393, %middle.block689
  %indvars.iv438.ph = phi i64 [ %21, %vector.memcheck636 ], [ %21, %vector.scevcheck633 ], [ %21, %.lr.ph393 ], [ %i.gz, %middle.block689 ]
  br label %scalar.ph669

scalar.ph669:                                     ; preds = %scalar.ph669.preheader, %scalar.ph669
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %scalar.ph669 ], [ %indvars.iv438.ph, %scalar.ph669.preheader ] ; 7 uses
  %gep503 = getelementptr [8 x i8], ptr %invariant.gep502, i64 %indvars.iv438 ; 2 uses
  %i.hy = load double, ptr %gep503, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv438
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !9
  %i.ib = trunc nuw nsw i64 %indvars.iv438 to i32 ; 2 uses
  %i.ic = add i32 %i.fe, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !9
  %i.ig = fneg double %i.ia
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.if, double %i.hy)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv438
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !9
  %i.ik = add i32 %i.ff, %i.ib
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !9
  %i.io = fneg double %i.ij
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %i.in, double %i.ih)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv438
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !9
  %i.is = fdiv double %i.ip, %i.ir
  store double %i.is, ptr %gep503, align 8, !tbaa !9
  %indvars.iv.next439 = add nsw i64 %indvars.iv438, -1
  %i.it = icmp samesign ugt i64 %indvars.iv438, 1
  br i1 %i.it, label %scalar.ph669, label %.loopexit, !llvm.loop !30

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv428 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next429, %._crit_edge384 ] ; 2 uses
  %i.iu = trunc i35 %indvar to i32
  %i.iv = mul i32 %i.f, %i.iu
  %i.iw = add i32 %i.iv, %i.bw
  %i.ix = sext i32 %i.iw to i64
  %i.iy = shl nsw i64 %i.ix, 3                    ; 2 uses
  %scevgep559 = getelementptr i8, ptr %scevgep558, i64 %i.iy ; 5 uses
  %scevgep561 = getelementptr i8, ptr %scevgep560, i64 %i.iy ; 5 uses
  %i.iz = trunc i35 %indvar to i32
  %i.ja = mul i32 %i.f, %i.iz
  %i.jb = add i32 %i.ja, %i.bl                    ; 2 uses
  %i.jc = mul i35 %i.bf, %indvar                  ; 2 uses
  %i.jd = add i35 %i.be, %i.jc
  %i.je = sext i35 %i.jd to i64                   ; 2 uses
  %scevgep512 = getelementptr i8, ptr %scevgep511, i64 %i.je
  %scevgep514 = getelementptr i8, ptr %scevgep513, i64 %i.je
  %i.jf = add i35 %i.bj, %i.jc
  %i.jg = sext i35 %i.jf to i64                   ; 2 uses
  %scevgep518 = getelementptr i8, ptr %scevgep517, i64 %i.jg
  %scevgep520 = getelementptr i8, ptr %scevgep519, i64 %i.jg
  %i.jh = mul i35 %i.ah, %indvar                  ; 2 uses
  %i.ji = add i35 %i.ag, %i.jh                    ; 2 uses
  %i.jj = add i35 %i.aj, %i.jh                    ; 2 uses
  %i.jk = mul nsw i64 %indvars.iv428, %i.x        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jl = load double, ptr %i.q, align 8, !tbaa !9
  %gep491 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.jk ; 2 uses
  %i.jm = load double, ptr %gep491, align 8, !tbaa !9
  %i.jn = fdiv double %i.jm, %i.jl
  store double %i.jn, ptr %gep491, align 8, !tbaa !9
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.jo = trunc nsw i64 %i.jk to i32
  %i.jp = add i32 %i.jo, 1                        ; 3 uses
  %invariant.gep484 = getelementptr [8 x i8], ptr %i.h, i64 %i.jk ; 2 uses
  %invariant.gep486 = getelementptr [8 x i8], ptr %i.h, i64 %i.jk ; 2 uses
  br i1 %min.iters.check618, label %scalar.ph617.preheader, label %vector.scevcheck553

vector.scevcheck553:                              ; preds = %.lr.ph379
  %i.jq = add i32 %i.jb, %i.cd
  %i.jr = icmp slt i32 %i.jq, %i.jb
  %i.js = or i1 %i.jr, %i.ce
  br i1 %i.js, label %scalar.ph617.preheader, label %vector.memcheck555

vector.memcheck555:                               ; preds = %vector.scevcheck553
  %bound0564 = icmp ult ptr %scevgep556, %scevgep561
  %bound1565 = icmp ult ptr %scevgep559, %scevgep557
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx587.reass = or i1 %found.conflict566, %invariant.op714
  %bound0588 = icmp ult ptr %scevgep559, %scevgep561
  %conflict.rdx590 = or i1 %conflict.rdx587.reass, %bound0588
  %bound0591 = icmp ult ptr %scevgep559, %scevgep562
  %bound1592 = icmp ult ptr %7, %scevgep561
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %scevgep559, %scevgep563
  %bound1596 = icmp ult ptr %3, %scevgep561
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0612 = icmp ult ptr %scevgep559, %scevgep557
  %bound1613 = icmp ult ptr %scevgep556, %scevgep561
  %found.conflict614 = and i1 %bound0612, %bound1613
  %conflict.rdx616 = or i1 %found.conflict614, %conflict.rdx598
  br i1 %conflict.rdx616, label %scalar.ph617.preheader, label %vector.body621

vector.body621:                                   ; preds = %vector.memcheck555, %vector.body621
  %index622 = phi i64 [ %index.next629, %vector.body621 ], [ 0, %vector.memcheck555 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body621 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck555 ] ; 2 uses
  %i.jt = or disjoint i64 %index622, 1            ; 3 uses
  %i.ju = getelementptr [4 x i8], ptr %7, i64 %index622
  %wide.load623 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !8, !alias.scope !31
  %i.jv = zext <4 x i32> %wide.load623 to <4 x i64>
  %i.jw = icmp eq <4 x i64> %vec.ind, %i.jv       ; 5 uses
  %i.jx = xor <4 x i1> %i.jw, splat (i1 true)     ; 5 uses
  %i.jy = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.jt ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jy, <4 x i1> %i.jx, <4 x double> poison), !tbaa !9, !alias.scope !34, !noalias !36
  %i.jz = trunc i64 %i.jt to i32
  %i.ka = add i32 %i.jp, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr [8 x i8], ptr %i.h, i64 %i.kb ; 4 uses
  %wide.masked.load624 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kc, <4 x i1> %i.jx, <4 x double> poison), !tbaa !9, !alias.scope !41, !noalias !42 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load624, ptr align 8 %i.jy, <4 x i1> %i.jx), !tbaa !9, !alias.scope !34, !noalias !36
  %i.kd = getelementptr [8 x i8], ptr %3, i64 %index622 ; 2 uses
  %wide.masked.load625 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kd, <4 x i1> %i.jx, <4 x double> poison), !tbaa !9, !alias.scope !43
  %i.ke = fneg <4 x double> %wide.masked.load625
  %i.kf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ke, <4 x double> %wide.masked.load624, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kf, ptr align 8 %i.kc, <4 x i1> %i.jx), !tbaa !9, !alias.scope !41, !noalias !42
  %wide.masked.load626 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kd, <4 x i1> %i.jw, <4 x double> poison), !tbaa !9, !alias.scope !43
  %i.kg = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.jt
  %wide.masked.load627 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kg, <4 x i1> %i.jw, <4 x double> poison), !tbaa !9, !alias.scope !44
  %wide.masked.load628 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kc, <4 x i1> %i.jw, <4 x double> poison), !tbaa !9, !alias.scope !45, !noalias !46
  %i.kh = fneg <4 x double> %wide.masked.load626
  %i.ki = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kh, <4 x double> %wide.masked.load627, <4 x double> %wide.masked.load628)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ki, ptr align 8 %i.kc, <4 x i1> %i.jw), !tbaa !9, !alias.scope !45, !noalias !46
  %index.next629 = add nuw i64 %index622, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kj = icmp eq i64 %index.next629, %n.vec620
  br i1 %i.kj, label %middle.block630, label %vector.body621, !llvm.loop !47

middle.block630:                                  ; preds = %vector.body621
  br i1 %cmp.n631, label %._crit_edge380, label %scalar.ph617.preheader

scalar.ph617.preheader:                           ; preds = %vector.memcheck555, %vector.scevcheck553, %.lr.ph379, %middle.block630
  %indvars.iv420.ph = phi i64 [ 1, %vector.memcheck555 ], [ 1, %vector.scevcheck553 ], [ 1, %.lr.ph379 ], [ %i.cg, %middle.block630 ]
  br label %scalar.ph617

scalar.ph617:                                     ; preds = %scalar.ph617.preheader, %bb.j
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %bb.j ], [ %indvars.iv420.ph, %scalar.ph617.preheader ] ; 9 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv420
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp eq i64 %indvars.iv420, %i.km
  br i1 %i.kn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %scalar.ph617
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv420
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !9
  %gep487 = getelementptr [8 x i8], ptr %invariant.gep486, i64 %indvars.iv420
  %i.kq = load double, ptr %gep487, align 8, !tbaa !9
  %i.kr = trunc nuw nsw i64 %indvars.iv420 to i32
  %i.ks = add i32 %i.jp, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kt ; 2 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !9
  %i.kw = fneg double %i.kp
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.kw, double %i.kq, double %i.kv)
  store double %i.kx, ptr %i.ku, align 8, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %scalar.ph617
  %gep485 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %indvars.iv420 ; 2 uses
  %i.ky = load double, ptr %gep485, align 8, !tbaa !9
  %i.kz = trunc nuw nsw i64 %indvars.iv420 to i32
  %i.la = add i32 %i.jp, %i.kz
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lb ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !9 ; 2 uses
  store double %i.ld, ptr %gep485, align 8, !tbaa !9
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv420
  %i.lf = load double, ptr %i.le, align 8, !tbaa !9
  %i.lg = fneg double %i.lf
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.ld, double %i.ky)
  store double %i.lh, ptr %i.lc, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %._crit_edge380, label %scalar.ph617, !llvm.loop !48

._crit_edge380:                                   ; preds = %bb.j, %middle.block630
  %i.li = load double, ptr %i.q, align 8, !tbaa !9
  %gep493 = getelementptr [8 x i8], ptr %invariant.gep492, i64 %i.jk ; 2 uses
  %i.lj = load double, ptr %gep493, align 8, !tbaa !9
  %i.lk = fdiv double %i.lj, %i.li                ; 2 uses
  store double %i.lk, ptr %gep493, align 8, !tbaa !9
  %gep495 = getelementptr [8 x i8], ptr %invariant.gep494, i64 %i.jk ; 2 uses
  %i.ll = load double, ptr %gep495, align 8, !tbaa !9
  %i.lm = load double, ptr %i.t, align 8, !tbaa !9
  %i.ln = fneg double %i.lm
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.ln, double %i.lk, double %i.ll)
  %i.lp = load double, ptr %i.u, align 8, !tbaa !9
  %i.lq = fdiv double %i.lo, %i.lp
  store double %i.lq, ptr %gep495, align 8, !tbaa !9
  br i1 %i.w, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.lr = add i64 %i.jk, 1                        ; 2 uses
  %i.ls = add i64 %i.jk, 2                        ; 2 uses
  %invariant.gep488 = getelementptr [8 x i8], ptr %i.h, i64 %i.jk ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.lt = sub i35 %i.ji, %mul.result
  %i.lu = icmp sgt i35 %i.lt, %i.ji
  %i.lv = sub i35 %i.jj, %mul.result
  %i.lw = icmp sgt i35 %i.lv, %i.jj
  %i.lx = or i1 %i.lw, %mul.overflow
  %i.ly = or i1 %i.lu, %i.lx
  br i1 %i.ly, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0523 = icmp ult ptr %scevgep, %scevgep514
  %bound1524 = icmp ult ptr %scevgep512, %scevgep508
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx531.reass = or i1 %found.conflict525, %invariant.op716
  %bound0532 = icmp ult ptr %scevgep, %scevgep520
  %bound1533 = icmp ult ptr %scevgep518, %scevgep508
  %found.conflict534 = and i1 %bound0532, %bound1533
  %conflict.rdx536 = or i1 %found.conflict534, %conflict.rdx531.reass
  %conflict.rdx541 = or i1 %found.conflict539, %conflict.rdx536
  br i1 %conflict.rdx541, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.lz = sub i64 %10, %index                     ; 6 uses
  %i.ma = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.lz
  %i.mb = getelementptr i8, ptr %i.ma, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mb, align 8, !tbaa !9, !alias.scope !49, !noalias !52
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.lz
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -24
  %wide.load542 = load <4 x double>, ptr %i.md, align 8, !tbaa !9, !alias.scope !58
  %i.me = add i64 %i.lr, %i.lz
  %i.mf = shl i64 %i.me, 32
  %i.mg = ashr exact i64 %i.mf, 29
  %i.mh = getelementptr inbounds i8, ptr %i.h, i64 %i.mg
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -24
  %wide.load543 = load <4 x double>, ptr %i.mi, align 8, !tbaa !9, !alias.scope !59
  %i.mj = fneg <4 x double> %wide.load542
  %i.mk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mj, <4 x double> %wide.load543, <4 x double> %wide.load)
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.lz
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -24
  %wide.load546 = load <4 x double>, ptr %i.mm, align 8, !tbaa !9, !alias.scope !60
  %i.mn = add i64 %i.ls, %i.lz
  %i.mo = shl i64 %i.mn, 32
  %i.mp = ashr exact i64 %i.mo, 29
  %i.mq = getelementptr inbounds i8, ptr %i.h, i64 %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -24
  %wide.load547 = load <4 x double>, ptr %i.mr, align 8, !tbaa !9, !alias.scope !61
  %i.ms = fneg <4 x double> %wide.load546
  %i.mt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ms, <4 x double> %wide.load547, <4 x double> %i.mk)
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lz
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -24
  %wide.load550 = load <4 x double>, ptr %i.mv, align 8, !tbaa !9, !alias.scope !62
  %i.mw = fdiv <4 x double> %i.mt, %wide.load550
  store <4 x double> %i.mw, ptr %i.mb, align 8, !tbaa !9, !alias.scope !49, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv425.ph = phi i64 [ %10, %vector.memcheck ], [ %10, %vector.scevcheck ], [ %10, %.lr.ph383 ], [ %i.cl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %scalar.ph ], [ %indvars.iv425.ph, %scalar.ph.preheader ] ; 8 uses
  %gep489 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %indvars.iv425 ; 2 uses
  %i.my = load double, ptr %gep489, align 8, !tbaa !9
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv425
  %i.na = load double, ptr %i.mz, align 8, !tbaa !9
  %i.nb = add i64 %i.lr, %indvars.iv425
  %sext = shl i64 %i.nb, 32
  %i.nc = ashr exact i64 %sext, 29
  %i.nd = getelementptr inbounds i8, ptr %i.h, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !9
  %i.nf = fneg double %i.na
  %i.ng = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.ne, double %i.my)
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv425
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9
  %i.nj = add i64 %i.ls, %indvars.iv425
  %sext450 = shl i64 %i.nj, 32
  %i.nk = ashr exact i64 %sext450, 29
  %i.nl = getelementptr inbounds i8, ptr %i.h, i64 %i.nk
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !9
  %i.nn = fneg double %i.ni
  %i.no = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.nm, double %i.ng)
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv425
  %i.nq = load double, ptr %i.np, align 8, !tbaa !9
  %i.nr = fdiv double %i.no, %i.nq
  store double %i.nr, ptr %gep489, align 8, !tbaa !9
  %indvars.iv.next426 = add nsw i64 %indvars.iv425, -1
  %i.ns = icmp samesign ugt i64 %indvars.iv425, 1
  br i1 %i.ns, label %scalar.ph, label %._crit_edge384, !llvm.loop !64

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond432.not, label %.loopexit, label %.preheader354, !llvm.loop !65

bb.k:                                             ; preds = %bb.c
  br i1 %i.o, label %bb.l, label %.preheader361

.preheader361:                                    ; preds = %bb.k
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp samesign ult i32 %i.i, 3
  %23 = add i32 %i.i, 1                           ; 2 uses
  %24 = sext i32 %i.i to i64
  %25 = sext i32 %i.f to i64                      ; 3 uses
  %i.nu = add nuw i32 %i.k, 1
  %wide.trip.count405 = zext i32 %i.nu to i64
  %wide.trip.count = zext i32 %23 to i64
  %i.nv = or i64 %25, %i.g
  %i.nw = shl nsw i64 %i.nv, 3
  %i.nx = shl nsw i64 %25, 3
  %i.ny = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.nz = getelementptr i8, ptr %8, i64 %i.nw
  %i.oa = getelementptr i8, ptr %i.nz, i64 16
  %xtraiter = and i64 %i.ny, 1
  %i.ob = icmp eq i32 %23, 4
  %unroll_iter = and i64 %i.ny, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod702 = trunc i64 %i.ny to i1
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.oc = load double, ptr %4, align 8, !tbaa !9
  %26 = sext i32 %i.f to i64                      ; 6 uses
  %i.od = getelementptr [8 x i8], ptr %i.h, i64 %26 ; 2 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 8      ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !9
  %i.og = fdiv double %i.of, %i.oc                ; 2 uses
  store double %i.og, ptr %i.oe, align 8, !tbaa !9
  br i1 %.not353.not386, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %.not350370 = icmp eq i32 %i.i, 2
  %27 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oh = getelementptr i8, ptr %i.od, i64 16     ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !9
  %i.oj = load double, ptr %5, align 8, !tbaa !9
  %i.ok = fneg double %i.oj
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.og, double %i.oi)
  %i.om = load double, ptr %27, align 8, !tbaa !9
  %i.on = fdiv double %i.ol, %i.om
  store double %i.on, ptr %i.oh, align 8, !tbaa !9
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.m
  %invariant.gep472 = getelementptr [8 x i8], ptr %i.h, i64 %26 ; 3 uses
  %invariant.gep476 = getelementptr [8 x i8], ptr %i.h, i64 %26 ; 3 uses
  %i.oo = or i64 %26, %i.g
  %i.op = shl nsw i64 %i.oo, 3
  %i.oq = getelementptr i8, ptr %8, i64 %i.op
  %scevgep692 = getelementptr i8, ptr %i.oq, i64 16
  %load_initial = load double, ptr %scevgep692, align 8 ; 2 uses
  %28 = zext nneg i32 %i.i to i64                 ; 2 uses
  %xtraiter703 = and i64 %28, 1
  %i.or = icmp eq i32 %i.i, 3
  br i1 %i.or, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %unroll_iter706 = and i64 %28, 2147483646
  %29 = add nsw i64 %unroll_iter706, -4
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  br i1 %lcmp.mod704.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.ql, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv407.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next408.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod705 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod705)
  %gep473.epil = getelementptr [8 x i8], ptr %invariant.gep472, i64 %indvars.iv407.epil.init ; 2 uses
  %i.os = load double, ptr %gep473.epil, align 8, !tbaa !9
  %i.ot = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv407.epil.init
  %i.ou = getelementptr i8, ptr %i.ot, i64 -8
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !9
  %i.ow = fneg double %i.ov
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ow, double %store_forwarded.epil.init, double %i.os)
  %i.oy = add nsw i64 %indvars.iv407.epil.init, -2 ; 2 uses
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.oy
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !9
  %gep477.epil = getelementptr [8 x i8], ptr %invariant.gep476, i64 %i.oy
  %i.pb = load double, ptr %gep477.epil, align 8, !tbaa !9
  %i.pc = fneg double %i.pa
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.pc, double %i.pb, double %i.ox)
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv407.epil.init
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !9
  %i.pg = fdiv double %i.pd, %i.pf
  store double %i.pg, ptr %gep473.epil, align 8, !tbaa !9
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.m
  %30 = zext nneg i32 %i.i to i64
  %invariant.gep480 = getelementptr [8 x i8], ptr %i.h, i64 %26
  %invariant.gep482 = getelementptr [8 x i8], ptr %i.h, i64 %26
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.ql, %.lr.ph373 ]
  %indvars.iv407 = phi i64 [ 3, %.lr.ph373.preheader.new ], [ %indvars.iv.next408.1, %.lr.ph373 ] ; 9 uses
  %niter707 = phi i64 [ 0, %.lr.ph373.preheader.new ], [ %niter707.next.1, %.lr.ph373 ] ; 2 uses
  %gep473 = getelementptr [8 x i8], ptr %invariant.gep472, i64 %indvars.iv407 ; 2 uses
  %i.ph = load double, ptr %gep473, align 8, !tbaa !9
  %i.pi = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv407
  %i.pj = getelementptr i8, ptr %i.pi, i64 -8
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !9
  %i.pl = fneg double %i.pk
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.pl, double %store_forwarded, double %i.ph)
  %i.pn = add nsw i64 %indvars.iv407, -2          ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.pn
  %i.pp = load double, ptr %i.po, align 8, !tbaa !9
  %gep477 = getelementptr [8 x i8], ptr %invariant.gep476, i64 %i.pn
  %i.pq = load double, ptr %gep477, align 8, !tbaa !9
  %i.pr = fneg double %i.pp
  %i.ps = tail call double @llvm.fmuladd.f64(double %i.pr, double %i.pq, double %i.pm)
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv407
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !9
  %i.pv = fdiv double %i.ps, %i.pu                ; 2 uses
  store double %i.pv, ptr %gep473, align 8, !tbaa !9
  %i.pw = getelementptr [8 x i8], ptr %invariant.gep472, i64 %indvars.iv407
  %gep473.1 = getelementptr i8, ptr %i.pw, i64 8  ; 2 uses
  %i.px = load double, ptr %gep473.1, align 8, !tbaa !9
  %i.py = getelementptr [8 x i8], ptr %5, i64 %indvars.iv407
  %i.pz = getelementptr i8, ptr %i.py, i64 -8
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !9
  %i.qb = fneg double %i.qa
  %i.qc = tail call double @llvm.fmuladd.f64(double %i.qb, double %i.pv, double %i.px)
  %i.qd = add nsw i64 %indvars.iv407, -1          ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qd
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !9
  %gep477.1 = getelementptr [8 x i8], ptr %invariant.gep476, i64 %i.qd
  %i.qg = load double, ptr %gep477.1, align 8, !tbaa !9
  %i.qh = fneg double %i.qf
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qh, double %i.qg, double %i.qc)
  %i.qj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv407
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !9
  %i.ql = fdiv double %i.qi, %i.qk                ; 3 uses
  store double %i.ql, ptr %gep473.1, align 8, !tbaa !9
  %indvars.iv.next408.1 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %niter707.next.1 = add i64 %niter707, 2
  %niter707.ncmp.1 = icmp eq i64 %niter707, %29
  br i1 %niter707.ncmp.1, label %.lr.ph375.preheader.loopexit.unr-lcssa, label %.lr.ph373, !llvm.loop !66

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %indvars.iv412 = phi i64 [ %30, %.lr.ph375.preheader ], [ %indvars.iv.next413, %.lr.ph375 ] ; 3 uses
  %indvars.iv.next413 = add nsw i64 %indvars.iv412, -1 ; 4 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next413
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !8
  %gep479 = getelementptr [8 x i8], ptr %invariant.gep480, i64 %indvars.iv.next413 ; 2 uses
  %i.qo = load double, ptr %gep479, align 8, !tbaa !9
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next413
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !9
  %gep481 = getelementptr [8 x i8], ptr %invariant.gep482, i64 %indvars.iv412
  %i.qr = load double, ptr %gep481, align 8, !tbaa !9
  %i.qs = fneg double %i.qq
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qr, double %i.qo)
  %31 = add nsw i32 %i.qn, %i.f
  %i.qu = sext i32 %31 to i64
  %gep483 = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.qu ; 2 uses
  %i.qv = load double, ptr %gep483, align 8, !tbaa !9
  store double %i.qv, ptr %gep479, align 8, !tbaa !9
  store double %i.qt, ptr %gep483, align 8, !tbaa !9
  %i.qw = icmp samesign ugt i64 %indvars.iv412, 2
  br i1 %i.qw, label %.lr.ph375, label %.loopexit, !llvm.loop !67

bb.n:                                             ; preds = %.preheader361, %._crit_edge
  %indvar693 = phi i64 [ 0, %.preheader361 ], [ %indvar.next694, %._crit_edge ] ; 2 uses
  %indvars.iv402 = phi i64 [ 1, %.preheader361 ], [ %indvars.iv.next403, %._crit_edge ] ; 2 uses
  %i.qx = mul i64 %i.nx, %indvar693
  %scevgep695 = getelementptr i8, ptr %i.oa, i64 %i.qx
  %i.qy = load double, ptr %4, align 8, !tbaa !9
  %i.qz = mul nsw i64 %indvars.iv402, %25         ; 7 uses
  %i.ra = getelementptr [8 x i8], ptr %i.h, i64 %i.qz ; 2 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 8      ; 2 uses
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !9
  %i.rd = fdiv double %i.rc, %i.qy                ; 2 uses
  store double %i.rd, ptr %i.rb, align 8, !tbaa !9
  br i1 %.not353.not386, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.re = getelementptr i8, ptr %i.ra, i64 16     ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !9
  %i.rg = load double, ptr %5, align 8, !tbaa !9
  %i.rh = fneg double %i.rg
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.rd, double %i.rf)
  %i.rj = load double, ptr %i.nt, align 8, !tbaa !9
  %i.rk = fdiv double %i.ri, %i.rj
  store double %i.rk, ptr %i.re, align 8, !tbaa !9
  br i1 %.not349363, label %.lr.ph368.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.qz ; 3 uses
  %invariant.gep462 = getelementptr [8 x i8], ptr %i.h, i64 %i.qz ; 3 uses
  %load_initial696 = load double, ptr %scevgep695, align 8 ; 2 uses
  br i1 %i.ob, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph368.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.lr.ph368.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph368.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded697.epil.init = phi double [ %load_initial696, %.lr.ph.preheader ], [ %i.te, %.lr.ph368.preheader.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph368.preheader.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod702)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.rl = load double, ptr %gep.epil, align 8, !tbaa !9
  %i.rm = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.rn = getelementptr i8, ptr %i.rm, i64 -8
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !9
  %i.rp = fneg double %i.ro
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.rp, double %store_forwarded697.epil.init, double %i.rl)
  %i.rr = add nsw i64 %indvars.iv.epil.init, -2   ; 2 uses
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.rr
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !9
  %gep463.epil = getelementptr [8 x i8], ptr %invariant.gep462, i64 %i.rr
  %i.ru = load double, ptr %gep463.epil, align 8, !tbaa !9
  %i.rv = fneg double %i.rt
  %i.rw = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.ru, double %i.rq)
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !9
  %i.rz = fdiv double %i.rw, %i.ry
  store double %i.rz, ptr %gep.epil, align 8, !tbaa !9
  br label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %.lr.ph.epil.preheader, %.lr.ph368.preheader.loopexit.unr-lcssa, %bb.o
  %invariant.gep464 = getelementptr [8 x i8], ptr %i.h, i64 %i.qz
  %invariant.gep466 = getelementptr [8 x i8], ptr %i.h, i64 %i.qz
  %invariant.gep468 = getelementptr [8 x i8], ptr %i.h, i64 %i.qz
  %invariant.gep470 = getelementptr [8 x i8], ptr %i.h, i64 %i.qz
  br label %.lr.ph368

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded697 = phi double [ %i.te, %.lr.ph ], [ %load_initial696, %.lr.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 3, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.sa = load double, ptr %gep, align 8, !tbaa !9
  %i.sb = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.sc = getelementptr i8, ptr %i.sb, i64 -8
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !9
  %i.se = fneg double %i.sd
  %i.sf = tail call double @llvm.fmuladd.f64(double %i.se, double %store_forwarded697, double %i.sa)
  %i.sg = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.sg
  %i.si = load double, ptr %i.sh, align 8, !tbaa !9
  %gep463 = getelementptr [8 x i8], ptr %invariant.gep462, i64 %i.sg
  %i.sj = load double, ptr %gep463, align 8, !tbaa !9
  %i.sk = fneg double %i.si
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.sk, double %i.sj, double %i.sf)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !9
  %i.so = fdiv double %i.sl, %i.sn                ; 2 uses
  store double %i.so, ptr %gep, align 8, !tbaa !9
  %i.sp = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.sp, i64 8     ; 2 uses
  %i.sq = load double, ptr %gep.1, align 8, !tbaa !9
  %i.sr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ss = getelementptr i8, ptr %i.sr, i64 -8
  %i.st = load double, ptr %i.ss, align 8, !tbaa !9
  %i.su = fneg double %i.st
  %i.sv = tail call double @llvm.fmuladd.f64(double %i.su, double %i.so, double %i.sq)
  %i.sw = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.sw
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !9
  %gep463.1 = getelementptr [8 x i8], ptr %invariant.gep462, i64 %i.sw
  %i.sz = load double, ptr %gep463.1, align 8, !tbaa !9
  %i.ta = fneg double %i.sy
  %i.tb = tail call double @llvm.fmuladd.f64(double %i.ta, double %i.sz, double %i.sv)
  %i.tc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.td = load double, ptr %i.tc, align 8, !tbaa !9
  %i.te = fdiv double %i.tb, %i.td                ; 3 uses
  store double %i.te, ptr %gep.1, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph368.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !68

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.r
  %indvars.iv399 = phi i64 [ %24, %.lr.ph368.preheader ], [ %indvars.iv.next400, %bb.r ] ; 4 uses
  %indvars.iv.next400 = add nsw i64 %indvars.iv399, -1 ; 7 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next400
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !8
  %i.th = zext i32 %i.tg to i64
  %i.ti = icmp eq i64 %indvars.iv.next400, %i.th
  br i1 %i.ti, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph368
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next400
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !9
  %gep469 = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv399
  %i.tl = load double, ptr %gep469, align 8, !tbaa !9
  %gep471 = getelementptr [8 x i8], ptr %invariant.gep470, i64 %indvars.iv.next400 ; 2 uses
  %i.tm = load double, ptr %gep471, align 8, !tbaa !9
  %i.tn = fneg double %i.tk
  %i.to = tail call double @llvm.fmuladd.f64(double %i.tn, double %i.tl, double %i.tm)
  store double %i.to, ptr %gep471, align 8, !tbaa !9
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph368
  %gep465 = getelementptr [8 x i8], ptr %invariant.gep464, i64 %indvars.iv399 ; 2 uses
  %i.tp = load double, ptr %gep465, align 8, !tbaa !9 ; 2 uses
  %gep467 = getelementptr [8 x i8], ptr %invariant.gep466, i64 %indvars.iv.next400 ; 2 uses
  %i.tq = load double, ptr %gep467, align 8, !tbaa !9
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next400
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !9
  %i.tt = fneg double %i.ts
  %i.tu = tail call double @llvm.fmuladd.f64(double %i.tt, double %i.tp, double %i.tq)
  store double %i.tu, ptr %gep465, align 8, !tbaa !9
  store double %i.tp, ptr %gep467, align 8, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.tv = icmp samesign ugt i64 %indvars.iv399, 2
  br i1 %i.tv, label %.lr.ph368, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.r, %bb.n
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  %indvar.next694 = add i64 %indvar693, 1
  br i1 %exitcond406.not, label %.loopexit, label %bb.n, !llvm.loop !70

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph375, %._crit_edge384, %scalar.ph669, %middle.block689, %bb.l, %bb.g, %.thread, %bb.a, %bb.b
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17, !18, !19, !20, !21}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!17}
!23 = !{!18}
!24 = !{!19}
!25 = !{!20}
!26 = !{!21}
!27 = distinct !{!27, !12, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !12, !28}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = !{!37, !38, !32, !39, !40}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
!41 = !{!37}
!42 = !{!38, !32, !39, !40}
!43 = !{!39}
!44 = !{!40}
!45 = !{!38}
!46 = !{!32, !39, !40}
!47 = distinct !{!47, !12, !28, !29}
!48 = distinct !{!48, !12, !28}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53, !54, !55, !56, !57}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = distinct !{!57, !51}
!58 = !{!53}
!59 = !{!54}
!60 = !{!55}
!61 = !{!56}
!62 = !{!57}
!63 = distinct !{!63, !12, !28, !29}
!64 = distinct !{!64, !12, !28}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
end_hunk_0
