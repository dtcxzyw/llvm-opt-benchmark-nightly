inline.NumInlined: 218
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ge_double_scalarmult_vartime:vector.ph

.loopexit.i50.3:                                  ; preds = %bb.av, %bb.ax, %bb.aw, %.lr.ph67.i40.3
  %indvars.iv.next77.i52.3 = add nuw nsw i64 %indvars.iv74.i29, 4 ; 2 uses
  %exitcond89.not.i53.3 = icmp eq i32 %i.dh, 5
  br i1 %exitcond89.not.i53.3, label %.loopexit62.i32, label %.lr.ph67.i40.4

.lr.ph67.i40.4:                                   ; preds = %.loopexit.i50.3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52.3 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.4 = icmp eq i8 %i.fn, 0
  br i1 %.not60.i43.4, label %.loopexit.i50.4, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph67.i40.4
  %i.fo = load i8, ptr %i.de, align 1, !tbaa !8
  %i.fp = sext i8 %i.fo to i32                    ; 2 uses
  %i.fq = sext i8 %i.fn to i32
  %i.fr = shl nsw i32 %i.fq, 5                    ; 2 uses
  %i.fs = add nsw i32 %i.fr, %i.fp                ; 2 uses
  %i.ft = icmp slt i32 %i.fs, 16
  br i1 %i.ft, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = sub nsw i32 %i.fp, %i.fr                ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, -16
  br i1 %i.fv, label %.lr.ph.preheader.i44.4, label %.loopexit62.i32

.lr.ph.preheader.i44.4:                           ; preds = %bb.az
  %i.fw = trunc i32 %i.fu to i8
  store i8 %i.fw, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.4

.lr.ph.i45.4:                                     ; preds = %bb.ba, %.lr.ph.preheader.i44.4
  %indvars.iv78.i46.4 = phi i64 [ %indvars.iv.next77.i52.3, %.lr.ph.preheader.i44.4 ], [ %indvars.iv.next79.i48.4, %bb.ba ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.4 ; 3 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !8
  %.not61.i47.4 = icmp eq i8 %i.fy, 0
  br i1 %.not61.i47.4, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i45.4
  store i8 0, ptr %i.fx, align 1, !tbaa !8
  %indvars.iv.next79.i48.4 = add nuw nsw i64 %indvars.iv78.i46.4, 1 ; 2 uses
  %exitcond81.not.i49.4 = icmp eq i64 %indvars.iv.next79.i48.4, 256
  br i1 %exitcond81.not.i49.4, label %.loopexit.i50.4, label %.lr.ph.i45.4, !llvm.loop !17

bb.bb:                                            ; preds = %.lr.ph.i45.4
  store i8 1, ptr %i.fx, align 1, !tbaa !8
  br label %.loopexit.i50.4

bb.bc:                                            ; preds = %bb.ay
  %i.fz = trunc i32 %i.fs to i8
  store i8 %i.fz, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.fm, align 1, !tbaa !8
  br label %.loopexit.i50.4

.loopexit.i50.4:                                  ; preds = %bb.ba, %bb.bc, %bb.bb, %.lr.ph67.i40.4
  %indvars.iv.next77.i52.4 = add nuw nsw i64 %indvars.iv74.i29, 5 ; 2 uses
  %exitcond89.not.i53.4 = icmp eq i32 %i.dh, 6
  br i1 %exitcond89.not.i53.4, label %.loopexit62.i32, label %.lr.ph67.i40.5

.lr.ph67.i40.5:                                   ; preds = %.loopexit.i50.4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next77.i52.4 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8   ; 2 uses
  %.not60.i43.5 = icmp eq i8 %i.gb, 0
  br i1 %.not60.i43.5, label %.loopexit62.i32, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph67.i40.5
  %i.gc = load i8, ptr %i.de, align 1, !tbaa !8
  %i.gd = sext i8 %i.gc to i32                    ; 2 uses
  %i.ge = sext i8 %i.gb to i32
  %i.gf = shl nsw i32 %i.ge, 6                    ; 2 uses
  %i.gg = add nsw i32 %i.gf, %i.gd                ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 16
  br i1 %i.gh, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gi = sub nsw i32 %i.gd, %i.gf                ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, -16
  br i1 %i.gj, label %.lr.ph.preheader.i44.5, label %.loopexit62.i32

.lr.ph.preheader.i44.5:                           ; preds = %bb.be
  %i.gk = trunc i32 %i.gi to i8
  store i8 %i.gk, ptr %i.de, align 1, !tbaa !8
  br label %.lr.ph.i45.5

.lr.ph.i45.5:                                     ; preds = %bb.bf, %.lr.ph.preheader.i44.5
  %indvars.iv78.i46.5 = phi i64 [ %indvars.iv.next77.i52.4, %.lr.ph.preheader.i44.5 ], [ %indvars.iv.next79.i48.5, %bb.bf ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv78.i46.5 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %.not61.i47.5 = icmp eq i8 %i.gm, 0
  br i1 %.not61.i47.5, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i45.5
  store i8 0, ptr %i.gl, align 1, !tbaa !8
  %indvars.iv.next79.i48.5 = add nuw nsw i64 %indvars.iv78.i46.5, 1 ; 2 uses
  %exitcond81.not.i49.5 = icmp eq i64 %indvars.iv.next79.i48.5, 256
  br i1 %exitcond81.not.i49.5, label %.loopexit62.i32, label %.lr.ph.i45.5, !llvm.loop !17

bb.bg:                                            ; preds = %.lr.ph.i45.5
  store i8 1, ptr %i.gl, align 1, !tbaa !8
  br label %.loopexit62.i32

bb.bh:                                            ; preds = %bb.bd
  %i.gn = trunc i32 %i.gg to i8
  store i8 %i.gn, ptr %i.de, align 1, !tbaa !8
  store i8 0, ptr %i.ga, align 1, !tbaa !8
  br label %.loopexit62.i32

.loopexit62.i32:                                  ; preds = %.loopexit.i50, %bb.ag, %bb.ak, %.loopexit.i50.1, %bb.ap, %.loopexit.i50.2, %bb.au, %.loopexit.i50.3, %bb.az, %.loopexit.i50.4, %bb.be, %bb.bf, %bb.bh, %bb.bg, %.lr.ph67.i40.5, %.preheader63.i26
  %indvars.iv.next91.i33 = add nuw nsw i64 %indvars.iv90.i27, 1 ; 2 uses
  %indvars.iv.next75.i34 = add nuw nsw i64 %indvars.iv74.i29, 1
  %indvars.iv.next88.i35 = add nsw i32 %indvars.iv87.i28, -1
  %exitcond93.not.i36 = icmp eq i64 %indvars.iv.next91.i33, 256
  br i1 %exitcond93.not.i36, label %slide.exit54, label %.preheader63.i26, !llvm.loop !18

slide.exit54:                                     ; preds = %.loopexit62.i32
  call fastcc void @ge_p3_to_cached(ptr noundef %5, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, ptr noundef nonnull readonly align 4 dereferenceable(40) %2, i64 40, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.go, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.gp, i64 40, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.gq, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.gr, i64 40, i1 false)
  call fastcc void @ge_p2_dbl(ptr noundef nonnull %6, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 30 uses
  call fastcc void @fe_mul(ptr noundef nonnull %8, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 35 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 32 uses
  call fastcc void @fe_mul(ptr noundef %i.gt, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 80
  call fastcc void @fe_mul(ptr noundef %i.gw, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 120
  call fastcc void @fe_mul(ptr noundef %i.gx, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %5)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 13 uses
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 13 uses
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 13 uses
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hb, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hb)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hc, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hc)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 480 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hd, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hd)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 640 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.he, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.he)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 800 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hf, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hf)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 960 ; 2 uses
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hg, ptr noundef %7)
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %8, ptr noundef %i.hg)
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 1120
  call fastcc void @ge_p3_to_cached(ptr noundef %i.hh, ptr noundef %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.hj, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.hi, align 4, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.hl, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.hk, align 4, !tbaa !9
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bm, %slide.exit54
  %.061 = phi i32 [ 255, %slide.exit54 ], [ %12, %bb.bm ] ; 5 uses
  %9 = zext nneg i32 %.061 to i64                 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 %9
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !8
  %.not = icmp eq i8 %i.hn, 0
  br i1 %.not, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 %9
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !8
  %.not22 = icmp eq i8 %i.hp, 0
  br i1 %.not22, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %10 = add nsw i32 %.061, -1                     ; 4 uses
  %11 = zext nneg i32 %10 to i64                  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %11
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !8
  %.not.1 = icmp eq i8 %i.hr, 0
  br i1 %.not.1, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 %11
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !8
  %.not22.1 = icmp eq i8 %i.ht, 0
  br i1 %.not22.1, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %12 = add nsw i32 %.061, -2
  %.not75.1 = icmp eq i32 %10, 0
  br i1 %.not75.1, label %._crit_edge, label %bb.bi, !llvm.loop !20

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bj
  %.061.lcssa = phi i32 [ %.061, %bb.bi ], [ %.061, %bb.bj ], [ %10, %bb.bk ], [ %10, %bb.bl ] ; 2 uses
  %i.hu = icmp sgt i32 %.061.lcssa, -1
  br i1 %i.hu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bn
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 100 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 116 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 132 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 148 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 112
  %13 = zext nneg i32 %.061.lcssa to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph, %bb.bw
  %indvars.iv.a = phi i64 [ %13, %.lr.ph ], [ %indvars.iv.next.a, %bb.bw ] ; 4 uses
  call fastcc void @ge_p2_dbl(ptr noundef %6, ptr noundef %0)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.a
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !8   ; 4 uses
  %i.jw = icmp sgt i8 %i.jv, 0
  br i1 %i.jw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %i.jx = lshr i8 %i.jv, 1
  %i.jy = zext nneg i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [160 x i8], ptr %5, i64 %i.jy
  call fastcc void @ge_add(ptr noundef %6, ptr noundef %7, ptr noundef %i.jz)
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.ka = icmp slt i8 %i.jv, 0
  br i1 %i.ka, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.gy, ptr noundef nonnull readonly %i.gu, ptr noundef nonnull readonly %i.gv)
  call fastcc void @fe_mul(ptr noundef %i.gz, ptr noundef nonnull readonly %i.gv, ptr noundef nonnull readonly %i.gs)
  call fastcc void @fe_mul(ptr noundef %i.ha, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gu)
  %.nonneg56 = sub i8 0, %i.jv
  %i.kb = lshr i8 %.nonneg56, 1
  %i.kc = zext nneg i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [160 x i8], ptr %5, i64 %i.kc ; 4 uses
  %i.ke = load i32, ptr %i.gy, align 4, !tbaa !9  ; 2 uses
  %i.kf = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.kg = add nsw i32 %i.kf, %i.ke
  store i32 %i.kg, ptr %6, align 16, !tbaa !9
  %i.kh = load i32, ptr %i.hv, align 4, !tbaa !9  ; 2 uses
  %i.ki = load i32, ptr %i.hw, align 4, !tbaa !9  ; 2 uses
  %i.kj = add nsw i32 %i.ki, %i.kh
  store i32 %i.kj, ptr %i.hx, align 4, !tbaa !9
  %i.kk = load i32, ptr %i.hy, align 4, !tbaa !9  ; 2 uses
  %i.kl = load i32, ptr %i.hz, align 4, !tbaa !9  ; 2 uses
  %i.km = add nsw i32 %i.kl, %i.kk
  store i32 %i.km, ptr %i.ia, align 8, !tbaa !9
  %i.kn = load i32, ptr %i.ib, align 4, !tbaa !9  ; 2 uses
  %i.ko = load i32, ptr %i.ic, align 4, !tbaa !9  ; 2 uses
  %i.kp = add nsw i32 %i.ko, %i.kn
  store i32 %i.kp, ptr %i.id, align 4, !tbaa !9
  %i.kq = load i32, ptr %i.ie, align 4, !tbaa !9  ; 2 uses
  %i.kr = load i32, ptr %i.if, align 4, !tbaa !9  ; 2 uses
  %i.ks = add nsw i32 %i.kr, %i.kq
  store i32 %i.ks, ptr %i.ig, align 16, !tbaa !9
  %i.kt = load i32, ptr %i.ih, align 4, !tbaa !9  ; 2 uses
  %i.ku = load i32, ptr %i.ii, align 4, !tbaa !9  ; 2 uses
  %i.kv = add nsw i32 %i.ku, %i.kt
  store i32 %i.kv, ptr %i.ij, align 4, !tbaa !9
  %i.kw = load i32, ptr %i.ik, align 4, !tbaa !9  ; 2 uses
  %i.kx = load i32, ptr %i.il, align 4, !tbaa !9  ; 2 uses
  %i.ky = add nsw i32 %i.kx, %i.kw
  store i32 %i.ky, ptr %i.im, align 8, !tbaa !9
  %i.kz = load i32, ptr %i.in, align 4, !tbaa !9  ; 2 uses
  %i.la = load i32, ptr %i.io, align 4, !tbaa !9  ; 2 uses
  %i.lb = add nsw i32 %i.la, %i.kz
  store i32 %i.lb, ptr %i.ip, align 4, !tbaa !9
  %i.lc = load i32, ptr %i.iq, align 4, !tbaa !9  ; 2 uses
  %i.ld = load i32, ptr %i.ir, align 4, !tbaa !9  ; 2 uses
  %i.le = add nsw i32 %i.ld, %i.lc
  store i32 %i.le, ptr %i.is, align 16, !tbaa !9
  %i.lf = load i32, ptr %i.it, align 4, !tbaa !9  ; 2 uses
  %i.lg = load i32, ptr %i.iu, align 4, !tbaa !9  ; 2 uses
  %i.lh = add nsw i32 %i.lg, %i.lf
  store i32 %i.lh, ptr %i.iv, align 4, !tbaa !9
  %i.li = sub nsw i32 %i.ke, %i.kf
  store i32 %i.li, ptr %i.gu, align 8, !tbaa !9
  %i.lj = sub nsw i32 %i.kh, %i.ki
  store i32 %i.lj, ptr %i.iw, align 4, !tbaa !9
  %i.lk = sub nsw i32 %i.kk, %i.kl
  store i32 %i.lk, ptr %i.ix, align 16, !tbaa !9
  %i.ll = sub nsw i32 %i.kn, %i.ko
  store i32 %i.ll, ptr %i.iy, align 4, !tbaa !9
  %i.lm = sub nsw i32 %i.kq, %i.kr
  store i32 %i.lm, ptr %i.iz, align 8, !tbaa !9
  %i.ln = sub nsw i32 %i.kt, %i.ku
  store i32 %i.ln, ptr %i.ja, align 4, !tbaa !9
  %i.lo = sub nsw i32 %i.kw, %i.kx
  store i32 %i.lo, ptr %i.jb, align 16, !tbaa !9
  %i.lp = sub nsw i32 %i.kz, %i.la
  store i32 %i.lp, ptr %i.jc, align 4, !tbaa !9
  %i.lq = sub nsw i32 %i.lc, %i.ld
  store i32 %i.lq, ptr %i.jd, align 8, !tbaa !9
  %i.lr = sub nsw i32 %i.lf, %i.lg
  store i32 %i.lr, ptr %i.je, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  call fastcc void @fe_mul(ptr noundef %i.gv, ptr noundef nonnull %6, ptr noundef nonnull readonly %i.ls)
  call fastcc void @fe_mul(ptr noundef %i.gu, ptr noundef nonnull %i.gu, ptr noundef nonnull readonly %i.kd)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kd, i64 120
  call fastcc void @fe_mul(ptr noundef %i.gs, ptr noundef nonnull readonly %i.lt, ptr noundef nonnull readonly %i.ha)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kd, i64 80
  call fastcc void @fe_mul(ptr noundef nonnull %6, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull readonly %i.lu)
  %i.lv = load i32, ptr %i.gv, align 16, !tbaa !9 ; 2 uses
  %i.lw = load i32, ptr %i.gu, align 8, !tbaa !9  ; 2 uses
  %i.lx = sub nsw i32 %i.lv, %i.lw
  %i.ly = load i32, ptr %i.jf, align 4, !tbaa !9  ; 2 uses
  %i.lz = load i32, ptr %i.iw, align 4, !tbaa !9  ; 2 uses
  %i.ma = sub nsw i32 %i.ly, %i.lz
  %i.mb = load i32, ptr %i.jg, align 8, !tbaa !9  ; 2 uses
  %i.mc = load i32, ptr %i.ix, align 16, !tbaa !9 ; 2 uses
  %i.md = sub nsw i32 %i.mb, %i.mc
  %i.me = load i32, ptr %i.jh, align 4, !tbaa !9  ; 2 uses
  %i.mf = load i32, ptr %i.iy, align 4, !tbaa !9  ; 2 uses
  %i.mg = sub nsw i32 %i.me, %i.mf
  %i.mh = load i32, ptr %i.ji, align 16, !tbaa !9 ; 2 uses
  %i.mi = load i32, ptr %i.iz, align 8, !tbaa !9  ; 2 uses
  %i.mj = sub nsw i32 %i.mh, %i.mi
  %i.mk = load i32, ptr %i.jj, align 4, !tbaa !9  ; 2 uses
  %i.ml = load i32, ptr %i.ja, align 4, !tbaa !9  ; 2 uses
  %i.mm = sub nsw i32 %i.mk, %i.ml
  %i.mn = load i32, ptr %i.jk, align 8, !tbaa !9  ; 2 uses
  %i.mo = load i32, ptr %i.jb, align 16, !tbaa !9 ; 2 uses
  %i.mp = sub nsw i32 %i.mn, %i.mo
  %i.mq = load i32, ptr %i.jl, align 4, !tbaa !9  ; 2 uses
  %i.mr = load i32, ptr %i.jc, align 4, !tbaa !9  ; 2 uses
  %i.ms = sub nsw i32 %i.mq, %i.mr
  %i.mt = load i32, ptr %i.jm, align 16, !tbaa !9 ; 2 uses
  %i.mu = load i32, ptr %i.jd, align 8, !tbaa !9  ; 2 uses
  %i.mv = sub nsw i32 %i.mt, %i.mu
  %i.mw = load i32, ptr %i.jn, align 4, !tbaa !9  ; 2 uses
  %i.mx = load i32, ptr %i.je, align 4, !tbaa !9  ; 2 uses
  %i.my = sub nsw i32 %i.mw, %i.mx
  %i.mz = add nsw i32 %i.lw, %i.lv
  store i32 %i.mz, ptr %i.gu, align 8, !tbaa !9
  %i.na = add nsw i32 %i.lz, %i.ly
  store i32 %i.na, ptr %i.iw, align 4, !tbaa !9
  %i.nb = add nsw i32 %i.mc, %i.mb
  store i32 %i.nb, ptr %i.ix, align 16, !tbaa !9
  %i.nc = add nsw i32 %i.mf, %i.me
  store i32 %i.nc, ptr %i.iy, align 4, !tbaa !9
  %i.nd = add nsw i32 %i.mi, %i.mh
  store i32 %i.nd, ptr %i.iz, align 8, !tbaa !9
  %i.ne = add nsw i32 %i.ml, %i.mk
  store i32 %i.ne, ptr %i.ja, align 4, !tbaa !9
  %i.nf = add nsw i32 %i.mo, %i.mn
  store i32 %i.nf, ptr %i.jb, align 16, !tbaa !9
  %i.ng = add nsw i32 %i.mr, %i.mq
  store i32 %i.ng, ptr %i.jc, align 4, !tbaa !9
  %i.nh = add nsw i32 %i.mu, %i.mt
  store i32 %i.nh, ptr %i.jd, align 8, !tbaa !9
  %i.ni = add nsw i32 %i.mx, %i.mw
  store i32 %i.ni, ptr %i.je, align 4, !tbaa !9
  %i.nj = load <4 x i32>, ptr %6, align 16, !tbaa !9
  %i.nk = shl nsw <4 x i32> %i.nj, splat (i32 1)  ; 3 uses
  store i32 %i.lx, ptr %6, align 16, !tbaa !9
  store i32 %i.ma, ptr %i.hx, align 4, !tbaa !9
  store i32 %i.md, ptr %i.ia, align 8, !tbaa !9
  store i32 %i.mg, ptr %i.id, align 4, !tbaa !9
  %i.nl = load <4 x i32>, ptr %i.gs, align 8, !tbaa !9 ; 3 uses
  %i.nm = sub nsw <4 x i32> %i.nk, %i.nl
  store <4 x i32> %i.nm, ptr %i.gv, align 16, !tbaa !9
  %i.nn = load <4 x i32>, ptr %i.ig, align 16, !tbaa !9
  %i.no = shl nsw <4 x i32> %i.nn, splat (i32 1)  ; 3 uses
  store i32 %i.mj, ptr %i.ig, align 16, !tbaa !9
  store i32 %i.mm, ptr %i.ij, align 4, !tbaa !9
  store i32 %i.mp, ptr %i.im, align 8, !tbaa !9
  store i32 %i.ms, ptr %i.ip, align 4, !tbaa !9
  %i.np = load <4 x i32>, ptr %i.jp, align 8, !tbaa !9 ; 3 uses
  %i.nq = sub nsw <4 x i32> %i.no, %i.np
  store <4 x i32> %i.nq, ptr %i.ji, align 16, !tbaa !9
  %i.nr = shufflevector <4 x i32> %i.nl, <4 x i32> %i.np, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ns = shufflevector <4 x i32> %i.nk, <4 x i32> %i.no, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nt = add nsw <4 x i32> %i.nr, %i.ns
  store <4 x i32> %i.nt, ptr %i.jo, align 4, !tbaa !9
  %foldExtExtBinop = add nsw <4 x i32> %i.np, %i.no
  %i.nu = extractelement <4 x i32> %foldExtExtBinop, i64 3
  store i32 %i.nu, ptr %i.jq, align 4, !tbaa !9
  %i.nv = load <2 x i32>, ptr %i.is, align 16, !tbaa !9
  %i.nw = shl nsw <2 x i32> %i.nv, splat (i32 1)  ; 3 uses
  store i32 %i.mv, ptr %i.is, align 16, !tbaa !9
  store i32 %i.my, ptr %i.iv, align 4, !tbaa !9
  %i.nx = load <2 x i32>, ptr %i.jr, align 8, !tbaa !9 ; 3 uses
  %foldExtExtBinop97 = sub nsw <2 x i32> %i.nw, %i.nx
  %i.ny = extractelement <2 x i32> %foldExtExtBinop97, i64 0
  store i32 %i.ny, ptr %i.jm, align 16, !tbaa !9
  %i.nz = shufflevector <2 x i32> %i.nw, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.oa = shufflevector <4 x i32> %i.nl, <4 x i32> %i.nz, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ob = shufflevector <2 x i32> %i.nx, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.oc = shufflevector <4 x i32> %i.nk, <4 x i32> %i.ob, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.od = sub nsw <4 x i32> %i.oa, %i.oc
  %i.oe = add nsw <4 x i32> %i.oa, %i.oc
  %i.of = shufflevector <4 x i32> %i.od, <4 x i32> %i.oe, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.of, ptr %i.jn, align 4, !tbaa !9
  %i.og = add nsw <2 x i32> %i.nx, %i.nw
  store <2 x i32> %i.og, ptr %i.jr, align 8, !tbaa !9
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.a
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !8   ; 4 uses
  %i.oj = icmp sgt i8 %i.oi, 0
  br i1 %i.oj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @fe_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %i.gs)
end_hunk_0
