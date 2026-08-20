inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddExact(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.pre588.a = sext i32 %2 to i64
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = icmp eq i32 %i.s, 1
  %i.u = icmp slt i64 %indvars.iv, %i.l
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.v = getelementptr inbounds [56 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !27
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.b, label %.critedge.loopexit, !llvm.loop !33

.critedge.loopexit:                               ; preds = %bb.b, %bb.c
  %.lcssa461.ph.a = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %bb.b ] ; 2 uses
  %.0236.lcssa464.ph = trunc i64 %.lcssa461.ph.a to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.critedge.loopexit
  %.pre-phi = phi i64 [ %.pre588.a, %..critedge_crit_edge ], [ %i.l, %.critedge.loopexit ] ; 3 uses
  %.0236.lcssa464 = phi i32 [ %1, %..critedge_crit_edge ], [ %.0236.lcssa464.ph, %.critedge.loopexit ] ; 18 uses
  %.lcssa461.a = phi i64 [ %i.c, %..critedge_crit_edge ], [ %.lcssa461.ph.a, %.critedge.loopexit ] ; 9 uses
  %i.z = getelementptr inbounds [56 x i8], ptr %i.b, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !27
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph475, label %.critedge2

.lr.ph475:                                        ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = sext i32 %.0236.lcssa464 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph475, %bb.e
  %indvars.iv548 = phi i64 [ %.pre-phi, %.lr.ph475 ], [ %indvars.iv.next549, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv548
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = icmp sgt i64 %indvars.iv548, %i.ah
  %or.cond263 = and i1 %i.aq, %i.ap
  br i1 %or.cond263, label %bb.e, label %.critedge2.loopexit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, -1 ; 3 uses
  %i.ar = getelementptr inbounds [56 x i8], ptr %i.b, i64 %indvars.iv.next549
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !27
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.d, label %.critedge2.loopexit, !llvm.loop !35

.critedge2.loopexit:                              ; preds = %bb.d, %bb.e
  %.lcssa460.ph = phi i64 [ %indvars.iv.next549, %bb.e ], [ %indvars.iv548, %bb.d ] ; 2 uses
  %.0235.lcssa.ph = trunc i64 %.lcssa460.ph to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.0235.lcssa = phi i32 [ %2, %.critedge ], [ %.0235.lcssa.ph, %.critedge2.loopexit ] ; 17 uses
  %.lcssa460 = phi i64 [ %.pre-phi, %.critedge ], [ %.lcssa460.ph, %.critedge2.loopexit ]
  %i.av = icmp eq i32 %.0236.lcssa464, %.0235.lcssa
  br i1 %i.av, label %bb.bl, label %bb.f

bb.f:                                             ; preds = %.critedge2
  %i.aw = tail call i32 @cuddSymmSiftingConv(ptr noundef %0, i32 noundef %.0236.lcssa464, i32 noundef %.0235.lcssa) #10
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread425, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !36 ; 5 uses
  %i.ba = sub i32 %.0235.lcssa, %.0236.lcssa464   ; 5 uses
  %i.bb = add i32 %i.ba, 1                        ; 11 uses
  %.0230481 = add nsw i32 %.0236.lcssa464, 1      ; 2 uses
  %i.bc = icmp slt i32 %.0230481, %.0235.lcssa
  br i1 %i.bc, label %.lr.ph484, label %._crit_edge

.lr.ph484:                                        ; preds = %bb.g
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = sext i32 %.0230481 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph484, %bb.j
  %indvars.iv552 = phi i64 [ %i.bg, %.lr.ph484 ], [ %indvars.iv.next553, %bb.j ] ; 3 uses
  %.0221482 = phi i32 [ 0, %.lr.ph484 ], [ %.1222, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds [56 x i8], ptr %i.bd, i64 %indvars.iv552
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !27
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv552
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !30
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !32
  %i.bu = icmp eq i32 %i.bt, 1
  %i.bv = zext i1 %i.bu to i32
  %spec.select = add nsw i32 %.0221482, %i.bv
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1222 = phi i32 [ %.0221482, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next553 to i32
  %exitcond.not = icmp eq i32 %.0235.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.0221.lcssa = phi i32 [ 0, %bb.g ], [ %.1222, %bb.j ]
  %i.bw = sub nsw i32 %i.bb, %.0221.lcssa         ; 4 uses
  %or.cond.i = icmp ugt i32 %i.bw, 33
  br i1 %or.cond.i, label %.thread425, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bx = icmp samesign ult i32 %i.bw, 2
  br i1 %i.bx, label %getMaxBinomial.exit.thread338, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nuw nsw i32 %i.bw, 3
  %i.bz = lshr i32 %i.by, 1                       ; 2 uses
  %i.ca = uitofp nneg i32 %i.bz to double         ; 2 uses
  %i.cb = add nuw nsw i32 %i.bz, 1
  %i.cc = uitofp nneg i32 %i.cb to double         ; 2 uses
  %i.cd = uitofp nneg i32 %i.bw to double         ; 2 uses
  %i.ce = fcmp ugt double %i.cc, %i.cd
  br i1 %i.ce, label %getMaxBinomial.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.cf = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.cc, i64 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.021.i = phi double [ %i.ck, %.lr.ph.i ], [ %i.ca, %.lr.ph.i.preheader ]
  %i.cg = phi <2 x double> [ %i.cl, %.lr.ph.i ], [ %i.cf, %.lr.ph.i.preheader ] ; 3 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = fmul double %.021.i, %i.ch
  %i.cj = extractelement <2 x double> %i.cg, i64 1
  %i.ck = fdiv double %i.ci, %i.cj                ; 2 uses
  %i.cl = fadd <2 x double> %i.cg, splat (double 1.000000e+00) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = fcmp ugt double %i.cm, %i.cd
  br i1 %i.cn, label %getMaxBinomial.exit, label %.lr.ph.i, !llvm.loop !38

getMaxBinomial.exit:                              ; preds = %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi double [ %i.ca, %bb.l ], [ %i.ck, %.lr.ph.i ]
  %i.co = fptosi double %.0.lcssa.i to i32        ; 2 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %.thread425, label %getMaxBinomial.exit.thread338

getMaxBinomial.exit.thread338:                    ; preds = %bb.k, %getMaxBinomial.exit
  %.017.i340 = phi i32 [ %i.co, %getMaxBinomial.exit ], [ 1, %bb.k ] ; 7 uses
  %i.cq = mul nsw i32 %.017.i340, %i.bb           ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.thread425, label %bb.m

bb.m:                                             ; preds = %getMaxBinomial.exit.thread338
  %i.cs = sext i32 %.017.i340 to i64              ; 2 uses
  %i.ct = shl nsw i64 %i.cs, 3                    ; 2 uses
  %i.cu = tail call noalias ptr @malloc(i64 noundef %i.ct) #11 ; 22 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.thread425, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = sext i32 %i.cq to i64
  %i.cx = shl nsw i64 %i.cw, 2                    ; 2 uses
  %i.cy = tail call noalias ptr @malloc(i64 noundef %i.cx) #11 ; 2 uses
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !39
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.thread425.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.da = icmp sgt i32 %.017.i340, 1              ; 2 uses
  br i1 %i.da, label %.lr.ph.i264, label %getMatrix.exit

.lr.ph.i264:                                      ; preds = %.preheader.i
  %i.db = sext i32 %i.bb to i64                   ; 9 uses
  %wide.trip.count.i = zext nneg i32 %.017.i340 to i64
  %load_initial662 = load ptr, ptr %i.cu, align 8 ; 2 uses
  %i.dc = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.dc, 7                    ; 3 uses
  %i.dd = add nsw i32 %.017.i340, -2
  %i.de = icmp ult i32 %i.dd, 7
  br i1 %i.de, label %.epil.preheader, label %.lr.ph.i264.new

.lr.ph.i264.new:                                  ; preds = %.lr.ph.i264
  %unroll_iter = and i64 %i.dc, -8
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i264.new
  %store_forwarded663 = phi ptr [ %load_initial662, %.lr.ph.i264.new ], [ %i.eb, %bb.o ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i264.new ], [ %indvars.iv.next.i.7, %bb.o ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i264.new ], [ %niter.next.7, %bb.o ]
  %i.df = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dg = getelementptr inbounds [4 x i8], ptr %store_forwarded663, i64 %i.db ; 2 uses
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !39
  %i.dh = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.db ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !39
  %i.dk = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.db ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !39
  %i.dn = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.do = getelementptr i8, ptr %i.dn, i64 24
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.db ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !39
  %i.dq = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.db ; 2 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !39
  %i.dt = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.du = getelementptr i8, ptr %i.dt, i64 40
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.db ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !39
  %i.dw = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 48
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.db ; 2 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !39
  %i.dz = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 56
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.db ; 3 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !39
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %getMatrix.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !40

getMatrix.exit.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %getMatrix.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %getMatrix.exit.loopexit.unr-lcssa, %.lr.ph.i264
  %store_forwarded663.epil.init = phi ptr [ %load_initial662, %.lr.ph.i264 ], [ %i.eb, %getMatrix.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i264 ], [ %indvars.iv.next.i.7, %getMatrix.exit.loopexit.unr-lcssa ]
  %lcmp.mod683 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod683)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %store_forwarded663.epil = phi ptr [ %store_forwarded663.epil.init, %.epil.preheader ], [ %i.ed, %bb.p ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.ec = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i.epil
  %i.ed = getelementptr inbounds [4 x i8], ptr %store_forwarded663.epil, i64 %i.db ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !39
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %getMatrix.exit, label %bb.p, !llvm.loop !41

getMatrix.exit:                                   ; preds = %getMatrix.exit.loopexit.unr-lcssa, %bb.p, %.preheader.i
  %i.ee = shl nsw i64 %i.cs, 2                    ; 2 uses
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.ee) #11 ; 9 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %ddShuffle.exit.thread348, label %bb.q

bb.q:                                             ; preds = %getMatrix.exit
  %i.eh = tail call noalias ptr @malloc(i64 noundef %i.ct) #11 ; 20 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %ddShuffle.exit.thread348, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.cx) #11 ; 2 uses
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@cuddExact:bb.a
scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph489, %middle.block
  %indvars.iv556.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph489 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter691 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv556.prol = phi i64 [ %indvars.iv.next557.prol, %scalar.ph.prol ], [ %indvars.iv556.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv556.prol
  %i.gq = load i32, ptr %gep.prol, align 4, !tbaa !30 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv556.prol
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !30
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv556.prol
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !30
  %indvars.iv.next557.prol = add nuw nsw i64 %indvars.iv556.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter691
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv556.unr = phi i64 [ %indvars.iv556.ph, %scalar.ph.preheader ], [ %indvars.iv.next557.prol, %scalar.ph.prol ]
  %i.gt = sub nsw i64 %indvars.iv556.ph, %wide.trip.count
  %i.gu = icmp ugt i64 %i.gt, -4
  br i1 %i.gu, label %._crit_edge490, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv556 = phi i64 [ %indvars.iv.next557.3, %scalar.ph ], [ %indvars.iv556.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv556
  %i.gv = load i32, ptr %gep, align 4, !tbaa !30  ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv556
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !30
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv556
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !30
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next557
  %i.gy = load i32, ptr %gep.1, align 4, !tbaa !30 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next557
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !30
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next557
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !30
  %indvars.iv.next557.1 = add nuw nsw i64 %indvars.iv556, 2 ; 3 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next557.1
  %i.hb = load i32, ptr %gep.2, align 4, !tbaa !30 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next557.1
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !30
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next557.1
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !30
  %indvars.iv.next557.2 = add nuw nsw i64 %indvars.iv556, 3 ; 3 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next557.2
  %i.he = load i32, ptr %gep.3, align 4, !tbaa !30 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next557.2
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !30
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next557.2
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !30
  %indvars.iv.next557.3 = add nuw nsw i64 %indvars.iv556, 4 ; 2 uses
  %exitcond560.not.3 = icmp eq i64 %indvars.iv.next557.3, %wide.trip.count
  br i1 %exitcond560.not.3, label %._crit_edge490, label %scalar.ph, !llvm.loop !48

._crit_edge490:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !49 ; 3 uses
  %.2232491 = add i32 %.0235.lcssa, 1             ; 3 uses
  %i.hj = icmp slt i32 %.2232491, %i.az
  br i1 %i.hj, label %.lr.ph495, label %._crit_edge496

.lr.ph495:                                        ; preds = %._crit_edge490
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !29 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !28 ; 3 uses
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %i.hp = sext i32 %.2232491 to i64               ; 4 uses
  %i.hq = add i32 %i.az, -2
  %i.hr = sub i32 %.0235.lcssa, %i.az
  %i.hs = and i32 %i.hr, 1
  %lcmp.mod694.not.not = icmp eq i32 %i.hs, 0
  br i1 %lcmp.mod694.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph495
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hp
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !30
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !31
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !32
  %i.ia = icmp eq i32 %i.hz, 1
  %.neg.i.prol = sext i1 %i.ia to i32
  %i.ib = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %i.hp
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !27
  %i.ie = add i32 %i.hi, %.neg.i.prol
  %i.if = add i32 %i.ie, %i.id                    ; 2 uses
  %indvars.iv.next562.prol = add nsw i64 %i.hp, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph495
  %.lcssa681.unr = phi i32 [ poison, %.lr.ph495 ], [ %i.if, %.prol.loopexit.unr-lcssa ]
  %indvars.iv561.unr = phi i64 [ %i.hp, %.lr.ph495 ], [ %indvars.iv.next562.prol, %.prol.loopexit.unr-lcssa ]
  %.0223492.unr = phi i32 [ %i.hi, %.lr.ph495 ], [ %i.if, %.prol.loopexit.unr-lcssa ]
  %i.ig = icmp eq i32 %i.hq, %.0235.lcssa
  br i1 %i.ig, label %._crit_edge496, label %.lr.ph495.new

.lr.ph495.new:                                    ; preds = %.prol.loopexit, %.lr.ph495.new
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.1, %.lr.ph495.new ], [ %indvars.iv561.unr, %.prol.loopexit ] ; 4 uses
  %.0223492 = phi i32 [ %i.jg, %.lr.ph495.new ], [ %.0223492.unr, %.prol.loopexit ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv561
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !30
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !31
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !32
  %i.io = icmp eq i32 %i.in, 1
  %.neg.i = sext i1 %i.io to i32
  %i.ip = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %indvars.iv561
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !27
  %i.is = add i32 %.0223492, %.neg.i
  %i.it = add i32 %i.is, %i.ir
  %indvars.iv.next562 = add nsw i64 %indvars.iv561, 1 ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next562
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !30
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !32
  %i.jb = icmp eq i32 %i.ja, 1
  %.neg.i.1 = sext i1 %i.jb to i32
  %i.jc = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %indvars.iv.next562
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !27
  %i.jf = add i32 %i.it, %.neg.i.1
  %i.jg = add i32 %i.jf, %i.je                    ; 2 uses
  %indvars.iv.next562.1 = add nsw i64 %indvars.iv561, 2 ; 2 uses
  %lftr.wideiv565.1 = trunc i64 %indvars.iv.next562.1 to i32
  %exitcond566.not.1 = icmp eq i32 %i.az, %lftr.wideiv565.1
  br i1 %exitcond566.not.1, label %._crit_edge496, label %.lr.ph495.new, !llvm.loop !50

._crit_edge496:                                   ; preds = %.prol.loopexit, %.lr.ph495.new, %._crit_edge490
  %.0223.lcssa = phi i32 [ %i.hi, %._crit_edge490 ], [ %.lcssa681.unr, %.prol.loopexit ], [ %i.jg, %.lr.ph495.new ]
  store i32 %.0223.lcssa, ptr %i.fo, align 4, !tbaa !30
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.not254515 = icmp ugt i32 %i.ba, 2147483646
  br i1 %.not254515, label %._crit_edge525, label %.lr.ph524

.lr.ph524:                                        ; preds = %._crit_edge496
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.jk = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = icmp sgt i32 %.0236.lcssa464, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %wide.trip.count.i277 = zext i32 %.0236.lcssa464 to i64 ; 2 uses
  %.not18.i = icmp slt i32 %.0235.lcssa, %.0236.lcssa464 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %wide.trip.count.i282 = zext i32 %i.bb to i64   ; 7 uses
  %i.jq = add i32 %.0236.lcssa464, -1
  %i.jr = shl nsw i64 %.lcssa461.a, 2             ; 2 uses
  %i.js = trunc nsw i64 %.lcssa461.a to i32
  %i.jt = sub i32 %.0235.lcssa, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 2
  %i.jw = add nuw nsw i64 %i.jv, 4                ; 2 uses
  %i.jx = zext nneg i32 %i.ba to i64
  %i.jy = add i32 %.0235.lcssa, 2
  %i.jz = sub i32 %i.jy, %.0236.lcssa464
  %wide.trip.count584 = zext i32 %i.jz to i64
  %i.ka = add i32 %.0235.lcssa, 1
  %i.kb = trunc i64 %.lcssa461.a to i32           ; 2 uses
  %i.kc = sub i32 %i.ka, %i.kb
  %i.kd = sub i32 %.0235.lcssa, %i.kb
  %xtraiter697 = and i64 %wide.trip.count.i277, 1
  %i.ke = icmp eq i32 %.0236.lcssa464, 1
  %unroll_iter702 = and i64 %wide.trip.count.i277, 2147483646
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  %lcmp.mod701 = trunc i32 %.0236.lcssa464 to i1
  %xtraiter704 = and i32 %i.kc, 3                 ; 2 uses
  %lcmp.mod705.not = icmp eq i32 %xtraiter704, 0
  %i.kf = icmp ult i32 %i.kd, 3
  %min.iters.check651 = icmp ult i32 %i.bb, 8
  %n.vec653 = and i64 %wide.trip.count.i282, 4294967288 ; 3 uses
  %cmp.n660 = icmp eq i64 %n.vec653, %wide.trip.count.i282
  %xtraiter710 = and i64 %wide.trip.count.i282, 3 ; 2 uses
  %lcmp.mod711.not = icmp eq i64 %xtraiter710, 0
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph524, %._crit_edge512
  %indvar = phi i32 [ 0, %.lr.ph524 ], [ %indvar.next, %._crit_edge512 ] ; 3 uses
  %indvars.iv580 = phi i64 [ 1, %.lr.ph524 ], [ %indvars.iv.next581, %._crit_edge512 ] ; 2 uses
  %indvars.iv568 = phi i32 [ %i.ba, %.lr.ph524 ], [ %indvars.iv.next569, %._crit_edge512 ] ; 2 uses
  %.0210522 = phi ptr [ %i.fo, %.lr.ph524 ], [ %.0211521, %._crit_edge512 ] ; 5 uses
  %.0211521 = phi ptr [ %i.ef, %.lr.ph524 ], [ %.0210522, %._crit_edge512 ] ; 6 uses
  %.0213520 = phi ptr [ %i.eh, %.lr.ph524 ], [ %.0215519, %._crit_edge512 ] ; 5 uses
  %.0215519 = phi ptr [ %i.cu, %.lr.ph524 ], [ %.0213520, %._crit_edge512 ] ; 6 uses
  %.0219518 = phi i32 [ %i.jl, %.lr.ph524 ], [ %.1220.lcssa, %._crit_edge512 ] ; 2 uses
  %.0228517 = phi i32 [ 1, %.lr.ph524 ], [ %.0224.lcssa, %._crit_edge512 ] ; 2 uses
  %i.kg = add nuw nsw i32 %indvar, 1
  %i.kh = sext i32 %indvars.iv568 to i64
  %i.ki = sub nsw i64 %i.fq, %indvars.iv580       ; 11 uses
  %i.kj = icmp sgt i32 %.0228517, 0
  br i1 %i.kj, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.z
  %i.kk = trunc nsw i64 %i.ki to i32
  %i.kl = add i32 %.0236.lcssa464, %i.kk          ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0236.lcssa464, i32 %i.kl)
  %i.km = add i32 %smax.i, 1
  %i.kn = add nsw i32 %i.kl, 1                    ; 2 uses
  %i.ko = icmp slt i32 %i.kl, %.0235.lcssa
  %i.kp = sext i32 %i.kn to i64
  %i.kq = icmp sgt i64 %i.ki, -1
  %i.kr = sext i32 %i.kl to i64                   ; 2 uses
  %.not5662.i = icmp sgt i64 %i.ki, %i.jx
  %wide.trip.count578 = zext nneg i32 %.0228517 to i64
  %xtraiter707 = and i32 %i.kg, 3                 ; 2 uses
  %lcmp.mod708.not = icmp eq i32 %xtraiter707, 0
  %i.ks = icmp ult i32 %indvar, 3
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph511, %.loopexit438
  %indvars.iv574 = phi i64 [ 0, %.lr.ph511 ], [ %indvars.iv.next575, %.loopexit438 ] ; 3 uses
  %.1220509 = phi i32 [ %.0219518, %.lr.ph511 ], [ %.4, %.loopexit438 ] ; 5 uses
  %.0224508 = phi i32 [ 0, %.lr.ph511 ], [ %.3227, %.loopexit438 ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.0213520, i64 %indvars.iv574
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !39 ; 19 uses
  %i.kv = ptrtoaddr ptr %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0210522, i64 %indvars.iv574
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !30 ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8   ; 5 uses
  br i1 %i.jm, label %.lr.ph.i276, label %.preheader.i273

.lr.ph.i276:                                      ; preds = %bb.aa
  %i.ky = load ptr, ptr %i.jn, align 8, !tbaa !29 ; 3 uses
  %i.kz = load ptr, ptr %i.jo, align 8, !tbaa !28 ; 3 uses
  br i1 %i.ke, label %.epil.preheader696, label %.lr.ph.i276.new

.preheader.i273.loopexit.unr-lcssa:               ; preds = %.lr.ph.i276.new
  br i1 %lcmp.mod699.not, label %.preheader.i273, label %.epil.preheader696

.epil.preheader696:                               ; preds = %.preheader.i273.loopexit.unr-lcssa, %.lr.ph.i276
  %indvars.iv.i278.epil.init = phi i64 [ 0, %.lr.ph.i276 ], [ %indvars.iv.next.i279.1, %.preheader.i273.loopexit.unr-lcssa ] ; 2 uses
  %.04452.i.epil.init = phi i32 [ %i.kx, %.lr.ph.i276 ], [ %i.mm, %.preheader.i273.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod701)
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i278.epil.init
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !30
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !31
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !32
  %i.lh = icmp eq i32 %i.lg, 1
  %.neg.i.i.epil = sext i1 %i.lh to i32
  %i.li = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.i278.epil.init
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !27
  %i.ll = add i32 %i.lk, %.04452.i.epil.init
  %i.lm = add i32 %i.ll, %.neg.i.i.epil
  br label %.preheader.i273

.preheader.i273:                                  ; preds = %.epil.preheader696, %.preheader.i273.loopexit.unr-lcssa, %bb.aa
  %.044.lcssa.i = phi i32 [ %i.kx, %bb.aa ], [ %i.mm, %.preheader.i273.loopexit.unr-lcssa ], [ %i.lm, %.epil.preheader696 ]
  br label %bb.ab

.lr.ph.i276.new:                                  ; preds = %.lr.ph.i276, %.lr.ph.i276.new
  %indvars.iv.i278 = phi i64 [ %indvars.iv.next.i279.1, %.lr.ph.i276.new ], [ 0, %.lr.ph.i276 ] ; 4 uses
  %.04452.i = phi i32 [ %i.mm, %.lr.ph.i276.new ], [ %i.kx, %.lr.ph.i276 ]
  %niter703 = phi i64 [ %niter703.next.1, %.lr.ph.i276.new ], [ 0, %.lr.ph.i276 ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i278
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !30
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !31
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !32
  %i.lu = icmp eq i32 %i.lt, 1
  %.neg.i.i = sext i1 %i.lu to i32
  %i.lv = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.i278
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !27
  %i.ly = add i32 %i.lx, %.04452.i
  %i.lz = add i32 %i.ly, %.neg.i.i
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i278, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i279
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !30
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !31
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !32
  %i.mh = icmp eq i32 %i.mg, 1
  %.neg.i.i.1 = sext i1 %i.mh to i32
  %i.mi = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.next.i279
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !27
  %i.ml = add i32 %i.mk, %i.lz
  %i.mm = add i32 %i.ml, %.neg.i.i.1              ; 3 uses
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i278, 2 ; 2 uses
  %niter703.next.1 = add i64 %niter703, 2         ; 2 uses
  %niter703.ncmp.1 = icmp eq i64 %niter703.next.1, %unroll_iter702
  br i1 %niter703.ncmp.1, label %.preheader.i273.loopexit.unr-lcssa, label %.lr.ph.i276.new, !llvm.loop !53

bb.ab:                                            ; preds = %bb.ad, %.preheader.i273
  %indvars.iv61.i = phi i64 [ %.lcssa461.a, %.preheader.i273 ], [ %indvars.iv.next62.i, %bb.ad ] ; 3 uses
  %.04355.i = phi i32 [ 0, %.preheader.i273 ], [ %i.nd, %bb.ad ]
  %i.mn = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv61.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !27
  %i.mq = icmp ugt i32 %i.mp, 1
  br i1 %i.mq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mr = load ptr, ptr %i.jo, align 8, !tbaa !28
  %i.ms = sub nsw i64 %indvars.iv61.i, %.lcssa461.a
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !30
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !31
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !32
  %i.na = icmp ugt i32 %i.mz, 1
  %i.nb = zext i1 %i.na to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.nc = phi i32 [ 1, %bb.ab ], [ %i.nb, %bb.ac ]
  %i.nd = add nuw nsw i32 %i.nc, %.04355.i        ; 3 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next62.i to i32
  %exitcond64.not.i = icmp eq i32 %i.km, %lftr.wideiv.i
  br i1 %exitcond64.not.i, label %._crit_edge.i274.loopexit, label %bb.ab, !llvm.loop !54

._crit_edge.i274.loopexit:                        ; preds = %bb.ad
  %i.ne = load i32, ptr %i.ay, align 8, !tbaa !36
  %i.nf = icmp slt i32 %i.kn, %i.ne
  br i1 %i.nf, label %bb.ae, label %computeLB.exit

bb.ae:                                            ; preds = %._crit_edge.i274.loopexit
  %i.ng = load ptr, ptr %i.jo, align 8, !tbaa !28
  br i1 %i.ko, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.nh = getelementptr [4 x i8], ptr %i.ku, i64 %i.ki
  %i.ni = getelementptr i8, ptr %i.nh, i64 4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !30
  %i.nk = zext i32 %i.nj to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.nl = load ptr, ptr %i.jn, align 8, !tbaa !29
  %i.nm = getelementptr [4 x i8], ptr %i.nl, i64 %.lcssa460
  %i.nn = getelementptr i8, ptr %i.nm, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !30
  %i.np = sext i32 %i.no to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi i64 [ %i.np, %bb.ag ], [ %i.nk, %bb.af ]
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.ng, i64 %.sink.i
  %.pn.i = load ptr, ptr %i.nq, align 8, !tbaa !31
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !32
  %i.nr = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.kp
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !27
  %i.nu = icmp ugt i32 %.0.i, 1
  %.neg.i275 = sext i1 %i.nu to i32
  %i.nv = sub i32 %.neg.i275, %i.fz
  %i.nw = add i32 %i.nv, %i.nt
  %i.nx = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 %i.nw)
  br label %computeLB.exit

computeLB.exit:                                   ; preds = %._crit_edge.i274.loopexit, %bb.ah
  %.042.i = phi i32 [ %i.nx, %bb.ah ], [ %i.nd, %._crit_edge.i274.loopexit ]
  %i.ny = add nsw i32 %.042.i, %.044.lcssa.i
  %.not255 = icmp slt i32 %i.ny, %.1220509
  br i1 %.not255, label %bb.ai, label %.loopexit438

bb.ai:                                            ; preds = %computeLB.exit
  br i1 %.not18.i, label %.thread, label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %bb.ai, %.loopexit.i
  %indvars.iv.i283 = phi i64 [ %indvars.iv.next.i284, %.loopexit.i ], [ 0, %bb.ai ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i283
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !30
  %i.ob = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.oc = zext i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !30 ; 2 uses
  %i.of = add nsw i64 %indvars.iv.i283, %.lcssa461.a ; 2 uses
  %i.og = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.oe) #10 ; 2 uses
  %i.oh = sext i32 %i.og to i64
  %.not13.i.i = icmp sgt i64 %i.of, %i.oh
  br i1 %.not13.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i281, %bb.aj
  %.015.i.i = phi i32 [ %i.ok, %bb.aj ], [ %i.og, %.lr.ph.i281 ] ; 3 uses
end_hunk_1
begin_hunk_2_@cuddExact:bb.a

bb.ak:                                            ; preds = %.loopexit.i
  %i.om = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.on = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.oo = sub i32 %i.om, %i.on                    ; 3 uses
  %.not433 = icmp slt i32 %i.oo, %.1220509
  %.1220.mux = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 %.1220509)
  br i1 %.not433, label %.lr.ph.i289, label %updateUB.exit

.thread:                                          ; preds = %bb.ai
  %i.op = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.oq = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.or = sub i32 %i.op, %i.oq
  %spec.select428 = tail call i32 @llvm.smin.i32(i32 %i.or, i32 %.1220509)
  br label %updateUB.exit

.lr.ph.i289:                                      ; preds = %bb.ak
  %i.os = load ptr, ptr %i.jn, align 8, !tbaa !29
  %scevgep = getelementptr i8, ptr %i.os, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fs, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.jw, i1 false), !tbaa !30
  br label %updateUB.exit

updateUB.exit:                                    ; preds = %.lr.ph.i289, %.thread, %bb.ak
  %.015.i = phi i32 [ %.1220.mux, %bb.ak ], [ %spec.select428, %.thread ], [ %i.oo, %.lr.ph.i289 ] ; 2 uses
  br i1 %i.kq, label %.lr.ph502, label %.loopexit438

.lr.ph502:                                        ; preds = %updateUB.exit
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.ki
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph502, %checkSymmInfo.exit
  %indvars.iv570 = phi i64 [ %i.kh, %.lr.ph502 ], [ %indvars.iv.next571.pre-phi, %checkSymmInfo.exit ] ; 7 uses
  %.2501 = phi i32 [ %.015.i, %.lr.ph502 ], [ %.3, %checkSymmInfo.exit ] ; 6 uses
  %.1225500 = phi i32 [ %.0224508, %.lr.ph502 ], [ %.2226, %checkSymmInfo.exit ] ; 10 uses
  %i.ou = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ov = trunc nuw nsw i64 %indvars.iv570 to i32
  %i.ow = add i32 %i.jq, %i.ov
  %i.ox = sext i32 %i.ow to i64                   ; 2 uses
  %i.oy = getelementptr inbounds [56 x i8], ptr %i.ou, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !27
  %i.pb = icmp eq i32 %i.pa, 1
  %.pre586 = load ptr, ptr %i.jn, align 8, !tbaa !29 ; 7 uses
  %.pre587 = load ptr, ptr %i.jo, align 8, !tbaa !28 ; 2 uses
  br i1 %i.pb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.pc = getelementptr inbounds [4 x i8], ptr %.pre586, i64 %i.ox
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !30
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %.pre587, i64 %i.pe
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !31
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !32
  %i.pj = icmp eq i32 %i.pi, 1
  br i1 %i.pj, label %.checkSymmInfo.exit_crit_edge, label %bb.an

.checkSymmInfo.exit_crit_edge:                    ; preds = %bb.am
  %.pre589 = add nsw i64 %indvars.iv570, -1
  br label %checkSymmInfo.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.pk = getelementptr inbounds [4 x i8], ptr %.pre586, i64 %i.kr
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !30
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %.pre587, i64 %i.pm
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !31
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !32
  %i.pr = icmp eq i32 %i.pq, 1
  %.neg.i294 = sext i1 %i.pr to i32
  %i.ps = getelementptr inbounds [56 x i8], ptr %i.ou, i64 %i.kr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !27
  %i.pv = add i32 %i.pu, %i.kx
  %i.pw = add i32 %i.pv, %.neg.i294               ; 2 uses
  br i1 %.not18.i, label %.preheader59.i, label %.lr.ph.i295.preheader

.lr.ph.i295.preheader:                            ; preds = %bb.an
  br i1 %lcmp.mod705.not, label %.lr.ph.i295.prol.loopexit, label %.lr.ph.i295.prol

.lr.ph.i295.prol:                                 ; preds = %.lr.ph.i295.preheader, %.lr.ph.i295.prol
  %indvars.iv.i296.prol = phi i64 [ %indvars.iv.next.i297.prol, %.lr.ph.i295.prol ], [ %.lcssa461.a, %.lr.ph.i295.preheader ] ; 2 uses
  %prol.iter706 = phi i32 [ %prol.iter706.next, %.lr.ph.i295.prol ], [ 0, %.lr.ph.i295.preheader ]
  %i.px = getelementptr inbounds [4 x i8], ptr %.pre586, i64 %indvars.iv.i296.prol
  %i.py = load i32, ptr %i.px, align 4, !tbaa !30
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds i8, ptr %i.fv, i64 %i.pz
  store i8 0, ptr %i.qa, align 1, !tbaa !58
  %indvars.iv.next.i297.prol = add nsw i64 %indvars.iv.i296.prol, 1 ; 2 uses
  %prol.iter706.next = add i32 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i32 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %.lr.ph.i295.prol.loopexit, label %.lr.ph.i295.prol, !llvm.loop !59

.lr.ph.i295.prol.loopexit:                        ; preds = %.lr.ph.i295.prol, %.lr.ph.i295.preheader
  %indvars.iv.i296.unr = phi i64 [ %.lcssa461.a, %.lr.ph.i295.preheader ], [ %indvars.iv.next.i297.prol, %.lr.ph.i295.prol ]
  br i1 %i.kf, label %.preheader59.i, label %.lr.ph.i295

.preheader59.i:                                   ; preds = %.lr.ph.i295.prol.loopexit, %.lr.ph.i295, %bb.an
  br i1 %.not5662.i, label %.preheader.i302, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader59.i
  br i1 %lcmp.mod708.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i.prol
  %indvars.iv85.i.prol = phi i64 [ %indvars.iv.next86.i.prol, %.lr.ph64.i.prol ], [ %i.ki, %.lr.ph64.i.preheader ] ; 2 uses
  %prol.iter709 = phi i32 [ %prol.iter709.next, %.lr.ph64.i.prol ], [ 0, %.lr.ph64.i.preheader ]
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i.prol
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !30
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.qd
  store i8 1, ptr %i.qe, align 1, !tbaa !58
  %indvars.iv.next86.i.prol = add nuw nsw i64 %indvars.iv85.i.prol, 1 ; 2 uses
  %prol.iter709.next = add i32 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i32 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol, !llvm.loop !60

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %indvars.iv85.i.unr = phi i64 [ %i.ki, %.lr.ph64.i.preheader ], [ %indvars.iv.next86.i.prol, %.lr.ph64.i.prol ]
  br i1 %i.ks, label %.preheader.thread.i, label %.lr.ph64.i

.lr.ph.i295:                                      ; preds = %.lr.ph.i295.prol.loopexit, %.lr.ph.i295
  %indvars.iv.i296 = phi i64 [ %indvars.iv.next.i297.3, %.lr.ph.i295 ], [ %indvars.iv.i296.unr, %.lr.ph.i295.prol.loopexit ] ; 5 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %.pre586, i64 %indvars.iv.i296
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !30
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds i8, ptr %i.fv, i64 %i.qh
  store i8 0, ptr %i.qi, align 1, !tbaa !58
  %i.qj = getelementptr [4 x i8], ptr %.pre586, i64 %indvars.iv.i296
  %i.qk = getelementptr i8, ptr %i.qj, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !30
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.fv, i64 %i.qm
  store i8 0, ptr %i.qn, align 1, !tbaa !58
  %i.qo = getelementptr [4 x i8], ptr %.pre586, i64 %indvars.iv.i296
  %i.qp = getelementptr i8, ptr %i.qo, i64 8
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !30
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.fv, i64 %i.qr
  store i8 0, ptr %i.qs, align 1, !tbaa !58
  %i.qt = getelementptr [4 x i8], ptr %.pre586, i64 %indvars.iv.i296
  %i.qu = getelementptr i8, ptr %i.qt, i64 12
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !30
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.fv, i64 %i.qw
  store i8 0, ptr %i.qx, align 1, !tbaa !58
  %indvars.iv.next.i297.3 = add nsw i64 %indvars.iv.i296, 4 ; 2 uses
  %lftr.wideiv.i298.3 = trunc i64 %indvars.iv.next.i297.3 to i32
  %exitcond.not.i299.3 = icmp eq i32 %.2232491, %lftr.wideiv.i298.3
  br i1 %exitcond.not.i299.3, label %.preheader59.i, label %.lr.ph.i295, !llvm.loop !61

.preheader.i302:                                  ; preds = %.preheader59.i
  %i.qy = icmp slt i32 %.1225500, 1
  br i1 %i.qy, label %._crit_edge72.i, label %.lr.ph81.i

.preheader.thread.i:                              ; preds = %.lr.ph64.i, %.lr.ph64.i.prol.loopexit
  %i.qz = icmp sgt i32 %.1225500, 0
  br i1 %i.qz, label %.lr.ph67.preheader.i, label %._crit_edge72.i

.lr.ph67.preheader.i:                             ; preds = %.preheader.thread.i
  %wide.trip.count.i300 = zext nneg i32 %.1225500 to i64
  br label %.lr.ph67.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i.3, %.lr.ph64.i ], [ %indvars.iv85.i.unr, %.lr.ph64.i.prol.loopexit ] ; 5 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !30
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rc
  store i8 1, ptr %i.rd, align 1, !tbaa !58
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !30
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rh
  store i8 1, ptr %i.ri, align 1, !tbaa !58
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !30
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rm
  store i8 1, ptr %i.rn, align 1, !tbaa !58
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv85.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !30
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rr
  store i8 1, ptr %i.rs, align 1, !tbaa !58
  %indvars.iv.next86.i.3 = add nuw nsw i64 %indvars.iv85.i, 4 ; 2 uses
  %lftr.wideiv88.i.3 = trunc i64 %indvars.iv.next86.i.3 to i32
  %exitcond89.not.i.3 = icmp eq i32 %i.bb, %lftr.wideiv88.i.3
  br i1 %exitcond89.not.i.3, label %.preheader.thread.i, label %.lr.ph64.i, !llvm.loop !62

.lr.ph67.i:                                       ; preds = %bb.aq, %.lr.ph67.preheader.i
  %indvars.iv95.i = phi i64 [ 0, %.lr.ph67.preheader.i ], [ %indvars.iv.next96.i, %bb.aq ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %.0215519, i64 %indvars.iv95.i
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph67.i
  %indvars.iv90.i = phi i64 [ %i.ki, %.lr.ph67.i ], [ %indvars.iv.next91.i, %bb.ap ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv90.i
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !30
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !58
  %i.sa = icmp eq i8 %i.rz, 0
  br i1 %i.sa, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next91.i to i32
  %exitcond94.not.i = icmp eq i32 %i.bb, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %._crit_edge.i301.a, label %bb.ao, !llvm.loop !63

._crit_edge.i301.a:                               ; preds = %bb.ap
  %i.sb = trunc nuw nsw i64 %indvars.iv95.i to i32
  br label %._crit_edge72.i

bb.aq:                                            ; preds = %bb.ao
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count.i300
  br i1 %exitcond98.not.i, label %.lr.ph81.i, label %.lr.ph67.i, !llvm.loop !64

._crit_edge72.i:                                  ; preds = %._crit_edge.i301.a, %.preheader.thread.i, %.preheader.i302
  %.2.lcssa.i = phi i32 [ 0, %.preheader.i302 ], [ %i.sb, %._crit_edge.i301.a ], [ 0, %.preheader.thread.i ] ; 3 uses
  %i.sc = icmp eq i32 %.2.lcssa.i, %.1225500
  br i1 %i.sc, label %.lr.ph81.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge72.i
  %i.sd = zext nneg i32 %.2.lcssa.i to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.0211521, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !30
  %i.sg = icmp slt i32 %i.pw, %i.sf
  br i1 %i.sg, label %.lr.ph81.i, label %updateEntry.exit

.lr.ph81.i:                                       ; preds = %bb.aq, %.preheader.i302, %._crit_edge72.i, %bb.ar
  %i.sh = phi i32 [ 1, %._crit_edge72.i ], [ 0, %bb.ar ], [ 1, %.preheader.i302 ], [ 1, %bb.aq ]
  %.2.lcssa110.i = phi i32 [ %.1225500, %._crit_edge72.i ], [ %.2.lcssa.i, %bb.ar ], [ %.1225500, %.preheader.i302 ], [ %.1225500, %bb.aq ]
  %.pre.i = zext nneg i32 %.2.lcssa110.i to i64   ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %.0215519, i64 %.pre.i
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !39 ; 7 uses
  %i.sk = ptrtoaddr ptr %i.sj to i64
  %i.sl = sub i64 %i.kv, %i.sk
  %diff.check649 = icmp ugt i64 %i.sl, -32
  %or.cond665 = select i1 %min.iters.check651, i1 true, i1 %diff.check649
  br i1 %or.cond665, label %scalar.ph650.preheader, label %vector.body654

vector.body654:                                   ; preds = %.lr.ph81.i, %vector.body654
  %index655 = phi i64 [ %index.next658, %vector.body654 ], [ 0, %.lr.ph81.i ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %index655 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %wide.load656 = load <4 x i32>, ptr %i.sm, align 4, !tbaa !30
  %wide.load657 = load <4 x i32>, ptr %i.sn, align 4, !tbaa !30
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index655 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  store <4 x i32> %wide.load656, ptr %i.so, align 4, !tbaa !30
  store <4 x i32> %wide.load657, ptr %i.sp, align 4, !tbaa !30
  %index.next658 = add nuw i64 %index655, 8       ; 2 uses
  %i.sq = icmp eq i64 %index.next658, %n.vec653
  br i1 %i.sq, label %middle.block659, label %vector.body654, !llvm.loop !65

middle.block659:                                  ; preds = %vector.body654
  br i1 %cmp.n660, label %._crit_edge82.i, label %scalar.ph650.preheader

scalar.ph650.preheader:                           ; preds = %.lr.ph81.i, %middle.block659
  %indvars.iv99.i.ph = phi i64 [ 0, %.lr.ph81.i ], [ %n.vec653, %middle.block659 ] ; 3 uses
  br i1 %lcmp.mod711.not, label %scalar.ph650.prol.loopexit, label %scalar.ph650.prol

scalar.ph650.prol:                                ; preds = %scalar.ph650.preheader, %scalar.ph650.prol
  %indvars.iv99.i.prol = phi i64 [ %indvars.iv.next100.i.prol, %scalar.ph650.prol ], [ %indvars.iv99.i.ph, %scalar.ph650.preheader ] ; 3 uses
  %prol.iter712 = phi i64 [ %prol.iter712.next, %scalar.ph650.prol ], [ 0, %scalar.ph650.preheader ]
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv99.i.prol
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !30
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv99.i.prol
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !30
  %indvars.iv.next100.i.prol = add nuw nsw i64 %indvars.iv99.i.prol, 1 ; 2 uses
  %prol.iter712.next = add i64 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i64 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %scalar.ph650.prol.loopexit, label %scalar.ph650.prol, !llvm.loop !66

scalar.ph650.prol.loopexit:                       ; preds = %scalar.ph650.prol, %scalar.ph650.preheader
  %indvars.iv99.i.unr = phi i64 [ %indvars.iv99.i.ph, %scalar.ph650.preheader ], [ %indvars.iv.next100.i.prol, %scalar.ph650.prol ]
  %i.su = sub nsw i64 %indvars.iv99.i.ph, %wide.trip.count.i282
  %i.sv = icmp ugt i64 %i.su, -4
  br i1 %i.sv, label %._crit_edge82.i, label %scalar.ph650

scalar.ph650:                                     ; preds = %scalar.ph650.prol.loopexit, %scalar.ph650
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.3, %scalar.ph650 ], [ %indvars.iv99.i.unr, %scalar.ph650.prol.loopexit ] ; 6 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv99.i
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !30
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv99.i
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !30
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next100.i
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !30
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv.next100.i
  store i32 %i.ta, ptr %i.tb, align 4, !tbaa !30
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next100.i.1
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !30
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv.next100.i.1
  store i32 %i.td, ptr %i.te, align 4, !tbaa !30
  %indvars.iv.next100.i.2 = add nuw nsw i64 %indvars.iv99.i, 3 ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.next100.i.2
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !30
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv.next100.i.2
  store i32 %i.tg, ptr %i.th, align 4, !tbaa !30
  %indvars.iv.next100.i.3 = add nuw nsw i64 %indvars.iv99.i, 4 ; 2 uses
  %exitcond103.not.i.3 = icmp eq i64 %indvars.iv.next100.i.3, %wide.trip.count.i282
  br i1 %exitcond103.not.i.3, label %._crit_edge82.i, label %scalar.ph650, !llvm.loop !67

._crit_edge82.i:                                  ; preds = %scalar.ph650.prol.loopexit, %scalar.ph650, %middle.block659
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.0211521, i64 %.pre.i
  store i32 %i.pw, ptr %i.ti, align 4, !tbaa !30
  %i.tj = add nsw i32 %i.sh, %.1225500
  br label %updateEntry.exit

updateEntry.exit:                                 ; preds = %bb.ar, %._crit_edge82.i
  %.053.i = phi i32 [ %i.tj, %._crit_edge82.i ], [ %.1225500, %bb.ar ] ; 5 uses
  %i.tk = icmp eq i64 %indvars.iv570, 0
  br i1 %i.tk, label %.loopexit438, label %bb.as

bb.as:                                            ; preds = %updateEntry.exit
  %i.tl = add nsw i64 %indvars.iv570, -1          ; 6 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !30 ; 5 uses
  %.pn14.i = sext i32 %i.tn to i64
  %.0.in15.i = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pn14.i
  %.016.i = load i32, ptr %.0.in15.i, align 4, !tbaa !30 ; 2 uses
  %.not17.i = icmp eq i32 %.016.i, %i.tn
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %bb.as, %bb.au
  %.018.i = phi i32 [ %.0.i307, %bb.au ], [ %.016.i, %bb.as ] ; 3 uses
  %i.to = icmp slt i32 %i.tn, %.018.i
  br i1 %i.to, label %bb.at, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i304
  %.pre.i305 = sext i32 %.018.i to i64
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i304
  %i.tp = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.tq = sext i32 %.018.i to i64                 ; 2 uses
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tp, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !30
  %i.tt = sext i32 %i.ts to i64
  %.not13.i = icmp slt i64 %i.ki, %i.tt
  br i1 %.not13.i, label %bb.au, label %checkSymmInfo.exit

bb.au:                                            ; preds = %bb.at, %.lr.ph._crit_edge.i
  %.pn.pre-phi.i = phi i64 [ %.pre.i305, %.lr.ph._crit_edge.i ], [ %i.tq, %bb.at ]
  %.0.in.i306 = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pn.pre-phi.i
  %.0.i307 = load i32, ptr %.0.in.i306, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq i32 %.0.i307, %i.tn
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i304, !llvm.loop !68

.loopexit:                                        ; preds = %bb.au, %bb.as
  %.not434 = icmp sgt i64 %indvars.iv570, %i.ki
  br i1 %.not434, label %pushDown.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.tu = shl nuw nsw i64 %i.tl, 2
  %scevgep.i = getelementptr i8, ptr %i.ku, i64 %i.tu ; 2 uses
  %scevgep14.i = getelementptr i8, ptr %scevgep.i, i64 4
  %i.tv = sub i64 %i.ki, %indvars.iv570
  %i.tw = shl i64 %i.tv, 2
  %i.tx = and i64 %i.tw, 17179869180
  %i.ty = add nuw nsw i64 %i.tx, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep14.i, i64 %i.ty, i1 false), !tbaa !30
  br label %pushDown.exit

pushDown.exit:                                    ; preds = %.loopexit, %.lr.ph.preheader.i
  store i32 %i.tn, ptr %i.ot, align 4, !tbaa !30
  br i1 %.not18.i, label %.thread346, label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %pushDown.exit, %.loopexit.i319
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i320, %.loopexit.i319 ], [ 0, %pushDown.exit ] ; 3 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.i313
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !30
  %i.ub = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.uc = zext i32 %i.ua to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !30 ; 2 uses
  %i.uf = add nsw i64 %indvars.iv.i313, %.lcssa461.a ; 2 uses
  %i.ug = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.ue) #10 ; 2 uses
  %i.uh = sext i32 %i.ug to i64
  %.not13.i.i314 = icmp sgt i64 %i.uf, %i.uh
  br i1 %.not13.i.i314, label %.loopexit.i319, label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %.lr.ph.i311, %bb.av
  %.015.i.i316 = phi i32 [ %i.uk, %bb.av ], [ %i.ug, %.lr.ph.i311 ] ; 3 uses
  %.01214.i.i317 = phi i32 [ %.015.i.i316, %bb.av ], [ %i.ue, %.lr.ph.i311 ]
  %i.ui = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.015.i.i316, i32 noundef %.01214.i.i317) #10
  %i.uj = icmp eq i32 %i.ui, 0
  br i1 %i.uj, label %ddShuffle.exit.thread348, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i315
  %i.uk = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.015.i.i316) #10 ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %.not.i.i318 = icmp sgt i64 %i.uf, %i.ul
  br i1 %.not.i.i318, label %.loopexit.i319, label %.lr.ph.i.i315, !llvm.loop !56

.loopexit.i319:                                   ; preds = %bb.av, %.lr.ph.i311
  %indvars.iv.next.i320 = add nuw nsw i64 %indvars.iv.i313, 1 ; 2 uses
  %exitcond.not.i321 = icmp eq i64 %indvars.iv.next.i320, %wide.trip.count.i282
  br i1 %exitcond.not.i321, label %bb.aw, label %.lr.ph.i311, !llvm.loop !57

bb.aw:                                            ; preds = %.loopexit.i319
  %i.um = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.un = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.uo = sub i32 %i.um, %i.un                    ; 3 uses
  %.not435 = icmp slt i32 %i.uo, %.2501
  %.2.mux = tail call i32 @llvm.smin.i32(i32 %i.uo, i32 %.2501)
  br i1 %.not435, label %.lr.ph.i328, label %checkSymmInfo.exit

.thread346:                                       ; preds = %pushDown.exit
  %i.up = load i32, ptr %i.jh, align 4, !tbaa !51
  %i.uq = load i32, ptr %i.ji, align 8, !tbaa !52
  %i.ur = sub i32 %i.up, %i.uq
  %spec.select430 = tail call i32 @llvm.smin.i32(i32 %i.ur, i32 %.2501)
  br label %checkSymmInfo.exit

.lr.ph.i328:                                      ; preds = %bb.aw
  %i.us = load ptr, ptr %i.jn, align 8, !tbaa !29
end_hunk_2
