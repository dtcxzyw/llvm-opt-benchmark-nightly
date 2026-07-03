inline.NumInlined: 338
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@HUFv05_readDTableX4:bb.a
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %.preheader79
  %indvars.iv111 = phi i32 [ %i.q, %.preheader79.preheader ], [ %indvars.iv.next112, %.preheader79 ] ; 3 uses
  %.065 = phi i32 [ %i.o, %.preheader79.preheader ], [ %i.v, %.preheader79 ] ; 7 uses
  %i.r = zext i32 %.065 to i64                    ; 5 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.065, -1
  %indvars.iv.next112 = add i32 %indvars.iv111, -1
  br i1 %i.u, label %.preheader79, label %.preheader78, !llvm.loop !69

.preheader78:                                     ; preds = %.preheader79
  %.not7480 = icmp eq i32 %.065, 0                ; 2 uses
  br i1 %.not7480, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader78
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.w = icmp ult i32 %.065, 4
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.r, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.07081 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = add i32 %i.y, %.07081                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %.07081, ptr %i.aa, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = add i32 %i.ak, %i.ah                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !70

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07081.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.07081.epil = phi i32 [ %i.ap, %.lr.ph.epil ], [ %.07081.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %.07081.epil             ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  store i32 %.07081.epil, ptr %i.aq, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader78
  %.070.lcssa = phi i32 [ 0, %.preheader78 ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil ] ; 5 uses
  store i32 %.070.lcssa, ptr %i.i, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.h, align 4, !tbaa !3   ; 4 uses
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %._crit_edge86, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext i32 %i.ar to i64        ; 2 uses
  %xtraiter177 = and i64 %wide.trip.count, 1
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph85.epil.preheader, label %.lr.ph85.preheader.new

.lr.ph85.preheader.new:                           ; preds = %.lr.ph85.preheader
  %unroll_iter181 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85, %.lr.ph85.preheader.new
  %indvars.iv102 = phi i64 [ 0, %.lr.ph85.preheader.new ], [ %indvars.iv.next103.1, %.lr.ph85 ] ; 4 uses
  %niter182 = phi i64 [ 0, %.lr.ph85.preheader.new ], [ %niter182.next.1, %.lr.ph85 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv102
  %i.au = load i8, ptr %i.at, align 2, !tbaa !27  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !3
  %i.az = trunc i64 %indvars.iv102 to i8
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ba ; 2 uses
  store i8 %i.az, ptr %i.bb, align 2, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.au, ptr %i.bc, align 1, !tbaa !57
  %indvars.iv.next103 = or disjoint i64 %indvars.iv102, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next103
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27  ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %i.bj = trunc i64 %indvars.iv.next103 to i8
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bk ; 2 uses
  store i8 %i.bj, ptr %i.bl, align 2, !tbaa !55
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !57
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %niter182.next.1 = add i64 %niter182, 2         ; 2 uses
  %niter182.ncmp.1 = icmp eq i64 %niter182.next.1, %unroll_iter181
  br i1 %niter182.ncmp.1, label %._crit_edge86.loopexit.unr-lcssa, label %.lr.ph85, !llvm.loop !73

._crit_edge86.loopexit.unr-lcssa:                 ; preds = %.lr.ph85
  %lcmp.mod179.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %._crit_edge86, label %.lr.ph85.epil.preheader

.lr.ph85.epil.preheader:                          ; preds = %._crit_edge86.loopexit.unr-lcssa, %.lr.ph85.preheader
  %indvars.iv102.epil.init = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next103.1, %._crit_edge86.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i32 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod180)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv102.epil.init
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !27  ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !3
  %i.bt = trunc i64 %indvars.iv102.epil.init to i8
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bu ; 2 uses
  store i8 %i.bt, ptr %i.bv, align 2, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bo, ptr %i.bw, align 1, !tbaa !57
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85.epil.preheader, %._crit_edge86.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.i, align 4, !tbaa !3
  %i.bx = sub i32 %i.q, %.065                     ; 4 uses
  %i.by = xor i32 %i.o, -1
  %i.bz = add nsw i32 %i.j, %i.by                 ; 2 uses
  br i1 %.not7480, label %._crit_edge100.split, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %._crit_edge86
  %xtraiter183 = and i64 %i.r, 1
  %i.ca = icmp eq i32 %.065, 1
  br i1 %i.ca, label %.lr.ph91.epil.preheader, label %.lr.ph91.preheader.new

.lr.ph91.preheader.new:                           ; preds = %.lr.ph91.preheader
  %unroll_iter187 = and i64 %i.r, 4294967294
  br label %.lr.ph91

.preheader.unr-lcssa:                             ; preds = %.lr.ph91
  %lcmp.mod185.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %.preheader, label %.lr.ph91.epil.preheader

.lr.ph91.epil.preheader:                          ; preds = %.preheader.unr-lcssa, %.lr.ph91.preheader
  %indvars.iv105.epil.init = phi i64 [ 1, %.lr.ph91.preheader ], [ %indvars.iv.next106.1, %.preheader.unr-lcssa ]
  %.06988.epil.init = phi i32 [ 0, %.lr.ph91.preheader ], [ %i.cr, %.preheader.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %.065 to i1
  call void @llvm.assume(i1 %lcmp.mod186)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv105.epil.init
  store i32 %.06988.epil.init, ptr %i.cb, align 4, !tbaa !3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.lr.ph91.epil.preheader
  %i.cc = sub i32 %i.j, %i.bx                     ; 2 uses
  %.not7697 = icmp ugt i32 %i.bx, %i.cc
  br i1 %.not7697, label %._crit_edge100.split, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.preheader
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv111, i32 2)
  %wide.trip.count113 = zext i32 %umax to i64     ; 4 uses
  %i.cd = add nsw i64 %wide.trip.count113, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv111, 9
  %n.vec = and i64 %i.cd, -8                      ; 3 uses
  %i.ce = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br label %.lr.ph95

.lr.ph91:                                         ; preds = %.lr.ph91, %.lr.ph91.preheader.new
  %indvars.iv105 = phi i64 [ 1, %.lr.ph91.preheader.new ], [ %indvars.iv.next106.1, %.lr.ph91 ] ; 5 uses
  %.06988 = phi i32 [ 0, %.lr.ph91.preheader.new ], [ %i.cr, %.lr.ph91 ] ; 2 uses
  %niter188 = phi i64 [ 0, %.lr.ph91.preheader.new ], [ %niter188.next.1, %.lr.ph91 ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv105
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = trunc nuw i64 %indvars.iv105 to i32
  %i.ci = add i32 %i.bz, %i.ch
  %i.cj = shl i32 %i.cg, %i.ci
  %i.ck = add i32 %i.cj, %.06988                  ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv105
  store i32 %.06988, ptr %i.cl, align 4, !tbaa !3
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next106
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = trunc nuw i64 %indvars.iv.next106 to i32
  %i.cp = add i32 %i.bz, %i.co
  %i.cq = shl i32 %i.cn, %i.cp
  %i.cr = add i32 %i.cq, %i.ck                    ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next106
  store i32 %i.ck, ptr %i.cs, align 4, !tbaa !3
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %niter188.next.1 = add nuw i64 %niter188, 2     ; 2 uses
  %niter188.ncmp.1.not = icmp eq i64 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1.not, label %.preheader.unr-lcssa, label %.lr.ph91, !llvm.loop !74

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %._crit_edge96
  %.06798 = phi i32 [ %i.dz, %._crit_edge96 ], [ %i.bx, %.lr.ph95.preheader ] ; 9 uses
  %4 = zext i32 %.06798 to i64
  %5 = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %4 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %.lr.ph95.a

.lr.ph95.a:                                       ; preds = %.lr.ph95
  %i.ct = zext i32 %.06798 to i64
  %6 = mul nuw nsw i64 %i.ct, 68
  %7 = add nsw i64 %6, -1
  %diff.check = icmp ult i64 %7, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.a
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.06798, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = or disjoint i64 %index, 1               ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <4 x i32>, ptr %i.cv, align 4, !tbaa !3
  %wide.load132 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !3
  %i.cx = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.cy = lshr <4 x i32> %wide.load132, %broadcast.splat
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !3
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge96, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph95.a, %.lr.ph95, %middle.block
  %indvars.iv108.ph = phi i64 [ 1, %.lr.ph95.a ], [ 1, %.lr.ph95 ], [ %i.ce, %middle.block ] ; 4 uses
  %i.dc = sub nsw i64 %wide.trip.count113, %indvars.iv108.ph
  %xtraiter189 = and i64 %i.dc, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv108.prol = phi i64 [ %indvars.iv.next109.prol, %scalar.ph.prol ], [ %indvars.iv108.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv108.prol
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = lshr i32 %i.de, %.06798
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv108.prol
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !3
  %indvars.iv.next109.prol = add nuw nsw i64 %indvars.iv108.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter189
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !76

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv108.unr = phi i64 [ %indvars.iv108.ph, %scalar.ph.preheader ], [ %indvars.iv.next109.prol, %scalar.ph.prol ]
  %i.dh = sub nsw i64 %indvars.iv108.ph, %wide.trip.count113
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge96, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv108 = phi i64 [ %indvars.iv.next109.3, %scalar.ph ], [ %indvars.iv108.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv108
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = lshr i32 %i.dk, %.06798
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv108
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !3
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next109
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = lshr i32 %i.do, %.06798
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next109
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next109.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = lshr i32 %i.ds, %.06798
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next109.1
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %indvars.iv.next109.2 = add nuw nsw i64 %indvars.iv108, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next109.2
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = lshr i32 %i.dw, %.06798
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next109.2
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  %indvars.iv.next109.3 = add nuw nsw i64 %indvars.iv108, 4 ; 2 uses
  %exitcond114.3 = icmp eq i64 %indvars.iv.next109.3, %wide.trip.count113
  br i1 %exitcond114.3, label %._crit_edge96, label %scalar.ph, !llvm.loop !77

._crit_edge96:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dz = add i32 %.06798, 1                      ; 2 uses
  %.not76 = icmp ugt i32 %i.dz, %i.cc
  br i1 %.not76, label %._crit_edge100.split, label %.lr.ph95, !llvm.loop !78

._crit_edge100.split:                             ; preds = %._crit_edge96, %._crit_edge86, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ea = sub nsw i32 %i.q, %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i = icmp eq i32 %.070.lcssa, 0
  br i1 %.not56.i, label %HUFv05_fillDTableX4.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %._crit_edge100.split
  %wide.trip.count61.i = zext i32 %.070.lcssa to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i, %.lr.ph55.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next59.i, %.loopexit.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv58.i ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !55
  %i.ed = zext i8 %i.ec to i32                    ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !57  ; 2 uses
  %i.eg = zext i8 %i.ef to i32
  %i.eh = sub nsw i32 %i.q, %i.eg                 ; 6 uses
  %i.ei = zext i8 %i.ef to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3  ; 5 uses
  %i.el = sub nsw i32 %i.j, %i.eh                 ; 3 uses
  %i.em = shl nuw i32 1, %i.el                    ; 2 uses
  %.not.i = icmp ult i32 %i.el, %i.bx
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph55.i
  %i.en = add nsw i32 %i.eh, %i.ea                ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.en, i32 1)
  %i.eo = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3  ; 3 uses
  %i.er = zext i32 %i.ek to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.er ; 4 uses
  %i.et = zext i32 %i.eh to i64
  %i.eu = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.et
  %i.ev = zext i32 %i.eq to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ev
  %i.ex = sub i32 %.070.lcssa, %i.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.eu, i64 68, i1 false)
  %i.ey = icmp sgt i32 %i.en, 1
  br i1 %i.ey, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eo
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3  ; 3 uses
  %.not.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.6.0.insert.ext42.i.i = shl nsw i32 %i.eh, 16
  %.sroa.6.0.insert.shift43.i.i = and i32 %.sroa.6.0.insert.ext42.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i, %i.ed
  %.sroa.0.0.insert.insert40.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.fa to i64    ; 3 uses
  %min.iters.check162 = icmp ult i32 %i.fa, 8
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %.lr.ph.i.i
  %n.vec165 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph163
  %index169 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body168 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index169 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %broadcast.splat167, ptr %i.fb, align 2
  store <4 x i32> %broadcast.splat167, ptr %i.fc, align 2
  %index.next170 = add nuw i64 %index169, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next170, %n.vec165
  br i1 %i.fd, label %middle.block171, label %vector.body168, !llvm.loop !79

middle.block171:                                  ; preds = %vector.body168
  %cmp.n172 = icmp eq i64 %n.vec165, %wide.trip.count.i.i
  br i1 %cmp.n172, label %.loopexit.i.i, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %.lr.ph.i.i, %middle.block171
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec165, %middle.block171 ]
  br label %scalar.ph161

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph161 ], [ %indvars.iv.i.i.ph, %scalar.ph161.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i, ptr %i.fe, align 2
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %scalar.ph161, !llvm.loop !80

.loopexit.i.i:                                    ; preds = %scalar.ph161, %middle.block171, %bb.e, %bb.d
  %.not54.i.i = icmp eq i32 %.070.lcssa, %i.eq
  br i1 %.not54.i.i, label %HUFv05_fillDTableX4Level2.exit.i, label %.lr.ph53.preheader.i.i

.lr.ph53.preheader.i.i:                           ; preds = %.loopexit.i.i
  %wide.trip.count59.i.i = zext i32 %i.ex to i64
  %invariant.op.i = or disjoint i32 %i.ed, 33554432
  br label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %.loopexit, %.lr.ph53.preheader.i.i
  %indvars.iv56.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i ], [ %indvars.iv.next57.i.i, %.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv56.i.i ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !55
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !57  ; 2 uses
  %i.fk = zext i8 %i.fj to i32
  %i.fl = sub nsw i32 %i.q, %i.fk                 ; 2 uses
  %i.fm = sub nsw i32 %i.el, %i.fl
  %i.fn = shl nuw i32 1, %i.fm
  %i.fo = zext i8 %i.fj to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3  ; 9 uses
  %i.fr = add i32 %i.fn, %i.fq                    ; 4 uses
  %i.fs = shl nuw nsw i32 %i.fh, 8
  %i.ft = add nsw i32 %i.fl, %i.eh
  %.sroa.6.0.insert.ext.i.i = shl nsw i32 %i.ft, 16
  %.sroa.6.0.insert.shift.i.i = and i32 %.sroa.6.0.insert.ext.i.i, 16711680
  %i.fu = or disjoint i32 %.sroa.6.0.insert.shift.i.i, %i.fs
  %.sroa.0.0.insert.insert.i.reass.i = or disjoint i32 %i.fu, %invariant.op.i ; 2 uses
  %i.fv = add i32 %i.fq, 1
  %umax147 = call i32 @llvm.umax.i32(i32 %i.fr, i32 %i.fv)
  %i.fw = sub i32 %umax147, %i.fq                 ; 3 uses
  %min.iters.check149 = icmp ult i32 %i.fw, 16
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i
  %i.fx = add i32 %i.fq, 1
  %umax146 = call i32 @llvm.umax.i32(i32 %i.fr, i32 %i.fx)
  %i.fy = add i32 %umax146, -1
  %i.fz = icmp ult i32 %i.fy, %i.fq
  br i1 %i.fz, label %scalar.ph148.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %vector.scevcheck
  %n.vec152 = and i32 %i.fw, -8                   ; 3 uses
  %i.ga = add i32 %i.fq, %n.vec152
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i32 [ 0, %vector.ph150 ], [ %index.next157, %vector.body155 ] ; 2 uses
  %i.gb = add i32 %i.fq, %index156
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %broadcast.splat154, ptr %i.gd, align 2
  store <4 x i32> %broadcast.splat154, ptr %i.ge, align 2
  %index.next157 = add nuw i32 %index156, 8       ; 2 uses
  %i.gf = icmp eq i32 %index.next157, %n.vec152
  br i1 %i.gf, label %middle.block158, label %vector.body155, !llvm.loop !81

middle.block158:                                  ; preds = %vector.body155
  %cmp.n159 = icmp eq i32 %i.fw, %n.vec152
  br i1 %cmp.n159, label %.loopexit, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i, %middle.block158
  %.034.i.i.ph = phi i32 [ %i.fq, %vector.scevcheck ], [ %i.fq, %.lr.ph53.i.i ], [ %i.ga, %middle.block158 ]
  br label %scalar.ph148

scalar.ph148:                                     ; preds = %scalar.ph148.preheader, %scalar.ph148
  %.034.i.i = phi i32 [ %i.gg, %scalar.ph148 ], [ %.034.i.i.ph, %scalar.ph148.preheader ] ; 2 uses
  %i.gg = add i32 %.034.i.i, 1                    ; 2 uses
  %i.gh = zext i32 %.034.i.i to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.gh
  store i32 %.sroa.0.0.insert.insert.i.reass.i, ptr %i.gi, align 2
  %i.gj = icmp ult i32 %i.gg, %i.fr
  br i1 %i.gj, label %scalar.ph148, label %.loopexit, !llvm.loop !82

.loopexit:                                        ; preds = %scalar.ph148, %middle.block158
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !3
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %wide.trip.count59.i.i
  br i1 %exitcond60.not.i.i, label %HUFv05_fillDTableX4Level2.exit.i, label %.lr.ph53.i.i, !llvm.loop !83

HUFv05_fillDTableX4Level2.exit.i:                 ; preds = %.loopexit, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre.i = add i32 %i.em, %i.ek
  br label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph55.i
  %i.gk = add i32 %i.em, %i.ek                    ; 5 uses
  %i.gl = icmp ult i32 %i.ek, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.f
  %.sroa.4.0.insert.ext.i = shl nsw i32 %i.eh, 16
  %.sroa.4.0.insert.shift.i = and i32 %.sroa.4.0.insert.ext.i, 16711680
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %i.ed
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, 16777216 ; 2 uses
  %i.gm = zext i32 %i.ek to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %i.gk to i64      ; 2 uses
  %i.gn = sub nsw i64 %wide.trip.count.i, %i.gm   ; 3 uses
  %min.iters.check134 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check134, label %scalar.ph133.preheader, label %vector.ph135

end_hunk_0
begin_hunk_1_@ZSTDv05_decompressBlock_internal:bb.a
  %i.wn = zext i16 %.val.i101.i to i64            ; 2 uses
  %.not95.i.i = trunc i16 %.val.i101.i to i1
  %i.wo = icmp ult ptr %i.wm, %i.ia
  %or.cond.i.i = and i1 %i.wo, %.not95.i.i
  br i1 %or.cond.i.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.wp = load i8, ptr %i.wm, align 1, !tbaa !27
  %i.wq = zext i8 %i.wp to i64
  %i.wr = shl nuw nsw i64 %i.wq, 16
  %i.ws = or disjoint i64 %i.wr, %i.wn
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.79.0217.i, i64 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.078.i.i = phi ptr [ %i.wt, %bb.cq ], [ %i.wm, %bb.cp ]
  %.0.i102.i = phi i64 [ %i.ws, %bb.cq ], [ %i.wn, %bb.cp ]
  %i.wu = lshr i64 %.0.i102.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co, %bb.cn
  %.179.i.i = phi ptr [ %i.wi, %bb.cn ], [ %.078.i.i, %bb.cr ], [ %i.wi, %bb.co ] ; 2 uses
  %.1.i.i = phi i64 [ %i.wl, %bb.cn ], [ %i.wu, %bb.cr ], [ 63, %bb.co ]
  %.not96.i.i = icmp ult ptr %.179.i.i, %i.ia
  %spec.select.i.i = select i1 %.not96.i.i, ptr %.179.i.i, ptr %i.uu
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cl
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.cs ], [ %.sroa.79.0217.i, %bb.cl ] ; 7 uses
  %.2.i96.i = phi i64 [ %.1.i.i, %bb.cs ], [ %i.wg, %bb.cl ] ; 11 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.sroa.66.0220.i ; 3 uses
  %.sroa.3.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.wv, i64 2
  %.sroa.3.0.copyload.i110.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i109.i.i, align 2, !tbaa !27 ; 3 uses
  %i.ww = zext i8 %.sroa.3.0.copyload.i110.i.i to i32 ; 2 uses
  %i.wx = add nsw i32 %i.ww, -1
  %i.wy = icmp eq i8 %.sroa.3.0.copyload.i110.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.wy, i32 0, i32 %i.wx ; 2 uses
  %i.wz = zext i8 %.sroa.3.0.copyload.i110.i.i to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_decodeSequence.offsetPrefix, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !3
  %i.xc = add i32 %spec.store.select.i.i, %.sroa.20.8.i ; 2 uses
  %.not97.i.i = icmp eq i64 %.2.i96.i, 0
  %i.xd = zext i1 %.not97.i.i to i32
  %i.xe = or i32 %i.ww, %i.xd
  %.not98.i.i = icmp eq i32 %i.xe, 0
  %spec.select.i = select i1 %.not98.i.i, i64 %.sroa.76.0215.i, i64 %.sroa.6.0211.i
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.wv, align 2, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wv, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !27
  %i.xf = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.xg = and i32 %i.xc, 63
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = shl i64 %.sroa.0.6.i, %i.xh
  %i.xj = lshr i64 %i.xi, 1
  %i.xk = and i32 %i.xf, 63
  %i.xl = xor i32 %i.xk, 63
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = lshr i64 %i.xj, %i.xm
  %i.xo = add i32 %i.xc, %i.xf                    ; 2 uses
  %i.xp = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.xq = add nuw i64 %i.xn, %i.xp
  %.sroa.0.0.copyload.i111.i.i = load i16, ptr %i.wf, align 2, !tbaa !7
  %.sroa.5.0..sroa_idx.i114.i.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 3
  %.sroa.5.0.copyload.i115.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i114.i.i, align 1, !tbaa !27
  %i.xr = zext i8 %.sroa.5.0.copyload.i115.i.i to i32 ; 2 uses
  %i.xs = and i32 %i.xo, 63
  %i.xt = zext nneg i32 %i.xs to i64
  %i.xu = shl i64 %.sroa.0.6.i, %i.xt
  %i.xv = lshr i64 %i.xu, 1
  %i.xw = and i32 %i.xr, 63
  %i.xx = xor i32 %i.xw, 63
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = lshr i64 %i.xv, %i.xy
  %i.ya = add i32 %i.xo, %i.xr                    ; 2 uses
  %i.yb = zext i16 %.sroa.0.0.copyload.i111.i.i to i64
  %i.yc = add nuw i64 %i.xz, %i.yb
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %.sroa.71.0219.i ; 3 uses
  %.sroa.0.0.copyload.i118.i.i = load i16, ptr %i.yd, align 2, !tbaa !7
  %.sroa.4.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 2
  %.sroa.4.0.copyload.i120.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i.i, align 2, !tbaa !27 ; 2 uses
  %.sroa.5.0..sroa_idx.i121.i.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 3
  %.sroa.5.0.copyload.i122.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i121.i.i, align 1, !tbaa !27
  %i.ye = zext i8 %.sroa.5.0.copyload.i122.i.i to i32 ; 2 uses
  %i.yf = and i32 %i.ya, 63
  %i.yg = zext nneg i32 %i.yf to i64
  %i.yh = shl i64 %.sroa.0.6.i, %i.yg
  %i.yi = lshr i64 %i.yh, 1
  %i.yj = and i32 %i.ye, 63
  %i.yk = xor i32 %i.yj, 63
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = lshr i64 %i.yi, %i.yl
  %i.yn = add i32 %i.ya, %i.ye                    ; 2 uses
  %i.yo = zext i16 %.sroa.0.0.copyload.i118.i.i to i64
  %i.yp = add nuw i64 %i.ym, %i.yo
  %i.yq = zext i8 %.sroa.4.0.copyload.i120.i.i to i64
  %i.yr = icmp eq i8 %.sroa.4.0.copyload.i120.i.i, 127
  br i1 %i.yr, label %bb.cu, label %ZSTDv05_decodeSequence.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.ys = icmp ult ptr %.3.i.i, %i.ia
  br i1 %i.ys, label %bb.cv, label %.thread.i100.i

bb.cv:                                            ; preds = %bb.cu
  %i.yt = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.yu = load i8, ptr %.3.i.i, align 1, !tbaa !27 ; 2 uses
  %i.yv = zext i8 %i.yu to i64
  %.not99.i.i = icmp eq i8 %i.yu, -1
  br i1 %.not99.i.i, label %bb.cw, label %.thread.i100.i

.thread.i100.i:                                   ; preds = %bb.cv, %bb.cu
  %i.yw = phi i64 [ %i.yv, %bb.cv ], [ 0, %bb.cu ]
  %.4127.i.i = phi ptr [ %i.yt, %bb.cv ], [ %.3.i.i, %bb.cu ]
  %narrow.i.i = add nuw nsw i64 %i.yw, 127
  br label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.yx = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 3 ; 4 uses
  %.not100.i.i = icmp ugt ptr %i.yx, %i.ia
  br i1 %.not100.i.i, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.4.val.i.i = load i16, ptr %i.yt, align 1, !tbaa !7 ; 2 uses
  %i.yy = zext i16 %.4.val.i.i to i64             ; 2 uses
  %.not101.i.i = trunc i16 %.4.val.i.i to i1
  %i.yz = icmp ult ptr %i.yx, %i.ia
  %or.cond103.i.i = and i1 %i.yz, %.not101.i.i
  br i1 %or.cond103.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.za = load i8, ptr %i.yx, align 1, !tbaa !27
  %i.zb = zext i8 %i.za to i64
  %i.zc = shl nuw nsw i64 %i.zb, 16
  %i.zd = or disjoint i64 %i.zc, %i.yy
  %i.ze = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.5.i.i = phi ptr [ %i.ze, %bb.cy ], [ %i.yx, %bb.cx ]
  %.075.i.i = phi i64 [ %i.zd, %bb.cy ], [ %i.yy, %bb.cx ]
  %i.zf = lshr i64 %.075.i.i, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw, %.thread.i100.i
  %.6.i.i = phi ptr [ %.4127.i.i, %.thread.i100.i ], [ %.5.i.i, %bb.cz ], [ %i.yt, %bb.cw ] ; 2 uses
  %.176.i.i = phi i64 [ %narrow.i.i, %.thread.i100.i ], [ %i.zf, %bb.cz ], [ 127, %bb.cw ]
  %.not102.i.i = icmp ult ptr %.6.i.i, %i.ia
  %spec.select104.i.i = select i1 %.not102.i.i, ptr %.6.i.i, ptr %i.uu
  br label %ZSTDv05_decodeSequence.exit.i

ZSTDv05_decodeSequence.exit.i:                    ; preds = %bb.da, %bb.ct
  %.8.i99.i = phi ptr [ %spec.select104.i.i, %bb.da ], [ %.3.i.i, %bb.ct ]
  %.277.i.i = phi i64 [ %.176.i.i, %bb.da ], [ %i.yq, %bb.ct ] ; 4 uses
  %i.zg = and i32 %.sroa.20.8.i, 63
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = shl i64 %.sroa.0.6.i, %i.zh
  %i.zj = lshr i64 %i.zi, 1
  %i.zk = and i32 %spec.store.select.i.i, 63
  %i.zl = xor i32 %i.zk, 63
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = lshr i64 %i.zj, %i.zm
  %i.zo = zext i32 %i.xb to i64
  %i.zp = add nuw i64 %i.zn, %i.zo
  %.074.i.i = select i1 %i.wy, i64 %.sroa.speculated.i, i64 %i.zp ; 18 uses
  %i.zq = add nuw nsw i64 %.277.i.i, 4            ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.062222.i, i64 %.2.i96.i ; 8 uses
  %i.zs = add nuw nsw i64 %i.zq, %.2.i96.i        ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.062222.i, i64 %i.zs ; 7 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.0133218.i, i64 %.2.i96.i ; 3 uses
  %i.zv = sub i64 0, %.074.i.i
  %i.zw = getelementptr inbounds i8, ptr %i.zr, i64 %i.zv ; 2 uses
  %i.zx = ptrtoint ptr %.062222.i to i64          ; 10 uses
  %i.zy = sub i64 %i.uw, %i.zx
  %i.zz = icmp ugt i64 %i.zs, %i.zy
  br i1 %i.zz, label %ZSTDv05_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %ZSTDv05_decodeSequence.exit.i
  %i.aaa = ptrtoint ptr %.0133218.i to i64        ; 2 uses
  %i.aab = sub i64 %i.ux, %i.aaa
  %i.aac = icmp ugt i64 %.2.i96.i, %i.aab
  br i1 %i.aac, label %ZSTDv05_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aad = icmp ugt ptr %i.zr, %i.uv
  %i.aae = icmp ugt ptr %i.zt, %i.ga
  %or.cond.i103.i = select i1 %i.aad, i1 true, i1 %i.aae
  br i1 %or.cond.i103.i, label %ZSTDv05_decompressSequences.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aaf = icmp ugt ptr %i.zu, %i.gb
  br i1 %i.aaf, label %ZSTDv05_decompressSequences.exit, label %.preheader123.i.i.preheader

.preheader123.i.i.preheader:                      ; preds = %bb.dd
  %i.aag = add i64 %.2.i96.i, %i.zx
  %i.aah = add i64 %i.zx, 8
  %umax207 = tail call i64 @llvm.umax.i64(i64 %i.aag, i64 %i.aah)
  %i.aai = xor i64 %i.zx, -1
  %i.aaj = add i64 %umax207, %i.aai               ; 2 uses
  %i.aak = lshr i64 %i.aaj, 3
  %i.aal = add nuw nsw i64 %i.aak, 1              ; 2 uses
  %min.iters.check209 = icmp ult i64 %i.aaj, 24
  %i.aam = sub i64 %i.aaa, %i.zx
  %diff.check206 = icmp ugt i64 %i.aam, -32
  %or.cond = or i1 %min.iters.check209, %diff.check206
  br i1 %or.cond, label %.preheader123.i.i.preheader230, label %vector.ph210

vector.ph210:                                     ; preds = %.preheader123.i.i.preheader
  %n.vec212 = and i64 %i.aal, 4611686018427387900 ; 3 uses
  %i.aan = shl i64 %n.vec212, 3                   ; 2 uses
  %i.aao = getelementptr i8, ptr %.062222.i, i64 %i.aan
  %i.aap = getelementptr i8, ptr %.0133218.i, i64 %i.aan
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph210
  %index214 = phi i64 [ 0, %vector.ph210 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %i.aaq = shl i64 %index214, 3                   ; 2 uses
  %next.gep215 = getelementptr i8, ptr %.062222.i, i64 %i.aaq ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0133218.i, i64 %i.aaq ; 2 uses
  %i.aar = getelementptr i8, ptr %next.gep216, i64 16
  %wide.load217 = load <2 x i64>, ptr %next.gep216, align 1
  %wide.load218 = load <2 x i64>, ptr %i.aar, align 1
  %i.aas = getelementptr i8, ptr %next.gep215, i64 16
  store <2 x i64> %wide.load217, ptr %next.gep215, align 1
  store <2 x i64> %wide.load218, ptr %i.aas, align 1
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.aat = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.aat, label %middle.block220, label %vector.body213, !llvm.loop !107

middle.block220:                                  ; preds = %vector.body213
  %cmp.n221 = icmp eq i64 %i.aal, %n.vec212
  br i1 %cmp.n221, label %ZSTDv05_wildcopy.exit.i.i, label %.preheader123.i.i.preheader230

.preheader123.i.i.preheader230:                   ; preds = %.preheader123.i.i.preheader, %middle.block220
  %.09.i.i.i.ph = phi ptr [ %.062222.i, %.preheader123.i.i.preheader ], [ %i.aao, %middle.block220 ]
  %.0.i.i.i.ph = phi ptr [ %.0133218.i, %.preheader123.i.i.preheader ], [ %i.aap, %middle.block220 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader230, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.aau, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader230 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.aav, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader230 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.aau = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.aaw = icmp ult ptr %i.aau, %i.zr
  br i1 %i.aaw, label %.preheader123.i.i, label %ZSTDv05_wildcopy.exit.i.i, !llvm.loop !108

ZSTDv05_wildcopy.exit.i.i:                        ; preds = %.preheader123.i.i, %middle.block220
  %i.aax = ptrtoint ptr %i.zr to i64              ; 2 uses
  %i.aay = sub i64 %i.aax, %i.uy                  ; 5 uses
  %i.aaz = icmp ugt i64 %.074.i.i, %i.aay
  br i1 %i.aaz, label %bb.de, label %.thread.i104.i

bb.de:                                            ; preds = %ZSTDv05_wildcopy.exit.i.i
  %i.aba = sub i64 %i.aax, %i.uz
  %i.abb = icmp ugt i64 %.074.i.i, %i.aba
  br i1 %i.abb, label %ZSTDv05_decompressSequences.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abc = ptrtoint ptr %i.zw to i64
  %.neg.i.i = sub i64 %i.abc, %i.uy               ; 3 uses
  %i.abd = getelementptr inbounds i8, ptr %i.gj, i64 %.neg.i.i ; 2 uses
  %i.abe = add nsw i64 %i.zq, %.neg.i.i           ; 3 uses
  %.not.i110.i = icmp sgt i64 %i.abe, 0
  br i1 %.not.i110.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zr, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.abd, i64 %i.zq, i1 false)
  br label %ZSTDv05_execSequence.exit.i

bb.dh:                                            ; preds = %bb.df
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zr, ptr readonly align 1 %i.abd, i64 %gepdiff.i.i, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zr, i64 %gepdiff.i.i ; 7 uses
  %i.abg = icmp ule ptr %i.abf, %i.uv
  %i.abh = icmp samesign ugt i64 %i.abe, 3
  %or.cond.not.i.i = select i1 %i.abg, i1 %i.abh, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i104.i, label %iter.check188

iter.check188:                                    ; preds = %bb.dh
  %i.abi = add i64 %.277.i.i, 4
  %i.abj = add i64 %i.abi, %.2.i96.i
  %i.abk = add i64 %i.abj, %i.zx
  %i.abl = add i64 %i.vj, %.074.i.i
  %umax168 = tail call i64 @llvm.umax.i64(i64 %i.abk, i64 %i.abl)
  %i.abm = add i64 %.074.i.i, %i.uy
  %i.abn = sub i64 %umax168, %i.abm               ; 7 uses
  %min.iters.check170 = icmp ult i64 %i.abn, 4
  %diff.check167 = icmp ult i64 %.074.i.i, 32
  %or.cond226 = select i1 %min.iters.check170, i1 true, i1 %diff.check167
  br i1 %or.cond226, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check188
  %min.iters.check172 = icmp ult i64 %i.abn, 32
  br i1 %min.iters.check172, label %vec.epilog.ph192, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %n.mod.vf174 = and i64 %i.abn, 28
  %n.vec175 = and i64 %i.abn, -32                 ; 5 uses
  %i.abo = getelementptr i8, ptr %i.abf, i64 %n.vec175
  %i.abp = getelementptr i8, ptr %i.gf, i64 %n.vec175
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.abf, i64 %index177 ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.gf, i64 %index177 ; 2 uses
  %i.abq = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <16 x i8>, ptr %next.gep179, align 1, !tbaa !27
  %wide.load181 = load <16 x i8>, ptr %i.abq, align 1, !tbaa !27
  %i.abr = getelementptr i8, ptr %next.gep178, i64 16
  store <16 x i8> %wide.load180, ptr %next.gep178, align 1, !tbaa !27
  store <16 x i8> %wide.load181, ptr %i.abr, align 1, !tbaa !27
  %index.next182 = add nuw i64 %index177, 32      ; 2 uses
  %i.abs = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.abs, label %middle.block183, label %vector.body176, !llvm.loop !109

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.abn, %n.vec175
  br i1 %cmp.n184, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block183
  %min.epilog.iters.check191 = icmp eq i64 %n.mod.vf174, 0
  br i1 %min.epilog.iters.check191, label %.lr.ph.i.i.preheader, label %vec.epilog.ph192, !prof !110

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check190
  %vec.epilog.resume.val185 = phi i64 [ %n.vec175, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check171 ]
  %n.vec194 = and i64 %i.abn, -4                  ; 4 uses
  %i.abt = getelementptr i8, ptr %i.abf, i64 %n.vec194
  %i.abu = getelementptr i8, ptr %i.gf, i64 %n.vec194
  br label %vec.epilog.vector.body195

vec.epilog.vector.body195:                        ; preds = %vec.epilog.vector.body195, %vec.epilog.ph192
  %index196 = phi i64 [ %vec.epilog.resume.val185, %vec.epilog.ph192 ], [ %index.next200, %vec.epilog.vector.body195 ] ; 3 uses
  %next.gep197 = getelementptr i8, ptr %i.abf, i64 %index196
  %next.gep198 = getelementptr i8, ptr %i.gf, i64 %index196
  %wide.load199 = load <4 x i8>, ptr %next.gep198, align 1, !tbaa !27
  store <4 x i8> %wide.load199, ptr %next.gep197, align 1, !tbaa !27
  %index.next200 = add nuw i64 %index196, 4       ; 2 uses
  %i.abv = icmp eq i64 %index.next200, %n.vec194
  br i1 %i.abv, label %vec.epilog.middle.block201, label %vec.epilog.vector.body195, !llvm.loop !111

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body195
  %cmp.n202 = icmp eq i64 %i.abn, %n.vec194
  br i1 %cmp.n202, label %ZSTDv05_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block201
  %.089125.i.i.ph = phi ptr [ %i.abf, %iter.check188 ], [ %i.abo, %vec.epilog.iter.check190 ], [ %i.abt, %vec.epilog.middle.block201 ]
  %.092124.i.i.ph = phi ptr [ %i.gf, %iter.check188 ], [ %i.abp, %vec.epilog.iter.check190 ], [ %i.abu, %vec.epilog.middle.block201 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.089125.i.i = phi ptr [ %i.aby, %.lr.ph.i.i ], [ %.089125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.abw, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1
  %i.abx = load i8, ptr %.092124.i.i, align 1, !tbaa !27
  %i.aby = getelementptr inbounds nuw i8, ptr %.089125.i.i, i64 1 ; 2 uses
  store i8 %i.abx, ptr %.089125.i.i, align 1, !tbaa !27
  %i.abz = icmp ult ptr %i.aby, %i.zt
  br i1 %i.abz, label %.lr.ph.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !112

.thread.i104.i:                                   ; preds = %bb.dh, %ZSTDv05_wildcopy.exit.i.i
  %i.aca = phi i64 [ %i.abe, %bb.dh ], [ %i.zq, %ZSTDv05_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.gf, %bb.dh ], [ %i.zw, %ZSTDv05_wildcopy.exit.i.i ] ; 7 uses
  %.2.i105.i = phi ptr [ %i.abf, %bb.dh ], [ %i.zr, %ZSTDv05_wildcopy.exit.i.i ] ; 8 uses
  %i.acb = icmp ult i64 %.074.i.i, 8
  br i1 %i.acb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.thread.i104.i
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_execSequence.dec64table, i64 %.074.i.i
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !3
  %i.ace = load i8, ptr %.294.i.i, align 1, !tbaa !27
  store i8 %i.ace, ptr %.2.i105.i, align 1, !tbaa !27
  %i.acf = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !27
  %i.ach = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 1
  store i8 %i.acg, ptr %i.ach, align 1, !tbaa !27
  %i.aci = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !27
  %i.ack = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 2
  store i8 %i.acj, ptr %i.ack, align 1, !tbaa !27
  %i.acl = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !27
  %i.acn = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 3
  store i8 %i.acm, ptr %i.acn, align 1, !tbaa !27
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_execSequence.dec32table, i64 %.074.i.i
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !3
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds i8, ptr %.294.i.i, i64 %i.acq ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 4
  %.val.i109.i = load i32, ptr %i.acr, align 1
  store i32 %.val.i109.i, ptr %i.acs, align 1
  %i.act = sext i32 %i.acd to i64
  %i.acu = sub nsw i64 0, %i.act
  %i.acv = getelementptr inbounds i8, ptr %i.acr, i64 %i.acu
  br label %bb.dk

bb.dj:                                            ; preds = %.thread.i104.i
  %.294.val.i.i = load i64, ptr %.294.i.i, align 1
  store i64 %.294.val.i.i, ptr %.2.i105.i, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.395.i.i = phi ptr [ %i.acv, %bb.di ], [ %.294.i.i, %bb.dj ] ; 2 uses
  %.395.i.i127 = ptrtoaddr ptr %.395.i.i to i64   ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 8 ; 11 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.395.i.i, i64 8 ; 10 uses
  %i.acy = icmp ugt ptr %i.zt, %i.va
  br i1 %i.acy, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.acz = icmp ult ptr %i.acw, %i.uv
  br i1 %i.acz, label %.preheader.i.preheader, label %bb.dm

.preheader.i.preheader:                           ; preds = %bb.dl
  %umax129 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aay) ; 2 uses
  %i.ada = add i64 %i.vg, %umax129
  %umax130 = tail call i64 @llvm.umax.i64(i64 %i.vb, i64 %i.ada)
  %i.adb = add i64 %umax130, -9
  %i.adc = add i64 %umax129, %i.uy
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = lshr i64 %i.add, 3
  %i.adf = add nuw nsw i64 %i.ade, 1              ; 2 uses
  %min.iters.check131 = icmp ult i64 %i.add, 72
  br i1 %min.iters.check131, label %.preheader.i.preheader227, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.preheader.i.preheader
  %i.adg = sub i64 %.2.i96.i, %i.uy
  %i.adh = add i64 %i.adg, %i.zx
  %umax126 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.adh)
  %i.adi = add i64 %umax126, %i.uy
  %i.adj = sub i64 %.395.i.i127, %i.adi
  %diff.check128 = icmp ugt i64 %i.adj, -32
  br i1 %diff.check128, label %.preheader.i.preheader227, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck125
  %n.vec134 = and i64 %i.adf, 4611686018427387900 ; 3 uses
  %i.adk = shl i64 %n.vec134, 3                   ; 2 uses
  %i.adl = getelementptr i8, ptr %i.acw, i64 %i.adk
  %i.adm = getelementptr i8, ptr %i.acx, i64 %i.adk
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph132
  %index136 = phi i64 [ 0, %vector.ph132 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %i.adn = shl i64 %index136, 3                   ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.acw, i64 %i.adn ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.acx, i64 %i.adn ; 2 uses
  %i.ado = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load139 = load <2 x i64>, ptr %next.gep138, align 1
  %wide.load140 = load <2 x i64>, ptr %i.ado, align 1
  %i.adp = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x i64> %wide.load139, ptr %next.gep137, align 1
  store <2 x i64> %wide.load140, ptr %i.adp, align 1
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.adq = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.adq, label %middle.block142, label %vector.body135, !llvm.loop !113

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.adf, %n.vec134
  br i1 %cmp.n143, label %ZSTDv05_wildcopy.exit114.i.i, label %.preheader.i.preheader227

.preheader.i.preheader227:                        ; preds = %vector.memcheck125, %.preheader.i.preheader, %middle.block142
  %.09.i111.i.i.ph = phi ptr [ %i.acw, %vector.memcheck125 ], [ %i.acw, %.preheader.i.preheader ], [ %i.adl, %middle.block142 ]
  %.0.i112.i.i.ph = phi ptr [ %i.acx, %vector.memcheck125 ], [ %i.acx, %.preheader.i.preheader ], [ %i.adm, %middle.block142 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader227, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.adr, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader227 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.ads, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader227 ] ; 2 uses
  %.0.val.i113.i.i = load i64, ptr %.0.i112.i.i, align 1
  store i64 %.0.val.i113.i.i, ptr %.09.i111.i.i, align 1
  %i.adr = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8
  %i.adt = icmp ult ptr %i.adr, %i.uv
  br i1 %i.adt, label %.preheader.i, label %ZSTDv05_wildcopy.exit114.i.i, !llvm.loop !114

ZSTDv05_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block142
  %i.adu = ptrtoint ptr %i.acw to i64
  %i.adv = sub i64 %i.vb, %i.adu
  %i.adw = getelementptr inbounds i8, ptr %i.acx, i64 %i.adv
  br label %bb.dm

bb.dm:                                            ; preds = %ZSTDv05_wildcopy.exit114.i.i, %bb.dl
  %.496.i.i = phi ptr [ %i.adw, %ZSTDv05_wildcopy.exit114.i.i ], [ %i.acx, %bb.dl ] ; 7 uses
  %.3.i107.i = phi ptr [ %i.uv, %ZSTDv05_wildcopy.exit114.i.i ], [ %i.acw, %bb.dl ] ; 7 uses
  %.496.i.i108 = ptrtoaddr ptr %.496.i.i to i64
  %i.adx = icmp ult ptr %.3.i107.i, %i.zt
  br i1 %i.adx, label %iter.check, label %ZSTDv05_execSequence.exit.i

iter.check:                                       ; preds = %bb.dm
  %i.ady = add i64 %.277.i.i, 4
  %i.adz = add i64 %i.ady, %.2.i96.i
  %i.aea = add i64 %i.adz, %i.zx
  %umax109 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aay)
  %i.aeb = add i64 %i.vf, %umax109
  %umax110 = tail call i64 @llvm.umax.i64(i64 %i.vb, i64 %i.aeb)
  %i.aec = sub i64 %i.aea, %umax110               ; 7 uses
  %min.iters.check = icmp ult i64 %i.aec, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aed = sub i64 %.2.i96.i, %i.uy
  %i.aee = add i64 %i.aed, %i.zx
  %umax = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aee)
  %i.aef = add i64 %i.ve, %umax
  %umax107 = tail call i64 @llvm.umax.i64(i64 %i.vd, i64 %i.aef)
  %i.aeg = sub i64 %.496.i.i108, %umax107
  %diff.check = icmp ugt i64 %i.aeg, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check111 = icmp ult i64 %i.aec, 32
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aec, 28
  %n.vec = and i64 %i.aec, -32                    ; 5 uses
  %i.aeh = getelementptr i8, ptr %.3.i107.i, i64 %n.vec
  %i.aei = getelementptr i8, ptr %.496.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.i107.i, i64 %index ; 2 uses
  %next.gep112 = getelementptr i8, ptr %.496.i.i, i64 %index ; 2 uses
  %i.aej = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep112, align 1, !tbaa !27
  %wide.load113 = load <16 x i8>, ptr %i.aej, align 1, !tbaa !27
  %i.aek = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %wide.load113, ptr %i.aek, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ael = icmp eq i64 %index.next, %n.vec
  br i1 %i.ael, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aec, %n.vec
  br i1 %cmp.n, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.aec, -4                  ; 4 uses
  %i.aem = getelementptr i8, ptr %.3.i107.i, i64 %n.vec116
  %i.aen = getelementptr i8, ptr %.496.i.i, i64 %n.vec116
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %.3.i107.i, i64 %index117
  %next.gep119 = getelementptr i8, ptr %.496.i.i, i64 %index117
  %wide.load120 = load <4 x i8>, ptr %next.gep119, align 1, !tbaa !27
  store <4 x i8> %wide.load120, ptr %next.gep118, align 1, !tbaa !27
  %index.next121 = add nuw i64 %index117, 4       ; 2 uses
  %i.aeo = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.aeo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i64 %i.aec, %n.vec116
  br i1 %cmp.n122, label %ZSTDv05_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4127.i108.i.ph = phi ptr [ %.3.i107.i, %iter.check ], [ %.3.i107.i, %vector.memcheck ], [ %i.aeh, %vec.epilog.iter.check ], [ %i.aem, %vec.epilog.middle.block ]
  %.5126.i.i.ph = phi ptr [ %.496.i.i, %iter.check ], [ %.496.i.i, %vector.memcheck ], [ %i.aei, %vec.epilog.iter.check ], [ %i.aen, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.4127.i108.i = phi ptr [ %i.aer, %.lr.ph128.i.i ], [ %.4127.i108.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.5126.i.i = phi ptr [ %i.aep, %.lr.ph128.i.i ], [ %.5126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.5126.i.i, i64 1
  %i.aeq = load i8, ptr %.5126.i.i, align 1, !tbaa !27
  %i.aer = getelementptr inbounds nuw i8, ptr %.4127.i108.i, i64 1 ; 2 uses
  store i8 %i.aeq, ptr %.4127.i108.i, align 1, !tbaa !27
  %i.aes = icmp ult ptr %i.aer, %i.zt
  br i1 %i.aes, label %.lr.ph128.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !117

bb.dn:                                            ; preds = %bb.dk
  %i.aet = getelementptr i8, ptr %.2.i105.i, i64 %i.aca
  %i.aeu = add i64 %i.vh, %.277.i.i
  %umin = tail call i64 @llvm.umin.i64(i64 %.074.i.i, i64 %i.aay)
  %i.aev = add i64 %i.aeu, %umin
  %umax148 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aay) ; 3 uses
  %i.aew = add i64 %i.aev, %umax148
  %i.aex = sub i64 %i.aew, %.074.i.i
  %i.aey = add i64 %i.vi, %umax148
  %umax149 = tail call i64 @llvm.umax.i64(i64 %i.aex, i64 %i.aey)
  %i.aez = add i64 %umax149, -9
  %i.afa = add i64 %umax148, %i.uy
  %i.afb = sub i64 %i.aez, %i.afa                 ; 2 uses
  %i.afc = lshr i64 %i.afb, 3
  %i.afd = add nuw nsw i64 %i.afc, 1              ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.afb, 72
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %bb.dn
  %i.afe = sub i64 %.2.i96.i, %i.uy
  %i.aff = add i64 %i.afe, %i.zx
  %umax146 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aff)
  %i.afg = add i64 %umax146, %i.uy
  %i.afh = sub i64 %.395.i.i127, %i.afg
  %diff.check147 = icmp ugt i64 %i.afh, -32
  br i1 %diff.check147, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck145
  %n.vec154 = and i64 %i.afd, 4611686018427387900 ; 3 uses
  %i.afi = shl i64 %n.vec154, 3                   ; 2 uses
  %i.afj = getelementptr i8, ptr %i.acw, i64 %i.afi
  %i.afk = getelementptr i8, ptr %i.acx, i64 %i.afi
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.afl = shl i64 %index156, 3                   ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.acw, i64 %i.afl ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.acx, i64 %i.afl ; 2 uses
  %i.afm = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <2 x i64>, ptr %next.gep158, align 1
  %wide.load160 = load <2 x i64>, ptr %i.afm, align 1
  %i.afn = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x i64> %wide.load159, ptr %next.gep157, align 1
  store <2 x i64> %wide.load160, ptr %i.afn, align 1
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.afo = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.afo, label %middle.block162, label %vector.body155, !llvm.loop !118

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.afd, %n.vec154
  br i1 %cmp.n163, label %ZSTDv05_execSequence.exit.i, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck145, %bb.dn, %middle.block162
  %.09.i115.i.i.ph = phi ptr [ %i.acw, %vector.memcheck145 ], [ %i.acw, %bb.dn ], [ %i.afj, %middle.block162 ]
  %.0.i116.i.i.ph = phi ptr [ %i.acx, %vector.memcheck145 ], [ %i.acx, %bb.dn ], [ %i.afk, %middle.block162 ]
  br label %scalar.ph150

scalar.ph150:                                     ; preds = %scalar.ph150.preheader, %scalar.ph150
  %.09.i115.i.i = phi ptr [ %i.afp, %scalar.ph150 ], [ %.09.i115.i.i.ph, %scalar.ph150.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.afq, %scalar.ph150 ], [ %.0.i116.i.i.ph, %scalar.ph150.preheader ] ; 2 uses
  %.0.val.i117.i.i = load i64, ptr %.0.i116.i.i, align 1
  store i64 %.0.val.i117.i.i, ptr %.09.i115.i.i, align 1
  %i.afp = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8
  %i.afr = icmp ult ptr %i.afp, %i.aet
  br i1 %i.afr, label %scalar.ph150, label %ZSTDv05_execSequence.exit.i, !llvm.loop !119

ZSTDv05_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph150, %.lr.ph128.i.i, %middle.block183, %vec.epilog.middle.block201, %middle.block162, %middle.block, %vec.epilog.middle.block, %bb.dm, %bb.dg
  %i.afs = icmp ugt i32 %i.yn, 64
  br i1 %i.afs, label %BITv05_reloadDStream.exit.thread.i, label %bb.ch

.critedge.i:                                      ; preds = %BITv05_reloadDStream.exit.i, %BITv05_reloadDStream.exit.thread.i, %bb.bk, %.thread.i18
  %.2135.i = phi ptr [ %i.fx, %bb.bk ], [ %i.zu, %BITv05_reloadDStream.exit.thread.i ], [ %i.fx, %.thread.i18 ], [ %.0133218.i, %BITv05_reloadDStream.exit.i ] ; 4 uses
  %.365.i = phi ptr [ %1, %bb.bk ], [ %i.zt, %BITv05_reloadDStream.exit.thread.i ], [ %1, %.thread.i18 ], [ %.062222.i, %BITv05_reloadDStream.exit.i ] ; 3 uses
  %i.aft = ptrtoint ptr %i.gb to i64
  %i.afu = ptrtoint ptr %.2135.i to i64
  %i.afv = sub i64 %i.aft, %i.afu                 ; 2 uses
  %i.afw = icmp ugt ptr %.2135.i, %i.gb
  br i1 %i.afw, label %ZSTDv05_decompressSequences.exit, label %bb.do

bb.do:                                            ; preds = %.critedge.i
  %i.afx = getelementptr inbounds nuw i8, ptr %.365.i, i64 %i.afv ; 2 uses
  %i.afy = icmp ugt ptr %i.afx, %i.ga
  br i1 %i.afy, label %ZSTDv05_decompressSequences.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not75.i = icmp eq ptr %i.gb, %.2135.i
  br i1 %.not75.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.365.i, ptr align 1 %.2135.i, i64 %i.afv, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.567.ph.i = phi ptr [ %.365.i, %bb.dp ], [ %i.afx, %bb.dq ]
  %i.afz = ptrtoint ptr %.567.ph.i to i64
  %i.aga = ptrtoint ptr %1 to i64
  %i.agb = sub i64 %i.afz, %i.aga
  br label %ZSTDv05_decompressSequences.exit

ZSTDv05_decompressSequences.exit:                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %ZSTDv05_decodeSequence.exit.i, %.thread.i, %bb.ab, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.o, %bb.j, %bb.b, %bb.v, %bb.dr, %bb.do, %.critedge.i, %BITv05_reloadDStream.exit.thread.i, %FSEv05_initDState.exit92.i, %FSEv05_initDState.exit84.i, %BITv05_initDStream.exit.i, %bb.bv, %bb.bn, %bb.bl, %ZSTDv05_decodeSeqHeaders.exit.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i, %bb.a
  %.0 = phi i64 [ -20, %bb.d ], [ -72, %bb.a ], [ -20, %BITv05_reloadDStream.exit.thread.i ], [ %i.agb, %bb.dr ], [ -20, %.critedge.i ], [ %i.pj, %ZSTDv05_decodeSeqHeaders.exit.i ], [ %.7.i.ph.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i ], [ -70, %bb.do ], [ -20, %BITv05_initDStream.exit.i ], [ -20, %bb.bl ], [ -20, %bb.bv ], [ -20, %bb.bn ], [ -20, %FSEv05_initDState.exit84.i ], [ -20, %FSEv05_initDState.exit92.i ], [ -20, %bb.o ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.n ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.de ], [ -20, %bb.dd ], [ -70, %bb.dc ], [ -20, %bb.db ], [ -70, %ZSTDv05_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress_usingPreparedDCtx(ptr noundef initializes((0, 26763)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26763) %0, ptr noundef nonnull readonly align 8 dereferenceable(26763) %1, i64 26763, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.b, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.h, ptr %i.i, align 8, !tbaa !104
  store ptr %2, ptr %i.d, align 8, !tbaa !103
  store ptr %2, ptr %i.a, align 8, !tbaa !101
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread90, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %3, align 1, !tbaa !3
  %.not.i = icmp eq i32 %.val, -47205083
  br i1 %.not.i, label %bb.c, label %.thread90

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26680
  store i64 5, ptr %i.d, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !27
  %i.h = and i8 %i.g, 15
  %narrow.i.i = add nuw nsw i8 %i.h, 11
  %i.i = zext nneg i8 %narrow.i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26696
  store i32 %i.i, ptr %i.j, align 8, !tbaa !100
  %i.k = load i8, ptr %i.f, align 1, !tbaa !27
  %.not7.i.i = icmp ult i8 %i.k, 16
  br i1 %.not7.i.i, label %.lr.ph, label %.thread90

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.m = add i64 %4, -5
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.162125 = phi i64 [ %i.m, %.lr.ph ], [ %i.au, %bb.l ] ; 2 uses
  %.165124 = phi ptr [ %i.l, %.lr.ph ], [ %i.at, %bb.l ] ; 5 uses
  %.067123 = phi ptr [ %1, %.lr.ph ], [ %i.as, %bb.l ] ; 7 uses
  %i.p = load i8, ptr %.165124, align 1, !tbaa !27
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 6                         ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 3, label %.thread104
    i32 2, label %bb.f
  ]

.thread104:                                       ; preds = %bb.d
  %.not76 = icmp eq i64 %.162125, 3
  br i1 %.not76, label %ZSTDv05_copyRawBlock.exit.thread, label %.thread90

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i32 %i.q, 16
  %i.t = and i32 %i.s, 458752
  %i.u = getelementptr inbounds nuw i8, ptr %.165124, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.165124, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i81.ph = phi i64 [ %i.ad, %bb.e ], [ 1, %bb.d ] ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.165124, i64 3 ; 2 uses
  %i.af = add i64 %.162125, -3                    ; 2 uses
  %i.ag = icmp ugt i64 %.0.i81.ph, %i.af
  br i1 %i.ag, label %.thread90, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.r, label %.thread90 [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %.067123 to i64
  %i.ai = sub i64 %i.o, %i.ah
  %i.aj = tail call fastcc i64 @ZSTDv05_decompressBlock_internal(ptr noundef %0, ptr noundef %.067123, i64 noundef %i.ai, ptr noundef nonnull %i.ae, i64 noundef %.0.i81.ph)
  br label %ZSTDv05_copyRawBlock.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = ptrtoint ptr %.067123 to i64
  %i.al = sub i64 %i.o, %i.ak
  %i.am = icmp eq ptr %.067123, null
end_hunk_1
