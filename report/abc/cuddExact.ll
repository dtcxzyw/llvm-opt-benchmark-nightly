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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.pre587.a = sext i32 %2 to i64
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
  %.lcssa461.ph = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %bb.b ] ; 2 uses
  %.0236.lcssa464.ph = trunc i64 %.lcssa461.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.critedge.loopexit
  %.pre-phi = phi i64 [ %.pre587.a, %..critedge_crit_edge ], [ %i.l, %.critedge.loopexit ] ; 3 uses
  %.0236.lcssa464 = phi i32 [ %1, %..critedge_crit_edge ], [ %.0236.lcssa464.ph, %.critedge.loopexit ] ; 18 uses
  %.lcssa461 = phi i64 [ %i.c, %..critedge_crit_edge ], [ %.lcssa461.ph, %.critedge.loopexit ] ; 9 uses
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
  %indvars.iv547 = phi i64 [ %.pre-phi, %.lr.ph475 ], [ %indvars.iv.next548, %bb.e ] ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv547
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = icmp sgt i64 %indvars.iv547, %i.ah
  %or.cond263 = and i1 %i.aq, %i.ap
  br i1 %or.cond263, label %bb.e, label %.critedge2.loopexit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next548 = add nsw i64 %indvars.iv547, -1 ; 3 uses
  %i.ar = getelementptr inbounds [56 x i8], ptr %i.b, i64 %indvars.iv.next548
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !27
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.d, label %.critedge2.loopexit, !llvm.loop !35

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
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !36 ; 5 uses
  %i.ba = sub i32 %.0235.lcssa, %.0236.lcssa464   ; 5 uses
  %i.bb = add i32 %i.ba, 1                        ; 12 uses
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
  %indvars.iv551 = phi i64 [ %i.bg, %.lr.ph484 ], [ %indvars.iv.next552, %bb.j ] ; 3 uses
  %.0221482 = phi i32 [ 0, %.lr.ph484 ], [ %.1222, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds [56 x i8], ptr %i.bd, i64 %indvars.iv551
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !27
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv551
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
  %indvars.iv.next552 = add nsw i64 %indvars.iv551, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next552 to i32
  %exitcond.not = icmp eq i32 %.0235.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.0221.lcssa = phi i32 [ 0, %bb.g ], [ %.1222, %bb.j ]
  %i.bw = sub nsw i32 %i.bb, %.0221.lcssa         ; 5 uses
  %or.cond.i = icmp ugt i32 %i.bw, 33
  br i1 %or.cond.i, label %.thread425, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bx = icmp samesign ult i32 %i.bw, 2
  br i1 %i.bx, label %getMaxBinomial.exit.thread338, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nuw nsw i32 %i.bw, 3
  %i.bz = lshr i32 %i.by, 1                       ; 3 uses
  %i.ca = uitofp nneg i32 %i.bz to double         ; 2 uses
  %i.cb = uitofp nneg i32 %i.bw to double
  %.not.i = icmp samesign ult i32 %i.bz, %i.bw
  br i1 %.not.i, label %.lr.ph.i.preheader, label %getMaxBinomial.exit

.lr.ph.i.preheader:                               ; preds = %bb.l
  %3 = add nuw nsw i32 %i.bz, 1
  %4 = uitofp nneg i32 %3 to double
  %i.cc = insertelement <2 x double> <double poison, double 2.000000e+00>, double %4, i64 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.021.i = phi double [ %i.ch, %.lr.ph.i ], [ %i.ca, %.lr.ph.i.preheader ]
  %i.cd = phi <2 x double> [ %i.ci, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ] ; 3 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = fmul double %.021.i, %i.ce
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = fdiv double %i.cf, %i.cg                ; 2 uses
  %i.ci = fadd <2 x double> %i.cd, splat (double 1.000000e+00) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = fcmp ugt double %i.cj, %i.cb
  br i1 %i.ck, label %getMaxBinomial.exit, label %.lr.ph.i, !llvm.loop !38

getMaxBinomial.exit:                              ; preds = %.lr.ph.i, %bb.l
  %.0.lcssa.i = phi double [ %i.ca, %bb.l ], [ %i.ch, %.lr.ph.i ]
  %i.cl = fptosi double %.0.lcssa.i to i32        ; 2 uses
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %.thread425, label %getMaxBinomial.exit.thread338

getMaxBinomial.exit.thread338:                    ; preds = %bb.k, %getMaxBinomial.exit
  %.017.i340 = phi i32 [ %i.cl, %getMaxBinomial.exit ], [ 1, %bb.k ] ; 7 uses
  %i.cn = mul nsw i32 %.017.i340, %i.bb           ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.thread425, label %bb.m

bb.m:                                             ; preds = %getMaxBinomial.exit.thread338
  %i.cp = sext i32 %.017.i340 to i64              ; 2 uses
  %i.cq = shl nsw i64 %i.cp, 3                    ; 2 uses
  %i.cr = tail call noalias ptr @malloc(i64 noundef %i.cq) #11 ; 22 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.thread425, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = sext i32 %i.cn to i64
  %i.cu = shl nsw i64 %i.ct, 2                    ; 2 uses
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.cu) #11 ; 2 uses
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !39
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.thread425.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.cx = icmp sgt i32 %.017.i340, 1              ; 2 uses
  br i1 %i.cx, label %.lr.ph.i264, label %getMatrix.exit

.lr.ph.i264:                                      ; preds = %.preheader.i
  %i.cy = sext i32 %i.bb to i64                   ; 9 uses
  %wide.trip.count.i = zext nneg i32 %.017.i340 to i64
  %load_initial661 = load ptr, ptr %i.cr, align 8 ; 2 uses
  %i.cz = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.cz, 7                    ; 3 uses
  %i.da = add nsw i32 %.017.i340, -2
  %i.db = icmp ult i32 %i.da, 7
  br i1 %i.db, label %.epil.preheader, label %.lr.ph.i264.new

.lr.ph.i264.new:                                  ; preds = %.lr.ph.i264
  %unroll_iter = and i64 %i.cz, -8
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i264.new
  %store_forwarded662 = phi ptr [ %load_initial661, %.lr.ph.i264.new ], [ %i.dy, %bb.o ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i264.new ], [ %indvars.iv.next.i.7, %bb.o ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i264.new ], [ %niter.next.7, %bb.o ]
  %i.dc = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.dd = getelementptr inbounds [4 x i8], ptr %store_forwarded662, i64 %i.cy ; 2 uses
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !39
  %i.de = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.cy ; 2 uses
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !39
  %i.dh = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.cy ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !39
  %i.dk = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 24
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.cy ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !39
  %i.dn = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.do = getelementptr i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.cy ; 2 uses
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !39
  %i.dq = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 40
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.cy ; 2 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !39
  %i.dt = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.du = getelementptr i8, ptr %i.dt, i64 48
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.cy ; 2 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !39
  %i.dw = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 56
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.cy ; 3 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !39
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %getMatrix.exit.loopexit.unr-lcssa, label %bb.o, !llvm.loop !40

getMatrix.exit.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %getMatrix.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %getMatrix.exit.loopexit.unr-lcssa, %.lr.ph.i264
  %store_forwarded662.epil.init = phi ptr [ %load_initial661, %.lr.ph.i264 ], [ %i.dy, %getMatrix.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i264 ], [ %indvars.iv.next.i.7, %getMatrix.exit.loopexit.unr-lcssa ]
  %lcmp.mod682 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod682)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %store_forwarded662.epil = phi ptr [ %store_forwarded662.epil.init, %.epil.preheader ], [ %i.ea, %bb.p ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.dz = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i.epil
  %i.ea = getelementptr inbounds [4 x i8], ptr %store_forwarded662.epil, i64 %i.cy ; 2 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !39
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %getMatrix.exit, label %bb.p, !llvm.loop !41

getMatrix.exit:                                   ; preds = %getMatrix.exit.loopexit.unr-lcssa, %bb.p, %.preheader.i
  %i.eb = shl nsw i64 %i.cp, 2                    ; 2 uses
  %i.ec = tail call noalias ptr @malloc(i64 noundef %i.eb) #11 ; 9 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %ddShuffle.exit.thread348, label %bb.q

bb.q:                                             ; preds = %getMatrix.exit
  %i.ee = tail call noalias ptr @malloc(i64 noundef %i.cq) #11 ; 20 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %ddShuffle.exit.thread348, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eg = tail call noalias ptr @malloc(i64 noundef %i.cu) #11 ; 2 uses
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !39
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.s, label %.preheader.i265

.preheader.i265:                                  ; preds = %bb.r
  br i1 %i.cx, label %.lr.ph.i267, label %getMatrix.exit272

.lr.ph.i267:                                      ; preds = %.preheader.i265
  %i.ei = sext i32 %i.bb to i64                   ; 9 uses
  %wide.trip.count.i268 = zext nneg i32 %.017.i340 to i64
  %load_initial = load ptr, ptr %i.ee, align 8    ; 2 uses
  %i.ej = add nsw i64 %wide.trip.count.i268, -1   ; 2 uses
  %xtraiter684 = and i64 %i.ej, 7                 ; 3 uses
  %i.ek = add nsw i32 %.017.i340, -2
  %i.el = icmp ult i32 %i.ek, 7
  br i1 %i.el, label %.epil.preheader683, label %.lr.ph.i267.new

.lr.ph.i267.new:                                  ; preds = %.lr.ph.i267
  %unroll_iter688 = and i64 %i.ej, -8
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.ee) #10
  br label %ddShuffle.exit.thread348

bb.t:                                             ; preds = %bb.t, %.lr.ph.i267.new
  %store_forwarded = phi ptr [ %load_initial, %.lr.ph.i267.new ], [ %i.fi, %bb.t ]
  %indvars.iv.i269 = phi i64 [ 1, %.lr.ph.i267.new ], [ %indvars.iv.next.i270.7, %bb.t ] ; 9 uses
  %niter689 = phi i64 [ 0, %.lr.ph.i267.new ], [ %niter689.next.7, %bb.t ]
  %i.em = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.en = getelementptr inbounds [4 x i8], ptr %store_forwarded, i64 %i.ei ; 2 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !39
  %i.eo = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.ei ; 2 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !39
  %i.er = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.es = getelementptr i8, ptr %i.er, i64 16
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ei ; 2 uses
  store ptr %i.et, ptr %i.es, align 8, !tbaa !39
  %i.eu = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ei ; 2 uses
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !39
  %i.ex = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.ey = getelementptr i8, ptr %i.ex, i64 32
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ei ; 2 uses
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !39
  %i.fa = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.fb = getelementptr i8, ptr %i.fa, i64 40
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.ei ; 2 uses
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !39
  %i.fd = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.fe = getelementptr i8, ptr %i.fd, i64 48
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.ei ; 2 uses
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !39
  %i.fg = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269
  %i.fh = getelementptr i8, ptr %i.fg, i64 56
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ei ; 3 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !39
  %indvars.iv.next.i270.7 = add nuw nsw i64 %indvars.iv.i269, 8 ; 2 uses
  %niter689.next.7 = add i64 %niter689, 8         ; 2 uses
  %niter689.ncmp.7 = icmp eq i64 %niter689.next.7, %unroll_iter688
  br i1 %niter689.ncmp.7, label %getMatrix.exit272.loopexit.unr-lcssa, label %bb.t, !llvm.loop !40

getMatrix.exit272.loopexit.unr-lcssa:             ; preds = %bb.t
  %lcmp.mod686.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod686.not, label %getMatrix.exit272, label %.epil.preheader683

.epil.preheader683:                               ; preds = %getMatrix.exit272.loopexit.unr-lcssa, %.lr.ph.i267
  %store_forwarded.epil.init = phi ptr [ %load_initial, %.lr.ph.i267 ], [ %i.fi, %getMatrix.exit272.loopexit.unr-lcssa ]
  %indvars.iv.i269.epil.init = phi i64 [ 1, %.lr.ph.i267 ], [ %indvars.iv.next.i270.7, %getMatrix.exit272.loopexit.unr-lcssa ]
  %lcmp.mod687 = icmp ne i64 %xtraiter684, 0
  tail call void @llvm.assume(i1 %lcmp.mod687)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader683
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.epil.preheader683 ], [ %i.fk, %bb.u ]
  %indvars.iv.i269.epil = phi i64 [ %indvars.iv.i269.epil.init, %.epil.preheader683 ], [ %indvars.iv.next.i270.epil, %bb.u ] ; 2 uses
  %epil.iter685 = phi i64 [ 0, %.epil.preheader683 ], [ %epil.iter685.next, %bb.u ]
  %i.fj = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv.i269.epil
end_hunk_0
