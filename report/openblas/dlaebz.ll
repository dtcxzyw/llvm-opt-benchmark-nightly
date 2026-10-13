Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaebz?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dlaebz_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readnone captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef captures(none) %12, ptr nofree noundef captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15, ptr nofree noundef captures(none) %16, ptr nofree noundef writeonly captures(none) %17, ptr nofree noundef captures(none) %18, ptr nofree noundef captures(none) initializes((0, 4)) %19) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %14 to i64                 ; 2 uses
  %i.b = ptrtoaddr ptr %13 to i64                 ; 2 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !36     ; 10 uses
  %narrow = xor i32 %i.c, -1
  %i.d = sext i32 %narrow to i64                  ; 8 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %16, i64 %i.d ; 27 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %13, i64 %i.d ; 30 uses
  %i.g = getelementptr inbounds i8, ptr %9, i64 -8 ; 10 uses
  %i.h = getelementptr inbounds i8, ptr %11, i64 -8 ; 10 uses
  %i.i = getelementptr inbounds i8, ptr %12, i64 -4 ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %14, i64 -8 ; 20 uses
  %i.k = getelementptr inbounds i8, ptr %17, i64 -8
  %i.l = getelementptr inbounds i8, ptr %18, i64 -4 ; 5 uses
  store i32 0, ptr %19, align 4, !tbaa !36
  %i.m = load i32, ptr %0, align 4, !tbaa !36     ; 3 uses
  %i.n = add i32 %i.m, -4
  %or.cond = icmp ult i32 %i.n, -3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %19, align 4, !tbaa !36
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %15, align 4, !tbaa !36
  %i.p = load i32, ptr %4, align 4, !tbaa !36     ; 2 uses
  %.not594669 = icmp slt i32 %i.p, 1
  br i1 %.not594669, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.q = load double, ptr %9, align 8, !tbaa !38  ; 2 uses
  %i.r = load double, ptr %8, align 8, !tbaa !38  ; 9 uses
  %i.s = fneg double %i.r                         ; 8 uses
  %i.t = shl i32 %i.c, 1
  %i.u = sext i32 %i.c to i64                     ; 2 uses
  %i.v = sext i32 %i.t to i64
  %i.w = add nuw i32 %i.p, 1
  %wide.trip.count729 = zext i32 %i.w to i64
  %i.x = shl nsw i64 %i.u, 1
  %invariant.gep770 = getelementptr [4 x i8], ptr %i.e, i64 %i.v
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge667.1
  %indvars.iv726 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next727, %._crit_edge667.1 ] ; 4 uses
  %i.y = add nsw i64 %indvars.iv726, %i.u         ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !38 ; 4 uses
  %i.ab = fsub double %i.q, %i.aa                 ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp olt double %i.ac, %i.r
  %spec.select = select i1 %i.ad, double %i.s, double %i.ab ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.y ; 5 uses
  %i.af = fcmp ole double %spec.select, 0.000000e+00
  %storemerge = zext i1 %i.af to i32              ; 3 uses
  store i32 %storemerge, ptr %i.ae, align 4, !tbaa !36
  %i.ag = load i32, ptr %2, align 4, !tbaa !36    ; 2 uses
  %.not595662 = icmp slt i32 %i.ag, 2
  br i1 %.not595662, label %._crit_edge667, label %.lr.ph666.preheader

.lr.ph666.preheader:                              ; preds = %.preheader
  %i.ah = add nuw i32 %i.ag, 1                    ; 3 uses
  %wide.trip.count720 = zext i32 %i.ah to i64     ; 2 uses
  %xtraiter954 = and i64 %wide.trip.count720, 1
  %i.ai = icmp eq i32 %i.ah, 3
  br i1 %i.ai, label %.lr.ph666.epil.preheader, label %.lr.ph666.preheader.new

.lr.ph666.preheader.new:                          ; preds = %.lr.ph666.preheader
  %i.aj = and i64 %wide.trip.count720, 4294967294
  %i.ak = add nsw i64 %i.aj, -4
  br label %.lr.ph666

.lr.ph666:                                        ; preds = %bb.g, %.lr.ph666.preheader.new
  %i.al = phi i32 [ %storemerge, %.lr.ph666.preheader.new ], [ %i.bl, %bb.g ] ; 2 uses
  %indvars.iv717 = phi i64 [ 2, %.lr.ph666.preheader.new ], [ %indvars.iv.next718.1966, %bb.g ] ; 5 uses
  %.1530664 = phi double [ %spec.select, %.lr.ph666.preheader.new ], [ %spec.select596.1964, %bb.g ]
  %niter961 = phi i64 [ 0, %.lr.ph666.preheader.new ], [ %niter961.next.1, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717
  %i.an = load double, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !38
  %i.ar = fdiv double %i.aq, %.1530664
  %i.as = fsub double %i.an, %i.ar
  %i.at = fsub double %i.as, %i.aa                ; 2 uses
  %i.au = tail call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp olt double %i.au, %i.r
  %spec.select596 = select i1 %i.av, double %i.s, double %i.at ; 2 uses
  %i.aw = fcmp ugt double %spec.select596, 0.000000e+00
  br i1 %i.aw, label %.lr.ph666.1965, label %bb.e

bb.e:                                             ; preds = %.lr.ph666
  %i.ax = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.ae, align 4, !tbaa !36
  br label %.lr.ph666.1965

.lr.ph666.1965:                                   ; preds = %.lr.ph666, %bb.e
  %i.ay = phi i32 [ %i.al, %.lr.ph666 ], [ %i.ax, %bb.e ] ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %9, i64 %indvars.iv717
  %i.ba = load double, ptr %i.az, align 8, !tbaa !38
  %i.bb = getelementptr [8 x i8], ptr %11, i64 %indvars.iv717
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !38
  %i.be = fdiv double %i.bd, %spec.select596
  %i.bf = fsub double %i.ba, %i.be
  %i.bg = fsub double %i.bf, %i.aa                ; 2 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp olt double %i.bh, %i.r
  %spec.select596.1964 = select i1 %i.bi, double %i.s, double %i.bg ; 3 uses
  %i.bj = fcmp ugt double %spec.select596.1964, 0.000000e+00
  br i1 %i.bj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph666.1965
  %i.bk = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph666.1965
  %i.bl = phi i32 [ %i.ay, %.lr.ph666.1965 ], [ %i.bk, %bb.f ] ; 2 uses
  %indvars.iv.next718.1966 = add nuw nsw i64 %indvars.iv717, 2 ; 2 uses
  %niter961.next.1 = add i64 %niter961, 2
  %niter961.ncmp.1 = icmp eq i64 %niter961, %i.ak
  br i1 %niter961.ncmp.1, label %._crit_edge667.loopexit.unr-lcssa, label %.lr.ph666, !llvm.loop !8

._crit_edge667.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod958.not = icmp eq i64 %xtraiter954, 0
  br i1 %lcmp.mod958.not, label %._crit_edge667, label %.lr.ph666.epil.preheader

.lr.ph666.epil.preheader:                         ; preds = %._crit_edge667.loopexit.unr-lcssa, %.lr.ph666.preheader
  %.epil.init957 = phi i32 [ %storemerge, %.lr.ph666.preheader ], [ %i.bl, %._crit_edge667.loopexit.unr-lcssa ]
  %indvars.iv717.epil.init = phi i64 [ 2, %.lr.ph666.preheader ], [ %indvars.iv.next718.1966, %._crit_edge667.loopexit.unr-lcssa ] ; 2 uses
  %.1530664.epil.init = phi double [ %spec.select, %.lr.ph666.preheader ], [ %spec.select596.1964, %._crit_edge667.loopexit.unr-lcssa ]
  %lcmp.mod959 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod959)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717.epil.init
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !38
  %i.bo = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717.epil.init
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !38
  %i.br = fdiv double %i.bq, %.1530664.epil.init
  %i.bs = fsub double %i.bn, %i.br
  %i.bt = fsub double %i.bs, %i.aa                ; 2 uses
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp olt double %i.bu, %i.r
  %spec.select596.epil = select i1 %i.bv, double %i.s, double %i.bt
  %i.bw = fcmp ugt double %spec.select596.epil, 0.000000e+00
  br i1 %i.bw, label %._crit_edge667, label %bb.h

bb.h:                                             ; preds = %.lr.ph666.epil.preheader
  %i.bx = add nsw i32 %.epil.init957, 1
  store i32 %i.bx, ptr %i.ae, align 4, !tbaa !36
  br label %._crit_edge667

._crit_edge667:                                   ; preds = %._crit_edge667.loopexit.unr-lcssa, %bb.h, %.lr.ph666.epil.preheader, %.preheader
  %i.by = add nsw i64 %i.x, %indvars.iv726        ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !38 ; 4 uses
  %i.cb = fsub double %i.q, %i.ca                 ; 2 uses
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp olt double %i.cc, %i.r
  %spec.select.1 = select i1 %i.cd, double %i.s, double %i.cb ; 3 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.by ; 4 uses
  %i.cf = fcmp ole double %spec.select.1, 0.000000e+00
  %storemerge.1 = zext i1 %i.cf to i32            ; 3 uses
  store i32 %storemerge.1, ptr %i.ce, align 4, !tbaa !36
  %i.cg = load i32, ptr %2, align 4, !tbaa !36    ; 2 uses
  %.not595662.1 = icmp slt i32 %i.cg, 2
  br i1 %.not595662.1, label %._crit_edge667.1, label %.lr.ph666.preheader.1

.lr.ph666.preheader.1:                            ; preds = %._crit_edge667
  %i.ch = add nuw i32 %i.cg, 1                    ; 3 uses
  %wide.trip.count720.1 = zext i32 %i.ch to i64   ; 2 uses
  %xtraiter967 = and i64 %wide.trip.count720.1, 1
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %.lr.ph666.1.epil.preheader, label %.lr.ph666.preheader.1.new

.lr.ph666.preheader.1.new:                        ; preds = %.lr.ph666.preheader.1
  %i.cj = and i64 %wide.trip.count720.1, 4294967294
  %i.ck = add nsw i64 %i.cj, -4
  br label %.lr.ph666.1

.lr.ph666.1:                                      ; preds = %bb.k, %.lr.ph666.preheader.1.new
  %i.cl = phi i32 [ %storemerge.1, %.lr.ph666.preheader.1.new ], [ %i.dl, %bb.k ] ; 2 uses
  %indvars.iv717.1 = phi i64 [ 2, %.lr.ph666.preheader.1.new ], [ %indvars.iv.next718.1.1, %bb.k ] ; 5 uses
  %.1530664.1 = phi double [ %spec.select.1, %.lr.ph666.preheader.1.new ], [ %spec.select596.1.1, %bb.k ]
  %niter974 = phi i64 [ 0, %.lr.ph666.preheader.1.new ], [ %niter974.next.1, %bb.k ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717.1
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !38
  %i.co = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717.1
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !38
  %i.cr = fdiv double %i.cq, %.1530664.1
  %i.cs = fsub double %i.cn, %i.cr
  %i.ct = fsub double %i.cs, %i.ca                ; 2 uses
  %i.cu = tail call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp olt double %i.cu, %i.r
  %spec.select596.1 = select i1 %i.cv, double %i.s, double %i.ct ; 2 uses
  %i.cw = fcmp ugt double %spec.select596.1, 0.000000e+00
  br i1 %i.cw, label %.lr.ph666.1.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph666.1
  %i.cx = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.ce, align 4, !tbaa !36
  br label %.lr.ph666.1.1

.lr.ph666.1.1:                                    ; preds = %bb.i, %.lr.ph666.1
  %i.cy = phi i32 [ %i.cx, %bb.i ], [ %i.cl, %.lr.ph666.1 ] ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %9, i64 %indvars.iv717.1
  %i.da = load double, ptr %i.cz, align 8, !tbaa !38
  %i.db = getelementptr [8 x i8], ptr %11, i64 %indvars.iv717.1
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !38
  %i.de = fdiv double %i.dd, %spec.select596.1
  %i.df = fsub double %i.da, %i.de
  %i.dg = fsub double %i.df, %i.ca                ; 2 uses
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp olt double %i.dh, %i.r
  %spec.select596.1.1 = select i1 %i.di, double %i.s, double %i.dg ; 3 uses
  %i.dj = fcmp ugt double %spec.select596.1.1, 0.000000e+00
  br i1 %i.dj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph666.1.1
  %i.dk = add nsw i32 %i.cy, 1                    ; 2 uses
  store i32 %i.dk, ptr %i.ce, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph666.1.1
  %i.dl = phi i32 [ %i.dk, %bb.j ], [ %i.cy, %.lr.ph666.1.1 ] ; 2 uses
  %indvars.iv.next718.1.1 = add nuw nsw i64 %indvars.iv717.1, 2 ; 2 uses
  %niter974.next.1 = add i64 %niter974, 2
  %niter974.ncmp.1 = icmp eq i64 %niter974, %i.ck
  br i1 %niter974.ncmp.1, label %._crit_edge667.1.loopexit.unr-lcssa, label %.lr.ph666.1, !llvm.loop !8

._crit_edge667.1.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod971.not = icmp eq i64 %xtraiter967, 0
  br i1 %lcmp.mod971.not, label %._crit_edge667.1, label %.lr.ph666.1.epil.preheader

.lr.ph666.1.epil.preheader:                       ; preds = %._crit_edge667.1.loopexit.unr-lcssa, %.lr.ph666.preheader.1
  %.epil.init970 = phi i32 [ %storemerge.1, %.lr.ph666.preheader.1 ], [ %i.dl, %._crit_edge667.1.loopexit.unr-lcssa ]
  %indvars.iv717.1.epil.init = phi i64 [ 2, %.lr.ph666.preheader.1 ], [ %indvars.iv.next718.1.1, %._crit_edge667.1.loopexit.unr-lcssa ] ; 2 uses
  %.1530664.1.epil.init = phi double [ %spec.select.1, %.lr.ph666.preheader.1 ], [ %spec.select596.1.1, %._crit_edge667.1.loopexit.unr-lcssa ]
  %lcmp.mod972 = trunc i32 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod972)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717.1.epil.init
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !38
  %i.do = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717.1.epil.init
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !38
  %i.dr = fdiv double %i.dq, %.1530664.1.epil.init
  %i.ds = fsub double %i.dn, %i.dr
  %i.dt = fsub double %i.ds, %i.ca                ; 2 uses
  %i.du = tail call double @llvm.fabs.f64(double %i.dt)
  %i.dv = fcmp olt double %i.du, %i.r
  %spec.select596.1.epil = select i1 %i.dv, double %i.s, double %i.dt
  %i.dw = fcmp ugt double %spec.select596.1.epil, 0.000000e+00
  br i1 %i.dw, label %._crit_edge667.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph666.1.epil.preheader
  %i.dx = add nsw i32 %.epil.init970, 1
  store i32 %i.dx, ptr %i.ce, align 4, !tbaa !36
  br label %._crit_edge667.1

._crit_edge667.1:                                 ; preds = %._crit_edge667.1.loopexit.unr-lcssa, %bb.l, %.lr.ph666.1.epil.preheader, %._crit_edge667
  %i.dy = load i32, ptr %15, align 4, !tbaa !36
  %gep771 = getelementptr [4 x i8], ptr %invariant.gep770, i64 %indvars.iv726
  %i.dz = load i32, ptr %gep771, align 4, !tbaa !36
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = load i32, ptr %i.ae, align 4, !tbaa !36
  %i.ec = sub i32 %i.ea, %i.eb
  store i32 %i.ec, ptr %15, align 4, !tbaa !36
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1 ; 2 uses
  %exitcond730.not = icmp eq i64 %indvars.iv.next727, %wide.trip.count729
  br i1 %exitcond730.not, label %.loopexit, label %.preheader, !llvm.loop !9

bb.m:                                             ; preds = %bb.c
  %i.ed = load i32, ptr %4, align 4, !tbaa !36    ; 8 uses
  %i.ee = icmp ne i32 %i.m, 2
  %.not609 = icmp slt i32 %i.ed, 1
  %or.cond671 = select i1 %i.ee, i1 true, i1 %.not609
  br i1 %or.cond671, label %.loopexit607, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.ef = shl i32 %i.c, 1
  %i.eg = sext i32 %i.c to i64                    ; 2 uses
  %i.eh = sext i32 %i.ef to i64                   ; 2 uses
  %i.ei = add nuw i32 %i.ed, 1
  %wide.trip.count = zext i32 %i.ei to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.eg ; 7 uses
  %invariant.gep764 = getelementptr [8 x i8], ptr %i.f, i64 %i.eh ; 7 uses
  %i.ej = zext nneg i32 %i.ed to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ed, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ek = add i64 %i.a, -8
  %i.el = sub i64 %i.ek, %i.b                     ; 2 uses
  %i.em = add nsw i64 %i.eh, %i.d
  %20 = shl nsw i64 %i.em, 3
  %21 = sub i64 %20, %i.el
  %diff.check = icmp ugt i64 %21, -128
  %22 = or i64 %i.eg, %i.d
  %23 = shl nsw i64 %22, 3
  %24 = sub i64 %23, %i.el
  %diff.check775 = icmp ugt i64 %24, -128
  %conflict.rdx = or i1 %diff.check, %diff.check775
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check775 = icmp ult i32 %i.ed, 16
  br i1 %min.iters.check775, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.en = and i64 %i.ej, 12
  %n.vec = and i64 %i.ej, 2147483632              ; 4 uses
  %i.eo = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ep = or disjoint i64 %index, 1               ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ep ; 4 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 32
  %i.es = getelementptr i8, ptr %i.eq, i64 64
  %i.et = getelementptr i8, ptr %i.eq, i64 96
  %wide.load = load <4 x double>, ptr %i.eq, align 8, !tbaa !38
  %wide.load776 = load <4 x double>, ptr %i.er, align 8, !tbaa !38
  %wide.load777 = load <4 x double>, ptr %i.es, align 8, !tbaa !38
  %wide.load778 = load <4 x double>, ptr %i.et, align 8, !tbaa !38
  %i.eu = getelementptr [8 x i8], ptr %invariant.gep764, i64 %i.ep ; 4 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %i.ew = getelementptr i8, ptr %i.eu, i64 64
  %i.ex = getelementptr i8, ptr %i.eu, i64 96
  %wide.load779 = load <4 x double>, ptr %i.eu, align 8, !tbaa !38
  %wide.load780 = load <4 x double>, ptr %i.ev, align 8, !tbaa !38
  %wide.load781 = load <4 x double>, ptr %i.ew, align 8, !tbaa !38
  %wide.load782 = load <4 x double>, ptr %i.ex, align 8, !tbaa !38
  %i.ey = fadd <4 x double> %wide.load, %wide.load779
  %i.ez = fadd <4 x double> %wide.load776, %wide.load780
  %i.fa = fadd <4 x double> %wide.load777, %wide.load781
  %i.fb = fadd <4 x double> %wide.load778, %wide.load782
  %i.fc = fmul <4 x double> %i.ey, splat (double 5.000000e-01)
  %i.fd = fmul <4 x double> %i.ez, splat (double 5.000000e-01)
  %i.fe = fmul <4 x double> %i.fa, splat (double 5.000000e-01)
  %i.ff = fmul <4 x double> %i.fb, splat (double 5.000000e-01)
  %i.fg = getelementptr [8 x i8], ptr %14, i64 %index ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  store <4 x double> %i.fc, ptr %i.fg, align 8, !tbaa !38
  store <4 x double> %i.fd, ptr %i.fh, align 8, !tbaa !38
  store <4 x double> %i.fe, ptr %i.fi, align 8, !tbaa !38
  store <4 x double> %i.ff, ptr %i.fj, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ej
  br i1 %cmp.n, label %.loopexit607, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec783 = and i64 %i.ej, 2147483644           ; 3 uses
  %i.fl = or disjoint i64 %n.vec783, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index784 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next787, %vec.epilog.vector.body ] ; 3 uses
  %i.fm = or disjoint i64 %index784, 1            ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fm
  %wide.load785 = load <4 x double>, ptr %i.fn, align 8, !tbaa !38
  %i.fo = getelementptr [8 x i8], ptr %invariant.gep764, i64 %i.fm
  %wide.load786 = load <4 x double>, ptr %i.fo, align 8, !tbaa !38
  %i.fp = fadd <4 x double> %wide.load785, %wide.load786
  %i.fq = fmul <4 x double> %i.fp, splat (double 5.000000e-01)
  %i.fr = getelementptr [8 x i8], ptr %14, i64 %index784
  store <4 x double> %i.fq, ptr %i.fr, align 8, !tbaa !38
  %index.next787 = add nuw i64 %index784, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next787, %n.vec783
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n788 = icmp eq i64 %n.vec783, %i.ej
  br i1 %cmp.n788, label %.loopexit607, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.eo, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ] ; 4 uses
  %i.ft = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.fu = zext nneg i32 %i.ed to i64
  %i.fv = sub nsw i64 %i.fu, %indvars.iv.ph
  %xtraiter = and i64 %i.ft, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.fw = load double, ptr %gep.prol, align 8, !tbaa !38
  %gep765.prol = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.prol
  %i.fx = load double, ptr %gep765.prol, align 8, !tbaa !38
  %i.fy = fadd double %i.fw, %i.fx
  %i.fz = fmul double %i.fy, 5.000000e-01
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.prol
  store double %i.fz, ptr %i.ga, align 8, !tbaa !38
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !12

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.gb = icmp ult i64 %i.fv, 3
  br i1 %i.gb, label %.loopexit607, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gc = load double, ptr %gep, align 8, !tbaa !38
  %gep765 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv
  %i.gd = load double, ptr %gep765, align 8, !tbaa !38
  %i.ge = fadd double %i.gc, %i.gd
  %i.gf = fmul double %i.ge, 5.000000e-01
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store double %i.gf, ptr %i.gg, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.gh = load double, ptr %gep.1, align 8, !tbaa !38
  %gep765.1 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next
  %i.gi = load double, ptr %gep765.1, align 8, !tbaa !38
  %i.gj = fadd double %i.gh, %i.gi
  %i.gk = fmul double %i.gj, 5.000000e-01
  %i.gl = getelementptr [8 x i8], ptr %14, i64 %indvars.iv
  store double %i.gk, ptr %i.gl, align 8, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.gm = load double, ptr %gep.2, align 8, !tbaa !38
  %gep765.2 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next.1
  %i.gn = load double, ptr %gep765.2, align 8, !tbaa !38
  %i.go = fadd double %i.gm, %i.gn
  %i.gp = fmul double %i.go, 5.000000e-01
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store double %i.gp, ptr %i.gq, align 8, !tbaa !38
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.gr = load double, ptr %gep.3, align 8, !tbaa !38
  %gep765.3 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next.2
  %i.gs = load double, ptr %gep765.3, align 8, !tbaa !38
  %i.gt = fadd double %i.gr, %i.gs
  %i.gu = fmul double %i.gt, 5.000000e-01
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store double %i.gu, ptr %i.gv, align 8, !tbaa !38
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit607, label %vec.epilog.scalar.ph, !llvm.loop !13

.loopexit607:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.gw = load i32, ptr %1, align 4, !tbaa !36    ; 2 uses
  %.not572650 = icmp slt i32 %i.gw, 1
  br i1 %.not572650, label %._crit_edge656, label %.lr.ph655

.lr.ph655:                                        ; preds = %.loopexit607
  %i.gx = shl i32 %i.c, 1                         ; 4 uses
  %i.gy = sext i32 %i.c to i64                    ; 11 uses
  %i.gz = sext i32 %i.gx to i64                   ; 11 uses
  %invariant.gep766 = getelementptr [8 x i8], ptr %i.f, i64 %i.gy ; 7 uses
  %invariant.gep768 = getelementptr [8 x i8], ptr %i.f, i64 %i.gz ; 7 uses
  %i.ha = add i64 %i.a, -8
  %i.hb = sub i64 %i.ha, %i.b                     ; 2 uses
  %i.hc = add nsw i64 %i.gz, %i.d
  %i.hd = shl nsw i64 %i.hc, 3
  %i.he = or i64 %i.gy, %i.d
  %i.hf = shl nsw i64 %i.he, 3
  %i.hg = shl nsw i64 %i.d, 3                     ; 3 uses
  %scevgep = getelementptr i8, ptr %13, i64 %i.hg
  %i.hh = add nsw i64 %i.hg, 8                    ; 2 uses
  %scevgep829.a = getelementptr i8, ptr %13, i64 %i.hh
  %i.hi = shl nsw i64 %i.d, 2                     ; 3 uses
  %scevgep831.a = getelementptr i8, ptr %16, i64 %i.hi
  %i.hj = add nsw i64 %i.hi, 4                    ; 2 uses
  %scevgep833.a = getelementptr i8, ptr %16, i64 %i.hj
  %scevgep835.a = getelementptr i8, ptr %13, i64 %i.hg
  %scevgep837.a = getelementptr i8, ptr %13, i64 %i.hh
  %scevgep839.a = getelementptr i8, ptr %16, i64 %i.hi
  %scevgep841.a = getelementptr i8, ptr %16, i64 %i.hj
  %scevgep843.a = getelementptr i8, ptr %18, i64 -4
  %scevgep846.a = getelementptr i8, ptr %12, i64 -4
  %scevgep849.a = getelementptr i8, ptr %14, i64 -8
  %i.hk = sub i64 %i.hd, %i.hb
  %diff.check791 = icmp ugt i64 %i.hk, -128
  %i.hl = sub i64 %i.hf, %i.hb
  %diff.check792 = icmp ugt i64 %i.hl, -128
  %conflict.rdx793 = or i1 %diff.check791, %diff.check792
  br label %bb.n

._crit_edge649:                                   ; preds = %.lr.ph648.prol.loopexit, %.lr.ph648, %vec.epilog.middle.block824, %middle.block810
  %i.hm = add nuw i32 %.0532653, 1
  %exitcond716.not = icmp eq i32 %.0532653, %i.gw
  br i1 %exitcond716.not, label %._crit_edge656, label %bb.n, !llvm.loop !14

bb.n:                                             ; preds = %.lr.ph655, %._crit_edge649
  %.0532653 = phi i32 [ 1, %.lr.ph655 ], [ %i.hm, %._crit_edge649 ] ; 2 uses
  %.0534652 = phi i32 [ %i.ed, %.lr.ph655 ], [ %.1535, %._crit_edge649 ] ; 17 uses
  %.0540651 = phi i32 [ 1, %.lr.ph655 ], [ %.0546.lcssa, %._crit_edge649 ] ; 11 uses
  %reass.sub = sub i32 %.0534652, %.0540651
  %i.hn = add i32 %reass.sub, 1
  %i.ho = load i32, ptr %5, align 4, !tbaa !36    ; 2 uses
  %.not573 = icmp sge i32 %i.hn, %i.ho
  %i.hp = icmp sgt i32 %i.ho, 0
  %or.cond597 = and i1 %.not573, %i.hp
  %.not581626 = icmp sgt i32 %.0540651, %.0534652 ; 2 uses
  br i1 %or.cond597, label %.preheader602, label %.preheader603

.preheader603:                                    ; preds = %bb.n
  br i1 %.not581626, label %.loopexit601, label %.lr.ph619.preheader

.lr.ph619.preheader:                              ; preds = %.preheader603
  %i.hq = sext i32 %.0540651 to i64
  %i.hr = add i32 %.0534652, 1
  br label %.lr.ph619

.preheader602:                                    ; preds = %bb.n
  br i1 %.not581626, label %._crit_edge629.thread, label %.lr.ph628.preheader

.lr.ph628.preheader:                              ; preds = %.preheader602
  %i.hs = sext i32 %.0540651 to i64               ; 5 uses
  %i.ht = add i32 %.0534652, 1
  br label %.lr.ph628

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %._crit_edge625
  %indvars.iv691 = phi i64 [ %i.hs, %.lr.ph628.preheader ], [ %indvars.iv.next692, %._crit_edge625 ] ; 4 uses
  %i.hu = load double, ptr %9, align 8, !tbaa !38
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv691 ; 4 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !38
  %i.hx = fsub double %i.hu, %i.hw                ; 5 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv691 ; 8 uses
  store double %i.hx, ptr %i.hy, align 8, !tbaa !38
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv691 ; 5 uses
  store i32 0, ptr %i.hz, align 4, !tbaa !36
  %i.ia = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.ib = fcmp ugt double %i.hx, %i.ia
  br i1 %i.ib, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph628
  store i32 1, ptr %i.hz, align 4, !tbaa !36
  %i.ic = fneg double %i.ia                       ; 2 uses
  %i.id = fcmp ole double %i.hx, %i.ic
  %i.ie = select i1 %i.id, double %i.hx, double %i.ic ; 2 uses
  store double %i.ie, ptr %i.hy, align 8, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph628
  %i.if = phi i32 [ 1, %bb.o ], [ 0, %.lr.ph628 ] ; 2 uses
  %i.ig = phi double [ %i.ie, %bb.o ], [ %i.hx, %.lr.ph628 ] ; 2 uses
  %i.ih = load i32, ptr %2, align 4, !tbaa !36    ; 2 uses
  %.not593621 = icmp slt i32 %i.ih, 2
  br i1 %.not593621, label %._crit_edge625, label %.lr.ph624.preheader

.lr.ph624.preheader:                              ; preds = %bb.p
  %i.ii = add nuw i32 %i.ih, 1                    ; 3 uses
  %wide.trip.count688 = zext i32 %i.ii to i64     ; 2 uses
  %xtraiter940 = and i64 %wide.trip.count688, 1
  %i.ij = icmp eq i32 %i.ii, 3
  br i1 %i.ij, label %.lr.ph624.epil.preheader, label %.lr.ph624.preheader.new

.lr.ph624.preheader.new:                          ; preds = %.lr.ph624.preheader
  %i.ik = and i64 %wide.trip.count688, 4294967294
  %i.il = add nsw i64 %i.ik, -4
  br label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.s, %.lr.ph624.preheader.new
  %i.im = phi i32 [ %i.if, %.lr.ph624.preheader.new ], [ %i.ju, %bb.s ] ; 2 uses
  %i.in = phi double [ %i.ig, %.lr.ph624.preheader.new ], [ %i.jv, %bb.s ]
  %indvars.iv685 = phi i64 [ 2, %.lr.ph624.preheader.new ], [ %indvars.iv.next686.1, %bb.s ] ; 5 uses
  %niter947 = phi i64 [ 0, %.lr.ph624.preheader.new ], [ %niter947.next.1, %bb.s ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv685
  %i.ip = load double, ptr %i.io, align 8, !tbaa !38
  %i.iq = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv685
  %i.ir = getelementptr i8, ptr %i.iq, i64 -8
  %i.is = load double, ptr %i.ir, align 8, !tbaa !38
  %i.it = fdiv double %i.is, %i.in
  %i.iu = fsub double %i.ip, %i.it
  %i.iv = load double, ptr %i.hv, align 8, !tbaa !38
  %i.iw = fsub double %i.iu, %i.iv                ; 5 uses
  store double %i.iw, ptr %i.hy, align 8, !tbaa !38
  %i.ix = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.iy = fcmp ugt double %i.iw, %i.ix
  br i1 %i.iy, label %.lr.ph624.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph624
  %i.iz = add nsw i32 %i.im, 1                    ; 2 uses
  store i32 %i.iz, ptr %i.hz, align 4, !tbaa !36
  %i.ja = fneg double %i.ix                       ; 2 uses
  %i.jb = fcmp ole double %i.iw, %i.ja
  %i.jc = select i1 %i.jb, double %i.iw, double %i.ja ; 2 uses
  store double %i.jc, ptr %i.hy, align 8, !tbaa !38
  br label %.lr.ph624.1

.lr.ph624.1:                                      ; preds = %.lr.ph624, %bb.q
  %i.jd = phi i32 [ %i.im, %.lr.ph624 ], [ %i.iz, %bb.q ] ; 2 uses
  %i.je = phi double [ %i.iw, %.lr.ph624 ], [ %i.jc, %bb.q ]
  %i.jf = getelementptr [8 x i8], ptr %9, i64 %indvars.iv685
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !38
  %i.jh = getelementptr [8 x i8], ptr %11, i64 %indvars.iv685
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !38
  %i.jk = fdiv double %i.jj, %i.je
  %i.jl = fsub double %i.jg, %i.jk
  %i.jm = load double, ptr %i.hv, align 8, !tbaa !38
  %i.jn = fsub double %i.jl, %i.jm                ; 5 uses
  store double %i.jn, ptr %i.hy, align 8, !tbaa !38
  %i.jo = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.jp = fcmp ugt double %i.jn, %i.jo
  br i1 %i.jp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph624.1
  %i.jq = add nsw i32 %i.jd, 1                    ; 2 uses
  store i32 %i.jq, ptr %i.hz, align 4, !tbaa !36
  %i.jr = fneg double %i.jo                       ; 2 uses
  %i.js = fcmp ole double %i.jn, %i.jr
  %i.jt = select i1 %i.js, double %i.jn, double %i.jr ; 2 uses
  store double %i.jt, ptr %i.hy, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph624.1
  %i.ju = phi i32 [ %i.jd, %.lr.ph624.1 ], [ %i.jq, %bb.r ] ; 2 uses
  %i.jv = phi double [ %i.jn, %.lr.ph624.1 ], [ %i.jt, %bb.r ] ; 2 uses
  %indvars.iv.next686.1 = add nuw nsw i64 %indvars.iv685, 2 ; 2 uses
  %niter947.next.1 = add i64 %niter947, 2
  %niter947.ncmp.1 = icmp eq i64 %niter947, %i.il
  br i1 %niter947.ncmp.1, label %._crit_edge625.loopexit.unr-lcssa, label %.lr.ph624, !llvm.loop !15

._crit_edge625.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod944.not = icmp eq i64 %xtraiter940, 0
  br i1 %lcmp.mod944.not, label %._crit_edge625, label %.lr.ph624.epil.preheader

.lr.ph624.epil.preheader:                         ; preds = %._crit_edge625.loopexit.unr-lcssa, %.lr.ph624.preheader
  %.epil.init = phi i32 [ %i.if, %.lr.ph624.preheader ], [ %i.ju, %._crit_edge625.loopexit.unr-lcssa ]
  %.epil.init943 = phi double [ %i.ig, %.lr.ph624.preheader ], [ %i.jv, %._crit_edge625.loopexit.unr-lcssa ]
  %indvars.iv685.epil.init = phi i64 [ 2, %.lr.ph624.preheader ], [ %indvars.iv.next686.1, %._crit_edge625.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod945 = trunc i32 %i.ii to i1
  tail call void @llvm.assume(i1 %lcmp.mod945)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv685.epil.init
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !38
  %i.jy = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv685.epil.init
  %i.jz = getelementptr i8, ptr %i.jy, i64 -8
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !38
  %i.kb = fdiv double %i.ka, %.epil.init943
  %i.kc = fsub double %i.jx, %i.kb
  %i.kd = load double, ptr %i.hv, align 8, !tbaa !38
  %i.ke = fsub double %i.kc, %i.kd                ; 4 uses
  store double %i.ke, ptr %i.hy, align 8, !tbaa !38
  %i.kf = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.kg = fcmp ugt double %i.ke, %i.kf
  br i1 %i.kg, label %._crit_edge625, label %bb.t

bb.t:                                             ; preds = %.lr.ph624.epil.preheader
  %i.kh = add nsw i32 %.epil.init, 1
  store i32 %i.kh, ptr %i.hz, align 4, !tbaa !36
  %i.ki = fneg double %i.kf                       ; 2 uses
  %i.kj = fcmp ole double %i.ke, %i.ki
  %i.kk = select i1 %i.kj, double %i.ke, double %i.ki
  store double %i.kk, ptr %i.hy, align 8, !tbaa !38
  br label %._crit_edge625

._crit_edge625:                                   ; preds = %._crit_edge625.loopexit.unr-lcssa, %bb.t, %.lr.ph624.epil.preheader, %bb.p
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, 1 ; 2 uses
  %lftr.wideiv694 = trunc i64 %indvars.iv.next692 to i32
  %exitcond695.not = icmp eq i32 %i.ht, %lftr.wideiv694
end_hunk_0
