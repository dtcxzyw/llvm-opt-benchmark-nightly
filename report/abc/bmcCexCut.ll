Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcCexCut?download=true
inline.NumInlined: 334
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Bmc_GiaGenerateGiaAllFrames:bb.a
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr inbounds [12 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 4
  %i.em = shl i64 %i.eh, 1
  %.mask332456 = xor i64 %i.em, %i.el
  %i.en = and i64 %.mask332456, 1073741824
  %i.eo = and i64 %i.eh, -1073741825
  %i.ep = or disjoint i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.eg, align 4
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %i.eq = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %.val342 = load i32, ptr %i.er, align 4, !tbaa !35
  %i.es = sext i32 %.val342 to i64
  %i.et = icmp slt i64 %indvars.iv.next589, %i.es
  br i1 %i.et, label %.lr.ph496, label %.critedge8, !llvm.loop !67

.critedge8:                                       ; preds = %.lr.ph496, %bb.m, %.critedge6
  %.val400498 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.eu = icmp sgt i32 %.val400498, 0
  br i1 %i.eu, label %.lr.ph502, label %.critedge10

.lr.ph502:                                        ; preds = %.critedge8, %bb.n
  %.val400.pn = phi i32 [ %.val400, %bb.n ], [ %.val400498, %.critedge8 ] ; 2 uses
  %.5275500 = phi i32 [ %i.fr, %bb.n ], [ 0, %.critedge8 ] ; 2 uses
  %.val351 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %.not330 = icmp eq ptr %.val351, null
  br i1 %.not330, label %.critedge10, label %bb.n

bb.n:                                             ; preds = %.lr.ph502
  %.val409 = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.ev = getelementptr i8, ptr %.val409, i64 8
  %.val352.val = load ptr, ptr %i.ev, align 8, !tbaa !37
  %i.ew = sub i32 %.5275500, %.val400.pn          ; 2 uses
  %i.ex = getelementptr i8, ptr %.val409, i64 4
  %.val409.val = load i32, ptr %i.ex, align 4, !tbaa !35
  %i.ey = add i32 %i.ew, %.val409.val
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.val352.val, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !32
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [12 x i8], ptr %.val351, i64 %i.fc
  %.val383 = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.fe = getelementptr i8, ptr %.val383, i64 8
  %.val431.val = load ptr, ptr %i.fe, align 8, !tbaa !37
  %i.ff = getelementptr i8, ptr %.val383, i64 4
  %.val383.val = load i32, ptr %i.ff, align 4, !tbaa !35
  %i.fg = add i32 %i.ew, %.val383.val
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val431.val, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [12 x i8], ptr %.val351, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fd, align 4
  %i.fn = and i64 %i.fm, 1073741824
  %i.fo = load i64, ptr %i.fl, align 4
  %i.fp = and i64 %i.fo, -1073741825
  %i.fq = or disjoint i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fl, align 4
  %i.fr = add nuw nsw i32 %.5275500, 1            ; 2 uses
  %.val400 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.fs = icmp slt i32 %i.fr, %.val400
  br i1 %i.fs, label %.lr.ph502, label %.critedge10, !llvm.loop !68

.critedge10:                                      ; preds = %.lr.ph502, %bb.n, %.critedge8
  %.val401476625 = phi i32 [ %.val400498, %.critedge8 ], [ %.val400.pn, %.lr.ph502 ], [ %.val400, %bb.n ] ; 4 uses
  %i.ft = add nuw nsw i32 %.0277504, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ft, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !69

._crit_edge.loopexit:                             ; preds = %.critedge10
  %.pre642 = ashr i32 %.val401476625, 5
  %.pre643 = and i32 %.val401476625, 31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Vec_BitStart.exit
  %.pre-phi644 = phi i32 [ %.pre643, %._crit_edge.loopexit ], [ %i.ad, %Vec_BitStart.exit ]
  %.pre-phi = phi i32 [ %.pre642, %._crit_edge.loopexit ], [ %i.ac, %Vec_BitStart.exit ]
  %.val398 = phi i32 [ %.val401476625, %._crit_edge.loopexit ], [ %.val403.lcssa, %Vec_BitStart.exit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.2.lcssa, %._crit_edge.loopexit ], [ %.0.lcssa, %Vec_BitStart.exit ] ; 2 uses
  %i.fu = icmp ne i32 %.pre-phi644, 0
  %i.fv = zext i1 %i.fu to i32
  %i.fw = add nsw i32 %.pre-phi, %i.fv            ; 2 uses
  %.not.i.i442 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i442, label %Vec_BitStart.exit444, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.fx = sext i32 %i.fw to i64
  %i.fy = shl nsw i64 %i.fx, 2                    ; 2 uses
  %i.fz = tail call noalias ptr @malloc(i64 noundef %i.fy) #18
  br label %Vec_BitStart.exit444

Vec_BitStart.exit444:                             ; preds = %._crit_edge, %bb.o
  %.pre-phi8.i443 = phi i64 [ %i.fy, %bb.o ], [ 0, %._crit_edge ]
  %i.ga = phi ptr [ %i.fz, %bb.o ], [ null, %._crit_edge ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ga, i8 0, i64 %.pre-phi8.i443, i1 false)
  %i.gb = icmp sgt i32 %.val398, 0
  br i1 %i.gb, label %.lr.ph509, label %.critedge12

.lr.ph509:                                        ; preds = %Vec_BitStart.exit444
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not303 = icmp eq ptr %.val428, null
  br i1 %.not303, label %.critedge12, label %.lr.ph509.split

.lr.ph509.split:                                  ; preds = %.lr.ph509
  %i.gc = getelementptr i8, ptr %0, i64 64
  %.val381 = load ptr, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  %i.gd = getelementptr i8, ptr %.val381, i64 8
  %.val429.val = load ptr, ptr %i.gd, align 8, !tbaa !37
  %i.ge = getelementptr i8, ptr %.val381, i64 4
  %.val381.val = load i32, ptr %i.ge, align 4, !tbaa !35
  %invariant.op = sub i32 %.val381.val, %.val398
  %wide.trip.count = zext nneg i32 %.val398 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph509.split, %bb.r
  %indvars.iv591 = phi i64 [ 0, %.lr.ph509.split ], [ %indvars.iv.next592, %bb.r ] ; 3 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv591 to i32 ; 2 uses
  %.reass = add i32 %invariant.op, %i.gf
  %i.gg = sext i32 %.reass to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.val429.val, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !32
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [12 x i8], ptr %.val428, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 4
  %i.gm = and i64 %i.gl, 1073741824
  %.not325 = icmp eq i64 %i.gm, 0
  br i1 %.not325, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gn = and i32 %i.gf, 31
  %i.go = shl nuw i32 1, %i.gn
  %i.gp = lshr i64 %indvars.iv591, 5
  %i.gq = and i64 %i.gp, 134217727
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !32
  %i.gt = or i32 %i.gs, %i.go
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %exitcond594.not = icmp eq i64 %indvars.iv.next592, %wide.trip.count
  br i1 %exitcond594.not, label %.critedge12, label %bb.p, !llvm.loop !70

.critedge12:                                      ; preds = %bb.r, %.lr.ph509, %Vec_BitStart.exit444
  %i.gu = tail call ptr @Gia_ManStart(i32 noundef 10000) #19 ; 11 uses
  %i.gv = load ptr, ptr %0, align 8, !tbaa !47    ; 3 uses
  %.not.i445 = icmp eq ptr %i.gv, null
  br i1 %.not.i445, label %Abc_UtilStrsav.exit, label %bb.s

bb.s:                                             ; preds = %.critedge12
  %i.gw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gv) #20
  %i.gx = add i64 %i.gw, 1
  %i.gy = tail call noalias ptr @malloc(i64 noundef %i.gx) #18 ; 2 uses
  %i.gz = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gy, ptr noundef nonnull readonly dereferenceable(1) %i.gv) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %.critedge12, %bb.s
  %i.ha = phi ptr [ %i.gy, %bb.s ], [ null, %.critedge12 ]
  store ptr %i.ha, ptr %i.gu, align 8, !tbaa !47
  %.val397511 = load i32, ptr %i.b, align 8, !tbaa !38
  %i.hb = icmp sgt i32 %.val397511, 0
  br i1 %i.hb, label %.lr.ph513, label %.critedge14

.lr.ph513:                                        ; preds = %Abc_UtilStrsav.exit, %bb.t
  %.7512 = phi i32 [ %i.hd, %bb.t ], [ 0, %Abc_UtilStrsav.exit ]
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.not304 = icmp eq ptr %.val426, null
  br i1 %.not304, label %.critedge14, label %bb.t

bb.t:                                             ; preds = %.lr.ph513
  %i.hc = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.gu) ; 0 uses
  %i.hd = add nuw nsw i32 %.7512, 1               ; 2 uses
  %.val397 = load i32, ptr %i.b, align 8, !tbaa !38
  %i.he = icmp slt i32 %i.hd, %.val397
  br i1 %i.he, label %.lr.ph513, label %.critedge14, !llvm.loop !71

.critedge14:                                      ; preds = %.lr.ph513, %bb.t, %Abc_UtilStrsav.exit
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.gu) #19
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.val438.fr = freeze ptr %.val438               ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val438.fr, i64 8
  store i32 1, ptr %i.hf, align 4, !tbaa !51
  %.val376 = load i32, ptr %i.b, align 8, !tbaa !38
  %i.hg = getelementptr i8, ptr %0, i64 64        ; 9 uses
  %.val377 = load ptr, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.hh = getelementptr i8, ptr %.val377, i64 4
  %.val377.val = load i32, ptr %i.hh, align 4, !tbaa !35
  %i.hi = sub nsw i32 %.val377.val, %.val376      ; 3 uses
  %.not305 = icmp eq ptr %.val438.fr, null
  %i.hj = icmp slt i32 %i.hi, 1
  %or.cond457515 = or i1 %.not305, %i.hj
  br i1 %or.cond457515, label %.critedge16.preheader, label %.lr.ph517.split.preheader

.lr.ph517.split.preheader:                        ; preds = %.critedge14
  %i.hk = getelementptr i8, ptr %.val377, i64 8
  %.val425.val = load ptr, ptr %i.hk, align 8, !tbaa !37 ; 5 uses
  %wide.trip.count598 = zext nneg i32 %i.hi to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count598, 3      ; 3 uses
  %i.hl = icmp ult i32 %i.hi, 4
  br i1 %i.hl, label %.lr.ph517.split.epil.preheader, label %.lr.ph517.split.preheader.new

.lr.ph517.split.preheader.new:                    ; preds = %.lr.ph517.split.preheader
  %unroll_iter = and i64 %wide.trip.count598, 2147483644
  br label %.lr.ph517.split

.critedge16.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph517.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge16.preheader, label %.lr.ph517.split.epil.preheader

.lr.ph517.split.epil.preheader:                   ; preds = %.critedge16.preheader.loopexit.unr-lcssa, %.lr.ph517.split.preheader
  %indvars.iv595.epil.init = phi i64 [ 0, %.lr.ph517.split.preheader ], [ %indvars.iv.next596.3, %.critedge16.preheader.loopexit.unr-lcssa ]
  %lcmp.mod668 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod668)
  br label %.lr.ph517.split.epil

.lr.ph517.split.epil:                             ; preds = %.lr.ph517.split.epil, %.lr.ph517.split.epil.preheader
  %indvars.iv595.epil = phi i64 [ %indvars.iv595.epil.init, %.lr.ph517.split.epil.preheader ], [ %indvars.iv.next596.epil, %.lr.ph517.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph517.split.epil.preheader ], [ %epil.iter.next, %.lr.ph517.split.epil ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val425.val, i64 %indvars.iv595.epil
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !32
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [12 x i8], ptr %.val438.fr, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i32 1, ptr %i.hq, align 4, !tbaa !51
  %indvars.iv.next596.epil = add nuw nsw i64 %indvars.iv595.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge16.preheader, label %.lr.ph517.split.epil, !llvm.loop !72

.critedge16.preheader:                            ; preds = %.critedge16.preheader.loopexit.unr-lcssa, %.lr.ph517.split.epil, %.critedge14
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !42
  %.not306581 = icmp sgt i32 %4, %i.hs
  br i1 %.not306581, label %.critedge16._crit_edge, label %.preheader461.lr.ph

.preheader461.lr.ph:                              ; preds = %.critedge16.preheader
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hv = getelementptr i8, ptr %0, i64 72        ; 7 uses
  %i.hw = getelementptr i8, ptr %i.gu, i64 32
  %i.hx = getelementptr i8, ptr %i.gu, i64 64
  br label %.preheader461

.lr.ph517.split:                                  ; preds = %.lr.ph517.split, %.lr.ph517.split.preheader.new
  %indvars.iv595 = phi i64 [ 0, %.lr.ph517.split.preheader.new ], [ %indvars.iv.next596.3, %.lr.ph517.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph517.split.preheader.new ], [ %niter.next.3, %.lr.ph517.split ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.val425.val, i64 %indvars.iv595
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !32
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [12 x i8], ptr %.val438.fr, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i32 1, ptr %i.ic, align 4, !tbaa !51
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val425.val, i64 %indvars.iv595
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !32
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [12 x i8], ptr %.val438.fr, i64 %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i32 1, ptr %i.ii, align 4, !tbaa !51
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val425.val, i64 %indvars.iv595
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !32
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [12 x i8], ptr %.val438.fr, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i32 1, ptr %i.io, align 4, !tbaa !51
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val425.val, i64 %indvars.iv595
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !32
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [12 x i8], ptr %.val438.fr, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i32 1, ptr %i.iu, align 4, !tbaa !51
  %indvars.iv.next596.3 = add nuw nsw i64 %indvars.iv595, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge16.preheader.loopexit.unr-lcssa, label %.lr.ph517.split, !llvm.loop !73

.preheader461:                                    ; preds = %.preheader461.lr.ph, %.critedge16
  %.0280582 = phi i32 [ %4, %.preheader461.lr.ph ], [ %i.ul, %.critedge16 ] ; 6 uses
  %.val396518 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.iv = icmp sgt i32 %.val396518, 0
  br i1 %i.iv, label %.lr.ph521, label %.critedge18

.lr.ph521:                                        ; preds = %.preheader461, %bb.u
  %.val396520 = phi i32 [ %.val396, %bb.u ], [ %.val396518, %.preheader461 ] ; 2 uses
  %.9519 = phi i32 [ %i.jr, %bb.u ], [ 0, %.preheader461 ] ; 4 uses
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not307 = icmp eq ptr %.val422, null
  br i1 %.not307, label %.critedge18, label %bb.u

bb.u:                                             ; preds = %.lr.ph521
  %.val375 = load ptr, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.iw = getelementptr i8, ptr %.val375, i64 8
  %.val423.val = load ptr, ptr %i.iw, align 8, !tbaa !37
  %i.ix = getelementptr i8, ptr %.val375, i64 4
  %.val375.val = load i32, ptr %i.ix, align 4, !tbaa !35
  %i.iy = sub i32 %.9519, %.val396520
  %i.iz = add i32 %i.iy, %.val375.val
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %.val423.val, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !32
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [12 x i8], ptr %.val422, i64 %i.jd ; 2 uses
  %i.jf = lshr i32 %.9519, 5
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !32
  %i.jj = and i32 %.9519, 31
  %i.jk = lshr i32 %i.ji, %i.jj
  %i.jl = load i64, ptr %i.je, align 4
  %i.jm = shl i32 %i.jk, 30
  %i.jn = and i32 %i.jm, 1073741824
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = and i64 %i.jl, -1073741825
  %i.jq = or disjoint i64 %i.jp, %i.jo
  store i64 %i.jq, ptr %i.je, align 4
  %i.jr = add nuw nsw i32 %.9519, 1               ; 2 uses
  %.val396 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.js = icmp slt i32 %i.jr, %.val396
  br i1 %i.js, label %.lr.ph521, label %.critedge18, !llvm.loop !74

.critedge18:                                      ; preds = %.lr.ph521, %bb.u, %.preheader461
  %.val372523632 = phi i32 [ %.val396518, %.preheader461 ], [ %.val396520, %.lr.ph521 ], [ %.val396, %bb.u ] ; 2 uses
  %i.jt = icmp slt i32 %4, %.0280582
  br i1 %i.jt, label %.preheader459, label %.preheader460

.preheader460:                                    ; preds = %.critedge26, %.critedge18
  %.val394 = phi i32 [ %.val372523632, %.critedge18 ], [ %.val372523634, %.critedge26 ] ; 4 uses
  %.3.lcssa = phi i32 [ %.1.lcssa, %.critedge18 ], [ %.4.lcssa, %.critedge26 ]
  %i.ju = icmp sgt i32 %.val394, 0
  br i1 %i.ju, label %.lr.ph550, label %.critedge28

.lr.ph550:                                        ; preds = %.preheader460
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not308 = icmp eq ptr %.val416, null
  br i1 %.not308, label %.critedge28, label %.lr.ph550.split

.lr.ph550.split:                                  ; preds = %.lr.ph550
  %.val369 = load ptr, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.jv = getelementptr i8, ptr %.val369, i64 8
  %.val417.val = load ptr, ptr %i.jv, align 8, !tbaa !37
  %i.jw = getelementptr i8, ptr %.val369, i64 4
  %.val369.val = load i32, ptr %i.jw, align 4, !tbaa !35
  %invariant.op552 = sub i32 %.val369.val, %.val394
  %.val439 = load ptr, ptr %i.hw, align 8, !tbaa !33 ; 2 uses
  %.val440 = load ptr, ptr %i.hx, align 8, !tbaa !36
  %i.jx = getelementptr i8, ptr %.val440, i64 8
  %.val440.val = load ptr, ptr %i.jx, align 8, !tbaa !37
  %i.jy = ptrtoint ptr %.val439 to i64
  %wide.trip.count613 = zext nneg i32 %.val394 to i64
  br label %bb.ab

.preheader459:                                    ; preds = %.critedge18, %.critedge26
  %.val372523 = phi i32 [ %.val372523634, %.critedge26 ], [ %.val372523632, %.critedge18 ]
  %.3547 = phi i32 [ %.4.lcssa, %.critedge26 ], [ %.1.lcssa, %.critedge18 ] ; 2 uses
  %.1278546 = phi i32 [ %i.oa, %.critedge26 ], [ %4, %.critedge18 ]
  %.val373524 = load ptr, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.jz = getelementptr i8, ptr %.val373524, i64 4
  %.val373.val525 = load i32, ptr %i.jz, align 4, !tbaa !35
  %i.ka = icmp sgt i32 %.val373.val525, %.val372523
  br i1 %i.ka, label %.lr.ph529, label %.critedge20

.lr.ph529:                                        ; preds = %.preheader459, %bb.v
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %bb.v ], [ 0, %.preheader459 ] ; 2 uses
  %.val373528 = phi ptr [ %.val373, %bb.v ], [ %.val373524, %.preheader459 ]
  %.4527 = phi i32 [ %i.kg, %bb.v ], [ %.3547, %.preheader459 ] ; 4 uses
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not318 = icmp eq ptr %.val420, null
  br i1 %.not318, label %.critedge20, label %bb.v

bb.v:                                             ; preds = %.lr.ph529
  %i.kb = getelementptr i8, ptr %.val373528, i64 8
  %.val421.val = load ptr, ptr %i.kb, align 8, !tbaa !37
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.val421.val, i64 %indvars.iv600
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !32
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [12 x i8], ptr %.val420, i64 %i.ke ; 2 uses
  %i.kg = add nsw i32 %.4527, 1                   ; 2 uses
  %i.kh = ashr i32 %.4527, 5
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !32
  %i.kl = and i32 %.4527, 31
  %i.km = lshr i32 %i.kk, %i.kl
  %i.kn = load i64, ptr %i.kf, align 4
  %i.ko = shl i32 %i.km, 30
  %i.kp = and i32 %i.ko, 1073741824
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = and i64 %i.kn, -1073741825
  %i.ks = or disjoint i64 %i.kr, %i.kq
  store i64 %i.ks, ptr %i.kf, align 4
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1 ; 2 uses
  %.val372 = load i32, ptr %i.b, align 8, !tbaa !38
  %.val373 = load ptr, ptr %i.hg, align 8, !tbaa !36 ; 2 uses
  %i.kt = getelementptr i8, ptr %.val373, i64 4
  %.val373.val = load i32, ptr %i.kt, align 4, !tbaa !35
  %i.ku = sub nsw i32 %.val373.val, %.val372
  %i.kv = sext i32 %i.ku to i64
end_hunk_0
begin_hunk_1_@Bmc_GiaGenerateGiaAllOne:bb.a
  store i64 %i.cl, ptr %i.by, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val249 = load i32, ptr %i.b, align 8, !tbaa !38
  %.val250 = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.cm = getelementptr i8, ptr %.val250, i64 4
  %.val250.val = load i32, ptr %i.cm, align 4, !tbaa !35
  %i.cn = sub nsw i32 %.val250.val, %.val249
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %.lr.ph319, label %.critedge4, !llvm.loop !89

.critedge4:                                       ; preds = %.lr.ph319, %bb.i, %.critedge2
  %.2.lcssa = phi i32 [ %.1337, %.critedge2 ], [ %i.bz, %bb.i ], [ %.2317, %.lr.ph319 ] ; 2 uses
  %i.cq = load i32, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph324, label %.critedge6

.lr.ph324:                                        ; preds = %.critedge4, %bb.l
  %i.cs = phi i32 [ %i.dv, %bb.l ], [ %i.cq, %.critedge4 ]
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %bb.l ], [ 0, %.critedge4 ] ; 2 uses
  %.val222 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %.val222, i64 %indvars.iv376 ; 4 uses
  %.not214 = icmp eq ptr %.val222, null
  br i1 %.not214, label %.critedge6, label %bb.j

bb.j:                                             ; preds = %.lr.ph324
  %.val256 = load i64, ptr %i.ct, align 4         ; 6 uses
  %i.cu = and i64 %.val256, 2147483648
  %.not.i = icmp ne i64 %i.cu, 0
  %i.cv = and i64 %.val256, 536870911             ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 536870911
  %narrow.i.not = or i1 %.not.i, %i.cw
  br i1 %narrow.i.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = sub nsw i64 0, %i.cv
  %i.cy = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 4
  %i.da = trunc i64 %i.cz to i32
  %i.db = lshr i32 %i.da, 30
  %i.dc = trunc i64 %.val256 to i32
  %i.dd = lshr i32 %i.dc, 29
  %i.de = xor i32 %i.db, %i.dd
  %i.df = lshr i64 %.val256, 32
  %i.dg = and i64 %i.df, 536870911
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 4
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = lshr i32 %i.dk, 30
  %i.dm = lshr i64 %.val256, 61
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = xor i32 %i.dl, %i.dn
  %i.dp = and i32 %i.de, 1
  %i.dq = and i32 %i.dp, %i.do
  %i.dr = shl nuw nsw i32 %i.dq, 30
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = and i64 %.val256, -3221225473
  %i.du = or disjoint i64 %i.dt, %i.ds
  store i64 %i.du, ptr %i.ct, align 4
  %.pre = load i32, ptr %i.as, align 8, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dv = phi i32 [ %.pre, %bb.k ], [ %i.cs, %bb.j ] ; 2 uses
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next377, %i.dw
  br i1 %i.dx, label %.lr.ph324, label %.critedge6, !llvm.loop !90

.critedge6:                                       ; preds = %.lr.ph324, %bb.l, %.critedge4
  %i.dy = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %.val224326 = load i32, ptr %i.dz, align 4, !tbaa !35
  %i.ea = icmp sgt i32 %.val224326, 0
  br i1 %i.ea, label %.lr.ph328, label %.critedge8

.lr.ph328:                                        ; preds = %.critedge6, %bb.m
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %bb.m ], [ 0, %.critedge6 ] ; 2 uses
  %i.eb = phi ptr [ %i.eq, %bb.m ], [ %i.dy, %.critedge6 ]
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not215 = icmp eq ptr %.val231, null
  br i1 %.not215, label %.critedge8, label %bb.m

bb.m:                                             ; preds = %.lr.ph328
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val232.val = load ptr, ptr %i.ec, align 8, !tbaa !37
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val232.val, i64 %indvars.iv379
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !32
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [12 x i8], ptr %.val231, i64 %i.ef ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 4            ; 3 uses
  %i.ei = and i64 %i.eh, 536870911
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr inbounds [12 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 4
  %i.em = shl i64 %i.eh, 1
  %.mask218292 = xor i64 %i.em, %i.el
  %i.en = and i64 %.mask218292, 1073741824
  %i.eo = and i64 %i.eh, -1073741825
  %i.ep = or disjoint i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.eg, align 4
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.eq = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %.val224 = load i32, ptr %i.er, align 4, !tbaa !35
  %i.es = sext i32 %.val224 to i64
  %i.et = icmp slt i64 %indvars.iv.next380, %i.es
  br i1 %i.et, label %.lr.ph328, label %.critedge8, !llvm.loop !91

.critedge8:                                       ; preds = %.lr.ph328, %bb.m, %.critedge6
  %.val259330 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.eu = icmp sgt i32 %.val259330, 0
  br i1 %i.eu, label %.lr.ph334, label %.critedge10

.lr.ph334:                                        ; preds = %.critedge8, %bb.n
  %.val259.pn = phi i32 [ %.val259, %bb.n ], [ %.val259330, %.critedge8 ] ; 2 uses
  %.5332 = phi i32 [ %i.fr, %bb.n ], [ 0, %.critedge8 ] ; 2 uses
  %.val229 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %.not216 = icmp eq ptr %.val229, null
  br i1 %.not216, label %.critedge10, label %bb.n

bb.n:                                             ; preds = %.lr.ph334
  %.val266 = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.ev = getelementptr i8, ptr %.val266, i64 8
  %.val230.val = load ptr, ptr %i.ev, align 8, !tbaa !37
  %i.ew = sub i32 %.5332, %.val259.pn             ; 2 uses
  %i.ex = getelementptr i8, ptr %.val266, i64 4
  %.val266.val = load i32, ptr %i.ex, align 4, !tbaa !35
  %i.ey = add i32 %i.ew, %.val266.val
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.val230.val, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !32
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [12 x i8], ptr %.val229, i64 %i.fc
  %.val248 = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.fe = getelementptr i8, ptr %.val248, i64 8
  %.val278.val = load ptr, ptr %i.fe, align 8, !tbaa !37
  %i.ff = getelementptr i8, ptr %.val248, i64 4
  %.val248.val = load i32, ptr %i.ff, align 4, !tbaa !35
  %i.fg = add i32 %i.ew, %.val248.val
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val278.val, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [12 x i8], ptr %.val229, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fd, align 4
  %i.fn = and i64 %i.fm, 1073741824
  %i.fo = load i64, ptr %i.fl, align 4
  %i.fp = and i64 %i.fo, -1073741825
  %i.fq = or disjoint i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fl, align 4
  %i.fr = add nuw nsw i32 %.5332, 1               ; 2 uses
  %.val259 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.fs = icmp slt i32 %i.fr, %.val259
  br i1 %i.fs, label %.lr.ph334, label %.critedge10, !llvm.loop !92

.critedge10:                                      ; preds = %.lr.ph334, %bb.n, %.critedge8
  %.val260308396 = phi i32 [ %.val259330, %.critedge8 ], [ %.val259.pn, %.lr.ph334 ], [ %.val259, %bb.n ]
  %i.ft = add nuw nsw i32 %.0184336, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ft, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !93

._crit_edge:                                      ; preds = %.critedge10, %Vec_BitStart.exit
  %.1.lcssa = phi i32 [ %.0.lcssa, %Vec_BitStart.exit ], [ %.2.lcssa, %.critedge10 ]
  %i.fu = tail call ptr @Gia_ManStart(i32 noundef 10000) #19 ; 9 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !47    ; 3 uses
  %.not.i286 = icmp eq ptr %i.fv, null
  br i1 %.not.i286, label %Abc_UtilStrsav.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.fw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fv) #20
  %i.fx = add i64 %i.fw, 1
  %i.fy = tail call noalias ptr @malloc(i64 noundef %i.fx) #18 ; 2 uses
  %i.fz = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull readonly dereferenceable(1) %i.fv) #19 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %._crit_edge, %bb.o
  %i.ga = phi ptr [ %i.fy, %bb.o ], [ null, %._crit_edge ]
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !47
  %.val285 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.val285.fr = freeze ptr %.val285               ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val285.fr, i64 8
  store i32 1, ptr %i.gb, align 4, !tbaa !51
  %.val245 = load i32, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  %i.gc = getelementptr i8, ptr %0, i64 64        ; 5 uses
  %.val246 = load ptr, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  %i.gd = getelementptr i8, ptr %.val246, i64 4
  %.val246.val = load i32, ptr %i.gd, align 4, !tbaa !35
  %i.ge = sub nsw i32 %.val246.val, %.val245      ; 3 uses
  %.not201 = icmp eq ptr %.val285.fr, null
  %i.gf = icmp slt i32 %i.ge, 1
  %or.cond293340 = or i1 %.not201, %i.gf
  br i1 %or.cond293340, label %.critedge12.preheader, label %.lr.ph342.split.preheader

.lr.ph342.split.preheader:                        ; preds = %Abc_UtilStrsav.exit
  %i.gg = getelementptr i8, ptr %.val246, i64 8
  %.val276.val = load ptr, ptr %i.gg, align 8, !tbaa !37 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ge to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.gh = icmp ult i32 %i.ge, 4
  br i1 %i.gh, label %.lr.ph342.split.epil.preheader, label %.lr.ph342.split.preheader.new

.lr.ph342.split.preheader.new:                    ; preds = %.lr.ph342.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph342.split

.critedge12.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph342.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge12.preheader, label %.lr.ph342.split.epil.preheader

.lr.ph342.split.epil.preheader:                   ; preds = %.critedge12.preheader.loopexit.unr-lcssa, %.lr.ph342.split.preheader
  %indvars.iv382.epil.init = phi i64 [ 0, %.lr.ph342.split.preheader ], [ %indvars.iv.next383.3, %.critedge12.preheader.loopexit.unr-lcssa ]
  %lcmp.mod421 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod421)
  br label %.lr.ph342.split.epil

.lr.ph342.split.epil:                             ; preds = %.lr.ph342.split.epil, %.lr.ph342.split.epil.preheader
  %indvars.iv382.epil = phi i64 [ %indvars.iv382.epil.init, %.lr.ph342.split.epil.preheader ], [ %indvars.iv.next383.epil, %.lr.ph342.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph342.split.epil.preheader ], [ %epil.iter.next, %.lr.ph342.split.epil ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.val276.val, i64 %indvars.iv382.epil
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !32
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [12 x i8], ptr %.val285.fr, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 1, ptr %i.gm, align 4, !tbaa !51
  %indvars.iv.next383.epil = add nuw nsw i64 %indvars.iv382.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge12.preheader, label %.lr.ph342.split.epil, !llvm.loop !94

.critedge12.preheader:                            ; preds = %.critedge12.preheader.loopexit.unr-lcssa, %.lr.ph342.split.epil, %Abc_UtilStrsav.exit
  %i.gn = icmp sgt i32 %.val245, 0
  br i1 %i.gn, label %.lr.ph346, label %.critedge14

.lr.ph342.split:                                  ; preds = %.lr.ph342.split, %.lr.ph342.split.preheader.new
  %indvars.iv382 = phi i64 [ 0, %.lr.ph342.split.preheader.new ], [ %indvars.iv.next383.3, %.lr.ph342.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph342.split.preheader.new ], [ %niter.next.3, %.lr.ph342.split ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val276.val, i64 %indvars.iv382
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !32
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [12 x i8], ptr %.val285.fr, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 1, ptr %i.gs, align 4, !tbaa !51
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val276.val, i64 %indvars.iv382
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !32
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [12 x i8], ptr %.val285.fr, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 1, ptr %i.gy, align 4, !tbaa !51
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.val276.val, i64 %indvars.iv382
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !32
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [12 x i8], ptr %.val285.fr, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i32 1, ptr %i.he, align 4, !tbaa !51
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.val276.val, i64 %indvars.iv382
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !32
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [12 x i8], ptr %.val285.fr, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 1, ptr %i.hk, align 4, !tbaa !51
  %indvars.iv.next383.3 = add nuw nsw i64 %indvars.iv382, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge12.preheader.loopexit.unr-lcssa, label %.lr.ph342.split, !llvm.loop !95

.lr.ph346:                                        ; preds = %.critedge12.preheader, %.critedge12
  %.val258345 = phi i32 [ %.val258, %.critedge12 ], [ %.val245, %.critedge12.preheader ]
  %.7344 = phi i32 [ %i.ia, %.critedge12 ], [ 0, %.critedge12.preheader ] ; 2 uses
  %.val273 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not202 = icmp eq ptr %.val273, null
  br i1 %.not202, label %.critedge14, label %.critedge12

.critedge12:                                      ; preds = %.lr.ph346
  %.val244 = load ptr, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  %i.hl = getelementptr i8, ptr %.val244, i64 8
  %.val274.val = load ptr, ptr %i.hl, align 8, !tbaa !37
  %i.hm = getelementptr i8, ptr %.val244, i64 4
  %.val244.val = load i32, ptr %i.hm, align 4, !tbaa !35
  %i.hn = sub i32 %.7344, %.val258345
  %i.ho = add i32 %i.hn, %.val244.val
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %.val274.val, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !32
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [12 x i8], ptr %.val273, i64 %i.hs ; 2 uses
  %i.hu = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.fu)
  %i.hv = load i64, ptr %i.ht, align 4
  %i.hw = and i64 %i.hv, 1073741824
  %.not211 = icmp eq i64 %i.hw, 0
  %i.hx = zext i1 %.not211 to i32
  %i.hy = xor i32 %i.hu, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !51
  %i.ia = add nuw nsw i32 %.7344, 1               ; 2 uses
  %.val258 = load i32, ptr %i.b, align 8, !tbaa !38 ; 2 uses
  %i.ib = icmp slt i32 %i.ia, %.val258
  br i1 %i.ib, label %.lr.ph346, label %.critedge14, !llvm.loop !96

.critedge14:                                      ; preds = %.lr.ph346, %.critedge12, %.critedge12.preheader
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.fu) #19
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !42
  %.not203370 = icmp sgt i32 %4, %i.id
  br i1 %.not203370, label %.critedge21._crit_edge, label %.preheader294.lr.ph

.preheader294.lr.ph:                              ; preds = %.critedge14
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.val241347.pre = load i32, ptr %i.b, align 8, !tbaa !38
  br label %.preheader294

.preheader294:                                    ; preds = %.preheader294.lr.ph, %.critedge23
  %.val241347 = phi i32 [ %.val241347.pre, %.preheader294.lr.ph ], [ %.val241347402, %.critedge23 ]
  %.3372 = phi i32 [ %.1.lcssa, %.preheader294.lr.ph ], [ %.4.lcssa, %.critedge23 ] ; 2 uses
  %.1185371 = phi i32 [ %4, %.preheader294.lr.ph ], [ %i.ni, %.critedge23 ] ; 3 uses
  %.val242348 = load ptr, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  %i.ih = getelementptr i8, ptr %.val242348, i64 4
  %.val242.val349 = load i32, ptr %i.ih, align 4, !tbaa !35
  %i.ii = icmp sgt i32 %.val242.val349, %.val241347
  br i1 %i.ii, label %.lr.ph353, label %.critedge16

.lr.ph353:                                        ; preds = %.preheader294, %bb.p
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %bb.p ], [ 0, %.preheader294 ] ; 2 uses
  %.val242352 = phi ptr [ %.val242, %bb.p ], [ %.val242348, %.preheader294 ]
  %.4351 = phi i32 [ %i.io, %bb.p ], [ %.3372, %.preheader294 ] ; 4 uses
  %.val271 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %.not204 = icmp eq ptr %.val271, null
  br i1 %.not204, label %.critedge16, label %bb.p

bb.p:                                             ; preds = %.lr.ph353
  %i.ij = getelementptr i8, ptr %.val242352, i64 8
  %.val272.val = load ptr, ptr %i.ij, align 8, !tbaa !37
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.val272.val, i64 %indvars.iv386
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !32
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [12 x i8], ptr %.val271, i64 %i.im ; 2 uses
  %i.io = add nsw i32 %.4351, 1                   ; 2 uses
  %i.ip = ashr i32 %.4351, 5
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !32
  %i.it = and i32 %.4351, 31
  %i.iu = lshr i32 %i.is, %i.it
  %i.iv = load i64, ptr %i.in, align 4
  %i.iw = shl i32 %i.iu, 30
  %i.ix = and i32 %i.iw, 1073741824
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = and i64 %i.iv, -1073741825
  %i.ja = or disjoint i64 %i.iz, %i.iy
  store i64 %i.ja, ptr %i.in, align 4
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %.val241 = load i32, ptr %i.b, align 8, !tbaa !38
  %.val242 = load ptr, ptr %i.gc, align 8, !tbaa !36 ; 2 uses
  %i.jb = getelementptr i8, ptr %.val242, i64 4
  %.val242.val = load i32, ptr %i.jb, align 4, !tbaa !35
  %i.jc = sub nsw i32 %.val242.val, %.val241
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next387, %i.jd
  br i1 %i.je, label %.lr.ph353, label %.critedge16, !llvm.loop !97

.critedge16:                                      ; preds = %.lr.ph353, %bb.p, %.preheader294
  %.4.lcssa = phi i32 [ %.3372, %.preheader294 ], [ %i.io, %bb.p ], [ %.4351, %.lr.ph353 ]
  %i.jf = load i32, ptr %i.if, align 8, !tbaa !29
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph358, label %.critedge18

.lr.ph358:                                        ; preds = %.critedge16, %bb.z
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %bb.z ], [ 0, %.critedge16 ] ; 2 uses
  %.val221 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.jh = getelementptr inbounds nuw [12 x i8], ptr %.val221, i64 %indvars.iv389 ; 5 uses
  %.not205 = icmp eq ptr %.val221, null
  br i1 %.not205, label %.critedge18, label %bb.q

bb.q:                                             ; preds = %.lr.ph358
  %.val255 = load i64, ptr %i.jh, align 4         ; 6 uses
  %i.ji = and i64 %.val255, 2147483648
  %.not.i287 = icmp ne i64 %i.ji, 0
  %i.jj = and i64 %.val255, 536870911             ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 536870911
  %narrow.i288.not = or i1 %.not.i287, %i.jk
  br i1 %narrow.i288.not, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jl = sub nsw i64 0, %i.jj
  %i.jm = getelementptr inbounds [12 x i8], ptr %i.jh, i64 %i.jl ; 4 uses
  %i.jn = load i64, ptr %i.jm, align 4
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = lshr i32 %i.jo, 30
  %i.jq = trunc i64 %.val255 to i32
  %i.jr = lshr i32 %i.jq, 29
  %i.js = xor i32 %i.jp, %i.jr                    ; 2 uses
  %i.jt = lshr i64 %.val255, 32
  %i.ju = and i64 %i.jt, 536870911
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds [12 x i8], ptr %i.jh, i64 %i.jv ; 4 uses
end_hunk_1
