Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddExact?download=true
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.pre587 = sext i32 %2 to i64
  br label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !65
  %i.t = icmp eq i32 %i.s, 1
  %i.u = icmp slt i64 %indvars.iv, %i.l
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.v = getelementptr inbounds [56 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !64
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.b, label %.critedge.loopexit, !llvm.loop !38

.critedge.loopexit:                               ; preds = %bb.b, %bb.c
  %.lcssa461.ph = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %bb.b ] ; 2 uses
  %.0236.lcssa464.ph = trunc i64 %.lcssa461.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.critedge.loopexit
  %.pre-phi = phi i64 [ %.pre587, %..critedge_crit_edge ], [ %i.l, %.critedge.loopexit ] ; 3 uses
  %.0236.lcssa464 = phi i32 [ %1, %..critedge_crit_edge ], [ %.0236.lcssa464.ph, %.critedge.loopexit ] ; 18 uses
  %.lcssa461 = phi i64 [ %i.c, %..critedge_crit_edge ], [ %.lcssa461.ph, %.critedge.loopexit ] ; 9 uses
  %i.z = getelementptr inbounds [56 x i8], ptr %i.b, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !64
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph475, label %.critedge2

.lr.ph475:                                        ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = sext i32 %.0236.lcssa464 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph475, %bb.e
  %indvars.iv547 = phi i64 [ %.pre-phi, %.lr.ph475 ], [ %indvars.iv.next548, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv547
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !65
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = icmp sgt i64 %indvars.iv547, %i.ah
  %or.cond263 = and i1 %i.aq, %i.ap
  br i1 %or.cond263, label %bb.e, label %.critedge2.loopexit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next548 = add nsw i64 %indvars.iv547, -1 ; 3 uses
  %i.ar = getelementptr inbounds [56 x i8], ptr %i.b, i64 %indvars.iv.next548
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !64
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.d, label %.critedge2.loopexit, !llvm.loop !39

.critedge2.loopexit:                              ; preds = %bb.d, %bb.e
  %.lcssa460.ph = phi i64 [ %indvars.iv.next548, %bb.e ], [ %indvars.iv547, %bb.d ] ; 2 uses
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
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !34 ; 5 uses
  %i.ba = sub i32 %.0235.lcssa, %.0236.lcssa464   ; 5 uses
  %i.bb = add i32 %i.ba, 1                        ; 12 uses
  %.0230481 = add nsw i32 %.0236.lcssa464, 1      ; 2 uses
  %i.bc = icmp slt i32 %.0230481, %.0235.lcssa
  br i1 %i.bc, label %.lr.ph484, label %._crit_edge

.lr.ph484:                                        ; preds = %bb.g
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = sext i32 %.0230481 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph484, %bb.j
  %indvars.iv551 = phi i64 [ %i.bg, %.lr.ph484 ], [ %indvars.iv.next552, %bb.j ] ; 3 uses
  %.0221482 = phi i32 [ 0, %.lr.ph484 ], [ %.1222, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds [56 x i8], ptr %i.bd, i64 %indvars.iv551
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !64
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !29
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv551
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !65
  %i.bu = icmp eq i32 %i.bt, 1
  %i.bv = zext i1 %i.bu to i32
  %spec.select = add nsw i32 %.0221482, %i.bv
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1222 = phi i32 [ %.0221482, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %indvars.iv.next552 = add nsw i64 %indvars.iv551, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next552 to i32
  %exitcond.not = icmp eq i32 %.0235.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !40

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
  br i1 %i.cn, label %getMaxBinomial.exit, label %.lr.ph.i, !llvm.loop !41

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
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !35
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %.thread425.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.da = icmp sgt i32 %.017.i340, 1              ; 2 uses
  br i1 %i.da, label %.lr.ph.i264, label %getMatrix.exit

.lr.ph.i264:                                      ; preds = %.preheader.i
  %i.db = sext i32 %i.bb to i64                   ; 9 uses
  %wide.trip.count.i = zext nneg i32 %.017.i340 to i64
  %load_initial661 = load ptr, ptr %i.cu, align 8 ; 2 uses
  %i.dc = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.dc, 7                    ; 3 uses
  %i.dd = add nsw i32 %.017.i340, -2
  %i.de = icmp ult i32 %i.dd, 7
  br i1 %i.de, label %.epil.preheader, label %.lr.ph.i264.new

.lr.ph.i264.new:                                  ; preds = %.lr.ph.i264
  %unroll_iter = and i64 %i.dc, -8
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i264.new
  %store_forwarded662 = phi ptr [ %load_initial661, %.lr.ph.i264.new ], [ %i.eb, %bb.o ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i264.new ], [ %indvars.iv.next.i.7, %bb.o ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i264.new ], [ %niter.next.7, %bb.o ]
  %i.df = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dg = getelementptr inbounds [4 x i8], ptr %store_forwarded662, i64 %i.db ; 2 uses
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !35
  %i.dh = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.db ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !35
  %i.dk = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.db ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !35
  %i.dn = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.do = getelementptr i8, ptr %i.dn, i64 24
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.db ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !35
  %i.dq = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.db ; 2 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !35
  %i.dt = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.du = getelementptr i8, ptr %i.dt, i64 40
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.db ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !35
  %i.dw = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 48
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.db ; 2 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !35
  %i.dz = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 56
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.db ; 3 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !35
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %getMatrix.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !42

getMatrix.exit.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %getMatrix.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %getMatrix.exit.loopexit.unr-lcssa, %.lr.ph.i264
  %store_forwarded662.epil.init = phi ptr [ %load_initial661, %.lr.ph.i264 ], [ %i.eb, %getMatrix.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i264 ], [ %indvars.iv.next.i.7, %getMatrix.exit.loopexit.unr-lcssa ]
  %lcmp.mod682 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod682)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %store_forwarded662.epil = phi ptr [ %store_forwarded662.epil.init, %.epil.preheader ], [ %i.ed, %bb.p ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.ec = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv.i.epil
  %i.ed = getelementptr inbounds [4 x i8], ptr %store_forwarded662.epil, i64 %i.db ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !35
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %getMatrix.exit, label %bb.p, !llvm.loop !43

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
end_hunk_0
begin_hunk_1_@cuddExact:bb.a
  %i.gf = ptrtoaddr ptr %i.gb to i64
  %i.gg = shl nsw i64 %i.gd, 2
  %i.gh = add i64 %i.gg, %i.gf
  %i.gi = sub i64 %i.gh, %i.ge
  %diff.check = icmp ugt i64 %i.gi, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  %wide.load = load <4 x i32>, ptr %i.gj, align 4, !tbaa !31 ; 2 uses
  %wide.load646 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !31 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store <4 x i32> %wide.load, ptr %i.gl, align 4, !tbaa !31
  store <4 x i32> %wide.load646, ptr %i.gm, align 4, !tbaa !31
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <4 x i32> %wide.load, ptr %i.gn, align 4, !tbaa !31
  store <4 x i32> %wide.load646, ptr %i.go, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge490, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph489, %middle.block
  %indvars.iv555.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph489 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter690 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  br i1 %lcmp.mod691.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv555.prol = phi i64 [ %indvars.iv.next556.prol, %scalar.ph.prol ], [ %indvars.iv555.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv555.prol
  %i.gq = load i32, ptr %gep.prol, align 4, !tbaa !31 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv555.prol
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !31
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv555.prol
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !31
  %indvars.iv.next556.prol = add nuw nsw i64 %indvars.iv555.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter690
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !46

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv555.unr = phi i64 [ %indvars.iv555.ph, %scalar.ph.preheader ], [ %indvars.iv.next556.prol, %scalar.ph.prol ]
  %i.gt = sub nsw i64 %indvars.iv555.ph, %wide.trip.count
  %i.gu = icmp ugt i64 %i.gt, -4
  br i1 %i.gu, label %._crit_edge490, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv555 = phi i64 [ %indvars.iv.next556.3, %scalar.ph ], [ %indvars.iv555.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv555
  %i.gv = load i32, ptr %gep, align 4, !tbaa !31  ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv555
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !31
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv555
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !31
  %indvars.iv.next556 = add nuw nsw i64 %indvars.iv555, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next556
  %i.gy = load i32, ptr %gep.1, align 4, !tbaa !31 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next556
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !31
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next556
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !31
  %indvars.iv.next556.1 = add nuw nsw i64 %indvars.iv555, 2 ; 3 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next556.1
  %i.hb = load i32, ptr %gep.2, align 4, !tbaa !31 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next556.1
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !31
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next556.1
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !31
  %indvars.iv.next556.2 = add nuw nsw i64 %indvars.iv555, 3 ; 3 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next556.2
  %i.he = load i32, ptr %gep.3, align 4, !tbaa !31 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next556.2
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !31
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next556.2
  store i32 %i.he, ptr %i.hg, align 4, !tbaa !31
  %indvars.iv.next556.3 = add nuw nsw i64 %indvars.iv555, 4 ; 2 uses
  %exitcond559.not.3 = icmp eq i64 %indvars.iv.next556.3, %wide.trip.count
  br i1 %exitcond559.not.3, label %._crit_edge490, label %scalar.ph, !llvm.loop !47

._crit_edge490:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.y
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !69 ; 3 uses
  %.2232491 = add i32 %.0235.lcssa, 1             ; 3 uses
  %i.hj = icmp slt i32 %.2232491, %i.az
  br i1 %i.hj, label %.lr.ph495, label %._crit_edge496

.lr.ph495:                                        ; preds = %._crit_edge490
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !29 ; 3 uses
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  %i.hp = sext i32 %.2232491 to i64               ; 4 uses
  %i.hq = add i32 %i.az, -2
  %i.hr = sub i32 %.0235.lcssa, %i.az
  %i.hs = and i32 %i.hr, 1
  %lcmp.mod693.not.not = icmp eq i32 %i.hs, 0
  br i1 %lcmp.mod693.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph495
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hp
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !31
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !65
  %i.ia = icmp eq i32 %i.hz, 1
  %.neg.i.prol = sext i1 %i.ia to i32
  %i.ib = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %i.hp
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !64
  %i.ie = add i32 %i.hi, %.neg.i.prol
  %i.if = add i32 %i.ie, %i.id                    ; 2 uses
  %indvars.iv.next561.prol = add nsw i64 %i.hp, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph495
  %.lcssa680.unr = phi i32 [ poison, %.lr.ph495 ], [ %i.if, %.prol.loopexit.unr-lcssa ]
  %indvars.iv560.unr = phi i64 [ %i.hp, %.lr.ph495 ], [ %indvars.iv.next561.prol, %.prol.loopexit.unr-lcssa ]
  %.0223492.unr = phi i32 [ %i.hi, %.lr.ph495 ], [ %i.if, %.prol.loopexit.unr-lcssa ]
  %i.ig = icmp eq i32 %i.hq, %.0235.lcssa
  br i1 %i.ig, label %._crit_edge496, label %.lr.ph495.new

.lr.ph495.new:                                    ; preds = %.prol.loopexit, %.lr.ph495.new
  %indvars.iv560 = phi i64 [ %indvars.iv.next561.1, %.lr.ph495.new ], [ %indvars.iv560.unr, %.prol.loopexit ] ; 4 uses
  %.0223492 = phi i32 [ %i.jg, %.lr.ph495.new ], [ %.0223492.unr, %.prol.loopexit ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv560
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !31
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !32
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !65
  %i.io = icmp eq i32 %i.in, 1
  %.neg.i = sext i1 %i.io to i32
  %i.ip = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %indvars.iv560
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !64
  %i.is = add i32 %.0223492, %.neg.i
  %i.it = add i32 %i.is, %i.ir
  %indvars.iv.next561 = add nsw i64 %indvars.iv560, 1 ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next561
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !31
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !32
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !65
  %i.jb = icmp eq i32 %i.ja, 1
  %.neg.i.1 = sext i1 %i.jb to i32
  %i.jc = getelementptr inbounds [56 x i8], ptr %i.ho, i64 %indvars.iv.next561
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !64
  %i.jf = add i32 %i.it, %.neg.i.1
  %i.jg = add i32 %i.jf, %i.je                    ; 2 uses
  %indvars.iv.next561.1 = add nsw i64 %indvars.iv560, 2 ; 2 uses
  %lftr.wideiv564.1 = trunc i64 %indvars.iv.next561.1 to i32
  %exitcond565.not.1 = icmp eq i32 %i.az, %lftr.wideiv564.1
  br i1 %exitcond565.not.1, label %._crit_edge496, label %.lr.ph495.new, !llvm.loop !48

._crit_edge496:                                   ; preds = %.prol.loopexit, %.lr.ph495.new, %._crit_edge490
  %.0223.lcssa = phi i32 [ %i.hi, %._crit_edge490 ], [ %.lcssa680.unr, %.prol.loopexit ], [ %i.jg, %.lr.ph495.new ]
  store i32 %.0223.lcssa, ptr %i.fo, align 4, !tbaa !31
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %.not254514 = icmp ugt i32 %i.ba, 2147483646
  br i1 %.not254514, label %._crit_edge524, label %.lr.ph523

.lr.ph523:                                        ; preds = %._crit_edge496
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !70
  %i.jk = load i32, ptr %i.ji, align 8, !tbaa !71
  %i.jl = sub i32 %i.jj, %i.jk
  %i.jm = icmp sgt i32 %.0236.lcssa464, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %wide.trip.count.i277 = zext i32 %.0236.lcssa464 to i64 ; 2 uses
  %.not18.i = icmp slt i32 %.0235.lcssa, %.0236.lcssa464 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %wide.trip.count.i282 = zext i32 %i.bb to i64   ; 7 uses
  %i.jq = add i32 %.0236.lcssa464, -1
  %i.jr = shl nsw i64 %.lcssa461, 2               ; 2 uses
  %i.js = trunc nsw i64 %.lcssa461 to i32
  %i.jt = sub i32 %.0235.lcssa, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.ju, 2
  %i.jw = add nuw nsw i64 %i.jv, 4                ; 2 uses
  %3 = zext nneg i32 %i.ba to i64
  %i.jx = add i32 %.0235.lcssa, 2
  %i.jy = sub i32 %i.jx, %.0236.lcssa464
  %wide.trip.count583 = zext i32 %i.jy to i64
  %i.jz = add i32 %.0235.lcssa, 1
  %i.ka = trunc i64 %.lcssa461 to i32             ; 2 uses
  %i.kb = sub i32 %i.jz, %i.ka
  %i.kc = sub i32 %.0235.lcssa, %i.ka
  %xtraiter696 = and i64 %wide.trip.count.i277, 1
  %i.kd = icmp eq i32 %.0236.lcssa464, 1
  %unroll_iter701 = and i64 %wide.trip.count.i277, 2147483646
  %lcmp.mod698.not = icmp eq i64 %xtraiter696, 0
  %lcmp.mod700 = trunc i32 %.0236.lcssa464 to i1
  %xtraiter703 = and i32 %i.kb, 3                 ; 2 uses
  %lcmp.mod704.not = icmp eq i32 %xtraiter703, 0
  %i.ke = icmp ult i32 %i.kc, 3
  %min.iters.check650 = icmp ult i32 %i.bb, 8
  %n.vec652 = and i64 %wide.trip.count.i282, 4294967288 ; 3 uses
  %cmp.n659 = icmp eq i64 %n.vec652, %wide.trip.count.i282
  %xtraiter709 = and i64 %wide.trip.count.i282, 3 ; 2 uses
  %lcmp.mod710.not = icmp eq i64 %xtraiter709, 0
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph523, %._crit_edge511
  %indvar = phi i32 [ 0, %.lr.ph523 ], [ %indvar.next, %._crit_edge511 ] ; 3 uses
  %indvars.iv579 = phi i64 [ 1, %.lr.ph523 ], [ %indvars.iv.next580, %._crit_edge511 ] ; 2 uses
  %indvars.iv567 = phi i32 [ %i.ba, %.lr.ph523 ], [ %indvars.iv.next568, %._crit_edge511 ] ; 2 uses
  %.0210521 = phi ptr [ %i.fo, %.lr.ph523 ], [ %.0211520, %._crit_edge511 ] ; 5 uses
  %.0211520 = phi ptr [ %i.ef, %.lr.ph523 ], [ %.0210521, %._crit_edge511 ] ; 6 uses
  %.0213519 = phi ptr [ %i.eh, %.lr.ph523 ], [ %.0215518, %._crit_edge511 ] ; 5 uses
  %.0215518 = phi ptr [ %i.cu, %.lr.ph523 ], [ %.0213519, %._crit_edge511 ] ; 6 uses
  %.0219517 = phi i32 [ %i.jl, %.lr.ph523 ], [ %.1220.lcssa, %._crit_edge511 ] ; 2 uses
  %.0228516 = phi i32 [ 1, %.lr.ph523 ], [ %.0224.lcssa, %._crit_edge511 ] ; 2 uses
  %i.kf = add i32 %indvar, 1
  %i.kg = sext i32 %indvars.iv567 to i64
  %i.kh = sub nuw nsw i64 %i.fq, %indvars.iv579   ; 10 uses
  %i.ki = icmp sgt i32 %.0228516, 0
  br i1 %i.ki, label %.lr.ph510, label %._crit_edge511

.lr.ph510:                                        ; preds = %bb.z
  %i.kj = trunc nsw i64 %i.kh to i32
  %i.kk = add i32 %.0236.lcssa464, %i.kj          ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0236.lcssa464, i32 %i.kk)
  %i.kl = add i32 %smax.i, 1
  %i.km = add nsw i32 %i.kk, 1                    ; 2 uses
  %i.kn = icmp slt i32 %i.kk, %.0235.lcssa
  %i.ko = sext i32 %i.km to i64
  %i.kp = icmp sgt i64 %i.kh, -1
  %i.kq = sext i32 %i.kk to i64                   ; 2 uses
  %.not5662.i = icmp sgt i64 %i.kh, %3
  %wide.trip.count577 = zext nneg i32 %.0228516 to i64
  %xtraiter706 = and i32 %i.kf, 3                 ; 2 uses
  %lcmp.mod707.not = icmp eq i32 %xtraiter706, 0
  %i.kr = icmp ult i32 %indvar, 3
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph510, %.loopexit438
  %indvars.iv573 = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next574, %.loopexit438 ] ; 3 uses
  %.1220508 = phi i32 [ %.0219517, %.lr.ph510 ], [ %.4, %.loopexit438 ] ; 5 uses
  %.0224507 = phi i32 [ 0, %.lr.ph510 ], [ %.3227, %.loopexit438 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.0213519, i64 %indvars.iv573
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !35 ; 19 uses
  %i.ku = ptrtoaddr ptr %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.0210521, i64 %indvars.iv573
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !31 ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28  ; 5 uses
  br i1 %i.jm, label %.lr.ph.i276, label %.preheader.i273

.lr.ph.i276:                                      ; preds = %bb.aa
  %i.kx = load ptr, ptr %i.jn, align 8, !tbaa !30 ; 3 uses
  %i.ky = load ptr, ptr %i.jo, align 8, !tbaa !29 ; 3 uses
  br i1 %i.kd, label %.epil.preheader695, label %.lr.ph.i276.new

.preheader.i273.loopexit.unr-lcssa:               ; preds = %.lr.ph.i276.new
  br i1 %lcmp.mod698.not, label %.preheader.i273, label %.epil.preheader695

.epil.preheader695:                               ; preds = %.preheader.i273.loopexit.unr-lcssa, %.lr.ph.i276
  %indvars.iv.i278.epil.init = phi i64 [ 0, %.lr.ph.i276 ], [ %indvars.iv.next.i279.1, %.preheader.i273.loopexit.unr-lcssa ] ; 2 uses
  %.04452.i.epil.init = phi i32 [ %i.kw, %.lr.ph.i276 ], [ %i.ml, %.preheader.i273.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod700)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv.i278.epil.init
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !31
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !32
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !65
  %i.lg = icmp eq i32 %i.lf, 1
  %.neg.i.i.epil = sext i1 %i.lg to i32
  %i.lh = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.i278.epil.init
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !64
  %i.lk = add i32 %i.lj, %.04452.i.epil.init
  %i.ll = add i32 %i.lk, %.neg.i.i.epil
  br label %.preheader.i273

.preheader.i273:                                  ; preds = %.epil.preheader695, %.preheader.i273.loopexit.unr-lcssa, %bb.aa
  %.044.lcssa.i = phi i32 [ %i.kw, %bb.aa ], [ %i.ml, %.preheader.i273.loopexit.unr-lcssa ], [ %i.ll, %.epil.preheader695 ]
  br label %bb.ab

.lr.ph.i276.new:                                  ; preds = %.lr.ph.i276, %.lr.ph.i276.new
  %indvars.iv.i278 = phi i64 [ %indvars.iv.next.i279.1, %.lr.ph.i276.new ], [ 0, %.lr.ph.i276 ] ; 4 uses
  %.04452.i = phi i32 [ %i.ml, %.lr.ph.i276.new ], [ %i.kw, %.lr.ph.i276 ]
  %niter702 = phi i64 [ %niter702.next.1, %.lr.ph.i276.new ], [ 0, %.lr.ph.i276 ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv.i278
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !31
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !65
  %i.lt = icmp eq i32 %i.ls, 1
  %.neg.i.i = sext i1 %i.lt to i32
  %i.lu = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.i278
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !64
  %i.lx = add i32 %i.lw, %.04452.i
  %i.ly = add i32 %i.lx, %.neg.i.i
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i278, 1 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv.next.i279
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !31
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !32
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !65
  %i.mg = icmp eq i32 %i.mf, 1
  %.neg.i.i.1 = sext i1 %i.mg to i32
  %i.mh = getelementptr inbounds nuw [56 x i8], ptr %.pre, i64 %indvars.iv.next.i279
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !64
  %i.mk = add i32 %i.mj, %i.ly
  %i.ml = add i32 %i.mk, %.neg.i.i.1              ; 3 uses
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i278, 2 ; 2 uses
  %niter702.next.1 = add i64 %niter702, 2         ; 2 uses
  %niter702.ncmp.1 = icmp eq i64 %niter702.next.1, %unroll_iter701
  br i1 %niter702.ncmp.1, label %.preheader.i273.loopexit.unr-lcssa, label %.lr.ph.i276.new, !llvm.loop !49

bb.ab:                                            ; preds = %bb.ad, %.preheader.i273
  %indvars.iv61.i = phi i64 [ %.lcssa461, %.preheader.i273 ], [ %indvars.iv.next62.i, %bb.ad ] ; 3 uses
  %.04355.i = phi i32 [ 0, %.preheader.i273 ], [ %i.nc, %bb.ad ]
  %i.mm = getelementptr inbounds [56 x i8], ptr %.pre, i64 %indvars.iv61.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !64
  %i.mp = icmp ugt i32 %i.mo, 1
  br i1 %i.mp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mq = load ptr, ptr %i.jo, align 8, !tbaa !29
  %i.mr = sub nsw i64 %indvars.iv61.i, %.lcssa461
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !31
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !32
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !65
  %i.mz = icmp ugt i32 %i.my, 1
  %i.na = zext i1 %i.mz to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.nb = phi i32 [ 1, %bb.ab ], [ %i.na, %bb.ac ]
  %i.nc = add nuw nsw i32 %i.nb, %.04355.i        ; 3 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next62.i to i32
  %exitcond64.not.i = icmp eq i32 %i.kl, %lftr.wideiv.i
  br i1 %exitcond64.not.i, label %._crit_edge.i274.loopexit, label %bb.ab, !llvm.loop !50

._crit_edge.i274.loopexit:                        ; preds = %bb.ad
  %i.nd = load i32, ptr %i.ay, align 8, !tbaa !34
  %i.ne = icmp slt i32 %i.km, %i.nd
  br i1 %i.ne, label %bb.ae, label %computeLB.exit

bb.ae:                                            ; preds = %._crit_edge.i274.loopexit
  %i.nf = load ptr, ptr %i.jo, align 8, !tbaa !29
  br i1 %i.kn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ng = getelementptr [4 x i8], ptr %i.kt, i64 %i.kh
  %i.nh = getelementptr i8, ptr %i.ng, i64 4
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !31
  %i.nj = zext i32 %i.ni to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.nk = load ptr, ptr %i.jn, align 8, !tbaa !30
  %i.nl = getelementptr [4 x i8], ptr %i.nk, i64 %.lcssa460
  %i.nm = getelementptr i8, ptr %i.nl, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !31
  %i.no = sext i32 %i.nn to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i = phi i64 [ %i.no, %bb.ag ], [ %i.nj, %bb.af ]
  %i.np = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %.sink.i
  %.pn.i = load ptr, ptr %i.np, align 8, !tbaa !32
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !65
  %i.nq = getelementptr inbounds [56 x i8], ptr %.pre, i64 %i.ko
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !64
  %i.nt = icmp ugt i32 %.0.i, 1
  %.neg.i275 = sext i1 %i.nt to i32
  %i.nu = sub i32 %.neg.i275, %i.fz
  %i.nv = add i32 %i.nu, %i.ns
  %i.nw = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 %i.nv)
  br label %computeLB.exit

computeLB.exit:                                   ; preds = %._crit_edge.i274.loopexit, %bb.ah
  %.042.i = phi i32 [ %i.nw, %bb.ah ], [ %i.nc, %._crit_edge.i274.loopexit ]
  %i.nx = add nsw i32 %.042.i, %.044.lcssa.i
  %.not255 = icmp slt i32 %i.nx, %.1220508
  br i1 %.not255, label %bb.ai, label %.loopexit438

bb.ai:                                            ; preds = %computeLB.exit
  br i1 %.not18.i, label %.thread, label %.lr.ph.i281

.lr.ph.i281:                                      ; preds = %bb.ai, %.loopexit.i
  %indvars.iv.i283 = phi i64 [ %indvars.iv.next.i284, %.loopexit.i ], [ 0, %bb.ai ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i283
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !31
  %i.oa = load ptr, ptr %i.jp, align 8, !tbaa !36
  %i.ob = zext i32 %i.nz to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !31 ; 2 uses
  %i.oe = add nsw i64 %indvars.iv.i283, %.lcssa461 ; 2 uses
  %i.of = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.od) #10 ; 2 uses
  %i.og = sext i32 %i.of to i64
  %.not13.i.i = icmp sgt i64 %i.oe, %i.og
  br i1 %.not13.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i281, %bb.aj
  %.015.i.i = phi i32 [ %i.oj, %bb.aj ], [ %i.of, %.lr.ph.i281 ] ; 3 uses
  %.01214.i.i = phi i32 [ %.015.i.i, %bb.aj ], [ %i.od, %.lr.ph.i281 ]
  %i.oh = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.015.i.i, i32 noundef %.01214.i.i) #10
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %ddShuffle.exit.thread348, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.oj = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.015.i.i) #10 ; 2 uses
  %i.ok = sext i32 %i.oj to i64
  %.not.i.i = icmp sgt i64 %i.oe, %i.ok
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.aj, %.lr.ph.i281
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %exitcond.not.i285 = icmp eq i64 %indvars.iv.next.i284, %wide.trip.count.i282
  br i1 %exitcond.not.i285, label %bb.ak, label %.lr.ph.i281, !llvm.loop !1

bb.ak:                                            ; preds = %.loopexit.i
  %i.ol = load i32, ptr %i.jh, align 4, !tbaa !70
  %i.om = load i32, ptr %i.ji, align 8, !tbaa !71
  %i.on = sub i32 %i.ol, %i.om                    ; 3 uses
  %.not433 = icmp slt i32 %i.on, %.1220508
  %.1220.mux = tail call i32 @llvm.smin.i32(i32 %i.on, i32 %.1220508)
  br i1 %.not433, label %.lr.ph.i289, label %updateUB.exit

.thread:                                          ; preds = %bb.ai
  %i.oo = load i32, ptr %i.jh, align 4, !tbaa !70
  %i.op = load i32, ptr %i.ji, align 8, !tbaa !71
  %i.oq = sub i32 %i.oo, %i.op
  %spec.select428 = tail call i32 @llvm.smin.i32(i32 %i.oq, i32 %.1220508)
  br label %updateUB.exit

.lr.ph.i289:                                      ; preds = %bb.ak
  %i.or = load ptr, ptr %i.jn, align 8, !tbaa !30
  %scevgep = getelementptr i8, ptr %i.or, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fs, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.jw, i1 false), !tbaa !31
  br label %updateUB.exit

updateUB.exit:                                    ; preds = %.lr.ph.i289, %.thread, %bb.ak
  %.015.i = phi i32 [ %.1220.mux, %bb.ak ], [ %spec.select428, %.thread ], [ %i.on, %.lr.ph.i289 ] ; 2 uses
  br i1 %i.kp, label %.lr.ph501, label %.loopexit438

.lr.ph501:                                        ; preds = %updateUB.exit
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kh
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph501, %checkSymmInfo.exit
  %indvars.iv569 = phi i64 [ %i.kg, %.lr.ph501 ], [ %indvars.iv.next570.pre-phi, %checkSymmInfo.exit ] ; 6 uses
  %.2500 = phi i32 [ %.015.i, %.lr.ph501 ], [ %.3, %checkSymmInfo.exit ] ; 6 uses
  %.1225499 = phi i32 [ %.0224507, %.lr.ph501 ], [ %.2226, %checkSymmInfo.exit ] ; 10 uses
  %i.ot = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ou = trunc nuw nsw i64 %indvars.iv569 to i32
  %i.ov = add i32 %i.jq, %i.ou
  %i.ow = sext i32 %i.ov to i64                   ; 2 uses
  %i.ox = getelementptr inbounds [56 x i8], ptr %i.ot, i64 %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !64
  %i.pa = icmp eq i32 %i.oz, 1
  %.pre585 = load ptr, ptr %i.jn, align 8, !tbaa !30 ; 7 uses
  %.pre586 = load ptr, ptr %i.jo, align 8, !tbaa !29 ; 2 uses
  br i1 %i.pa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.pb = getelementptr inbounds [4 x i8], ptr %.pre585, i64 %i.ow
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !31
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %.pre586, i64 %i.pd
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !65
  %i.pi = icmp eq i32 %i.ph, 1
  br i1 %i.pi, label %.checkSymmInfo.exit_crit_edge, label %bb.an

.checkSymmInfo.exit_crit_edge:                    ; preds = %bb.am
  %.pre588 = add nsw i64 %indvars.iv569, -1
  br label %checkSymmInfo.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.pj = getelementptr inbounds [4 x i8], ptr %.pre585, i64 %i.kq
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !31
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %.pre586, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !32
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !65
  %i.pq = icmp eq i32 %i.pp, 1
  %.neg.i294 = sext i1 %i.pq to i32
  %i.pr = getelementptr inbounds [56 x i8], ptr %i.ot, i64 %i.kq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !64
  %i.pu = add i32 %i.pt, %i.kw
  %i.pv = add i32 %i.pu, %.neg.i294               ; 2 uses
  br i1 %.not18.i, label %.preheader59.i, label %.lr.ph.i295.preheader

.lr.ph.i295.preheader:                            ; preds = %bb.an
  br i1 %lcmp.mod704.not, label %.lr.ph.i295.prol.loopexit, label %.lr.ph.i295.prol

.lr.ph.i295.prol:                                 ; preds = %.lr.ph.i295.preheader, %.lr.ph.i295.prol
  %indvars.iv.i296.prol = phi i64 [ %indvars.iv.next.i297.prol, %.lr.ph.i295.prol ], [ %.lcssa461, %.lr.ph.i295.preheader ] ; 2 uses
  %prol.iter705 = phi i32 [ %prol.iter705.next, %.lr.ph.i295.prol ], [ 0, %.lr.ph.i295.preheader ]
  %i.pw = getelementptr inbounds [4 x i8], ptr %.pre585, i64 %indvars.iv.i296.prol
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !31
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds i8, ptr %i.fv, i64 %i.py
  store i8 0, ptr %i.pz, align 1, !tbaa !37
  %indvars.iv.next.i297.prol = add nsw i64 %indvars.iv.i296.prol, 1 ; 2 uses
  %prol.iter705.next = add i32 %prol.iter705, 1   ; 2 uses
  %prol.iter705.cmp.not = icmp eq i32 %prol.iter705.next, %xtraiter703
  br i1 %prol.iter705.cmp.not, label %.lr.ph.i295.prol.loopexit, label %.lr.ph.i295.prol, !llvm.loop !51

.lr.ph.i295.prol.loopexit:                        ; preds = %.lr.ph.i295.prol, %.lr.ph.i295.preheader
  %indvars.iv.i296.unr = phi i64 [ %.lcssa461, %.lr.ph.i295.preheader ], [ %indvars.iv.next.i297.prol, %.lr.ph.i295.prol ]
  br i1 %i.ke, label %.preheader59.i, label %.lr.ph.i295

.preheader59.i:                                   ; preds = %.lr.ph.i295.prol.loopexit, %.lr.ph.i295, %bb.an
  br i1 %.not5662.i, label %.preheader.i302, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader59.i
  br i1 %lcmp.mod707.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i.prol
  %indvars.iv85.i.prol = phi i64 [ %indvars.iv.next86.i.prol, %.lr.ph64.i.prol ], [ %i.kh, %.lr.ph64.i.preheader ] ; 2 uses
  %prol.iter708 = phi i32 [ %prol.iter708.next, %.lr.ph64.i.prol ], [ 0, %.lr.ph64.i.preheader ]
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv85.i.prol
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !31
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.qc
  store i8 1, ptr %i.qd, align 1, !tbaa !37
  %indvars.iv.next86.i.prol = add nuw nsw i64 %indvars.iv85.i.prol, 1 ; 2 uses
  %prol.iter708.next = add i32 %prol.iter708, 1   ; 2 uses
  %prol.iter708.cmp.not = icmp eq i32 %prol.iter708.next, %xtraiter706
  br i1 %prol.iter708.cmp.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol, !llvm.loop !52

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %indvars.iv85.i.unr = phi i64 [ %i.kh, %.lr.ph64.i.preheader ], [ %indvars.iv.next86.i.prol, %.lr.ph64.i.prol ]
  br i1 %i.kr, label %.preheader.thread.i, label %.lr.ph64.i

.lr.ph.i295:                                      ; preds = %.lr.ph.i295.prol.loopexit, %.lr.ph.i295
  %indvars.iv.i296 = phi i64 [ %indvars.iv.next.i297.3, %.lr.ph.i295 ], [ %indvars.iv.i296.unr, %.lr.ph.i295.prol.loopexit ] ; 5 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %.pre585, i64 %indvars.iv.i296
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !31
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds i8, ptr %i.fv, i64 %i.qg
  store i8 0, ptr %i.qh, align 1, !tbaa !37
  %i.qi = getelementptr [4 x i8], ptr %.pre585, i64 %indvars.iv.i296
  %i.qj = getelementptr i8, ptr %i.qi, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !31
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds i8, ptr %i.fv, i64 %i.ql
  store i8 0, ptr %i.qm, align 1, !tbaa !37
  %i.qn = getelementptr [4 x i8], ptr %.pre585, i64 %indvars.iv.i296
  %i.qo = getelementptr i8, ptr %i.qn, i64 8
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !31
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds i8, ptr %i.fv, i64 %i.qq
  store i8 0, ptr %i.qr, align 1, !tbaa !37
  %i.qs = getelementptr [4 x i8], ptr %.pre585, i64 %indvars.iv.i296
  %i.qt = getelementptr i8, ptr %i.qs, i64 12
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !31
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds i8, ptr %i.fv, i64 %i.qv
  store i8 0, ptr %i.qw, align 1, !tbaa !37
  %indvars.iv.next.i297.3 = add nsw i64 %indvars.iv.i296, 4 ; 2 uses
  %lftr.wideiv.i298.3 = trunc i64 %indvars.iv.next.i297.3 to i32
  %exitcond.not.i299.3 = icmp eq i32 %.2232491, %lftr.wideiv.i298.3
  br i1 %exitcond.not.i299.3, label %.preheader59.i, label %.lr.ph.i295, !llvm.loop !53

.preheader.i302:                                  ; preds = %.preheader59.i
  %4 = icmp slt i32 %.1225499, 1
  br i1 %4, label %._crit_edge72.i, label %.lr.ph81.i

.preheader.thread.i:                              ; preds = %.lr.ph64.i, %.lr.ph64.i.prol.loopexit
  %i.qx = icmp sgt i32 %.1225499, 0
  br i1 %i.qx, label %.lr.ph67.preheader.i, label %._crit_edge72.i

.lr.ph67.preheader.i:                             ; preds = %.preheader.thread.i
  %wide.trip.count.i300 = zext nneg i32 %.1225499 to i64
  br label %.lr.ph67.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i.3, %.lr.ph64.i ], [ %indvars.iv85.i.unr, %.lr.ph64.i.prol.loopexit ] ; 5 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv85.i
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !31
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ra
  store i8 1, ptr %i.rb, align 1, !tbaa !37
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv85.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !31
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rf
  store i8 1, ptr %i.rg, align 1, !tbaa !37
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv85.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !31
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rk
  store i8 1, ptr %i.rl, align 1, !tbaa !37
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv85.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !31
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rp
  store i8 1, ptr %i.rq, align 1, !tbaa !37
  %indvars.iv.next86.i.3 = add nuw nsw i64 %indvars.iv85.i, 4 ; 2 uses
  %lftr.wideiv88.i.3 = trunc i64 %indvars.iv.next86.i.3 to i32
  %exitcond89.not.i.3 = icmp eq i32 %i.bb, %lftr.wideiv88.i.3
  br i1 %exitcond89.not.i.3, label %.preheader.thread.i, label %.lr.ph64.i, !llvm.loop !54

.lr.ph67.i:                                       ; preds = %bb.aq, %.lr.ph67.preheader.i
  %indvars.iv95.i = phi i64 [ 0, %.lr.ph67.preheader.i ], [ %indvars.iv.next96.i, %bb.aq ] ; 3 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.0215518, i64 %indvars.iv95.i
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !35
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph67.i
  %indvars.iv90.i = phi i64 [ %i.kh, %.lr.ph67.i ], [ %indvars.iv.next91.i, %bb.ap ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %indvars.iv90.i
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !31
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !37
  %i.ry = icmp eq i8 %i.rx, 0
  br i1 %i.ry, label %._crit_edge.i301, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %lftr.wideiv93.i = trunc i64 %indvars.iv.next91.i to i32
  %exitcond94.not.i = icmp eq i32 %i.bb, %lftr.wideiv93.i
  br i1 %exitcond94.not.i, label %._crit_edge72.loopexit.i, label %bb.ao, !llvm.loop !55

._crit_edge.i301:                                 ; preds = %bb.ao
  %i.rz = trunc nuw nsw i64 %indvars.iv90.i to i32
  %i.sa = icmp eq i32 %i.bb, %i.rz
  br i1 %i.sa, label %._crit_edge72.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i301
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count.i300
  br i1 %exitcond98.not.i, label %.lr.ph81.i, label %.lr.ph67.i, !llvm.loop !56

._crit_edge72.loopexit.i:                         ; preds = %._crit_edge.i301, %bb.ap
  %i.sb = trunc nuw nsw i64 %indvars.iv95.i to i32
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.loopexit.i, %.preheader.thread.i, %.preheader.i302
  %.2.lcssa.i = phi i32 [ 0, %.preheader.i302 ], [ 0, %.preheader.thread.i ], [ %i.sb, %._crit_edge72.loopexit.i ] ; 3 uses
  %i.sc = icmp eq i32 %.2.lcssa.i, %.1225499
  br i1 %i.sc, label %.lr.ph81.i, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge72.i
  %i.sd = zext nneg i32 %.2.lcssa.i to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.0211520, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !31
  %i.sg = icmp slt i32 %i.pv, %i.sf
  br i1 %i.sg, label %.lr.ph81.i, label %updateEntry.exit

.lr.ph81.i:                                       ; preds = %bb.aq, %.preheader.i302, %._crit_edge72.i, %bb.ar
  %5 = phi i32 [ 1, %._crit_edge72.i ], [ 0, %bb.ar ], [ 1, %.preheader.i302 ], [ 1, %bb.aq ]
  %.2.lcssa110.i = phi i32 [ %.1225499, %._crit_edge72.i ], [ %.2.lcssa.i, %bb.ar ], [ %.1225499, %.preheader.i302 ], [ %.1225499, %bb.aq ]
  %.pre.i = zext nneg i32 %.2.lcssa110.i to i64   ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.0215518, i64 %.pre.i
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !35 ; 7 uses
  %i.sj = ptrtoaddr ptr %i.si to i64
  %i.sk = sub i64 %i.ku, %i.sj
  %diff.check648 = icmp ugt i64 %i.sk, -32
  %or.cond664 = select i1 %min.iters.check650, i1 true, i1 %diff.check648
  br i1 %or.cond664, label %scalar.ph649.preheader, label %vector.body653

vector.body653:                                   ; preds = %.lr.ph81.i, %vector.body653
  %index654 = phi i64 [ %index.next657, %vector.body653 ], [ 0, %.lr.ph81.i ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index654 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %wide.load655 = load <4 x i32>, ptr %i.sl, align 4, !tbaa !31
  %wide.load656 = load <4 x i32>, ptr %i.sm, align 4, !tbaa !31
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %index654 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  store <4 x i32> %wide.load655, ptr %i.sn, align 4, !tbaa !31
  store <4 x i32> %wide.load656, ptr %i.so, align 4, !tbaa !31
  %index.next657 = add nuw i64 %index654, 8       ; 2 uses
  %i.sp = icmp eq i64 %index.next657, %n.vec652
  br i1 %i.sp, label %middle.block658, label %vector.body653, !llvm.loop !57

middle.block658:                                  ; preds = %vector.body653
  br i1 %cmp.n659, label %._crit_edge82.i, label %scalar.ph649.preheader

scalar.ph649.preheader:                           ; preds = %.lr.ph81.i, %middle.block658
  %indvars.iv99.i.ph = phi i64 [ 0, %.lr.ph81.i ], [ %n.vec652, %middle.block658 ] ; 3 uses
  br i1 %lcmp.mod710.not, label %scalar.ph649.prol.loopexit, label %scalar.ph649.prol

scalar.ph649.prol:                                ; preds = %scalar.ph649.preheader, %scalar.ph649.prol
  %indvars.iv99.i.prol = phi i64 [ %indvars.iv.next100.i.prol, %scalar.ph649.prol ], [ %indvars.iv99.i.ph, %scalar.ph649.preheader ] ; 3 uses
  %prol.iter711 = phi i64 [ %prol.iter711.next, %scalar.ph649.prol ], [ 0, %scalar.ph649.preheader ]
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv99.i.prol
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !31
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv99.i.prol
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !31
  %indvars.iv.next100.i.prol = add nuw nsw i64 %indvars.iv99.i.prol, 1 ; 2 uses
  %prol.iter711.next = add i64 %prol.iter711, 1   ; 2 uses
  %prol.iter711.cmp.not = icmp eq i64 %prol.iter711.next, %xtraiter709
  br i1 %prol.iter711.cmp.not, label %scalar.ph649.prol.loopexit, label %scalar.ph649.prol, !llvm.loop !58

scalar.ph649.prol.loopexit:                       ; preds = %scalar.ph649.prol, %scalar.ph649.preheader
  %indvars.iv99.i.unr = phi i64 [ %indvars.iv99.i.ph, %scalar.ph649.preheader ], [ %indvars.iv.next100.i.prol, %scalar.ph649.prol ]
  %i.st = sub nsw i64 %indvars.iv99.i.ph, %wide.trip.count.i282
  %i.su = icmp ugt i64 %i.st, -4
  br i1 %i.su, label %._crit_edge82.i, label %scalar.ph649

scalar.ph649:                                     ; preds = %scalar.ph649.prol.loopexit, %scalar.ph649
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.3, %scalar.ph649 ], [ %indvars.iv99.i.unr, %scalar.ph649.prol.loopexit ] ; 6 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv99.i
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !31
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv99.i
  store i32 %i.sw, ptr %i.sx, align 4, !tbaa !31
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next100.i
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !31
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv.next100.i
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !31
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next100.i.1
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !31
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv.next100.i.1
  store i32 %i.tc, ptr %i.td, align 4, !tbaa !31
  %indvars.iv.next100.i.2 = add nuw nsw i64 %indvars.iv99.i, 3 ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.next100.i.2
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !31
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv.next100.i.2
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !31
  %indvars.iv.next100.i.3 = add nuw nsw i64 %indvars.iv99.i, 4 ; 2 uses
  %exitcond103.not.i.3 = icmp eq i64 %indvars.iv.next100.i.3, %wide.trip.count.i282
  br i1 %exitcond103.not.i.3, label %._crit_edge82.i, label %scalar.ph649, !llvm.loop !59

._crit_edge82.i:                                  ; preds = %scalar.ph649.prol.loopexit, %scalar.ph649, %middle.block658
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.0211520, i64 %.pre.i
  store i32 %i.pv, ptr %i.th, align 4, !tbaa !31
  %i.ti = add nsw i32 %5, %.1225499
  br label %updateEntry.exit

updateEntry.exit:                                 ; preds = %bb.ar, %._crit_edge82.i
  %.053.i = phi i32 [ %i.ti, %._crit_edge82.i ], [ %.1225499, %bb.ar ] ; 5 uses
  %i.tj = icmp eq i64 %indvars.iv569, 0
  br i1 %i.tj, label %.loopexit438, label %bb.as

bb.as:                                            ; preds = %updateEntry.exit
  %i.tk = add nsw i64 %indvars.iv569, -1          ; 6 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !31 ; 5 uses
  %.pn14.i = sext i32 %i.tm to i64
  %.0.in15.i = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pn14.i
  %.016.i = load i32, ptr %.0.in15.i, align 4, !tbaa !31 ; 2 uses
  %.not17.i = icmp eq i32 %.016.i, %i.tm
  br i1 %.not17.i, label %.lr.ph.preheader.i, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %bb.as, %bb.au
  %.018.i = phi i32 [ %.0.i307, %bb.au ], [ %.016.i, %bb.as ] ; 3 uses
  %i.tn = icmp slt i32 %i.tm, %.018.i
  br i1 %i.tn, label %bb.at, label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i304
  %.pre.i305 = sext i32 %.018.i to i64
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i304
  %i.to = load ptr, ptr %i.jp, align 8, !tbaa !36
  %i.tp = sext i32 %.018.i to i64                 ; 2 uses
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !31
  %i.ts = sext i32 %i.tr to i64
  %.not13.i = icmp slt i64 %i.kh, %i.ts
  br i1 %.not13.i, label %bb.au, label %checkSymmInfo.exit

bb.au:                                            ; preds = %bb.at, %.lr.ph._crit_edge.i
  %.pn.pre-phi.i = phi i64 [ %.pre.i305, %.lr.ph._crit_edge.i ], [ %i.tp, %bb.at ]
  %.0.in.i306 = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %.pn.pre-phi.i
  %.0.i307 = load i32, ptr %.0.in.i306, align 4, !tbaa !31 ; 2 uses
  %.not.i = icmp eq i32 %.0.i307, %i.tm
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.lr.ph.i304, !llvm.loop !60

.lr.ph.preheader.i:                               ; preds = %bb.au, %bb.as
  %i.tt = shl nuw nsw i64 %i.tk, 2
  %scevgep.i = getelementptr i8, ptr %i.kt, i64 %i.tt ; 2 uses
  %scevgep14.i = getelementptr i8, ptr %scevgep.i, i64 4
  %i.tu = sub i64 %i.kh, %indvars.iv569
  %i.tv = shl i64 %i.tu, 2
  %i.tw = and i64 %i.tv, 17179869180
  %i.tx = add nuw nsw i64 %i.tw, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep14.i, i64 %i.tx, i1 false), !tbaa !31
  store i32 %i.tm, ptr %i.os, align 4, !tbaa !31
  br i1 %.not18.i, label %.thread346, label %.lr.ph.i311

.lr.ph.i311:                                      ; preds = %.lr.ph.preheader.i, %.loopexit.i319
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i320, %.loopexit.i319 ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i313
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !31
  %i.ua = load ptr, ptr %i.jp, align 8, !tbaa !36
  %i.ub = zext i32 %i.tz to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !31 ; 2 uses
  %i.ue = add nsw i64 %indvars.iv.i313, %.lcssa461 ; 2 uses
  %i.uf = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.ud) #10 ; 2 uses
  %i.ug = sext i32 %i.uf to i64
  %.not13.i.i314 = icmp sgt i64 %i.ue, %i.ug
  br i1 %.not13.i.i314, label %.loopexit.i319, label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %.lr.ph.i311, %bb.av
  %.015.i.i316 = phi i32 [ %i.uj, %bb.av ], [ %i.uf, %.lr.ph.i311 ] ; 3 uses
  %.01214.i.i317 = phi i32 [ %.015.i.i316, %bb.av ], [ %i.ud, %.lr.ph.i311 ]
  %i.uh = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.015.i.i316, i32 noundef %.01214.i.i317) #10
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %ddShuffle.exit.thread348, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i315
  %i.uj = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.015.i.i316) #10 ; 2 uses
  %i.uk = sext i32 %i.uj to i64
  %.not.i.i318 = icmp sgt i64 %i.ue, %i.uk
  br i1 %.not.i.i318, label %.loopexit.i319, label %.lr.ph.i.i315, !llvm.loop !0

.loopexit.i319:                                   ; preds = %bb.av, %.lr.ph.i311
  %indvars.iv.next.i320 = add nuw nsw i64 %indvars.iv.i313, 1 ; 2 uses
  %exitcond.not.i321 = icmp eq i64 %indvars.iv.next.i320, %wide.trip.count.i282
  br i1 %exitcond.not.i321, label %bb.aw, label %.lr.ph.i311, !llvm.loop !1

bb.aw:                                            ; preds = %.loopexit.i319
  %i.ul = load i32, ptr %i.jh, align 4, !tbaa !70
  %i.um = load i32, ptr %i.ji, align 8, !tbaa !71
  %i.un = sub i32 %i.ul, %i.um                    ; 3 uses
  %.not435 = icmp slt i32 %i.un, %.2500
  %.2.mux = tail call i32 @llvm.smin.i32(i32 %i.un, i32 %.2500)
  br i1 %.not435, label %.lr.ph.i328, label %checkSymmInfo.exit

.thread346:                                       ; preds = %.lr.ph.preheader.i
  %i.uo = load i32, ptr %i.jh, align 4, !tbaa !70
  %i.up = load i32, ptr %i.ji, align 8, !tbaa !71
  %i.uq = sub i32 %i.uo, %i.up
  %spec.select430 = tail call i32 @llvm.smin.i32(i32 %i.uq, i32 %.2500)
  br label %checkSymmInfo.exit

.lr.ph.i328:                                      ; preds = %bb.aw
  %i.ur = load ptr, ptr %i.jn, align 8, !tbaa !30
  %scevgep566 = getelementptr i8, ptr %i.ur, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fs, ptr noundef nonnull align 4 dereferenceable(1) %scevgep566, i64 %i.jw, i1 false), !tbaa !31
  br label %checkSymmInfo.exit

checkSymmInfo.exit:                               ; preds = %bb.at, %.checkSymmInfo.exit_crit_edge, %.lr.ph.i328, %.thread346, %bb.aw
  %indvars.iv.next570.pre-phi = phi i64 [ %.pre588, %.checkSymmInfo.exit_crit_edge ], [ %i.tk, %bb.aw ], [ %i.tk, %.lr.ph.i328 ], [ %i.tk, %.thread346 ], [ %i.tk, %bb.at ]
  %.2226 = phi i32 [ %.1225499, %.checkSymmInfo.exit_crit_edge ], [ %.053.i, %bb.aw ], [ %.053.i, %.lr.ph.i328 ], [ %.053.i, %.thread346 ], [ %.053.i, %bb.at ] ; 2 uses
  %.3 = phi i32 [ %.2500, %.checkSymmInfo.exit_crit_edge ], [ %.2.mux, %bb.aw ], [ %i.un, %.lr.ph.i328 ], [ %spec.select430, %.thread346 ], [ %.2500, %bb.at ] ; 2 uses
  %i.us = icmp sgt i64 %indvars.iv569, 0
  br i1 %i.us, label %bb.al, label %.loopexit438, !llvm.loop !61

.loopexit438:                                     ; preds = %updateEntry.exit, %checkSymmInfo.exit, %updateUB.exit, %computeLB.exit
  %.3227 = phi i32 [ %.0224507, %computeLB.exit ], [ %.0224507, %updateUB.exit ], [ %.053.i, %updateEntry.exit ], [ %.2226, %checkSymmInfo.exit ] ; 2 uses
  %.4 = phi i32 [ %.1220508, %computeLB.exit ], [ %.015.i, %updateUB.exit ], [ %.2500, %updateEntry.exit ], [ %.3, %checkSymmInfo.exit ] ; 2 uses
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count577
  br i1 %exitcond578.not, label %._crit_edge511, label %bb.aa, !llvm.loop !62

._crit_edge511:                                   ; preds = %.loopexit438, %bb.z
  %.0224.lcssa = phi i32 [ 0, %bb.z ], [ %.3227, %.loopexit438 ]
  %.1220.lcssa = phi i32 [ %.0219517, %bb.z ], [ %.4, %.loopexit438 ]
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %indvars.iv.next568 = add i32 %indvars.iv567, -1
  %exitcond584.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count583
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond584.not, label %._crit_edge524, label %bb.z, !llvm.loop !63

._crit_edge524:                                   ; preds = %._crit_edge511, %._crit_edge496
  %.0215.lcssa = phi ptr [ %i.cu, %._crit_edge496 ], [ %.0213519, %._crit_edge511 ] ; 2 uses
  %.0213.lcssa = phi ptr [ %i.eh, %._crit_edge496 ], [ %.0215518, %._crit_edge511 ] ; 2 uses
  %.0211.lcssa = phi ptr [ %i.ef, %._crit_edge496 ], [ %.0210521, %._crit_edge511 ] ; 2 uses
  %.0210.lcssa = phi ptr [ %i.fo, %._crit_edge496 ], [ %.0211520, %._crit_edge511 ] ; 2 uses
  %i.ut = tail call fastcc i32 @ddShuffle(ptr noundef %0, ptr noundef nonnull %i.fs, i32 noundef %.0236.lcssa464, i32 noundef %.0235.lcssa)
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %ddShuffle.exit.thread348, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge524
  tail call fastcc void @freeMatrix(ptr noundef %.0215.lcssa)
  tail call fastcc void @freeMatrix(ptr noundef %.0213.lcssa)
  tail call void @free(ptr noundef nonnull %i.fs) #10
  tail call void @free(ptr noundef %.0210.lcssa) #10
  tail call void @free(ptr noundef %.0211.lcssa) #10
  tail call void @free(ptr noundef %i.fx) #10
  tail call void @free(ptr noundef %i.fv) #10
  br label %bb.bl

ddShuffle.exit.thread348:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i315, %._crit_edge524, %bb.s, %bb.q, %bb.x, %bb.w, %bb.v, %getMatrix.exit272, %getMatrix.exit
  %.0368 = phi ptr [ null, %bb.s ], [ %i.fs, %bb.x ], [ %i.fs, %bb.w ], [ null, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %i.fs, %.lr.ph.i.i315 ], [ %i.fs, %._crit_edge524 ], [ %i.fs, %.lr.ph.i.i ] ; 2 uses
  %.1366 = phi ptr [ null, %bb.s ], [ %i.fo, %bb.x ], [ %i.fo, %bb.w ], [ %i.fo, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %.0210521, %.lr.ph.i.i315 ], [ %.0210.lcssa, %._crit_edge524 ], [ %.0210521, %.lr.ph.i.i ] ; 2 uses
  %.1212364 = phi ptr [ %i.ef, %bb.s ], [ %i.ef, %bb.x ], [ %i.ef, %bb.w ], [ %i.ef, %bb.v ], [ %i.ef, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ %i.ef, %bb.q ], [ %.0211520, %.lr.ph.i.i315 ], [ %.0211.lcssa, %._crit_edge524 ], [ %.0211520, %.lr.ph.i.i ] ; 2 uses
  %.1214362 = phi ptr [ null, %bb.s ], [ %i.eh, %bb.x ], [ %i.eh, %bb.w ], [ %i.eh, %bb.v ], [ %i.eh, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %.0213519, %.lr.ph.i.i315 ], [ %.0213.lcssa, %._crit_edge524 ], [ %.0213519, %.lr.ph.i.i ] ; 3 uses
  %.1216361 = phi ptr [ %i.cu, %bb.s ], [ %i.cu, %bb.x ], [ %i.cu, %bb.w ], [ %i.cu, %bb.v ], [ %i.cu, %getMatrix.exit272 ], [ %i.cu, %getMatrix.exit ], [ %i.cu, %bb.q ], [ %.0215518, %.lr.ph.i.i315 ], [ %.0215.lcssa, %._crit_edge524 ], [ %.0215518, %.lr.ph.i.i ] ; 2 uses
  %.0217359 = phi ptr [ null, %bb.s ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %i.fx, %.lr.ph.i.i315 ], [ %i.fx, %._crit_edge524 ], [ %i.fx, %.lr.ph.i.i ] ; 2 uses
  %.0218357 = phi ptr [ null, %bb.s ], [ %i.fv, %bb.x ], [ null, %bb.w ], [ null, %bb.v ], [ null, %getMatrix.exit272 ], [ null, %getMatrix.exit ], [ null, %bb.q ], [ %i.fv, %.lr.ph.i.i315 ], [ %i.fv, %._crit_edge524 ], [ %i.fv, %.lr.ph.i.i ] ; 2 uses
  %i.uv = load ptr, ptr %.1216361, align 8, !tbaa !35 ; 2 uses
  %.not.i334 = icmp eq ptr %i.uv, null
  br i1 %.not.i334, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %ddShuffle.exit.thread348
  tail call void @free(ptr noundef nonnull %i.uv) #10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %ddShuffle.exit.thread348
  tail call void @free(ptr noundef nonnull %.1216361) #10
  %.not257 = icmp eq ptr %.1214362, null
  br i1 %.not257, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.uw = load ptr, ptr %.1214362, align 8, !tbaa !35 ; 2 uses
  %.not.i335 = icmp eq ptr %i.uw, null
  br i1 %.not.i335, label %freeMatrix.exit336, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @free(ptr noundef nonnull %i.uw) #10
  br label %freeMatrix.exit336

freeMatrix.exit336:                               ; preds = %bb.ba, %bb.bb
  tail call void @free(ptr noundef nonnull %.1214362) #10
  br label %bb.bc

bb.bc:                                            ; preds = %freeMatrix.exit336, %bb.az
  %.not258 = icmp eq ptr %.0368, null
  br i1 %.not258, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %.0368) #10
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.not259 = icmp eq ptr %.1366, null
  br i1 %.not259, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @free(ptr noundef nonnull %.1366) #10
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
end_hunk_1
