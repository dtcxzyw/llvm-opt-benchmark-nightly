Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/emapCore?download=true
inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@Emap_ManMapAigStructural:bb.a

._crit_edge280.us.i:                              ; preds = %.lr.ph284.split.us.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !48
  %.val232.us.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.qx = sext i32 %.2184281.us.i to i64
  %i.qy = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.qx ; 6 uses
  store i32 %.val232.us.i, ptr %i.qy, align 8, !tbaa !88
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  store i32 0, ptr %i.qz, align 4, !tbaa !90
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rb = trunc nuw nsw i64 %indvars.iv346.i to i32
  store i32 %i.rb, ptr %i.ra, align 8, !tbaa !91
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  store i32 %i.qt, ptr %i.rc, align 4, !tbaa !92
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  store i64 %i.qw, ptr %i.rd, align 8, !tbaa !93
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rg = shl nuw nsw i32 %i.qt, 2
  %i.rh = zext nneg i32 %i.rg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rf, ptr nonnull readonly align 4 %i.re, i64 %i.rh, i1 false), !tbaa !58
  %i.ri = add nsw i32 %.2184281.us.i, 1
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge280.us.i, %.lr.ph284.split.us.i
  %.3185.us.i = phi i32 [ %i.ri, %._crit_edge280.us.i ], [ %.2184281.us.i, %.lr.ph284.split.us.i ] ; 3 uses
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %._crit_edge285.i, label %.lr.ph284.split.us.i, !llvm.loop !94

._crit_edge285.i:                                 ; preds = %bb.br
  %.val233.1.pre.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %.phi.trans.insert.i567 = zext i32 %.val233.1.pre.i to i64
  %.phi.trans.insert369.i = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %.phi.trans.insert.i567 ; 2 uses
  %.pre.i568 = load i32, ptr %.phi.trans.insert369.i, align 8, !tbaa !43 ; 2 uses
  %i.rj = icmp sgt i32 %.pre.i568, 0
  br i1 %i.rj, label %.lr.ph284.split.preheader.1.i, label %._crit_edge285.1.i

.lr.ph284.split.preheader.1.i:                    ; preds = %._crit_edge285.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert369.i, i64 8
  %wide.trip.count.1.i = zext nneg i32 %.pre.i568 to i64
  br label %.lr.ph284.split.1.i

.lr.ph284.split.1.i:                              ; preds = %bb.bs, %.lr.ph284.split.preheader.1.i
  %indvars.iv340.1.i = phi i64 [ 0, %.lr.ph284.split.preheader.1.i ], [ %indvars.iv.next341.1.i, %bb.bs ] ; 3 uses
  %.2184281.1.i = phi i32 [ %.3185.us.i, %.lr.ph284.split.preheader.1.i ], [ %.3185.1.i, %bb.bs ] ; 3 uses
  %i.rl = getelementptr inbounds nuw [40 x i8], ptr %i.rk, i64 %indvars.iv340.1.i ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !45 ; 4 uses
  %i.rn = add i32 %i.rm, -4
  %or.cond.1.i = icmp ult i32 %i.rn, -2
  br i1 %or.cond.1.i, label %bb.bs, label %._crit_edge280.1.i

._crit_edge280.1.i:                               ; preds = %.lr.ph284.split.1.i
  %i.ro = shl nuw nsw i32 1, %i.rm
  %i.rp = zext nneg i32 %i.ro to i64
  %notmask.i.1.i = shl nsw i64 -1, %i.rp
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !48
  %i.rs = xor i64 %notmask.i.1.i, %i.rr
  %i.rt = xor i64 %i.rs, -1
  %.val232.1.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.ru = sext i32 %.2184281.1.i to i64
  %i.rv = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.ru ; 6 uses
  store i32 %.val232.1.i, ptr %i.rv, align 8, !tbaa !88
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  store i32 1, ptr %i.rw, align 4, !tbaa !90
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.ry = trunc nuw nsw i64 %indvars.iv340.1.i to i32
  store i32 %i.ry, ptr %i.rx, align 8, !tbaa !91
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 %i.rm, ptr %i.rz, align 4, !tbaa !92
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  store i64 %i.rt, ptr %i.sa, align 8, !tbaa !93
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.sd = shl nuw nsw i32 %i.rm, 2
  %i.se = zext nneg i32 %i.sd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sc, ptr nonnull readonly align 4 %i.sb, i64 %i.se, i1 false), !tbaa !58
  %i.sf = add nsw i32 %.2184281.1.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge280.1.i, %.lr.ph284.split.1.i
  %.3185.1.i = phi i32 [ %i.sf, %._crit_edge280.1.i ], [ %.2184281.1.i, %.lr.ph284.split.1.i ] ; 2 uses
  %indvars.iv.next341.1.i = add nuw nsw i64 %indvars.iv340.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next341.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %._crit_edge285.1.i, label %.lr.ph284.split.1.i, !llvm.loop !94

._crit_edge285.1.i:                               ; preds = %bb.bs, %._crit_edge285.i, %.preheader266.i
  %.2184.lcssa.1.i = phi i32 [ %.3185.us.i, %._crit_edge285.i ], [ %.0182292.i, %.preheader266.i ], [ %.3185.1.i, %bb.bs ]
  %.val.pre.i = load i32, ptr %i.ph, align 4, !tbaa !37
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %._crit_edge285.1.i, %bb.bq, %bb.bp
  %.val.i = phi i32 [ %.val370.i, %bb.bp ], [ %.val370.i, %bb.bq ], [ %.val.pre.i, %._crit_edge285.1.i ] ; 2 uses
  %.4186.i = phi i32 [ %.0182292.i, %bb.bp ], [ %.0182292.i, %bb.bq ], [ %.2184.lcssa.1.i, %._crit_edge285.1.i ] ; 8 uses
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %i.sg = sext i32 %.val.i to i64
  %i.sh = icmp slt i64 %indvars.iv.next352.i, %i.sg
  br i1 %i.sh, label %bb.bp, label %.critedge.i, !llvm.loop !95

.critedge.i:                                      ; preds = %.loopexit267.i
  %i.si = sext i32 %.4186.i to i64
  tail call void @qsort(ptr noundef %i.pw, i64 noundef %i.si, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.sj = icmp sgt i32 %.4186.i, 0
  br i1 %i.sj, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph322.i:                                      ; preds = %.critedge.i
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.sl = getelementptr i8, ptr %.0196.i, i64 4   ; 3 uses
  %i.sm = getelementptr i8, ptr %.0196.i, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.st = icmp sgt i32 %i.pf, 0
  br i1 %i.st, label %.lr.ph322.split.preheader.i, label %._crit_edge323.i

.lr.ph322.split.preheader.i:                      ; preds = %.lr.ph322.i
  %i.su = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.3193319.i = add nsw i32 %.4186.i, -1
  %i.sv = zext nneg i32 %.3193319.i to i64
  %i.sw = load ptr, ptr %i.su, align 8
  br label %.lr.ph322.split.i

.loopexit265.i:                                   ; preds = %.loopexit.i, %.lr.ph322.split.i
  %i.sx = phi i32 [ %i.ta, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %i.sy = phi i32 [ %i.tb, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %.1181.lcssa.i = phi i32 [ %.0180320.i, %.lr.ph322.split.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next366.i = add nsw i64 %indvars.iv365.i, -1
  %i.sz = icmp sgt i64 %indvars.iv365.i, 0
  br i1 %i.sz, label %.lr.ph322.split.i, label %._crit_edge323.i, !llvm.loop !96

.lr.ph322.split.i:                                ; preds = %.loopexit265.i, %.lr.ph322.split.preheader.i
  %i.ta = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.sx, %.loopexit265.i ] ; 2 uses
  %i.tb = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.sy, %.loopexit265.i ] ; 2 uses
  %indvars.iv365.i = phi i64 [ %i.sv, %.lr.ph322.split.preheader.i ], [ %indvars.iv.next366.i, %.loopexit265.i ] ; 3 uses
  %.0180320.i = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %.1181.lcssa.i, %.loopexit265.i ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv365.i ; 6 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !88
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [5320 x i8], ptr %i.al, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !91
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [40 x i8], ptr %i.tg, i64 %i.tj ; 5 uses
  %i.tl = icmp sgt i32 %i.tb, 0
  br i1 %i.tl, label %.lr.ph317.i, label %.loopexit265.i

.lr.ph317.i:                                      ; preds = %.lr.ph322.split.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 4 ; 13 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph317.i
  %i.tp = phi i32 [ %i.ta, %.lr.ph317.i ], [ %i.adv, %.loopexit.i ]
  %indvars.iv362.i = phi i64 [ 0, %.lr.ph317.i ], [ %indvars.iv.next363.i, %.loopexit.i ] ; 3 uses
  %.1181315.i = phi i32 [ %.0180320.i, %.lr.ph317.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %i.tq = getelementptr inbounds nuw [144 x i8], ptr %i.sw, i64 %indvars.iv362.i ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !97
  %i.tt = load i32, ptr %i.tk, align 8, !tbaa !45
  %.not211.i = icmp eq i32 %i.ts, %i.tt
  br i1 %.not211.i, label %.preheader264.i, label %.loopexit.i

.preheader264.i:                                  ; preds = %bb.bt
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 80 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 72 ; 2 uses
  %i.tw = trunc nuw nsw i64 %indvars.iv362.i to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge2.i, %.preheader264.i
  %.not212.i = phi i1 [ true, %.preheader264.i ], [ false, %.critedge2.i ] ; 3 uses
  %.0177312.i = phi i32 [ 0, %.preheader264.i ], [ 1, %.critedge2.i ]
  %.2311.i = phi i32 [ %.1181315.i, %.preheader264.i ], [ %.7.i, %.critedge2.i ] ; 4 uses
  %.in.i = select i1 %.not212.i, ptr %i.tv, ptr %i.tu
  %i.tx = load i64, ptr %.in.i, align 8, !tbaa !99
  %.in213.i = select i1 %.not212.i, ptr %i.tu, ptr %i.tv
  %i.ty = load i64, ptr %.in213.i, align 8, !tbaa !99 ; 4 uses
  %i.tz = load i64, ptr %i.tm, align 8, !tbaa !93
  %.not214.i = icmp eq i64 %i.tx, %i.tz
  br i1 %.not214.i, label %bb.bv, label %.critedge2.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.ua = load i32, ptr %i.tk, align 8, !tbaa !45 ; 5 uses
  %i.ub = icmp slt i32 %i.ua, 1                   ; 3 uses
  %.pre1061 = zext nneg i32 %i.ua to i64          ; 3 uses
  br i1 %i.ub, label %.lr.ph50.i.i.preheader, label %.lr.ph.i.i551

.lr.ph.i.i551:                                    ; preds = %bb.bv
  %i.uc = shl nuw nsw i64 %.pre1061, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sk, ptr nonnull readonly align 4 %i.tn, i64 %i.uc, i1 false), !tbaa !58
  br label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %bb.bv, %.lr.ph.i.i551
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %Emap_PackEntryCompare.exit.i.i
  %.02249.i.i = phi i32 [ %.1.i.i, %Emap_PackEntryCompare.exit.i.i ], [ %.4186.i, %.lr.ph50.i.i.preheader ] ; 2 uses
  %.02348.i.i = phi i32 [ %.124.i.i, %Emap_PackEntryCompare.exit.i.i ], [ 0, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.ud = add nuw nsw i32 %.02348.i.i, %.02249.i.i
  %i.ue = lshr i32 %i.ud, 1                       ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !92 ; 2 uses
  %.not.i.i.i553 = icmp eq i32 %i.ui, %i.ua
  br i1 %.not.i.i.i553, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph50.i.i
  %i.uj = sub nsw i32 %i.ui, %i.ua
  br label %Emap_PackEntryCompare.exit.i.i

bb.bx:                                            ; preds = %.lr.ph50.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !93 ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.ty
  br i1 %i.um, label %Emap_PackEntryCompare.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.un = icmp ugt i64 %i.ul, %i.ty               ; 2 uses
  %brmerge.i.i = or i1 %i.ub, %i.un
  %.mux.i.i = zext i1 %i.un to i32
  br i1 %brmerge.i.i, label %Emap_PackEntryCompare.exit.i.i, label %.lr.ph.i.i.i563

.lr.ph.i.i.i563:                                  ; preds = %bb.by
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next.i.i.i565 = add nuw nsw i64 %indvars.iv.i.i.i564, 1 ; 2 uses
  %exitcond.not.i.i.i566 = icmp eq i64 %indvars.iv.next.i.i.i565, %.pre1061
  br i1 %exitcond.not.i.i.i566, label %Emap_PackEntryCompare.exit.i.i, label %bb.ca, !llvm.loop !100

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.i.i563
  %indvars.iv.i.i.i564 = phi i64 [ 0, %.lr.ph.i.i.i563 ], [ %indvars.iv.next.i.i.i565, %bb.bz ] ; 3 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv.i.i.i564
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !58 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv.i.i.i564
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !58 ; 2 uses
  %.not28.i.i.i = icmp eq i32 %i.uq, %i.us
  br i1 %.not28.i.i.i, label %bb.bz, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ut = sub nsw i32 %i.uq, %i.us
  br label %Emap_PackEntryCompare.exit.i.i

Emap_PackEntryCompare.exit.i.i:                   ; preds = %bb.bz, %bb.cb, %bb.by, %bb.bx, %bb.bw
  %.021.i.i.i = phi i32 [ %i.uj, %bb.bw ], [ %.mux.i.i, %bb.by ], [ -1, %bb.bx ], [ %i.ut, %bb.cb ], [ 0, %bb.bz ]
  %i.uu = icmp slt i32 %.021.i.i.i, 0             ; 2 uses
  %i.uv = add nuw nsw i32 %i.ue, 1
  %.124.i.i = select i1 %i.uu, i32 %i.uv, i32 %.02348.i.i ; 6 uses
  %.1.i.i = select i1 %i.uu, i32 %.02249.i.i, i32 %i.ue ; 2 uses
  %i.uw = icmp slt i32 %.124.i.i, %.1.i.i
  br i1 %i.uw, label %.lr.ph50.i.i, label %._crit_edge.i.i554, !llvm.loop !101

._crit_edge.i.i554:                               ; preds = %Emap_PackEntryCompare.exit.i.i
  %i.ux = icmp eq i32 %.124.i.i, %.4186.i
  br i1 %i.ux, label %Emap_PackEntryFindFirst.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i.i554
  %i.uy = zext nneg i32 %.124.i.i to i64
  %i.uz = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.uy ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 12
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !92
  %.not.i26.i.i = icmp eq i32 %i.vb, %i.ua
  br i1 %.not.i26.i.i, label %bb.cd, label %Emap_PackEntryFindFirst.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 40
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !93
  %or.cond.not.i.i = icmp ne i64 %i.vd, %i.ty     ; 2 uses
  %brmerge66.i.i = or i1 %i.ub, %or.cond.not.i.i
  %.mux67.i.i = select i1 %or.cond.not.i.i, i32 -1, i32 %.124.i.i
  br i1 %brmerge66.i.i, label %Emap_PackEntryFindFirst.exit.i, label %.lr.ph.i29.i.i

.lr.ph.i29.i.i:                                   ; preds = %bb.cd
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next.i33.i.i = add nuw nsw i64 %indvars.iv.i31.i.i, 1 ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %indvars.iv.next.i33.i.i, %.pre1061
  br i1 %exitcond.not.i34.i.i, label %Emap_PackEntryFindFirst.exit.i, label %bb.cf, !llvm.loop !100

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i29.i.i
  %indvars.iv.i31.i.i = phi i64 [ 0, %.lr.ph.i29.i.i ], [ %indvars.iv.next.i33.i.i, %bb.ce ] ; 3 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %indvars.iv.i31.i.i
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !58
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv.i31.i.i
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !58
  %.not28.i32.i.i = icmp eq i32 %i.vg, %i.vi
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
  %i.vj = zext nneg i32 %.025.i.i to i64
  %.promoted = load ptr, ptr %9, align 8
  %i.vk = load ptr, ptr %i.pl, align 8
  %i.vl = load ptr, ptr %i.pn, align 8
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, %.lr.ph303.preheader.i
  %i.vm = phi ptr [ %.promoted, %.lr.ph303.preheader.i ], [ %i.ads, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 12 uses
  %indvars.iv359.i = phi i64 [ %i.vj, %.lr.ph303.preheader.i ], [ %indvars.iv.next360.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 2 uses
  %.3301.i = phi i32 [ %.2311.i, %.lr.ph303.preheader.i ], [ %.5.ph.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 16 uses
  %i.vn = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv359.i ; 6 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 12
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !92 ; 6 uses
  %i.vq = load i32, ptr %i.tk, align 8, !tbaa !45
  %i.vr = icmp eq i32 %i.vp, %i.vq
  br i1 %i.vr, label %bb.cg, label %.critedge2.i

bb.cg:                                            ; preds = %.lr.ph303.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vn, i64 40
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !93
  %i.vu = icmp eq i64 %i.vt, %i.ty
  br i1 %i.vu, label %.preheader.i555, label %.critedge2.i

.preheader.i555:                                  ; preds = %bb.cg
  %i.vv = icmp sgt i32 %i.vp, 0                   ; 2 uses
  br i1 %i.vv, label %.lr.ph298.i, label %._crit_edge299.thread.i

.lr.ph298.i:                                      ; preds = %.preheader.i555
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vn, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.vp to i64 ; 3 uses
  %min.iters.check1267 = icmp ult i32 %i.vp, 8
  br i1 %min.iters.check1267, label %scalar.ph1266.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %.lr.ph298.i
  %n.vec1269 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1277, %vector.body1270 ] ; 3 uses
  %vec.phi1272 = phi <4 x i1> [ zeroinitializer, %vector.ph1268 ], [ %i.wd, %vector.body1270 ]
  %vec.phi1273 = phi <4 x i1> [ zeroinitializer, %vector.ph1268 ], [ %i.we, %vector.body1270 ]
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %index1271 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %wide.load = load <4 x i32>, ptr %i.vx, align 4, !tbaa !58
  %wide.load1274 = load <4 x i32>, ptr %i.vy, align 4, !tbaa !58
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %index1271 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %wide.load1275 = load <4 x i32>, ptr %i.vz, align 4, !tbaa !58
  %wide.load1276 = load <4 x i32>, ptr %i.wa, align 4, !tbaa !58
  %i.wb = icmp ne <4 x i32> %wide.load, %wide.load1275
  %i.wc = icmp ne <4 x i32> %wide.load1274, %wide.load1276
  %i.wd = or <4 x i1> %vec.phi1272, %i.wb         ; 2 uses
  %i.we = or <4 x i1> %vec.phi1273, %i.wc         ; 2 uses
  %index.next1277 = add nuw i64 %index1271, 8     ; 2 uses
  %i.wf = icmp eq i64 %index.next1277, %n.vec1269
  br i1 %i.wf, label %middle.block1278, label %vector.body1270, !llvm.loop !102

middle.block1278:                                 ; preds = %vector.body1270
  %bin.rdx1279 = or <4 x i1> %i.we, %i.wd
  %bin.rdx1279.fr = freeze <4 x i1> %bin.rdx1279
  %i.wg = bitcast <4 x i1> %bin.rdx1279.fr to i4
  %.not1323 = icmp eq i4 %i.wg, 0
  %rdx.select = zext i1 %.not1323 to i32          ; 2 uses
  %cmp.n1280 = icmp eq i64 %n.vec1269, %wide.trip.count.i
  br i1 %cmp.n1280, label %._crit_edge299.i, label %scalar.ph1266.preheader

scalar.ph1266.preheader:                          ; preds = %.lr.ph298.i, %middle.block1278
  %indvars.iv354.i.ph = phi i64 [ 0, %.lr.ph298.i ], [ %n.vec1269, %middle.block1278 ]
  %.0297.i.ph = phi i32 [ 1, %.lr.ph298.i ], [ %rdx.select, %middle.block1278 ]
  br label %scalar.ph1266

scalar.ph1266:                                    ; preds = %scalar.ph1266.preheader, %scalar.ph1266
  %indvars.iv354.i = phi i64 [ %indvars.iv.next355.i, %scalar.ph1266 ], [ %indvars.iv354.i.ph, %scalar.ph1266.preheader ] ; 3 uses
  %.0297.i = phi i32 [ %spec.select.i562, %scalar.ph1266 ], [ %.0297.i.ph, %scalar.ph1266.preheader ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %indvars.iv354.i
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !58
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %indvars.iv354.i
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !58
  %.not220.i = icmp eq i32 %i.wi, %i.wk
  %spec.select.i562 = select i1 %.not220.i, i32 %.0297.i, i32 0 ; 2 uses
  %indvars.iv.next355.i = add nuw nsw i64 %indvars.iv354.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next355.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge299.i, label %scalar.ph1266, !llvm.loop !103

._crit_edge299.i:                                 ; preds = %scalar.ph1266, %middle.block1278
  %spec.select.i562.lcssa = phi i32 [ %rdx.select, %middle.block1278 ], [ %spec.select.i562, %scalar.ph1266 ]
  %i.wl = icmp eq i32 %spec.select.i562.lcssa, 0
  br i1 %i.wl, label %.critedge2.i, label %._crit_edge299.thread.i

._crit_edge299.thread.i:                          ; preds = %._crit_edge299.i, %.preheader.i555
end_hunk_0
