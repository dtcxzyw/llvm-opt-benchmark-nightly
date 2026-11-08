Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_set_quantize:bb.a

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
  %exitcond605.not = icmp eq i64 %indvars.iv.next602, %wide.trip.count604
  br i1 %exitcond605.not, label %._crit_edge708, label %.lr.ph510

.lr.ph510:                                        ; preds = %.preheader466, %bb.x
  %.1707 = phi ptr [ %.4.ph, %bb.x ], [ %.0368529, %.preheader466 ]
  %indvars.iv601705 = phi i64 [ %indvars.iv.next602, %bb.x ], [ 0, %.preheader466 ] ; 3 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601705, 1 ; 3 uses
  %i.fx = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv601705 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph510, %bb.ab
  %indvars.iv596 = phi i64 [ %indvars.iv.next602, %.lr.ph510 ], [ %indvars.iv.next597, %bb.ab ] ; 3 uses
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
  %.pre653.a = load ptr, ptr %i.fv, align 8, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ah, %.preheader.us.us.us.us
  %i.il = phi ptr [ %i.jc, %bb.ah ], [ %.pre653.a, %.preheader.us.us.us.us ] ; 2 uses
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
end_hunk_0
