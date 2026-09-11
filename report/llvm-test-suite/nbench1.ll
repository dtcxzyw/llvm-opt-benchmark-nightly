Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nbench1?download=true
inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoLUIteration:bb.a

.preheader60.i.i:                                 ; preds = %ludcmp.exit.i
  %i.no = sext i32 %.04966.i.i to i64             ; 5 uses
  %i.np = icmp sgt i64 %indvars.iv75.i.i, %i.no
  br i1 %i.np, label %.lr.ph.i7.i, label %.loopexit61.i.i

.lr.ph.i7.i:                                      ; preds = %.preheader60.i.i
  %i.nq = getelementptr inbounds nuw [808 x i8], ptr %i.fl, i64 %indvars.iv75.i.i ; 5 uses
  %i.nr = sub i64 %indvars.iv75.i.i, %i.no
  %xtraiter116 = and i64 %i.nr, 3                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i7.i, %.prol.preheader
  %indvars.iv.i8.i.prol = phi i64 [ %indvars.iv.next.i9.i.prol, %.prol.preheader ], [ %i.no, %.lr.ph.i7.i ] ; 3 uses
  %.063.i.i.prol = phi double [ %i.nx, %.prol.preheader ], [ %i.nl, %.lr.ph.i7.i ]
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.prol.preheader ], [ 0, %.lr.ph.i7.i ]
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv.i8.i.prol
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !33
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %indvars.iv.i8.i.prol
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !33
  %i.nw = fneg double %i.nt
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.nv, double %.063.i.i.prol) ; 3 uses
  %indvars.iv.next.i9.i.prol = add nsw i64 %indvars.iv.i8.i.prol, 1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !188

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i7.i
  %.lcssa93.unr = phi double [ poison, %.lr.ph.i7.i ], [ %i.nx, %.prol.preheader ]
  %indvars.iv.i8.i.unr = phi i64 [ %i.no, %.lr.ph.i7.i ], [ %indvars.iv.next.i9.i.prol, %.prol.preheader ]
  %.063.i.i.unr = phi double [ %i.nl, %.lr.ph.i7.i ], [ %i.nx, %.prol.preheader ]
  %i.ny = sub i64 %i.no, %indvars.iv75.i.i
  %i.nz = icmp ugt i64 %i.ny, -4
  br i1 %i.nz, label %.loopexit61.i.i, label %.lr.ph.i7.i.new

.lr.ph.i7.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i7.i.new
  %indvars.iv.i8.i = phi i64 [ %indvars.iv.next.i9.i.3, %.lr.ph.i7.i.new ], [ %indvars.iv.i8.i.unr, %.prol.loopexit ] ; 6 uses
  %.063.i.i = phi double [ %i.ox, %.lr.ph.i7.i.new ], [ %.063.i.i.unr, %.prol.loopexit ]
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv.i8.i
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !33
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %indvars.iv.i8.i
  %i.od = load double, ptr %i.oc, align 8, !tbaa !33
  %i.oe = fneg double %i.ob
  %i.of = tail call double @llvm.fmuladd.f64(double %i.oe, double %i.od, double %.063.i.i)
  %indvars.iv.next.i9.i = add nsw i64 %indvars.iv.i8.i, 1 ; 2 uses
  %i.og = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i9.i
  %i.oh = load double, ptr %i.og, align 8, !tbaa !33
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i9.i
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !33
  %i.ok = fneg double %i.oh
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.oj, double %i.of)
  %indvars.iv.next.i9.i.1 = add nsw i64 %indvars.iv.i8.i, 2 ; 2 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i9.i.1
  %i.on = load double, ptr %i.om, align 8, !tbaa !33
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i9.i.1
  %i.op = load double, ptr %i.oo, align 8, !tbaa !33
  %i.oq = fneg double %i.on
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.op, double %i.ol)
  %indvars.iv.next.i9.i.2 = add nsw i64 %indvars.iv.i8.i, 3 ; 2 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i9.i.2
  %i.ot = load double, ptr %i.os, align 8, !tbaa !33
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i9.i.2
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !33
  %i.ow = fneg double %i.ot
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ow, double %i.ov, double %i.or) ; 2 uses
  %indvars.iv.next.i9.i.3 = add nsw i64 %indvars.iv.i8.i, 4 ; 2 uses
  %exitcond.not.i10.i.3 = icmp eq i64 %indvars.iv.next.i9.i.3, %indvars.iv75.i.i
  br i1 %exitcond.not.i10.i.3, label %.loopexit61.i.i, label %.lr.ph.i7.i.new, !llvm.loop !189

bb.l:                                             ; preds = %ludcmp.exit.i
  %i.oy = fcmp une double %i.nl, 0.000000e+00
  %i.oz = trunc nuw nsw i64 %indvars.iv75.i.i to i32
  %spec.select.i.i = select i1 %i.oy, i32 %i.oz, i32 -1
  br label %.loopexit61.i.i

.loopexit61.i.i:                                  ; preds = %.prol.loopexit, %.lr.ph.i7.i.new, %bb.l, %.preheader60.i.i
  %.150.i.i = phi i32 [ %spec.select.i.i, %bb.l ], [ %.04966.i.i, %.preheader60.i.i ], [ %.04966.i.i, %.lr.ph.i7.i.new ], [ %.04966.i.i, %.prol.loopexit ]
  %.1.i.i = phi double [ %i.nl, %bb.l ], [ %i.nl, %.preheader60.i.i ], [ %.lcssa93.unr, %.prol.loopexit ], [ %i.ox, %.lr.ph.i7.i.new ]
  store double %.1.i.i, ptr %i.nm, align 8, !tbaa !33
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond78.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, 101
  br i1 %exitcond78.not.i.i, label %.preheader59.i.i, label %ludcmp.exit.i, !llvm.loop !190

.preheader59.i.i:                                 ; preds = %.loopexit61.i.i, %.loopexit.i5.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i5.i ], [ 0, %.loopexit61.i.i ] ; 3 uses
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.next80.i.i, %.loopexit.i5.i ], [ 100, %.loopexit61.i.i ] ; 9 uses
  %i.pa = add i64 %indvar, -1
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv79.i.i ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !33 ; 3 uses
  %i.pd = icmp samesign ult i64 %indvars.iv79.i.i, 100
  br i1 %i.pd, label %.lr.ph69.i.i, label %.loopexit.i5.i

.lr.ph69.i.i:                                     ; preds = %.preheader59.i.i
  %i.pe = getelementptr inbounds nuw [808 x i8], ptr %i.fl, i64 %indvars.iv79.i.i ; 5 uses
  %xtraiter121 = and i64 %indvar, 3               ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.prol.loopexit120, label %.prol.preheader119

.prol.preheader119:                               ; preds = %.lr.ph69.i.i, %.prol.preheader119
  %indvars.iv81.i.i.prol = phi i64 [ %indvars.iv.next82.i.i.prol, %.prol.preheader119 ], [ %indvars.iv79.i.i, %.lr.ph69.i.i ]
  %.268.i.i.prol = phi double [ %i.pk, %.prol.preheader119 ], [ %i.pc, %.lr.ph69.i.i ]
  %prol.iter123 = phi i64 [ %prol.iter123.next, %.prol.preheader119 ], [ 0, %.lr.ph69.i.i ]
  %indvars.iv.next82.i.i.prol = add nuw nsw i64 %indvars.iv81.i.i.prol, 1 ; 4 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next82.i.i.prol
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !33
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82.i.i.prol
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !33
  %i.pj = fneg double %i.pg
  %i.pk = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.pi, double %.268.i.i.prol) ; 3 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %.prol.loopexit120, label %.prol.preheader119, !llvm.loop !191

.prol.loopexit120:                                ; preds = %.prol.preheader119, %.lr.ph69.i.i
  %.lcssa94.unr = phi double [ poison, %.lr.ph69.i.i ], [ %i.pk, %.prol.preheader119 ]
  %indvars.iv81.i.i.unr = phi i64 [ %indvars.iv79.i.i, %.lr.ph69.i.i ], [ %indvars.iv.next82.i.i.prol, %.prol.preheader119 ]
  %.268.i.i.unr = phi double [ %i.pc, %.lr.ph69.i.i ], [ %i.pk, %.prol.preheader119 ]
  %i.pl = icmp ult i64 %i.pa, 3
  br i1 %i.pl, label %.loopexit.i5.i, label %.lr.ph69.i.i.new

.lr.ph69.i.i.new:                                 ; preds = %.prol.loopexit120, %.lr.ph69.i.i.new
  %indvars.iv81.i.i = phi i64 [ %indvars.iv.next82.i.i.3, %.lr.ph69.i.i.new ], [ %indvars.iv81.i.i.unr, %.prol.loopexit120 ] ; 4 uses
  %.268.i.i = phi double [ %i.qj, %.lr.ph69.i.i.new ], [ %.268.i.i.unr, %.prol.loopexit120 ]
  %indvars.iv.next82.i.i = add nuw nsw i64 %indvars.iv81.i.i, 1 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next82.i.i
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !33
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82.i.i
  %i.pp = load double, ptr %i.po, align 8, !tbaa !33
  %i.pq = fneg double %i.pn
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pq, double %i.pp, double %.268.i.i)
  %indvars.iv.next82.i.i.1 = add nuw nsw i64 %indvars.iv81.i.i, 2 ; 2 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next82.i.i.1
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !33
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82.i.i.1
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !33
  %i.pw = fneg double %i.pt
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pw, double %i.pv, double %i.pr)
  %indvars.iv.next82.i.i.2 = add nuw nsw i64 %indvars.iv81.i.i, 3 ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next82.i.i.2
  %i.pz = load double, ptr %i.py, align 8, !tbaa !33
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82.i.i.2
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !33
  %i.qc = fneg double %i.pz
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.qb, double %i.px)
  %indvars.iv.next82.i.i.3 = add nuw nsw i64 %indvars.iv81.i.i, 4 ; 4 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next82.i.i.3
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !33
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82.i.i.3
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !33
  %i.qi = fneg double %i.qf
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.qi, double %i.qh, double %i.qd) ; 2 uses
  %exitcond84.not.i.i.3 = icmp eq i64 %indvars.iv.next82.i.i.3, 100
  br i1 %exitcond84.not.i.i.3, label %.loopexit.i5.i, label %.lr.ph69.i.i.new, !llvm.loop !192

.loopexit.i5.i:                                   ; preds = %.prol.loopexit120, %.lr.ph69.i.i.new, %.preheader59.i.i
  %.3.i.i = phi double [ %i.pc, %.preheader59.i.i ], [ %.lcssa94.unr, %.prol.loopexit120 ], [ %i.qj, %.lr.ph69.i.i.new ]
  %i.qk = getelementptr inbounds nuw [808 x i8], ptr %i.fl, i64 %indvars.iv79.i.i
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv79.i.i
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !33
  %i.qn = fdiv double %.3.i.i, %i.qm
  store double %i.qn, ptr %i.pb, align 8, !tbaa !33
  %indvars.iv.next80.i.i = add nsw i64 %indvars.iv79.i.i, -1
  %.not.i6.i = icmp eq i64 %indvars.iv79.i.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i6.i, label %lusolve.exit, label %.preheader59.i.i, !llvm.loop !193

lusolve.exit:                                     ; preds = %bb.d, %.loopexit.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.qo = add nuw i64 %.240, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.qo, %4
  br i1 %exitcond51.not, label %._crit_edge43, label %.lr.ph42, !llvm.loop !194

._crit_edge43:                                    ; preds = %lusolve.exit, %._crit_edge.thread
  %i.qp = phi i64 [ %i.be, %._crit_edge.thread ], [ %i.fi, %lusolve.exit ]
  %i.qq = tail call i64 @StopStopwatch(i64 noundef %i.qp) #11
  ret i64 %i.qq
}

declare i64 @StartStopwatch(...) local_unnamed_addr #2

declare i64 @StopStopwatch(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @strsift(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = shl nuw i64 %3, 1                        ; 2 uses
  %.not74 = icmp ugt i64 %i.b, %4
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i64 %2, -1                           ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = add i64 %4, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.ej, %bb.j ] ; 6 uses
  %.05075 = phi i64 [ %3, %.lr.ph ], [ %.1, %bb.j ] ; 4 uses
  %i.h = icmp ult i64 %i.g, %4
  br i1 %i.h, label %bb.c, label %._crit_edge78

._crit_edge78:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %1, i64 %.pre
  %.pre80 = load i8, ptr %.phi.trans.insert79, align 1, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %5 = or disjoint i64 %i.g, 1                    ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21    ; 3 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.m = load i64, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21    ; 3 uses
  %i.p = icmp ugt i8 %i.l, %i.o
  %spec.select.i = call i8 @llvm.umin.i8(i8 %i.l, i8 %i.o)
  %i.q = zext i8 %spec.select.i to i64
  %i.r = call i32 @strncmp(ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.n, i64 noundef %i.q) #12 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %..i = zext i1 %i.p to i32
  %.lobit.i = lshr i32 %i.r, 31
  %.025.i = select i1 %i.s, i32 %..i, i32 %.lobit.i
  %.not53 = icmp eq i32 %.025.i, 0                ; 3 uses
  %spec.select = select i1 %.not53, i64 %i.g, i64 %5
  %7 = select i1 %.not53, i64 %i.j, i64 %i.m
  %8 = select i1 %.not53, i8 %i.l, i8 %i.o
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge78, %bb.c
  %9 = phi i8 [ %.pre80, %._crit_edge78 ], [ %8, %bb.c ] ; 3 uses
  %10 = phi i64 [ %.pre, %._crit_edge78 ], [ %7, %bb.c ]
  %.0 = phi i64 [ %i.g, %._crit_edge78 ], [ %spec.select, %bb.c ] ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05075 ; 7 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21    ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %10 ; 2 uses
  %i.z = icmp ugt i8 %i.w, %9
  %spec.select.i55 = call i8 @llvm.umin.i8(i8 %i.w, i8 %9)
  %i.aa = zext i8 %spec.select.i55 to i64
  %i.ab = call i32 @strncmp(ptr noundef nonnull readonly %i.v, ptr noundef nonnull readonly %i.y, i64 noundef %i.aa) #12 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %..i56 = zext i1 %i.z to i32
  %.lobit.i57 = lshr i32 %i.ab, 31
  %.025.i58 = select i1 %i.ac, i32 %..i56, i32 %.lobit.i57
  %.not54 = icmp eq i32 %.025.i58, 0
  br i1 %.not54, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = zext i8 %9 to i64
  %i.ae = add nuw nsw i64 %i.ad, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %i.y, i64 noundef %i.ae) #11
  %i.af = load i64, ptr %i.t, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21  ; 5 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = load i64, ptr %i.x, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i32
  %i.an = sub nsw i32 %i.ai, %i.am                ; 2 uses
  %i.ao = call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = icmp eq i64 %.0, %i.c
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 %i.ah, ptr %i.ak, align 1, !tbaa !21
  %.pre81 = zext i8 %i.ah to i64
  br label %stradjust.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15 ; 2 uses
  %i.aw = add i64 %i.aq, 1
  %i.ax = add i64 %i.aw, %i.at
  %i.ay = sub i64 %i.ax, %i.av
  %i.az = zext i8 %i.ah to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  call void @MoveMemory(ptr noundef nonnull %i.bb, ptr noundef %i.bc, i64 noundef %i.ay) #11
  %.045.i = add i64 %.0, 1                        ; 7 uses
  %i.bd = icmp ult i64 %.045.i, %2
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.be = icmp slt i32 %i.an, 0
  %i.bf = zext nneg i32 %i.ao to i64              ; 4 uses
  %i.bg = xor i64 %.0, -1
  %i.bh = add i64 %2, %i.bg                       ; 5 uses
  %min.iters.check111 = icmp ult i64 %i.bh, 4     ; 2 uses
  br i1 %i.be, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  br i1 %min.iters.check111, label %.lr.ph.split.i.preheader142, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph.split.i.preheader
  %n.vec127 = and i64 %i.bh, -4                   ; 3 uses
  %i.bi = add i64 %.045.i, %n.vec127
  %broadcast.splatinsert128 = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat129 = shufflevector <2 x i64> %broadcast.splatinsert128, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.045.i
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph126
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next134, %vector.body130 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index131 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load132 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !15
  %wide.load133 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !15
  %i.bm = add <2 x i64> %wide.load132, %broadcast.splat129
  %i.bn = add <2 x i64> %wide.load133, %broadcast.splat129
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !15
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !15
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.bo, label %middle.block135, label %vector.body130, !llvm.loop !197

middle.block135:                                  ; preds = %vector.body130
  %cmp.n136 = icmp eq i64 %i.bh, %n.vec127
  br i1 %cmp.n136, label %._crit_edge.i, label %.lr.ph.split.i.preheader142

.lr.ph.split.i.preheader142:                      ; preds = %.lr.ph.split.i.preheader, %middle.block135
  %.046.i.ph = phi i64 [ %.045.i, %.lr.ph.split.i.preheader ], [ %i.bi, %middle.block135 ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  br i1 %min.iters.check111, label %.lr.ph.split.us.i.preheader141, label %vector.ph112

vector.ph112:                                     ; preds = %.lr.ph.split.us.i.preheader
  %n.vec113 = and i64 %i.bh, -4                   ; 3 uses
  %i.bp = add i64 %.045.i, %n.vec113
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.045.i
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph112
  %index117 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body116 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index117 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load118 = load <2 x i64>, ptr %i.br, align 8, !tbaa !15
  %wide.load119 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !15
  %i.bt = sub <2 x i64> %wide.load118, %broadcast.splat115
  %i.bu = sub <2 x i64> %wide.load119, %broadcast.splat115
  store <2 x i64> %i.bt, ptr %i.br, align 8, !tbaa !15
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !tbaa !15
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.bv, label %middle.block121, label %vector.body116, !llvm.loop !198

middle.block121:                                  ; preds = %vector.body116
  %cmp.n122 = icmp eq i64 %i.bh, %n.vec113
  br i1 %cmp.n122, label %._crit_edge.i, label %.lr.ph.split.us.i.preheader141

.lr.ph.split.us.i.preheader141:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block121
  %.046.us.i.ph = phi i64 [ %.045.i, %.lr.ph.split.us.i.preheader ], [ %i.bp, %middle.block121 ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader141, %.lr.ph.split.us.i
  %.046.us.i = phi i64 [ %.0.us.i, %.lr.ph.split.us.i ], [ %.046.us.i.ph, %.lr.ph.split.us.i.preheader141 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.us.i ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.by = sub i64 %i.bx, %i.bf
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !15
  %.0.us.i = add nuw i64 %.046.us.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i64 %.0.us.i, %2
  br i1 %exitcond48.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !199

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader142, %.lr.ph.split.i
  %.046.i = phi i64 [ %.0.i, %.lr.ph.split.i ], [ %.046.i.ph, %.lr.ph.split.i.preheader142 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !15
  %i.cb = add i64 %i.ca, %i.bf
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !15
  %.0.i = add nuw i64 %.046.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !200

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block135, %middle.block121, %bb.g
  %i.cc = load i64, ptr %i.x, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  store i8 %i.ah, ptr %i.cd, align 1, !tbaa !21
  br label %stradjust.exit

stradjust.exit:                                   ; preds = %bb.f, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre81, %bb.f ], [ %i.az, %._crit_edge.i ]
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cg = load i64, ptr %i.t, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.ci = add nuw nsw i64 %.pre-phi, 1
  call void @MoveMemory(ptr noundef %i.cf, ptr noundef %i.ch, i64 noundef %i.ci) #11
  %i.cj = load i8, ptr %i.a, align 16, !tbaa !21  ; 5 uses
  %i.ck = zext i8 %i.cj to i32
  %i.cl = load i64, ptr %i.t, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.co = zext i8 %i.cn to i32
  %i.cp = sub nsw i32 %i.ck, %i.co                ; 2 uses
  %i.cq = call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = icmp eq i64 %.05075, %i.c
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stradjust.exit
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !21
  %.pre82 = zext i8 %i.cj to i64
  br label %stradjust.exit70

bb.i:                                             ; preds = %stradjust.exit
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !21
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !15 ; 2 uses
  %i.cy = add i64 %i.cs, 1
  %i.cz = add i64 %i.cy, %i.cv
  %i.da = sub i64 %i.cz, %i.cx
  %i.db = zext i8 %i.cj to i64                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx
  call void @MoveMemory(ptr noundef nonnull %i.dd, ptr noundef %i.de, i64 noundef %i.da) #11
  %.045.i59 = add i64 %.05075, 1                  ; 7 uses
  %i.df = icmp ult i64 %.045.i59, %2
  br i1 %i.df, label %.lr.ph.i61, label %._crit_edge.i60

.lr.ph.i61:                                       ; preds = %bb.i
  %i.dg = icmp slt i32 %i.cp, 0
  %i.dh = zext nneg i32 %i.cq to i64              ; 4 uses
  %i.di = xor i64 %.05075, -1
  %i.dj = add i64 %2, %i.di                       ; 5 uses
  %min.iters.check = icmp ult i64 %i.dj, 4        ; 2 uses
  br i1 %i.dg, label %.lr.ph.split.us.i66.preheader, label %.lr.ph.split.i62.preheader

.lr.ph.split.i62.preheader:                       ; preds = %.lr.ph.i61
  br i1 %min.iters.check, label %.lr.ph.split.i62.preheader139, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph.split.i62.preheader
  %n.vec99 = and i64 %i.dj, -4                    ; 3 uses
  %i.dk = add i64 %.045.i59, %n.vec99
  %broadcast.splatinsert100 = insertelement <2 x i64> poison, i64 %i.dh, i64 0
  %broadcast.splat101 = shufflevector <2 x i64> %broadcast.splatinsert100, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.045.i59
  br label %vector.body102
end_hunk_0
