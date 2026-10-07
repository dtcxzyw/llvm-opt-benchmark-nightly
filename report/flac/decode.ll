Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/decode?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@write_callback:bb.a
  br i1 %.not648, label %._crit_edge616, label %.lr.ph615

.lr.ph615:                                        ; preds = %.preheader520
  %i.ow = zext i32 %.8433618 to i64               ; 2 uses
  br i1 %i.ob, label %.epil.preheader1004, label %.lr.ph615.new

.lr.ph615.new:                                    ; preds = %.lr.ph615, %.lr.ph615.new
  %indvars.iv815 = phi i64 [ %indvars.iv.next816.3, %.lr.ph615.new ], [ %i.ow, %.lr.ph615 ] ; 5 uses
  %indvars.iv813 = phi i64 [ %indvars.iv.next814.3, %.lr.ph615.new ], [ 0, %.lr.ph615 ] ; 5 uses
  %niter1011 = phi i64 [ %niter1011.next.3, %.lr.ph615.new ], [ 0, %.lr.ph615 ]
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv813
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !142
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv822
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !14
  %i.pb = trunc i32 %i.pa to i16
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv815
  store i16 %i.pb, ptr %i.pc, align 2, !tbaa !13
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv813
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !142
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv822
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !14
  %i.pi = trunc i32 %i.ph to i16
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv815
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  store i16 %i.pi, ptr %i.pk, align 2, !tbaa !13
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv813
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !142
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv822
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !14
  %i.pq = trunc i32 %i.pp to i16
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv815
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store i16 %i.pq, ptr %i.ps, align 2, !tbaa !13
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv813
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !142
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv822
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !14
  %i.py = trunc i32 %i.px to i16
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv815
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 6
  store i16 %i.py, ptr %i.qa, align 2, !tbaa !13
  %indvars.iv.next814.3 = add nuw nsw i64 %indvars.iv813, 4 ; 2 uses
  %indvars.iv.next816.3 = add nuw nsw i64 %indvars.iv815, 4 ; 3 uses
  %niter1011.next.3 = add i64 %niter1011, 4       ; 2 uses
  %niter1011.ncmp.3 = icmp eq i64 %niter1011.next.3, %unroll_iter1010
  br i1 %niter1011.ncmp.3, label %._crit_edge616.loopexit.unr-lcssa, label %.lr.ph615.new, !llvm.loop !102

._crit_edge616.loopexit.unr-lcssa:                ; preds = %.lr.ph615.new
  br i1 %lcmp.mod1007.not, label %._crit_edge616.loopexit, label %.epil.preheader1004

.epil.preheader1004:                              ; preds = %._crit_edge616.loopexit.unr-lcssa, %.lr.ph615
  %indvars.iv815.epil.init = phi i64 [ %i.ow, %.lr.ph615 ], [ %indvars.iv.next816.3, %._crit_edge616.loopexit.unr-lcssa ]
  %indvars.iv813.epil.init = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next814.3, %._crit_edge616.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1009)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader1004
  %indvars.iv815.epil = phi i64 [ %indvars.iv815.epil.init, %.epil.preheader1004 ], [ %indvars.iv.next816.epil, %bb.bs ] ; 2 uses
  %indvars.iv813.epil = phi i64 [ %indvars.iv813.epil.init, %.epil.preheader1004 ], [ %indvars.iv.next814.epil, %bb.bs ] ; 2 uses
  %epil.iter1006 = phi i64 [ 0, %.epil.preheader1004 ], [ %epil.iter1006.next, %bb.bs ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv813.epil
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !142
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv822
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !14
  %i.qf = trunc i32 %i.qe to i16
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv815.epil
  store i16 %i.qf, ptr %i.qg, align 2, !tbaa !13
  %indvars.iv.next814.epil = add nuw nsw i64 %indvars.iv813.epil, 1
  %indvars.iv.next816.epil = add nuw nsw i64 %indvars.iv815.epil, 1 ; 2 uses
  %epil.iter1006.next = add i64 %epil.iter1006, 1 ; 2 uses
  %epil.iter1006.cmp.not = icmp eq i64 %epil.iter1006.next, %xtraiter1005
  br i1 %epil.iter1006.cmp.not, label %._crit_edge616.loopexit, label %bb.bs, !llvm.loop !103

._crit_edge616.loopexit:                          ; preds = %bb.bs, %._crit_edge616.loopexit.unr-lcssa
  %indvars.iv.next816.lcssa = phi i64 [ %indvars.iv.next816.3, %._crit_edge616.loopexit.unr-lcssa ], [ %indvars.iv.next816.epil, %bb.bs ]
  %i.qh = trunc nuw i64 %indvars.iv.next816.lcssa to i32
  br label %._crit_edge616

._crit_edge616:                                   ; preds = %._crit_edge616.loopexit, %.preheader520
  %.9.lcssa = phi i32 [ %.8433618, %.preheader520 ], [ %i.qh, %._crit_edge616.loopexit ] ; 2 uses
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 1 ; 2 uses
  %exitcond827.not = icmp eq i64 %indvars.iv.next823, %i.ej
  br i1 %exitcond827.not, label %.loopexit515, label %.preheader520, !llvm.loop !104

.loopexit515.loopexit652.unr-lcssa:               ; preds = %bb.bm
  %lcmp.mod1015.not = icmp eq i64 %xtraiter1013, 0
  br i1 %lcmp.mod1015.not, label %.loopexit515.loopexit652, label %.epil.preheader1012

.epil.preheader1012:                              ; preds = %.loopexit515.loopexit652.unr-lcssa, %.preheader518
  %indvars.iv830.epil.init = phi i64 [ 0, %.preheader518 ], [ %indvars.iv.next831.1, %.loopexit515.loopexit652.unr-lcssa ] ; 2 uses
  %indvars.iv828.epil.init = phi i64 [ 0, %.preheader518 ], [ %indvars.iv.next829.1, %.loopexit515.loopexit652.unr-lcssa ] ; 3 uses
  %lcmp.mod1017 = trunc i32 %.1448 to i1
  call void @llvm.assume(i1 %lcmp.mod1017)
  %i.qi = load ptr, ptr %2, align 8, !tbaa !142
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %indvars.iv830.epil.init
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !14
  %i.ql = trunc i32 %i.qk to i16
  %i.qm = xor i16 %i.ql, -32768
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv828.epil.init
  store i16 %i.qm, ptr %i.qn, align 4, !tbaa !13
  %i.qo = load ptr, ptr %i.kc, align 8, !tbaa !142
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.qo, i64 %indvars.iv830.epil.init
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !14
  %i.qr = trunc i32 %i.qq to i16
  %i.qs = xor i16 %i.qr, -32768
  %indvars.iv.next829.epil = add nuw nsw i64 %indvars.iv828.epil.init, 2
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv828.epil.init
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  store i16 %i.qs, ptr %i.qu, align 2, !tbaa !13
  br label %.loopexit515.loopexit652

.loopexit515.loopexit652:                         ; preds = %.loopexit515.loopexit652.unr-lcssa, %.epil.preheader1012
  %indvars.iv.next829.lcssa = phi i64 [ %indvars.iv.next829.1, %.loopexit515.loopexit652.unr-lcssa ], [ %indvars.iv.next829.epil, %.epil.preheader1012 ]
  %i.qv = trunc nuw i64 %indvars.iv.next829.lcssa to i32
  br label %.loopexit515

.loopexit515.loopexit655.unr-lcssa:               ; preds = %bb.bq
  %lcmp.mod993.not = icmp eq i64 %xtraiter991, 0
  br i1 %lcmp.mod993.not, label %.loopexit515.loopexit655, label %.epil.preheader990

.epil.preheader990:                               ; preds = %.loopexit515.loopexit655.unr-lcssa, %.preheader525
  %indvars.iv797.epil.init = phi i64 [ 0, %.preheader525 ], [ %indvars.iv.next798.1, %.loopexit515.loopexit655.unr-lcssa ] ; 2 uses
  %indvars.iv795.epil.init = phi i64 [ 0, %.preheader525 ], [ %indvars.iv.next796.1, %.loopexit515.loopexit655.unr-lcssa ] ; 3 uses
  %lcmp.mod995 = trunc i32 %.1448 to i1
  call void @llvm.assume(i1 %lcmp.mod995)
  %i.qw = load ptr, ptr %2, align 8, !tbaa !142
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv797.epil.init
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !14
  %i.qz = trunc i32 %i.qy to i16
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv795.epil.init
  store i16 %i.qz, ptr %i.ra, align 4, !tbaa !13
  %i.rb = load ptr, ptr %i.nc, align 8, !tbaa !142
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv797.epil.init
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !14
  %i.re = trunc i32 %i.rd to i16
  %indvars.iv.next796.epil = add nuw nsw i64 %indvars.iv795.epil.init, 2
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv795.epil.init
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  store i16 %i.re, ptr %i.rg, align 2, !tbaa !13
  br label %.loopexit515.loopexit655

.loopexit515.loopexit655:                         ; preds = %.loopexit515.loopexit655.unr-lcssa, %.epil.preheader990
  %indvars.iv.next796.lcssa = phi i64 [ %indvars.iv.next796.1, %.loopexit515.loopexit655.unr-lcssa ], [ %indvars.iv.next796.epil, %.epil.preheader990 ]
  %i.rh = trunc nuw i64 %indvars.iv.next796.lcssa to i32
  br label %.loopexit515

.loopexit515.loopexit918.unr-lcssa:               ; preds = %.preheader516
  %lcmp.mod1022.not = icmp eq i64 %xtraiter1020, 0
  br i1 %lcmp.mod1022.not, label %.loopexit515, label %.preheader516.epil.preheader

.preheader516.epil.preheader:                     ; preds = %.loopexit515.loopexit918.unr-lcssa, %.preheader516.preheader
  %indvars.iv838.epil.init = phi i64 [ 0, %.preheader516.preheader ], [ %indvars.iv.next839.3, %.loopexit515.loopexit918.unr-lcssa ]
  %lcmp.mod1023 = icmp ne i64 %xtraiter1020, 0
  call void @llvm.assume(i1 %lcmp.mod1023)
  br label %.preheader516.epil

.preheader516.epil:                               ; preds = %.preheader516.epil, %.preheader516.epil.preheader
  %indvars.iv838.epil = phi i64 [ %indvars.iv.next839.epil, %.preheader516.epil ], [ %indvars.iv838.epil.init, %.preheader516.epil.preheader ] ; 3 uses
  %epil.iter1021 = phi i64 [ %epil.iter1021.next, %.preheader516.epil ], [ 0, %.preheader516.epil.preheader ]
  %i.ri = load ptr, ptr %2, align 8, !tbaa !142
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv838.epil
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !14
  %i.rl = trunc i32 %i.rk to i16
  %i.rm = xor i16 %i.rl, -32768
  %indvars.iv.next839.epil = add nuw nsw i64 %indvars.iv838.epil, 1
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv838.epil
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !13
  %epil.iter1021.next = add i64 %epil.iter1021, 1 ; 2 uses
  %epil.iter1021.cmp.not = icmp eq i64 %epil.iter1021.next, %xtraiter1020
  br i1 %epil.iter1021.cmp.not, label %.loopexit515, label %.preheader516.epil, !llvm.loop !105

.loopexit515.loopexit920.unr-lcssa:               ; preds = %.preheader523
  %lcmp.mod1000.not = icmp eq i64 %xtraiter998, 0
  br i1 %lcmp.mod1000.not, label %.loopexit515, label %.preheader523.epil.preheader

.preheader523.epil.preheader:                     ; preds = %.loopexit515.loopexit920.unr-lcssa, %.preheader523.preheader
  %indvars.iv805.epil.init = phi i64 [ 0, %.preheader523.preheader ], [ %indvars.iv.next806.3, %.loopexit515.loopexit920.unr-lcssa ]
  %lcmp.mod1001 = icmp ne i64 %xtraiter998, 0
  call void @llvm.assume(i1 %lcmp.mod1001)
  br label %.preheader523.epil

.preheader523.epil:                               ; preds = %.preheader523.epil, %.preheader523.epil.preheader
  %indvars.iv805.epil = phi i64 [ %indvars.iv.next806.epil, %.preheader523.epil ], [ %indvars.iv805.epil.init, %.preheader523.epil.preheader ] ; 3 uses
  %epil.iter999 = phi i64 [ %epil.iter999.next, %.preheader523.epil ], [ 0, %.preheader523.epil.preheader ]
  %i.ro = load ptr, ptr %2, align 8, !tbaa !142
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv805.epil
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !14
  %i.rr = trunc i32 %i.rq to i16
  %indvars.iv.next806.epil = add nuw nsw i64 %indvars.iv805.epil, 1
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr @write_callback.ubuf, i64 %indvars.iv805.epil
  store i16 %i.rr, ptr %i.rs, align 2, !tbaa !13
  %epil.iter999.next = add i64 %epil.iter999, 1   ; 2 uses
  %epil.iter999.cmp.not = icmp eq i64 %epil.iter999.next, %xtraiter998
  br i1 %epil.iter999.cmp.not, label %.loopexit515, label %.preheader523.epil, !llvm.loop !106

.loopexit515:                                     ; preds = %.loopexit515.loopexit920.unr-lcssa, %.preheader523.epil, %._crit_edge616, %.loopexit515.loopexit918.unr-lcssa, %.preheader516.epil, %._crit_edge626, %.loopexit515.loopexit655, %.loopexit515.loopexit652
  %.10 = phi i32 [ %.9.lcssa, %._crit_edge616 ], [ %.1448, %.loopexit515.loopexit918.unr-lcssa ], [ %i.rh, %.loopexit515.loopexit655 ], [ %i.qv, %.loopexit515.loopexit652 ], [ %.5430.lcssa, %._crit_edge626 ], [ %.1448, %.preheader516.epil ], [ %.1448, %.preheader523.epil ], [ %.1448, %.loopexit515.loopexit920.unr-lcssa ]
  %i.rt = shl i32 %.10, 1                         ; 3 uses
  %.not650 = icmp ne i32 %i.rt, 0
  %or.cond919.not = select i1 %i.w, i1 %.not650, i1 false
  br i1 %or.cond919.not, label %.lr.ph632.preheader, label %.loopexit

.lr.ph632.preheader:                              ; preds = %.loopexit515
  %i.ru = zext i32 %i.rt to i64
  %i.rv = add nsw i64 %i.ru, -2                   ; 2 uses
  %i.rw = lshr exact i64 %i.rv, 1
  %i.rx = add nuw i64 %i.rw, 1                    ; 2 uses
  %xtraiter1034 = and i64 %i.rx, 3                ; 3 uses
  %i.ry = icmp ult i64 %i.rv, 6
  br i1 %i.ry, label %.lr.ph632.epil.preheader, label %.lr.ph632.preheader.new

.lr.ph632.preheader.new:                          ; preds = %.lr.ph632.preheader
  %unroll_iter1038 = and i64 %i.rx, -4
  br label %.lr.ph632

.lr.ph632:                                        ; preds = %.lr.ph632, %.lr.ph632.preheader.new
  %indvars.iv861 = phi i64 [ 0, %.lr.ph632.preheader.new ], [ %indvars.iv.next862.3, %.lr.ph632 ] ; 6 uses
  %niter1039 = phi i64 [ 0, %.lr.ph632.preheader.new ], [ %niter1039.next.3, %.lr.ph632 ]
  %i.rz = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv861 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 4, !tbaa !13
  %i.sb = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv861
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 1 ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !13
  store i8 %i.sd, ptr %i.rz, align 4, !tbaa !13
  store i8 %i.sa, ptr %i.sc, align 1, !tbaa !13
  %indvars.iv.next862 = or disjoint i64 %indvars.iv861, 2 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next862 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 2, !tbaa !13
  %i.sg = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next862
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 1 ; 2 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !13
  store i8 %i.si, ptr %i.se, align 2, !tbaa !13
  store i8 %i.sf, ptr %i.sh, align 1, !tbaa !13
  %indvars.iv.next862.1 = or disjoint i64 %indvars.iv861, 4 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next862.1 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 4, !tbaa !13
  %i.sl = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next862.1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1 ; 2 uses
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !13
  store i8 %i.sn, ptr %i.sj, align 4, !tbaa !13
  store i8 %i.sk, ptr %i.sm, align 1, !tbaa !13
  %indvars.iv.next862.2 = or disjoint i64 %indvars.iv861, 6 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next862.2 ; 2 uses
  %i.sp = load i8, ptr %i.so, align 2, !tbaa !13
  %i.sq = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv.next862.2
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 1 ; 2 uses
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !13
  store i8 %i.ss, ptr %i.so, align 2, !tbaa !13
  store i8 %i.sp, ptr %i.sr, align 1, !tbaa !13
  %indvars.iv.next862.3 = add nuw nsw i64 %indvars.iv861, 8 ; 2 uses
  %niter1039.next.3 = add i64 %niter1039, 4       ; 2 uses
  %niter1039.ncmp.3.not = icmp eq i64 %niter1039.next.3, %unroll_iter1038
  br i1 %niter1039.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph632, !llvm.loop !107

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph632
  %lcmp.mod1036.not = icmp eq i64 %xtraiter1034, 0
  br i1 %lcmp.mod1036.not, label %.loopexit, label %.lr.ph632.epil.preheader

.lr.ph632.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph632.preheader
  %indvars.iv861.epil.init = phi i64 [ 0, %.lr.ph632.preheader ], [ %indvars.iv.next862.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1037 = icmp ne i64 %xtraiter1034, 0
  call void @llvm.assume(i1 %lcmp.mod1037)
  br label %.lr.ph632.epil

.lr.ph632.epil:                                   ; preds = %.lr.ph632.epil, %.lr.ph632.epil.preheader
  %indvars.iv861.epil = phi i64 [ %indvars.iv861.epil.init, %.lr.ph632.epil.preheader ], [ %indvars.iv.next862.epil, %.lr.ph632.epil ] ; 3 uses
  %epil.iter1035 = phi i64 [ 0, %.lr.ph632.epil.preheader ], [ %epil.iter1035.next, %.lr.ph632.epil ]
  %i.st = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv861.epil ; 2 uses
  %i.su = load i8, ptr %i.st, align 2, !tbaa !13
  %i.sv = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv861.epil
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !13
  store i8 %i.sx, ptr %i.st, align 2, !tbaa !13
  store i8 %i.su, ptr %i.sw, align 1, !tbaa !13
  %indvars.iv.next862.epil = add nuw nsw i64 %indvars.iv861.epil, 2
  %epil.iter1035.next = add i64 %epil.iter1035, 1 ; 2 uses
  %epil.iter1035.cmp.not = icmp eq i64 %epil.iter1035.next, %xtraiter1034
  br i1 %epil.iter1035.cmp.not, label %.loopexit, label %.lr.ph632.epil, !llvm.loop !108

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph632.epil, %.loopexit515
  %i.sy = zext i32 %i.rt to i64
  br label %.loopexit538

bb.bt:                                            ; preds = %bb.bj
  %.not644 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader531, label %.preheader534

.preheader534:                                    ; preds = %bb.bt
  br i1 %.not644, label %.loopexit532, label %.preheader533.us.preheader

.preheader533.us.preheader:                       ; preds = %.preheader534
  %wide.trip.count755 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter963 = and i64 %wide.trip.count755, 3   ; 3 uses
  %i.sz = icmp ult i32 %i.g, 4
  %unroll_iter968 = and i64 %wide.trip.count755, 4294967292
  %lcmp.mod965.not = icmp eq i64 %xtraiter963, 0
  %lcmp.mod967 = icmp ne i64 %xtraiter963, 0
  br label %.preheader533.us

.preheader533.us:                                 ; preds = %.preheader533.us.preheader, %._crit_edge587.us
  %indvars.iv757 = phi i64 [ 0, %.preheader533.us.preheader ], [ %indvars.iv.next758, %._crit_edge587.us ] ; 6 uses
  %.13589.us = phi i64 [ 0, %.preheader533.us.preheader ], [ %indvars.iv.next751.lcssa, %._crit_edge587.us ] ; 2 uses
  br i1 %i.sz, label %.epil.preheader962, label %.preheader533.us.new

.preheader533.us.new:                             ; preds = %.preheader533.us, %.preheader533.us.new
  %indvars.iv750 = phi i64 [ %indvars.iv.next751.3, %.preheader533.us.new ], [ %.13589.us, %.preheader533.us ] ; 5 uses
  %indvars.iv748 = phi i64 [ %indvars.iv.next749.3, %.preheader533.us.new ], [ 0, %.preheader533.us ] ; 5 uses
  %niter969 = phi i64 [ %niter969.next.3, %.preheader533.us.new ], [ 0, %.preheader533.us ]
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !142
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv757
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !14
  %i.te = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  store i32 %i.td, ptr %i.te, align 4, !tbaa !13
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !142
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %indvars.iv757
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !14
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  store i32 %i.tj, ptr %i.tl, align 4, !tbaa !13
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !142
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv757
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !14
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 %i.tq, ptr %i.ts, align 4, !tbaa !13
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !142
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %indvars.iv757
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !14
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 12
  store i32 %i.tx, ptr %i.tz, align 4, !tbaa !13
  %indvars.iv.next749.3 = add nuw nsw i64 %indvars.iv748, 4 ; 2 uses
  %indvars.iv.next751.3 = add nuw nsw i64 %indvars.iv750, 4 ; 3 uses
  %niter969.next.3 = add i64 %niter969, 4         ; 2 uses
  %niter969.ncmp.3 = icmp eq i64 %niter969.next.3, %unroll_iter968
  br i1 %niter969.ncmp.3, label %._crit_edge587.us.unr-lcssa, label %.preheader533.us.new, !llvm.loop !109

._crit_edge587.us.unr-lcssa:                      ; preds = %.preheader533.us.new
  br i1 %lcmp.mod965.not, label %._crit_edge587.us, label %.epil.preheader962

.epil.preheader962:                               ; preds = %._crit_edge587.us.unr-lcssa, %.preheader533.us
  %indvars.iv750.epil.init = phi i64 [ %.13589.us, %.preheader533.us ], [ %indvars.iv.next751.3, %._crit_edge587.us.unr-lcssa ]
  %indvars.iv748.epil.init = phi i64 [ 0, %.preheader533.us ], [ %indvars.iv.next749.3, %._crit_edge587.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod967)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.epil.preheader962
  %indvars.iv750.epil = phi i64 [ %indvars.iv750.epil.init, %.epil.preheader962 ], [ %indvars.iv.next751.epil, %bb.bu ] ; 2 uses
  %indvars.iv748.epil = phi i64 [ %indvars.iv748.epil.init, %.epil.preheader962 ], [ %indvars.iv.next749.epil, %bb.bu ] ; 2 uses
  %epil.iter964 = phi i64 [ 0, %.epil.preheader962 ], [ %epil.iter964.next, %bb.bu ]
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv748.epil
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !142
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv757
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !14
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv750.epil
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !13
  %indvars.iv.next749.epil = add nuw nsw i64 %indvars.iv748.epil, 1
  %indvars.iv.next751.epil = add nuw nsw i64 %indvars.iv750.epil, 1 ; 2 uses
  %epil.iter964.next = add i64 %epil.iter964, 1   ; 2 uses
  %epil.iter964.cmp.not = icmp eq i64 %epil.iter964.next, %xtraiter963
  br i1 %epil.iter964.cmp.not, label %._crit_edge587.us, label %bb.bu, !llvm.loop !110

._crit_edge587.us:                                ; preds = %bb.bu, %._crit_edge587.us.unr-lcssa
  %indvars.iv.next751.lcssa = phi i64 [ %indvars.iv.next751.3, %._crit_edge587.us.unr-lcssa ], [ %indvars.iv.next751.epil, %bb.bu ] ; 2 uses
  %indvars.iv.next758 = add nuw nsw i64 %indvars.iv757, 1 ; 2 uses
  %exitcond762.not = icmp eq i64 %indvars.iv.next758, %i.ej
  br i1 %exitcond762.not, label %.loopexit532.loopexit659, label %.preheader533.us, !llvm.loop !111

.preheader531:                                    ; preds = %bb.bt
  br i1 %.not644, label %.loopexit532, label %.preheader530.us.preheader

.preheader530.us.preheader:                       ; preds = %.preheader531
  %wide.trip.count770 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter971 = and i64 %wide.trip.count770, 1
  %i.uf = icmp eq i32 %i.g, 1
  %unroll_iter976 = and i64 %wide.trip.count770, 4294967294
  %lcmp.mod973.not = icmp eq i64 %xtraiter971, 0
  %lcmp.mod975 = trunc i32 %i.g to i1
  br label %.preheader530.us

.preheader530.us:                                 ; preds = %.preheader530.us.preheader, %._crit_edge595.us
  %indvars.iv772 = phi i64 [ 0, %.preheader530.us.preheader ], [ %indvars.iv.next773, %._crit_edge595.us ] ; 4 uses
  %.11597.us = phi i64 [ 0, %.preheader530.us.preheader ], [ %indvars.iv.next766.lcssa, %._crit_edge595.us ] ; 2 uses
  br i1 %i.uf, label %.epil.preheader970, label %.preheader530.us.new

.preheader530.us.new:                             ; preds = %.preheader530.us, %.preheader530.us.new
  %indvars.iv765 = phi i64 [ %indvars.iv.next766.1, %.preheader530.us.new ], [ %.11597.us, %.preheader530.us ] ; 3 uses
  %indvars.iv763 = phi i64 [ %indvars.iv.next764.1, %.preheader530.us.new ], [ 0, %.preheader530.us ] ; 3 uses
  %niter977 = phi i64 [ %niter977.next.1, %.preheader530.us.new ], [ 0, %.preheader530.us ]
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv763
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !142
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv772
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !14
  %i.uk = add nsw i32 %i.uj, 8388608
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv765
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !13
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv763
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !142
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv772
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !14
  %i.ur = add nsw i32 %i.uq, 8388608
  %i.us = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv765
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  store i32 %i.ur, ptr %i.ut, align 4, !tbaa !13
  %indvars.iv.next764.1 = add nuw nsw i64 %indvars.iv763, 2 ; 2 uses
  %indvars.iv.next766.1 = add nuw nsw i64 %indvars.iv765, 2 ; 3 uses
  %niter977.next.1 = add i64 %niter977, 2         ; 2 uses
  %niter977.ncmp.1 = icmp eq i64 %niter977.next.1, %unroll_iter976
  br i1 %niter977.ncmp.1, label %._crit_edge595.us.unr-lcssa, label %.preheader530.us.new, !llvm.loop !112

._crit_edge595.us.unr-lcssa:                      ; preds = %.preheader530.us.new
  br i1 %lcmp.mod973.not, label %._crit_edge595.us, label %.epil.preheader970

.epil.preheader970:                               ; preds = %._crit_edge595.us.unr-lcssa, %.preheader530.us
  %indvars.iv765.epil.init = phi i64 [ %.11597.us, %.preheader530.us ], [ %indvars.iv.next766.1, %._crit_edge595.us.unr-lcssa ] ; 2 uses
  %indvars.iv763.epil.init = phi i64 [ 0, %.preheader530.us ], [ %indvars.iv.next764.1, %._crit_edge595.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod975)
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv763.epil.init
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !142
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv772
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !14
  %i.uy = add nsw i32 %i.ux, 8388608
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv765.epil.init
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !13
  %indvars.iv.next766.epil = add nuw nsw i64 %indvars.iv765.epil.init, 1
  br label %._crit_edge595.us

._crit_edge595.us:                                ; preds = %._crit_edge595.us.unr-lcssa, %.epil.preheader970
  %indvars.iv.next766.lcssa = phi i64 [ %indvars.iv.next766.1, %._crit_edge595.us.unr-lcssa ], [ %indvars.iv.next766.epil, %.epil.preheader970 ] ; 2 uses
  %indvars.iv.next773 = add nuw nsw i64 %indvars.iv772, 1 ; 2 uses
  %exitcond777.not = icmp eq i64 %indvars.iv.next773, %i.ej
  br i1 %exitcond777.not, label %.loopexit532.loopexit657, label %.preheader530.us, !llvm.loop !113

.loopexit532.loopexit657:                         ; preds = %._crit_edge595.us
  %i.va = trunc nuw i64 %indvars.iv.next766.lcssa to i32
  br label %.loopexit532

.loopexit532.loopexit659:                         ; preds = %._crit_edge587.us
  %i.vb = trunc nuw i64 %indvars.iv.next751.lcssa to i32
  br label %.loopexit532

.loopexit532:                                     ; preds = %.preheader531, %.preheader534, %.loopexit532.loopexit659, %.loopexit532.loopexit657
  %.15 = phi i32 [ %i.va, %.loopexit532.loopexit657 ], [ 0, %.preheader534 ], [ %i.vb, %.loopexit532.loopexit659 ], [ 0, %.preheader531 ] ; 2 uses
  %i.vc = shl i32 %.15, 2                         ; 4 uses
  %.not646 = icmp eq i32 %i.vc, 0                 ; 2 uses
  br i1 %i.w, label %bb.bv, label %.critedge506

bb.bv:                                            ; preds = %.loopexit532
  br i1 %.not646, label %.loopexit528, label %.lr.ph605.preheader

.lr.ph605.preheader:                              ; preds = %bb.bv
  %i.vd = zext i32 %i.vc to i64
  %i.ve = add nsw i64 %i.vd, -4                   ; 3 uses
  %i.vf = lshr exact i64 %i.ve, 2
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 2 uses
  %i.vh = icmp eq i64 %i.ve, 0
  br i1 %i.vh, label %.lr.ph605.epil.preheader, label %.lr.ph605.preheader.new

.lr.ph605.preheader.new:                          ; preds = %.lr.ph605.preheader
  %unroll_iter988 = and i64 %i.vg, 9223372036854775806
  br label %.lr.ph605

.lr.ph608.preheader.unr-lcssa:                    ; preds = %.lr.ph605
  %i.vi = and i64 %i.ve, 4
  %lcmp.mod986.not.not = icmp eq i64 %i.vi, 0
  br i1 %lcmp.mod986.not.not, label %.lr.ph605.epil.preheader, label %.lr.ph608.preheader

.lr.ph605.epil.preheader:                         ; preds = %.lr.ph608.preheader.unr-lcssa, %.lr.ph605.preheader
  %indvars.iv785.epil.init = phi i64 [ 0, %.lr.ph605.preheader ], [ %indvars.iv.next786.1, %.lr.ph608.preheader.unr-lcssa ]
  %lcmp.mod987 = trunc i64 %i.vg to i1
  call void @llvm.assume(i1 %lcmp.mod987)
  %i.vj = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv785.epil.init ; 2 uses
  %i.vk = load <4 x i8>, ptr %i.vj, align 4, !tbaa !13
end_hunk_0
begin_hunk_1_@write_callback:bb.a
  store i8 %i.aal, ptr %i.aam, align 1, !tbaa !13
  %indvars.iv.next736.epil = add nuw nsw i64 %indvars.iv735.epil.init, 1
  br label %._crit_edge579.us

._crit_edge579.us:                                ; preds = %._crit_edge579.us.unr-lcssa, %.epil.preheader954
  %indvars.iv.next736.lcssa = phi i64 [ %indvars.iv.next736.1, %._crit_edge579.us.unr-lcssa ], [ %indvars.iv.next736.epil, %.epil.preheader954 ] ; 2 uses
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next743, %i.ej
  br i1 %exitcond747.not, label %.loopexit538.thread901, label %.preheader536.us, !llvm.loop !121

bb.by:                                            ; preds = %bb.bj
  %.not639 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.hk, label %.preheader544, label %.preheader547

.preheader547:                                    ; preds = %bb.by
  br i1 %.not639, label %.loopexit545, label %.preheader546.us.preheader

.preheader546.us.preheader:                       ; preds = %.preheader547
  %wide.trip.count692 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter925 = and i64 %wide.trip.count692, 3   ; 3 uses
  %i.aan = icmp ult i32 %i.g, 4
  %unroll_iter930 = and i64 %wide.trip.count692, 4294967292
  %lcmp.mod927.not = icmp eq i64 %xtraiter925, 0
  %lcmp.mod929 = icmp ne i64 %xtraiter925, 0
  br label %.preheader546.us

.preheader546.us:                                 ; preds = %.preheader546.us.preheader, %._crit_edge556.us
  %indvars.iv694 = phi i64 [ 0, %.preheader546.us.preheader ], [ %indvars.iv.next695, %._crit_edge556.us ] ; 6 uses
  %.23558.us = phi i64 [ 0, %.preheader546.us.preheader ], [ %indvars.iv.next688.lcssa, %._crit_edge556.us ] ; 2 uses
  br i1 %i.aan, label %.epil.preheader924, label %.preheader546.us.new

.preheader546.us.new:                             ; preds = %.preheader546.us, %.preheader546.us.new
  %indvars.iv687 = phi i64 [ %indvars.iv.next688.3, %.preheader546.us.new ], [ %.23558.us, %.preheader546.us ] ; 5 uses
  %indvars.iv685 = phi i64 [ %indvars.iv.next686.3, %.preheader546.us.new ], [ 0, %.preheader546.us ] ; 5 uses
  %niter931 = phi i64 [ %niter931.next.3, %.preheader546.us.new ], [ 0, %.preheader546.us ]
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !142
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv694
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !14
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687
  store i32 %i.aar, ptr %i.aas, align 4, !tbaa !13
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !142
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %indvars.iv694
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !14
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  store i32 %i.aax, ptr %i.aaz, align 4, !tbaa !13
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !142
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %indvars.iv694
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !14
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store i32 %i.abe, ptr %i.abg, align 4, !tbaa !13
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !142
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv694
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !14
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 12
  store i32 %i.abl, ptr %i.abn, align 4, !tbaa !13
  %indvars.iv.next686.3 = add nuw nsw i64 %indvars.iv685, 4 ; 2 uses
  %indvars.iv.next688.3 = add nuw nsw i64 %indvars.iv687, 4 ; 3 uses
  %niter931.next.3 = add i64 %niter931, 4         ; 2 uses
  %niter931.ncmp.3 = icmp eq i64 %niter931.next.3, %unroll_iter930
  br i1 %niter931.ncmp.3, label %._crit_edge556.us.unr-lcssa, label %.preheader546.us.new, !llvm.loop !122

._crit_edge556.us.unr-lcssa:                      ; preds = %.preheader546.us.new
  br i1 %lcmp.mod927.not, label %._crit_edge556.us, label %.epil.preheader924

.epil.preheader924:                               ; preds = %._crit_edge556.us.unr-lcssa, %.preheader546.us
  %indvars.iv687.epil.init = phi i64 [ %.23558.us, %.preheader546.us ], [ %indvars.iv.next688.3, %._crit_edge556.us.unr-lcssa ]
  %indvars.iv685.epil.init = phi i64 [ 0, %.preheader546.us ], [ %indvars.iv.next686.3, %._crit_edge556.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod929)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader924
  %indvars.iv687.epil = phi i64 [ %indvars.iv687.epil.init, %.epil.preheader924 ], [ %indvars.iv.next688.epil, %bb.bz ] ; 2 uses
  %indvars.iv685.epil = phi i64 [ %indvars.iv685.epil.init, %.epil.preheader924 ], [ %indvars.iv.next686.epil, %bb.bz ] ; 2 uses
  %epil.iter926 = phi i64 [ 0, %.epil.preheader924 ], [ %epil.iter926.next, %bb.bz ]
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv685.epil
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !142
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %indvars.iv694
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !14
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv687.epil
  store i32 %i.abr, ptr %i.abs, align 4, !tbaa !13
  %indvars.iv.next686.epil = add nuw nsw i64 %indvars.iv685.epil, 1
  %indvars.iv.next688.epil = add nuw nsw i64 %indvars.iv687.epil, 1 ; 2 uses
  %epil.iter926.next = add i64 %epil.iter926, 1   ; 2 uses
  %epil.iter926.cmp.not = icmp eq i64 %epil.iter926.next, %xtraiter925
  br i1 %epil.iter926.cmp.not, label %._crit_edge556.us, label %bb.bz, !llvm.loop !123

._crit_edge556.us:                                ; preds = %bb.bz, %._crit_edge556.us.unr-lcssa
  %indvars.iv.next688.lcssa = phi i64 [ %indvars.iv.next688.3, %._crit_edge556.us.unr-lcssa ], [ %indvars.iv.next688.epil, %bb.bz ] ; 2 uses
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1 ; 2 uses
  %exitcond699.not = icmp eq i64 %indvars.iv.next695, %i.ej
  br i1 %exitcond699.not, label %.loopexit545.loopexit665, label %.preheader546.us, !llvm.loop !124

.preheader544:                                    ; preds = %bb.by
  br i1 %.not639, label %.loopexit545, label %.preheader543.us.preheader

.preheader543.us.preheader:                       ; preds = %.preheader544
  %wide.trip.count707 = zext i32 %i.g to i64      ; 2 uses
  %xtraiter933 = and i64 %wide.trip.count707, 3   ; 3 uses
  %i.abt = icmp ult i32 %i.g, 4
  %unroll_iter938 = and i64 %wide.trip.count707, 4294967292
  %lcmp.mod935.not = icmp eq i64 %xtraiter933, 0
  %lcmp.mod937 = icmp ne i64 %xtraiter933, 0
  br label %.preheader543.us

.preheader543.us:                                 ; preds = %.preheader543.us.preheader, %._crit_edge561.us
  %indvars.iv709 = phi i64 [ 0, %.preheader543.us.preheader ], [ %indvars.iv.next710, %._crit_edge561.us ] ; 6 uses
  %.21563.us = phi i64 [ 0, %.preheader543.us.preheader ], [ %indvars.iv.next703.lcssa, %._crit_edge561.us ] ; 2 uses
  br i1 %i.abt, label %.epil.preheader932, label %.preheader543.us.new

.preheader543.us.new:                             ; preds = %.preheader543.us, %.preheader543.us.new
  %indvars.iv702 = phi i64 [ %indvars.iv.next703.3, %.preheader543.us.new ], [ %.21563.us, %.preheader543.us ] ; 5 uses
  %indvars.iv700 = phi i64 [ %indvars.iv.next701.3, %.preheader543.us.new ], [ 0, %.preheader543.us ] ; 5 uses
  %niter939 = phi i64 [ %niter939.next.3, %.preheader543.us.new ], [ 0, %.preheader543.us ]
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv700
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !142
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv709
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !14
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv702
  store i32 %i.abx, ptr %i.aby, align 4, !tbaa !13
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv700
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !142
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %indvars.iv709
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !14
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv702
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  store i32 %i.acd, ptr %i.acf, align 4, !tbaa !13
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv700
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !142
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv709
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !14
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv702
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  store i32 %i.ack, ptr %i.acm, align 4, !tbaa !13
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv700
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 24
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !142
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %indvars.iv709
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !14
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv702
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 12
  store i32 %i.acr, ptr %i.act, align 4, !tbaa !13
  %indvars.iv.next701.3 = add nuw nsw i64 %indvars.iv700, 4 ; 2 uses
  %indvars.iv.next703.3 = add nuw nsw i64 %indvars.iv702, 4 ; 3 uses
  %niter939.next.3 = add i64 %niter939, 4         ; 2 uses
  %niter939.ncmp.3 = icmp eq i64 %niter939.next.3, %unroll_iter938
  br i1 %niter939.ncmp.3, label %._crit_edge561.us.unr-lcssa, label %.preheader543.us.new, !llvm.loop !125

._crit_edge561.us.unr-lcssa:                      ; preds = %.preheader543.us.new
  br i1 %lcmp.mod935.not, label %._crit_edge561.us, label %.epil.preheader932

.epil.preheader932:                               ; preds = %._crit_edge561.us.unr-lcssa, %.preheader543.us
  %indvars.iv702.epil.init = phi i64 [ %.21563.us, %.preheader543.us ], [ %indvars.iv.next703.3, %._crit_edge561.us.unr-lcssa ]
  %indvars.iv700.epil.init = phi i64 [ 0, %.preheader543.us ], [ %indvars.iv.next701.3, %._crit_edge561.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod937)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.epil.preheader932
  %indvars.iv702.epil = phi i64 [ %indvars.iv702.epil.init, %.epil.preheader932 ], [ %indvars.iv.next703.epil, %bb.ca ] ; 2 uses
  %indvars.iv700.epil = phi i64 [ %indvars.iv700.epil.init, %.epil.preheader932 ], [ %indvars.iv.next701.epil, %bb.ca ] ; 2 uses
  %epil.iter934 = phi i64 [ 0, %.epil.preheader932 ], [ %epil.iter934.next, %bb.ca ]
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv700.epil
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !142
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv709
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !14
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr @write_callback.ubuf, i64 %indvars.iv702.epil
  store i32 %i.acx, ptr %i.acy, align 4, !tbaa !13
  %indvars.iv.next701.epil = add nuw nsw i64 %indvars.iv700.epil, 1
  %indvars.iv.next703.epil = add nuw nsw i64 %indvars.iv702.epil, 1 ; 2 uses
  %epil.iter934.next = add i64 %epil.iter934, 1   ; 2 uses
  %epil.iter934.cmp.not = icmp eq i64 %epil.iter934.next, %xtraiter933
  br i1 %epil.iter934.cmp.not, label %._crit_edge561.us, label %bb.ca, !llvm.loop !126

._crit_edge561.us:                                ; preds = %bb.ca, %._crit_edge561.us.unr-lcssa
  %indvars.iv.next703.lcssa = phi i64 [ %indvars.iv.next703.3, %._crit_edge561.us.unr-lcssa ], [ %indvars.iv.next703.epil, %bb.ca ] ; 2 uses
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %exitcond714.not = icmp eq i64 %indvars.iv.next710, %i.ej
  br i1 %exitcond714.not, label %.loopexit545.loopexit663, label %.preheader543.us, !llvm.loop !127

.loopexit545.loopexit663:                         ; preds = %._crit_edge561.us
  %i.acz = trunc nuw i64 %indvars.iv.next703.lcssa to i32
  br label %.loopexit545

.loopexit545.loopexit665:                         ; preds = %._crit_edge556.us
  %i.ada = trunc nuw i64 %indvars.iv.next688.lcssa to i32
  br label %.loopexit545

.loopexit545:                                     ; preds = %.preheader544, %.preheader547, %.loopexit545.loopexit665, %.loopexit545.loopexit663
  %.25 = phi i32 [ %i.acz, %.loopexit545.loopexit663 ], [ 0, %.preheader547 ], [ %i.ada, %.loopexit545.loopexit665 ], [ 0, %.preheader544 ]
  %i.adb = shl i32 %.25, 2                        ; 3 uses
  %.not640 = icmp ne i32 %i.adb, 0
  %or.cond921.not = select i1 %i.w, i1 %.not640, i1 false
  br i1 %or.cond921.not, label %.lr.ph.preheader, label %.loopexit542

.lr.ph.preheader:                                 ; preds = %.loopexit545
  %i.adc = zext i32 %i.adb to i64
  %i.add = add nsw i64 %i.adc, -4                 ; 3 uses
  %i.ade = lshr exact i64 %i.add, 2
  %i.adf = add nuw nsw i64 %i.ade, 1              ; 2 uses
  %i.adg = icmp eq i64 %i.add, 0
  br i1 %i.adg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter944 = and i64 %i.adf, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv715 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next716.1, %.lr.ph ] ; 3 uses
  %niter945 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter945.next.1, %.lr.ph ]
  %i.adh = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv715 ; 2 uses
  %i.adi = load <4 x i8>, ptr %i.adh, align 4, !tbaa !13
  %i.adj = shufflevector <4 x i8> %i.adi, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.adj, ptr %i.adh, align 4, !tbaa !13
  %i.adk = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv715
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4 ; 2 uses
  %i.adm = load <4 x i8>, ptr %i.adl, align 4, !tbaa !13
  %i.adn = shufflevector <4 x i8> %i.adm, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.adn, ptr %i.adl, align 4, !tbaa !13
  %indvars.iv.next716.1 = add nuw nsw i64 %indvars.iv715, 8 ; 2 uses
  %niter945.next.1 = add i64 %niter945, 2         ; 2 uses
  %niter945.ncmp.1.not = icmp eq i64 %niter945.next.1, %unroll_iter944
  br i1 %niter945.ncmp.1.not, label %.loopexit542.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !128

.loopexit542.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %i.ado = and i64 %i.add, 4
  %lcmp.mod942.not.not = icmp eq i64 %i.ado, 0
  br i1 %lcmp.mod942.not.not, label %.lr.ph.epil.preheader, label %.loopexit542

.lr.ph.epil.preheader:                            ; preds = %.loopexit542.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv715.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next716.1, %.loopexit542.loopexit.unr-lcssa ]
  %lcmp.mod943 = trunc i64 %i.adf to i1
  call void @llvm.assume(i1 %lcmp.mod943)
  %i.adp = getelementptr inbounds nuw i8, ptr @write_callback.ubuf, i64 %indvars.iv715.epil.init ; 2 uses
  %i.adq = load <4 x i8>, ptr %i.adp, align 4, !tbaa !13
  %i.adr = shufflevector <4 x i8> %i.adq, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.adr, ptr %i.adp, align 4, !tbaa !13
  br label %.loopexit542

.loopexit542:                                     ; preds = %.lr.ph.epil.preheader, %.loopexit542.loopexit.unr-lcssa, %.loopexit545
  %i.ads = zext i32 %i.adb to i64
  br label %.loopexit538

bb.cb:                                            ; preds = %bb.bj
  store i32 1, ptr %i.z, align 8, !tbaa !53
  br label %.thread509

.loopexit538:                                     ; preds = %bb.bd, %.loopexit917, %.loopexit528, %.loopexit542, %.loopexit, %.epilog-lcssa
  %.0422 = phi i64 [ %i.yd, %.loopexit528 ], [ %i.ads, %.loopexit542 ], [ %i.hj, %bb.bd ], [ %i.jk, %.epilog-lcssa ], [ %i.kb, %.loopexit917 ], [ %i.sy, %.loopexit ] ; 2 uses
  %.not498 = icmp eq i64 %.0422, 0
  br i1 %.not498, label %.thread509, label %.loopexit538.thread901

.loopexit538.thread901:                           ; preds = %._crit_edge571.us, %._crit_edge579.us, %.loopexit538
  %.0422904 = phi i64 [ %.0422, %.loopexit538 ], [ %indvars.iv.next736.lcssa, %._crit_edge579.us ], [ %indvars.iv.next721.lcssa, %._crit_edge571.us ] ; 2 uses
  %i.adt = call i64 @fwrite(ptr noundef nonnull @write_callback.ubuf, i64 noundef 1, i64 noundef %.0422904, ptr noundef %i.c)
  %.not499 = icmp eq i64 %i.adt, %.0422904
  br i1 %.not499, label %.thread509, label %bb.cc

bb.cc:                                            ; preds = %.loopexit538.thread901
  %i.adu = tail call ptr @__errno_location() #14
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !14
  %i.adw = icmp eq i32 %i.adv, 32
  br i1 %i.adw, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.adx = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.ady = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aea = getelementptr inbounds nuw i8, ptr %3, i64 1308
  store i32 1, ptr %i.aea, align 4, !tbaa !56
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  store i32 1, ptr %i.z, align 8, !tbaa !53
  br label %.thread509

.thread509:                                       ; preds = %.preheader540, %.preheader537, %bb.ar, %bb.az, %bb.ay, %bb.ag, %.loopexit538, %.loopexit538.thread901, %bb.t, %bb.p, %bb.i, %.thread507, %bb.cf, %bb.cb, %bb.ap, %bb.ad, %bb.z, %bb.m, %bb.k
  %.1450 = phi i32 [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.cf ], [ 1, %bb.t ], [ 1, %bb.cb ], [ 1, %bb.ap ], [ 1, %bb.ag ], [ 1, %bb.ad ], [ 1, %bb.z ], [ 1, %bb.p ], [ 1, %bb.i ], [ 1, %.thread507 ], [ 0, %.loopexit538.thread901 ], [ 0, %.loopexit538 ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 0, %.preheader537 ], [ 0, %.preheader540 ]
  ret i32 %.1450
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @metadata_callback(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !148
  switch i32 %i.d, label %.critedge [
    i32 0, label %bb.b
    i32 5, label %bb.y
    i32 4, label %bb.aj
    i32 2, label %bb.az
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1336 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %.not175 = icmp eq i32 %i.f, 0
  br i1 %.not175, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %i.i) #13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52
  %.not187 = icmp eq i32 %i.k, 0
  br i1 %.not187, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1304
  store i32 1, ptr %i.l, align 8, !tbaa !53
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  store i32 1, ptr %i.e, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i128, ptr %i.m, align 1
  %i.o = icmp ne i128 %i.n, 0                     ; 2 uses
  %i.p = zext i1 %i.o to i32                      ; 0 uses
  %i.q = zext i1 %i.o to i32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1340
  store i32 %i.q, ptr %i.r, align 4, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1368 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !38   ; 5 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1352 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %.not176 = icmp eq i32 %i.w, %i.y
  br i1 %.not176, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  tail call void @stats_print_name_and_stream_number(i32 noundef 1, ptr noundef %i.aa, i32 noundef %i.t) #13
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !13
  %i.ad = load i32, ptr %i.v, align 8, !tbaa !58
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ab, i32 noundef 1, ptr noundef nonnull @.str.33, i32 noundef %i.ac, i32 noundef %i.ad) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1304
  store i32 1, ptr %i.ae, align 8, !tbaa !53
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1356 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %.not177 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not177, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  tail call void @stats_print_name_and_stream_number(i32 noundef 1, ptr noundef %i.ak, i32 noundef %i.t) #13
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.an = load i32, ptr %i.af, align 4, !tbaa !54
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.al, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %i.am, i32 noundef %i.an) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1304
  store i32 1, ptr %i.ao, align 8, !tbaa !53
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1360 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !13
  %.not178 = icmp eq i32 %i.aq, %i.as
  br i1 %.not178, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34
  tail call void @stats_print_name_and_stream_number(i32 noundef 1, ptr noundef %i.au, i32 noundef %i.t) #13
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !13
  %i.ax = load i32, ptr %i.ap, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.av, i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %i.aw, i32 noundef %i.ax) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1304
  store i32 1, ptr %i.ay, align 8, !tbaa !53
  br label %.critedge

bb.l:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1352
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 1356
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 1360
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !40
  %i.bi = icmp slt i32 %i.t, 0
  br i1 %i.bi, label %bb.m, label %.thread.thread

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 1200 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = tail call i32 @flac__utils_canonicalize_skip_until_specification(ptr noundef %i.bk, i32 noundef %i.bg) #13
  %.not179 = icmp eq i32 %i.bl, 0
  br i1 %.not179, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1224
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bm, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef %i.bo) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 1304
  store i32 1, ptr %i.bp, align 8, !tbaa !53
  br label %.critedge

.thread.thread:                                   ; preds = %bb.l, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !13
  br label %bb.p

.thread:                                          ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !13
  %i.bv = freeze i64 %i.bu                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = add i64 %i.bx, -1
  %or.cond188.not = icmp ult i64 %i.by, %i.bv
  br i1 %or.cond188.not, label %bb.o, label %bb.p

end_hunk_1
