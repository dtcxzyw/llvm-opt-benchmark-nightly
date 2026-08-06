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
  %i.x = icmp sgt i32 %i.i, 2
  %i.y = sext i32 %i.w to i64                     ; 8 uses
  %i.z = sext i32 %i.s to i64
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
  %umin510 = zext i1 %i.al to i64
  %i.am = add nsw i64 %umin510, %i.p
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
  %scevgep511.a = getelementptr i8, ptr %i.aw, i64 8 ; 5 uses
  %i.ax = select i1 %i.al, i64 8, i64 0           ; 2 uses
  %i.ay = add nsw i64 %i.ax, -8                   ; 3 uses
  %scevgep512.a = getelementptr i8, ptr %5, i64 %i.ay
  %scevgep513.a = getelementptr i8, ptr %5, i64 %i.at
  %i.az = add nsw i64 %i.ax, %i.as
  %i.ba = sub nsw i64 %i.az, %i.at                ; 2 uses
  %scevgep514.a = getelementptr i8, ptr %8, i64 %i.ba
  %i.bb = sext i32 %i.f to i35                    ; 3 uses
  %i.bc = sext i32 %i.w to i35                    ; 2 uses
  %i.bd = add nsw i35 %i.bb, %i.bc
  %i.be = shl i35 %i.bd, 3
  %i.bf = add i35 %i.be, 8
  %i.bg = shl nsw i35 %i.bb, 3
  %i.bh = add nsw i64 %i.as, 8                    ; 2 uses
  %scevgep516.a = getelementptr i8, ptr %8, i64 %i.bh
  %scevgep518.a = getelementptr i8, ptr %6, i64 %i.ay
  %scevgep519.a = getelementptr i8, ptr %6, i64 %i.at
  %scevgep520.a = getelementptr i8, ptr %8, i64 %i.ba
  %i.bi = add nsw i35 %i.bb, %i.bc
  %i.bj = shl i35 %i.bi, 3
  %i.bk = add i35 %i.bj, 16
  %scevgep522.a = getelementptr i8, ptr %8, i64 %i.bh
  %scevgep524 = getelementptr i8, ptr %4, i64 %i.ay
  %scevgep525 = getelementptr i8, ptr %4, i64 %i.at
  %i.bl = add nsw i64 %wide.trip.count423, -2     ; 2 uses
  %i.bm = add i32 %i.f, 2
  %i.bn = shl nsw i64 %i.p, 3
  %i.bo = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.bp = getelementptr i8, ptr %8, i64 %i.bn
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %scevgep559.a = getelementptr i8, ptr %i.bq, i64 8 ; 5 uses
  %i.br = shl nuw nsw i64 %wide.trip.count431, 3
  %i.bs = add nsw i64 %i.br, -8
  %i.bt = mul i64 %i.bs, %i.p
  %i.bu = shl nuw nsw i64 %wide.trip.count423, 3  ; 3 uses
  %i.bv = getelementptr i8, ptr %8, i64 %i.bt
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bo
  %scevgep560.a = getelementptr i8, ptr %i.bw, i64 %i.bu ; 5 uses
  %scevgep561.a = getelementptr i8, ptr %8, i64 %i.bo
  %i.bx = add i32 %i.f, 2
  %i.by = getelementptr i8, ptr %8, i64 %i.bo
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bu
  %scevgep563.a = getelementptr i8, ptr %i.bz, i64 -8
  %i.ca = shl nuw nsw i64 %wide.trip.count423, 2
  %i.cb = getelementptr i8, ptr %7, i64 %i.ca
  %scevgep565 = getelementptr i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cc = getelementptr i8, ptr %3, i64 %i.bu
  %scevgep566 = getelementptr i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.cd = add nsw i64 %wide.trip.count423, -1     ; 2 uses
  %min.iters.check621 = icmp ult i32 %i.i, 33
  %i.ce = trunc i64 %i.bl to i32
  %i.cf = icmp ugt i64 %i.bl, 4294967295
  %bound0576 = icmp ult ptr %scevgep559.a, %scevgep565
  %bound1577 = icmp ult ptr %7, %scevgep560.a
  %found.conflict578 = and i1 %bound0576, %bound1577
  %stride.check579 = icmp slt i32 %i.f, 0
  %i.cg = or i1 %found.conflict578, %stride.check579
  %bound0581 = icmp ult ptr %scevgep559.a, %scevgep566
  %bound1582 = icmp ult ptr %3, %scevgep560.a
  %found.conflict583 = and i1 %bound0581, %bound1582
  %invariant.op = or i1 %i.cg, %found.conflict583
  %bound0586 = icmp ult ptr %scevgep559.a, %scevgep560.a
  %invariant.op720 = or i1 %invariant.op, %bound0586
  %n.vec624 = and i64 %i.cd, -4                   ; 3 uses
  %i.ch = or disjoint i64 %n.vec624, 1
  %cmp.n635 = icmp eq i64 %i.cd, %n.vec624
  %i.ci = icmp ne i32 %i.w, 0
  %.neg = sext i1 %i.ci to i64
  %i.cj = add nsw i64 %.neg, %i.y
  %i.ck = add nsw i64 %i.cj, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ck, 16
  %i.cl = trunc nsw i64 %i.ac to i35
  %mul.result508 = shl i35 %i.cl, 3               ; 2 uses
  %mul.overflow509 = icmp ugt i64 %i.ac, 4294967295
  %bound0 = icmp ult ptr %scevgep, %scevgep513.a
  %bound1 = icmp ult ptr %scevgep512.a, %scevgep511.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check529 = icmp slt i32 %i.f, 0
  %invariant.op721 = or i1 %stride.check529, %found.conflict
  %bound0530 = icmp ult ptr %scevgep, %scevgep519.a
  %bound1531 = icmp ult ptr %scevgep518.a, %scevgep511.a
  %found.conflict532 = and i1 %bound0530, %bound1531
  %invariant.op722 = or i1 %invariant.op721, %found.conflict532
  %bound0540 = icmp ult ptr %scevgep, %scevgep525
  %bound1541 = icmp ult ptr %scevgep524, %scevgep511.a
  %found.conflict542 = and i1 %bound0540, %bound1541
  %n.vec = and i64 %i.ck, -4                      ; 3 uses
  %i.cm = sub nsw i64 %i.y, %n.vec
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br label %.preheader354

bb.e:                                             ; preds = %bb.d
  %i.cn = add i32 %i.i, -2                        ; 4 uses
  %i.co = icmp sgt i32 %i.i, 2
  %i.cp = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cq
  %i.ct = sext i32 %i.cn to i64                   ; 9 uses
  %i.cu = sext i32 %i.cp to i64
  %invariant.gep496 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 4 uses
  br i1 %.not353.not386, label %.lr.ph389, label %.thread

.lr.ph389:                                        ; preds = %bb.e
  %wide.trip.count436 = zext nneg i32 %i.i to i64
  %invariant.gep498 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %invariant.gep500 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.cv = add nsw i64 %wide.trip.count436, -1     ; 3 uses
  %xtraiter714 = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.i, 2
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph389.new

.lr.ph389.new:                                    ; preds = %.lr.ph389
  %unroll_iter717 = and i64 %i.cv, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph389.new
  %indvars.iv433 = phi i64 [ 1, %.lr.ph389.new ], [ %indvars.iv.next434.1, %bb.f ] ; 8 uses
  %niter718 = phi i64 [ 0, %.lr.ph389.new ], [ %niter718.next.1, %bb.f ]
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
  %niter718.next.1 = add nuw i64 %niter718, 2     ; 2 uses
  %niter718.ncmp.1 = icmp eq i64 %niter718.next.1, %unroll_iter717
  br i1 %niter718.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !11

.thread:                                          ; preds = %bb.e
  %i.ed = load double, ptr %i.r, align 8, !tbaa !9
  %i.ee = getelementptr [8 x i8], ptr %invariant.gep496, i64 %i.q ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !9
  %i.eg = fdiv double %i.ef, %i.ed
  store double %i.eg, ptr %i.ee, align 8, !tbaa !9
  br label %.loopexit

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph389
  %indvars.iv433.epil.init = phi i64 [ 1, %.lr.ph389 ], [ %indvars.iv.next434.1, %.unr-lcssa ] ; 5 uses
  %lcmp.mod716 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod716)
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
  %.neg704 = sext i1 %i.fm to i64
  %i.fn = add nsw i64 %.neg704, %i.ct
  %i.fo = add nsw i64 %i.fn, 1                    ; 3 uses
  %min.iters.check675 = icmp ult i64 %i.fo, 32
  br i1 %min.iters.check675, label %scalar.ph674.preheader, label %vector.scevcheck637

vector.scevcheck637:                              ; preds = %.lr.ph393
  %i.fp = icmp ne i32 %i.cn, 0
  %umin638.neg = sext i1 %i.fp to i64
  %i.fq = add nsw i64 %umin638.neg, %i.ct         ; 2 uses
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
  br i1 %i.gb, label %scalar.ph674.preheader, label %vector.memcheck641

vector.memcheck641:                               ; preds = %vector.scevcheck637
  %i.gc = icmp ne i32 %i.cn, 0                    ; 2 uses
  %umin642 = zext i1 %i.gc to i64
  %i.gd = add nsw i64 %umin642, %i.p
  %i.ge = add nsw i64 %i.gd, %i.g
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep643.a = getelementptr i8, ptr %8, i64 %i.gf ; 5 uses
  %i.gg = shl nsw i64 %i.g, 3                     ; 4 uses
  %i.gh = or i64 %i.p, %i.g
  %i.gi = shl nsw i64 %i.ct, 3                    ; 5 uses
  %i.gj = add nsw i64 %i.gh, %i.ct
  %i.gk = shl nsw i64 %i.gj, 3
  %i.gl = getelementptr i8, ptr %8, i64 %i.gk
  %scevgep644.a = getelementptr i8, ptr %i.gl, i64 8 ; 5 uses
  %i.gm = select i1 %i.gc, i64 8, i64 0           ; 3 uses
  %i.gn = add nsw i64 %i.gm, -8                   ; 3 uses
  %scevgep645.a = getelementptr i8, ptr %5, i64 %i.gn
  %scevgep646.a = getelementptr i8, ptr %5, i64 %i.gi
  %i.go = add i32 %i.f, %i.i
  %i.gp = add i32 %i.go, -1
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 3                    ; 2 uses
  %i.gs = add nsw i64 %i.gm, %i.gr
  %i.gt = add nsw i64 %i.gs, %i.gg
  %i.gu = sub nsw i64 %i.gt, %i.gi
  %scevgep647.a = getelementptr i8, ptr %8, i64 %i.gu
  %i.gv = getelementptr i8, ptr %8, i64 %i.gr
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gg
  %scevgep648.a = getelementptr i8, ptr %i.gw, i64 8
  %scevgep649.a = getelementptr i8, ptr %6, i64 %i.gn
  %scevgep650.a = getelementptr i8, ptr %6, i64 %i.gi
  %i.gx = add i32 %i.f, %i.i
  %i.gy = sext i32 %i.gx to i64
  %i.gz = shl nsw i64 %i.gy, 3                    ; 2 uses
  %i.ha = add nsw i64 %i.gm, %i.gz
  %i.hb = add nsw i64 %i.ha, %i.gg
  %i.hc = sub nsw i64 %i.hb, %i.gi
  %scevgep651 = getelementptr i8, ptr %8, i64 %i.hc
  %i.hd = getelementptr i8, ptr %8, i64 %i.gz
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.gg
  %scevgep652 = getelementptr i8, ptr %i.he, i64 8
  %scevgep653 = getelementptr i8, ptr %4, i64 %i.gn
  %scevgep654 = getelementptr i8, ptr %4, i64 %i.gi
  %bound0655 = icmp ult ptr %scevgep643.a, %scevgep646.a
  %bound1656 = icmp ult ptr %scevgep645.a, %scevgep644.a
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0658.a = icmp ult ptr %scevgep643.a, %scevgep648.a
  %bound1659.a = icmp ult ptr %scevgep647.a, %scevgep644.a
  %found.conflict660.a = and i1 %bound0658.a, %bound1659.a
  %conflict.rdx661.a = or i1 %found.conflict657, %found.conflict660.a
  %bound0662.a = icmp ult ptr %scevgep643.a, %scevgep650.a
  %bound1663.a = icmp ult ptr %scevgep649.a, %scevgep644.a
  %found.conflict664.a = and i1 %bound0662.a, %bound1663.a
  %conflict.rdx665.a = or i1 %conflict.rdx661.a, %found.conflict664.a
  %bound0666.a = icmp ult ptr %scevgep643.a, %scevgep652
  %bound1667.a = icmp ult ptr %scevgep651, %scevgep644.a
  %found.conflict668.a = and i1 %bound0666.a, %bound1667.a
  %conflict.rdx669.a = or i1 %conflict.rdx665.a, %found.conflict668.a
  %bound0670 = icmp ult ptr %scevgep643.a, %scevgep654
  %bound1671 = icmp ult ptr %scevgep653, %scevgep644.a
  %found.conflict672 = and i1 %bound0670, %bound1671
  %conflict.rdx673 = or i1 %conflict.rdx669.a, %found.conflict672
  br i1 %conflict.rdx673, label %scalar.ph674.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %vector.memcheck641
  %n.vec678 = and i64 %i.fo, -4                   ; 3 uses
  %i.hf = sub nsw i64 %i.ct, %n.vec678
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph676
  %index680 = phi i64 [ 0, %vector.ph676 ], [ %index.next694, %vector.body679 ] ; 2 uses
  %i.hg = sub i64 %i.ct, %index680                ; 5 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep502, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24    ; 2 uses
  %wide.load681 = load <4 x double>, ptr %i.hi, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -24
  %wide.load683.a = load <4 x double>, ptr %i.hk, align 8, !tbaa !9, !alias.scope !22
  %i.hl = trunc nuw nsw i64 %i.hg to i32          ; 2 uses
  %i.hm = add i32 %i.fk, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -24
  %wide.load684.a = load <4 x double>, ptr %i.hp, align 8, !tbaa !9, !alias.scope !23
  %i.hq = fneg <4 x double> %wide.load683.a
  %i.hr = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hq, <4 x double> %wide.load684.a, <4 x double> %wide.load681)
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hg
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -24
  %wide.load687.a = load <4 x double>, ptr %i.ht, align 8, !tbaa !9, !alias.scope !24
  %i.hu = add i32 %i.fl, %i.hl
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -24
  %wide.load688 = load <4 x double>, ptr %i.hx, align 8, !tbaa !9, !alias.scope !25
  %i.hy = fneg <4 x double> %wide.load687.a
  %i.hz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hy, <4 x double> %wide.load688, <4 x double> %i.hr)
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -24
  %wide.load691 = load <4 x double>, ptr %i.ib, align 8, !tbaa !9, !alias.scope !26
  %i.ic = fdiv <4 x double> %i.hz, %wide.load691
  store <4 x double> %i.ic, ptr %i.hi, align 8, !tbaa !9, !alias.scope !13, !noalias !16
  %index.next694 = add nuw i64 %index680, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next694, %n.vec678
  br i1 %i.id, label %middle.block695, label %vector.body679, !llvm.loop !27

middle.block695:                                  ; preds = %vector.body679
  %cmp.n696 = icmp eq i64 %i.fo, %n.vec678
  br i1 %cmp.n696, label %.loopexit, label %scalar.ph674.preheader

scalar.ph674.preheader:                           ; preds = %vector.memcheck641, %vector.scevcheck637, %.lr.ph393, %middle.block695
  %indvars.iv438.ph = phi i64 [ %i.ct, %vector.memcheck641 ], [ %i.ct, %vector.scevcheck637 ], [ %i.ct, %.lr.ph393 ], [ %i.hf, %middle.block695 ]
  br label %scalar.ph674

scalar.ph674:                                     ; preds = %scalar.ph674.preheader, %scalar.ph674
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %scalar.ph674 ], [ %indvars.iv438.ph, %scalar.ph674.preheader ] ; 7 uses
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
  br i1 %i.iz, label %scalar.ph674, label %.loopexit, !llvm.loop !30

.preheader354:                                    ; preds = %.preheader355, %._crit_edge384
  %indvar = phi i35 [ 0, %.preheader355 ], [ %indvar.next, %._crit_edge384 ] ; 5 uses
  %indvars.iv428 = phi i64 [ 1, %.preheader355 ], [ %indvars.iv.next429, %._crit_edge384 ] ; 2 uses
  %i.ja = trunc i35 %indvar to i32
  %i.jb = mul i32 %i.f, %i.ja
  %i.jc = add i32 %i.jb, %i.bx
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 3                    ; 2 uses
  %scevgep562 = getelementptr i8, ptr %scevgep561.a, i64 %i.je ; 5 uses
  %scevgep564 = getelementptr i8, ptr %scevgep563.a, i64 %i.je ; 5 uses
  %i.jf = trunc i35 %indvar to i32
  %i.jg = mul i32 %i.f, %i.jf
  %i.jh = add i32 %i.jg, %i.bm                    ; 2 uses
  %i.ji = mul i35 %i.bg, %indvar                  ; 2 uses
  %i.jj = add i35 %i.bf, %i.ji
  %i.jk = sext i35 %i.jj to i64                   ; 2 uses
  %scevgep515 = getelementptr i8, ptr %scevgep514.a, i64 %i.jk
  %scevgep517 = getelementptr i8, ptr %scevgep516.a, i64 %i.jk
  %i.jl = add i35 %i.bk, %i.ji
  %i.jm = sext i35 %i.jl to i64                   ; 2 uses
  %scevgep521 = getelementptr i8, ptr %scevgep520.a, i64 %i.jm
  %scevgep523 = getelementptr i8, ptr %scevgep522.a, i64 %i.jm
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
  %i.jv = add i32 %i.ju, 1                        ; 3 uses
  %invariant.gep484 = getelementptr [8 x i8], ptr %i.h, i64 %i.jq ; 2 uses
  %invariant.gep486 = getelementptr [8 x i8], ptr %i.h, i64 %i.jq ; 2 uses
  br i1 %min.iters.check621, label %scalar.ph620.preheader, label %vector.scevcheck556

vector.scevcheck556:                              ; preds = %.lr.ph379
  %i.jw = add i32 %i.jh, %i.ce
  %i.jx = icmp slt i32 %i.jw, %i.jh
  %i.jy = or i1 %i.jx, %i.cf
  br i1 %i.jy, label %scalar.ph620.preheader, label %vector.memcheck558

vector.memcheck558:                               ; preds = %vector.scevcheck556
  %bound0567 = icmp ult ptr %scevgep559.a, %scevgep564
  %bound1568 = icmp ult ptr %scevgep562, %scevgep560.a
  %found.conflict569 = and i1 %bound0567, %bound1568
  %conflict.rdx590.reass = or i1 %found.conflict569, %invariant.op720
  %bound0591.a = icmp ult ptr %scevgep562, %scevgep564
  %conflict.rdx593 = or i1 %conflict.rdx590.reass, %bound0591.a
  %bound0594 = icmp ult ptr %scevgep562, %scevgep565
  %bound1595 = icmp ult ptr %7, %scevgep564
  %found.conflict596 = and i1 %bound0594, %bound1595
  %conflict.rdx597 = or i1 %conflict.rdx593, %found.conflict596
  %bound0598 = icmp ult ptr %scevgep562, %scevgep566
  %bound1599 = icmp ult ptr %3, %scevgep564
  %found.conflict600 = and i1 %bound0598, %bound1599
  %conflict.rdx601 = or i1 %conflict.rdx597, %found.conflict600
  %bound0615 = icmp ult ptr %scevgep562, %scevgep560.a
  %bound1616 = icmp ult ptr %scevgep559.a, %scevgep564
  %found.conflict617 = and i1 %bound0615, %bound1616
  %conflict.rdx619 = or i1 %found.conflict617, %conflict.rdx601
  br i1 %conflict.rdx619, label %scalar.ph620.preheader, label %vector.body625

vector.body625:                                   ; preds = %vector.memcheck558, %vector.body625
  %index626 = phi i64 [ %index.next633, %vector.body625 ], [ 0, %vector.memcheck558 ] ; 4 uses
  %vec.ind = phi <4 x i64> [ %vec.ind.next, %vector.body625 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.memcheck558 ] ; 2 uses
  %i.jz = or disjoint i64 %index626, 1            ; 3 uses
  %i.ka = getelementptr [4 x i8], ptr %7, i64 %index626
  %wide.load627 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !8, !alias.scope !31
  %i.kb = zext <4 x i32> %wide.load627 to <4 x i64>
  %i.kc = icmp eq <4 x i64> %vec.ind, %i.kb       ; 5 uses
  %i.kd = xor <4 x i1> %i.kc, splat (i1 true)     ; 5 uses
  %i.ke = getelementptr [8 x i8], ptr %invariant.gep484, i64 %i.jz ; 2 uses
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ke, <4 x i1> %i.kd, <4 x double> poison), !tbaa !9, !alias.scope !34, !noalias !36
  %i.kf = trunc i64 %i.jz to i32
  %i.kg = add i32 %i.jv, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr [8 x i8], ptr %i.h, i64 %i.kh ; 4 uses
  %wide.masked.load628.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ki, <4 x i1> %i.kd, <4 x double> poison), !tbaa !9, !alias.scope !41, !noalias !42 ; 2 uses
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %wide.masked.load628.a, ptr align 8 %i.ke, <4 x i1> %i.kd), !tbaa !9, !alias.scope !34, !noalias !36
  %i.kj = getelementptr [8 x i8], ptr %3, i64 %index626 ; 2 uses
  %wide.masked.load629.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.kd, <4 x double> poison), !tbaa !9, !alias.scope !43
  %i.kk = fneg <4 x double> %wide.masked.load629.a
  %i.kl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kk, <4 x double> %wide.masked.load628.a, <4 x double> %wide.masked.load)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.kl, ptr align 8 %i.ki, <4 x i1> %i.kd), !tbaa !9, !alias.scope !41, !noalias !42
  %wide.masked.load630 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kj, <4 x i1> %i.kc, <4 x double> poison), !tbaa !9, !alias.scope !43
  %i.km = getelementptr [8 x i8], ptr %invariant.gep486, i64 %i.jz
  %wide.masked.load631 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.km, <4 x i1> %i.kc, <4 x double> poison), !tbaa !9, !alias.scope !44
  %wide.masked.load632 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ki, <4 x i1> %i.kc, <4 x double> poison), !tbaa !9, !alias.scope !45, !noalias !46
  %i.kn = fneg <4 x double> %wide.masked.load630
  %i.ko = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kn, <4 x double> %wide.masked.load631, <4 x double> %wide.masked.load632)
  tail call void @llvm.masked.store.v4f64.p0(<4 x double> %i.ko, ptr align 8 %i.ki, <4 x i1> %i.kc), !tbaa !9, !alias.scope !45, !noalias !46
  %index.next633 = add nuw i64 %index626, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.kp = icmp eq i64 %index.next633, %n.vec624
  br i1 %i.kp, label %middle.block634, label %vector.body625, !llvm.loop !47

middle.block634:                                  ; preds = %vector.body625
  br i1 %cmp.n635, label %._crit_edge380, label %scalar.ph620.preheader

scalar.ph620.preheader:                           ; preds = %vector.memcheck558, %vector.scevcheck556, %.lr.ph379, %middle.block634
  %indvars.iv420.ph = phi i64 [ 1, %vector.memcheck558 ], [ 1, %vector.scevcheck556 ], [ 1, %.lr.ph379 ], [ %i.ch, %middle.block634 ]
  br label %scalar.ph620

scalar.ph620:                                     ; preds = %scalar.ph620.preheader, %bb.j
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %bb.j ], [ %indvars.iv420.ph, %scalar.ph620.preheader ] ; 9 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv420
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !8
  %i.ks = zext i32 %i.kr to i64
  %i.kt = icmp eq i64 %indvars.iv420, %i.ks
  br i1 %i.kt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %scalar.ph620
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv420
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !9
  %gep487 = getelementptr [8 x i8], ptr %invariant.gep486, i64 %indvars.iv420
  %i.kw = load double, ptr %gep487, align 8, !tbaa !9
  %i.kx = trunc nuw nsw i64 %indvars.iv420 to i32
  %i.ky = add i32 %i.jv, %i.kx
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.kz ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !9
  %i.lc = fneg double %i.kv
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.lc, double %i.kw, double %i.lb)
  store double %i.ld, ptr %i.la, align 8, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %scalar.ph620
  %gep485 = getelementptr [8 x i8], ptr %invariant.gep484, i64 %indvars.iv420 ; 2 uses
  %i.le = load double, ptr %gep485, align 8, !tbaa !9
  %i.lf = trunc nuw nsw i64 %indvars.iv420 to i32
  %i.lg = add i32 %i.jv, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lh ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !9 ; 2 uses
  store double %i.lj, ptr %gep485, align 8, !tbaa !9
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv420
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !9
  %i.lm = fneg double %i.ll
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lj, double %i.le)
  store double %i.ln, ptr %i.li, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %._crit_edge380, label %scalar.ph620, !llvm.loop !48

._crit_edge380:                                   ; preds = %bb.j, %middle.block634
  %i.lo = load double, ptr %i.r, align 8, !tbaa !9
  %gep493 = getelementptr [8 x i8], ptr %invariant.gep492, i64 %i.jq ; 2 uses
  %i.lp = load double, ptr %gep493, align 8, !tbaa !9
  %i.lq = fdiv double %i.lp, %i.lo                ; 2 uses
  store double %i.lq, ptr %gep493, align 8, !tbaa !9
  %gep495 = getelementptr [8 x i8], ptr %invariant.gep494, i64 %i.jq ; 2 uses
  %i.lr = load double, ptr %gep495, align 8, !tbaa !9
  %i.ls = load double, ptr %i.u, align 8, !tbaa !9
  %i.lt = fneg double %i.ls
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lq, double %i.lr)
  %i.lv = load double, ptr %i.v, align 8, !tbaa !9
  %i.lw = fdiv double %i.lu, %i.lv
  store double %i.lw, ptr %gep495, align 8, !tbaa !9
  br i1 %i.x, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %._crit_edge380
  %i.lx = add i64 %i.jq, 1                        ; 2 uses
  %i.ly = add i64 %i.jq, 2                        ; 2 uses
  %invariant.gep488 = getelementptr [8 x i8], ptr %i.h, i64 %i.jq ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph383
  %i.lz = sub i35 %i.jo, %mul.result508
  %i.ma = icmp sgt i35 %i.lz, %i.jo
  %i.mb = sub i35 %i.jp, %mul.result508
  %i.mc = icmp sgt i35 %i.mb, %i.jp
  %i.md = or i1 %i.mc, %mul.overflow509
  %i.me = or i1 %i.ma, %i.md
  br i1 %i.me, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0526 = icmp ult ptr %scevgep, %scevgep517
  %bound1527 = icmp ult ptr %scevgep515, %scevgep511.a
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx534.reass = or i1 %found.conflict528, %invariant.op722
  %bound0535 = icmp ult ptr %scevgep, %scevgep523
  %bound1536 = icmp ult ptr %scevgep521, %scevgep511.a
  %found.conflict537 = and i1 %bound0535, %bound1536
  %conflict.rdx539 = or i1 %found.conflict537, %conflict.rdx534.reass
  %conflict.rdx544 = or i1 %found.conflict542, %conflict.rdx539
  br i1 %conflict.rdx544, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.mf = sub i64 %i.y, %index                    ; 6 uses
  %i.mg = getelementptr [8 x i8], ptr %invariant.gep488, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mh, align 8, !tbaa !9, !alias.scope !49, !noalias !52
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mf
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -24
  %wide.load545 = load <4 x double>, ptr %i.mj, align 8, !tbaa !9, !alias.scope !58
  %i.mk = add i64 %i.lx, %i.mf
  %i.ml = shl i64 %i.mk, 32
  %i.mm = ashr exact i64 %i.ml, 29
  %i.mn = getelementptr inbounds i8, ptr %i.h, i64 %i.mm
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -24
  %wide.load546.a = load <4 x double>, ptr %i.mo, align 8, !tbaa !9, !alias.scope !59
  %i.mp = fneg <4 x double> %wide.load545
  %i.mq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mp, <4 x double> %wide.load546.a, <4 x double> %wide.load)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mf
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -24
  %wide.load549 = load <4 x double>, ptr %i.ms, align 8, !tbaa !9, !alias.scope !60
  %i.mt = add i64 %i.ly, %i.mf
  %i.mu = shl i64 %i.mt, 32
  %i.mv = ashr exact i64 %i.mu, 29
  %i.mw = getelementptr inbounds i8, ptr %i.h, i64 %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 -24
  %wide.load550.a = load <4 x double>, ptr %i.mx, align 8, !tbaa !9, !alias.scope !61
  %i.my = fneg <4 x double> %wide.load549
  %i.mz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.my, <4 x double> %wide.load550.a, <4 x double> %i.mq)
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mf
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 -24
  %wide.load553 = load <4 x double>, ptr %i.nb, align 8, !tbaa !9, !alias.scope !62
  %i.nc = fdiv <4 x double> %i.mz, %wide.load553
  store <4 x double> %i.nc, ptr %i.mh, align 8, !tbaa !9, !alias.scope !49, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nd = icmp eq i64 %index.next, %n.vec
  br i1 %i.nd, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge384, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph383, %middle.block
  %indvars.iv425.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %vector.scevcheck ], [ %i.y, %.lr.ph383 ], [ %i.cm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %scalar.ph ], [ %indvars.iv425.ph, %scalar.ph.preheader ] ; 8 uses
  %gep489 = getelementptr [8 x i8], ptr %invariant.gep488, i64 %indvars.iv425 ; 2 uses
  %i.ne = load double, ptr %gep489, align 8, !tbaa !9
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv425
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !9
  %i.nh = add i64 %i.lx, %indvars.iv425
  %sext = shl i64 %i.nh, 32
  %i.ni = ashr exact i64 %sext, 29
  %i.nj = getelementptr inbounds i8, ptr %i.h, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !9
  %i.nl = fneg double %i.ng
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.nk, double %i.ne)
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv425
  %i.no = load double, ptr %i.nn, align 8, !tbaa !9
  %i.np = add i64 %i.ly, %indvars.iv425
  %sext450 = shl i64 %i.np, 32
  %i.nq = ashr exact i64 %sext450, 29
  %i.nr = getelementptr inbounds i8, ptr %i.h, i64 %i.nq
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !9
  %i.nt = fneg double %i.no
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.ns, double %i.nm)
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv425
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !9
  %i.nx = fdiv double %i.nu, %i.nw
  store double %i.nx, ptr %gep489, align 8, !tbaa !9
  %indvars.iv.next426 = add nsw i64 %indvars.iv425, -1
  %i.ny = icmp samesign ugt i64 %indvars.iv425, 1
  br i1 %i.ny, label %scalar.ph, label %._crit_edge384, !llvm.loop !64

._crit_edge384:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge380.thread, %._crit_edge380
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  %indvar.next = add i35 %indvar, 1
  br i1 %exitcond432.not, label %.loopexit, label %.preheader354, !llvm.loop !65

bb.k:                                             ; preds = %bb.c
  %i.nz = add i32 %i.i, 1                         ; 4 uses
  %i.oa = sext i32 %i.i to i64                    ; 2 uses
  br i1 %i.o, label %bb.l, label %.preheader361

.preheader361:                                    ; preds = %bb.k
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not349363 = icmp slt i32 %i.i, 3
  %i.oc = add nuw i32 %i.k, 1
  %wide.trip.count405 = zext i32 %i.oc to i64
  %wide.trip.count = zext i32 %i.nz to i64
  %i.od = or i64 %i.p, %i.g
  %i.oe = shl nsw i64 %i.od, 3
  %i.of = shl nsw i64 %i.p, 3
  %i.og = add nsw i64 %wide.trip.count, -3        ; 3 uses
  %i.oh = getelementptr i8, ptr %8, i64 %i.oe
  %i.oi = getelementptr i8, ptr %i.oh, i64 16
  %xtraiter = and i64 %i.og, 1
  %i.oj = icmp eq i32 %i.nz, 4
  %unroll_iter = and i64 %i.og, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod708 = trunc i64 %i.og to i1
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ok = load double, ptr %4, align 8, !tbaa !9
  %i.ol = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 8      ; 2 uses
  %i.on = load double, ptr %i.om, align 8, !tbaa !9
  %i.oo = fdiv double %i.on, %i.ok                ; 2 uses
  store double %i.oo, ptr %i.om, align 8, !tbaa !9
  br i1 %.not353.not386, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not350370 = icmp eq i32 %i.i, 2
  %i.oq = getelementptr i8, ptr %i.ol, i64 16     ; 2 uses
  %i.or = load double, ptr %i.oq, align 8, !tbaa !9
  %i.os = load double, ptr %5, align 8, !tbaa !9
  %i.ot = fneg double %i.os
  %i.ou = tail call double @llvm.fmuladd.f64(double %i.ot, double %i.oo, double %i.or)
  %i.ov = load double, ptr %i.op, align 8, !tbaa !9
  %i.ow = fdiv double %i.ou, %i.ov
  store double %i.ow, ptr %i.oq, align 8, !tbaa !9
  br i1 %.not350370, label %.lr.ph375.preheader, label %.lr.ph373.preheader

.lr.ph373.preheader:                              ; preds = %bb.m
  %wide.trip.count410 = zext i32 %i.nz to i64
  %invariant.gep472 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %invariant.gep476 = getelementptr [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.ox = or i64 %i.p, %i.g
  %i.oy = shl nsw i64 %i.ox, 3
  %i.oz = getelementptr i8, ptr %8, i64 %i.oy
  %scevgep698 = getelementptr i8, ptr %i.oz, i64 16
  %load_initial = load double, ptr %scevgep698, align 8 ; 2 uses
  %i.pa = add nsw i64 %wide.trip.count410, -3     ; 3 uses
  %xtraiter709 = and i64 %i.pa, 1
  %i.pb = icmp eq i32 %i.nz, 4
  br i1 %i.pb, label %.lr.ph373.epil.preheader, label %.lr.ph373.preheader.new

.lr.ph373.preheader.new:                          ; preds = %.lr.ph373.preheader
  %unroll_iter712 = and i64 %i.pa, -2
  br label %.lr.ph373

.lr.ph375.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph373
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %.lr.ph375.preheader, label %.lr.ph373.epil.preheader

.lr.ph373.epil.preheader:                         ; preds = %.lr.ph375.preheader.loopexit.unr-lcssa, %.lr.ph373.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph373.preheader ], [ %i.qv, %.lr.ph375.preheader.loopexit.unr-lcssa ]
  %indvars.iv407.epil.init = phi i64 [ 3, %.lr.ph373.preheader ], [ %indvars.iv.next408.1, %.lr.ph375.preheader.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod711 = trunc i64 %i.pa to i1
  tail call void @llvm.assume(i1 %lcmp.mod711)
  %gep473.epil = getelementptr [8 x i8], ptr %invariant.gep472, i64 %indvars.iv407.epil.init ; 2 uses
  %i.pc = load double, ptr %gep473.epil, align 8, !tbaa !9
  %i.pd = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv407.epil.init
  %i.pe = getelementptr i8, ptr %i.pd, i64 -8
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !9
  %i.pg = fneg double %i.pf
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.pg, double %store_forwarded.epil.init, double %i.pc)
  %i.pi = add nsw i64 %indvars.iv407.epil.init, -2 ; 2 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.pi
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !9
  %gep477.epil = getelementptr [8 x i8], ptr %invariant.gep476, i64 %i.pi
  %i.pl = load double, ptr %gep477.epil, align 8, !tbaa !9
  %i.pm = fneg double %i.pk
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pl, double %i.ph)
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv407.epil.init
  %i.pp = load double, ptr %i.po, align 8, !tbaa !9
  %i.pq = fdiv double %i.pn, %i.pp
  store double %i.pq, ptr %gep473.epil, align 8, !tbaa !9
  br label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %.lr.ph373.epil.preheader, %.lr.ph375.preheader.loopexit.unr-lcssa, %bb.m
  %invariant.gep478 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %invariant.gep480 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  %invariant.gep482 = getelementptr [8 x i8], ptr %i.h, i64 %i.p
  br label %.lr.ph375

.lr.ph373:                                        ; preds = %.lr.ph373, %.lr.ph373.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph373.preheader.new ], [ %i.qv, %.lr.ph373 ]
end_hunk_0
