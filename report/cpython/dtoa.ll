inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_dg_strtod:bb.a
.preheader735.1:                                  ; preds = %.preheader735.preheader
  %.not544.1 = icmp slt i32 %spec.select56811111116, 17
  %i.ia = select i1 %.not544.1, i64 17, i64 16
  %i.ib = getelementptr i8, ptr %.1430, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %.not545.1 = icmp eq i8 %i.ic, 48
  br i1 %.not545.1, label %.preheader735.2, label %.thread1122

.preheader735.2:                                  ; preds = %.preheader735.1
  %.not544.2 = icmp slt i32 %spec.select56811111116, 16
  %i.id = select i1 %.not544.2, i64 16, i64 15
  %i.ie = getelementptr i8, ptr %.1430, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !11
  %.not545.2 = icmp eq i8 %i.if, 48
  br i1 %.not545.2, label %.preheader735.3, label %.thread1122

.preheader735.3:                                  ; preds = %.preheader735.2
  %.not544.3 = icmp slt i32 %spec.select56811111116, 15
  %i.ig = select i1 %.not544.3, i64 15, i64 14
  %i.ih = getelementptr i8, ptr %.1430, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !11
  %.not545.3 = icmp eq i8 %i.ii, 48
  br i1 %.not545.3, label %.preheader735.4, label %.thread1122

.preheader735.4:                                  ; preds = %.preheader735.3
  %.not544.4 = icmp slt i32 %spec.select56811111116, 14
  %i.ij = select i1 %.not544.4, i64 14, i64 13
  %i.ik = getelementptr i8, ptr %.1430, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !11
  %.not545.4 = icmp eq i8 %i.il, 48
  br i1 %.not545.4, label %.preheader735.5, label %.thread1122

.preheader735.5:                                  ; preds = %.preheader735.4
  %.not544.5 = icmp slt i32 %spec.select56811111116, 13
  %i.im = select i1 %.not544.5, i64 13, i64 12
  %i.in = getelementptr i8, ptr %.1430, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %.not545.5 = icmp eq i8 %i.io, 48
  br i1 %.not545.5, label %.preheader735.6, label %.thread1122

.preheader735.6:                                  ; preds = %.preheader735.5
  %.not544.6 = icmp slt i32 %spec.select56811111116, 12
  %i.ip = select i1 %.not544.6, i64 12, i64 11
  %i.iq = getelementptr i8, ptr %.1430, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %.not545.6 = icmp eq i8 %i.ir, 48
  br i1 %.not545.6, label %.preheader735.7, label %.thread1122

.preheader735.7:                                  ; preds = %.preheader735.6
  %.not544.7 = icmp slt i32 %spec.select56811111116, 11
  %i.is = select i1 %.not544.7, i64 11, i64 10
  %i.it = getelementptr i8, ptr %.1430, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !11
  %.not545.7 = icmp eq i8 %i.iu, 48
  br i1 %.not545.7, label %.preheader735.8, label %.thread1122

.preheader735.8:                                  ; preds = %.preheader735.7
  %.not544.8 = icmp slt i32 %spec.select56811111116, 10
  %i.iv = select i1 %.not544.8, i64 10, i64 9
  %i.iw = getelementptr i8, ptr %.1430, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !11
  %.not545.8 = icmp eq i8 %i.ix, 48
  br i1 %.not545.8, label %.preheader735.9, label %.thread1122

.preheader735.9:                                  ; preds = %.preheader735.8
  %.not544.9 = icmp slt i32 %spec.select56811111116, 9
  %i.iy = select i1 %.not544.9, i64 9, i64 8
  %i.iz = getelementptr i8, ptr %.1430, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !11
  %.not545.9 = icmp eq i8 %i.ja, 48
  br i1 %.not545.9, label %.preheader735.10, label %.thread1122

.preheader735.10:                                 ; preds = %.preheader735.9
  %.not544.10 = icmp slt i32 %spec.select56811111116, 8
  %i.jb = select i1 %.not544.10, i64 8, i64 7
  %i.jc = getelementptr i8, ptr %.1430, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !11
  %.not545.10 = icmp eq i8 %i.jd, 48
  br i1 %.not545.10, label %.preheader735.11, label %.preheader734

.preheader735.11:                                 ; preds = %.preheader735.10
  %.not544.11 = icmp slt i32 %spec.select56811111116, 7
  %i.je = select i1 %.not544.11, i64 7, i64 6
  %i.jf = getelementptr i8, ptr %.1430, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !11
  %.not545.11 = icmp eq i8 %i.jg, 48
  br i1 %.not545.11, label %.preheader735.12, label %.preheader734

.preheader735.12:                                 ; preds = %.preheader735.11
  %.not544.12 = icmp slt i32 %spec.select56811111116, 6
  %i.jh = select i1 %.not544.12, i64 6, i64 5
  %i.ji = getelementptr i8, ptr %.1430, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11
  %.not545.12 = icmp eq i8 %i.jj, 48
  br i1 %.not545.12, label %.preheader735.13, label %.preheader734

.preheader735.13:                                 ; preds = %.preheader735.12
  %.not544.13 = icmp slt i32 %spec.select56811111116, 5
  %i.jk = select i1 %.not544.13, i64 5, i64 4
  %i.jl = getelementptr i8, ptr %.1430, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !11
  %.not545.13 = icmp eq i8 %i.jm, 48
  br i1 %.not545.13, label %.preheader735.14, label %.preheader734

.preheader735.14:                                 ; preds = %.preheader735.13
  %.not544.14 = icmp slt i32 %spec.select56811111116, 4
  %i.jn = select i1 %.not544.14, i64 4, i64 3
  %i.jo = getelementptr i8, ptr %.1430, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !11
  %.not545.14 = icmp eq i8 %i.jp, 48
  br i1 %.not545.14, label %.preheader735.15, label %.preheader734

.preheader735.15:                                 ; preds = %.preheader735.14
  %.not544.15 = icmp slt i32 %spec.select56811111116, 3
  %i.jq = select i1 %.not544.15, i64 3, i64 2
  %i.jr = getelementptr i8, ptr %.1430, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !11
  %.not545.15 = icmp eq i8 %i.js, 48
  br i1 %.not545.15, label %.preheader735.16, label %.preheader734

.preheader735.16:                                 ; preds = %.preheader735.15
  %.not544.16 = icmp slt i32 %spec.select56811111116, 2
  %i.jt = select i1 %.not544.16, i64 2, i64 1
  %i.ju = getelementptr i8, ptr %.1430, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !11
  %.not545.16 = icmp eq i8 %i.jv, 48
  br i1 %.not545.16, label %.preheader735.17, label %.preheader734

.preheader735.17:                                 ; preds = %.preheader735.16
  %i.jw = load i8, ptr %.1430, align 1, !tbaa !11
  %.not545.17 = icmp ne i8 %i.jw, 48
  %spec.select1277 = zext i1 %.not545.17 to i32
  br label %.preheader734

.thread1122:                                      ; preds = %.preheader735.preheader, %.preheader735.9, %.preheader735.1, %.preheader735.2, %.preheader735.3, %.preheader735.4, %.preheader735.5, %.preheader735.6, %.preheader735.7, %.preheader735.8
  %.3457.lcssa.ph = phi i32 [ 10, %.preheader735.8 ], [ 11, %.preheader735.7 ], [ 12, %.preheader735.6 ], [ 13, %.preheader735.5 ], [ 14, %.preheader735.4 ], [ 15, %.preheader735.3 ], [ 16, %.preheader735.2 ], [ 17, %.preheader735.1 ], [ 9, %.preheader735.9 ], [ 18, %.preheader735.preheader ] ; 3 uses
  %i.jx = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa.ph
  %i.jy = add i32 %i.jx, %i.ev
  %spec.select5691124 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa.ph)
  br label %.loopexit733

.preheader734:                                    ; preds = %.preheader735.17, %.preheader735.10, %.preheader735.11, %.preheader735.12, %.preheader735.13, %.preheader735.14, %.preheader735.15, %.preheader735.16
  %.3457.lcssa = phi i32 [ 6, %.preheader735.12 ], [ 8, %.preheader735.10 ], [ 2, %.preheader735.16 ], [ 7, %.preheader735.11 ], [ %spec.select1277, %.preheader735.17 ], [ 3, %.preheader735.15 ], [ 5, %.preheader735.13 ], [ 4, %.preheader735.14 ] ; 7 uses
  %i.jz = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa
  %i.ka = add i32 %i.jz, %i.ev                    ; 3 uses
  %spec.select569 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa) ; 8 uses
  %i.kb = icmp sgt i32 %spec.select569, 0
  br i1 %i.kb, label %.lr.ph891.preheader, label %.preheader

.lr.ph891.preheader:                              ; preds = %.preheader734
  %wide.trip.count = zext nneg i32 %spec.select569 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.kc = icmp ult i32 %spec.select569, 4
  br i1 %i.kc, label %.lr.ph891.epil.preheader, label %.lr.ph891.preheader.new

.lr.ph891.preheader.new:                          ; preds = %.lr.ph891.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph891

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph891
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph891.epil.preheader

.lr.ph891.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph891.preheader
  %indvars.iv1015.epil.init = phi i64 [ 0, %.lr.ph891.preheader ], [ %indvars.iv.next1016.3, %.preheader.loopexit.unr-lcssa ]
  %.2418890.epil.init = phi i32 [ 0, %.lr.ph891.preheader ], [ %i.lu, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1504 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1504)
  br label %.lr.ph891.epil

.lr.ph891.epil:                                   ; preds = %.lr.ph891.epil, %.lr.ph891.epil.preheader
  %indvars.iv1015.epil = phi i64 [ %indvars.iv1015.epil.init, %.lr.ph891.epil.preheader ], [ %indvars.iv.next1016.epil, %.lr.ph891.epil ] ; 2 uses
  %.2418890.epil = phi i32 [ %.2418890.epil.init, %.lr.ph891.epil.preheader ], [ %i.ki, %.lr.ph891.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph891.epil.preheader ], [ %epil.iter.next, %.lr.ph891.epil ]
  %i.kd = mul i32 %.2418890.epil, 10
  %i.ke = getelementptr i8, ptr %.1430, i64 %indvars.iv1015.epil
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !11
  %i.kg = sext i8 %i.kf to i32
  %i.kh = add i32 %i.kd, -48
  %i.ki = add i32 %i.kh, %i.kg                    ; 2 uses
  %indvars.iv.next1016.epil = add nuw nsw i64 %indvars.iv1015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph891.epil, !llvm.loop !33

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph891.epil, %.preheader734
  %.5459.lcssa = phi i32 [ 0, %.preheader734 ], [ %spec.select569, %.lr.ph891.epil ], [ %spec.select569, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.2418.lcssa = phi i32 [ 0, %.preheader734 ], [ %i.lu, %.preheader.loopexit.unr-lcssa ], [ %i.ki, %.lr.ph891.epil ] ; 3 uses
  %i.kj = icmp samesign ult i32 %.5459.lcssa, %.3457.lcssa
  br i1 %i.kj, label %.lr.ph896.preheader, label %._crit_edge.thread.i

.lr.ph896.preheader:                              ; preds = %.preheader
  %i.kk = zext nneg i32 %.5459.lcssa to i64       ; 4 uses
  %wide.trip.count1022 = zext nneg i32 %.3457.lcssa to i64 ; 3 uses
  %i.kl = sub nsw i64 %wide.trip.count1022, %i.kk
  %xtraiter1505 = and i64 %i.kl, 3                ; 2 uses
  %lcmp.mod1506.not = icmp eq i64 %xtraiter1505, 0
  br i1 %lcmp.mod1506.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol

.lr.ph896.prol:                                   ; preds = %.lr.ph896.preheader, %.lr.ph896.prol
  %indvars.iv1019.prol = phi i64 [ %indvars.iv.next1020.prol, %.lr.ph896.prol ], [ %i.kk, %.lr.ph896.preheader ] ; 2 uses
  %.3419895.prol = phi i32 [ %i.kr, %.lr.ph896.prol ], [ %.2418.lcssa, %.lr.ph896.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph896.prol ], [ 0, %.lr.ph896.preheader ]
  %i.km = mul i32 %.3419895.prol, 10
  %indvars.iv.next1020.prol = add nuw nsw i64 %indvars.iv1019.prol, 1 ; 2 uses
  %4 = getelementptr i8, ptr %.1430, i64 %indvars.iv1019.prol
  %i.kn = getelementptr i8, ptr %4, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !11
  %i.kp = sext i8 %i.ko to i32
  %i.kq = add i32 %i.km, -48
  %i.kr = add i32 %i.kq, %i.kp                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1505
  br i1 %prol.iter.cmp.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol, !llvm.loop !35

.lr.ph896.prol.loopexit:                          ; preds = %.lr.ph896.prol, %.lr.ph896.preheader
  %.lcssa1485.unr = phi i32 [ poison, %.lr.ph896.preheader ], [ %i.kr, %.lr.ph896.prol ]
  %indvars.iv1019.unr = phi i64 [ %i.kk, %.lr.ph896.preheader ], [ %indvars.iv.next1020.prol, %.lr.ph896.prol ]
  %.3419895.unr = phi i32 [ %.2418.lcssa, %.lr.ph896.preheader ], [ %i.kr, %.lr.ph896.prol ]
  %i.ks = sub nsw i64 %i.kk, %wide.trip.count1022
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge.thread.i, label %.lr.ph896

.lr.ph891:                                        ; preds = %.lr.ph891, %.lr.ph891.preheader.new
  %indvars.iv1015 = phi i64 [ 0, %.lr.ph891.preheader.new ], [ %indvars.iv.next1016.3, %.lr.ph891 ] ; 5 uses
  %.2418890 = phi i32 [ 0, %.lr.ph891.preheader.new ], [ %i.lu, %.lr.ph891 ]
  %niter = phi i64 [ 0, %.lr.ph891.preheader.new ], [ %niter.next.3, %.lr.ph891 ]
  %i.ku = mul i32 %.2418890, 10
  %i.kv = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !11
  %i.kx = sext i8 %i.kw to i32
  %i.ky = add i32 %i.ku, -48
  %i.kz = add i32 %i.ky, %i.kx
  %i.la = mul i32 %i.kz, 10
  %i.lb = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lc = getelementptr i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !11
  %i.le = sext i8 %i.ld to i32
  %i.lf = add i32 %i.la, -48
  %i.lg = add i32 %i.lf, %i.le
  %i.lh = mul i32 %i.lg, 10
  %i.li = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lj = getelementptr i8, ptr %i.li, i64 2
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !11
  %i.ll = sext i8 %i.lk to i32
  %i.lm = add i32 %i.lh, -48
  %i.ln = add i32 %i.lm, %i.ll
  %i.lo = mul i32 %i.ln, 10
  %i.lp = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lq = getelementptr i8, ptr %i.lp, i64 3
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !11
  %i.ls = sext i8 %i.lr to i32
  %i.lt = add i32 %i.lo, -48
  %i.lu = add i32 %i.lt, %i.ls                    ; 3 uses
  %indvars.iv.next1016.3 = add nuw nsw i64 %indvars.iv1015, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph891, !llvm.loop !36

.lr.ph896:                                        ; preds = %.lr.ph896.prol.loopexit, %.lr.ph896
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020.3, %.lr.ph896 ], [ %indvars.iv1019.unr, %.lr.ph896.prol.loopexit ] ; 5 uses
  %.3419895 = phi i32 [ %i.mv, %.lr.ph896 ], [ %.3419895.unr, %.lr.ph896.prol.loopexit ]
  %i.lv = mul i32 %.3419895, 10
  %i.lw = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.lx = getelementptr i8, ptr %i.lw, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11
  %i.lz = sext i8 %i.ly to i32
  %i.ma = add i32 %i.lv, -48
  %i.mb = add i32 %i.ma, %i.lz
  %i.mc = mul i32 %i.mb, 10
  %i.md = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.me = getelementptr i8, ptr %i.md, i64 2
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11
  %i.mg = sext i8 %i.mf to i32
  %i.mh = add i32 %i.mc, -48
  %i.mi = add i32 %i.mh, %i.mg
  %i.mj = mul i32 %i.mi, 10
  %i.mk = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.ml = getelementptr i8, ptr %i.mk, i64 3
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !11
  %i.mn = sext i8 %i.mm to i32
  %i.mo = add i32 %i.mj, -48
  %i.mp = add i32 %i.mo, %i.mn
  %i.mq = mul i32 %i.mp, 10
  %indvars.iv.next1020.3 = add nuw nsw i64 %indvars.iv1019, 4 ; 2 uses
  %5 = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.mr = getelementptr i8, ptr %5, i64 4
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !11
  %i.mt = sext i8 %i.ms to i32
  %i.mu = add i32 %i.mq, -48
  %i.mv = add i32 %i.mu, %i.mt                    ; 2 uses
  %exitcond1023.not.3 = icmp eq i64 %indvars.iv.next1020.3, %wide.trip.count1022
  br i1 %exitcond1023.not.3, label %._crit_edge.thread.i, label %.lr.ph896, !llvm.loop !37

.loopexit733:                                     ; preds = %.thread1122, %bb.bj
  %.3473 = phi i32 [ %i.ev, %bb.bj ], [ %i.jy, %.thread1122 ] ; 3 uses
  %.0448 = phi i32 [ %.0454.lcssa11081118, %bb.bj ], [ %.3457.lcssa.ph, %.thread1122 ] ; 5 uses
  %.3447 = phi i32 [ %spec.select56811111116, %bb.bj ], [ %spec.select5691124, %.thread1122 ] ; 3 uses
  %i.mw = trunc i32 %.0448 to i8
  %.lhs.trunc = add i8 %i.mw, 8
  %i.mx = udiv i8 %.lhs.trunc, 9
  %.zext = zext nneg i8 %i.mx to i32
  %i.my = icmp sgt i32 %.0448, 9
  br i1 %i.my, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph896.prol.loopexit, %.lr.ph896, %.preheader, %.loopexit733
  %.44201148 = phi i32 [ %.0416.lcssa1120, %.loopexit733 ], [ %.2418.lcssa, %.preheader ], [ %.lcssa1485.unr, %.lr.ph896.prol.loopexit ], [ %i.mv, %.lr.ph896 ]
  %.34471143 = phi i32 [ %.3447, %.loopexit733 ], [ %spec.select569, %.preheader ], [ %spec.select569, %.lr.ph896 ], [ %spec.select569, %.lr.ph896.prol.loopexit ]
  %.04481138 = phi i32 [ %.0448, %.loopexit733 ], [ %.3457.lcssa, %.preheader ], [ %.3457.lcssa, %.lr.ph896 ], [ %.3457.lcssa, %.lr.ph896.prol.loopexit ]
  %.34731133 = phi i32 [ %.3473, %.loopexit733 ], [ %i.ka, %.preheader ], [ %i.ka, %.lr.ph896 ], [ %i.ka, %.lr.ph896.prol.loopexit ]
  %i.mz = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.loopexit733, %.lr.ph.i
  %.044.i = phi i32 [ %i.na, %.lr.ph.i ], [ 1, %.loopexit733 ]
  %.02843.i = phi i32 [ %i.nb, %.lr.ph.i ], [ 0, %.loopexit733 ]
  %i.na = shl i32 %.044.i, 1                      ; 2 uses
  %i.nb = add i32 %.02843.i, 1                    ; 5 uses
  %i.nc = icmp slt i32 %i.na, %.zext
  br i1 %i.nc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.nd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ne = icmp slt i32 %i.nb, 8
  br i1 %i.ne, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.44201147 = phi i32 [ %.44201148, %._crit_edge.thread.i ], [ %.0416.lcssa1120, %._crit_edge.i ] ; 3 uses
  %.34471142 = phi i32 [ %.34471143, %._crit_edge.thread.i ], [ %.3447, %._crit_edge.i ] ; 3 uses
  %.04481137 = phi i32 [ %.04481138, %._crit_edge.thread.i ], [ %.0448, %._crit_edge.i ] ; 3 uses
  %.34731132 = phi i32 [ %.34731133, %._crit_edge.thread.i ], [ %.3473, %._crit_edge.i ] ; 3 uses
  %.in.i = phi ptr [ %i.mz, %._crit_edge.thread.i ], [ %i.nd, %._crit_edge.i ]
  %.028.lcssa76.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.nb, %._crit_edge.i ] ; 4 uses
  %i.nf = load ptr, ptr %.in.i, align 8, !tbaa !39 ; 3 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 11960
  %i.nh = sext i32 %.028.lcssa76.i to i64
  %i.ni = getelementptr [8 x i8], ptr %i.ng, i64 %i.nh ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !41 ; 3 uses
  %.not.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !43
  store ptr %i.nk, ptr %i.ni, align 8, !tbaa !41
  br label %bb.br

bb.bm:                                            ; preds = %._crit_edge.i
  %i.nl = shl nuw i32 1, %i.nb                    ; 2 uses
  %i.nm = add i32 %i.nl, -1
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 2
  %i.np = add nuw nsw i64 %i.no, 36
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk
  %i.nq = shl nuw nsw i32 1, %.028.lcssa76.i      ; 3 uses
  %i.nr = add nsw i32 %i.nq, -1
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = shl nuw nsw i64 %i.ns, 2
  %i.nu = add nuw nsw i64 %i.nt, 36               ; 2 uses
  %i.nv = lshr i64 %i.nu, 3                       ; 2 uses
  %i.nw = getelementptr i8, ptr %i.nf, i64 14328  ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !45 ; 3 uses
  %i.ny = getelementptr i8, ptr %i.nf, i64 12024
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = ashr exact i64 %i.ob, 3
  %i.od = add nsw i64 %i.oc, %i.nv
  %i.oe = icmp slt i64 %i.od, 289
  br i1 %i.oe, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.of = getelementptr [8 x i8], ptr %i.nx, i64 %i.nv
  store ptr %i.of, ptr %i.nw, align 8, !tbaa !45
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.44201146 = phi i32 [ %.44201147, %bb.bn ], [ %.0416.lcssa1120, %bb.bm ]
  %.34471141 = phi i32 [ %.34471142, %bb.bn ], [ %.3447, %bb.bm ]
  %.04481136 = phi i32 [ %.04481137, %bb.bn ], [ %.0448, %bb.bm ]
  %.34731131 = phi i32 [ %.34731132, %bb.bn ], [ %.3473, %bb.bm ]
  %.028.lcssa75.i = phi i32 [ %.028.lcssa76.i, %bb.bn ], [ %i.nb, %bb.bm ]
  %i.og = phi i64 [ %i.nu, %bb.bn ], [ %i.np, %bb.bm ]
  %i.oh = phi i32 [ %i.nq, %bb.bn ], [ %i.nl, %bb.bm ]
  %i.oi = and i64 %i.og, 34359738360
  %i.oj = tail call ptr @PyMem_Malloc(i64 noundef %i.oi) #11 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %s2b.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.44201145 = phi i32 [ %.44201147, %bb.bo ], [ %.44201146, %bb.bp ]
  %.34471140 = phi i32 [ %.34471142, %bb.bo ], [ %.34471141, %bb.bp ]
  %.04481135 = phi i32 [ %.04481137, %bb.bo ], [ %.04481136, %bb.bp ]
  %.34731130 = phi i32 [ %.34731132, %bb.bo ], [ %.34731131, %bb.bp ]
  %.028.lcssa74.i = phi i32 [ %.028.lcssa76.i, %bb.bo ], [ %.028.lcssa75.i, %bb.bp ]
  %i.ol = phi i32 [ %i.nq, %bb.bo ], [ %i.oh, %bb.bp ]
  %.024.i.i = phi ptr [ %i.nx, %bb.bo ], [ %i.oj, %bb.bp ] ; 3 uses
  %i.om = getelementptr i8, ptr %.024.i.i, i64 8
  store i32 %.028.lcssa74.i, ptr %i.om, align 8, !tbaa !134
  %i.on = getelementptr i8, ptr %.024.i.i, i64 12
  store i32 %i.ol, ptr %i.on, align 4, !tbaa !135
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.44201144 = phi i32 [ %.44201147, %bb.bl ], [ %.44201145, %bb.bq ]
  %.34471139 = phi i32 [ %.34471142, %bb.bl ], [ %.34471140, %bb.bq ] ; 3 uses
  %.04481134 = phi i32 [ %.04481137, %bb.bl ], [ %.04481135, %bb.bq ] ; 9 uses
  %.34731129 = phi i32 [ %.34731132, %bb.bl ], [ %.34731130, %bb.bq ] ; 3 uses
  %.1.i.i = phi ptr [ %i.nj, %bb.bl ], [ %.024.i.i, %bb.bq ] ; 6 uses
  %i.oo = getelementptr i8, ptr %.1.i.i, i64 20
  %i.op = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.op, align 8, !tbaa !136
  %i.oq = getelementptr i8, ptr %.1.i.i, i64 24
  store i32 %.44201144, ptr %i.oq, align 8, !tbaa !7
  store i32 1, ptr %i.oo, align 4, !tbaa !137
  %i.or = icmp slt i32 %.04481134, 10
  br i1 %i.or, label %s2b.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.os = getelementptr i8, ptr %.1430, i64 9     ; 2 uses
  %i.ot = icmp sgt i32 %.34471139, 9
  br i1 %i.ot, label %.lr.ph49.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bt, %bb.bs
  %.032.lcssa.i = phi ptr [ %i.os, %bb.bs ], [ %i.pa, %bb.bt ]
  %.030.lcssa.i = phi ptr [ %.1.i.i, %bb.bs ], [ %i.oy, %bb.bt ] ; 2 uses
  %.029.lcssa.i = phi i32 [ 9, %bb.bs ], [ %.34471139, %bb.bt ] ; 2 uses
  %i.ou = icmp slt i32 %.029.lcssa.i, %.04481134
  br i1 %i.ou, label %.lr.ph57.i, label %s2b.exit

.lr.ph49.i:                                       ; preds = %bb.bs, %bb.bt
  %.02947.i = phi i32 [ %i.pb, %bb.bt ], [ 9, %bb.bs ]
  %.03046.i = phi ptr [ %i.oy, %bb.bt ], [ %.1.i.i, %bb.bs ]
  %.03245.i = phi ptr [ %i.pa, %bb.bt ], [ %i.os, %bb.bs ] ; 2 uses
  %i.ov = load i8, ptr %.03245.i, align 1, !tbaa !11
  %i.ow = sext i8 %i.ov to i32
  %i.ox = add nsw i32 %i.ow, -48
  %i.oy = tail call fastcc ptr @multadd(ptr noundef nonnull %.03046.i, i32 noundef 10, i32 noundef %i.ox) ; 3 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %s2b.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph49.i
  %i.pa = getelementptr i8, ptr %.03245.i, i64 1  ; 2 uses
  %i.pb = add nuw nsw i32 %.02947.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.pb, %.34471139
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph49.i, !llvm.loop !138

bb.bu:                                            ; preds = %.lr.ph57.i
  %i.pc = add nuw nsw i32 %.155.i, 1              ; 2 uses
  %exitcond65.not.i = icmp eq i32 %i.pc, %.04481134
  br i1 %exitcond65.not.i, label %s2b.exit, label %.lr.ph57.i, !llvm.loop !139

.lr.ph57.i:                                       ; preds = %.preheader.i, %bb.bu
  %.032.pn.pn.i = phi ptr [ %.13356.i, %bb.bu ], [ %.032.lcssa.i, %.preheader.i ]
  %.155.i = phi i32 [ %i.pc, %bb.bu ], [ %.029.lcssa.i, %.preheader.i ]
  %.13154.i = phi ptr [ %i.pg, %bb.bu ], [ %.030.lcssa.i, %.preheader.i ]
  %.13356.i = getelementptr i8, ptr %.032.pn.pn.i, i64 1 ; 2 uses
  %i.pd = load i8, ptr %.13356.i, align 1, !tbaa !11
  %i.pe = sext i8 %i.pd to i32
  %i.pf = add nsw i32 %i.pe, -48
  %i.pg = tail call fastcc ptr @multadd(ptr noundef nonnull %.13154.i, i32 noundef 10, i32 noundef %i.pf) ; 3 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %s2b.exit.thread, label %bb.bu

s2b.exit:                                         ; preds = %bb.bu, %bb.br, %.preheader.i
  %.027.i = phi ptr [ %.030.lcssa.i, %.preheader.i ], [ %.1.i.i, %bb.br ], [ %i.pg, %bb.bu ] ; 25 uses
  %i.pi = getelementptr i8, ptr %.027.i, i64 8
  %i.pj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 11 uses
  %i.pk = getelementptr i8, ptr %.027.i, i64 16
  %i.pl = getelementptr i8, ptr %.027.i, i64 20
  %i.pm = icmp sgt i32 %.34731129, -1             ; 2 uses
  %i.pn = sub i32 0, %.34731129
  %.0465 = select i1 %i.pm, i32 %.34731129, i32 0 ; 4 uses
  %.0441 = select i1 %i.pm, i32 0, i32 %i.pn      ; 4 uses
  %i.po = icmp sgt i32 %.0441, 0
  %i.pp = and i32 %.0441, 3                       ; 2 uses
  %.not.i588 = icmp eq i32 %i.pp, 0
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 -4
  %i.pt = lshr i32 %.0441, 2                      ; 2 uses
  %.not26.i = icmp eq i32 %i.pt, 0
  %i.pu = icmp sgt i32 %.0465, 0
  %i.pv = and i32 %.0465, 3                       ; 2 uses
  %.not.i592 = icmp eq i32 %i.pv, 0
  %i.pw = zext nneg i32 %i.pv to i64
end_hunk_0
