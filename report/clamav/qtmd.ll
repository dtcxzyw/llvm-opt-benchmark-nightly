Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qtmd?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@qtmd_update_model:bb.a
  %.pre = load i16, ptr %.phi.trans.insert91, align 2, !tbaa !42 ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.h, -1    ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.prol
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !42
  %i.l = lshr i16 %i.k, 1                         ; 2 uses
  %.not54.prol = icmp ugt i16 %i.l, %.pre
  %i.m = add i16 %.pre, 1
  %spec.select.prol = select i1 %.not54.prol, i16 %i.l, i16 %i.m ; 2 uses
  store i16 %spec.select.prol, ptr %i.j, align 2, !tbaa !42
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi i16 [ %.pre, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.n = icmp eq i32 %i.d, 1
  br i1 %i.n, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.o = phi i16 [ %spec.select.1, %.lr.ph.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.p = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -2       ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !42
  %i.s = lshr i16 %i.r, 1                         ; 2 uses
  %.not54 = icmp ugt i16 %i.s, %i.o
  %i.t = add i16 %i.o, 1
  %spec.select = select i1 %.not54, i16 %i.s, i16 %i.t ; 3 uses
  store i16 %spec.select, ptr %i.q, align 2, !tbaa !42
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !42
  %i.x = lshr i16 %i.w, 1                         ; 2 uses
  %.not54.1 = icmp ugt i16 %i.x, %spec.select
  %i.y = add i16 %spec.select, 1
  %spec.select.1 = select i1 %.not54.1, i16 %i.x, i16 %i.y ; 2 uses
  store i16 %spec.select.1, ptr %i.v, align 2, !tbaa !42
  %i.z = icmp sgt i64 %indvars.iv, 2
  br i1 %i.z, label %.lr.ph.new, label %.loopexit

bb.c:                                             ; preds = %bb.a
  store i32 50, ptr %0, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 11 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 4 uses
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.pre93 = load i16, ptr %.phi.trans.insert92, align 2, !tbaa !42 ; 2 uses
  %xtraiter103 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.af = icmp ult i32 %i.ab, 4
  br i1 %i.af, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

.preheader56.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod105.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %.preheader56, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader56.unr-lcssa, %.lr.ph63
  %.epil.init = phi i16 [ %.pre93, %.lr.ph63 ], [ %i.bq, %.preheader56.unr-lcssa ]
  %indvars.iv73.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next74.3, %.preheader56.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ag = phi i16 [ %.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ]
  %indvars.iv73.epil = phi i64 [ %indvars.iv73.epil.init, %.epil.preheader ], [ %indvars.iv.next74.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.epil
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !42 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv73.epil
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %reass.sub.epil = sub i16 %i.ag, %i.aj
  %i.am = add i16 %reass.sub.epil, 1
  %i.an = lshr i16 %i.am, 1
  store i16 %i.an, ptr %i.al, align 2, !tbaa !42
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %.preheader56, label %bb.d, !llvm.loop !80

.preheader56:                                     ; preds = %bb.d, %.preheader56.unr-lcssa
  %i.ao = add nsw i32 %i.ab, -1                   ; 2 uses
  %.not99 = icmp eq i32 %i.ab, 1
  br i1 %.not99, label %.lr.ph70, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count86 = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 4 uses
  %wide.trip.count81 = zext nneg i32 %i.ab to i64
  %i.ar = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph65

bb.e:                                             ; preds = %bb.e, %.lr.ph63.new
  %i.as = phi i16 [ %.pre93, %.lr.ph63.new ], [ %i.bq, %bb.e ]
  %indvars.iv73 = phi i64 [ 0, %.lr.ph63.new ], [ %indvars.iv.next74.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.3, %bb.e ]
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !42 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %reass.sub = sub i16 %i.as, %i.av
  %i.ay = add i16 %reass.sub, 1
  %i.az = lshr i16 %i.ay, 1
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !42
  %indvars.iv.next74.1 = or disjoint i64 %indvars.iv73, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !42 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %reass.sub.1 = sub i16 %i.av, %i.bc
  %i.bf = add i16 %reass.sub.1, 1
  %i.bg = lshr i16 %i.bf, 1
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !42
  %indvars.iv.next74.2 = or disjoint i64 %indvars.iv73, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %reass.sub.2 = sub i16 %i.bc, %i.bj
  %i.bm = add i16 %reass.sub.2, 1
  %i.bn = lshr i16 %i.bm, 1
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !42
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !42 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %reass.sub.3 = sub i16 %i.bj, %i.bq
  %i.bt = add i16 %reass.sub.3, 1
  %i.bu = lshr i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !42
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader56.unr-lcssa, label %bb.e

.loopexit55:                                      ; preds = %bb.j, %.prol.loopexit108
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.preheader, label %.lr.ph65

.preheader:                                       ; preds = %.loopexit55
  %i.bv = zext i32 %i.ao to i64
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader, %.preheader56
  %i.bw = phi i64 [ %i.bv, %.preheader ], [ 0, %.preheader56 ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38 ; 5 uses
  %i.bz = add nuw nsw i64 %i.bw, 1
  %xtraiter113 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.prol.loopexit112, label %.prol.preheader111

.prol.preheader111:                               ; preds = %.lr.ph70, %.prol.preheader111
  %indvars.iv88.prol = phi i64 [ %indvars.iv.next89.prol, %.prol.preheader111 ], [ %i.bw, %.lr.ph70 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader111 ], [ 0, %.lr.ph70 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv88.prol ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !42
  %i.cf = add i16 %i.ce, %i.cc
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !42
  %indvars.iv.next89.prol = add nsw i64 %indvars.iv88.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter113
  br i1 %prol.iter.cmp.not, label %.prol.loopexit112, label %.prol.preheader111, !llvm.loop !81

.prol.loopexit112:                                ; preds = %.prol.preheader111, %.lr.ph70
  %indvars.iv88.unr = phi i64 [ %i.bw, %.lr.ph70 ], [ %indvars.iv.next89.prol, %.prol.preheader111 ]
  %i.cg = icmp samesign ult i64 %i.bw, 3
  br i1 %i.cg, label %.loopexit, label %.lr.ph70.new

.lr.ph65:                                         ; preds = %.loopexit55, %.lr.ph67
  %indvars.iv83 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next84, %.loopexit55 ] ; 4 uses
  %indvars.iv76 = phi i64 [ 1, %.lr.ph67 ], [ %indvars.iv.next77, %.loopexit55 ] ; 4 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv83 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 3 uses
  %i.cj = sub nsw i64 %indvars.iv83, %wide.trip.count
  %i.ck = and i64 %i.cj, 1
  %lcmp.mod110.not.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod110.not.not, label %.prol.preheader107, label %.prol.loopexit108

.prol.preheader107:                               ; preds = %.lr.ph65
  %1 = load i16, ptr %i.ci, align 2, !tbaa !42
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv76 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !42
  %i.co = icmp ult i16 %1, %i.cn
  br i1 %i.co, label %bb.f, label %.prol.loopexit108.unr-lcssa

bb.f:                                             ; preds = %.prol.preheader107
  %i.cp = load i32, ptr %i.ch, align 2, !tbaa !39
  %i.cq = load i32, ptr %i.cl, align 2, !tbaa !39
  store i32 %i.cq, ptr %i.ch, align 2, !tbaa !39
  store i32 %i.cp, ptr %i.cl, align 2, !tbaa !39
  br label %.prol.loopexit108.unr-lcssa

.prol.loopexit108.unr-lcssa:                      ; preds = %bb.f, %.prol.preheader107
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv76, 1
  br label %.prol.loopexit108

.prol.loopexit108:                                ; preds = %.prol.loopexit108.unr-lcssa, %.lr.ph65
  %indvars.iv78.unr = phi i64 [ %indvars.iv76, %.lr.ph65 ], [ %indvars.iv.next79.prol, %.prol.loopexit108.unr-lcssa ]
  %i.cr = icmp eq i64 %i.ar, %indvars.iv83
  br i1 %i.cr, label %.loopexit55, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.prol.loopexit108, %bb.j
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.1, %bb.j ], [ %indvars.iv78.unr, %.prol.loopexit108 ] ; 3 uses
  %2 = load i16, ptr %i.ci, align 2, !tbaa !42
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv78 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !42
  %i.cv = icmp ult i16 %2, %i.cu
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph65.new
  %i.cw = load i32, ptr %i.ch, align 2, !tbaa !39
  %i.cx = load i32, ptr %i.cs, align 2, !tbaa !39
  store i32 %i.cx, ptr %i.ch, align 2, !tbaa !39
  store i32 %i.cw, ptr %i.cs, align 2, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph65.new, %bb.g
  %3 = load i16, ptr %i.ci, align 2, !tbaa !42
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv78 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 6
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !42
  %i.db = icmp ult i16 %3, %i.da
  br i1 %i.db, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.ch, align 2, !tbaa !39
  %i.de = load i32, ptr %i.dc, align 2, !tbaa !39
  store i32 %i.de, ptr %i.ch, align 2, !tbaa !39
  store i32 %i.dd, ptr %i.dc, align 2, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %exitcond82.not.1 = icmp eq i64 %indvars.iv.next79.1, %wide.trip.count81
  br i1 %exitcond82.not.1, label %.loopexit55, label %.lr.ph65.new

.lr.ph70.new:                                     ; preds = %.prol.loopexit112, %.lr.ph70.new
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.3, %.lr.ph70.new ], [ %indvars.iv88.unr, %.prol.loopexit112 ] ; 5 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !42
  %i.dk = add i16 %i.dj, %i.dh
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !42
  %i.dl = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv88 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 2
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !42
  %i.do = getelementptr i8, ptr %i.dl, i64 -2     ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !42
  %i.dq = add i16 %i.dp, %i.dn
  store i16 %i.dq, ptr %i.do, align 2, !tbaa !42
  %i.dr = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv88 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !42
  %i.du = getelementptr i8, ptr %i.dr, i64 -6     ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !42
  %i.dw = add i16 %i.dv, %i.dt
  store i16 %i.dw, ptr %i.du, align 2, !tbaa !42
  %indvars.iv.next89.2 = add nsw i64 %indvars.iv88, -3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next89.2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !42
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 2 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !42
  %i.ec = add i16 %i.eb, %i.dz
  store i16 %i.ec, ptr %i.ea, align 2, !tbaa !42
  %indvars.iv.next89.3 = add nsw i64 %indvars.iv88, -4
  %.not100.3 = icmp eq i64 %indvars.iv.next89.2, 0
  br i1 %.not100.3, label %.loopexit, label %.lr.ph70.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.prol.loopexit112, %.lr.ph70.new, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @qtmd_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void %i.c(ptr noundef %i.e) #4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  tail call void %i.f(ptr noundef %i.h) #4
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void %i.i(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"mspack_system", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80}
!10 = !{!"p1 _ZTS13mspack_system", !8, i64 0}
!11 = !{!"p1 _ZTS11mspack_file", !8, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"short", !4, i64 0}
!14 = !{!"p1 _ZTS13qtmd_modelsym", !8, i64 0}
!15 = !{!"qtmd_model", !5, i64 0, !5, i64 4, !14, i64 8}
!16 = !{!"qtmd_stream", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !13, i64 44, !13, i64 46, !13, i64 48, !4, i64 50, !5, i64 52, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !4, i64 104, !4, i64 105, !15, i64 112, !15, i64 128, !15, i64 144, !15, i64 160, !15, i64 176, !15, i64 192, !15, i64 208, !15, i64 224, !15, i64 240, !4, i64 256, !4, i64 516, !4, i64 776, !4, i64 1036, !4, i64 1296, !4, i64 1396, !4, i64 1544, !4, i64 1716, !4, i64 1828}
!17 = !{!16, !12, i64 24}
!18 = !{!16, !12, i64 56}
!19 = !{!9, !8, i64 64}
!20 = !{!16, !10, i64 0}
!21 = !{!16, !11, i64 8}
!22 = !{!16, !11, i64 16}
!23 = !{!16, !5, i64 100}
!24 = !{!16, !5, i64 32}
!25 = !{!16, !5, i64 36}
!26 = !{!16, !5, i64 40}
!27 = !{!16, !4, i64 50}
!28 = !{!16, !5, i64 52}
!29 = !{!16, !12, i64 72}
!30 = !{!16, !12, i64 64}
!31 = !{!16, !12, i64 88}
!32 = !{!16, !12, i64 80}
!33 = !{!16, !4, i64 105}
!34 = !{!16, !4, i64 104}
!35 = !{!16, !5, i64 96}
!36 = !{!15, !5, i64 0}
!37 = !{!15, !5, i64 4}
!38 = !{!15, !14, i64 8}
!39 = !{!13, !13, i64 0}
!40 = !{!"qtmd_modelsym", !13, i64 0, !13, i64 2}
!41 = !{!40, !13, i64 0}
!42 = !{!40, !13, i64 2}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!9, !8, i64 16}
!46 = !{!4, !4, i64 0}
!47 = distinct !{!47, !43, !44}
!48 = distinct !{!48, !44, !43}
!49 = distinct !{!49, !43, !44}
!50 = distinct !{!50, !44, !43}
!51 = distinct !{!51, !43, !44}
!52 = !{!9, !8, i64 56}
!53 = distinct !{!53, !44, !43}
!54 = distinct !{!54, !44, !43}
!55 = distinct !{!55, !44}
!56 = distinct !{!56, !44, !43}
!57 = distinct !{!57, !44, !43}
!58 = distinct !{!58, !44}
!59 = distinct !{!59, !44, !43}
!60 = distinct !{!60, !44, !43}
!61 = distinct !{!61, !44}
!62 = !{!9, !8, i64 24}
!63 = !{!16, !13, i64 44}
!64 = !{!16, !13, i64 46}
!65 = !{!16, !13, i64 48}
!66 = !{ptr @read_input}
!67 = !{!16, !14, i64 248}
!68 = !{!16, !5, i64 244}
!69 = !{!16, !14, i64 184}
!70 = !{!16, !5, i64 180}
!71 = !{!16, !14, i64 200}
!72 = !{!16, !5, i64 196}
!73 = !{!16, !14, i64 232}
!74 = !{!16, !5, i64 228}
!75 = !{!16, !14, i64 216}
!76 = !{!16, !5, i64 212}
!77 = !{!5, !5, i64 0}
!78 = !{!12, !12, i64 0}
!79 = !{!"branch_weights", i32 4, i32 28}
!80 = distinct !{!80, !82}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
