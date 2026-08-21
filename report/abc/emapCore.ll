inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@Emap_ManMapAigStructural:bb.a
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !48
  %.val232.us.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.rb = sext i32 %.2184281.us.i to i64
  %i.rc = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.rb ; 6 uses
  store i32 %.val232.us.i, ptr %i.rc, align 8, !tbaa !88
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  store i32 0, ptr %i.rd, align 4, !tbaa !90
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.rf = trunc nuw nsw i64 %indvar341.i to i32
  store i32 %i.rf, ptr %i.re, align 8, !tbaa !91
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 %i.qw, ptr %i.rg, align 4, !tbaa !92
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  store i64 %i.ra, ptr %i.rh, align 8, !tbaa !93
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rj = shl nuw nsw i32 %i.qw, 2
  %i.rk = zext nneg i32 %i.rj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ri, ptr readonly align 4 %scevgep343.i, i64 %i.rk, i1 false), !tbaa !58
  %i.rl = add nsw i32 %.2184281.us.i, 1
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge280.us.i, %.lr.ph284.split.us.i
  %.3185.us.i = phi i32 [ %i.rl, %._crit_edge280.us.i ], [ %.2184281.us.i, %.lr.ph284.split.us.i ] ; 3 uses
  %indvar.next342.i = add nuw nsw i64 %indvar341.i, 1 ; 2 uses
  %exitcond349.not.i = icmp eq i64 %indvar.next342.i, %wide.trip.count348.i
  br i1 %exitcond349.not.i, label %._crit_edge285.i, label %.lr.ph284.split.us.i, !llvm.loop !94

._crit_edge285.i:                                 ; preds = %bb.br
  %.val233.1.pre.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %.phi.trans.insert.i567 = zext i32 %.val233.1.pre.i to i64 ; 2 uses
  %.phi.trans.insert368.i = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %.phi.trans.insert.i567 ; 2 uses
  %.pre.i568 = load i32, ptr %.phi.trans.insert368.i, align 8, !tbaa !43 ; 2 uses
  %i.rm = icmp sgt i32 %.pre.i568, 0
  br i1 %i.rm, label %.lr.ph284.split.preheader.1.i, label %._crit_edge285.1.i

.lr.ph284.split.preheader.1.i:                    ; preds = %._crit_edge285.i
  %i.rn = getelementptr inbounds nuw i8, ptr %.phi.trans.insert368.i, i64 8
  %i.ro = mul nuw nsw i64 %.phi.trans.insert.i567, 5320
  %wide.trip.count.1.i = zext nneg i32 %.pre.i568 to i64
  %i.rp = getelementptr i8, ptr %i.al, i64 %i.ro
  %i.rq = getelementptr i8, ptr %i.rp, i64 12
  br label %.lr.ph284.split.1.i

.lr.ph284.split.1.i:                              ; preds = %bb.bs, %.lr.ph284.split.preheader.1.i
  %indvar.1.i = phi i64 [ 0, %.lr.ph284.split.preheader.1.i ], [ %indvar.next.1.i, %bb.bs ] ; 4 uses
  %.2184281.1.i = phi i32 [ %.3185.us.i, %.lr.ph284.split.preheader.1.i ], [ %.3185.1.i, %bb.bs ] ; 3 uses
  %i.rr = getelementptr inbounds nuw [40 x i8], ptr %i.rn, i64 %indvar.1.i ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !45 ; 4 uses
  %i.rt = add i32 %i.rs, -4
  %or.cond.1.i = icmp ult i32 %i.rt, -2
  br i1 %or.cond.1.i, label %bb.bs, label %._crit_edge280.1.i

._crit_edge280.1.i:                               ; preds = %.lr.ph284.split.1.i
  %i.ru = mul nuw nsw i64 %indvar.1.i, 40
  %scevgep.1.i = getelementptr i8, ptr %i.rq, i64 %i.ru
  %i.rv = shl nuw nsw i32 1, %i.rs
  %i.rw = zext nneg i32 %i.rv to i64
  %notmask.i.1.i = shl nsw i64 -1, %i.rw
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !48
  %i.rz = xor i64 %notmask.i.1.i, %i.ry
  %i.sa = xor i64 %i.rz, -1
  %.val232.1.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.sb = sext i32 %.2184281.1.i to i64
  %i.sc = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.sb ; 6 uses
  store i32 %.val232.1.i, ptr %i.sc, align 8, !tbaa !88
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store i32 1, ptr %i.sd, align 4, !tbaa !90
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sf = trunc nuw nsw i64 %indvar.1.i to i32
  store i32 %i.sf, ptr %i.se, align 8, !tbaa !91
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  store i32 %i.rs, ptr %i.sg, align 4, !tbaa !92
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  store i64 %i.sa, ptr %i.sh, align 8, !tbaa !93
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %i.sj = shl nuw nsw i32 %i.rs, 2
  %i.sk = zext nneg i32 %i.sj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.si, ptr readonly align 4 %scevgep.1.i, i64 %i.sk, i1 false), !tbaa !58
  %i.sl = add nsw i32 %.2184281.1.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge280.1.i, %.lr.ph284.split.1.i
  %.3185.1.i = phi i32 [ %i.sl, %._crit_edge280.1.i ], [ %.2184281.1.i, %.lr.ph284.split.1.i ] ; 2 uses
  %indvar.next.1.i = add nuw nsw i64 %indvar.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvar.next.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %._crit_edge285.1.i, label %.lr.ph284.split.1.i, !llvm.loop !94

._crit_edge285.1.i:                               ; preds = %bb.bs, %._crit_edge285.i, %.preheader266.i
  %.2184.lcssa.1.i = phi i32 [ %.3185.us.i, %._crit_edge285.i ], [ %.0182292.i, %.preheader266.i ], [ %.3185.1.i, %bb.bs ]
  %.val.pre.i = load i32, ptr %i.ph, align 4, !tbaa !37
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %._crit_edge285.1.i, %bb.bq, %bb.bp
  %.val.i = phi i32 [ %.val369.i, %bb.bp ], [ %.val369.i, %bb.bq ], [ %.val.pre.i, %._crit_edge285.1.i ] ; 2 uses
  %.4186.i = phi i32 [ %.0182292.i, %bb.bp ], [ %.0182292.i, %bb.bq ], [ %.2184.lcssa.1.i, %._crit_edge285.1.i ] ; 8 uses
  %indvars.iv.next351.i = add nuw nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %i.sm = sext i32 %.val.i to i64
  %i.sn = icmp slt i64 %indvars.iv.next351.i, %i.sm
  br i1 %i.sn, label %bb.bp, label %.critedge.i, !llvm.loop !95

.critedge.i:                                      ; preds = %.loopexit267.i
  %i.so = sext i32 %.4186.i to i64
  tail call void @qsort(ptr noundef %i.pw, i64 noundef %i.so, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.sp = icmp sgt i32 %.4186.i, 0
  br i1 %i.sp, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph322.i:                                      ; preds = %.critedge.i
  %i.sq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.sr = getelementptr i8, ptr %.0196.i, i64 4   ; 3 uses
  %i.ss = getelementptr i8, ptr %.0196.i, i64 8
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.sz = icmp sgt i32 %i.pf, 0
  br i1 %i.sz, label %.lr.ph322.split.preheader.i, label %._crit_edge323.i

.lr.ph322.split.preheader.i:                      ; preds = %.lr.ph322.i
  %i.ta = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.3193319.i = add nsw i32 %.4186.i, -1
  %i.tb = zext nneg i32 %.3193319.i to i64
  %i.tc = load ptr, ptr %i.ta, align 8
  br label %.lr.ph322.split.i

.loopexit265.i:                                   ; preds = %.loopexit.i, %.lr.ph322.split.i
  %i.td = phi i32 [ %i.tg, %.lr.ph322.split.i ], [ %i.aeb, %.loopexit.i ]
  %i.te = phi i32 [ %i.th, %.lr.ph322.split.i ], [ %i.aeb, %.loopexit.i ]
  %.1181.lcssa.i = phi i32 [ %.0180320.i, %.lr.ph322.split.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next365.i = add nsw i64 %indvars.iv364.i, -1
  %i.tf = icmp sgt i64 %indvars.iv364.i, 0
  br i1 %i.tf, label %.lr.ph322.split.i, label %._crit_edge323.i, !llvm.loop !96

.lr.ph322.split.i:                                ; preds = %.loopexit265.i, %.lr.ph322.split.preheader.i
  %i.tg = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.td, %.loopexit265.i ] ; 2 uses
  %i.th = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.te, %.loopexit265.i ] ; 2 uses
  %indvars.iv364.i = phi i64 [ %i.tb, %.lr.ph322.split.preheader.i ], [ %indvars.iv.next365.i, %.loopexit265.i ] ; 3 uses
  %.0180320.i = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %.1181.lcssa.i, %.loopexit265.i ] ; 2 uses
  %i.ti = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv364.i ; 6 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !88
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [5320 x i8], ptr %i.al, i64 %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !91
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [40 x i8], ptr %i.tm, i64 %i.tp ; 5 uses
  %i.tr = icmp sgt i32 %i.th, 0
  br i1 %i.tr, label %.lr.ph317.i, label %.loopexit265.i

.lr.ph317.i:                                      ; preds = %.lr.ph322.split.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 4 ; 13 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph317.i
  %i.tv = phi i32 [ %i.tg, %.lr.ph317.i ], [ %i.aeb, %.loopexit.i ]
  %indvars.iv361.i = phi i64 [ 0, %.lr.ph317.i ], [ %indvars.iv.next362.i, %.loopexit.i ] ; 3 uses
  %.1181315.i = phi i32 [ %.0180320.i, %.lr.ph317.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %i.tw = getelementptr inbounds nuw [144 x i8], ptr %i.tc, i64 %indvars.iv361.i ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !97
  %i.tz = load i32, ptr %i.tq, align 8, !tbaa !45
  %.not211.i = icmp eq i32 %i.ty, %i.tz
  br i1 %.not211.i, label %.preheader264.i, label %.loopexit.i

.preheader264.i:                                  ; preds = %bb.bt
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 80 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 72 ; 2 uses
  %i.uc = trunc nuw nsw i64 %indvars.iv361.i to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge2.i, %.preheader264.i
  %.not212.i = phi i1 [ true, %.preheader264.i ], [ false, %.critedge2.i ] ; 3 uses
  %.0177312.i = phi i32 [ 0, %.preheader264.i ], [ 1, %.critedge2.i ]
  %.2311.i = phi i32 [ %.1181315.i, %.preheader264.i ], [ %.7.i, %.critedge2.i ] ; 4 uses
  %.in.i = select i1 %.not212.i, ptr %i.ub, ptr %i.ua
  %i.ud = load i64, ptr %.in.i, align 8, !tbaa !99
  %.in213.i = select i1 %.not212.i, ptr %i.ua, ptr %i.ub
  %i.ue = load i64, ptr %.in213.i, align 8, !tbaa !99 ; 4 uses
  %i.uf = load i64, ptr %i.ts, align 8, !tbaa !93
  %.not214.i = icmp eq i64 %i.ud, %i.uf
  br i1 %.not214.i, label %bb.bv, label %.critedge2.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.ug = load i32, ptr %i.tq, align 8, !tbaa !45 ; 5 uses
  %i.uh = icmp slt i32 %i.ug, 1                   ; 3 uses
  %.pre1061 = zext nneg i32 %i.ug to i64          ; 3 uses
  br i1 %i.uh, label %.lr.ph50.i.i.preheader, label %.lr.ph.i.i551

.lr.ph.i.i551:                                    ; preds = %bb.bv
  %i.ui = shl nuw nsw i64 %.pre1061, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sq, ptr nonnull readonly align 4 %i.tt, i64 %i.ui, i1 false), !tbaa !58
  br label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %.lr.ph.i.i551, %bb.bv
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %Emap_PackEntryCompare.exit.i.i
  %.02249.i.i = phi i32 [ %.1.i.i, %Emap_PackEntryCompare.exit.i.i ], [ %.4186.i, %.lr.ph50.i.i.preheader ] ; 2 uses
  %.02348.i.i = phi i32 [ %.124.i.i, %Emap_PackEntryCompare.exit.i.i ], [ 0, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.uj = add nuw nsw i32 %.02348.i.i, %.02249.i.i
  %i.uk = lshr i32 %i.uj, 1                       ; 3 uses
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.ul ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 12
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !92 ; 2 uses
  %.not.i.i.i553 = icmp eq i32 %i.uo, %i.ug
  br i1 %.not.i.i.i553, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph50.i.i
  %i.up = sub nsw i32 %i.uo, %i.ug
  br label %Emap_PackEntryCompare.exit.i.i

bb.bx:                                            ; preds = %.lr.ph50.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !93 ; 2 uses
  %i.us = icmp ult i64 %i.ur, %i.ue
  br i1 %i.us, label %Emap_PackEntryCompare.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ut = icmp ugt i64 %i.ur, %i.ue               ; 2 uses
  %brmerge.i.i = or i1 %i.uh, %i.ut
  %.mux.i.i = zext i1 %i.ut to i32
  br i1 %brmerge.i.i, label %Emap_PackEntryCompare.exit.i.i, label %.lr.ph.i.i.i563

.lr.ph.i.i.i563:                                  ; preds = %bb.by
  %i.uu = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next.i.i.i565 = add nuw nsw i64 %indvars.iv.i.i.i564, 1 ; 2 uses
  %exitcond.not.i.i.i566 = icmp eq i64 %indvars.iv.next.i.i.i565, %.pre1061
  br i1 %exitcond.not.i.i.i566, label %Emap_PackEntryCompare.exit.i.i, label %bb.ca, !llvm.loop !100

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.i.i563
  %indvars.iv.i.i.i564 = phi i64 [ 0, %.lr.ph.i.i.i563 ], [ %indvars.iv.next.i.i.i565, %bb.bz ] ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv.i.i.i564
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !58 ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv.i.i.i564
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !58 ; 2 uses
  %.not28.i.i.i = icmp eq i32 %i.uw, %i.uy
  br i1 %.not28.i.i.i, label %bb.bz, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.uz = sub nsw i32 %i.uw, %i.uy
  br label %Emap_PackEntryCompare.exit.i.i

Emap_PackEntryCompare.exit.i.i:                   ; preds = %bb.bz, %bb.cb, %bb.by, %bb.bx, %bb.bw
  %.021.i.i.i = phi i32 [ %i.up, %bb.bw ], [ %.mux.i.i, %bb.by ], [ -1, %bb.bx ], [ %i.uz, %bb.cb ], [ 0, %bb.bz ]
  %i.va = icmp slt i32 %.021.i.i.i, 0             ; 2 uses
  %i.vb = add nuw nsw i32 %i.uk, 1
  %.124.i.i = select i1 %i.va, i32 %i.vb, i32 %.02348.i.i ; 6 uses
  %.1.i.i = select i1 %i.va, i32 %.02249.i.i, i32 %i.uk ; 2 uses
  %i.vc = icmp slt i32 %.124.i.i, %.1.i.i
  br i1 %i.vc, label %.lr.ph50.i.i, label %._crit_edge.i.i554, !llvm.loop !101

._crit_edge.i.i554:                               ; preds = %Emap_PackEntryCompare.exit.i.i
  %i.vd = icmp eq i32 %.124.i.i, %.4186.i
  br i1 %i.vd, label %Emap_PackEntryFindFirst.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i.i554
  %i.ve = zext nneg i32 %.124.i.i to i64
  %i.vf = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.ve ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 12
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !92
  %.not.i26.i.i = icmp eq i32 %i.vh, %i.ug
  br i1 %.not.i26.i.i, label %bb.cd, label %Emap_PackEntryFindFirst.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !93
  %or.cond.not.i.i = icmp ne i64 %i.vj, %i.ue     ; 2 uses
  %brmerge66.i.i = or i1 %i.uh, %or.cond.not.i.i
  %.mux67.i.i = select i1 %or.cond.not.i.i, i32 -1, i32 %.124.i.i
  br i1 %brmerge66.i.i, label %Emap_PackEntryFindFirst.exit.i, label %.lr.ph.i29.i.i

.lr.ph.i29.i.i:                                   ; preds = %bb.cd
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next.i33.i.i = add nuw nsw i64 %indvars.iv.i31.i.i, 1 ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %indvars.iv.next.i33.i.i, %.pre1061
  br i1 %exitcond.not.i34.i.i, label %Emap_PackEntryFindFirst.exit.i, label %bb.cf, !llvm.loop !100

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i29.i.i
  %indvars.iv.i31.i.i = phi i64 [ 0, %.lr.ph.i29.i.i ], [ %indvars.iv.next.i33.i.i, %bb.ce ] ; 3 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %indvars.iv.i31.i.i
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !58
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv.i31.i.i
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !58
  %.not28.i32.i.i = icmp eq i32 %i.vm, %i.vo
  br i1 %.not28.i32.i.i, label %bb.ce, label %Emap_PackEntryFindFirst.exit.thread.i

Emap_PackEntryFindFirst.exit.thread.i:            ; preds = %bb.cf, %bb.cc, %._crit_edge.i.i554
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge2.i

Emap_PackEntryFindFirst.exit.i:                   ; preds = %bb.ce, %bb.cd
  %.025.i.i = phi i32 [ %.mux67.i.i, %bb.cd ], [ %.124.i.i, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %or.cond326.i = icmp ult i32 %.025.i.i, %.4186.i
  br i1 %or.cond326.i, label %.lr.ph303.preheader.i, label %.critedge2.i

.lr.ph303.preheader.i:                            ; preds = %Emap_PackEntryFindFirst.exit.i
  %i.vp = zext nneg i32 %.025.i.i to i64
  %.promoted = load ptr, ptr %9, align 8
  %i.vq = load ptr, ptr %i.pl, align 8
  %i.vr = load ptr, ptr %i.pn, align 8
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, %.lr.ph303.preheader.i
  %i.vs = phi ptr [ %.promoted, %.lr.ph303.preheader.i ], [ %i.ady, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 12 uses
  %indvars.iv358.i = phi i64 [ %i.vp, %.lr.ph303.preheader.i ], [ %indvars.iv.next359.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 2 uses
  %.3301.i = phi i32 [ %.2311.i, %.lr.ph303.preheader.i ], [ %.5.ph.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 16 uses
  %i.vt = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv358.i ; 6 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !92 ; 6 uses
  %i.vw = load i32, ptr %i.tq, align 8, !tbaa !45
  %i.vx = icmp eq i32 %i.vv, %i.vw
  br i1 %i.vx, label %bb.cg, label %.critedge2.i

bb.cg:                                            ; preds = %.lr.ph303.i
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vt, i64 40
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !93
  %i.wa = icmp eq i64 %i.vz, %i.ue
  br i1 %i.wa, label %.preheader.i555, label %.critedge2.i

.preheader.i555:                                  ; preds = %bb.cg
  %i.wb = icmp sgt i32 %i.vv, 0                   ; 2 uses
  br i1 %i.wb, label %.lr.ph298.i, label %._crit_edge299.thread.i

.lr.ph298.i:                                      ; preds = %.preheader.i555
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vt, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.vv to i64 ; 3 uses
  %min.iters.check1267 = icmp ult i32 %i.vv, 8
  br i1 %min.iters.check1267, label %scalar.ph1266.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %.lr.ph298.i
  %n.vec1269 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1277, %vector.body1270 ] ; 3 uses
  %vec.phi1272 = phi <4 x i1> [ zeroinitializer, %vector.ph1268 ], [ %i.wj, %vector.body1270 ]
  %vec.phi1273 = phi <4 x i1> [ zeroinitializer, %vector.ph1268 ], [ %i.wk, %vector.body1270 ]
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %index1271 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %wide.load = load <4 x i32>, ptr %i.wd, align 4, !tbaa !58
  %wide.load1274 = load <4 x i32>, ptr %i.we, align 4, !tbaa !58
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %index1271 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %wide.load1275 = load <4 x i32>, ptr %i.wf, align 4, !tbaa !58
  %wide.load1276 = load <4 x i32>, ptr %i.wg, align 4, !tbaa !58
  %i.wh = icmp ne <4 x i32> %wide.load, %wide.load1275
  %i.wi = icmp ne <4 x i32> %wide.load1274, %wide.load1276
  %i.wj = or <4 x i1> %vec.phi1272, %i.wh         ; 2 uses
  %i.wk = or <4 x i1> %vec.phi1273, %i.wi         ; 2 uses
  %index.next1277 = add nuw i64 %index1271, 8     ; 2 uses
  %i.wl = icmp eq i64 %index.next1277, %n.vec1269
  br i1 %i.wl, label %middle.block1278, label %vector.body1270, !llvm.loop !102

middle.block1278:                                 ; preds = %vector.body1270
  %bin.rdx1279 = or <4 x i1> %i.wk, %i.wj
  %bin.rdx1279.fr = freeze <4 x i1> %bin.rdx1279
  %i.wm = bitcast <4 x i1> %bin.rdx1279.fr to i4
  %.not1323 = icmp eq i4 %i.wm, 0
  %rdx.select = zext i1 %.not1323 to i32          ; 2 uses
  %cmp.n1280 = icmp eq i64 %n.vec1269, %wide.trip.count.i
  br i1 %cmp.n1280, label %._crit_edge299.i, label %scalar.ph1266.preheader

scalar.ph1266.preheader:                          ; preds = %.lr.ph298.i, %middle.block1278
  %indvars.iv353.i.ph = phi i64 [ 0, %.lr.ph298.i ], [ %n.vec1269, %middle.block1278 ]
  %.0297.i.ph = phi i32 [ 1, %.lr.ph298.i ], [ %rdx.select, %middle.block1278 ]
  br label %scalar.ph1266

scalar.ph1266:                                    ; preds = %scalar.ph1266.preheader, %scalar.ph1266
  %indvars.iv353.i = phi i64 [ %indvars.iv.next354.i, %scalar.ph1266 ], [ %indvars.iv353.i.ph, %scalar.ph1266.preheader ] ; 3 uses
  %.0297.i = phi i32 [ %spec.select.i562, %scalar.ph1266 ], [ %.0297.i.ph, %scalar.ph1266.preheader ]
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %indvars.iv353.i
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !58
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %indvars.iv353.i
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !58
  %.not220.i = icmp eq i32 %i.wo, %i.wq
  %spec.select.i562 = select i1 %.not220.i, i32 %.0297.i, i32 0 ; 2 uses
  %indvars.iv.next354.i = add nuw nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next354.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge299.i, label %scalar.ph1266, !llvm.loop !103

._crit_edge299.i:                                 ; preds = %scalar.ph1266, %middle.block1278
  %spec.select.i562.lcssa = phi i32 [ %rdx.select, %middle.block1278 ], [ %spec.select.i562, %scalar.ph1266 ]
  %i.wr = icmp eq i32 %spec.select.i562.lcssa, 0
  br i1 %i.wr, label %.critedge2.i, label %._crit_edge299.thread.i

._crit_edge299.thread.i:                          ; preds = %._crit_edge299.i, %.preheader.i555
end_hunk_0
