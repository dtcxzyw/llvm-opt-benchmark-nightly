Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_quantize:bb.a
  %wide.trip.count587 = zext nneg i32 %2 to i64
  %wide.trip.count582 = zext nneg i32 %3 to i64
  br label %bb.t

bb.o:                                             ; preds = %.lr.ph493, %bb.s
  %indvars.iv574 = phi i64 [ 0, %.lr.ph493 ], [ %indvars.iv.next575, %bb.s ] ; 5 uses
  %.4397492 = phi i32 [ %2, %.lr.ph493 ], [ %.6399, %bb.s ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv574
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !26
  %i.cr = zext i8 %i.cq to i32
  %.not439 = icmp sgt i32 %3, %i.cr
  br i1 %.not439, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = sext i32 %.4397492 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %bb.q ], [ %i.cs, %bb.p ]
  %indvars.iv.next572 = add nsw i64 %indvars.iv571, -1 ; 6 uses
  %i.ct = getelementptr inbounds i8, ptr %i.aa, i64 %indvars.iv.next572
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %.not440 = icmp ult i8 %i.cu, %i.cb
  br i1 %.not440, label %bb.r, label %bb.q, !llvm.loop !109

bb.r:                                             ; preds = %bb.q
  %i.cv = trunc nsw i64 %indvars.iv.next572 to i32
  %i.cw = getelementptr inbounds [3 x i8], ptr %1, i64 %indvars.iv.next572 ; 2 uses
  %.sroa.0.0.copyload = load <3 x i8>, ptr %i.cw, align 1, !tbaa !26
  %i.cx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv574 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cw, ptr noundef nonnull align 1 dereferenceable(3) %i.cx, i64 3, i1 false), !tbaa.struct !126
  store <3 x i8> %.sroa.0.0.copyload, ptr %i.cx, align 1, !tbaa !26
  %i.cy = trunc i64 %indvars.iv574 to i8
  %i.cz = load ptr, ptr %i.ca, align 8, !tbaa !34
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next572
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !26
  %i.db = trunc i64 %indvars.iv.next572 to i8
  %i.dc = load ptr, ptr %i.ca, align 8, !tbaa !34
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv574
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !26
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %.6399 = phi i32 [ %i.cv, %bb.r ], [ %.4397492, %bb.o ]
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next575, %wide.trip.count577
  br i1 %exitcond578.not, label %.preheader468, label %bb.o, !llvm.loop !110

bb.t:                                             ; preds = %.lr.ph502, %bb.v
  %indvars.iv584 = phi i64 [ 0, %.lr.ph502 ], [ %indvars.iv.next585, %bb.v ] ; 2 uses
  %i.de = load ptr, ptr %i.cl, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv584 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26  ; 2 uses
  %i.dh = zext i8 %i.dg to i32
  %.not438 = icmp sgt i32 %3, %i.dh
  br i1 %.not438, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = zext i8 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.di ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !40
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !41
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !42
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  br i1 %i.co, label %.lr.ph498.preheader, label %._crit_edge499

.lr.ph498.preheader:                              ; preds = %bb.u
  %i.ds = load i8, ptr %i.cm, align 1, !tbaa !41
  %i.dt = zext i8 %i.ds to i32
  %i.du = sub nsw i32 %i.do, %i.dt
  %i.dv = tail call i32 @llvm.abs.i32(i32 %i.du, i1 true)
  %i.dw = load i8, ptr %1, align 1, !tbaa !40
  %i.dx = zext i8 %i.dw to i32
  %i.dy = sub nsw i32 %i.dl, %i.dx
  %i.dz = tail call i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %i.ea = add nuw nsw i32 %i.dv, %i.dz
  %i.eb = load i8, ptr %i.cn, align 1, !tbaa !42
  %i.ec = zext i8 %i.eb to i32
  %i.ed = sub nsw i32 %i.dr, %i.ec
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = add nuw nsw i32 %i.ea, %i.ee
  br label %.lr.ph498

.lr.ph498:                                        ; preds = %.lr.ph498.preheader, %.lr.ph498
  %indvars.iv579 = phi i64 [ 1, %.lr.ph498.preheader ], [ %indvars.iv.next580, %.lr.ph498 ] ; 3 uses
  %.0381496 = phi i32 [ 0, %.lr.ph498.preheader ], [ %spec.select444, %.lr.ph498 ]
  %.0384494 = phi i32 [ %i.ef, %.lr.ph498.preheader ], [ %spec.select, %.lr.ph498 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv579 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !40
  %i.ei = zext i8 %i.eh to i32
  %i.ej = sub nsw i32 %i.dl, %i.ei
  %i.ek = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 true)
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !41
  %i.en = zext i8 %i.em to i32
  %i.eo = sub nsw i32 %i.do, %i.en
  %i.ep = tail call i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.eq = add nuw nsw i32 %i.ep, %i.ek
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !42
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.dr, %i.et
  %i.ev = tail call i32 @llvm.abs.i32(i32 %i.eu, i1 true)
  %i.ew = add nuw nsw i32 %i.eq, %i.ev            ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %.0384494
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %.0384494)
  %i.ey = trunc nuw nsw i64 %indvars.iv579 to i32
  %spec.select444 = select i1 %i.ex, i32 %i.ey, i32 %.0381496 ; 2 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %exitcond583.not = icmp eq i64 %indvars.iv.next580, %wide.trip.count582
  br i1 %exitcond583.not, label %._crit_edge499.loopexit, label %.lr.ph498, !llvm.loop !111

._crit_edge499.loopexit:                          ; preds = %.lr.ph498
  %i.ez = trunc i32 %spec.select444 to i8
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %bb.u
  %.0381.lcssa = phi i8 [ 0, %bb.u ], [ %i.ez, %._crit_edge499.loopexit ]
  store i8 %.0381.lcssa, ptr %i.df, align 1, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %._crit_edge499
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1 ; 2 uses
  %exitcond588.not = icmp eq i64 %indvars.iv.next585, %wide.trip.count587
  br i1 %exitcond588.not, label %.loopexit469, label %bb.t, !llvm.loop !112

.loopexit469:                                     ; preds = %bb.n, %bb.v, %.preheader472, %.preheader468
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.aa) #11
  br label %bb.at

bb.w:                                             ; preds = %bb.g
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 18 uses
  store ptr %i.aa, ptr %i.fa, align 8, !tbaa !127
  %i.fb = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.z) #11
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 15 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !128
  %i.fd = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.fd, label %.lr.ph505.preheader, label %.preheader466.lr.ph

.lr.ph505.preheader:                              ; preds = %bb.w
  %wide.trip.count592 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter731 = and i64 %wide.trip.count592, 1
  %i.fe = icmp eq i32 %2, 1
  br i1 %i.fe, label %.lr.ph505.epil.preheader, label %.lr.ph505.preheader.new

.lr.ph505.preheader.new:                          ; preds = %.lr.ph505.preheader
  %unroll_iter734 = and i64 %wide.trip.count592, 2147483646
  br label %.lr.ph505

.lr.ph505:                                        ; preds = %.lr.ph505, %.lr.ph505.preheader.new
  %indvars.iv589 = phi i64 [ 0, %.lr.ph505.preheader.new ], [ %indvars.iv.next590.1, %.lr.ph505 ] ; 5 uses
  %niter735 = phi i64 [ 0, %.lr.ph505.preheader.new ], [ %niter735.next.1, %.lr.ph505 ]
  %i.ff = trunc i64 %indvars.iv589 to i8          ; 2 uses
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv589
  store i8 %i.ff, ptr %i.fh, align 1, !tbaa !26
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv589
  store i8 %i.ff, ptr %i.fj, align 1, !tbaa !26
  %indvars.iv.next590 = or disjoint i64 %indvars.iv589, 1 ; 3 uses
  %i.fk = trunc i64 %indvars.iv.next590 to i8     ; 2 uses
  %i.fl = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next590
  store i8 %i.fk, ptr %i.fm, align 1, !tbaa !26
  %i.fn = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.next590
  store i8 %i.fk, ptr %i.fo, align 1, !tbaa !26
  %indvars.iv.next590.1 = add nuw nsw i64 %indvars.iv589, 2 ; 2 uses
  %niter735.next.1 = add i64 %niter735, 2         ; 2 uses
  %niter735.ncmp.1 = icmp eq i64 %niter735.next.1, %unroll_iter734
  br i1 %niter735.ncmp.1, label %.preheader466.lr.ph.loopexit.unr-lcssa, label %.lr.ph505, !llvm.loop !113

.preheader466.lr.ph.loopexit.unr-lcssa:           ; preds = %.lr.ph505
  %lcmp.mod732.not = icmp eq i64 %xtraiter731, 0
  br i1 %lcmp.mod732.not, label %.preheader466.lr.ph, label %.lr.ph505.epil.preheader

.lr.ph505.epil.preheader:                         ; preds = %.preheader466.lr.ph.loopexit.unr-lcssa, %.lr.ph505.preheader
  %indvars.iv589.epil.init = phi i64 [ 0, %.lr.ph505.preheader ], [ %indvars.iv.next590.1, %.preheader466.lr.ph.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod733 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod733)
  %i.fp = trunc i64 %indvars.iv589.epil.init to i8 ; 2 uses
  %i.fq = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %indvars.iv589.epil.init
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !26
  %i.fs = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv589.epil.init
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !26
  br label %.preheader466.lr.ph

.preheader466.lr.ph:                              ; preds = %.lr.ph505.epil.preheader, %.preheader466.lr.ph.loopexit.unr-lcssa, %bb.w
  %i.fu = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 6152) #11 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %wide.trip.count621 = zext nneg i32 %2 to i64
  br label %.preheader466

.preheader466:                                    ; preds = %.preheader466.lr.ph, %bb.as
  %indvars.iv632 = phi i64 [ 97, %.preheader466.lr.ph ], [ %indvars.iv.next633, %bb.as ] ; 4 uses
  %.0368529 = phi ptr [ null, %.preheader466.lr.ph ], [ %.9, %bb.as ] ; 2 uses
  %.0369528 = phi i32 [ %2, %.preheader466.lr.ph ], [ %.6375, %bb.as ] ; 8 uses
  %.0376524 = phi i32 [ 96, %.preheader466.lr.ph ], [ %i.nq, %bb.as ] ; 2 uses
  %i.fw = tail call i32 @llvm.smax.i32(i32 %.0369528, i32 1)
  %smax = add nsw i32 %i.fw, -1                   ; 2 uses
  %wide.trip.count604 = zext nneg i32 %smax to i64
  %wide.trip.count599 = zext i32 %.0369528 to i64
  %exitcond605.not704 = icmp eq i32 %smax, 0
  br i1 %exitcond605.not704, label %._crit_edge708, label %.lr.ph510

bb.x:                                             ; preds = %._crit_edge511
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594706, 1
  %exitcond605.not = icmp eq i64 %indvars.iv.next602, %wide.trip.count604
  br i1 %exitcond605.not, label %._crit_edge708, label %.lr.ph510

.lr.ph510:                                        ; preds = %.preheader466, %bb.x
  %.1707 = phi ptr [ %.4.ph, %bb.x ], [ %.0368529, %.preheader466 ]
  %indvars.iv594706 = phi i64 [ %indvars.iv.next595, %bb.x ], [ 1, %.preheader466 ] ; 2 uses
  %indvars.iv601705 = phi i64 [ %indvars.iv.next602, %bb.x ], [ 0, %.preheader466 ] ; 3 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601705, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv601705 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph510, %bb.ab
  %indvars.iv596 = phi i64 [ %indvars.iv594706, %.lr.ph510 ], [ %indvars.iv.next597, %bb.ab ] ; 3 uses
  %.2507 = phi ptr [ %.1707, %.lr.ph510 ], [ %.4.ph, %bb.ab ]
  %i.ga = load i8, ptr %i.fx, align 1, !tbaa !40
  %i.gb = zext i8 %i.ga to i32
  %i.gc = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv596 ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !40
  %i.ge = zext i8 %i.gd to i32
  %i.gf = sub nsw i32 %i.gb, %i.ge
  %i.gg = tail call i32 @llvm.abs.i32(i32 %i.gf, i1 true)
  %i.gh = load i8, ptr %i.fy, align 1, !tbaa !41
  %i.gi = zext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !41
  %i.gl = zext i8 %i.gk to i32
  %i.gm = sub nsw i32 %i.gi, %i.gl
  %i.gn = tail call i32 @llvm.abs.i32(i32 %i.gm, i1 true)
  %i.go = add nuw nsw i32 %i.gn, %i.gg
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !42
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !42
  %i.gt = zext i8 %i.gs to i32
  %i.gu = sub nsw i32 %i.gq, %i.gt
  %i.gv = tail call i32 @llvm.abs.i32(i32 %i.gu, i1 true)
  %i.gw = add nuw nsw i32 %i.go, %i.gv            ; 2 uses
  %.not425 = icmp samesign ugt i32 %i.gw, %.0376524
  br i1 %.not425, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef 16) #11 ; 6 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %.thread457, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gz = zext nneg i32 %i.gw to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gz ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !130
  store ptr %i.hb, ptr %i.gx, align 8, !tbaa !132
  %i.hc = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv601705
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !26
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i8 %i.he, ptr %i.hf, align 8, !tbaa !133
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv596
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !26
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 9
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !134
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !130
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.4.ph = phi ptr [ %.2507, %bb.y ], [ %i.gx, %bb.aa ] ; 4 uses
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge511, label %bb.y, !llvm.loop !114

._crit_edge511:                                   ; preds = %bb.ab
  %i.hj = icmp eq ptr %.4.ph, null
  br i1 %i.hj, label %.thread457, label %bb.x

._crit_edge708:                                   ; preds = %bb.x, %.preheader466
  %.1.lcssa = phi ptr [ %.0368529, %.preheader466 ], [ %.4.ph, %bb.x ] ; 7 uses
  %.not426 = icmp eq ptr %.1.lcssa, null
  br i1 %.not426, label %.thread457, label %.preheader464

.preheader464:                                    ; preds = %._crit_edge708
  br i1 %i.i, label %.preheader464.split.us, label %.preheader464.split

.preheader464.split.us:                           ; preds = %.preheader464
  br i1 %i.fd, label %.preheader464.split.us.split.us, label %.preheader464.split.us.split

.preheader464.split.us.split.us:                  ; preds = %.preheader464.split.us, %.split.us.us.split.us.us.thread
  %indvars.iv623 = phi i64 [ %indvars.iv.next624, %.split.us.us.split.us.us.thread ], [ 0, %.preheader464.split.us ] ; 2 uses
  %.1370518.us.us = phi i32 [ %.5374.us.us, %.split.us.us.split.us.us.thread ], [ %.0369528, %.preheader464.split.us ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv623
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !130 ; 2 uses
  %.not428.us.us = icmp eq ptr %i.hl, null
  br i1 %.not428.us.us, label %.split.us.us.split.us.us.thread, label %.preheader463.us.us

.preheader463.us.us:                              ; preds = %.preheader464.split.us.split.us, %bb.aj
  %.0366516.us.us.us.us = phi ptr [ %i.jy, %bb.aj ], [ %i.hl, %.preheader464.split.us.split.us ] ; 3 uses
  %.2371515.us.us.us.us = phi i32 [ %.3372.us.us.us.us, %bb.aj ], [ %.1370518.us.us, %.preheader464.split.us.split.us ] ; 6 uses
  %i.hm = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0366516.us.us.us.us, i64 8
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !133 ; 3 uses
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !26
  %i.hs = zext i8 %i.hr to i32
  %i.ht = icmp sgt i32 %.2371515.us.us.us.us, %i.hs
  br i1 %i.ht, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %.preheader463.us.us
  %i.hu = getelementptr inbounds nuw i8, ptr %.0366516.us.us.us.us, i64 9
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !134 ; 3 uses
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !26
  %i.hz = zext i8 %i.hy to i32
  %i.ia = icmp samesign ugt i32 %.2371515.us.us.us.us, %i.hz
  br i1 %i.ia, label %.preheader.us.us.us.us, label %bb.ai

.preheader.us.us.us.us:                           ; preds = %bb.ac
  %i.ib = and i32 %.2371515.us.us.us.us, 1
  %.not430.us.us.us.us = icmp eq i32 %i.ib, 0     ; 2 uses
  %.446.us.us.us.us = select i1 %.not430.us.us.us.us, i8 %i.hv, i8 %i.ho ; 2 uses
  %.447.us.us.us.us = select i1 %.not430.us.us.us.us, i8 %i.ho, i8 %i.hv
  %i.ic = add nsw i32 %.2371515.us.us.us.us, -1   ; 4 uses
  %i.id = zext i8 %.446.us.us.us.us to i64        ; 6 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !26
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.ig
  %i.ii = zext nneg i32 %i.ic to i64              ; 4 uses
  %i.ij = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.ii
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ih, ptr noundef nonnull align 1 dereferenceable(3) %i.ij, i64 3, i1 false), !tbaa.struct !126
  %i.ik = zext i8 %.447.us.us.us.us to i64
  %.pre653 = load ptr, ptr %i.fv, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.preheader.us.us.us.us
  %i.il = phi ptr [ %i.jc, %bb.ah ], [ %.pre653, %.preheader.us.us.us.us ] ; 2 uses
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %bb.ah ], [ 0, %.preheader.us.us.us.us ] ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv618 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !26  ; 2 uses
  %i.io = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.id
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !26
  %i.ir = icmp eq i8 %i.in, %i.iq
  br i1 %i.ir, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ik
  %i.it = load i8, ptr %i.is, align 1, !tbaa !26
  store i8 %i.it, ptr %i.im, align 1, !tbaa !26
  %.pre654 = load ptr, ptr %i.fv, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre654, i64 %indvars.iv618
  %.pre655 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.iu = phi i8 [ %.pre655, %bb.ae ], [ %i.in, %bb.ad ]
  %i.iv = phi ptr [ %.pre654, %bb.ae ], [ %i.il, %bb.ad ] ; 2 uses
  %i.iw = zext i8 %i.iu to i32
  %i.ix = icmp eq i32 %i.ic, %i.iw
  br i1 %i.ix, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %indvars.iv618
  %i.iz = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.id
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !26
  store i8 %i.jb, ptr %i.iy, align 1, !tbaa !26
  %.pre652 = load ptr, ptr %i.fv, align 8, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jc = phi ptr [ %.pre652, %bb.ag ], [ %i.iv, %bb.af ]
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %wide.trip.count621
  br i1 %exitcond622.not, label %..loopexit_crit_edge.us.us.us.us, label %bb.ad, !llvm.loop !115

..loopexit_crit_edge.us.us.us.us:                 ; preds = %bb.ah
  %i.jd = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.id
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !26
  %i.jg = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ii
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !26
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jj
  store i8 %i.jf, ptr %i.jk, align 1, !tbaa !26
  %i.jl = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ii
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !26
  %i.jo = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.id
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !26
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jr
  store i8 %i.jn, ptr %i.js, align 1, !tbaa !26
  %i.jt = trunc i32 %i.ic to i8
  %i.ju = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.id
  store i8 %i.jt, ptr %i.jv, align 1, !tbaa !26
  %i.jw = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ii
  store i8 %.446.us.us.us.us, ptr %i.jx, align 1, !tbaa !26
  br label %bb.ai

bb.ai:                                            ; preds = %..loopexit_crit_edge.us.us.us.us, %bb.ac, %.preheader463.us.us
  %.3372.us.us.us.us = phi i32 [ %i.ic, %..loopexit_crit_edge.us.us.us.us ], [ %.2371515.us.us.us.us, %bb.ac ], [ %.2371515.us.us.us.us, %.preheader463.us.us ] ; 4 uses
  %.not431.us.us.us.us = icmp sgt i32 %.3372.us.us.us.us, %3
  br i1 %.not431.us.us.us.us, label %bb.aj, label %.thread457

bb.aj:                                            ; preds = %bb.ai
  %i.jy = load ptr, ptr %.0366516.us.us.us.us, align 8, !tbaa !132 ; 2 uses
  %.not429.us.us.us.us = icmp eq ptr %i.jy, null
  br i1 %.not429.us.us.us.us, label %.split.us.us.split.us.us.thread, label %.preheader463.us.us, !llvm.loop !116

.split.us.us.split.us.us.thread:                  ; preds = %bb.aj, %.preheader464.split.us.split.us
  %.5374.us.us = phi i32 [ %.1370518.us.us, %.preheader464.split.us.split.us ], [ %.3372.us.us.us.us, %bb.aj ] ; 2 uses
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %indvars.iv632
  br i1 %exitcond627.not, label %.thread457, label %.preheader464.split.us.split.us, !llvm.loop !117

.preheader464.split.us.split:                     ; preds = %.preheader464.split.us, %.split.us.us.split.thread
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %.split.us.us.split.thread ], [ 0, %.preheader464.split.us ] ; 2 uses
  %.1370518.us = phi i32 [ %.5374.us, %.split.us.us.split.thread ], [ %.0369528, %.preheader464.split.us ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv613
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !130 ; 2 uses
  %.not428.us = icmp eq ptr %i.ka, null
  br i1 %.not428.us, label %.split.us.us.split.thread, label %.preheader463.us

.preheader463.us:                                 ; preds = %.preheader464.split.us.split, %bb.am
  %.0366516.us.us = phi ptr [ %i.ls, %bb.am ], [ %i.ka, %.preheader464.split.us.split ] ; 3 uses
  %.2371515.us.us = phi i32 [ %.3372.us.us, %bb.am ], [ %.1370518.us, %.preheader464.split.us.split ] ; 6 uses
  %i.kb = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0366516.us.us, i64 8
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !133 ; 2 uses
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !26
  %i.kh = zext i8 %i.kg to i32
  %i.ki = icmp sgt i32 %.2371515.us.us, %i.kh
  br i1 %i.ki, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader463.us
  %i.kj = getelementptr inbounds nuw i8, ptr %.0366516.us.us, i64 9
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !134 ; 2 uses
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !26
  %i.ko = zext i8 %i.kn to i32
  %i.kp = icmp samesign ugt i32 %.2371515.us.us, %i.ko
  br i1 %i.kp, label %.preheader.us.us, label %bb.al

.preheader.us.us:                                 ; preds = %bb.ak
  %i.kq = and i32 %.2371515.us.us, 1
  %.not430.us.us = icmp eq i32 %i.kq, 0
  %.446.us.us = select i1 %.not430.us.us, i8 %i.kk, i8 %i.kd ; 2 uses
  %i.kr = add nsw i32 %.2371515.us.us, -1         ; 3 uses
  %i.ks = zext i8 %.446.us.us to i64              ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ks ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !26
  %i.kv = zext i8 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.kv
  %i.kx = zext nneg i32 %i.kr to i64              ; 4 uses
  %i.ky = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.kx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kw, ptr noundef nonnull align 1 dereferenceable(3) %i.ky, i64 3, i1 false), !tbaa.struct !126
  %i.kz = load i8, ptr %i.kt, align 1, !tbaa !26
  %i.la = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kx
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !26
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ld
  store i8 %i.kz, ptr %i.le, align 1, !tbaa !26
  %i.lf = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kx
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !26
  %i.li = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ks
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !26
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ll
  store i8 %i.lh, ptr %i.lm, align 1, !tbaa !26
  %i.ln = trunc i32 %i.kr to i8
  %i.lo = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ks
  store i8 %i.ln, ptr %i.lp, align 1, !tbaa !26
  %i.lq = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.kx
  store i8 %.446.us.us, ptr %i.lr, align 1, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %.preheader.us.us, %bb.ak, %.preheader463.us
  %.3372.us.us = phi i32 [ %i.kr, %.preheader.us.us ], [ %.2371515.us.us, %bb.ak ], [ %.2371515.us.us, %.preheader463.us ] ; 4 uses
  %.not431.us.us = icmp sgt i32 %.3372.us.us, %3
  br i1 %.not431.us.us, label %bb.am, label %.thread457

bb.am:                                            ; preds = %bb.al
  %i.ls = load ptr, ptr %.0366516.us.us, align 8, !tbaa !132 ; 2 uses
  %.not429.us.us = icmp eq ptr %i.ls, null
  br i1 %.not429.us.us, label %.split.us.us.split.thread, label %.preheader463.us, !llvm.loop !116

.split.us.us.split.thread:                        ; preds = %bb.am, %.preheader464.split.us.split
  %.5374.us = phi i32 [ %.1370518.us, %.preheader464.split.us.split ], [ %.3372.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %indvars.iv632
  br i1 %exitcond617.not, label %.thread457, label %.preheader464.split.us.split, !llvm.loop !117

.preheader464.split:                              ; preds = %.preheader464, %.split.thread
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %.split.thread ], [ 0, %.preheader464 ] ; 2 uses
  %.1370518 = phi i32 [ %.5374, %.split.thread ], [ %.0369528, %.preheader464 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv606
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !130 ; 2 uses
  %.not428 = icmp eq ptr %i.lu, null
  br i1 %.not428, label %.split.thread, label %.preheader463

.preheader463:                                    ; preds = %.preheader464.split, %bb.aq
  %.0366516 = phi ptr [ %i.nm, %bb.aq ], [ %i.lu, %.preheader464.split ] ; 3 uses
  %.2371515 = phi i32 [ %.3372, %bb.aq ], [ %.1370518, %.preheader464.split ] ; 6 uses
  %i.lv = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0366516, i64 8
  %i.lx = load i8, ptr %i.lw, align 8, !tbaa !133 ; 2 uses
  %i.ly = zext i8 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !26
  %i.mb = zext i8 %i.ma to i32
  %i.mc = icmp sgt i32 %.2371515, %i.mb
  br i1 %i.mc, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.preheader463
  %i.md = getelementptr inbounds nuw i8, ptr %.0366516, i64 9
  %i.me = load i8, ptr %i.md, align 1, !tbaa !134 ; 2 uses
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !26
  %i.mi = zext i8 %i.mh to i32
  %i.mj = icmp samesign ugt i32 %.2371515, %i.mi
  br i1 %i.mj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mk = and i32 %.2371515, 1
  %.not430 = icmp eq i32 %i.mk, 0
  %.446 = select i1 %.not430, i8 %i.me, i8 %i.lx  ; 2 uses
  %i.ml = add nsw i32 %.2371515, -1               ; 3 uses
  %i.mm = zext i8 %.446 to i64                    ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mm ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !26
  %i.mp = zext i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mp
  %i.mr = zext nneg i32 %i.ml to i64              ; 4 uses
  %i.ms = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mq, ptr noundef nonnull align 1 dereferenceable(3) %i.ms, i64 3, i1 false), !tbaa.struct !126
  %i.mt = load i8, ptr %i.mn, align 1, !tbaa !26
  %i.mu = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mr
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !26
  %i.mx = zext i8 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mx
  store i8 %i.mt, ptr %i.my, align 1, !tbaa !26
  %i.mz = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mr
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !26
  %i.nc = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mm
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !26
  %i.nf = zext i8 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nf
  store i8 %i.nb, ptr %i.ng, align 1, !tbaa !26
  %i.nh = trunc i32 %i.ml to i8
  %i.ni = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.mm
  store i8 %i.nh, ptr %i.nj, align 1, !tbaa !26
  %i.nk = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.mr
  store i8 %.446, ptr %i.nl, align 1, !tbaa !26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.preheader463
  %.3372 = phi i32 [ %i.ml, %bb.ao ], [ %.2371515, %bb.an ], [ %.2371515, %.preheader463 ] ; 4 uses
  %.not431 = icmp sgt i32 %.3372, %3
  br i1 %.not431, label %bb.aq, label %.thread457

bb.aq:                                            ; preds = %bb.ap
  %i.nm = load ptr, ptr %.0366516, align 8, !tbaa !132 ; 2 uses
  %.not429 = icmp eq ptr %i.nm, null
  br i1 %.not429, label %.split.thread, label %.preheader463, !llvm.loop !116

.split.thread:                                    ; preds = %bb.aq, %.preheader464.split
  %.5374 = phi i32 [ %.1370518, %.preheader464.split ], [ %.3372, %bb.aq ] ; 2 uses
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1 ; 2 uses
  %exitcond612.not = icmp eq i64 %indvars.iv.next607, %indvars.iv632
  br i1 %exitcond612.not, label %.thread457, label %.preheader464.split, !llvm.loop !117

.thread457:                                       ; preds = %._crit_edge511, %.split.thread, %.split.us.us.split.thread, %.split.us.us.split.us.us.thread, %bb.z, %bb.ap, %bb.al, %bb.ai, %._crit_edge708
  %.6460 = phi ptr [ %.1.lcssa, %.split.thread ], [ %.1.lcssa, %bb.ai ], [ null, %._crit_edge708 ], [ %.1.lcssa, %.split.us.us.split.us.us.thread ], [ %.1.lcssa, %.split.us.us.split.thread ], [ %.1.lcssa, %bb.al ], [ %.1.lcssa, %bb.ap ], [ null, %bb.z ], [ null, %._crit_edge511 ]
  %.6375 = phi i32 [ %.5374, %.split.thread ], [ %.3372.us.us.us.us, %bb.ai ], [ %.0369528, %._crit_edge708 ], [ %.5374.us.us, %.split.us.us.split.us.us.thread ], [ %.5374.us, %.split.us.us.split.thread ], [ %.3372.us.us, %bb.al ], [ %.3372, %bb.ap ], [ %.0369528, %bb.z ], [ %.0369528, %._crit_edge511 ] ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.thread457, %.loopexit462
  %indvars.iv628 = phi i64 [ 0, %.thread457 ], [ %indvars.iv.next629, %.loopexit462 ] ; 2 uses
  %.7523 = phi ptr [ %.6460, %.thread457 ], [ %.9, %.loopexit462 ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv628 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !130 ; 2 uses
  %.not433 = icmp eq ptr %i.no, null
  br i1 %.not433, label %.loopexit462, label %.preheader461

.preheader461:                                    ; preds = %bb.ar, %.preheader461
  %.0362521 = phi ptr [ %i.np, %.preheader461 ], [ %i.no, %bb.ar ] ; 2 uses
  %i.np = load ptr, ptr %.0362521, align 8, !tbaa !132 ; 2 uses
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %.0362521) #11
  %.not434 = icmp eq ptr %i.np, null
  br i1 %.not434, label %.loopexit462, label %.preheader461, !llvm.loop !118

.loopexit462:                                     ; preds = %.preheader461, %bb.ar
  %.9 = phi ptr [ %.7523, %bb.ar ], [ null, %.preheader461 ] ; 2 uses
  store ptr null, ptr %i.nn, align 8, !tbaa !130
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next629, 769
  br i1 %exitcond631.not, label %bb.as, label %bb.ar, !llvm.loop !119

bb.as:                                            ; preds = %.loopexit462
  %i.nq = add nuw nsw i32 %.0376524, 96
  %i.nr = icmp sgt i32 %.6375, %3
  %indvars.iv.next633 = add nuw i64 %indvars.iv632, 96
  br i1 %i.nr, label %.preheader466, label %._crit_edge530, !llvm.loop !120

._crit_edge530:                                   ; preds = %bb.as
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.fu) #11
  %i.ns = load ptr, ptr %i.fc, align 8, !tbaa !128
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.ns) #11
  %i.nt = load ptr, ptr %i.fa, align 8, !tbaa !127
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.nt) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %.loopexit469, %._crit_edge530, %.loopexit476
  %.0390 = phi i32 [ %2, %.loopexit476 ], [ %3, %._crit_edge530 ], [ %3, %.loopexit469 ] ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !43
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nx = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 768) #11 ; 2 uses
  store ptr %i.nx, ptr %i.nu, align 8, !tbaa !43
  %i.ny = zext i32 %.0390 to i64
  %i.nz = mul nuw nsw i64 %i.ny, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nx, ptr nonnull align 1 %1, i64 %i.nz, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.oa = trunc i32 %.0390 to i16
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i16 %i.oa, ptr %i.ob, align 8, !tbaa !44
  br i1 %i.i, label %png_rtran_ok.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oc = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef 32768) #11
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !45
  %i.oe = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 32768) #11 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32768) %i.oe, i8 -1, i64 32768, i1 false)
  %i.of = icmp sgt i32 %.0390, 0
  br i1 %i.of, label %.lr.ph536.preheader, label %._crit_edge537

.lr.ph536.preheader:                              ; preds = %bb.aw
  %wide.trip.count650 = zext nneg i32 %.0390 to i64
  br label %.lr.ph536

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %bb.be
  %indvars.iv647 = phi i64 [ 0, %.lr.ph536.preheader ], [ %indvars.iv.next648, %bb.be ] ; 3 uses
  %i.og = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv647 ; 3 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !40
  %i.oi = lshr i8 %i.oh, 3                        ; 2 uses
  %i.oj = zext nneg i8 %i.oi to i32
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !41
  %i.om = lshr i8 %i.ol, 3                        ; 2 uses
  %i.on = zext nneg i8 %i.om to i32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 2
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !42
  %i.oq = lshr i8 %i.op, 3                        ; 2 uses
  %i.or = zext nneg i8 %i.oq to i32
  %i.os = trunc i64 %indvars.iv647 to i8
  %i.ot = zext nneg i8 %i.oq to i64               ; 2 uses
  %i.ou = zext nneg i8 %i.om to i64               ; 2 uses
  %i.ov = zext nneg i8 %i.oi to i64               ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph536, %bb.bd
  %indvars.iv643 = phi i64 [ 0, %.lr.ph536 ], [ %indvars.iv.next644, %bb.bd ] ; 5 uses
  %indvars645 = trunc i64 %indvars.iv643 to i32
  %i.ow = icmp samesign ugt i64 %indvars.iv643, %i.ov
  %i.ox = sub nuw nsw i32 %indvars645, %i.oj
  %i.oy = sub nuw nsw i64 %i.ov, %indvars.iv643
  %i.oz = trunc nuw nsw i64 %i.oy to i32
  %i.pa = select i1 %i.ow, i32 %i.ox, i32 %i.oz   ; 2 uses
  %i.pb = shl nuw nsw i64 %indvars.iv643, 10
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.bc
  %indvars.iv639 = phi i64 [ 0, %bb.ax ], [ %indvars.iv.next640, %bb.bc ] ; 5 uses
  %indvars641 = trunc i64 %indvars.iv639 to i32
  %i.pc = icmp samesign ugt i64 %indvars.iv639, %i.ou
  %i.pd = sub nuw nsw i32 %indvars641, %i.on
  %i.pe = sub nuw nsw i64 %i.ou, %indvars.iv639
  %i.pf = trunc nuw nsw i64 %i.pe to i32
  %i.pg = select i1 %i.pc, i32 %i.pd, i32 %i.pf   ; 2 uses
  %i.ph = add nuw nsw i32 %i.pg, %i.pa
  %i.pi = tail call i32 @llvm.umax.i32(i32 %i.pa, i32 %i.pg)
  %i.pj = shl nuw nsw i64 %indvars.iv639, 5
  %i.pk = add nuw nsw i64 %i.pj, %i.pb
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.bb
  %indvars.iv635 = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next636, %bb.bb ] ; 5 uses
  %indvars637 = trunc i64 %indvars.iv635 to i32
  %i.pl = add nuw nsw i64 %indvars.iv635, %i.pk   ; 2 uses
  %i.pm = icmp samesign ugt i64 %indvars.iv635, %i.ot
  %i.pn = sub nuw nsw i32 %indvars637, %i.or
  %i.po = sub nuw nsw i64 %i.ot, %indvars.iv635
  %i.pp = trunc nuw nsw i64 %i.po to i32
  %i.pq = select i1 %i.pm, i32 %i.pn, i32 %i.pp   ; 2 uses
  %i.pr = tail call i32 @llvm.umax.i32(i32 %i.pi, i32 %i.pq)
  %i.ps = add nuw nsw i32 %i.ph, %i.pq
  %i.pt = add nuw nsw i32 %i.ps, %i.pr            ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pl ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !26
  %i.pw = zext i8 %i.pv to i32
  %i.px = icmp samesign ult i32 %i.pt, %i.pw
  br i1 %i.px, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.py = trunc nuw i32 %i.pt to i8
  store i8 %i.py, ptr %i.pu, align 1, !tbaa !26
  %i.pz = load ptr, ptr %i.od, align 8, !tbaa !45
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pl
  store i8 %i.os, ptr %i.qa, align 1, !tbaa !26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond638.not = icmp eq i64 %indvars.iv.next636, 32
  br i1 %exitcond638.not, label %bb.bc, label %bb.az, !llvm.loop !121

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond642.not = icmp eq i64 %indvars.iv.next640, 32
  br i1 %exitcond642.not, label %bb.bd, label %bb.ay, !llvm.loop !122

bb.bd:                                            ; preds = %bb.bc
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %exitcond646.not = icmp eq i64 %indvars.iv.next644, 32
  br i1 %exitcond646.not, label %bb.be, label %bb.ax, !llvm.loop !123

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 2 uses
  %exitcond651.not = icmp eq i64 %indvars.iv.next648, %wide.trip.count650
  br i1 %exitcond651.not, label %._crit_edge537, label %.lr.ph536, !llvm.loop !124

._crit_edge537:                                   ; preds = %bb.be, %bb.aw
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.oe) #11
  br label %png_rtran_ok.exit.thread

png_rtran_ok.exit.thread:                         ; preds = %bb.a, %bb.c, %png_rtran_ok.exit, %._crit_edge537, %bb.av
  ret void
}

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_set_gamma_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %png_rtran_ok.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24, !alias.scope !137 ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #11
  br label %png_rtran_ok.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = or i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 8, !tbaa !24, !alias.scope !137
  switch i32 %1, label %translate_gamma_flags.exit [
    i32 -1, label %bb.e
    i32 -100000, label %bb.e
    i32 -2, label %bb.f
    i32 -50000, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %translate_gamma_flags.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  br label %translate_gamma_flags.exit

translate_gamma_flags.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i15 = phi i32 [ 220000, %bb.e ], [ %1, %bb.d ], [ 151724, %bb.f ] ; 3 uses
  switch i32 %2, label %translate_gamma_flags.exit17 [
    i32 -1, label %translate_gamma_flags.exit17.thread
    i32 -100000, label %translate_gamma_flags.exit17.thread
    i32 -2, label %bb.g
    i32 -50000, label %bb.g
  ]

bb.g:                                             ; preds = %translate_gamma_flags.exit, %translate_gamma_flags.exit
  br label %translate_gamma_flags.exit17.thread

end_hunk_0
