inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ucm_optimizeStates:bb.a
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = extractelement <4 x i32> %wide.load88, i64 0
  %i.ai = or disjoint i32 %i.ah, 6291456
  store i32 %i.ai, ptr %i.ag, align 4
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.aj = extractelement <4 x i1> %i.l, i64 1
  br i1 %i.aj, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = extractelement <4 x i32> %wide.load88, i64 1
  %i.an = or disjoint i32 %i.am, 6291456
  store i32 %i.an, ptr %i.al, align 4
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.ao = extractelement <4 x i1> %i.l, i64 2
  br i1 %i.ao, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = extractelement <4 x i32> %wide.load88, i64 2
  %i.as = or disjoint i32 %i.ar, 6291456
  store i32 %i.as, ptr %i.aq, align 4
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.at = extractelement <4 x i1> %i.l, i64 3
  br i1 %i.at, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.aw = extractelement <4 x i32> %wide.load88, i64 3
  %i.ax = or disjoint i32 %i.aw, 6291456
  store i32 %i.ax, ptr %i.av, align 4
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, 256
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %pred.store.continue102
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.az = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next54, %i.ba
  br i1 %i.bb, label %.preheader, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %middle.block, %bb.a
  %.lcssa41 = phi i32 [ %i.d, %bb.a ], [ %i.az, %middle.block ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 132104
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 132113
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 12
  %..i = zext i1 %i.bh to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.bi = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %..i ; 5 uses
  br label %bb.c

.preheader213.i:                                  ; preds = %bb.g
  %i.bj = icmp sgt i32 %.lcssa41, 1
  br i1 %i.bj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader213.i
  %wide.trip.count.i = zext nneg i32 %.lcssa41 to i64
  %i.bk = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.bk, 3                    ; 3 uses
  %i.bl = add nsw i32 %.lcssa41, -2
  %i.bm = icmp ult i32 %i.bl, 3
  br i1 %i.bm, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.bk, -4
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bq = lshr i32 %i.bo, 24
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = add i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = lshr i32 %i.bx, 24
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.cb, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader213.i, label %bb.c, !llvm.loop !30

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv247.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next248.i.3, %.lr.ph.i ] ; 6 uses
  %.0217.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv247.i
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = zext nneg i32 %.0217.i to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = icmp ugt i16 %i.cf, %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv247.i to i32
  %spec.select.i = select i1 %i.cj, i32 %i.ck, i32 %.0217.i ; 2 uses
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next248.i
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = zext nneg i32 %spec.select.i to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = icmp ugt i16 %i.cm, %i.cp
  %i.cr = trunc nuw nsw i64 %indvars.iv.next248.i to i32
  %spec.select.i.1 = select i1 %i.cq, i32 %i.cr, i32 %spec.select.i ; 2 uses
  %indvars.iv.next248.i.1 = add nuw nsw i64 %indvars.iv247.i, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next248.i.1
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext nneg i32 %spec.select.i.1 to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = icmp ugt i16 %i.ct, %i.cw
  %i.cy = trunc nuw nsw i64 %indvars.iv.next248.i.1 to i32
  %spec.select.i.2 = select i1 %i.cx, i32 %i.cy, i32 %spec.select.i.1 ; 2 uses
  %indvars.iv.next248.i.2 = add nuw nsw i64 %indvars.iv247.i, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next248.i.2
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext nneg i32 %spec.select.i.2 to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp ugt i16 %i.da, %i.dd
  %i.df = trunc nuw nsw i64 %indvars.iv.next248.i.2 to i32
  %spec.select.i.3 = select i1 %i.de, i32 %i.df, i32 %spec.select.i.2 ; 3 uses
  %indvars.iv.next248.i.3 = add nuw nsw i64 %indvars.iv247.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !31

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv247.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next248.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0217.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv247.i.epil = phi i64 [ %indvars.iv247.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next248.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %.0217.i.epil = phi i32 [ %.0217.i.epil.init, %.lr.ph.i.epil.preheader ], [ %spec.select.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv247.i.epil
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext nneg i32 %.0217.i.epil to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = icmp ugt i16 %i.dh, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv247.i.epil to i32
  %spec.select.i.epil = select i1 %i.dl, i32 %i.dm, i32 %.0217.i.epil ; 2 uses
  %indvars.iv.next248.i.epil = add nuw nsw i64 %indvars.iv247.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !32

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader213.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader213.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.dn = zext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.do = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.dn ; 5 uses
  %i.dp = icmp sgt i32 %3, 0                      ; 3 uses
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %._crit_edge.i
  %indvars.iv251.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next252.i, %bb.o ] ; 3 uses
  %.0179221.i = phi i32 [ 0, %._crit_edge.i ], [ %.1180.i, %bb.o ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv251.i
  %i.dr = load i32, ptr %i.dq, align 4            ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, -1
  %i.dt = lshr i32 %i.dr, 24
  %i.du = icmp eq i32 %i.dt, %.0.lcssa.i
  %or.cond.i = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.dv = and i32 %i.dr, 16777215                 ; 4 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv251.i ; 6 uses
  br i1 %i.dp, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.i, %ucm_findFallback.exit.us.i
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %ucm_findFallback.exit.us.i ], [ 0, %bb.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv60
  %i.dy = load i32, ptr %i.dx, align 4            ; 3 uses
  %i.dz = lshr i32 %i.dy, 20
  %i.ea = and i32 %i.dz, 15
  switch i32 %i.ea, label %ucm_findFallback.exit.us.i [
    i32 4, label %bb.k
    i32 5, label %bb.j
  ]

bb.j:                                             ; preds = %.split.us.i
  %i.eb = and i32 %i.dy, 65535
  %i.ec = add nuw nsw i32 %i.eb, %i.dv
  %i.ed = load ptr, ptr %1, align 8
  %i.ee = zext nneg i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = icmp eq i16 %i.eg, -2
  br i1 %i.eh, label %ucm_findFallback.exit.us.sink.split.i, label %.split220.us.thread.i

bb.k:                                             ; preds = %.split.us.i
  %i.ei = and i32 %i.dy, 65535
  %i.ej = add nuw nsw i32 %i.ei, %i.dv            ; 2 uses
  %i.ek = load ptr, ptr %1, align 8
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = icmp eq i16 %i.en, -2
  br i1 %i.eo, label %.lr.ph.i.us.i, label %.split220.us.thread.i

.lr.ph.i.us.i:                                    ; preds = %bb.k, %bb.l
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.us.i
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = icmp eq i32 %i.ej, %i.eq
  br i1 %i.er, label %.split220.us.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %ucm_findFallback.exit.us.sink.split.i, label %.lr.ph.i.us.i, !llvm.loop !27

ucm_findFallback.exit.us.sink.split.i:            ; preds = %bb.l, %bb.j
  %.sink322.i = phi i16 [ 2, %bb.j ], [ 1, %bb.l ]
  %i.es = load i16, ptr %i.dw, align 2
  %i.et = add i16 %i.es, %.sink322.i
  store i16 %i.et, ptr %i.dw, align 2
  br label %ucm_findFallback.exit.us.i

ucm_findFallback.exit.us.i:                       ; preds = %ucm_findFallback.exit.us.sink.split.i, %.split.us.i
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 256
  br i1 %exitcond63.not, label %.split220.us.i, label %.split.us.i, !llvm.loop !34

.split.i:                                         ; preds = %bb.i, %ucm_findFallback.exit.i
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %ucm_findFallback.exit.i ], [ 0, %bb.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv56
  %i.ev = load i32, ptr %i.eu, align 4            ; 3 uses
  %i.ew = lshr i32 %i.ev, 20
  %i.ex = and i32 %i.ew, 15
  switch i32 %i.ex, label %ucm_findFallback.exit.i [
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.m:                                             ; preds = %.split.i
  %i.ey = and i32 %i.ev, 65535
  %i.ez = add nuw nsw i32 %i.ey, %i.dv
  %i.fa = load ptr, ptr %1, align 8
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = icmp eq i16 %i.fd, -2
  br i1 %i.fe, label %ucm_findFallback.exit.sink.split.i, label %.split220.us.thread.i

bb.n:                                             ; preds = %.split.i
  %i.ff = and i32 %i.ev, 65535
  %i.fg = add nuw nsw i32 %i.ff, %i.dv
  %i.fh = load ptr, ptr %1, align 8
  %i.fi = zext nneg i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = icmp eq i16 %i.fk, -2
  br i1 %i.fl, label %ucm_findFallback.exit.sink.split.i, label %.split220.us.thread.i

ucm_findFallback.exit.sink.split.i:               ; preds = %bb.n, %bb.m
  %.sink324.i = phi i16 [ 1, %bb.m ], [ 2, %bb.n ]
  %i.fm = load i16, ptr %i.dw, align 2
  %i.fn = add i16 %i.fm, %.sink324.i
  store i16 %i.fn, ptr %i.dw, align 2
  br label %ucm_findFallback.exit.i

ucm_findFallback.exit.i:                          ; preds = %ucm_findFallback.exit.sink.split.i, %.split.i
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 256
  br i1 %exitcond59.not, label %.split220.us.i, label %.split.i, !llvm.loop !34

.split220.us.i:                                   ; preds = %ucm_findFallback.exit.i, %ucm_findFallback.exit.us.i
  %i.fo = load i16, ptr %i.dw, align 2
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add nsw i32 %.0179221.i, %i.fp
  br label %bb.o

.split220.us.thread.i:                            ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %.lr.ph.i.us.i
  store i16 0, ptr %i.dw, align 2
  br label %bb.o

bb.o:                                             ; preds = %.split220.us.thread.i, %.split220.us.i, %bb.h
  %.1180.i = phi i32 [ %i.fq, %.split220.us.i ], [ %.0179221.i, %.split220.us.thread.i ], [ %.0179221.i, %bb.h ] ; 3 uses
  %indvars.iv.next252.i = add nuw nsw i64 %indvars.iv251.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next252.i, 256
  br i1 %exitcond254.not.i, label %bb.p, label %bb.h, !llvm.loop !35

bb.p:                                             ; preds = %bb.o
  %i.fr = shl nsw i32 %.1180.i, 1
  %i.fs = add nsw i32 %i.fr, -1024
  %i.ft = icmp slt i32 %.1180.i, 513
  br i1 %i.ft, label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fu = zext nneg i32 %i.fs to i64
  %i.fv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i64 noundef %i.fu) ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fw = phi i32 [ %.pre.i, %bb.r ], [ %.lcssa41, %bb.q ] ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 127
  br i1 %i.fx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fy = load ptr, ptr @stderr, align 8
  %i.fz = tail call i64 @fwrite(ptr nonnull @.str.56, i64 73, i64 1, ptr %i.fy) #19 ; 0 uses
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

bb.u:                                             ; preds = %bb.s
  %i.ga = shl nsw i32 %i.fw, 10
  %i.gb = sext i32 %i.ga to i64
  %i.gc = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.gb) #20 ; 10 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.v, label %vector.memcheck

bb.v:                                             ; preds = %bb.u
  %i.ge = load ptr, ptr @stderr, align 8
  %i.gf = tail call i64 @fwrite(ptr nonnull @.str.57, i64 40, i64 1, ptr %i.ge) #19 ; 0 uses
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

vector.memcheck:                                  ; preds = %bb.u
  %i.gg = load i32, ptr %i.c, align 4             ; 6 uses
  %i.gh = shl nsw i32 %i.gg, 10
  %i.gi = sext i32 %i.gh to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gc, ptr nonnull align 4 %0, i64 %i.gi, i1 false)
  %i.gj = add nsw i32 %i.gg, 1
  store i32 %i.gj, ptr %i.c, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 4 uses
  %i.gl = sext i32 %i.gg to i64                   ; 3 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gl
  store i32 0, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds [1024 x i8], ptr %0, i64 %i.gl ; 3 uses
  %diff.check = icmp eq i64 %i.gl, %i.dn
  br i1 %diff.check, label %scalar.ph, label %vector.body104

vector.body104:                                   ; preds = %vector.memcheck, %vector.body104
  %index105 = phi i64 [ %index.next108, %vector.body104 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index105 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load106 = load <4 x i32>, ptr %i.go, align 4 ; 3 uses
  %wide.load107 = load <4 x i32>, ptr %i.gp, align 4 ; 3 uses
  %i.gq = and <4 x i32> %wide.load106, splat (i32 14680064)
  %i.gr = and <4 x i32> %wide.load107, splat (i32 14680064)
  %i.gs = icmp eq <4 x i32> %i.gq, splat (i32 4194304)
  %i.gt = icmp eq <4 x i32> %i.gr, splat (i32 4194304)
  %i.gu = and <4 x i32> %wide.load106, splat (i32 -16777216)
  %i.gv = and <4 x i32> %wide.load107, splat (i32 -16777216)
  %i.gw = or disjoint <4 x i32> %i.gu, splat (i32 6356990)
  %i.gx = or disjoint <4 x i32> %i.gv, splat (i32 6356990)
  %i.gy = select <4 x i1> %i.gs, <4 x i32> %i.gw, <4 x i32> %wide.load106
  %i.gz = select <4 x i1> %i.gt, <4 x i32> %i.gx, <4 x i32> %wide.load107
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index105 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <4 x i32> %i.gy, ptr %i.ha, align 4
  store <4 x i32> %i.gz, ptr %i.hb, align 4
  %index.next108 = add nuw i64 %index105, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next108, 256
  br i1 %i.hc, label %.preheader212.i, label %vector.body104, !llvm.loop !36

.preheader212.i:                                  ; preds = %vector.body104, %scalar.ph
  %i.hd = shl i32 %i.gg, 24                       ; 2 uses
  br label %bb.w

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv255.i
  %6 = load i32, ptr %5, align 4                  ; 3 uses
  %7 = and i32 %6, 14680064
  %switch.i = icmp eq i32 %7, 4194304
  %8 = and i32 %6, -16777216
  %9 = or disjoint i32 %8, 6356990
  %.sink.i = select i1 %switch.i, i32 %9, i32 %6
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv255.i
  store i32 %.sink.i, ptr %10, align 4
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1 ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next256.i
  %12 = load i32, ptr %11, align 4                ; 3 uses
  %13 = and i32 %12, 14680064
  %switch.i.1 = icmp eq i32 %13, 4194304
  %14 = and i32 %12, -16777216
  %15 = or disjoint i32 %14, 6356990
  %.sink.i.1 = select i1 %switch.i.1, i32 %15, i32 %12
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next256.i
  store i32 %.sink.i.1, ptr %16, align 4
  %indvars.iv.next256.i.1 = add nuw nsw i64 %indvars.iv255.i, 2 ; 2 uses
  %exitcond258.not.i.1 = icmp eq i64 %indvars.iv.next256.i.1, 256
  br i1 %exitcond258.not.i.1, label %.preheader212.i, label %scalar.ph, !llvm.loop !37

.preheader211.i:                                  ; preds = %bb.aa
  %i.he = load i32, ptr %i.c, align 4
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph226.i, label %._crit_edge227.i

bb.w:                                             ; preds = %bb.aa, %.preheader212.i
  %indvars.iv259.i = phi i64 [ 0, %.preheader212.i ], [ %indvars.iv.next260.i.1, %bb.aa ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv259.i
  %i.hh = load i16, ptr %i.hg, align 4
  %.not193.i = icmp eq i16 %i.hh, 0
  br i1 %.not193.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv259.i ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = and i32 %i.hj, -2130706433
  %i.hl = or i32 %i.hk, %i.hd
  store i32 %i.hl, ptr %i.hi, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next260.i = or disjoint i64 %indvars.iv259.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next260.i
  %i.hn = load i16, ptr %i.hm, align 2
  %.not193.i.1 = icmp eq i16 %i.hn, 0
  br i1 %.not193.i.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next260.i ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = and i32 %i.hp, -2130706433
  %i.hr = or i32 %i.hq, %i.hd
  store i32 %i.hr, ptr %i.ho, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next260.i.1 = add nuw nsw i64 %indvars.iv259.i, 2 ; 2 uses
  %exitcond262.not.i.1 = icmp eq i64 %indvars.iv.next260.i.1, 256
  br i1 %exitcond262.not.i.1, label %.preheader211.i, label %bb.w, !llvm.loop !38

.lr.ph226.i:                                      ; preds = %.preheader211.i, %.lr.ph226.i
  %indvars.iv263.i = phi i64 [ %indvars.iv.next264.i, %.lr.ph226.i ], [ 0, %.preheader211.i ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv263.i ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, -17
  store i32 %i.hu, ptr %i.hs, align 4
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %i.hv = load i32, ptr %i.c, align 4
  %i.hw = sext i32 %i.hv to i64
  %i.hx = icmp slt i64 %indvars.iv.next264.i, %i.hw
  br i1 %i.hx, label %.lr.ph226.i, label %._crit_edge227.i, !llvm.loop !39

._crit_edge227.i:                                 ; preds = %.lr.ph226.i, %.preheader211.i
  %i.hy = tail call fastcc noundef i32 @_ZL11sumUpStatesP9UCMStates(ptr noundef nonnull %0) ; 5 uses
  %i.hz = load ptr, ptr %1, align 8               ; 8 uses
  %i.ia = icmp eq i32 %i.hy, 0
  br i1 %i.ia, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %._crit_edge227.i
  store ptr null, ptr %1, align 8
  %.not192.i = icmp eq ptr %i.hz, null
  br i1 %.not192.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @uprv_free_78(ptr noundef nonnull %i.hz) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  tail call void @uprv_free_78(ptr noundef nonnull %i.gc) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

bb.ae:                                            ; preds = %._crit_edge227.i
  %i.ib = sext i32 %i.hy to i64                   ; 2 uses
  %i.ic = shl nsw i64 %i.ib, 1
  %i.id = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ic) #20 ; 2 uses
  store ptr %i.id, ptr %1, align 8
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.af, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.ae
  %i.if = icmp sgt i32 %i.hy, 0
  br i1 %i.if, label %.lr.ph229.preheader.i, label %.preheader209.i

.lr.ph229.preheader.i:                            ; preds = %.preheader210.i
  %wide.trip.count269.i = zext nneg i32 %i.hy to i64 ; 2 uses
  %xtraiter118 = and i64 %wide.trip.count269.i, 3 ; 3 uses
  %i.ig = icmp ult i32 %i.hy, 4
  br i1 %i.ig, label %.lr.ph229.i.epil.preheader, label %.lr.ph229.preheader.i.new

.lr.ph229.preheader.i.new:                        ; preds = %.lr.ph229.preheader.i
  %unroll_iter122 = and i64 %wide.trip.count269.i, 2147483644
  br label %.lr.ph229.i

bb.af:                                            ; preds = %bb.ae
  %i.ih = load ptr, ptr @stderr, align 8
  %i.ii = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.58, i64 noundef %i.ib) #15 ; 0 uses
  store ptr %i.hz, ptr %1, align 8
  %i.ij = load i32, ptr %i.c, align 4
  %i.ik = add nsw i32 %i.ij, -1                   ; 2 uses
  store i32 %i.ik, ptr %i.c, align 4
  %i.il = shl nsw i32 %i.ik, 10
  %i.im = sext i32 %i.il to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.gc, i64 %i.im, i1 false)
  tail call void @uprv_free_78(ptr noundef nonnull %i.gc) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

.preheader209.i.loopexit.unr-lcssa:               ; preds = %.lr.ph229.i
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %.preheader209.i, label %.lr.ph229.i.epil.preheader

.lr.ph229.i.epil.preheader:                       ; preds = %.preheader209.i.loopexit.unr-lcssa, %.lr.ph229.preheader.i
  %indvars.iv266.i.epil.init = phi i64 [ 0, %.lr.ph229.preheader.i ], [ %indvars.iv.next267.i.3, %.preheader209.i.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph229.i.epil

.lr.ph229.i.epil:                                 ; preds = %.lr.ph229.i.epil, %.lr.ph229.i.epil.preheader
  %indvars.iv266.i.epil = phi i64 [ %indvars.iv266.i.epil.init, %.lr.ph229.i.epil.preheader ], [ %indvars.iv.next267.i.epil, %.lr.ph229.i.epil ] ; 2 uses
  %epil.iter119 = phi i64 [ 0, %.lr.ph229.i.epil.preheader ], [ %epil.iter119.next, %.lr.ph229.i.epil ]
  %i.in = load ptr, ptr %1, align 8
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv266.i.epil
  store i16 -2, ptr %i.io, align 2
  %indvars.iv.next267.i.epil = add nuw nsw i64 %indvars.iv266.i.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %.preheader209.i, label %.lr.ph229.i.epil, !llvm.loop !40

.preheader209.i:                                  ; preds = %.preheader209.i.loopexit.unr-lcssa, %.lr.ph229.i.epil, %.preheader210.i
  %i.ip = load i32, ptr %i.c, align 4             ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph238.i, label %.preheader.i

.lr.ph238.i:                                      ; preds = %.preheader209.i
  br i1 %i.dp, label %.lr.ph238.split.us.i, label %.lr.ph238.split.i

.lr.ph238.split.us.i:                             ; preds = %.lr.ph238.i, %.loopexit208.split.us.us.i
  %i.ir = phi i32 [ %i.iw, %.loopexit208.split.us.us.i ], [ %i.ip, %.lr.ph238.i ]
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %.loopexit208.split.us.us.i ], [ 0, %.lr.ph238.i ] ; 4 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv290.i
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = and i32 %i.it, 15
  %i.iv = icmp eq i32 %i.iu, 1
  br i1 %i.iv, label %.preheader207.us.i, label %.loopexit208.split.us.us.i

.loopexit208.split.us.us.loopexit.i:              ; preds = %.loopexit.split.us235.us.i
  %.pre299.i = load i32, ptr %i.c, align 4
  br label %.loopexit208.split.us.us.i

.loopexit208.split.us.us.i:                       ; preds = %.loopexit208.split.us.us.loopexit.i, %.lr.ph238.split.us.i
  %i.iw = phi i32 [ %.pre299.i, %.loopexit208.split.us.us.loopexit.i ], [ %i.ir, %.lr.ph238.split.us.i ] ; 2 uses
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = icmp slt i64 %indvars.iv.next291.i, %i.ix
  br i1 %i.iy, label %.lr.ph238.split.us.i, label %.preheader.i, !llvm.loop !41

.preheader207.us.i:                               ; preds = %.lr.ph238.split.us.i
  %i.iz = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv290.i
  %i.ja = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %indvars.iv290.i
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split.us235.us.i, %.preheader207.us.i
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %.loopexit.split.us235.us.i ], [ 0, %.preheader207.us.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv286.i
  %i.jc = load i32, ptr %i.jb, align 4            ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %bb.ah, label %.loopexit.split.us235.us.i

bb.ah:                                            ; preds = %bb.ag
  %i.je = lshr i32 %i.jc, 24                      ; 2 uses
  %.not191.us.us.i = icmp eq i32 %i.je, %i.gg
  br i1 %.not191.us.us.i, label %.loopexit.split.us235.us.i, label %.split231.us236.us.i

.split231.us236.us.i:                             ; preds = %bb.ah
  %i.jf = and i32 %i.jc, 16777215                 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv286.i
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = and i32 %i.jh, 16777215                 ; 2 uses
  %i.jj = zext nneg i32 %i.je to i64              ; 2 uses
  %i.jk = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.jj
  %i.jl = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %i.jj ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %ucm_findFallback.exit203.thread.us234.us.i, %.split231.us236.us.i
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i, %ucm_findFallback.exit203.thread.us234.us.i ], [ 0, %.split231.us236.us.i ] ; 4 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv282.i
  %i.jn = load i32, ptr %i.jm, align 4            ; 3 uses
  %i.jo = lshr i32 %i.jn, 20
  %i.jp = and i32 %i.jo, 15
  switch i32 %i.jp, label %ucm_findFallback.exit203.thread.us234.us.i [
    i32 4, label %bb.ak
    i32 5, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.jq = and i32 %i.jn, 65535
  %i.jr = add nuw nsw i32 %i.jq, %i.jf
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv282.i
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = and i32 %i.jt, 65535
  %i.jv = add nuw nsw i32 %i.ju, %i.ji
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.jw ; 2 uses
  %i.jy = load i16, ptr %i.jx, align 2
  %i.jz = load ptr, ptr %1, align 8
  %i.ka = zext nneg i32 %i.jr to i64              ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %i.ka
  store i16 %i.jy, ptr %i.kb, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = load ptr, ptr %1, align 8
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  store i16 %i.kd, ptr %i.kg, align 2
  br label %ucm_findFallback.exit203.thread.us234.us.i

bb.ak:                                            ; preds = %bb.ai
  %i.kh = and i32 %i.jn, 65535
  %i.ki = add nuw nsw i32 %i.kh, %i.jf            ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv282.i
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = and i32 %i.kk, 65535
  %i.km = add nuw nsw i32 %i.kl, %i.ji            ; 2 uses
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2            ; 2 uses
  %i.kq = load ptr, ptr %1, align 8
  %i.kr = zext nneg i32 %i.ki to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.kr
  store i16 %i.kp, ptr %i.ks, align 2
  %i.kt = icmp eq i16 %i.kp, -2
  br i1 %i.kt, label %.lr.ph.i198.us.us.i, label %ucm_findFallback.exit203.thread.us234.us.i

.lr.ph.i198.us.us.i:                              ; preds = %bb.ak, %bb.al
  %indvars.iv.i199.us.us.i = phi i64 [ %indvars.iv.next.i200.us.us.i, %bb.al ], [ 0, %bb.ak ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i199.us.us.i
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = icmp eq i32 %i.km, %i.kv
  br i1 %i.kw, label %ucm_findFallback.exit203.us.us.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i198.us.us.i
  %indvars.iv.next.i200.us.us.i = add nuw nsw i64 %indvars.iv.i199.us.us.i, 1 ; 2 uses
  %exitcond.not.i201.us.us.i = icmp eq i64 %indvars.iv.next.i200.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i201.us.us.i, label %ucm_findFallback.exit203.thread.us234.us.i, label %.lr.ph.i198.us.us.i, !llvm.loop !27

ucm_findFallback.exit203.us.us.i:                 ; preds = %.lr.ph.i198.us.us.i
  %i.kx = or disjoint i32 %i.ki, -2147483648
  %i.ky = and i64 %indvars.iv.i199.us.us.i, 4294967295
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ky
  store i32 %i.kx, ptr %i.kz, align 4
  br label %ucm_findFallback.exit203.thread.us234.us.i

ucm_findFallback.exit203.thread.us234.us.i:       ; preds = %bb.al, %ucm_findFallback.exit203.us.us.i, %bb.ak, %bb.aj, %bb.ai
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %exitcond285.not.i = icmp eq i64 %indvars.iv.next283.i, 256
  br i1 %exitcond285.not.i, label %.loopexit.split.us235.us.i, label %bb.ai, !llvm.loop !42

.loopexit.split.us235.us.i:                       ; preds = %ucm_findFallback.exit203.thread.us234.us.i, %bb.ah, %bb.ag
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next287.i, 256
  br i1 %exitcond289.not.i, label %.loopexit208.split.us.us.loopexit.i, label %bb.ag, !llvm.loop !43

.lr.ph229.i:                                      ; preds = %.lr.ph229.i, %.lr.ph229.preheader.i.new
  %indvars.iv266.i = phi i64 [ 0, %.lr.ph229.preheader.i.new ], [ %indvars.iv.next267.i.3, %.lr.ph229.i ] ; 5 uses
  %niter123 = phi i64 [ 0, %.lr.ph229.preheader.i.new ], [ %niter123.next.3, %.lr.ph229.i ]
  %i.la = load ptr, ptr %1, align 8
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.la, i64 %indvars.iv266.i
  store i16 -2, ptr %i.lb, align 2
  %i.lc = load ptr, ptr %1, align 8
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %indvars.iv266.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  store i16 -2, ptr %i.le, align 2
  %i.lf = load ptr, ptr %1, align 8
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %indvars.iv266.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  store i16 -2, ptr %i.lh, align 2
  %i.li = load ptr, ptr %1, align 8
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv266.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 6
  store i16 -2, ptr %i.lk, align 2
  %indvars.iv.next267.i.3 = add nuw nsw i64 %indvars.iv266.i, 4 ; 2 uses
  %niter123.next.3 = add i64 %niter123, 4         ; 2 uses
  %niter123.ncmp.3 = icmp eq i64 %niter123.next.3, %unroll_iter122
  br i1 %niter123.ncmp.3, label %.preheader209.i.loopexit.unr-lcssa, label %.lr.ph229.i, !llvm.loop !44

.preheader.i:                                     ; preds = %.loopexit208.split.i, %.loopexit208.split.us.us.i, %.preheader209.i
  br i1 %i.dp, label %.lr.ph240.i.preheader, label %._crit_edge241.i

.lr.ph240.i.preheader:                            ; preds = %.preheader.i
  %xtraiter124 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.ll = icmp ult i32 %3, 4
  br i1 %i.ll, label %.lr.ph240.i.epil.preheader, label %.lr.ph240.i.preheader.new

.lr.ph240.i.preheader.new:                        ; preds = %.lr.ph240.i.preheader
  %unroll_iter128 = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph240.i

.lr.ph238.split.i:                                ; preds = %.lr.ph238.i, %.loopexit208.split.i
  %i.lm = phi i32 [ %i.nl, %.loopexit208.split.i ], [ %i.ip, %.lr.ph238.i ]
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i, %.loopexit208.split.i ], [ 0, %.lr.ph238.i ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv279.i
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = and i32 %i.lo, 15
  %i.lq = icmp eq i32 %i.lp, 1
  br i1 %i.lq, label %.preheader207.i, label %.loopexit208.split.i

.preheader207.i:                                  ; preds = %.lr.ph238.split.i
  %i.lr = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %indvars.iv279.i
  %i.ls = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %indvars.iv279.i
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split.us.i, %.preheader207.i
  %indvars.iv275.i = phi i64 [ 0, %.preheader207.i ], [ %indvars.iv.next276.i, %.loopexit.split.us.i ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv275.i
  %i.lu = load i32, ptr %i.lt, align 4            ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, -1
  br i1 %i.lv, label %bb.an, label %.loopexit.split.us.i

bb.an:                                            ; preds = %bb.am
  %i.lw = lshr i32 %i.lu, 24                      ; 2 uses
  %.not191.i = icmp eq i32 %i.lw, %i.gg
  br i1 %.not191.i, label %.loopexit.split.us.i, label %.split231.us.i

.split231.us.i:                                   ; preds = %bb.an
  %i.lx = and i32 %i.lu, 16777215                 ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv275.i
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = and i32 %i.lz, 16777215                 ; 2 uses
  %i.mb = zext nneg i32 %i.lw to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.mb
  %i.md = getelementptr inbounds nuw [1024 x i8], ptr %i.gc, i64 %i.mb ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %ucm_findFallback.exit203.thread.us.i, %.split231.us.i
  %indvars.iv271.i = phi i64 [ %indvars.iv.next272.i, %ucm_findFallback.exit203.thread.us.i ], [ 0, %.split231.us.i ] ; 4 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %indvars.iv271.i
  %i.mf = load i32, ptr %i.me, align 4            ; 3 uses
  %i.mg = lshr i32 %i.mf, 20
  %i.mh = and i32 %i.mg, 15
  switch i32 %i.mh, label %ucm_findFallback.exit203.thread.us.i [
    i32 4, label %bb.aq
    i32 5, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.mi = and i32 %i.mf, 65535
  %i.mj = add nuw nsw i32 %i.mi, %i.lx
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv271.i
  %i.ml = load i32, ptr %i.mk, align 4
  %i.mm = and i32 %i.ml, 65535
  %i.mn = add nuw nsw i32 %i.mm, %i.ma
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.mo ; 2 uses
  %i.mq = load i16, ptr %i.mp, align 2
  %i.mr = load ptr, ptr %1, align 8
  %i.ms = zext nneg i32 %i.mj to i64              ; 2 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.mr, i64 %i.ms
  store i16 %i.mq, ptr %i.mt, align 2
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  %i.mv = load i16, ptr %i.mu, align 2
  %i.mw = load ptr, ptr %1, align 8
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %i.ms
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  store i16 %i.mv, ptr %i.my, align 2
  br label %ucm_findFallback.exit203.thread.us.i

bb.aq:                                            ; preds = %bb.ao
  %i.mz = and i32 %i.mf, 65535
  %i.na = add nuw nsw i32 %i.mz, %i.lx
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv271.i
  %i.nc = load i32, ptr %i.nb, align 4
  %i.nd = and i32 %i.nc, 65535
  %i.ne = add nuw nsw i32 %i.nd, %i.ma
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.nf
  %i.nh = load i16, ptr %i.ng, align 2
  %i.ni = load ptr, ptr %1, align 8
  %i.nj = zext nneg i32 %i.na to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.nj
  store i16 %i.nh, ptr %i.nk, align 2
  br label %ucm_findFallback.exit203.thread.us.i

ucm_findFallback.exit203.thread.us.i:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next272.i, 256
  br i1 %exitcond274.not.i, label %.loopexit.split.us.i, label %bb.ao, !llvm.loop !42

.loopexit.split.us.i:                             ; preds = %ucm_findFallback.exit203.thread.us.i, %bb.an, %bb.am
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next276.i, 256
  br i1 %exitcond278.not.i, label %.loopexit208.split.loopexit.i, label %bb.am, !llvm.loop !43

.loopexit208.split.loopexit.i:                    ; preds = %.loopexit.split.us.i
  %.pre298.i = load i32, ptr %i.c, align 4
  br label %.loopexit208.split.i

.loopexit208.split.i:                             ; preds = %.loopexit208.split.loopexit.i, %.lr.ph238.split.i
  %i.nl = phi i32 [ %.pre298.i, %.loopexit208.split.loopexit.i ], [ %i.lm, %.lr.ph238.split.i ] ; 2 uses
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %i.nm = sext i32 %i.nl to i64
  %i.nn = icmp slt i64 %indvars.iv.next280.i, %i.nm
  br i1 %i.nn, label %.lr.ph238.split.i, label %.preheader.i, !llvm.loop !41

.lr.ph240.i:                                      ; preds = %.lr.ph240.i, %.lr.ph240.i.preheader.new
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph240.i.preheader.new ], [ %indvars.iv.next294.i.3, %.lr.ph240.i ] ; 5 uses
  %niter129 = phi i64 [ 0, %.lr.ph240.i.preheader.new ], [ %niter129.next.3, %.lr.ph240.i ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i ; 2 uses
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = and i32 %i.np, 2147483647
  store i32 %i.nq, ptr %i.no, align 4
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4
  %i.nu = and i32 %i.nt, 2147483647
  store i32 %i.nu, ptr %i.ns, align 4
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4
  %i.ny = and i32 %i.nx, 2147483647
  store i32 %i.ny, ptr %i.nw, align 4
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24 ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4
  %i.oc = and i32 %i.ob, 2147483647
  store i32 %i.oc, ptr %i.oa, align 4
  %indvars.iv.next294.i.3 = add nuw nsw i64 %indvars.iv293.i, 4 ; 2 uses
  %niter129.next.3 = add i64 %niter129, 4         ; 2 uses
  %niter129.ncmp.3 = icmp eq i64 %niter129.next.3, %unroll_iter128
  br i1 %niter129.ncmp.3, label %._crit_edge241.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !45

._crit_edge241.i.loopexit.unr-lcssa:              ; preds = %.lr.ph240.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge241.i, label %.lr.ph240.i.epil.preheader

.lr.ph240.i.epil.preheader:                       ; preds = %._crit_edge241.i.loopexit.unr-lcssa, %.lr.ph240.i.preheader
  %indvars.iv293.i.epil.init = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next294.i.3, %._crit_edge241.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph240.i.epil

.lr.ph240.i.epil:                                 ; preds = %.lr.ph240.i.epil, %.lr.ph240.i.epil.preheader
  %indvars.iv293.i.epil = phi i64 [ %indvars.iv.next294.i.epil, %.lr.ph240.i.epil ], [ %indvars.iv293.i.epil.init, %.lr.ph240.i.epil.preheader ] ; 2 uses
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.lr.ph240.i.epil ], [ 0, %.lr.ph240.i.epil.preheader ]
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv293.i.epil ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4
  %i.of = and i32 %i.oe, 2147483647
  store i32 %i.of, ptr %i.od, align 4
  %indvars.iv.next294.i.epil = add nuw nsw i64 %indvars.iv293.i.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %._crit_edge241.i, label %.lr.ph240.i.epil, !llvm.loop !46

._crit_edge241.i:                                 ; preds = %._crit_edge241.i.loopexit.unr-lcssa, %.lr.ph240.i.epil, %.preheader.i
  tail call void @uprv_free_78(ptr noundef %i.hz) #17
  tail call void @uprv_free_78(ptr noundef nonnull %i.gc) #17
  br label %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit

_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit: ; preds = %bb.p, %bb.t, %bb.v, %bb.ad, %bb.af, %._crit_edge241.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit

bb.ar:                                            ; preds = %._crit_edge
  %i.og = icmp sgt i32 %i.bd, 2
  %i.oh = icmp ne i8 %4, 0
  %or.cond = and i1 %i.oh, %i.og
  br i1 %or.cond, label %bb.as, label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit

bb.as:                                            ; preds = %bb.ar
  %i.oi = load ptr, ptr %1, align 8
  %i.oj = icmp sgt i32 %.lcssa41, 0
  br i1 %i.oj, label %.lr.ph.i32, label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit

.lr.ph.i32:                                       ; preds = %bb.as
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 131072
  br label %bb.at

bb.at:                                            ; preds = %bb.aw, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i32 ], [ %indvars.iv.next.i34, %bb.aw ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i33
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = and i32 %i.om, 15
  %i.oo = icmp eq i32 %i.on, 1
  br i1 %i.oo, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.op = trunc nuw nsw i64 %indvars.iv.i33 to i32
  %i.oq = tail call fastcc noundef i32 @_ZL14findUnassignedP9UCMStatesPtP16_MBCSToUFallbackiiij(ptr noundef nonnull readonly %0, ptr noundef readonly %i.oi, ptr noundef readonly %2, i32 noundef %3, i32 noundef %i.op, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.os = zext nneg i32 %i.oq to i64
  %i.ot = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %indvars.iv.i33, i64 noundef %i.os) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %i.ou = load i32, ptr %i.c, align 4
  %i.ov = sext i32 %i.ou to i64
  %i.ow = icmp slt i64 %indvars.iv.next.i34, %i.ov
  br i1 %i.ow, label %bb.at, label %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit, !llvm.loop !47

_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit: ; preds = %bb.aw, %bb.as, %bb.ar, %_ZL17compactToUnicode2P9UCMStatesPPtP16_MBCSToUFallbackia.exit
  %i.ox = icmp sgt i32 %3, 0
  br i1 %i.ox, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit
  store i32 0, ptr %i.b, align 4
  call void @uprv_sortArray_78(ptr noundef %2, i32 noundef %3, i32 noundef 8, ptr noundef nonnull @_ZL16compareFallbacksPKvS0_S0_, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull %i.b) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZL22compactToUnicodeHelperP9UCMStatesPtP16_MBCSToUFallbacki.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

declare void @uprv_sortArray_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL16compareFallbacksPKvS0_S0_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = load i32, ptr %2, align 4
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @ucm_countChars(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132096
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr %i.d) #19 ; 0 uses
  br label %.thread77

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 2
  br i1 %i.f, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132113
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 12
  %spec.select = zext i1 %i.i to i64
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.thread77

.lr.ph.preheader:                                 ; preds = %.thread, %bb.d
  %.059 = phi i64 [ %spec.select, %.thread ], [ 0, %bb.d ]
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %.thread64, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next68, %.thread64 ], [ 0, %.lr.ph.preheader ]
  %.150.ph = phi i64 [ %i.ai, %.thread64 ], [ %.059, %.lr.ph.preheader ]
  %.02649.ph = phi i32 [ %i.af, %.thread64 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv.ph, %.lr.ph.outer ] ; 3 uses
  %.150 = phi i64 [ %i.ac, %bb.i ], [ %.150.ph, %.lr.ph.outer ]
  %.03047 = phi i32 [ %i.ae, %bb.i ], [ 0, %.lr.ph.outer ]
  %i.k = and i64 %.150, 255
  %i.l = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4              ; 6 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = lshr i32 %i.q, 20
  %i.t = and i32 %i.s, 15
  switch i32 %i.t, label %bb.h [
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 6, label %.thread64
    i32 2, label %.thread64
    i32 0, label %.thread64
    i32 3, label %.thread64
    i32 1, label %.thread64
    i32 4, label %.thread64
    i32 5, label %.thread64
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr @stderr, align 8
  %i.v = tail call i64 @fwrite(ptr nonnull @.str.47, i64 47, i64 1, ptr %i.u) #19 ; 0 uses
  br label %.thread77

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr @stderr, align 8
  %i.x = tail call i64 @fwrite(ptr nonnull @.str.48, i64 51, i64 1, ptr %i.w) #19 ; 0 uses
  br label %.thread77

bb.h:                                             ; preds = %bb.e
  %i.y = load ptr, ptr @stderr, align 8
  %i.z = sext i32 %i.q to i64
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.49, i64 noundef %i.z) #15 ; 0 uses
  br label %.thread77

bb.i:                                             ; preds = %.lr.ph
  %i.ab = lshr i32 %i.q, 24                       ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = and i32 %i.q, 16777215
  %i.ae = add i32 %i.ad, %.03047                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

.thread64:                                        ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.af = add nuw nsw i32 %.02649.ph, 1           ; 2 uses
  %i.ag = lshr i32 %i.q, 24
  %i.ah = and i32 %i.ag, 127
  %i.ai = zext nneg i32 %i.ah to i64
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not69 = icmp eq i64 %indvars.iv.next68, %wide.trip.count
  br i1 %exitcond.not69, label %._crit_edge.thread73, label %.lr.ph.outer, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.i
  %i.aj = icmp eq i32 %i.ae, 0
  br i1 %i.aj, label %._crit_edge.thread73, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr @stderr, align 8
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.50, i32 noundef %i.ab) #15 ; 0 uses
  br label %.thread77

._crit_edge.thread73:                             ; preds = %.thread64, %._crit_edge
  %.026.lcssa63 = phi i32 [ %.02649.ph, %._crit_edge ], [ %i.af, %.thread64 ] ; 5 uses
  %i.am = icmp sgt i32 %.026.lcssa63, 1
  br i1 %i.am, label %bb.k, label %.thread77

bb.k:                                             ; preds = %._crit_edge.thread73
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 132113
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp ne i8 %i.ao, 12
  %i.aq = shl nuw nsw i32 %.026.lcssa63, 1
  %.not35 = icmp eq i32 %2, %i.aq
  %or.cond = select i1 %i.ap, i1 true, i1 %.not35
  br i1 %or.cond, label %.thread77, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.51, i32 noundef %.026.lcssa63) #15 ; 0 uses
  br label %.thread77

.thread77:                                        ; preds = %bb.d, %._crit_edge.thread73, %bb.k, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.b
  %.028 = phi i32 [ -1, %bb.b ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.l ], [ %.026.lcssa63, %bb.k ], [ %.026.lcssa63, %._crit_edge.thread73 ], [ 0, %bb.d ]
  ret i32 %.028
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef i32 @_ZL14findUnassignedP9UCMStatesPtP16_MBCSToUFallbackiiij(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %4 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [1024 x i8], ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.d = shl i32 %6, 8
  %i.e = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ucm_findFallback.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %ucm_findFallback.exit ] ; 3 uses
  %.058 = phi i8 [ 0, %bb.a ], [ %.1, %ucm_findFallback.exit ] ; 3 uses
  %.04157 = phi i32 [ 0, %bb.a ], [ %.142, %ucm_findFallback.exit ] ; 9 uses
  %.04356 = phi i32 [ 0, %bb.a ], [ %.144, %ucm_findFallback.exit ] ; 10 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4              ; 6 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.g, 24
  %i.j = and i32 %i.g, 16777215
  %i.k = add nsw i32 %i.j, %5
  %i.l = add nuw nsw i64 %indvars.iv, %i.e        ; 2 uses
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call fastcc noundef i32 @_ZL14findUnassignedP9UCMStatesPtP16_MBCSToUFallbackiiij(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %ucm_findFallback.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not51 = icmp eq i32 %i.n, 0
  br i1 %.not51, label %ucm_findFallback.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %i.n to i64
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i64 noundef %i.l, i64 noundef %i.a, i64 noundef %i.p) ; 0 uses
  %i.r = add nuw nsw i32 %i.n, %.04157
  br label %ucm_findFallback.exit

bb.f:                                             ; preds = %bb.b
  %.not50 = icmp eq i8 %.058, 0
  br i1 %.not50, label %bb.g, label %ucm_findFallback.exit

bb.g:                                             ; preds = %bb.f
  %i.s = lshr i32 %i.g, 20
  %i.t = and i32 %i.s, 15
  switch i32 %i.t, label %ucm_findFallback.exit [
    i32 4, label %bb.h
    i32 5, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.g, 65535
  %i.v = add nsw i32 %i.u, %5                     ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp eq i16 %i.y, -2
  br i1 %i.z, label %bb.i, label %ucm_findFallback.exit

bb.i:                                             ; preds = %bb.h
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ab = load i32, ptr %i.aa, align 4
  %.not64 = icmp eq i32 %i.v, %i.ab
  br i1 %.not64, label %ucm_findFallback.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !27

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.ac = add nsw i32 %.04356, 2
  br label %ucm_findFallback.exit

bb.k:                                             ; preds = %bb.g
  %i.ad = and i32 %i.g, 65535
  %i.ae = add nsw i32 %i.ad, %5
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = icmp ne i16 %i.ah, -2                   ; 2 uses
  %i.aj = add nsw i32 %.04356, 4
  %spec.select53 = select i1 %i.ai, i32 %.04356, i32 %i.aj
  %spec.select54 = zext i1 %i.ai to i8
  br label %ucm_findFallback.exit

ucm_findFallback.exit:                            ; preds = %.lr.ph.i, %.loopexit, %bb.k, %bb.h, %bb.c, %bb.d, %bb.e, %bb.g, %bb.f
  %.144 = phi i32 [ %.04356, %bb.h ], [ %.04356, %bb.e ], [ %.04356, %bb.d ], [ %.04356, %bb.f ], [ %.04356, %bb.g ], [ %spec.select53, %bb.k ], [ %.04356, %bb.c ], [ %i.ac, %.loopexit ], [ %.04356, %.lr.ph.i ] ; 2 uses
  %.142 = phi i32 [ %.04157, %bb.h ], [ %i.r, %bb.e ], [ %.04157, %bb.d ], [ %.04157, %bb.f ], [ %.04157, %bb.g ], [ %.04157, %bb.k ], [ %.04157, %bb.c ], [ %.04157, %.loopexit ], [ %.04157, %.lr.ph.i ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.h ], [ %.058, %bb.e ], [ %.058, %bb.d ], [ 1, %bb.f ], [ 0, %bb.g ], [ %spec.select54, %bb.k ], [ 1, %bb.c ], [ 0, %.loopexit ], [ 1, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.l, label %bb.b, !llvm.loop !49

bb.l:                                             ; preds = %ucm_findFallback.exit
  %.not = icmp eq i8 %.1, 0
  %i.ak = add nsw i32 %.142, %.144
  %.045 = select i1 %.not, i32 %i.ak, i32 -1
  ret i32 %.045
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6, !8, !7}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6, !7, !8}
!15 = distinct !{!15, !6, !8, !7}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
!25 = distinct !{!25, !6, !7, !8}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6, !7, !8}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6, !7, !8}
!37 = distinct !{!37, !6, !7}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
end_hunk_0
