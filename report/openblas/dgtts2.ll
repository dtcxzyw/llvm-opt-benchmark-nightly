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
  %i.f = load i32, ptr %9, align 4, !tbaa !8      ; 19 uses
  %narrow = xor i32 %i.f, -1
  %i.g = sext i32 %narrow to i64                  ; 9 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %8, i64 %i.g ; 39 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !8      ; 21 uses
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
  %i.p = sext i32 %i.f to i64                     ; 23 uses
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.q = sext i32 %i.i to i64                     ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.q ; 4 uses
  br i1 %i.o, label %bb.e, label %.preheader355

.preheader355:                                    ; preds = %bb.d
  %i.s = add nsw i32 %i.i, -1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t
  %i.w = add i32 %i.i, -2                         ; 6 uses
  %i.x = icmp samesign ugt i32 %i.i, 2
  %i.y = sext i32 %i.w to i64                     ; 8 uses
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = add nuw i32 %i.k, 1
  %wide.trip.count431 = zext i32 %i.aa to i64     ; 3 uses
  %invariant.gep490 = getelementptr [8 x i8], ptr %i.h, i64 %i.q
  %wide.trip.count423 = zext i32 %i.i to i64      ; 5 uses
  %invariant.gep492 = getelementptr [8 x i8], ptr %i.h, i64 %i.q
  %invariant.gep494 = getelementptr [8 x i8], ptr %i.h, i64 %i.z
  %i.ab = icmp ne i32 %i.w, 0
  %umin.neg = sext i1 %i.ab to i64
  %i.ac = add nsw i64 %umin.neg, %i.y             ; 2 uses
  %i.ad = sext i32 %i.f to i35                    ; 2 uses
  %i.ae = sext i32 %i.w to i35
  %i.af = add nsw i35 %i.ad, %i.ae                ; 2 uses
  %i.ag = shl i35 %i.af, 3
  %i.ah = add i35 %i.ag, 8
  %i.ai = shl nsw i35 %i.ad, 3
  %i.aj = shl i35 %i.af, 3
  %i.ak = add i35 %i.aj, 16
  %i.al = icmp ne i32 %i.w, 0                     ; 2 uses
  %umin507 = zext i1 %i.al to i64
  %i.am = add nsw i64 %umin507, %i.p
  %i.an = add nsw i64 %i.am, %i.g
  %i.ao = shl nsw i64 %i.an, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.ao  ; 5 uses
  %i.ap = shl nuw nsw i64 %wide.trip.count431, 3
  %i.aq = add nsw i64 %i.ap, -8
  %i.ar = mul i64 %i.aq, %i.p
  %i.as = shl nsw i64 %i.g, 3                     ; 3 uses
  %i.at = shl nsw i64 %i.y, 3                     ; 5 uses
  %i.au = getelementptr i8, ptr %8, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.at
  %scevgep508 = getelementptr i8, ptr %i.aw, i64 8 ; 5 uses
  %i.ax = select i1 %i.al, i64 8, i64 0           ; 2 uses
  %i.ay = add nsw i64 %i.ax, -8                   ; 3 uses
  %scevgep509 = getelementptr i8, ptr %5, i64 %i.ay
  %scevgep510 = getelementptr i8, ptr %5, i64 %i.at
  %i.az = add nsw i64 %i.ax, %i.as
  %i.ba = sub nsw i64 %i.az, %i.at                ; 2 uses
  %scevgep511 = getelementptr i8, ptr %8, i64 %i.ba
  %i.bb = sext i32 %i.f to i35                    ; 3 uses
  %i.bc = sext i32 %i.w to i35                    ; 2 uses
  %i.bd = add nsw i35 %i.bb, %i.bc
  %i.be = shl i35 %i.bd, 3
  %i.bf = add i35 %i.be, 8
  %i.bg = shl nsw i35 %i.bb, 3
  %i.bh = add nsw i64 %i.as, 8                    ; 2 uses
  %scevgep513 = getelementptr i8, ptr %8, i64 %i.bh
  %scevgep515 = getelementptr i8, ptr %6, i64 %i.ay
  %scevgep516 = getelementptr i8, ptr %6, i64 %i.at
  %scevgep517 = getelementptr i8, ptr %8, i64 %i.ba
  %i.bi = add nsw i35 %i.bb, %i.bc
  %i.bj = shl i35 %i.bi, 3
  %i.bk = add i35 %i.bj, 16
  %scevgep519 = getelementptr i8, ptr %8, i64 %i.bh
  %scevgep521 = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep522 = getelementptr i8, ptr %4, i64 %i.at
  %i.bl = add nsw i64 %wide.trip.count423, -2     ; 2 uses
  %i.bm = add i32 %i.f, 2
  %i.bn = shl nsw i64 %i.p, 3
  %i.bo = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.bp = getelementptr i8, ptr %8, i64 %i.bn
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %scevgep556 = getelementptr i8, ptr %i.bq, i64 8 ; 5 uses
  %i.br = shl nuw nsw i64 %wide.trip.count431, 3
  %i.bs = add nsw i64 %i.br, -8
  %i.bt = mul i64 %i.bs, %i.p
  %i.bu = shl nuw nsw i64 %wide.trip.count423, 3  ; 3 uses
  %i.bv = getelementptr i8, ptr %8, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bo
  %scevgep557 = getelementptr i8, ptr %i.bw, i64 %i.bu ; 5 uses
  %scevgep558 = getelementptr i8, ptr %8, i64 %i.bo
  %i.bx = add i32 %i.f, 2
  %i.by = getelementptr i8, ptr %8, i64 %i.bo
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bu
  %scevgep560 = getelementptr i8, ptr %i.bz, i64 -8
  %i.ca = shl nuw nsw i64 %wide.trip.count423, 2
  %i.cb = getelementptr i8, ptr %7, i64 %i.ca
  %scevgep562 = getelementptr i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cc = getelementptr i8, ptr %3, i64 %i.bu
  %scevgep563 = getelementptr i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.cd = add nsw i64 %wide.trip.count423, -1     ; 2 uses
  %min.iters.check618 = icmp ult i32 %i.i, 33
  %i.ce = trunc i64 %i.bl to i32
  %i.cf = icmp ugt i64 %i.bl, 4294967295
  %bound0573 = icmp ult ptr %scevgep556, %scevgep562
  %bound1574 = icmp ult ptr %7, %scevgep557
  %found.conflict575 = and i1 %bound0573, %bound1574
  %stride.check576 = icmp slt i32 %i.f, 0
  %i.cg = or i1 %found.conflict575, %stride.check576
  %bound0578 = icmp ult ptr %scevgep556, %scevgep563
  %bound1579 = icmp ult ptr %3, %scevgep557
  %found.conflict580 = and i1 %bound0578, %bound1579
  %invariant.op = or i1 %i.cg, %found.conflict580
  %bound0583 = icmp ult ptr %scevgep556, %scevgep557
  %invariant.op714 = or i1 %invariant.op, %bound0583
  %n.vec620 = and i64 %i.cd, -4                   ; 3 uses
  %i.ch = or disjoint i64 %n.vec620, 1
  %cmp.n631 = icmp eq i64 %i.cd, %n.vec620
  %i.ci = icmp ne i32 %i.w, 0
  %.neg = sext i1 %i.ci to i64
  %i.cj = add nsw i64 %.neg, %i.y
  %i.ck = add nsw i64 %i.cj, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ck, 16
  %i.cl = trunc nsw i64 %i.ac to i35
  %mul.result = shl i35 %i.cl, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ac, 4294967295
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
  %n.vec = and i64 %i.ck, -4                      ; 3 uses
  %i.cm = sub nsw i64 %i.y, %n.vec
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br label %.preheader354

bb.e:                                             ; preds = %bb.d
  %i.cn = add i32 %i.i, -2                        ; 4 uses
  %i.co = icmp samesign ugt i32 %i.i, 2
  %i.cp = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cq
  %i.ct = sext i32 %i.cn to i64                   ; 9 uses
  %i.cu = zext nneg i32 %i.cp to i64
  %invariant.gep496 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 4 uses
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %bb.e
  %wide.trip.count436 = zext nneg i32 %i.i to i64
  %invariant.gep498 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %invariant.gep500 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.cv = add nsw i64 %wide.trip.count436, -1     ; 3 uses
  %xtraiter708 = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.i, 2
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter711 = and i64 %i.cv, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph389.new
  %indvars.iv433 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next434.1, %bb.f ] ; 8 uses
  %niter712 = phi i64 [ 0, %.lr.ph389.new ], [ %niter712.next.1, %bb.f ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv433
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 4 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv433 to i32
  %i.da = add i32 %i.f, %i.cz
  %i.db = trunc nuw nsw i64 %indvars.iv.next434 to i32
  %i.dc = add i32 %i.da, %i.db
  %i.dd = sub i32 %i.dc, %i.cy
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv433
  %i.di = load double, ptr %i.dh, align 8, !tbaa !9
  %i.dj = sext i32 %i.cy to i64
  %gep497 = getelementptr [8 x i8], ptr %invariant.gep496, i64 %i.dj
  %i.dk = load double, ptr %gep497, align 8, !tbaa !9 ; 2 uses
  %i.dl = fneg double %i.di
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.dg)
  %gep499 = getelementptr [8 x i8], ptr %invariant.gep498, i64 %indvars.iv433
  store double %i.dk, ptr %gep499, align 8, !tbaa !9
  %gep501 = getelementptr [8 x i8], ptr %invariant.gep500, i64 %indvars.iv.next434
  store double %i.dm, ptr %gep501, align 8, !tbaa !9
  %i.dn = getelementptr [4 x i8], ptr %7, i64 %indvars.iv433
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 4 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.next434 to i32
  %i.dq = add i32 %i.f, %i.dp
  %i.dr = trunc nuw nsw i64 %indvars.iv.next434.1 to i32
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = sub i32 %i.ds, %i.do
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !9
  %i.dx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv433
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !9
  %i.dz = sext i32 %i.do to i64
  %gep497.1 = getelementptr [8 x i8], ptr %invariant.gep496, i64 %i.dz
  %i.ea = load double, ptr %gep497.1, align 8, !tbaa !9 ; 2 uses
  %i.eb = fneg double %i.dy
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ea, double %i.dw)
  %gep499.1 = getelementptr [8 x i8], ptr %invariant.gep498, i64 %indvars.iv.next434
  store double %i.ea, ptr %gep499.1, align 8, !tbaa !9
  %gep501.1 = getelementptr [8 x i8], ptr %invariant.gep500, i64 %indvars.iv.next434.1
  store double %i.ec, ptr %gep501.1, align 8, !tbaa !9
  %niter712.next.1 = add nuw i64 %niter712, 2     ; 2 uses
  %niter712.ncmp.1 = icmp eq i64 %niter712.next.1, %unroll_iter711
  br i1 %niter712.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !11

.thread:                                          ; preds = %bb.e
  %i.ed = load double, ptr %i.r, align 8, !tbaa !9
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep496, i64 %i.q ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !9
  %i.eg = fdiv double %i.ef, %i.ed
  store double %i.eg, ptr %i.ee, align 8, !tbaa !9
  br label %.loopexit

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv433.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next434.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod710 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod710)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv433.epil.init
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8  ; 2 uses
  %indvars.iv.next434.epil = add nuw nsw i64 %indvars.iv433.epil.init, 1 ; 2 uses
  %i.ej = trunc nuw nsw i64 %indvars.iv433.epil.init to i32
  %i.ek = add i32 %i.f, %i.ej
  %i.el = trunc nuw nsw i64 %indvars.iv.next434.epil to i32
  %i.em = add i32 %i.ek, %i.el
  %i.en = sub i32 %i.em, %i.ei
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv433.epil.init
  %i.es = load double, ptr %i.er, align 8, !tbaa !9
  %i.et = sext i32 %i.ei to i64
  %gep497.epil = getelementptr [8 x i8], ptr %invariant.gep496, i64 %i.et
  %i.eu = load double, ptr %gep497.epil, align 8, !tbaa !9 ; 2 uses
  %i.ev = fneg double %i.es
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.eu, double %i.eq)
  %gep499.epil = getelementptr [8 x i8], ptr %invariant.gep498, i64 %indvars.iv433.epil.init
  store double %i.eu, ptr %gep499.epil, align 8, !tbaa !9
  %gep501.epil = getelementptr [8 x i8], ptr %invariant.gep500, i64 %indvars.iv.next434.epil
  store double %i.ew, ptr %gep501.epil, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ex = load double, ptr %i.r, align 8, !tbaa !9
  %i.ey = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %i.ez = getelementptr [8 x i8], ptr %i.ey, i64 %i.q ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !9
  %i.fb = fdiv double %i.fa, %i.ex                ; 2 uses
  store double %i.fb, ptr %i.ez, align 8, !tbaa !9
  %i.fc = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %i.fd = getelementptr [8 x i8], ptr %i.fc, i64 %i.cu ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !9
  %i.ff = load double, ptr %i.cr, align 8, !tbaa !9
  %i.fg = fneg double %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fb, double %i.fe)
  %i.fi = load double, ptr %i.cs, align 8, !tbaa !9
  %i.fj = fdiv double %i.fh, %i.fi
  store double %i.fj, ptr %i.fd, align 8, !tbaa !9
  br i1 %i.co, label %.lr.ph393, label %.loopexit

.lr.ph393:                                        ; preds = %bb.g
  %i.fk = add i32 %i.f, 1                         ; 2 uses
  %i.fl = add i32 %i.f, 2                         ; 2 uses
  %invariant.gep502 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.fm = icmp ne i32 %i.cn, 0
  %.neg698 = sext i1 %i.fm to i64
  %i.fn = add nsw i64 %.neg698, %i.ct
  %i.fo = add nsw i64 %i.fn, 1                    ; 3 uses
  %min.iters.check670 = icmp ult i64 %i.fo, 32
  br i1 %min.iters.check670, label %scalar.ph669.preheader, label %vector.scevcheck633

vector.scevcheck633:                              ; preds = %.lr.ph393
  %i.fp = icmp ne i32 %i.cn, 0
  %umin634.neg = sext i1 %i.fp to i64
  %i.fq = add nsw i64 %umin634.neg, %i.ct         ; 2 uses
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
  br i1 %i.gb, label %scalar.ph669.preheader, label %vector.memcheck636

vector.memcheck636:                               ; preds = %vector.scevcheck633
  %i.gc = icmp ne i32 %i.cn, 0                    ; 2 uses
  %umin637 = zext i1 %i.gc to i64
  %i.gd = add nsw i64 %umin637, %i.p
  %i.ge = add nsw i64 %i.gd, %i.g
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep638 = getelementptr i8, ptr %8, i64 %i.gf ; 5 uses
  %i.gg = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.gh = or i64 %i.p, %i.g
  %i.gi = shl nsw i64 %i.ct, 3                    ; 5 uses
  %i.gj = add nsw i64 %i.gh, %i.ct
  %i.gk = shl nsw i64 %i.gj, 3
  %i.gl = getelementptr i8, ptr %8, i64 %i.gk
  %scevgep639 = getelementptr i8, ptr %i.gl, i64 8 ; 5 uses
  %i.gm = select i1 %i.gc, i64 8, i64 0           ; 3 uses
  %i.gn = add nsw i64 %i.gm, -8                   ; 3 uses
  %scevgep640 = getelementptr i8, ptr %5, i64 %i.gn
  %scevgep641 = getelementptr i8, ptr %5, i64 %i.gi
  %i.go = add i32 %i.f, %i.i
  %i.gp = add i32 %i.go, -1
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 3                    ; 2 uses
  %i.gs = add nsw i64 %i.gm, %i.gr
  %i.gt = add nsw i64 %i.gs, %i.gg
  %i.gu = sub nsw i64 %i.gt, %i.gi
  %scevgep642 = getelementptr i8, ptr %8, i64 %i.gu
  %i.gv = getelementptr i8, ptr %8, i64 %i.gr
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gg
  %scevgep643 = getelementptr i8, ptr %i.gw, i64 8
  %scevgep644 = getelementptr i8, ptr %6, i64 %i.gn
  %scevgep645 = getelementptr i8, ptr %6, i64 %i.gi
  %i.gx = add i32 %i.f, %i.i
  %i.gy = sext i32 %i.gx to i64
  %i.gz = shl nsw i64 %i.gy, 3                    ; 2 uses
  %i.ha = add nsw i64 %i.gm, %i.gz
  %i.hb = add nsw i64 %i.ha, %i.gg
  %i.hc = sub nsw i64 %i.hb, %i.gi
  %scevgep646 = getelementptr i8, ptr %8, i64 %i.hc
  %i.hd = getelementptr i8, ptr %8, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.gg
  %scevgep647 = getelementptr i8, ptr %i.he, i64 8
  %scevgep648 = getelementptr i8, ptr %4, i64 %i.gn
  %scevgep649 = getelementptr i8, ptr %4, i64 %i.gi
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
  %n.vec672 = and i64 %i.fo, -4                   ; 3 uses
  %i.hf = sub nsw i64 %i.ct, %n.vec672
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph671
  %index674 = phi i64 [ 0, %vector.ph671 ], [ %index.next688, %vector.body673 ] ; 2 uses
  %i.hg = sub i64 %i.ct, %index674                ; 5 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep502, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24    ; 2 uses
  %wide.load675 = load <4 x double>, ptr %i.hi, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -24
  %wide.load677 = load <4 x double>, ptr %i.hk, align 8, !tbaa !9, !alias.scope !22
  %i.hl = trunc nuw nsw i64 %i.hg to i32          ; 2 uses
  %i.hm = add i32 %i.fk, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -24
  %wide.load678 = load <4 x double>, ptr %i.hp, align 8, !tbaa !9, !alias.scope !23
  %i.hq = fneg <4 x double> %wide.load677
  %i.hr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hq, <4 x double> %wide.load678, <4 x double> %wide.load675)
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hg
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -24
  %wide.load681 = load <4 x double>, ptr %i.ht, align 8, !tbaa !9, !alias.scope !24
  %i.hu = add i32 %i.fl, %i.hl
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -24
  %wide.load682 = load <4 x double>, ptr %i.hx, align 8, !tbaa !9, !alias.scope !25
  %i.hy = fneg <4 x double> %wide.load681
  %i.hz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hy, <4 x double> %wide.load682, <4 x double> %i.hr)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -24
  %wide.load685 = load <4 x double>, ptr %i.ib, align 8, !tbaa !9, !alias.scope !26
  %i.ic = fdiv <4 x double> %i.hz, %wide.load685
  store <4 x double> %i.ic, ptr %i.hi, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %index.next688 = add nuw i64 %index674, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next688, %n.vec672
  br i1 %i.id, label %middle.block689, label %vector.body673, !llvm.loop !27

middle.block689:                                  ; preds = %vector.body673
  %cmp.n690 = icmp eq i64 %i.fo, %n.vec672
  br i1 %cmp.n690, label %.loopexit, label %scalar.ph669.preheader

scalar.ph669.preheader:                           ; preds = %vector.memcheck636, %vector.scevcheck633, %.lr.ph393, %middle.block689
  %indvars.iv438.ph = phi i64 [ %i.ct, %vector.memcheck636 ], [ %i.ct, %vector.scevcheck633 ], [ %i.ct, %.lr.ph393 ], [ %i.hf, %middle.block689 ]
  br label %scalar.ph669

scalar.ph669:                                     ; preds = %scalar.ph669.preheader, %scalar.ph669
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %scalar.ph669 ], [ %indvars.iv438.ph, %scalar.ph669.preheader ] ; 7 uses
  %gep503 = getelementptr [8 x i8], ptr %invariant.gep502, i64 %indvars.iv438 ; 2 uses
  %i.ie = load double, ptr %gep503, align 8, !tbaa !9
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv438
  %i.ig = load double, ptr %i.if, align 8, !tbaa !9
  %i.ih = trunc nuw nsw i64 %indvars.iv438 to i32 ; 2 uses
  %i.ii = add i32 %i.fk, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !9
  %i.im = fneg double %i.ig
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double %i.il, double %i.ie)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv438
  %i.ip = load double, ptr %i.io, align 8, !tbaa !9
  %i.iq = add i32 %i.fl, %i.ih
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !9
  %i.iu = fneg double %i.ip
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.it, double %i.in)
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv438
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !9
  %i.iy = fdiv double %i.iv, %i.ix
  store double %i.iy, ptr %gep503, align 8, !tbaa !9
  %indvars.iv.next439 = add nsw i64 %indvars.iv438, -1
  %i.iz = icmp samesign ugt i64 %indvars.iv438, 1
  br i1 %i.iz, label %scalar.ph669, label %.loopexit, !llvm.loop !30

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv428 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next429, %._crit_edge384 ] ; 2 uses
  %i.ja = trunc i35 %indvar to i32
  %i.jb = mul i32 %i.f, %i.ja
  %i.jc = add i32 %i.jb, %i.bx
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 3                    ; 2 uses
  %scevgep559 = getelementptr i8, ptr %scevgep558, i64 %i.je ; 5 uses
  %scevgep561 = getelementptr i8, ptr %scevgep560, i64 %i.je ; 5 uses
  %i.jf = trunc i35 %indvar to i32
  %i.jg = mul i32 %i.f, %i.jf
  %i.jh = add i32 %i.jg, %i.bm                    ; 2 uses
  %i.ji = mul i35 %i.bg, %indvar                  ; 2 uses
  %i.jj = add i35 %i.bf, %i.ji
  %i.jk = sext i35 %i.jj to i64                   ; 2 uses
  %scevgep512 = getelementptr i8, ptr %scevgep511, i64 %i.jk
  %scevgep514 = getelementptr i8, ptr %scevgep513, i64 %i.jk
  %i.jl = add i35 %i.bk, %i.ji
  %i.jm = sext i35 %i.jl to i64                   ; 2 uses
  %scevgep518 = getelementptr i8, ptr %scevgep517, i64 %i.jm
  %scevgep520 = getelementptr i8, ptr %scevgep519, i64 %i.jm
  %i.jn = mul i35 %i.ai, %indvar                  ; 2 uses
  %i.jo = add i35 %i.ah, %i.jn                    ; 2 uses
  %i.jp = add i35 %i.ak, %i.jn                    ; 2 uses
  %i.jq = mul nsw i64 %indvars.iv428, %i.p        ; 9 uses
  br i1 %.not353.not386, label %.lr.ph379, label %._crit_edge380.thread

._crit_edge380.thread:                            ; preds = %.preheader354
  %i.jr = load double, ptr %i.r, align 8, !tbaa !9
  %gep491 = getelementptr [8 x i8], ptr %invariant.gep490, i64 %i.jq ; 2 uses
  %i.js = load double, ptr %gep491, align 8, !tbaa !9
  %i.jt = fdiv double %i.js, %i.jr
  store double %i.jt, ptr %gep491, align 8, !tbaa !9
  br label %._crit_edge384

.lr.ph379:                                        ; preds = %.preheader354
  %i.ju = trunc nsw i64 %i.jq to i32
end_hunk_0
