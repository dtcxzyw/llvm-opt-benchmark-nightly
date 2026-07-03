inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@HUFv06_readDTableX4:bb.a
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %i.al                    ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.al, ptr %i.aq, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !69

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07177.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.07177.epil = phi i32 [ %.07177.epil.init, %.lr.ph.epil.preheader ], [ %i.at, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = add i32 %i.as, %.07177.epil             ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  store i32 %.07177.epil, ptr %i.au, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !70

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.071.lcssa = phi i32 [ 0, %.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.epil ] ; 5 uses
  store i32 %.071.lcssa, ptr %i.i, align 4, !tbaa !3
  %i.av = load i32, ptr %i.h, align 4, !tbaa !3   ; 4 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %._crit_edge
  %wide.trip.count103 = zext i32 %i.av to i64     ; 2 uses
  %xtraiter178 = and i64 %wide.trip.count103, 1
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter182 = and i64 %wide.trip.count103, 4294967294
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %indvars.iv100 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %indvars.iv.next101.1, %.lr.ph82 ] ; 4 uses
  %niter183 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter183.next.1, %.lr.ph82 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv100
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !27  ; 2 uses
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !3
  %i.bd = trunc i64 %indvars.iv100 to i8
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.be ; 2 uses
  store i8 %i.bd, ptr %i.bf, align 2, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.ay, ptr %i.bg, align 1, !tbaa !56
  %indvars.iv.next101 = or disjoint i64 %indvars.iv100, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next101
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3
  %i.bn = trunc i64 %indvars.iv.next101 to i8
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bo ; 2 uses
  store i8 %i.bn, ptr %i.bp, align 2, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 %i.bi, ptr %i.bq, align 1, !tbaa !56
  %indvars.iv.next101.1 = add nuw nsw i64 %indvars.iv100, 2 ; 2 uses
  %niter183.next.1 = add i64 %niter183, 2         ; 2 uses
  %niter183.ncmp.1 = icmp eq i64 %niter183.next.1, %unroll_iter182
  br i1 %niter183.ncmp.1, label %._crit_edge83.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !72

._crit_edge83.loopexit.unr-lcssa:                 ; preds = %.lr.ph82
  %lcmp.mod180.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod180.not, label %._crit_edge83, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %._crit_edge83.loopexit.unr-lcssa, %.lr.ph82.preheader
  %indvars.iv100.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %indvars.iv.next101.1, %._crit_edge83.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod181 = trunc i32 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod181)
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv100.epil.init
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3  ; 2 uses
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !3
  %i.bx = trunc i64 %indvars.iv100.epil.init to i8
  %i.by = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.by ; 2 uses
  store i8 %i.bx, ptr %i.bz, align 2, !tbaa !54
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.bs, ptr %i.ca, align 1, !tbaa !56
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %.lr.ph82.epil.preheader, %._crit_edge83.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.i, align 4, !tbaa !3
  %i.cb = xor i32 %i.o, -1
  %i.cc = add nsw i32 %i.j, %i.cb                 ; 2 uses
  br i1 %i.x, label %.lr.ph87.preheader, label %._crit_edge88.thread

._crit_edge88.thread:                             ; preds = %._crit_edge83
  %i.cd = sub nsw i32 %i.q, %.067
  br label %._crit_edge96.split

.lr.ph87.preheader:                               ; preds = %._crit_edge83
  %wide.trip.count109 = zext i32 %indvars.iv98 to i64 ; 4 uses
  %i.ce = add nsw i64 %wide.trip.count109, -1     ; 3 uses
  %xtraiter184 = and i64 %i.ce, 1
  %i.cf = icmp eq i32 %indvars.iv98, 2
  br i1 %i.cf, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter188 = and i64 %i.ce, -2
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv105 = phi i64 [ 1, %.lr.ph87.preheader.new ], [ %indvars.iv.next106.1, %.lr.ph87 ] ; 5 uses
  %.06984 = phi i32 [ 0, %.lr.ph87.preheader.new ], [ %i.cs, %.lr.ph87 ] ; 2 uses
  %niter189 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter189.next.1, %.lr.ph87 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv105
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = trunc nuw i64 %indvars.iv105 to i32
  %i.cj = add i32 %i.cc, %i.ci
  %i.ck = shl i32 %i.ch, %i.cj
  %i.cl = add i32 %i.ck, %.06984                  ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv105
  store i32 %.06984, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next106
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = trunc nuw i64 %indvars.iv.next106 to i32
  %i.cq = add i32 %i.cc, %i.cp
  %i.cr = shl i32 %i.co, %i.cq
  %i.cs = add i32 %i.cr, %i.cl                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next106
  store i32 %i.cl, ptr %i.ct, align 4, !tbaa !3
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %niter189.next.1 = add nuw i64 %niter189, 2     ; 2 uses
  %niter189.ncmp.1 = icmp eq i64 %niter189.next.1, %unroll_iter188
  br i1 %niter189.ncmp.1, label %._crit_edge88.unr-lcssa, label %.lr.ph87, !llvm.loop !73

._crit_edge88.unr-lcssa:                          ; preds = %.lr.ph87
  %lcmp.mod186.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod186.not, label %._crit_edge88, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %._crit_edge88.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv105.epil.init = phi i64 [ 1, %.lr.ph87.preheader ], [ %indvars.iv.next106.1, %._crit_edge88.unr-lcssa ]
  %.06984.epil.init = phi i32 [ 0, %.lr.ph87.preheader ], [ %i.cs, %._crit_edge88.unr-lcssa ]
  %lcmp.mod187 = trunc i64 %i.ce to i1
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv105.epil.init
  store i32 %.06984.epil.init, ptr %i.cu, align 4, !tbaa !3
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.unr-lcssa, %.lr.ph87.epil.preheader
  %i.cv = sub i32 %i.q, %.067                     ; 4 uses
  %i.cw = add nuw nsw i32 %i.j, 1
  %i.cx = sub i32 %i.cw, %i.cv
  %i.cy = icmp ult i32 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph91.preheader, label %._crit_edge96.split

.lr.ph91.preheader:                               ; preds = %._crit_edge88
  %i.cz = zext i32 %indvars.iv117 to i64          ; 2 uses
  %wide.trip.count115 = zext i32 %indvars.iv98 to i64
  %i.da = add nsw i64 %wide.trip.count109, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.da, 8
  %n.vec = and i64 %i.da, -8                      ; 3 uses
  %i.db = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %._crit_edge92
  %indvar = phi i64 [ 0, %.lr.ph91.preheader ], [ %indvar.next, %._crit_edge92 ] ; 2 uses
  %indvars.iv119 = phi i64 [ %i.cz, %.lr.ph91.preheader ], [ %indvars.iv.next120, %._crit_edge92 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %indvars.iv119 ; 6 uses
  %i.dd = trunc nuw i64 %indvars.iv119 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph91
  %i.de = add i64 %indvar, %i.cz
  %i.df = mul i64 %i.de, 68
  %diff.check = icmp ult i64 %i.df, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = or disjoint i64 %index, 1               ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load = load <4 x i32>, ptr %i.dh, align 4, !tbaa !3
  %wide.load135 = load <4 x i32>, ptr %i.di, align 4, !tbaa !3
  %i.dj = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dk = lshr <4 x i32> %wide.load135, %broadcast.splat
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dg ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x i32> %i.dj, ptr %i.dl, align 4, !tbaa !3
  store <4 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge92, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph91, %middle.block
  %indvars.iv111.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph91 ], [ %i.db, %middle.block ] ; 4 uses
  %i.do = sub nsw i64 %wide.trip.count109, %indvars.iv111.ph
  %xtraiter190 = and i64 %i.do, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv111.prol = phi i64 [ %indvars.iv.next112.prol, %scalar.ph.prol ], [ %indvars.iv111.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv111.prol
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = lshr i32 %i.dq, %i.dd
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv111.prol
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !3
  %indvars.iv.next112.prol = add nuw nsw i64 %indvars.iv111.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter190
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !75

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv111.unr = phi i64 [ %indvars.iv111.ph, %scalar.ph.preheader ], [ %indvars.iv.next112.prol, %scalar.ph.prol ]
  %i.dt = sub nsw i64 %indvars.iv111.ph, %wide.trip.count109
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge92, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv111 = phi i64 [ %indvars.iv.next112.3, %scalar.ph ], [ %indvars.iv111.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv111
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = lshr i32 %i.dw, %i.dd
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv111
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next112
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = lshr i32 %i.ea, %i.dd
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next112
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !3
  %indvars.iv.next112.1 = add nuw nsw i64 %indvars.iv111, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next112.1
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = lshr i32 %i.ee, %i.dd
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next112.1
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %indvars.iv.next112.2 = add nuw nsw i64 %indvars.iv111, 3 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next112.2
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = lshr i32 %i.ei, %i.dd
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next112.2
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !3
  %indvars.iv.next112.3 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %exitcond116.not.3 = icmp eq i64 %indvars.iv.next112.3, %wide.trip.count115
  br i1 %exitcond116.not.3, label %._crit_edge92, label %scalar.ph, !llvm.loop !76

._crit_edge92:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next120 to i32
  %exitcond124.not = icmp eq i32 %indvars.iv122, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond124.not, label %._crit_edge96.split, label %.lr.ph91, !llvm.loop !77

._crit_edge96.split:                              ; preds = %._crit_edge92, %._crit_edge88.thread, %._crit_edge88
  %i.el = phi i32 [ %i.cd, %._crit_edge88.thread ], [ %i.cv, %._crit_edge88 ], [ %i.cv, %._crit_edge92 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.em = sub nsw i32 %i.q, %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i = icmp eq i32 %.071.lcssa, 0
  br i1 %.not56.i, label %HUFv06_fillDTableX4.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %._crit_edge96.split
  %wide.trip.count61.i = zext i32 %.071.lcssa to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i, %.lr.ph55.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next59.i, %.loopexit.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv58.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !54
  %i.ep = zext i8 %i.eo to i32                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !56  ; 2 uses
  %i.es = zext i8 %i.er to i32
  %i.et = sub nsw i32 %i.q, %i.es                 ; 6 uses
  %i.eu = zext i8 %i.er to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 5 uses
  %i.ex = sub nsw i32 %i.j, %i.et                 ; 3 uses
  %i.ey = shl nuw i32 1, %i.ex                    ; 2 uses
  %.not.i = icmp ult i32 %i.ex, %i.el
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph55.i
  %i.ez = add nsw i32 %i.et, %i.em                ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ez, i32 1)
  %i.fa = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3  ; 3 uses
  %i.fd = zext i32 %i.ew to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.fd ; 4 uses
  %i.ff = zext i32 %i.et to i64
  %i.fg = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.ff
  %i.fh = zext i32 %i.fc to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fh
  %i.fj = sub i32 %.071.lcssa, %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fg, i64 68, i1 false)
  %i.fk = icmp sgt i32 %i.ez, 1
  br i1 %i.fk, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fa
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 3 uses
  %.not.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.6.0.insert.ext42.i.i = shl nsw i32 %i.et, 16
  %.sroa.6.0.insert.shift43.i.i = and i32 %.sroa.6.0.insert.ext42.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i, %i.ep
  %.sroa.0.0.insert.insert40.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.fm to i64    ; 3 uses
  %min.iters.check164 = icmp ult i32 %i.fm, 8
  br i1 %min.iters.check164, label %scalar.ph163.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.i.i
  %n.vec167 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph165
  %index171 = phi i64 [ 0, %vector.ph165 ], [ %index.next172, %vector.body170 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %index171 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <4 x i32> %broadcast.splat169, ptr %i.fn, align 2
  store <4 x i32> %broadcast.splat169, ptr %i.fo, align 2
  %index.next172 = add nuw i64 %index171, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.fp, label %middle.block173, label %vector.body170, !llvm.loop !78

middle.block173:                                  ; preds = %vector.body170
  %cmp.n174 = icmp eq i64 %n.vec167, %wide.trip.count.i.i
  br i1 %cmp.n174, label %.loopexit.i.i, label %scalar.ph163.preheader

scalar.ph163.preheader:                           ; preds = %.lr.ph.i.i, %middle.block173
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec167, %middle.block173 ]
  br label %scalar.ph163

scalar.ph163:                                     ; preds = %scalar.ph163.preheader, %scalar.ph163
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph163 ], [ %indvars.iv.i.i.ph, %scalar.ph163.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i, ptr %i.fq, align 2
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %scalar.ph163, !llvm.loop !79

.loopexit.i.i:                                    ; preds = %scalar.ph163, %middle.block173, %bb.e, %bb.d
  %.not54.i.i = icmp eq i32 %.071.lcssa, %i.fc
  br i1 %.not54.i.i, label %HUFv06_fillDTableX4Level2.exit.i, label %.lr.ph53.preheader.i.i

.lr.ph53.preheader.i.i:                           ; preds = %.loopexit.i.i
  %wide.trip.count59.i.i = zext i32 %i.fj to i64
  %invariant.op.i = or disjoint i32 %i.ep, 33554432
  br label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %.loopexit, %.lr.ph53.preheader.i.i
  %indvars.iv56.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i ], [ %indvars.iv.next57.i.i, %.loopexit ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %indvars.iv56.i.i ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 2, !tbaa !54
  %i.ft = zext i8 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !56  ; 2 uses
  %i.fw = zext i8 %i.fv to i32
end_hunk_0
begin_hunk_1_@ZSTDv06_decompressBlock_internal:bb.a
.sink.split.sink.split.i:                         ; preds = %bb.bv, %bb.bu
  %.sink.ph.i = phi i64 [ %i.rp, %bb.bv ], [ %i.ro, %bb.bu ]
  %storemerge167180.ph.ph.i = phi i32 [ %i.rh, %bb.bv ], [ %storemerge167181.i, %bb.bu ]
  store i64 %i.pl, ptr %i.id, align 8, !tbaa !100
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.ro, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 2 uses
  %storemerge167180.ph.i = phi i32 [ %storemerge167181.i, %bb.bu ], [ %storemerge167180.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pk, ptr %i.ic, align 8, !tbaa !100
  store i64 %.sink.i, ptr %i.ib, align 8, !tbaa !100
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i, %.thread.i115.i
  %i.rq = phi i64 [ %i.pk, %.thread.i115.i ], [ %.sink.i, %.sink.split.i ] ; 18 uses
  %i.rr = phi i64 [ %i.pl, %.thread.i115.i ], [ %i.pk, %.sink.split.i ]
  %storemerge167180.i = phi i32 [ %storemerge167181.i, %.thread.i115.i ], [ %storemerge167180.ph.i, %.sink.split.i ] ; 3 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.ML_base, i64 %i.qq
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !3
  %i.ru = add i32 %i.rt, 3
  %i.rv = zext i32 %i.ru to i64                   ; 4 uses
  %i.rw = icmp ugt i8 %.sroa.3.0.copyload.i71.i.i, 31
  br i1 %i.rw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rx = and i32 %storemerge167180.i, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = shl i64 %.val.i74.i188.i, %i.ry
  %i.sa = lshr i64 %i.rz, 1
  %i.sb = and i32 %i.qs, 63
  %i.sc = xor i32 %i.sb, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = lshr i64 %i.sa, %i.sd
  %i.sf = add i32 %storemerge167180.i, %i.qs
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %storemerge167183.i = phi i32 [ %i.sf, %bb.bx ], [ %storemerge167180.i, %bb.bw ] ; 3 uses
  %i.sg = phi i64 [ %i.se, %bb.bx ], [ 0, %bb.bw ] ; 4 uses
  %i.sh = add nuw i64 %i.sg, %i.rv                ; 4 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.LL_base, i64 %i.qn
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !3
  %i.sk = zext i32 %i.sj to i64                   ; 7 uses
  %i.sl = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.sl, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sm = and i32 %storemerge167183.i, 63
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = shl i64 %.val.i74.i188.i, %i.sn
  %i.sp = lshr i64 %i.so, 1
  %i.sq = and i32 %i.qp, 63
  %i.sr = xor i32 %i.sq, 63
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = lshr i64 %i.sp, %i.ss
  %i.su = add i32 %storemerge167183.i, %i.qp
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge167184.i = phi i32 [ %i.su, %bb.bz ], [ %storemerge167183.i, %bb.by ] ; 7 uses
  %i.sv = phi i64 [ %i.st, %bb.bz ], [ 0, %bb.by ] ; 7 uses
  %i.sw = add nuw i64 %i.sv, %i.sk                ; 5 uses
  %i.sx = icmp ult i32 %i.qu, 32
  %i.sy = icmp ugt i32 %storemerge167184.i, 64
  %or.cond97.i.i = select i1 %i.sx, i1 true, i1 %i.sy
  br i1 %or.cond97.i.i, label %ZSTDv06_decodeSequence.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i112.i = icmp ult ptr %i.qh, %i.ov
  br i1 %.not.i.i112.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sz = lshr i32 %storemerge167184.i, 3
  %i.ta = zext nneg i32 %i.sz to i64
  %i.tb = sub nsw i64 0, %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.qh, i64 %i.tb ; 2 uses
  store ptr %i.tc, ptr %i.ou, align 8, !tbaa !51
  %i.td = and i32 %storemerge167184.i, 7
  br label %BITv06_reloadDStream.exit.sink.split.i113.i

bb.cd:                                            ; preds = %bb.cb
  %i.te = icmp eq ptr %i.qh, %i.hv
  br i1 %i.te, label %ZSTDv06_decodeSequence.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tf = lshr i32 %storemerge167184.i, 3         ; 2 uses
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = sub nsw i64 0, %i.tg
  %i.ti = getelementptr inbounds i8, ptr %i.qh, i64 %i.th
  %i.tj = icmp ult ptr %i.ti, %i.hv
  %i.tk = ptrtoint ptr %i.qh to i64
  %i.tl = sub i64 %i.tk, %i.hw
  %i.tm = trunc i64 %i.tl to i32
  %.024.i.i114.i = select i1 %i.tj, i32 %i.tm, i32 %i.tf ; 2 uses
  %i.tn = zext i32 %.024.i.i114.i to i64
  %i.to = sub nsw i64 0, %i.tn
  %i.tp = getelementptr inbounds i8, ptr %i.qh, i64 %i.to ; 2 uses
  store ptr %i.tp, ptr %i.ou, align 8, !tbaa !51
  %i.tq = shl i32 %.024.i.i114.i, 3
  %i.tr = sub i32 %storemerge167184.i, %i.tq
  br label %BITv06_reloadDStream.exit.sink.split.i113.i

BITv06_reloadDStream.exit.sink.split.i113.i:      ; preds = %bb.ce, %bb.cc
  %storemerge167.i = phi i32 [ %i.td, %bb.cc ], [ %i.tr, %bb.ce ] ; 2 uses
  %.val.i78.sink.in.i.i = phi ptr [ %i.tc, %bb.cc ], [ %i.tp, %bb.ce ] ; 2 uses
  store i32 %storemerge167.i, ptr %i.kq, align 8, !tbaa !53
  %.val.i78.sink.i.i = load i64, ptr %.val.i78.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val.i78.sink.i.i, ptr %5, align 8, !tbaa !52
  br label %ZSTDv06_decodeSequence.exit.i

ZSTDv06_decodeSequence.exit.i:                    ; preds = %BITv06_reloadDStream.exit.sink.split.i113.i, %bb.cd, %bb.ca
  %i.ts = phi ptr [ %i.qh, %bb.ca ], [ %i.qh, %bb.cd ], [ %.val.i78.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i113.i ]
  %.val.i74.i187.i = phi i64 [ %.val.i74.i188.i, %bb.ca ], [ %.val.i74.i188.i, %bb.cd ], [ %.val.i78.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i113.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge167184.i, %bb.ca ], [ %storemerge167184.i, %bb.cd ], [ %storemerge167.i, %BITv06_reloadDStream.exit.sink.split.i113.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qj, align 2, !tbaa !10
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !27
  %i.tt = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.tu = and i32 %.val4.i.i.i.i, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl i64 %.val.i74.i187.i, %i.tv
  %i.tx = lshr i64 %i.tw, 1
  %i.ty = and i32 %i.tt, 63
  %i.tz = xor i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = lshr i64 %i.tx, %i.ua
  %i.uc = add i32 %.val4.i.i.i.i, %i.tt           ; 2 uses
  %i.ud = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ue = add nuw i64 %i.ub, %i.ud                ; 2 uses
  store i64 %i.ue, ptr %i.kn, align 8, !tbaa !109
  %.sroa.0.0.copyload.i79.i.i = load i16, ptr %i.qk, align 2, !tbaa !10
  %.sroa.42.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 3
  %.sroa.42.0.copyload.i81.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i80.i.i, align 1, !tbaa !27
  %i.uf = zext i8 %.sroa.42.0.copyload.i81.i.i to i32 ; 2 uses
  %i.ug = and i32 %i.uc, 63
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = shl i64 %.val.i74.i187.i, %i.uh
  %i.uj = lshr i64 %i.ui, 1
  %i.uk = and i32 %i.uf, 63
  %i.ul = xor i32 %i.uk, 63
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = lshr i64 %i.uj, %i.um
  %i.uo = add i32 %i.uc, %i.uf                    ; 2 uses
  %i.up = zext i16 %.sroa.0.0.copyload.i79.i.i to i64
  %i.uq = add nuw i64 %i.un, %i.up                ; 2 uses
  store i64 %i.uq, ptr %i.nk, align 8, !tbaa !109
  %.sroa.0.0.copyload.i84.i.i = load i16, ptr %i.ql, align 2, !tbaa !10
  %.sroa.42.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 3
  %.sroa.42.0.copyload.i86.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i85.i.i, align 1, !tbaa !27
  %i.ur = zext i8 %.sroa.42.0.copyload.i86.i.i to i32 ; 2 uses
  %i.us = and i32 %i.uo, 63
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = shl i64 %.val.i74.i187.i, %i.ut
  %i.uv = lshr i64 %i.uu, 1
  %i.uw = and i32 %i.ur, 63
  %i.ux = xor i32 %i.uw, 63
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = lshr i64 %i.uv, %i.uy
  %i.va = add i32 %i.uo, %i.ur                    ; 2 uses
  store i32 %i.va, ptr %i.kq, align 8, !tbaa !53
  %i.vb = zext i16 %.sroa.0.0.copyload.i84.i.i to i64
  %i.vc = add nuw i64 %i.uz, %i.vb                ; 2 uses
  store i64 %i.vc, ptr %i.lz, align 8, !tbaa !109
  %i.vd = getelementptr inbounds i8, ptr %.068.i, i64 %i.sw ; 8 uses
  %i.ve = add i64 %i.sw, %i.sh                    ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.068.i, i64 %i.ve ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.0124.i20, i64 %i.sw ; 2 uses
  %i.vh = sub i64 0, %i.rq
  %i.vi = getelementptr inbounds i8, ptr %i.vd, i64 %i.vh ; 2 uses
  %i.vj = ptrtoint ptr %.068.i to i64             ; 10 uses
  %i.vk = sub i64 %i.ox, %i.vj
  %i.vl = icmp ugt i64 %i.ve, %i.vk
  br i1 %i.vl, label %.thread154.i, label %bb.cf

bb.cf:                                            ; preds = %ZSTDv06_decodeSequence.exit.i
  %i.vm = ptrtoint ptr %.0124.i20 to i64          ; 2 uses
  %i.vn = sub i64 %i.oy, %i.vm
  %i.vo = icmp ugt i64 %i.sw, %i.vn
  br i1 %i.vo, label %.thread154.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vp = icmp ugt ptr %i.vd, %i.ow
  %i.vq = icmp ugt ptr %i.vf, %i.fu
  %or.cond.i116.i = select i1 %i.vp, i1 true, i1 %i.vq
  br i1 %or.cond.i116.i, label %.thread154.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vr = icmp ugt ptr %i.vg, %i.fv
  br i1 %i.vr, label %.thread154.i, label %.preheader123.i.i.preheader

.preheader123.i.i.preheader:                      ; preds = %bb.ch
  %i.vs = add i64 %i.sv, %i.vj
  %i.vt = add i64 %i.vs, %i.sk
  %i.vu = add i64 %i.vj, 8
  %umax215 = tail call i64 @llvm.umax.i64(i64 %i.vt, i64 %i.vu)
  %i.vv = xor i64 %i.vj, -1
  %i.vw = add i64 %umax215, %i.vv                 ; 2 uses
  %i.vx = lshr i64 %i.vw, 3
  %i.vy = add nuw nsw i64 %i.vx, 1                ; 2 uses
  %min.iters.check217 = icmp ult i64 %i.vw, 24
  %i.vz = sub i64 %i.vj, %i.vm
  %diff.check214 = icmp ult i64 %i.vz, 32
  %or.cond = or i1 %min.iters.check217, %diff.check214
  br i1 %or.cond, label %.preheader123.i.i.preheader236, label %vector.ph218

vector.ph218:                                     ; preds = %.preheader123.i.i.preheader
  %n.vec220 = and i64 %i.vy, 4611686018427387900  ; 3 uses
  %i.wa = shl i64 %n.vec220, 3                    ; 2 uses
  %i.wb = getelementptr i8, ptr %.068.i, i64 %i.wa
  %i.wc = getelementptr i8, ptr %.0124.i20, i64 %i.wa
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %i.wd = shl i64 %index222, 3                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.068.i, i64 %i.wd ; 2 uses
  %next.gep224 = getelementptr i8, ptr %.0124.i20, i64 %i.wd ; 2 uses
  %i.we = getelementptr i8, ptr %next.gep224, i64 16
  %wide.load225 = load <2 x i64>, ptr %next.gep224, align 1
  %wide.load226 = load <2 x i64>, ptr %i.we, align 1
  %i.wf = getelementptr i8, ptr %next.gep223, i64 16
  store <2 x i64> %wide.load225, ptr %next.gep223, align 1
  store <2 x i64> %wide.load226, ptr %i.wf, align 1
  %index.next227 = add nuw i64 %index222, 4       ; 2 uses
  %i.wg = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.wg, label %middle.block228, label %vector.body221, !llvm.loop !112

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %i.vy, %n.vec220
  br i1 %cmp.n229, label %ZSTDv06_wildcopy.exit.i.i, label %.preheader123.i.i.preheader236

.preheader123.i.i.preheader236:                   ; preds = %.preheader123.i.i.preheader, %middle.block228
  %.09.i.i.i.ph = phi ptr [ %.068.i, %.preheader123.i.i.preheader ], [ %i.wb, %middle.block228 ]
  %.0.i.i.i.ph = phi ptr [ %.0124.i20, %.preheader123.i.i.preheader ], [ %i.wc, %middle.block228 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader236, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.wh, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader236 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.wi, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader236 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.wj = icmp ult ptr %i.wh, %i.vd
  br i1 %i.wj, label %.preheader123.i.i, label %ZSTDv06_wildcopy.exit.i.i, !llvm.loop !113

ZSTDv06_wildcopy.exit.i.i:                        ; preds = %.preheader123.i.i, %middle.block228
  %i.wk = ptrtoint ptr %i.vd to i64               ; 2 uses
  %i.wl = sub i64 %i.wk, %i.oz                    ; 5 uses
  %i.wm = icmp ugt i64 %i.rq, %i.wl
  br i1 %i.wm, label %bb.ci, label %.thread.i117.i

bb.ci:                                            ; preds = %ZSTDv06_wildcopy.exit.i.i
  %i.wn = sub i64 %i.wk, %i.pa
  %i.wo = icmp ugt i64 %i.rq, %i.wn
  br i1 %i.wo, label %.thread154.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wp = ptrtoint ptr %i.vi to i64
  %.neg.i.i = sub i64 %i.wp, %i.oz                ; 4 uses
  %i.wq = getelementptr inbounds i8, ptr %i.gd, i64 %.neg.i.i ; 2 uses
  %i.wr = add nsw i64 %.neg.i.i, %i.sh            ; 3 uses
  %.not.i120.i = icmp sgt i64 %i.wr, 0
  br i1 %.not.i120.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vd, ptr readonly align 1 %i.wq, i64 %i.sh, i1 false)
  br label %ZSTDv06_execSequence.exit.i

bb.cl:                                            ; preds = %bb.cj
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vd, ptr readonly align 1 %i.wq, i64 %gepdiff.i.i, i1 false)
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vd, i64 %gepdiff.i.i ; 7 uses
  %i.wt = icmp ule ptr %i.ws, %i.ow
  %i.wu = icmp samesign ugt i64 %i.wr, 2
  %or.cond.not.i.i = select i1 %i.wt, i1 %i.wu, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i117.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cl
  %i.wv = sub nsw i64 %i.sw, %.neg.i.i
  %i.ww = icmp slt i64 %i.wv, %i.ve
  br i1 %i.ww, label %iter.check196, label %ZSTDv06_execSequence.exit.i

iter.check196:                                    ; preds = %.preheader.i.i
  %i.wx = add i64 %i.sg, %i.sv
  %i.wy = add i64 %i.wx, %i.vj
  %i.wz = add i64 %i.wy, %i.sk
  %i.xa = add i64 %i.wz, %i.rv
  %i.xb = add i64 %i.pj, %i.rq
  %umax176 = tail call i64 @llvm.umax.i64(i64 %i.xa, i64 %i.xb)
  %i.xc = add i64 %i.rq, %i.oz
  %i.xd = sub i64 %umax176, %i.xc                 ; 7 uses
  %min.iters.check178 = icmp ult i64 %i.xd, 4
  %diff.check175 = icmp ult i64 %i.rq, 32
  %or.cond232 = select i1 %min.iters.check178, i1 true, i1 %diff.check175
  br i1 %or.cond232, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check179

vector.main.loop.iter.check179:                   ; preds = %iter.check196
  %min.iters.check180 = icmp ult i64 %i.xd, 32
  br i1 %min.iters.check180, label %vec.epilog.ph200, label %vector.ph181

vector.ph181:                                     ; preds = %vector.main.loop.iter.check179
  %n.mod.vf182 = and i64 %i.xd, 28
  %n.vec183 = and i64 %i.xd, -32                  ; 5 uses
  %i.xe = getelementptr i8, ptr %i.ws, i64 %n.vec183
  %i.xf = getelementptr i8, ptr %i.fz, i64 %n.vec183
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 3 uses
  %next.gep186 = getelementptr i8, ptr %i.ws, i64 %index185 ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.fz, i64 %index185 ; 2 uses
  %i.xg = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <16 x i8>, ptr %next.gep187, align 1, !tbaa !27
  %wide.load189 = load <16 x i8>, ptr %i.xg, align 1, !tbaa !27
  %i.xh = getelementptr i8, ptr %next.gep186, i64 16
  store <16 x i8> %wide.load188, ptr %next.gep186, align 1, !tbaa !27
  store <16 x i8> %wide.load189, ptr %i.xh, align 1, !tbaa !27
  %index.next190 = add nuw i64 %index185, 32      ; 2 uses
  %i.xi = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.xi, label %middle.block191, label %vector.body184, !llvm.loop !114

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.xd, %n.vec183
  br i1 %cmp.n192, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block191
  %min.epilog.iters.check199 = icmp eq i64 %n.mod.vf182, 0
  br i1 %min.epilog.iters.check199, label %.lr.ph.i.i.preheader, label %vec.epilog.ph200, !prof !115

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check179, %vec.epilog.iter.check198
  %vec.epilog.resume.val193 = phi i64 [ %n.vec183, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check179 ]
  %n.vec202 = and i64 %i.xd, -4                   ; 4 uses
  %i.xj = getelementptr i8, ptr %i.ws, i64 %n.vec202
  %i.xk = getelementptr i8, ptr %i.fz, i64 %n.vec202
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph200
  %index204 = phi i64 [ %vec.epilog.resume.val193, %vec.epilog.ph200 ], [ %index.next208, %vec.epilog.vector.body203 ] ; 3 uses
  %next.gep205 = getelementptr i8, ptr %i.ws, i64 %index204
  %next.gep206 = getelementptr i8, ptr %i.fz, i64 %index204
  %wide.load207 = load <4 x i8>, ptr %next.gep206, align 1, !tbaa !27
  store <4 x i8> %wide.load207, ptr %next.gep205, align 1, !tbaa !27
  %index.next208 = add nuw i64 %index204, 4       ; 2 uses
  %i.xl = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.xl, label %vec.epilog.middle.block209, label %vec.epilog.vector.body203, !llvm.loop !116

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body203
  %cmp.n210 = icmp eq i64 %i.xd, %n.vec202
  br i1 %cmp.n210, label %ZSTDv06_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check196, %vec.epilog.iter.check198, %vec.epilog.middle.block209
  %.089125.i.i.ph = phi ptr [ %i.ws, %iter.check196 ], [ %i.xe, %vec.epilog.iter.check198 ], [ %i.xj, %vec.epilog.middle.block209 ]
  %.092124.i.i.ph = phi ptr [ %i.fz, %iter.check196 ], [ %i.xf, %vec.epilog.iter.check198 ], [ %i.xk, %vec.epilog.middle.block209 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.089125.i.i = phi ptr [ %i.xo, %.lr.ph.i.i ], [ %.089125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.xm, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1
  %i.xn = load i8, ptr %.092124.i.i, align 1, !tbaa !27
  %i.xo = getelementptr inbounds nuw i8, ptr %.089125.i.i, i64 1 ; 2 uses
  store i8 %i.xn, ptr %.089125.i.i, align 1, !tbaa !27
  %i.xp = icmp ult ptr %i.xo, %i.vf
  br i1 %i.xp, label %.lr.ph.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !117

.thread.i117.i:                                   ; preds = %bb.cl, %ZSTDv06_wildcopy.exit.i.i
  %i.xq = phi i64 [ %i.wr, %bb.cl ], [ %i.sh, %ZSTDv06_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.fz, %bb.cl ], [ %i.vi, %ZSTDv06_wildcopy.exit.i.i ] ; 7 uses
  %.2.i118.i = phi ptr [ %i.ws, %bb.cl ], [ %i.vd, %ZSTDv06_wildcopy.exit.i.i ] ; 8 uses
  %i.xr = icmp ult i64 %i.rq, 8
  br i1 %i.xr, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.thread.i117.i
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec64table, i64 %i.rq
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !3
  %i.xu = load i8, ptr %.294.i.i, align 1, !tbaa !27
  store i8 %i.xu, ptr %.2.i118.i, align 1, !tbaa !27
  %i.xv = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !27
  %i.xx = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 1
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !27
  %i.xy = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !27
  %i.ya = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 2
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !27
  %i.yb = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !27
  %i.yd = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 3
  store i8 %i.yc, ptr %i.yd, align 1, !tbaa !27
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec32table, i64 %i.rq
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !3
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 %i.yg ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 4
  %.val.i119.i = load i32, ptr %i.yh, align 1
  store i32 %.val.i119.i, ptr %i.yi, align 1
  %i.yj = sext i32 %i.xt to i64
  %i.yk = sub nsw i64 0, %i.yj
  %i.yl = getelementptr inbounds i8, ptr %i.yh, i64 %i.yk
  br label %bb.co

bb.cn:                                            ; preds = %.thread.i117.i
  %.294.val.i.i = load i64, ptr %.294.i.i, align 1
  store i64 %.294.val.i.i, ptr %.2.i118.i, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.395.i.i = phi ptr [ %i.yl, %bb.cm ], [ %.294.i.i, %bb.cn ] ; 2 uses
  %.395.i.i135 = ptrtoaddr ptr %.395.i.i to i64   ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 8 ; 11 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.395.i.i, i64 8 ; 10 uses
  %i.yo = icmp ugt ptr %i.vf, %i.pb
  br i1 %i.yo, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.yp = icmp ult ptr %i.ym, %i.ow
  br i1 %i.yp, label %.preheader.i.preheader, label %bb.cq

.preheader.i.preheader:                           ; preds = %bb.cp
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.wl) ; 2 uses
  %i.yq = add i64 %i.ph, %umax137
  %umax138 = tail call i64 @llvm.umax.i64(i64 %i.pc, i64 %i.yq)
  %i.yr = add i64 %umax138, -9
  %i.ys = add i64 %umax137, %i.oz
  %i.yt = sub i64 %i.yr, %i.ys                    ; 2 uses
  %i.yu = lshr i64 %i.yt, 3
  %i.yv = add nuw nsw i64 %i.yu, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.yt, 72
  br i1 %min.iters.check139, label %.preheader.i.preheader233, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.preheader.i.preheader
  %i.yw = sub i64 %i.sv, %i.oz
  %i.yx = add i64 %i.yw, %i.vj
  %i.yy = add i64 %i.yx, %i.sk
  %umax134 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.yy)
  %i.yz = add i64 %umax134, %i.oz
  %i.za = sub i64 %i.yz, %.395.i.i135
  %diff.check136 = icmp ult i64 %i.za, 32
  br i1 %diff.check136, label %.preheader.i.preheader233, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck133
  %n.vec142 = and i64 %i.yv, 4611686018427387900  ; 3 uses
  %i.zb = shl i64 %n.vec142, 3                    ; 2 uses
  %i.zc = getelementptr i8, ptr %i.ym, i64 %i.zb
  %i.zd = getelementptr i8, ptr %i.yn, i64 %i.zb
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.ze = shl i64 %index144, 3                    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.ym, i64 %i.ze ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.yn, i64 %i.ze ; 2 uses
  %i.zf = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <2 x i64>, ptr %next.gep146, align 1
  %wide.load148 = load <2 x i64>, ptr %i.zf, align 1
  %i.zg = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x i64> %wide.load147, ptr %next.gep145, align 1
  store <2 x i64> %wide.load148, ptr %i.zg, align 1
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.zh = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.zh, label %middle.block150, label %vector.body143, !llvm.loop !118

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.yv, %n.vec142
  br i1 %cmp.n151, label %ZSTDv06_wildcopy.exit114.i.i, label %.preheader.i.preheader233

.preheader.i.preheader233:                        ; preds = %vector.memcheck133, %.preheader.i.preheader, %middle.block150
  %.09.i111.i.i.ph = phi ptr [ %i.ym, %vector.memcheck133 ], [ %i.ym, %.preheader.i.preheader ], [ %i.zc, %middle.block150 ]
  %.0.i112.i.i.ph = phi ptr [ %i.yn, %vector.memcheck133 ], [ %i.yn, %.preheader.i.preheader ], [ %i.zd, %middle.block150 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader233, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.zi, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader233 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.zj, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader233 ] ; 2 uses
  %.0.val.i113.i.i = load i64, ptr %.0.i112.i.i, align 1
  store i64 %.0.val.i113.i.i, ptr %.09.i111.i.i, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8
  %i.zk = icmp ult ptr %i.zi, %i.ow
  br i1 %i.zk, label %.preheader.i, label %ZSTDv06_wildcopy.exit114.i.i, !llvm.loop !119

ZSTDv06_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block150
  %i.zl = ptrtoint ptr %i.ym to i64
  %i.zm = sub i64 %i.pc, %i.zl
  %i.zn = getelementptr inbounds i8, ptr %i.yn, i64 %i.zm
  br label %bb.cq

bb.cq:                                            ; preds = %ZSTDv06_wildcopy.exit114.i.i, %bb.cp
  %.496.i.i = phi ptr [ %i.zn, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.yn, %bb.cp ] ; 7 uses
  %.3.i.i = phi ptr [ %i.ow, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.ym, %bb.cp ] ; 7 uses
  %.496.i.i116 = ptrtoaddr ptr %.496.i.i to i64
  %i.zo = icmp ult ptr %.3.i.i, %i.vf
  br i1 %i.zo, label %iter.check, label %ZSTDv06_execSequence.exit.i

iter.check:                                       ; preds = %bb.cq
  %i.zp = add i64 %i.sg, %i.sv
  %i.zq = add i64 %i.zp, %i.vj
  %i.zr = add i64 %i.zq, %i.sk
  %i.zs = add i64 %i.zr, %i.rv
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.wl)
  %i.zt = add i64 %i.pg, %umax117
  %umax118 = tail call i64 @llvm.umax.i64(i64 %i.pc, i64 %i.zt)
  %i.zu = sub i64 %i.zs, %umax118                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.zu, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zv = sub i64 %i.sv, %i.oz
  %i.zw = add i64 %i.zv, %i.vj
  %i.zx = add i64 %i.zw, %i.sk
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.zx)
  %i.zy = add i64 %i.pf, %umax
  %umax115 = tail call i64 @llvm.umax.i64(i64 %i.pe, i64 %i.zy)
  %i.zz = sub i64 %umax115, %.496.i.i116
  %diff.check = icmp ult i64 %i.zz, 32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %i.zu, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.zu, 28
  %n.vec = and i64 %i.zu, -32                     ; 5 uses
  %i.aaa = getelementptr i8, ptr %.3.i.i, i64 %n.vec
  %i.aab = getelementptr i8, ptr %.496.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.i.i, i64 %index ; 2 uses
  %next.gep120 = getelementptr i8, ptr %.496.i.i, i64 %index ; 2 uses
  %i.aac = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep120, align 1, !tbaa !27
  %wide.load121 = load <16 x i8>, ptr %i.aac, align 1, !tbaa !27
  %i.aad = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %wide.load121, ptr %i.aad, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aae = icmp eq i64 %index.next, %n.vec
  br i1 %i.aae, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zu, %n.vec
  br i1 %cmp.n, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %i.zu, -4                   ; 4 uses
  %i.aaf = getelementptr i8, ptr %.3.i.i, i64 %n.vec124
  %i.aag = getelementptr i8, ptr %.496.i.i, i64 %n.vec124
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.3.i.i, i64 %index125
  %next.gep127 = getelementptr i8, ptr %.496.i.i, i64 %index125
  %wide.load128 = load <4 x i8>, ptr %next.gep127, align 1, !tbaa !27
  store <4 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !27
  %index.next129 = add nuw i64 %index125, 4       ; 2 uses
  %i.aah = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.aah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n130 = icmp eq i64 %i.zu, %n.vec124
  br i1 %cmp.n130, label %ZSTDv06_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4127.i.i.ph = phi ptr [ %.3.i.i, %iter.check ], [ %.3.i.i, %vector.memcheck ], [ %i.aaa, %vec.epilog.iter.check ], [ %i.aaf, %vec.epilog.middle.block ]
  %.5126.i.i.ph = phi ptr [ %.496.i.i, %iter.check ], [ %.496.i.i, %vector.memcheck ], [ %i.aab, %vec.epilog.iter.check ], [ %i.aag, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.4127.i.i = phi ptr [ %i.aak, %.lr.ph128.i.i ], [ %.4127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.5126.i.i = phi ptr [ %i.aai, %.lr.ph128.i.i ], [ %.5126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.5126.i.i, i64 1
  %i.aaj = load i8, ptr %.5126.i.i, align 1, !tbaa !27
  %i.aak = getelementptr inbounds nuw i8, ptr %.4127.i.i, i64 1 ; 2 uses
  store i8 %i.aaj, ptr %.4127.i.i, align 1, !tbaa !27
  %i.aal = icmp ult ptr %i.aak, %i.vf
  br i1 %i.aal, label %.lr.ph128.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !122

bb.cr:                                            ; preds = %bb.co
  %i.aam = getelementptr i8, ptr %.2.i118.i, i64 %i.xq
  %i.aan = add i64 %i.sg, %i.oz
  %umin = tail call i64 @llvm.umin.i64(i64 %i.rq, i64 %i.wl)
  %i.aao = add i64 %i.aan, %umin
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.wl) ; 3 uses
  %i.aap = add i64 %i.aao, %umax156
  %i.aaq = add i64 %i.aap, %i.rv
  %i.aar = sub i64 %i.aaq, %i.rq
  %i.aas = add i64 %i.pi, %umax156
  %umax157 = tail call i64 @llvm.umax.i64(i64 %i.aar, i64 %i.aas)
  %i.aat = add i64 %umax157, -9
  %i.aau = add i64 %umax156, %i.oz
  %i.aav = sub i64 %i.aat, %i.aau                 ; 2 uses
  %i.aaw = lshr i64 %i.aav, 3
  %i.aax = add nuw nsw i64 %i.aaw, 1              ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.aav, 72
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %bb.cr
  %i.aay = sub i64 %i.sv, %i.oz
  %i.aaz = add i64 %i.aay, %i.vj
  %i.aba = add i64 %i.aaz, %i.sk
  %umax154 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.aba)
  %i.abb = add i64 %umax154, %i.oz
  %i.abc = sub i64 %i.abb, %.395.i.i135
  %diff.check155 = icmp ult i64 %i.abc, 32
  br i1 %diff.check155, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck153
  %n.vec162 = and i64 %i.aax, 4611686018427387900 ; 3 uses
  %i.abd = shl i64 %n.vec162, 3                   ; 2 uses
  %i.abe = getelementptr i8, ptr %i.ym, i64 %i.abd
  %i.abf = getelementptr i8, ptr %i.yn, i64 %i.abd
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph160
  %index164 = phi i64 [ 0, %vector.ph160 ], [ %index.next169, %vector.body163 ] ; 2 uses
  %i.abg = shl i64 %index164, 3                   ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.ym, i64 %i.abg ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.yn, i64 %i.abg ; 2 uses
  %i.abh = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load167 = load <2 x i64>, ptr %next.gep166, align 1
  %wide.load168 = load <2 x i64>, ptr %i.abh, align 1
  %i.abi = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x i64> %wide.load167, ptr %next.gep165, align 1
  store <2 x i64> %wide.load168, ptr %i.abi, align 1
  %index.next169 = add nuw i64 %index164, 4       ; 2 uses
  %i.abj = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.abj, label %middle.block170, label %vector.body163, !llvm.loop !123

middle.block170:                                  ; preds = %vector.body163
  %cmp.n171 = icmp eq i64 %i.aax, %n.vec162
  br i1 %cmp.n171, label %ZSTDv06_execSequence.exit.i, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %vector.memcheck153, %bb.cr, %middle.block170
  %.09.i115.i.i.ph = phi ptr [ %i.ym, %vector.memcheck153 ], [ %i.ym, %bb.cr ], [ %i.abe, %middle.block170 ]
  %.0.i116.i.i.ph = phi ptr [ %i.yn, %vector.memcheck153 ], [ %i.yn, %bb.cr ], [ %i.abf, %middle.block170 ]
  br label %scalar.ph158

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %.09.i115.i.i = phi ptr [ %i.abk, %scalar.ph158 ], [ %.09.i115.i.i.ph, %scalar.ph158.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.abl, %scalar.ph158 ], [ %.0.i116.i.i.ph, %scalar.ph158.preheader ] ; 2 uses
  %.0.val.i117.i.i = load i64, ptr %.0.i116.i.i, align 1
  store i64 %.0.val.i117.i.i, ptr %.09.i115.i.i, align 1
  %i.abk = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8
  %i.abm = icmp ult ptr %i.abk, %i.aam
  br i1 %i.abm, label %scalar.ph158, label %ZSTDv06_execSequence.exit.i, !llvm.loop !124

ZSTDv06_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph158, %.lr.ph128.i.i, %middle.block191, %vec.epilog.middle.block209, %middle.block170, %middle.block, %vec.epilog.middle.block, %bb.cq, %.preheader.i.i, %bb.ck
  %i.abn = icmp ult i64 %i.ve, -119
  br i1 %i.abn, label %bb.bn, label %.thread154.i, !llvm.loop !125

.thread154.i:                                     ; preds = %ZSTDv06_execSequence.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %ZSTDv06_decodeSequence.exit.i, %BITv06_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.4.ph.i = phi i64 [ -20, %bb.ar ], [ -20, %bb.az ], [ -20, %BITv06_initDStream.exit.i ], [ -20, %bb.ap ], [ %i.ve, %ZSTDv06_execSequence.exit.i ], [ -20, %bb.ci ], [ -20, %bb.ch ], [ -70, %bb.cg ], [ -20, %bb.cf ], [ -70, %ZSTDv06_decodeSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

.loopexit.i:                                      ; preds = %bb.bn
  %.not278.i = icmp eq i32 %.0.i, 0
  br i1 %.not278.i, label %.thread266.i, label %bb.cs

.thread266.i:                                     ; preds = %BITv06_reloadDStream.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ct

bb.cs:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

bb.ct:                                            ; preds = %.thread266.i, %bb.ao, %.thread.i22
  %.2126.i = phi ptr [ %i.fq, %bb.ao ], [ %.0124.i20, %.thread266.i ], [ %i.fq, %.thread.i22 ] ; 4 uses
  %.371.i = phi ptr [ %1, %bb.ao ], [ %.068.i, %.thread266.i ], [ %1, %.thread.i22 ] ; 3 uses
  %i.abo = ptrtoint ptr %i.fv to i64
  %i.abp = ptrtoint ptr %.2126.i to i64
  %i.abq = sub i64 %i.abo, %i.abp                 ; 2 uses
  %i.abr = icmp ugt ptr %.2126.i, %i.fv
  br i1 %i.abr, label %ZSTDv06_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abs = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.abq ; 2 uses
  %i.abt = icmp ugt ptr %i.abs, %i.fu
  br i1 %i.abt, label %ZSTDv06_decompressSequences.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not86.i = icmp eq ptr %i.fv, %.2126.i
  br i1 %.not86.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.371.i, ptr align 1 %.2126.i, i64 %i.abq, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.573.ph.i = phi ptr [ %.371.i, %bb.cv ], [ %i.abs, %bb.cw ]
  %i.abu = ptrtoint ptr %.573.ph.i to i64
  %i.abv = ptrtoint ptr %1 to i64
  %i.abw = sub i64 %i.abu, %i.abv
  br label %ZSTDv06_decompressSequences.exit

ZSTDv06_decompressSequences.exit:                 ; preds = %.thread.i, %bb.ab, %bb.o, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cx, %bb.cu, %bb.ct, %bb.cs, %.thread154.i, %ZSTDv06_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.abw, %bb.cx ], [ %.4.ph.i, %.thread154.i ], [ -20, %bb.cs ], [ %i.hy, %ZSTDv06_decodeSeqHeaders.exit.i ], [ -20, %bb.ct ], [ -70, %bb.cu ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.o ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingPreparedDCtx(ptr noundef initializes((0, 21619)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull readonly align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !106
  store ptr %2, ptr %i.d, align 8, !tbaa !105
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv06_decompressFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = lshr i8 %i.e, 6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = add i64 %i.i, 5                          ; 4 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.i, 8
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 21568 ; 2 uses
  %.val.i.i = load i32, ptr %3, align 1
  %.not.i.i = icmp eq i32 %.val.i.i, -47205082
  br i1 %.not.i.i, label %ZSTDv06_frameHeaderSize.exit.i.i, label %.thread

ZSTDv06_frameHeaderSize.exit.i.i:                 ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load i8, ptr %i.d, align 1, !tbaa !27
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 15
  %i.r = add nuw nsw i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.r, ptr %i.s, align 8, !tbaa !101
  %i.t = and i32 %i.p, 32
  %.not27.i.i = icmp eq i32 %i.t, 0
  br i1 %.not27.i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %ZSTDv06_frameHeaderSize.exit.i.i
  %i.u = lshr i32 %i.p, 6
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.m, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = zext i8 %i.w to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val29.i.i = load i16, ptr %i.y, align 1
  %i.z = zext i16 %.val29.i.i to i64
  %i.aa = add nuw nsw i64 %i.z, 256
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val28.i.i = load i64, ptr %i.ab, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
end_hunk_1
