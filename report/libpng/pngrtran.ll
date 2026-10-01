Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_quantize:bb.a
.lr.ph502:                                        ; preds = %.preheader468
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.co = icmp sgt i32 %3, 1
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
  %xtraiter729 = and i64 %wide.trip.count592, 1
  %i.fe = icmp eq i32 %2, 1
  br i1 %i.fe, label %.lr.ph505.epil.preheader, label %.lr.ph505.preheader.new

.lr.ph505.preheader.new:                          ; preds = %.lr.ph505.preheader
  %unroll_iter732 = and i64 %wide.trip.count592, 2147483646
  br label %.lr.ph505

.lr.ph505:                                        ; preds = %.lr.ph505, %.lr.ph505.preheader.new
  %indvars.iv589 = phi i64 [ 0, %.lr.ph505.preheader.new ], [ %indvars.iv.next590.1, %.lr.ph505 ] ; 5 uses
  %niter733 = phi i64 [ 0, %.lr.ph505.preheader.new ], [ %niter733.next.1, %.lr.ph505 ]
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
  %niter733.next.1 = add i64 %niter733, 2         ; 2 uses
  %niter733.ncmp.1 = icmp eq i64 %niter733.next.1, %unroll_iter732
  br i1 %niter733.ncmp.1, label %.preheader466.lr.ph.loopexit.unr-lcssa, label %.lr.ph505, !llvm.loop !113

.preheader466.lr.ph.loopexit.unr-lcssa:           ; preds = %.lr.ph505
  %lcmp.mod730.not = icmp eq i64 %xtraiter729, 0
  br i1 %lcmp.mod730.not, label %.preheader466.lr.ph, label %.lr.ph505.epil.preheader

.lr.ph505.epil.preheader:                         ; preds = %.preheader466.lr.ph.loopexit.unr-lcssa, %.lr.ph505.preheader
  %indvars.iv589.epil.init = phi i64 [ 0, %.lr.ph505.preheader ], [ %indvars.iv.next590.1, %.preheader466.lr.ph.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod731 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod731)
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
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %wide.trip.count621 = zext nneg i32 %2 to i64
  br label %.preheader466

.preheader466:                                    ; preds = %.preheader466.lr.ph, %bb.as
  %indvars.iv632 = phi i64 [ 97, %.preheader466.lr.ph ], [ %indvars.iv.next633, %bb.as ] ; 4 uses
  %.0368529 = phi ptr [ null, %.preheader466.lr.ph ], [ %.9, %bb.as ] ; 2 uses
  %.0369528 = phi i32 [ %2, %.preheader466.lr.ph ], [ %.6375, %bb.as ] ; 8 uses
  %.0376524 = phi i32 [ 96, %.preheader466.lr.ph ], [ %i.no, %bb.as ] ; 2 uses
  %i.fw = tail call i32 @llvm.smax.i32(i32 %.0369528, i32 1)
  %smax = add nsw i32 %i.fw, -1                   ; 2 uses
  %wide.trip.count604 = zext nneg i32 %smax to i64
  %wide.trip.count599 = zext i32 %.0369528 to i64
  %exitcond605.not702 = icmp eq i32 %smax, 0
  br i1 %exitcond605.not702, label %._crit_edge706, label %.lr.ph510

bb.x:                                             ; preds = %._crit_edge511
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594704, 1
  %exitcond605.not = icmp eq i64 %indvars.iv.next602, %wide.trip.count604
  br i1 %exitcond605.not, label %._crit_edge706, label %.lr.ph510

.lr.ph510:                                        ; preds = %.preheader466, %bb.x
  %.1705 = phi ptr [ %.4.ph, %bb.x ], [ %.0368529, %.preheader466 ]
  %indvars.iv594704 = phi i64 [ %indvars.iv.next595, %bb.x ], [ 1, %.preheader466 ] ; 2 uses
  %indvars.iv601703 = phi i64 [ %indvars.iv.next602, %bb.x ], [ 0, %.preheader466 ] ; 3 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601703, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv601703 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph510, %bb.ab
  %indvars.iv596 = phi i64 [ %indvars.iv594704, %.lr.ph510 ], [ %indvars.iv.next597, %bb.ab ] ; 3 uses
  %.2507 = phi ptr [ %.1705, %.lr.ph510 ], [ %.4.ph, %bb.ab ]
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
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv601703
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

._crit_edge706:                                   ; preds = %bb.x, %.preheader466
  %.1.lcssa = phi ptr [ %.0368529, %.preheader466 ], [ %.4.ph, %bb.x ] ; 7 uses
  %.not426 = icmp eq ptr %.1.lcssa, null
  br i1 %.not426, label %.thread457, label %.preheader464

.preheader464:                                    ; preds = %._crit_edge706
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
  %.0366516.us.us.us.us = phi ptr [ %i.jw, %bb.aj ], [ %i.hl, %.preheader464.split.us.split.us ] ; 3 uses
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
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.preheader.us.us.us.us
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %bb.ah ], [ 0, %.preheader.us.us.us.us ] ; 4 uses
  %6 = load ptr, ptr %i.fv, align 8, !tbaa !34    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv618 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !26  ; 2 uses
  %i.in = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.id
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !26
  %i.iq = icmp eq i8 %i.im, %i.ip
  br i1 %i.iq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ik
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !26
  store i8 %i.is, ptr %i.il, align 1, !tbaa !26
  %.pre652.a = load ptr, ptr %i.fv, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre652.a, i64 %indvars.iv618
  %.pre653.a = load i8, ptr %.phi.trans.insert, align 1, !tbaa !26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.it = phi i8 [ %.pre653.a, %bb.ae ], [ %i.im, %bb.ad ]
  %i.iu = phi ptr [ %.pre652.a, %bb.ae ], [ %6, %bb.ad ]
  %i.iv = zext i8 %i.it to i32
  %i.iw = icmp eq i32 %i.ic, %i.iv
  br i1 %i.iw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 %indvars.iv618
  %i.iy = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.id
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !26
  store i8 %i.ja, ptr %i.ix, align 1, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %wide.trip.count621
  br i1 %exitcond622.not, label %..loopexit_crit_edge.us.us.us.us, label %bb.ad, !llvm.loop !115

..loopexit_crit_edge.us.us.us.us:                 ; preds = %bb.ah
  %i.jb = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.id
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !26
  %i.je = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ii
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !26
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jh
  store i8 %i.jd, ptr %i.ji, align 1, !tbaa !26
  %i.jj = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.ii
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !26
  %i.jm = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.id
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !26
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jp
  store i8 %i.jl, ptr %i.jq, align 1, !tbaa !26
  %i.jr = trunc i32 %i.ic to i8
  %i.js = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.id
  store i8 %i.jr, ptr %i.jt, align 1, !tbaa !26
  %i.ju = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ii
  store i8 %.446.us.us.us.us, ptr %i.jv, align 1, !tbaa !26
  br label %bb.ai

bb.ai:                                            ; preds = %..loopexit_crit_edge.us.us.us.us, %bb.ac, %.preheader463.us.us
  %.3372.us.us.us.us = phi i32 [ %i.ic, %..loopexit_crit_edge.us.us.us.us ], [ %.2371515.us.us.us.us, %bb.ac ], [ %.2371515.us.us.us.us, %.preheader463.us.us ] ; 4 uses
  %.not431.us.us.us.us = icmp sgt i32 %.3372.us.us.us.us, %3
  br i1 %.not431.us.us.us.us, label %bb.aj, label %.thread457

bb.aj:                                            ; preds = %bb.ai
  %i.jw = load ptr, ptr %.0366516.us.us.us.us, align 8, !tbaa !132 ; 2 uses
  %.not429.us.us.us.us = icmp eq ptr %i.jw, null
  br i1 %.not429.us.us.us.us, label %.split.us.us.split.us.us.thread, label %.preheader463.us.us, !llvm.loop !116

.split.us.us.split.us.us.thread:                  ; preds = %bb.aj, %.preheader464.split.us.split.us
  %.5374.us.us = phi i32 [ %.1370518.us.us, %.preheader464.split.us.split.us ], [ %.3372.us.us.us.us, %bb.aj ] ; 2 uses
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %indvars.iv632
  br i1 %exitcond627.not, label %.thread457, label %.preheader464.split.us.split.us, !llvm.loop !117

.preheader464.split.us.split:                     ; preds = %.preheader464.split.us, %.split.us.us.split.thread
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %.split.us.us.split.thread ], [ 0, %.preheader464.split.us ] ; 2 uses
  %.1370518.us = phi i32 [ %.5374.us, %.split.us.us.split.thread ], [ %.0369528, %.preheader464.split.us ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv613
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !130 ; 2 uses
  %.not428.us = icmp eq ptr %i.jy, null
  br i1 %.not428.us, label %.split.us.us.split.thread, label %.preheader463.us

.preheader463.us:                                 ; preds = %.preheader464.split.us.split, %bb.am
  %.0366516.us.us = phi ptr [ %i.lq, %bb.am ], [ %i.jy, %.preheader464.split.us.split ] ; 3 uses
  %.2371515.us.us = phi i32 [ %.3372.us.us, %bb.am ], [ %.1370518.us, %.preheader464.split.us.split ] ; 6 uses
  %i.jz = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0366516.us.us, i64 8
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !133 ; 2 uses
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !26
  %i.kf = zext i8 %i.ke to i32
  %i.kg = icmp sgt i32 %.2371515.us.us, %i.kf
  br i1 %i.kg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader463.us
  %i.kh = getelementptr inbounds nuw i8, ptr %.0366516.us.us, i64 9
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !134 ; 2 uses
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !26
  %i.km = zext i8 %i.kl to i32
  %i.kn = icmp samesign ugt i32 %.2371515.us.us, %i.km
  br i1 %i.kn, label %.preheader.us.us, label %bb.al

.preheader.us.us:                                 ; preds = %bb.ak
  %i.ko = and i32 %.2371515.us.us, 1
  %.not430.us.us = icmp eq i32 %i.ko, 0
  %.446.us.us = select i1 %.not430.us.us, i8 %i.ki, i8 %i.kb ; 2 uses
  %i.kp = add nsw i32 %.2371515.us.us, -1         ; 3 uses
  %i.kq = zext i8 %.446.us.us to i64              ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kq ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !26
  %i.kt = zext i8 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.kt
  %i.kv = zext nneg i32 %i.kp to i64              ; 4 uses
  %i.kw = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.kv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ku, ptr noundef nonnull align 1 dereferenceable(3) %i.kw, i64 3, i1 false), !tbaa.struct !126
  %i.kx = load i8, ptr %i.kr, align 1, !tbaa !26
  %i.ky = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kv
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !26
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.lb
  store i8 %i.kx, ptr %i.lc, align 1, !tbaa !26
  %i.ld = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !26
  %i.lg = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.kq
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !26
  %i.lj = zext i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lj
  store i8 %i.lf, ptr %i.lk, align 1, !tbaa !26
  %i.ll = trunc i32 %i.kp to i8
  %i.lm = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.kq
  store i8 %i.ll, ptr %i.ln, align 1, !tbaa !26
  %i.lo = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.kv
  store i8 %.446.us.us, ptr %i.lp, align 1, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %.preheader.us.us, %bb.ak, %.preheader463.us
  %.3372.us.us = phi i32 [ %i.kp, %.preheader.us.us ], [ %.2371515.us.us, %bb.ak ], [ %.2371515.us.us, %.preheader463.us ] ; 4 uses
  %.not431.us.us = icmp sgt i32 %.3372.us.us, %3
  br i1 %.not431.us.us, label %bb.am, label %.thread457

bb.am:                                            ; preds = %bb.al
  %i.lq = load ptr, ptr %.0366516.us.us, align 8, !tbaa !132 ; 2 uses
  %.not429.us.us = icmp eq ptr %i.lq, null
  br i1 %.not429.us.us, label %.split.us.us.split.thread, label %.preheader463.us, !llvm.loop !116

.split.us.us.split.thread:                        ; preds = %bb.am, %.preheader464.split.us.split
  %.5374.us = phi i32 [ %.1370518.us, %.preheader464.split.us.split ], [ %.3372.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %indvars.iv632
  br i1 %exitcond617.not, label %.thread457, label %.preheader464.split.us.split, !llvm.loop !117

.preheader464.split:                              ; preds = %.preheader464, %.split.thread
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %.split.thread ], [ 0, %.preheader464 ] ; 2 uses
  %.1370518 = phi i32 [ %.5374, %.split.thread ], [ %.0369528, %.preheader464 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv606
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !130 ; 2 uses
  %.not428 = icmp eq ptr %i.ls, null
  br i1 %.not428, label %.split.thread, label %.preheader463

.preheader463:                                    ; preds = %.preheader464.split, %bb.aq
  %.0366516 = phi ptr [ %i.nk, %bb.aq ], [ %i.ls, %.preheader464.split ] ; 3 uses
  %.2371515 = phi i32 [ %.3372, %bb.aq ], [ %.1370518, %.preheader464.split ] ; 6 uses
  %i.lt = load ptr, ptr %i.fa, align 8, !tbaa !127 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0366516, i64 8
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !133 ; 2 uses
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !26
  %i.lz = zext i8 %i.ly to i32
  %i.ma = icmp sgt i32 %.2371515, %i.lz
  br i1 %i.ma, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.preheader463
  %i.mb = getelementptr inbounds nuw i8, ptr %.0366516, i64 9
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !134 ; 2 uses
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !26
  %i.mg = zext i8 %i.mf to i32
  %i.mh = icmp samesign ugt i32 %.2371515, %i.mg
  br i1 %i.mh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mi = and i32 %.2371515, 1
  %.not430 = icmp eq i32 %i.mi, 0
  %.446 = select i1 %.not430, i8 %i.mc, i8 %i.lv  ; 2 uses
  %i.mj = add nsw i32 %.2371515, -1               ; 3 uses
  %i.mk = zext i8 %.446 to i64                    ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.mk ; 2 uses
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !26
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mn
  %i.mp = zext nneg i32 %i.mj to i64              ; 4 uses
  %i.mq = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.mp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.mo, ptr noundef nonnull align 1 dereferenceable(3) %i.mq, i64 3, i1 false), !tbaa.struct !126
  %i.mr = load i8, ptr %i.ml, align 1, !tbaa !26
  %i.ms = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mp
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !26
  %i.mv = zext i8 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.mv
  store i8 %i.mr, ptr %i.mw, align 1, !tbaa !26
  %i.mx = load ptr, ptr %i.fc, align 8, !tbaa !128 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mp
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !26
  %i.na = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.mk
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !26
  %i.nd = zext i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nd
  store i8 %i.mz, ptr %i.ne, align 1, !tbaa !26
  %i.nf = trunc i32 %i.mj to i8
  %i.ng = load ptr, ptr %i.fa, align 8, !tbaa !127
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.mk
  store i8 %i.nf, ptr %i.nh, align 1, !tbaa !26
  %i.ni = load ptr, ptr %i.fc, align 8, !tbaa !128
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.mp
  store i8 %.446, ptr %i.nj, align 1, !tbaa !26
end_hunk_0
begin_hunk_1_@png_init_read_transformations:bb.a
  %i.gb = phi i32 [ %.pre531, %._crit_edge530 ], [ %i.ez, %bb.au ]
  %i.gc = and i32 %i.gb, 128
  %.not428 = icmp eq i32 %i.gc, 0
  br i1 %.not428, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = load i32, ptr %i.b, align 8, !tbaa !46
  %i.ge = call i32 @png_gamma_significant(i32 noundef %i.gd) #11
  %.not429 = icmp eq i32 %i.ge, 0
  br i1 %.not429, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.gf = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.gg = call i32 @png_gamma_significant(i32 noundef %i.gf) #11
  %.not430 = icmp eq i32 %i.gg, 0
  br i1 %.not430, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.gi = load i8, ptr %i.gh, align 4, !tbaa !30
  %i.gj = icmp eq i8 %i.gi, 3
  br i1 %i.gj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !29
  %i.gm = call i32 @png_gamma_significant(i32 noundef %i.gl) #11
  %.not431 = icmp eq i32 %i.gm, 0
  br i1 %.not431, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ax
  %i.gn = load i32, ptr %i.ab, align 4, !tbaa !25 ; 2 uses
  %i.go = and i32 %i.gn, 8388608
  %.not432 = icmp eq i32 %i.go, 0
  br i1 %.not432, label %bb.cx, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gp = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.gq = call i32 @png_gamma_significant(i32 noundef %i.gp) #11
  %.not433 = icmp eq i32 %i.gq, 0
  br i1 %.not433, label %._crit_edge532, label %bb.be

._crit_edge532:                                   ; preds = %bb.bd
  %.pre533.a = load i32, ptr %i.ab, align 4, !tbaa !25
  br label %bb.cx

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.at
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !194
  %i.gt = zext i8 %i.gs to i32
  call void @png_build_gamma_table(ptr noundef nonnull %0, i32 noundef %i.gt) #11
  %i.gu = load i32, ptr %i.ab, align 4, !tbaa !25 ; 7 uses
  %i.gv = and i32 %i.gu, 128
  %.not436 = icmp eq i32 %i.gv, 0
  br i1 %.not436, label %bb.ct, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gw = and i32 %i.gu, 6291456
  %.not437 = icmp eq i32 %i.gw, 0
  br i1 %.not437, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gx = load i8, ptr %i.bn, align 1, !tbaa !48
  %i.gy = icmp eq i8 %i.gx, 3
  br i1 %i.gy, label %bb.bi, label %bb.cb

bb.bi:                                            ; preds = %bb.bh
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !44 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !30
  switch i8 %i.he, label %bb.bm [
    i8 2, label %bb.bj
    i8 1, label %bb.bk
    i8 3, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !61 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !52
  %i.hj = zext i16 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.hn = load i16, ptr %i.hm, align 8, !tbaa !53
  %i.ho = zext i16 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !54
  %i.ht = zext i16 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !26
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hj
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ho
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ht
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !26
  br label %bb.bs

bb.bk:                                            ; preds = %bb.bi
  %i.ie = load i32, ptr %i.ai, align 4, !tbaa !33
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !29
  %i.ih = call i32 @png_reciprocal(i32 noundef %i.ig) #11
  %i.ii = load i32, ptr %i.if, align 8, !tbaa !29
  %i.ij = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ik = call i32 @png_reciprocal2(i32 noundef %i.ii, i32 noundef %i.ij) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bl, %bb.bk
  %.0405 = phi i32 [ %i.ik, %bb.bl ], [ 100000, %bb.bk ], [ 100000, %bb.bi ] ; 4 uses
  %.0404 = phi i32 [ %i.ih, %bb.bl ], [ %i.ie, %bb.bk ], [ 100000, %bb.bi ] ; 4 uses
  %i.il = call i32 @png_gamma_significant(i32 noundef %.0405) #11
  %.not443 = icmp eq i32 %i.il, 0
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.in = load i16, ptr %i.im, align 2, !tbaa !52 ; 2 uses
  br i1 %.not443, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.io = zext i16 %i.in to i32
  %i.ip = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.io, i32 noundef %.0405) #11
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ir = load i16, ptr %i.iq, align 8, !tbaa !53
  %i.is = zext i16 %i.ir to i32
  %i.it = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.is, i32 noundef %.0405) #11
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !54
  %i.iw = zext i16 %i.iv to i32
  %i.ix = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.iw, i32 noundef %.0405) #11
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.iy = trunc i16 %i.in to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ja = load i16, ptr %i.iz, align 8, !tbaa !53
  %i.jb = trunc i16 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !54
  %i.je = trunc i16 %i.jd to i8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0174.0 = phi i8 [ %i.ip, %bb.bn ], [ %i.iy, %bb.bo ] ; 2 uses
  %.sroa.6175.0 = phi i8 [ %i.it, %bb.bn ], [ %i.jb, %bb.bo ] ; 2 uses
  %.sroa.9.0 = phi i8 [ %i.ix, %bb.bn ], [ %i.je, %bb.bo ] ; 2 uses
  %i.jf = call i32 @png_gamma_significant(i32 noundef %.0404) #11
  %.not444 = icmp eq i32 %i.jf, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !52 ; 2 uses
  br i1 %.not444, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ji = zext i16 %i.jh to i32
  %i.jj = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.ji, i32 noundef %.0404) #11
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !53
  %i.jm = zext i16 %i.jl to i32
  %i.jn = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.jm, i32 noundef %.0404) #11
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !54
  %i.jq = zext i16 %i.jp to i32
  %i.jr = call zeroext i8 @png_gamma_8bit_correct(i32 noundef %i.jq, i32 noundef %.0404) #11
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.js = trunc i16 %i.jh to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ju = load i16, ptr %i.jt, align 8, !tbaa !53
  %i.jv = trunc i16 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !54
  %i.jy = trunc i16 %i.jx to i8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bj
  %.sroa.0173.1 = phi i8 [ %i.hz, %bb.bj ], [ %i.jj, %bb.bq ], [ %i.js, %bb.br ]
  %.sroa.6.1 = phi i8 [ %i.ib, %bb.bj ], [ %i.jn, %bb.bq ], [ %i.jv, %bb.br ]
  %.sroa.10.1 = phi i8 [ %i.id, %bb.bj ], [ %i.jr, %bb.bq ], [ %i.jy, %bb.br ]
  %.sroa.0174.1 = phi i8 [ %i.hl, %bb.bj ], [ %.sroa.0174.0, %bb.bq ], [ %.sroa.0174.0, %bb.br ]
  %.sroa.6175.1 = phi i8 [ %i.hq, %bb.bj ], [ %.sroa.6175.0, %bb.bq ], [ %.sroa.6175.0, %bb.br ]
  %.sroa.9.1 = phi i8 [ %i.hv, %bb.bj ], [ %.sroa.9.0, %bb.bq ], [ %.sroa.9.0, %bb.br ]
  %.not = icmp eq i16 %i.hc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bs
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.kf = zext i8 %.sroa.0173.1 to i32
  %i.kg = zext i8 %.sroa.6.1 to i32
  %i.kh = zext i8 %.sroa.10.1 to i32
  %wide.trip.count = zext i16 %i.hc to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph, %bb.ca
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ca ] ; 6 uses
  %1 = load i16, ptr %i.jz, align 8, !tbaa !51
  %i.ki = zext i16 %1 to i64
  %i.kj = icmp samesign ult i64 %indvars.iv, %i.ki
  br i1 %i.kj, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.kk = load ptr, ptr %i.ka, align 8, !tbaa !56
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv ; 5 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !26  ; 3 uses
  switch i8 %i.km, label %bb.bw [
    i8 -1, label %bb.bz
    i8 0, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.kn = getelementptr inbounds nuw [3 x i8], ptr %i.ha, i64 %indvars.iv ; 3 uses
  store i8 %.sroa.0174.1, ptr %i.kn, align 1, !tbaa !26
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  store i8 %.sroa.6175.1, ptr %.sroa.6175.0..sroa_idx, align 1, !tbaa !26
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  store i8 %.sroa.9.1, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !26
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  %i.ko = zext i8 %i.km to i32
  %i.kp = load i32, ptr %i.kc, align 8, !tbaa !24
  %i.kq = and i32 %i.kp, 8192
  %.not447 = icmp eq i32 %i.kq, 0
  %i.kr = load ptr, ptr %i.kd, align 8, !tbaa !62 ; 5 uses
  %i.ks = getelementptr inbounds nuw [3 x i8], ptr %i.ha, i64 %indvars.iv ; 7 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !40
  %i.ku = zext i8 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !26
  %i.kx = zext i8 %i.kw to i32
  %i.ky = mul nuw nsw i32 %i.kx, %i.ko            ; 2 uses
  br i1 %.not447, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kz = trunc nuw i32 %i.ky to i16
  %.lhs.trunc = add nuw i16 %i.kz, 128
  %i.la = udiv i16 %.lhs.trunc, 255
  %i.lb = load ptr, ptr %i.ke, align 8, !tbaa !63 ; 3 uses
  %i.lc = zext nneg i16 %i.la to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !26
  store i8 %i.le, ptr %i.ks, align 1, !tbaa !40
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !41
  %i.lh = zext i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !26
  %i.lk = zext i8 %i.lj to i16
  %i.ll = load i8, ptr %i.kl, align 1, !tbaa !26
  %i.lm = zext i8 %i.ll to i16
  %i.ln = mul nuw i16 %i.lm, %i.lk
  %.lhs.trunc471 = add nuw i16 %i.ln, 128
  %i.lo = udiv i16 %.lhs.trunc471, 255
  %i.lp = zext nneg i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !26
  store i8 %i.lr, ptr %i.lf, align 1, !tbaa !41
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !42
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !26
  %i.lx = zext i8 %i.lw to i16
  %i.ly = load i8, ptr %i.kl, align 1, !tbaa !26
  %i.lz = zext i8 %i.ly to i16
  %i.ma = mul nuw i16 %i.lz, %i.lx
  %.lhs.trunc473 = add nuw i16 %i.ma, 128
  %i.mb = udiv i16 %.lhs.trunc473, 255
  %i.mc = zext nneg i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !26
  store i8 %i.me, ptr %i.ls, align 1, !tbaa !42
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.mf = xor i8 %i.km, -1
  %i.mg = zext i8 %i.mf to i32
  %i.mh = mul nuw nsw i32 %i.mg, %i.kf
  %i.mi = add nuw nsw i32 %i.mh, 128
  %i.mj = add nuw nsw i32 %i.mi, %i.ky            ; 2 uses
  %i.mk = lshr i32 %i.mj, 8
  %i.ml = and i32 %i.mk, 255
  %i.mm = add nuw nsw i32 %i.ml, %i.mj
  %i.mn = lshr i32 %i.mm, 8
  %i.mo = load ptr, ptr %i.ke, align 8, !tbaa !63 ; 3 uses
  %i.mp = and i32 %i.mn, 255
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !26
  store i8 %i.ms, ptr %i.ks, align 1, !tbaa !40
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !41
  %i.mv = zext i8 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !26
  %i.my = zext i8 %i.mx to i32
  %i.mz = load i8, ptr %i.kl, align 1, !tbaa !26  ; 2 uses
  %i.na = zext i8 %i.mz to i32
  %i.nb = mul nuw nsw i32 %i.na, %i.my
  %i.nc = xor i8 %i.mz, -1
  %i.nd = zext i8 %i.nc to i32
  %i.ne = mul nuw nsw i32 %i.nd, %i.kg
  %i.nf = add nuw nsw i32 %i.ne, 128
  %i.ng = add nuw nsw i32 %i.nf, %i.nb            ; 2 uses
  %i.nh = lshr i32 %i.ng, 8
  %i.ni = and i32 %i.nh, 255
  %i.nj = add nuw nsw i32 %i.ni, %i.ng
  %i.nk = lshr i32 %i.nj, 8
  %i.nl = and i32 %i.nk, 255
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !26
  store i8 %i.no, ptr %i.mt, align 1, !tbaa !41
  %i.np = getelementptr inbounds nuw i8, ptr %i.ks, i64 2 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !42
  %i.nr = zext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.nr
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !26
  %i.nu = zext i8 %i.nt to i32
  %i.nv = load i8, ptr %i.kl, align 1, !tbaa !26  ; 2 uses
  %i.nw = zext i8 %i.nv to i32
  %i.nx = mul nuw nsw i32 %i.nw, %i.nu
  %i.ny = xor i8 %i.nv, -1
  %i.nz = zext i8 %i.ny to i32
  %i.oa = mul nuw nsw i32 %i.nz, %i.kh
  %i.ob = add nuw nsw i32 %i.oa, 128
  %i.oc = add nuw nsw i32 %i.ob, %i.nx            ; 2 uses
  %i.od = lshr i32 %i.oc, 8
  %i.oe = and i32 %i.od, 255
  %i.of = add nuw nsw i32 %i.oe, %i.oc
  %i.og = lshr i32 %i.of, 8
  %i.oh = and i32 %i.og, 255
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !26
  store i8 %i.ok, ptr %i.np, align 1, !tbaa !42
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bu, %bb.bt
  %i.ol = load ptr, ptr %i.kb, align 8, !tbaa !61 ; 3 uses
  %i.om = getelementptr inbounds nuw [3 x i8], ptr %i.ha, i64 %indvars.iv ; 4 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !40
  %i.oo = zext i8 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !26
  store i8 %i.oq, ptr %i.om, align 1, !tbaa !40
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 1 ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !41
  %i.ot = zext i8 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !26
  store i8 %i.ov, ptr %i.or, align 1, !tbaa !41
  %i.ow = getelementptr inbounds nuw i8, ptr %i.om, i64 2 ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !42
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !26
  store i8 %i.pa, ptr %i.ow, align 1, !tbaa !42
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx, %bb.by, %bb.bv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bt, !llvm.loop !178

._crit_edge:                                      ; preds = %bb.ca, %bb.bs
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.pc = load <2 x i32>, ptr %i.pb, align 8, !tbaa !32
  %i.pd = and <2 x i32> %i.pc, <i32 -8193, i32 -8321> ; 2 uses
  store <2 x i32> %i.pd, ptr %i.pb, align 8, !tbaa !32
  %i.pe = extractelement <2 x i32> %i.pd, i64 1
  br label %bb.de

bb.cb:                                            ; preds = %bb.bh
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 4, !tbaa !30
  switch i8 %i.pg, label %bb.cf [
    i8 1, label %bb.cc
    i8 2, label %bb.cd
    i8 3, label %bb.ce
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.ph = load i32, ptr %i.ai, align 4, !tbaa !33
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %i.pi = load i32, ptr %i.b, align 8, !tbaa !46
  %i.pj = call i32 @png_reciprocal(i32 noundef %i.pi) #11
  %i.pk = load i32, ptr %i.b, align 8, !tbaa !46
  %i.pl = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.pm = call i32 @png_reciprocal2(i32 noundef %i.pk, i32 noundef %i.pl) #11
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !29
  %i.pp = call i32 @png_reciprocal(i32 noundef %i.po) #11
  %i.pq = load i32, ptr %i.pn, align 8, !tbaa !29
  %i.pr = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ps = call i32 @png_reciprocal2(i32 noundef %i.pq, i32 noundef %i.pr) #11
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  unreachable

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0402 = phi i32 [ %i.ph, %bb.cc ], [ %i.pj, %bb.cd ], [ %i.pp, %bb.ce ] ; 5 uses
  %.0401 = phi i32 [ 100000, %bb.cc ], [ %i.pm, %bb.cd ], [ %i.ps, %bb.ce ] ; 5 uses
  %i.pt = call i32 @png_gamma_significant(i32 noundef %.0402) #11
  %i.pu = call i32 @png_gamma_significant(i32 noundef %.0401) #11
  %.not438 = icmp eq i32 %i.pt, 0                 ; 2 uses
  br i1 %.not438, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.pw = load i16, ptr %i.pv, align 4, !tbaa !55
  %i.px = zext i16 %i.pw to i32
  %i.py = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.px, i32 noundef %.0402) #11
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 662
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.not439 = icmp eq i32 %i.pu, 0                 ; 2 uses
  br i1 %.not439, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.qb = load i16, ptr %i.qa, align 4, !tbaa !55
  %i.qc = zext i16 %i.qb to i32
  %i.qd = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qc, i32 noundef %.0401) #11
  store i16 %i.qd, ptr %i.qa, align 4, !tbaa !55
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 646 ; 4 uses
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !52 ; 7 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 5 uses
  %i.qh = load i16, ptr %i.qg, align 8, !tbaa !53
  %.not440 = icmp eq i16 %i.qf, %i.qh
  br i1 %.not440, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !54
  %.not441 = icmp eq i16 %i.qf, %i.qj
  br i1 %.not441, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ql = load i16, ptr %i.qk, align 4, !tbaa !55
  %.not442 = icmp eq i16 %i.qf, %i.ql
  br i1 %.not442, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  br i1 %.not438, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qm = zext i16 %i.qf to i32
  %i.qn = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qm, i32 noundef %.0402) #11
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 %i.qn, ptr %i.qo, align 8, !tbaa !65
  %i.qp = load i16, ptr %i.qg, align 8, !tbaa !53
  %i.qq = zext i16 %i.qp to i32
  %i.qr = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qq, i32 noundef %.0402) #11
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 658
  store i16 %i.qr, ptr %i.qs, align 2, !tbaa !66
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !54
  %i.qv = zext i16 %i.qu to i32
  %i.qw = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qv, i32 noundef %.0402) #11
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i16 %i.qw, ptr %i.qx, align 4, !tbaa !67
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %.not439, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qy = load i16, ptr %i.qe, align 2, !tbaa !52
  %i.qz = zext i16 %i.qy to i32
  %i.ra = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.qz, i32 noundef %.0401) #11
  store i16 %i.ra, ptr %i.qe, align 2, !tbaa !52
  %i.rb = load i16, ptr %i.qg, align 8, !tbaa !53
  %i.rc = zext i16 %i.rb to i32
  %i.rd = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.rc, i32 noundef %.0401) #11
  store i16 %i.rd, ptr %i.qg, align 8, !tbaa !53
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 650 ; 2 uses
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !54
  %i.rg = zext i16 %i.rf to i32
  %i.rh = call zeroext i16 @png_gamma_correct(ptr noundef nonnull %0, i32 noundef %i.rg, i32 noundef %.0401) #11
  store i16 %i.rh, ptr %i.re, align 2, !tbaa !54
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cm
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 662
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !64 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i16 %i.rj, ptr %i.rk, align 4, !tbaa !67
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 658
  store i16 %i.rj, ptr %i.rl, align 2, !tbaa !66
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 %i.rj, ptr %i.rm, align 8, !tbaa !65
  store i16 %i.qf, ptr %i.qi, align 2, !tbaa !54
  store i16 %i.qf, ptr %i.qg, align 8, !tbaa !53
  store i16 %i.qf, ptr %i.qe, align 2, !tbaa !52
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %bb.cq, %bb.cr
  store i8 1, ptr %i.pf, align 4, !tbaa !30
  %.pre535 = load i32, ptr %i.ab, align 4, !tbaa !25
  br label %bb.de

bb.ct:                                            ; preds = %bb.be
  %i.rn = load i8, ptr %i.bn, align 1, !tbaa !48
  %i.ro = icmp eq i8 %i.rn, 3
  br i1 %i.ro, label %bb.cu, label %bb.de

bb.cu:                                            ; preds = %bb.ct
  %i.rp = and i32 %i.gu, 4096
  %i.rq = icmp eq i32 %i.rp, 0
  %i.rr = and i32 %i.gu, 6291456
  %i.rs = icmp eq i32 %i.rr, 0
  %or.cond458 = or i1 %i.rq, %i.rs
  br i1 %or.cond458, label %bb.cv, label %bb.de

bb.cv:                                            ; preds = %bb.cu
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !43 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.rw = load i16, ptr %i.rv, align 8, !tbaa !44 ; 4 uses
  %.not500 = icmp eq i16 %i.rw, 0
  br i1 %.not500, label %._crit_edge486, label %.lr.ph485

.lr.ph485:                                        ; preds = %bb.cv
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !61 ; 9 uses
  %wide.trip.count506 = zext i16 %i.rw to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count506, 1
  %i.rz = icmp eq i16 %i.rw, 1
  br i1 %i.rz, label %.epil.preheader, label %.lr.ph485.new

.lr.ph485.new:                                    ; preds = %.lr.ph485
  %unroll_iter = and i64 %wide.trip.count506, 65534
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.lr.ph485.new
  %indvars.iv503 = phi i64 [ 0, %.lr.ph485.new ], [ %indvars.iv.next504.1, %bb.cw ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph485.new ], [ %niter.next.1, %bb.cw ]
  %i.sa = getelementptr inbounds nuw [3 x i8], ptr %i.ru, i64 %indvars.iv503 ; 4 uses
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !40
  %i.sc = zext i8 %i.sb to i64
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !26
  store i8 %i.se, ptr %i.sa, align 1, !tbaa !40
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 1 ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !41
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !26
  store i8 %i.sj, ptr %i.sf, align 1, !tbaa !41
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 2 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !42
  %i.sm = zext i8 %i.sl to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !26
  store i8 %i.so, ptr %i.sk, align 1, !tbaa !42
  %i.sp = getelementptr inbounds nuw [3 x i8], ptr %i.ru, i64 %indvars.iv503 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 3 ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !40
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !26
  store i8 %i.su, ptr %i.sq, align 1, !tbaa !40
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 4 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !41
  %i.sx = zext i8 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !26
  store i8 %i.sz, ptr %i.sv, align 1, !tbaa !41
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sp, i64 5 ; 2 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !42
  %i.tc = zext i8 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !26
  store i8 %i.te, ptr %i.ta, align 1, !tbaa !42
  %indvars.iv.next504.1 = add nuw nsw i64 %indvars.iv503, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge486.loopexit.unr-lcssa, label %bb.cw, !llvm.loop !179

._crit_edge486.loopexit.unr-lcssa:                ; preds = %bb.cw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge486, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge486.loopexit.unr-lcssa, %.lr.ph485
  %indvars.iv503.epil.init = phi i64 [ 0, %.lr.ph485 ], [ %indvars.iv.next504.1, %._crit_edge486.loopexit.unr-lcssa ]
  %lcmp.mod551 = trunc i16 %i.rw to i1
  call void @llvm.assume(i1 %lcmp.mod551)
  %i.tf = getelementptr inbounds nuw [3 x i8], ptr %i.ru, i64 %indvars.iv503.epil.init ; 4 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !40
  %i.th = zext i8 %i.tg to i64
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !26
  store i8 %i.tj, ptr %i.tf, align 1, !tbaa !40
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 1 ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !41
  %i.tm = zext i8 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !26
  store i8 %i.to, ptr %i.tk, align 1, !tbaa !41
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tf, i64 2 ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !42
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !26
  store i8 %i.tt, ptr %i.tp, align 1, !tbaa !42
  br label %._crit_edge486

._crit_edge486:                                   ; preds = %.epil.preheader, %._crit_edge486.loopexit.unr-lcssa, %bb.cv
  %i.tu = and i32 %i.gu, -8321                    ; 2 uses
  store i32 %i.tu, ptr %i.ab, align 4, !tbaa !25
  br label %bb.de

bb.cx:                                            ; preds = %._crit_edge532, %bb.bc
  %i.tv = phi i32 [ %.pre533.a, %._crit_edge532 ], [ %i.gn, %bb.bc ] ; 4 uses
  %i.tw = and i32 %i.tv, 128
  %.not434 = icmp eq i32 %i.tw, 0
  br i1 %.not434, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tx = load i8, ptr %i.bn, align 1, !tbaa !48
  %i.ty = icmp eq i8 %i.tx, 3
  br i1 %i.ty, label %bb.cz, label %bb.de

bb.cz:                                            ; preds = %bb.cy
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ua = load i16, ptr %i.tz, align 8, !tbaa !51 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !43 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !52 ; 2 uses
  %i.uf = trunc i16 %i.ue to i8
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.uh = load i16, ptr %i.ug, align 8, !tbaa !53 ; 2 uses
  %i.ui = trunc i16 %i.uh to i8
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !54 ; 2 uses
  %i.ul = trunc i16 %i.uk to i8
  %.not501 = icmp eq i16 %i.ua, 0
  br i1 %.not501, label %._crit_edge490, label %.lr.ph489

.lr.ph489:                                        ; preds = %bb.cz
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.un = and i16 %i.ue, 255
  %i.uo = and i16 %i.uh, 255
  %i.up = and i16 %i.uk, 255
  %wide.trip.count511 = zext i16 %i.ua to i64
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph489, %bb.dd
  %indvars.iv508 = phi i64 [ 0, %.lr.ph489 ], [ %indvars.iv.next509, %bb.dd ] ; 4 uses
  %2 = load ptr, ptr %i.um, align 8, !tbaa !56
  %i.uq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv508 ; 3 uses
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !26  ; 3 uses
  switch i8 %i.ur, label %bb.dc [
    i8 0, label %bb.db
    i8 -1, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da
  %i.us = getelementptr inbounds nuw [3 x i8], ptr %i.uc, i64 %indvars.iv508 ; 3 uses
  store i8 %i.uf, ptr %i.us, align 1, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  store i8 %i.ui, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !26
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 2
  store i8 %i.ul, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !26
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.ut = getelementptr inbounds nuw [3 x i8], ptr %i.uc, i64 %indvars.iv508 ; 4 uses
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !40
  %i.uv = zext i8 %i.uu to i16
  %i.uw = zext i8 %i.ur to i16
  %i.ux = mul nuw i16 %i.uv, %i.uw
  %i.uy = xor i8 %i.ur, -1
  %i.uz = zext i8 %i.uy to i16
  %i.va = mul nuw i16 %i.un, %i.uz
  %i.vb = add nuw i16 %i.va, 128
  %i.vc = add i16 %i.vb, %i.ux                    ; 2 uses
  %i.vd = lshr i16 %i.vc, 8
  %i.ve = add i16 %i.vd, %i.vc
  %i.vf = lshr i16 %i.ve, 8
  %i.vg = trunc nuw i16 %i.vf to i8
  store i8 %i.vg, ptr %i.ut, align 1, !tbaa !40
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ut, i64 1 ; 2 uses
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !41
  %i.vj = zext i8 %i.vi to i16
  %i.vk = load i8, ptr %i.uq, align 1, !tbaa !26  ; 2 uses
  %i.vl = zext i8 %i.vk to i16
  %i.vm = mul nuw i16 %i.vl, %i.vj
  %i.vn = xor i8 %i.vk, -1
  %i.vo = zext i8 %i.vn to i16
  %i.vp = mul nuw i16 %i.uo, %i.vo
  %i.vq = add nuw i16 %i.vp, 128
  %i.vr = add i16 %i.vq, %i.vm                    ; 2 uses
  %i.vs = lshr i16 %i.vr, 8
  %i.vt = add i16 %i.vs, %i.vr
  %i.vu = lshr i16 %i.vt, 8
  %i.vv = trunc nuw i16 %i.vu to i8
  store i8 %i.vv, ptr %i.vh, align 1, !tbaa !41
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ut, i64 2 ; 2 uses
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !42
  %i.vy = zext i8 %i.vx to i16
  %i.vz = load i8, ptr %i.uq, align 1, !tbaa !26  ; 2 uses
  %i.wa = zext i8 %i.vz to i16
  %i.wb = mul nuw i16 %i.wa, %i.vy
  %i.wc = xor i8 %i.vz, -1
  %i.wd = zext i8 %i.wc to i16
  %i.we = mul nuw i16 %i.up, %i.wd
  %i.wf = add nuw i16 %i.we, 128
  %i.wg = add i16 %i.wf, %i.wb                    ; 2 uses
  %i.wh = lshr i16 %i.wg, 8
  %i.wi = add i16 %i.wh, %i.wg
  %i.wj = lshr i16 %i.wi, 8
  %i.wk = trunc nuw i16 %i.wj to i8
  store i8 %i.wk, ptr %i.vw, align 1, !tbaa !42
  br label %bb.dd

bb.dd:                                            ; preds = %bb.da, %bb.db, %bb.dc
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count511
  br i1 %exitcond512.not, label %._crit_edge490.loopexit, label %bb.da, !llvm.loop !180

._crit_edge490.loopexit:                          ; preds = %bb.dd
  %.pre534 = load i32, ptr %i.ab, align 4, !tbaa !25
  br label %._crit_edge490

._crit_edge490:                                   ; preds = %._crit_edge490.loopexit, %bb.cz
  %i.wl = phi i32 [ %.pre534, %._crit_edge490.loopexit ], [ %i.tv, %bb.cz ]
  %i.wm = and i32 %i.wl, -129                     ; 2 uses
  store i32 %i.wm, ptr %i.ab, align 4, !tbaa !25
  br label %bb.de

bb.de:                                            ; preds = %bb.cu, %bb.cx, %bb.cy, %._crit_edge490, %bb.cs, %._crit_edge, %._crit_edge486, %bb.ct
  %i.wn = phi i32 [ %i.gu, %bb.cu ], [ %i.tv, %bb.cx ], [ %i.tv, %bb.cy ], [ %i.wm, %._crit_edge490 ], [ %.pre535, %bb.cs ], [ %i.pe, %._crit_edge ], [ %i.tu, %._crit_edge486 ], [ %i.gu, %bb.ct ] ; 2 uses
  %i.wo = and i32 %i.wn, 4104
  %or.cond460 = icmp eq i32 %i.wo, 8
  br i1 %or.cond460, label %bb.df, label %.loopexit

bb.df:                                            ; preds = %bb.de
  %i.wp = load i8, ptr %i.bn, align 1, !tbaa !48
  %i.wq = icmp eq i8 %i.wp, 3
  br i1 %i.wq, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %bb.df
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ws = load i16, ptr %i.wr, align 8, !tbaa !44 ; 7 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !195 ; 2 uses
  %i.wv = zext nneg i8 %i.wu to i16
  %i.ww = sub nuw nsw i16 8, %i.wv                ; 5 uses
  %i.wx = and i32 %i.wn, -4105
  store i32 %i.wx, ptr %i.ab, align 4, !tbaa !25
  %i.wy = add i8 %i.wu, -1
  %or.cond = icmp ult i8 %i.wy, 7
  %i.wz = icmp ne i16 %i.ws, 0                    ; 3 uses
  %or.cond497 = select i1 %or.cond, i1 %i.wz, i1 false
  br i1 %or.cond497, label %.lr.ph492, label %.loopexit481

.lr.ph492:                                        ; preds = %bb.dg
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count516 = zext i16 %i.ws to i64     ; 2 uses
  %xtraiter553 = and i64 %wide.trip.count516, 3   ; 3 uses
  %i.xc = icmp ult i16 %i.ws, 4
  br i1 %i.xc, label %.epil.preheader552, label %.lr.ph492.new

.lr.ph492.new:                                    ; preds = %.lr.ph492
  %unroll_iter556 = and i64 %wide.trip.count516, 65532
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %.lr.ph492.new
  %indvars.iv513 = phi i64 [ 0, %.lr.ph492.new ], [ %indvars.iv.next514.3, %bb.dh ] ; 5 uses
  %niter557 = phi i64 [ 0, %.lr.ph492.new ], [ %niter557.next.3, %bb.dh ]
  %i.xd = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv513 ; 2 uses
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !40
  %i.xf = zext i8 %i.xe to i16
  %i.xg = lshr i16 %i.xf, %i.ww
  %i.xh = trunc nuw i16 %i.xg to i8
  store i8 %i.xh, ptr %i.xd, align 1, !tbaa !40
  %i.xi = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv513
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 3 ; 2 uses
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !40
  %i.xl = zext i8 %i.xk to i16
  %i.xm = lshr i16 %i.xl, %i.ww
  %i.xn = trunc nuw i16 %i.xm to i8
  store i8 %i.xn, ptr %i.xj, align 1, !tbaa !40
  %i.xo = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv513
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 6 ; 2 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !40
  %i.xr = zext i8 %i.xq to i16
  %i.xs = lshr i16 %i.xr, %i.ww
  %i.xt = trunc nuw i16 %i.xs to i8
  store i8 %i.xt, ptr %i.xp, align 1, !tbaa !40
  %i.xu = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv513
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 9 ; 2 uses
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !40
  %i.xx = zext i8 %i.xw to i16
  %i.xy = lshr i16 %i.xx, %i.ww
  %i.xz = trunc nuw i16 %i.xy to i8
  store i8 %i.xz, ptr %i.xv, align 1, !tbaa !40
  %indvars.iv.next514.3 = add nuw nsw i64 %indvars.iv513, 4 ; 2 uses
  %niter557.next.3 = add i64 %niter557, 4         ; 2 uses
  %niter557.ncmp.3 = icmp eq i64 %niter557.next.3, %unroll_iter556
  br i1 %niter557.ncmp.3, label %.loopexit481.loopexit.unr-lcssa, label %bb.dh, !llvm.loop !181

.loopexit481.loopexit.unr-lcssa:                  ; preds = %bb.dh
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.loopexit481, label %.epil.preheader552

.epil.preheader552:                               ; preds = %.loopexit481.loopexit.unr-lcssa, %.lr.ph492
  %indvars.iv513.epil.init = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next514.3, %.loopexit481.loopexit.unr-lcssa ]
  %lcmp.mod555 = icmp ne i64 %xtraiter553, 0
  call void @llvm.assume(i1 %lcmp.mod555)
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %.epil.preheader552
  %indvars.iv513.epil = phi i64 [ %indvars.iv513.epil.init, %.epil.preheader552 ], [ %indvars.iv.next514.epil, %bb.di ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader552 ], [ %epil.iter.next, %bb.di ]
  %i.ya = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv513.epil ; 2 uses
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !40
  %i.yc = zext i8 %i.yb to i16
  %i.yd = lshr i16 %i.yc, %i.ww
  %i.ye = trunc nuw i16 %i.yd to i8
  store i8 %i.ye, ptr %i.ya, align 1, !tbaa !40
  %indvars.iv.next514.epil = add nuw nsw i64 %indvars.iv513.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter553
  br i1 %epil.iter.cmp.not, label %.loopexit481, label %bb.di, !llvm.loop !182

.loopexit481:                                     ; preds = %.loopexit481.loopexit.unr-lcssa, %bb.di, %bb.dg
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 785
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !196 ; 2 uses
  %i.yh = zext nneg i8 %i.yg to i16
  %i.yi = sub nuw nsw i16 8, %i.yh                ; 5 uses
  %i.yj = add i8 %i.yg, -1
  %or.cond3 = icmp ult i8 %i.yj, 7
  %or.cond498 = select i1 %or.cond3, i1 %i.wz, i1 false
  br i1 %or.cond498, label %.lr.ph494, label %.loopexit479

.lr.ph494:                                        ; preds = %.loopexit481
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count521 = zext i16 %i.ws to i64     ; 2 uses
  %xtraiter559 = and i64 %wide.trip.count521, 3   ; 3 uses
  %i.ym = icmp ult i16 %i.ws, 4
  br i1 %i.ym, label %.epil.preheader558, label %.lr.ph494.new

.lr.ph494.new:                                    ; preds = %.lr.ph494
  %unroll_iter563 = and i64 %wide.trip.count521, 65532
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %.lr.ph494.new
  %indvars.iv518 = phi i64 [ 0, %.lr.ph494.new ], [ %indvars.iv.next519.3, %bb.dj ] ; 5 uses
  %niter564 = phi i64 [ 0, %.lr.ph494.new ], [ %niter564.next.3, %bb.dj ]
  %i.yn = getelementptr inbounds nuw [3 x i8], ptr %i.yl, i64 %indvars.iv518
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1 ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !41
  %i.yq = zext i8 %i.yp to i16
  %i.yr = lshr i16 %i.yq, %i.yi
  %i.ys = trunc nuw i16 %i.yr to i8
  store i8 %i.ys, ptr %i.yo, align 1, !tbaa !41
  %i.yt = getelementptr inbounds nuw [3 x i8], ptr %i.yl, i64 %indvars.iv518
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 4 ; 2 uses
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !41
  %i.yw = zext i8 %i.yv to i16
  %i.yx = lshr i16 %i.yw, %i.yi
  %i.yy = trunc nuw i16 %i.yx to i8
  store i8 %i.yy, ptr %i.yu, align 1, !tbaa !41
  %i.yz = getelementptr inbounds nuw [3 x i8], ptr %i.yl, i64 %indvars.iv518
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 7 ; 2 uses
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !41
  %i.zc = zext i8 %i.zb to i16
  %i.zd = lshr i16 %i.zc, %i.yi
  %i.ze = trunc nuw i16 %i.zd to i8
  store i8 %i.ze, ptr %i.za, align 1, !tbaa !41
  %i.zf = getelementptr inbounds nuw [3 x i8], ptr %i.yl, i64 %indvars.iv518
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 10 ; 2 uses
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !41
  %i.zi = zext i8 %i.zh to i16
  %i.zj = lshr i16 %i.zi, %i.yi
  %i.zk = trunc nuw i16 %i.zj to i8
  store i8 %i.zk, ptr %i.zg, align 1, !tbaa !41
  %indvars.iv.next519.3 = add nuw nsw i64 %indvars.iv518, 4 ; 2 uses
  %niter564.next.3 = add i64 %niter564, 4         ; 2 uses
  %niter564.ncmp.3 = icmp eq i64 %niter564.next.3, %unroll_iter563
  br i1 %niter564.ncmp.3, label %.loopexit479.loopexit.unr-lcssa, label %bb.dj, !llvm.loop !183

.loopexit479.loopexit.unr-lcssa:                  ; preds = %bb.dj
  %lcmp.mod561.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod561.not, label %.loopexit479, label %.epil.preheader558

.epil.preheader558:                               ; preds = %.loopexit479.loopexit.unr-lcssa, %.lr.ph494
  %indvars.iv518.epil.init = phi i64 [ 0, %.lr.ph494 ], [ %indvars.iv.next519.3, %.loopexit479.loopexit.unr-lcssa ]
  %lcmp.mod562 = icmp ne i64 %xtraiter559, 0
  call void @llvm.assume(i1 %lcmp.mod562)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.epil.preheader558
  %indvars.iv518.epil = phi i64 [ %indvars.iv518.epil.init, %.epil.preheader558 ], [ %indvars.iv.next519.epil, %bb.dk ] ; 2 uses
  %epil.iter560 = phi i64 [ 0, %.epil.preheader558 ], [ %epil.iter560.next, %bb.dk ]
  %i.zl = getelementptr inbounds nuw [3 x i8], ptr %i.yl, i64 %indvars.iv518.epil
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 1 ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !41
  %i.zo = zext i8 %i.zn to i16
  %i.zp = lshr i16 %i.zo, %i.yi
  %i.zq = trunc nuw i16 %i.zp to i8
  store i8 %i.zq, ptr %i.zm, align 1, !tbaa !41
  %indvars.iv.next519.epil = add nuw nsw i64 %indvars.iv518.epil, 1
  %epil.iter560.next = add i64 %epil.iter560, 1   ; 2 uses
  %epil.iter560.cmp.not = icmp eq i64 %epil.iter560.next, %xtraiter559
  br i1 %epil.iter560.cmp.not, label %.loopexit479, label %bb.dk, !llvm.loop !184

.loopexit479:                                     ; preds = %.loopexit479.loopexit.unr-lcssa, %bb.dk, %.loopexit481
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 786
  %i.zs = load i8, ptr %i.zr, align 2, !tbaa !197 ; 2 uses
  %i.zt = zext nneg i8 %i.zs to i16
  %i.zu = sub nuw nsw i16 8, %i.zt                ; 5 uses
  %i.zv = add i8 %i.zs, -1
end_hunk_1
