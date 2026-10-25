Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/emapCore?download=true
inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 46
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@Emap_ManMapAigStructural:bb.a
  %.val232.us.i = load i32, ptr %i.qf, align 8, !tbaa !59
  %i.qq = sext i32 %.2184281.us.i to i64
  %i.qr = getelementptr inbounds [48 x i8], ptr %i.pp, i64 %i.qq ; 6 uses
  store i32 %.val232.us.i, ptr %i.qr, align 8, !tbaa !86
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  store i32 0, ptr %i.qs, align 4, !tbaa !87
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qu = trunc nuw nsw i64 %indvars.iv346.i to i32
  store i32 %i.qu, ptr %i.qt, align 8, !tbaa !88
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 12
  store i32 %i.qm, ptr %i.qv, align 4, !tbaa !89
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  store i64 %i.qp, ptr %i.qw, align 8, !tbaa !90
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qz = shl nuw nsw i32 %i.qm, 2
  %i.ra = zext nneg i32 %i.qz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qy, ptr nonnull readonly align 4 %i.qx, i64 %i.ra, i1 false), !tbaa !73
  %i.rb = add nsw i32 %.2184281.us.i, 1
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge280.us.i, %.lr.ph284.split.us.i
  %.3185.us.i = phi i32 [ %i.rb, %._crit_edge280.us.i ], [ %.2184281.us.i, %.lr.ph284.split.us.i ] ; 3 uses
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %._crit_edge285.i, label %.lr.ph284.split.us.i, !llvm.loop !154

._crit_edge285.i:                                 ; preds = %bb.br
  %.val233.1.pre.i = load i32, ptr %i.qf, align 8, !tbaa !59
  %.phi.trans.insert.i566 = zext i32 %.val233.1.pre.i to i64
  %.phi.trans.insert369.i = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %.phi.trans.insert.i566 ; 2 uses
  %.pre.i567 = load i32, ptr %.phi.trans.insert369.i, align 8, !tbaa !61 ; 2 uses
  %i.rc = icmp sgt i32 %.pre.i567, 0
  br i1 %i.rc, label %.lr.ph284.split.preheader.1.i, label %._crit_edge285.1.i

.lr.ph284.split.preheader.1.i:                    ; preds = %._crit_edge285.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.phi.trans.insert369.i, i64 8
  %wide.trip.count.1.i = zext nneg i32 %.pre.i567 to i64
  br label %.lr.ph284.split.1.i

.lr.ph284.split.1.i:                              ; preds = %bb.bs, %.lr.ph284.split.preheader.1.i
  %indvars.iv340.1.i = phi i64 [ 0, %.lr.ph284.split.preheader.1.i ], [ %indvars.iv.next341.1.i, %bb.bs ] ; 3 uses
  %.2184281.1.i = phi i32 [ %.3185.us.i, %.lr.ph284.split.preheader.1.i ], [ %.3185.1.i, %bb.bs ] ; 3 uses
  %i.re = getelementptr inbounds nuw [40 x i8], ptr %i.rd, i64 %indvars.iv340.1.i ; 3 uses
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !64 ; 4 uses
  %i.rg = add i32 %i.rf, -4
  %or.cond.1.i = icmp ult i32 %i.rg, -2
  br i1 %or.cond.1.i, label %bb.bs, label %._crit_edge280.1.i

._crit_edge280.1.i:                               ; preds = %.lr.ph284.split.1.i
  %i.rh = shl nuw nsw i32 1, %i.rf
  %i.ri = zext nneg i32 %i.rh to i64
  %notmask.i.1.i = shl nsw i64 -1, %i.ri
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !65
  %i.rl = xor i64 %notmask.i.1.i, %i.rk
  %i.rm = xor i64 %i.rl, -1
  %.val232.1.i = load i32, ptr %i.qf, align 8, !tbaa !59
  %i.rn = sext i32 %.2184281.1.i to i64
  %i.ro = getelementptr inbounds [48 x i8], ptr %i.pp, i64 %i.rn ; 6 uses
  store i32 %.val232.1.i, ptr %i.ro, align 8, !tbaa !86
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store i32 1, ptr %i.rp, align 4, !tbaa !87
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rr = trunc nuw nsw i64 %indvars.iv340.1.i to i32
  store i32 %i.rr, ptr %i.rq, align 8, !tbaa !88
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  store i32 %i.rf, ptr %i.rs, align 4, !tbaa !89
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  store i64 %i.rm, ptr %i.rt, align 8, !tbaa !90
  %i.ru = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rw = shl nuw nsw i32 %i.rf, 2
  %i.rx = zext nneg i32 %i.rw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rv, ptr nonnull readonly align 4 %i.ru, i64 %i.rx, i1 false), !tbaa !73
  %i.ry = add nsw i32 %.2184281.1.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge280.1.i, %.lr.ph284.split.1.i
  %.3185.1.i = phi i32 [ %i.ry, %._crit_edge280.1.i ], [ %.2184281.1.i, %.lr.ph284.split.1.i ] ; 2 uses
  %indvars.iv.next341.1.i = add nuw nsw i64 %indvars.iv340.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next341.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %._crit_edge285.1.i, label %.lr.ph284.split.1.i, !llvm.loop !154

._crit_edge285.1.i:                               ; preds = %bb.bs, %._crit_edge285.i, %.preheader266.i
  %.2184.lcssa.1.i = phi i32 [ %.3185.us.i, %._crit_edge285.i ], [ %.0182292.i, %.preheader266.i ], [ %.3185.1.i, %bb.bs ]
  %.val.pre.i = load i32, ptr %i.pa, align 4, !tbaa !56
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %._crit_edge285.1.i, %bb.bq, %bb.bp
  %.val.i = phi i32 [ %.val370.i, %bb.bp ], [ %.val370.i, %bb.bq ], [ %.val.pre.i, %._crit_edge285.1.i ] ; 2 uses
  %.4186.i = phi i32 [ %.0182292.i, %bb.bp ], [ %.0182292.i, %bb.bq ], [ %.2184.lcssa.1.i, %._crit_edge285.1.i ] ; 8 uses
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %i.rz = sext i32 %.val.i to i64
  %i.sa = icmp slt i64 %indvars.iv.next352.i, %i.rz
  br i1 %i.sa, label %bb.bp, label %.critedge.i, !llvm.loop !155

.critedge.i:                                      ; preds = %.loopexit267.i
  %i.sb = sext i32 %.4186.i to i64
  tail call void @qsort(ptr noundef %i.pp, i64 noundef %i.sb, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.sc = icmp sgt i32 %.4186.i, 0
  br i1 %i.sc, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph322.i:                                      ; preds = %.critedge.i
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.se = getelementptr i8, ptr %.0196.i, i64 4   ; 3 uses
  %i.sf = getelementptr i8, ptr %.0196.i, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.sm = icmp sgt i32 %i.oy, 0
  br i1 %i.sm, label %.lr.ph322.split.preheader.i, label %._crit_edge323.i

.lr.ph322.split.preheader.i:                      ; preds = %.lr.ph322.i
  %i.sn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.3193319.i = add nsw i32 %.4186.i, -1
  %i.so = zext nneg i32 %.3193319.i to i64
  %i.sp = load ptr, ptr %i.sn, align 8
  br label %.lr.ph322.split.i

.loopexit265.i:                                   ; preds = %.loopexit.i, %.lr.ph322.split.i
  %.pre.i.i5561079 = phi ptr [ %.pre.i.i5561078, %.lr.ph322.split.i ], [ %.pre.i.i5561081, %.loopexit.i ]
  %i.sq = phi i32 [ %i.sv, %.lr.ph322.split.i ], [ %i.adt, %.loopexit.i ]
  %i.sr = phi i32 [ %i.sw, %.lr.ph322.split.i ], [ %i.adu, %.loopexit.i ] ; 2 uses
  %i.ss = phi i32 [ %i.sx, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %i.st = phi i32 [ %i.sy, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %.1181.lcssa.i = phi i32 [ %.0180320.i, %.lr.ph322.split.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next366.i = add nsw i64 %indvars.iv365.i, -1
  %i.su = icmp sgt i64 %indvars.iv365.i, 0
  br i1 %i.su, label %.lr.ph322.split.i, label %._crit_edge323.i, !llvm.loop !156

.lr.ph322.split.i:                                ; preds = %.loopexit265.i, %.lr.ph322.split.preheader.i
  %.pre.i.i5561078 = phi ptr [ null, %.lr.ph322.split.preheader.i ], [ %.pre.i.i5561079, %.loopexit265.i ] ; 2 uses
  %i.sv = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %i.sq, %.loopexit265.i ] ; 2 uses
  %i.sw = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %i.sr, %.loopexit265.i ] ; 2 uses
  %i.sx = phi i32 [ %i.oy, %.lr.ph322.split.preheader.i ], [ %i.ss, %.loopexit265.i ] ; 2 uses
  %i.sy = phi i32 [ %i.oy, %.lr.ph322.split.preheader.i ], [ %i.st, %.loopexit265.i ] ; 2 uses
  %indvars.iv365.i = phi i64 [ %i.so, %.lr.ph322.split.preheader.i ], [ %indvars.iv.next366.i, %.loopexit265.i ] ; 3 uses
  %.0180320.i = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %.1181.lcssa.i, %.loopexit265.i ] ; 2 uses
  %i.sz = getelementptr inbounds nuw [48 x i8], ptr %i.pp, i64 %indvars.iv365.i ; 6 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !86
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [5320 x i8], ptr %i.al, i64 %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !88
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [40 x i8], ptr %i.td, i64 %i.tg ; 5 uses
  %i.ti = icmp sgt i32 %i.sy, 0
  br i1 %i.ti, label %.lr.ph317.i, label %.loopexit265.i

.lr.ph317.i:                                      ; preds = %.lr.ph322.split.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 4 ; 13 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %.pre373.i = load i32, ptr %i.ox, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph317.i
  %.pre.i.i5561080 = phi ptr [ %.pre.i.i5561078, %.lr.ph317.i ], [ %.pre.i.i5561081, %.loopexit.i ] ; 2 uses
  %i.tm = phi i32 [ %i.sv, %.lr.ph317.i ], [ %i.adt, %.loopexit.i ] ; 2 uses
  %i.tn = phi i32 [ %i.sw, %.lr.ph317.i ], [ %i.adu, %.loopexit.i ] ; 2 uses
  %i.to = phi i32 [ %i.sx, %.lr.ph317.i ], [ %i.adv, %.loopexit.i ]
  %indvars.iv362.i = phi i64 [ 0, %.lr.ph317.i ], [ %indvars.iv.next363.i, %.loopexit.i ] ; 3 uses
  %.1181315.i = phi i32 [ %.0180320.i, %.lr.ph317.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %i.tp = getelementptr inbounds nuw [144 x i8], ptr %i.sp, i64 %indvars.iv362.i ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !92
  %i.ts = load i32, ptr %i.th, align 8, !tbaa !64
  %.not211.i = icmp eq i32 %i.tr, %i.ts
  br i1 %.not211.i, label %.preheader264.i, label %.loopexit.i

.preheader264.i:                                  ; preds = %bb.bt
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 80 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tp, i64 72 ; 2 uses
  %i.tv = trunc nuw nsw i64 %indvars.iv362.i to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge2.i, %.preheader264.i
  %.pre.i.i5561082 = phi ptr [ %.pre.i.i5561080, %.preheader264.i ], [ %.pre.i.i5561083, %.critedge2.i ] ; 4 uses
  %i.tw = phi i32 [ %i.tm, %.preheader264.i ], [ %i.adr, %.critedge2.i ] ; 4 uses
  %i.tx = phi i32 [ %i.tn, %.preheader264.i ], [ %i.ads, %.critedge2.i ] ; 4 uses
  %.not212.i = phi i1 [ true, %.preheader264.i ], [ false, %.critedge2.i ] ; 3 uses
  %.0177312.i = phi i32 [ 0, %.preheader264.i ], [ 1, %.critedge2.i ]
  %.2311.i = phi i32 [ %.1181315.i, %.preheader264.i ], [ %.7.i, %.critedge2.i ] ; 4 uses
  %.in.i = select i1 %.not212.i, ptr %i.tu, ptr %i.tt
  %i.ty = load i64, ptr %.in.i, align 8, !tbaa !93
  %.in213.i = select i1 %.not212.i, ptr %i.tt, ptr %i.tu
  %i.tz = load i64, ptr %.in213.i, align 8, !tbaa !93 ; 4 uses
  %i.ua = load i64, ptr %i.tj, align 8, !tbaa !90
  %.not214.i = icmp eq i64 %i.ty, %i.ua
  br i1 %.not214.i, label %bb.bv, label %.critedge2.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.ub = load i32, ptr %i.th, align 8, !tbaa !64 ; 5 uses
  %10 = icmp sgt i32 %i.ub, 0                     ; 3 uses
  %.pre377.i = zext nneg i32 %i.ub to i64         ; 3 uses
  br i1 %10, label %.lr.ph.i.i551, label %.preheader.i.i552.preheader

.lr.ph.i.i551:                                    ; preds = %bb.bv
  %i.uc = shl nuw nsw i64 %.pre377.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sd, ptr nonnull readonly align 4 %i.tk, i64 %i.uc, i1 false), !tbaa !73
  br label %.preheader.i.i552.preheader

.preheader.i.i552.preheader:                      ; preds = %.lr.ph.i.i551, %bb.bv
  br label %.preheader.i.i552

.preheader.i.i552:                                ; preds = %.preheader.i.i552.preheader, %Emap_PackEntryCompare.exit.i.i
  %.02249.i.i = phi i32 [ %.1.i.i, %Emap_PackEntryCompare.exit.i.i ], [ %.4186.i, %.preheader.i.i552.preheader ] ; 2 uses
  %.02348.i.i = phi i32 [ %.124.i.i, %Emap_PackEntryCompare.exit.i.i ], [ 0, %.preheader.i.i552.preheader ] ; 2 uses
  %i.ud = add nuw nsw i32 %.02348.i.i, %.02249.i.i
  %i.ue = lshr i32 %i.ud, 1                       ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %i.pp, i64 %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !89 ; 2 uses
  %.not.i.i.i553 = icmp eq i32 %i.ui, %i.ub
  br i1 %.not.i.i.i553, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.preheader.i.i552
  %i.uj = sub nsw i32 %i.ui, %i.ub
  br label %Emap_PackEntryCompare.exit.i.i

bb.bx:                                            ; preds = %.preheader.i.i552
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !90 ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.tz
  br i1 %i.um, label %Emap_PackEntryCompare.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %11 = icmp ule i64 %i.ul, %i.tz
  %or.cond.i.i = and i1 %10, %11
  br i1 %or.cond.i.i, label %.lr.ph.i.i.i562, label %Emap_PackEntryCompare.exit.i.i

.lr.ph.i.i.i562:                                  ; preds = %bb.by
  %i.un = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next.i.i.i564 = add nuw nsw i64 %indvars.iv.i.i.i563, 1 ; 2 uses
  %exitcond.not.i.i.i565 = icmp eq i64 %indvars.iv.next.i.i.i564, %.pre377.i
  br i1 %exitcond.not.i.i.i565, label %Emap_PackEntryCompare.exit.i.i, label %bb.ca, !llvm.loop !0

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.i.i562
  %indvars.iv.i.i.i563 = phi i64 [ 0, %.lr.ph.i.i.i562 ], [ %indvars.iv.next.i.i.i564, %bb.bz ] ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv.i.i.i563
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !73 ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.i.i.i563
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !73 ; 2 uses
  %.not28.i.i.i = icmp eq i32 %i.up, %i.ur
  br i1 %.not28.i.i.i, label %bb.bz, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.us = sub nsw i32 %i.up, %i.ur
  br label %Emap_PackEntryCompare.exit.i.i

Emap_PackEntryCompare.exit.i.i:                   ; preds = %bb.bz, %bb.cb, %bb.by, %bb.bx, %bb.bw
  %.021.i.i.i = phi i32 [ %i.uj, %bb.bw ], [ 0, %bb.by ], [ -2147483648, %bb.bx ], [ %i.us, %bb.cb ], [ 0, %bb.bz ]
  %i.ut = icmp slt i32 %.021.i.i.i, 0             ; 2 uses
  %i.uu = add nuw nsw i32 %i.ue, 1
  %.124.i.i = select i1 %i.ut, i32 %i.uu, i32 %.02348.i.i ; 6 uses
  %.1.i.i = select i1 %i.ut, i32 %.02249.i.i, i32 %i.ue ; 2 uses
  %i.uv = icmp slt i32 %.124.i.i, %.1.i.i
  br i1 %i.uv, label %.preheader.i.i552, label %._crit_edge.i.loopexit.i, !llvm.loop !1

._crit_edge.i.loopexit.i:                         ; preds = %Emap_PackEntryCompare.exit.i.i
  %i.uw = icmp eq i32 %.124.i.i, %.4186.i
  br i1 %i.uw, label %Emap_PackEntryFindFirst.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ux = zext nneg i32 %.124.i.i to i64
  %i.uy = getelementptr inbounds nuw [48 x i8], ptr %i.pp, i64 %i.ux ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 12
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !89
  %.not.i26.i.i = icmp eq i32 %i.va, %i.ub
  br i1 %.not.i26.i.i, label %bb.cd, label %Emap_PackEntryFindFirst.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 40
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !90
  %or.cond.not.i.i = icmp eq i64 %i.vc, %i.tz     ; 2 uses
  %brmerge.not.i.i = and i1 %10, %or.cond.not.i.i
  %.mux67.i.i = select i1 %or.cond.not.i.i, i32 %.124.i.i, i32 -1
  br i1 %brmerge.not.i.i, label %.lr.ph.i29.i.i, label %Emap_PackEntryFindFirst.exit.i

.lr.ph.i29.i.i:                                   ; preds = %bb.cd
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next.i33.i.i = add nuw nsw i64 %indvars.iv.i31.i.i, 1 ; 2 uses
  %exitcond.not.i34.i.i = icmp eq i64 %indvars.iv.next.i33.i.i, %.pre377.i
  br i1 %exitcond.not.i34.i.i, label %Emap_PackEntryFindFirst.exit.i, label %bb.cf, !llvm.loop !0

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i29.i.i
  %indvars.iv.i31.i.i = phi i64 [ 0, %.lr.ph.i29.i.i ], [ %indvars.iv.next.i33.i.i, %bb.ce ] ; 3 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv.i31.i.i
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !73
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.i31.i.i
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !73
  %.not28.i32.i.i = icmp eq i32 %i.vf, %i.vh
  br i1 %.not28.i32.i.i, label %bb.ce, label %Emap_PackEntryFindFirst.exit.thread.i

Emap_PackEntryFindFirst.exit.thread.i:            ; preds = %bb.cf, %bb.cc, %._crit_edge.i.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge2.i

Emap_PackEntryFindFirst.exit.i:                   ; preds = %bb.ce, %bb.cd
  %.025.i.i = phi i32 [ %.mux67.i.i, %bb.cd ], [ %.124.i.i, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %or.cond326.i = icmp ult i32 %.025.i.i, %.4186.i
  br i1 %or.cond326.i, label %.lr.ph303.preheader.i, label %.critedge2.i

.lr.ph303.preheader.i:                            ; preds = %Emap_PackEntryFindFirst.exit.i
  %i.vi = zext nneg i32 %.025.i.i to i64
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, %.lr.ph303.preheader.i
  %.pre.i.i556 = phi ptr [ %.pre.i.i5561082, %.lr.ph303.preheader.i ], [ %.pre.i.i5561086, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 15 uses
  %i.vj = phi i32 [ %i.tw, %.lr.ph303.preheader.i ], [ %i.adn, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 16 uses
  %i.vk = phi i32 [ %i.tx, %.lr.ph303.preheader.i ], [ %i.ado, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 17 uses
  %indvars.iv359.i = phi i64 [ %i.vi, %.lr.ph303.preheader.i ], [ %indvars.iv.next360.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 2 uses
  %.3301.i = phi i32 [ %.2311.i, %.lr.ph303.preheader.i ], [ %.5.ph.i, %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i ] ; 16 uses
  %i.vl = getelementptr inbounds nuw [48 x i8], ptr %i.pp, i64 %indvars.iv359.i ; 6 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 12
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !89 ; 6 uses
  %i.vo = load i32, ptr %i.th, align 8, !tbaa !64
  %i.vp = icmp eq i32 %i.vn, %i.vo
  br i1 %i.vp, label %bb.cg, label %.critedge2.i

bb.cg:                                            ; preds = %.lr.ph303.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !90
  %i.vs = icmp eq i64 %i.vr, %i.tz
  br i1 %i.vs, label %.preheader.i554, label %.critedge2.i

.preheader.i554:                                  ; preds = %bb.cg
  %i.vt = icmp sgt i32 %i.vn, 0                   ; 2 uses
  br i1 %i.vt, label %.lr.ph298.i, label %._crit_edge299.thread.i

.lr.ph298.i:                                      ; preds = %.preheader.i554
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vl, i64 16 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.vn to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.vn, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph298.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.wb, %vector.body ]
  %vec.phi1318 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.wc, %vector.body ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %index ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %wide.load = load <4 x i32>, ptr %i.vv, align 4, !tbaa !73
  %wide.load1319 = load <4 x i32>, ptr %i.vw, align 4, !tbaa !73
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %index ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %wide.load1320 = load <4 x i32>, ptr %i.vx, align 4, !tbaa !73
  %wide.load1321 = load <4 x i32>, ptr %i.vy, align 4, !tbaa !73
  %i.vz = icmp ne <4 x i32> %wide.load, %wide.load1320
  %i.wa = icmp ne <4 x i32> %wide.load1319, %wide.load1321
  %i.wb = or <4 x i1> %vec.phi, %i.vz             ; 2 uses
  %i.wc = or <4 x i1> %vec.phi1318, %i.wa         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wd = icmp eq i64 %index.next, %n.vec
  br i1 %i.wd, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.wc, %i.wb
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.we = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1362 = icmp eq i4 %i.we, 0
  %rdx.select = zext i1 %.not1362 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge299.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph298.i, %middle.block
  %indvars.iv354.i.ph = phi i64 [ 0, %.lr.ph298.i ], [ %n.vec, %middle.block ]
  %.0297.i.ph = phi i32 [ 1, %.lr.ph298.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv354.i = phi i64 [ %indvars.iv.next355.i, %scalar.ph ], [ %indvars.iv354.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0297.i = phi i32 [ %spec.select.i561, %scalar.ph ], [ %.0297.i.ph, %scalar.ph.preheader ]
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %indvars.iv354.i
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !73
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv354.i
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !73
  %.not220.i = icmp eq i32 %i.wg, %i.wi
  %spec.select.i561 = select i1 %.not220.i, i32 %.0297.i, i32 0 ; 2 uses
  %indvars.iv.next355.i = add nuw nsw i64 %indvars.iv354.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next355.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge299.i, label %scalar.ph, !llvm.loop !158

._crit_edge299.i:                                 ; preds = %scalar.ph, %middle.block
  %spec.select.i561.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.i561, %scalar.ph ]
  %i.wj = icmp eq i32 %spec.select.i561.lcssa, 0
  br i1 %i.wj, label %.critedge2.i, label %._crit_edge299.thread.i

._crit_edge299.thread.i:                          ; preds = %._crit_edge299.i, %.preheader.i554
  %i.wk = load i32, ptr %i.vl, align 8, !tbaa !86 ; 7 uses
  %i.wl = load i32, ptr %i.sz, align 8, !tbaa !86 ; 7 uses
  %i.wm = icmp eq i32 %i.wk, %i.wl
  br i1 %i.wm, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge299.thread.i
  %.val236.i = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 2 uses
  %i.wn = getelementptr i8, ptr %.val236.i, i64 8
  %.val236.val.i = load ptr, ptr %i.wn, align 8, !tbaa !71 ; 4 uses
  %i.wo = sext i32 %i.wl to i64
  %i.wp = getelementptr inbounds [8 x i8], ptr %.val236.val.i, i64 %i.wo ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !72 ; 5 uses
  %i.wr = sext i32 %i.wk to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %.val236.val.i, i64 %i.wr
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !72 ; 4 uses
  %i.wu = getelementptr i8, ptr %i.wq, i64 20
  %.val31.i.i = load i32, ptr %i.wu, align 4
  %i.wv = and i32 %.val31.i.i, 15
  %.not.i.i555 = icmp eq i32 %i.wv, 2
  br i1 %.not.i.i555, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wq, i64 20
  %i.wx = load i32, ptr %i.ww, align 4
  %i.wy = and i32 %i.wx, 15
  %.not1.i.i = icmp eq i32 %i.wy, 1
  br i1 %.not1.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wz = getelementptr i8, ptr %i.wq, i64 32
  %.val25.i.i = load ptr, ptr %i.wz, align 8, !tbaa !75 ; 2 uses
  %.val25.val.i.i = load i32, ptr %.val25.i.i, align 4, !tbaa !73
  %i.xa = icmp eq i32 %.val25.val.i.i, %i.wk
  br i1 %i.xa, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.xb = getelementptr i8, ptr %.val25.i.i, i64 4
  %.val27.val.i.i = load i32, ptr %i.xb, align 4, !tbaa !73
  %i.xc = icmp eq i32 %.val27.val.i.i, %i.wk
  br i1 %i.xc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.xd = getelementptr i8, ptr %i.wt, i64 44
  %.val29.i.i = load i32, ptr %i.xd, align 4, !tbaa !96
  %i.xe = icmp eq i32 %.val29.i.i, 1
  br i1 %i.xe, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %i.xf = getelementptr i8, ptr %i.wt, i64 20
  %.val30.i.i = load i32, ptr %i.xf, align 4
  %i.xg = and i32 %.val30.i.i, 15
  %.not2.i.i = icmp eq i32 %i.xg, 2
  br i1 %.not2.i.i, label %Emap_ObjPairHasDirectDanglingRelation.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wt, i64 20
  %i.xi = load i32, ptr %i.xh, align 4
  %i.xj = and i32 %i.xi, 15
  %.not3.i.i = icmp eq i32 %i.xj, 1
  br i1 %.not3.i.i, label %Emap_ObjPairHasDirectDanglingRelation.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.xk = getelementptr i8, ptr %i.wt, i64 32
  %.val24.i.i = load ptr, ptr %i.xk, align 8, !tbaa !75 ; 2 uses
  %.val24.val.i.i = load i32, ptr %.val24.i.i, align 4, !tbaa !73
  %i.xl = icmp eq i32 %.val24.val.i.i, %i.wl
  br i1 %i.xl, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.xm = getelementptr i8, ptr %.val24.i.i, i64 4
  %.val26.val.i.i = load i32, ptr %i.xm, align 4, !tbaa !73
  %i.xn = icmp eq i32 %.val26.val.i.i, %i.wl
  br i1 %i.xn, label %bb.cq, label %Emap_ObjPairHasDirectDanglingRelation.exit.i

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.xo = getelementptr i8, ptr %i.wq, i64 44
  %.val28.i.i = load i32, ptr %i.xo, align 4, !tbaa !96
  %i.xp = icmp eq i32 %.val28.i.i, 1
  br i1 %i.xp, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread.i, label %Emap_ObjPairHasDirectDanglingRelation.exit.i

Emap_ObjPairHasDirectDanglingRelation.exit.i:     ; preds = %bb.cq, %bb.cp, %bb.cn, %bb.cm
end_hunk_0
begin_hunk_1_@Emap_ManRecoverMogsTimed:bb.a
  store i32 %.val211.us, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = trunc nuw nsw i64 %indvars.iv323 to i32
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.av, ptr %i.bc, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bf = zext nneg i32 %i.as to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 4 %i.bd, i64 %i.bg, i1 false), !tbaa !73
  %i.bh = add nsw i32 %.2173272.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.3174.us = phi i32 [ %i.bh, %bb.e ], [ %.2173272.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %.loopexit.loopexit, label %.lr.ph.split.us, !llvm.loop !217

.loopexit.loopexit:                               ; preds = %bb.f
  %.val213.1.pre = load i32, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre351 = zext i32 %.val213.1.pre to i64
  %.pre352 = shl i32 %.val213.1.pre, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader263, %.preheader264
  %.pre-phi353 = phi i32 [ %i.aj, %.preheader264 ], [ %.pre352, %.loopexit.loopexit ], [ %i.aj, %.preheader263 ]
  %.pre-phi = phi i64 [ %i.ah, %.preheader264 ], [ %.pre351, %.loopexit.loopexit ], [ %i.ah, %.preheader263 ]
  %.4175 = phi i32 [ %.0171280, %.preheader264 ], [ %.3174.us, %.loopexit.loopexit ], [ %.0171280, %.preheader263 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.bj = or disjoint i32 %.pre-phi353, 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !73
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit.1, label %.preheader263.1

.preheader263.1:                                  ; preds = %.loopexit
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.split.preheader.1, label %.loopexit.1

.lr.ph.split.preheader.1:                         ; preds = %.preheader263.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.trip.count.1 = zext nneg i32 %i.bo to i64
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.h, %.lr.ph.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.split.preheader.1 ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %.2173272.1 = phi i32 [ %.4175, %.lr.ph.split.preheader.1 ], [ %.3174.1, %bb.h ] ; 3 uses
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %indvars.iv.1 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !64 ; 5 uses
  %i.bt = icmp slt i32 %i.bs, 2
  br i1 %i.bt, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.1
  %i.bu = icmp eq i32 %i.bs, 6
  %i.bv = shl nuw i32 1, %i.bs
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.1 = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.1, -1
  %i.by = select i1 %i.bu, i64 -1, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !65
  %i.cb = xor i64 %i.by, %i.ca
  %.val211.1 = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.cc = sext i32 %.2173272.1 to i64
  %i.cd = getelementptr inbounds [48 x i8], ptr %i.z, i64 %i.cc ; 6 uses
  store i32 %.val211.1, ptr %i.cd, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.ce, align 4, !tbaa !87
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 %i.bs, ptr %i.ch, align 4, !tbaa !89
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 %i.cb, ptr %i.ci, align 8, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cl = zext nneg i32 %i.bs to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 4 %i.cj, i64 %i.cm, i1 false), !tbaa !73
  %i.cn = add nsw i32 %.2173272.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.1
  %.3174.1 = phi i32 [ %i.cn, %bb.g ], [ %.2173272.1, %.lr.ph.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.split.1, !llvm.loop !217

.loopexit.1:                                      ; preds = %bb.h, %.preheader263.1, %.loopexit
  %.4175.1 = phi i32 [ %.4175, %.loopexit ], [ %.4175, %.preheader263.1 ], [ %.3174.1, %bb.h ]
  %.val.pre = load i32, ptr %i.v, align 4, !tbaa !56
  br label %.loopexit265

.loopexit265:                                     ; preds = %.loopexit.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val344, %bb.c ], [ %.val344, %bb.d ], [ %.val.pre, %.loopexit.1 ] ; 2 uses
  %.5176 = phi i32 [ %.0171280, %bb.c ], [ %.0171280, %bb.d ], [ %.4175.1, %.loopexit.1 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = sext i32 %.val to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %bb.c, label %.critedge, !llvm.loop !218

.critedge:                                        ; preds = %.loopexit265
  %i.cq = sext i32 %.5176 to i64
  tail call void @qsort(ptr noundef %i.z, i64 noundef %i.cq, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.cr = icmp sgt i32 %.5176, 0
  br i1 %i.cr, label %.lr.ph307, label %._crit_edge308

.lr.ph307:                                        ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cu = fadd double %5, 1.000000e-01
  %wide.trip.count341 = zext nneg i32 %.5176 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph307, %.thread256
  %indvars.iv338 = phi i64 [ 0, %.lr.ph307 ], [ %indvars.iv.next339, %.thread256 ] ; 2 uses
  %.0168306 = phi i32 [ 0, %.lr.ph307 ], [ %.10, %.thread256 ] ; 4 uses
  %.0182304 = phi float [ %i.a, %.lr.ph307 ], [ %.10192, %.thread256 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %indvars.iv338 ; 6 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !86 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 5128
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !87 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [96 x i8], ptr %i.cz, i64 %i.dc ; 3 uses
  %i.de = shl nsw i32 %i.cw, 1
  %i.df = add nsw i32 %i.de, %i.db
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !73
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.thread256, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 64 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !116
  %i.dm = icmp sgt i32 %i.dl, -1
  br i1 %i.dm, label %.thread256, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !88
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [40 x i8], ptr %i.dn, i64 %i.dq ; 4 uses
  %i.ds = load i32, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph298, label %.thread256

.lr.ph298:                                        ; preds = %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph298, %bb.as
  %i.dw = phi i32 [ %i.ds, %.lr.ph298 ], [ %i.jr, %bb.as ]
  %indvars.iv335 = phi i64 [ 0, %.lr.ph298 ], [ %indvars.iv.next336, %bb.as ] ; 2 uses
  %.1169296 = phi i32 [ %.0168306, %.lr.ph298 ], [ %.8.ph, %bb.as ] ; 2 uses
  %.1183294 = phi float [ %.0182304, %.lr.ph298 ], [ %.8190.ph, %bb.as ] ; 2 uses
  %i.dx = load ptr, ptr %i.cs, align 8, !tbaa !111
  %i.dy = getelementptr inbounds nuw [144 x i8], ptr %i.dx, i64 %indvars.iv335 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !92
  %i.eb = load i32, ptr %i.dr, align 8, !tbaa !64
  %.not199 = icmp eq i32 %i.ea, %i.eb
  br i1 %.not199, label %.preheader261, label %bb.as

.preheader261:                                    ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 80 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 72 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader261, %bb.ar
  %.not200 = phi i1 [ true, %.preheader261 ], [ false, %bb.ar ] ; 3 uses
  %.0164293 = phi i32 [ 0, %.preheader261 ], [ 1, %bb.ar ]
  %.2170292 = phi i32 [ %.1169296, %.preheader261 ], [ %.6.ph, %bb.ar ] ; 9 uses
  %.2184291 = phi float [ %.1183294, %.preheader261 ], [ %.6188.ph, %bb.ar ] ; 9 uses
  %.in = select i1 %.not200, ptr %i.ed, ptr %i.ec
  %i.ee = load i64, ptr %.in, align 8, !tbaa !93
  %.in201 = select i1 %.not200, ptr %i.ec, ptr %i.ed
  %i.ef = load i64, ptr %.in201, align 8, !tbaa !93 ; 4 uses
  %i.eg = load i64, ptr %i.du, align 8, !tbaa !90
  %.not202 = icmp eq i64 %i.ee, %i.eg
  br i1 %.not202, label %bb.n, label %bb.ar

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.eh = load i32, ptr %i.dr, align 8, !tbaa !64 ; 5 uses
  %10 = icmp sgt i32 %i.eh, 0                     ; 3 uses
  %.pre354 = zext nneg i32 %i.eh to i64           ; 3 uses
  br i1 %10, label %.lr.ph.i217, label %.preheader.i.preheader

.lr.ph.i217:                                      ; preds = %bb.n
  %i.ei = shl nuw nsw i64 %.pre354, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull readonly align 4 %i.dv, i64 %i.ei, i1 false), !tbaa !73
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.n, %.lr.ph.i217
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5176, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ej = add nuw nsw i32 %.02348.i, %.02249.i
  %i.ek = lshr i32 %i.ej, 1                       ; 3 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.el ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !89 ; 2 uses
  %.not.i.i = icmp eq i32 %i.eo, %i.eh
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.ep = sub nsw i32 %i.eo, %i.eh
  br label %Emap_PackEntryCompare.exit.i

bb.p:                                             ; preds = %.preheader.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !90 ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.ef
  br i1 %i.es, label %Emap_PackEntryCompare.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %11 = icmp ule i64 %i.er, %i.ef
  %or.cond.i = and i1 %10, %11
  br i1 %or.cond.i, label %.lr.ph.i.i, label %Emap_PackEntryCompare.exit.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre354
  br i1 %exitcond.not.i.i, label %Emap_PackEntryCompare.exit.i, label %bb.s, !llvm.loop !0

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.r ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !73 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !73 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.ev, %i.ex
  br i1 %.not28.i.i, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ey = sub nsw i32 %i.ev, %i.ex
  br label %Emap_PackEntryCompare.exit.i

Emap_PackEntryCompare.exit.i:                     ; preds = %bb.r, %bb.t, %bb.q, %bb.p, %bb.o
  %.021.i.i = phi i32 [ %i.ep, %bb.o ], [ 0, %bb.q ], [ -2147483648, %bb.p ], [ %i.ey, %bb.t ], [ 0, %bb.r ]
  %i.ez = icmp slt i32 %.021.i.i, 0               ; 2 uses
  %i.fa = add nuw nsw i32 %i.ek, 1
  %.124.i = select i1 %i.ez, i32 %i.fa, i32 %.02348.i ; 6 uses
  %.1.i = select i1 %i.ez, i32 %.02249.i, i32 %i.ek ; 2 uses
  %i.fb = icmp slt i32 %.124.i, %.1.i
  br i1 %i.fb, label %.preheader.i, label %._crit_edge.i.loopexit, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %Emap_PackEntryCompare.exit.i
  %i.fc = icmp eq i32 %.124.i, %.5176
  br i1 %i.fc, label %Emap_PackEntryFindFirst.exit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.loopexit
  %i.fd = zext nneg i32 %.124.i to i64
  %i.fe = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.fd ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !89
  %.not.i26.i = icmp eq i32 %i.fg, %i.eh
  br i1 %.not.i26.i, label %bb.v, label %Emap_PackEntryFindFirst.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !90
  %or.cond.not.i = icmp eq i64 %i.fi, %i.ef       ; 2 uses
  %brmerge.not.i = and i1 %10, %or.cond.not.i
  %.mux67.i = select i1 %or.cond.not.i, i32 %.124.i, i32 -1
  br i1 %brmerge.not.i, label %.lr.ph.i29.i, label %Emap_PackEntryFindFirst.exit

.lr.ph.i29.i:                                     ; preds = %bb.v
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %.pre354
  br i1 %exitcond.not.i34.i, label %Emap_PackEntryFindFirst.exit, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w, %.lr.ph.i29.i
  %indvars.iv.i31.i = phi i64 [ 0, %.lr.ph.i29.i ], [ %indvars.iv.next.i33.i, %bb.w ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.i31.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !73
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i31.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !73
  %.not28.i32.i = icmp eq i32 %i.fl, %i.fn
  br i1 %.not28.i32.i, label %bb.w, label %Emap_PackEntryFindFirst.exit.thread

Emap_PackEntryFindFirst.exit.thread:              ; preds = %bb.x, %._crit_edge.i.loopexit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ar

Emap_PackEntryFindFirst.exit:                     ; preds = %bb.w, %bb.v
  %.025.i = phi i32 [ %.mux67.i, %bb.v ], [ %.124.i, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.fo = icmp slt i32 %.025.i, 0
  br i1 %i.fo, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %Emap_PackEntryFindFirst.exit
  %i.fp = icmp slt i32 %.025.i, %.5176
  br i1 %i.fp, label %.lr.ph288, label %.critedge2

.lr.ph288:                                        ; preds = %.preheader
  %i.fq = fpext float %.2184291 to double
  %i.fr = fadd double %i.fq, -1.000000e-03
  %i.fs = zext nneg i32 %.025.i to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph288, %Emap_ObjPairHasDirectDanglingRelation.exit.thread
  %indvars.iv332 = phi i64 [ %i.fs, %.lr.ph288 ], [ %indvars.iv.next333, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %indvars.iv332 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !89 ; 4 uses
  %i.fw = load i32, ptr %i.dr, align 8, !tbaa !64
  %i.fx = icmp eq i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !90
  %i.ga = icmp eq i64 %i.fz, %i.ef
  br i1 %i.ga, label %bb.aa, label %.critedge2

bb.aa:                                            ; preds = %bb.z
  %i.gb = load i32, ptr %i.ft, align 8, !tbaa !86 ; 6 uses
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 5128
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !87 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [96 x i8], ptr %i.ge, i64 %i.gh ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.gj = icmp sgt i32 %i.fv, 0
  br i1 %i.gj, label %.lr.ph285, label %._crit_edge.thread

.lr.ph285:                                        ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fv to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.fv, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph285
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.gr, %vector.body ]
  %vec.phi385 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.gs, %vector.body ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load = load <4 x i32>, ptr %i.gl, align 4, !tbaa !73
  %wide.load386 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !73
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load387 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !73
  %wide.load388 = load <4 x i32>, ptr %i.go, align 4, !tbaa !73
  %i.gp = icmp ne <4 x i32> %wide.load, %wide.load387
  %i.gq = icmp ne <4 x i32> %wide.load386, %wide.load388
  %i.gr = or <4 x i1> %vec.phi, %i.gp             ; 2 uses
  %i.gs = or <4 x i1> %vec.phi385, %i.gq          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.gs, %i.gr
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.gu = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not389 = icmp eq i4 %i.gu, 0
  %rdx.select = zext i1 %.not389 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph285, %middle.block
  %indvars.iv329.ph = phi i64 [ 0, %.lr.ph285 ], [ %n.vec, %middle.block ]
  %.0284.ph = phi i32 [ 1, %.lr.ph285 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %scalar.ph ], [ %indvars.iv329.ph, %scalar.ph.preheader ] ; 3 uses
  %.0284 = phi i32 [ %spec.select, %scalar.ph ], [ %.0284.ph, %scalar.ph.preheader ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv329
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !73
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv329
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !73
  %.not206 = icmp eq i32 %i.gw, %i.gy
  %spec.select = select i1 %.not206, i32 %.0284, i32 0 ; 2 uses
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !220

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.gz = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.gz, label %Emap_ManComputeRefs.exit233, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.aa, %._crit_edge
  %i.ha = load i32, ptr %i.cv, align 8, !tbaa !86 ; 5 uses
  %i.hb = icmp eq i32 %i.gb, %i.ha
  br i1 %i.hb, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.hc = shl nsw i32 %i.gb, 1
  %i.hd = add nsw i32 %i.hc, %i.gg
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !73
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !116
  %i.hk = icmp sgt i32 %i.hj, -1
  br i1 %i.hk, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val216 = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.hl = getelementptr i8, ptr %.val216, i64 8
  %.val216.val = load ptr, ptr %i.hl, align 8, !tbaa !71 ; 2 uses
  %i.hm = sext i32 %i.ha to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %.val216.val, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !72 ; 4 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %.val216.val, i64 %i.gc
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !72 ; 4 uses
  %i.hr = getelementptr i8, ptr %i.ho, i64 20
  %.val31.i = load i32, ptr %i.hr, align 4
  %i.hs = and i32 %.val31.i, 15
  %.not.i = icmp eq i32 %i.hs, 2
  br i1 %.not.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 20
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = and i32 %i.hu, 15
  %.not1.i = icmp eq i32 %i.hv, 1
  br i1 %.not1.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr i8, ptr %i.ho, i64 32
  %.val25.i = load ptr, ptr %i.hw, align 8, !tbaa !75 ; 2 uses
  %.val25.val.i = load i32, ptr %.val25.i, align 4, !tbaa !73
  %i.hx = icmp eq i32 %.val25.val.i, %i.gb
  br i1 %i.hx, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hy = getelementptr i8, ptr %.val25.i, i64 4
  %.val27.val.i = load i32, ptr %i.hy, align 4, !tbaa !73
  %i.hz = icmp eq i32 %.val27.val.i, %i.gb
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ia = getelementptr i8, ptr %i.hq, i64 44
  %.val29.i = load i32, ptr %i.ia, align 4, !tbaa !96
  %i.ib = icmp eq i32 %.val29.i, 1
  br i1 %i.ib, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.ic = getelementptr i8, ptr %i.hq, i64 20
  %.val30.i = load i32, ptr %i.ic, align 4
  %i.id = and i32 %.val30.i, 15
  %.not2.i = icmp eq i32 %i.id, 2
  br i1 %.not2.i, label %Emap_ObjPairHasDirectDanglingRelation.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
end_hunk_1
begin_hunk_2_@Emap_ManRecoverMogsExact:bb.a

.lr.ph.split.1:                                   ; preds = %bb.j, %.lr.ph.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.split.preheader.1 ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.2244349.1 = phi i32 [ %.4246, %.lr.ph.split.preheader.1 ], [ %.3245.1, %bb.j ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %indvars.iv.1 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !64 ; 5 uses
  %i.cb = icmp slt i32 %i.ca, 2
  br i1 %i.cb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.cc = icmp eq i32 %i.ca, 6
  %i.cd = shl nuw i32 1, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %notmask.i.1 = shl nsw i64 -1, %i.ce
  %i.cf = xor i64 %notmask.i.1, -1
  %i.cg = select i1 %i.cc, i64 -1, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !65
  %i.cj = xor i64 %i.cg, %i.ci
  %.val271.1 = load i32, ptr %i.aj, align 8, !tbaa !59
  %i.ck = sext i32 %.2244349.1 to i64
  %i.cl = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.ck ; 6 uses
  store i32 %.val271.1, ptr %i.cl, align 8, !tbaa !86
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cm, align 4, !tbaa !87
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.co, ptr %i.cn, align 8, !tbaa !88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 %i.ca, ptr %i.cp, align 4, !tbaa !89
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 %i.cj, ptr %i.cq, align 8, !tbaa !90
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ct = zext nneg i32 %i.ca to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cs, ptr nonnull align 4 %i.cr, i64 %i.cu, i1 false), !tbaa !73
  %i.cv = add nsw i32 %.2244349.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.1
  %.3245.1 = phi i32 [ %i.cv, %bb.i ], [ %.2244349.1, %.lr.ph.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit333.1, label %.lr.ph.split.1, !llvm.loop !225

.loopexit333.1:                                   ; preds = %bb.j, %.preheader332.1, %bb.h, %.loopexit333
  %.4246.1 = phi i32 [ %.4246, %.loopexit333 ], [ %.4246, %bb.h ], [ %.4246, %.preheader332.1 ], [ %.3245.1, %bb.j ]
  %.val.pre = load i32, ptr %i.u, align 4, !tbaa !56
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit333.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val432, %bb.c ], [ %.val432, %bb.d ], [ %.val.pre, %.loopexit333.1 ] ; 2 uses
  %.5247 = phi i32 [ %.0242357, %bb.c ], [ %.0242357, %bb.d ], [ %.4246.1, %.loopexit333.1 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = sext i32 %.val to i64
  %i.cx = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %bb.c, label %.critedge, !llvm.loop !226

.critedge:                                        ; preds = %.loopexit335
  %i.cy = sext i32 %.5247 to i64
  tail call void @qsort(ptr noundef %i.y, i64 noundef %i.cy, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.cz = icmp sgt i32 %.5247, 0
  br i1 %i.cz, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %wide.trip.count429 = zext nneg i32 %.5247 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph383, %.thread327
  %indvars.iv426 = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next427, %.thread327 ] ; 2 uses
  %.0239382 = phi i32 [ 0, %.lr.ph383 ], [ %.10, %.thread327 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv426 ; 11 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !86 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 5128
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 6 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !87 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [96 x i8], ptr %i.dh, i64 %i.dk ; 3 uses
  %i.dm = shl nsw i32 %i.de, 1
  %i.dn = add nsw i32 %i.dm, %i.dj
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !73
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.thread327, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !116
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %.thread327, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !88
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [40 x i8], ptr %i.dv, i64 %i.dy ; 4 uses
  %i.ea = load i32, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph377, label %.thread327

.lr.ph377:                                        ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph377, %bb.bf
  %i.ee = phi i32 [ %i.ea, %.lr.ph377 ], [ %i.qw, %bb.bf ]
  %indvars.iv423 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next424, %bb.bf ] ; 2 uses
  %.1240375 = phi i32 [ %.0239382, %.lr.ph377 ], [ %.8.ph, %bb.bf ] ; 2 uses
  %i.ef = load ptr, ptr %i.da, align 8, !tbaa !111
  %i.eg = getelementptr inbounds nuw [144 x i8], ptr %i.ef, i64 %indvars.iv423 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !92
  %i.ej = load i32, ptr %i.dz, align 8, !tbaa !64
  %.not259 = icmp eq i32 %i.ei, %i.ej
  br i1 %.not259, label %.preheader330, label %bb.bf

.preheader330:                                    ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 80 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 72 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 20 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 44 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 88
  br label %bb.o

bb.o:                                             ; preds = %.preheader330, %bb.be
  %.not260 = phi i1 [ true, %.preheader330 ], [ false, %bb.be ] ; 4 uses
  %.not.i287 = phi i64 [ 116, %.preheader330 ], [ 92, %bb.be ]
  %.0235371 = phi i32 [ 0, %.preheader330 ], [ 1, %bb.be ]
  %.2241370 = phi i32 [ %.1240375, %.preheader330 ], [ %.6.ph, %bb.be ] ; 10 uses
  %.in = select i1 %.not260, ptr %i.el, ptr %i.ek
  %i.ep = load i64, ptr %.in, align 8, !tbaa !93
  %.in261 = select i1 %.not260, ptr %i.ek, ptr %i.el
  %i.eq = load i64, ptr %.in261, align 8, !tbaa !93 ; 4 uses
  %i.er = load i64, ptr %i.ec, align 8, !tbaa !90
  %.not262 = icmp eq i64 %i.ep, %i.er
  br i1 %.not262, label %bb.p, label %bb.be

bb.p:                                             ; preds = %bb.o
  %i.es = load i32, ptr %i.eh, align 8, !tbaa !92 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i279, label %Emap_MogArrival.exit

.lr.ph.i279:                                      ; preds = %bb.p
  %..i = select i1 %.not260, i64 92, i64 116
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %..i
  %wide.trip.count.i = zext nneg i32 %i.es to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i279
  %indvars.iv.i280 = phi i64 [ 0, %.lr.ph.i279 ], [ %indvars.iv.next.i281, %bb.q ] ; 4 uses
  %.01617.i = phi double [ 0.000000e+00, %.lr.ph.i279 ], [ %i.fm, %bb.q ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i280
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !73
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !73
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i280
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [96 x i8], ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 5208
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !67
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i280
  %i.fi = load float, ptr %.in.i, align 4, !tbaa !109
  %i.fj = fpext float %i.fi to double
  %i.fk = fadd double %i.fh, %i.fj                ; 2 uses
  %i.fl = fcmp ogt double %.01617.i, %i.fk
  %i.fm = select i1 %i.fl, double %.01617.i, double %i.fk ; 2 uses
  %indvars.iv.next.i281 = add nuw nsw i64 %indvars.iv.i280, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i281, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Emap_MogArrival.exit, label %bb.q, !llvm.loop !10

Emap_MogArrival.exit:                             ; preds = %bb.q, %bb.p
  %.016.lcssa.i = phi double [ 0.000000e+00, %bb.p ], [ %i.fm, %bb.q ]
  %i.fn = load i32, ptr %i.dd, align 8, !tbaa !86
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = load i32, ptr %i.di, align 4, !tbaa !87
  %i.fq = add nsw i32 %i.fo, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !106
  %i.fu = fadd double %i.ft, 1.000000e-03
  %i.fv = fcmp ogt double %.016.lcssa.i, %i.fu
  br i1 %i.fv, label %bb.be, label %bb.r

bb.r:                                             ; preds = %Emap_MogArrival.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.fw = load i32, ptr %i.dz, align 8, !tbaa !64 ; 5 uses
  %8 = icmp sgt i32 %i.fw, 0                      ; 3 uses
  %.pre444 = zext nneg i32 %i.fw to i64           ; 3 uses
  br i1 %8, label %.lr.ph.i282, label %.preheader.i.preheader

.lr.ph.i282:                                      ; preds = %bb.r
  %i.fx = shl nuw nsw i64 %.pre444, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull readonly align 4 %i.ed, i64 %i.fx, i1 false), !tbaa !73
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.r, %.lr.ph.i282
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5247, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.fy = add nuw nsw i32 %.02348.i, %.02249.i
  %i.fz = lshr i32 %i.fy, 1                       ; 3 uses
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !89 ; 2 uses
  %.not.i.i = icmp eq i32 %i.gd, %i.fw
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  %i.ge = sub nsw i32 %i.gd, %i.fw
  br label %Emap_PackEntryCompare.exit.i

bb.t:                                             ; preds = %.preheader.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !90 ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.eq
  br i1 %i.gh, label %Emap_PackEntryCompare.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %9 = icmp ule i64 %i.gg, %i.eq
  %or.cond.i = and i1 %8, %9
  br i1 %or.cond.i, label %.lr.ph.i.i, label %Emap_PackEntryCompare.exit.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre444
  br i1 %exitcond.not.i.i, label %Emap_PackEntryCompare.exit.i, label %bb.w, !llvm.loop !0

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.v ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !73 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !73 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.gk, %i.gm
  br i1 %.not28.i.i, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gn = sub nsw i32 %i.gk, %i.gm
  br label %Emap_PackEntryCompare.exit.i

Emap_PackEntryCompare.exit.i:                     ; preds = %bb.v, %bb.x, %bb.u, %bb.t, %bb.s
  %.021.i.i = phi i32 [ %i.ge, %bb.s ], [ 0, %bb.u ], [ -2147483648, %bb.t ], [ %i.gn, %bb.x ], [ 0, %bb.v ]
  %i.go = icmp slt i32 %.021.i.i, 0               ; 2 uses
  %i.gp = add nuw nsw i32 %i.fz, 1
  %.124.i = select i1 %i.go, i32 %i.gp, i32 %.02348.i ; 6 uses
  %.1.i = select i1 %i.go, i32 %.02249.i, i32 %i.fz ; 2 uses
  %i.gq = icmp slt i32 %.124.i, %.1.i
  br i1 %i.gq, label %.preheader.i, label %._crit_edge.i.loopexit, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %Emap_PackEntryCompare.exit.i
  %i.gr = icmp eq i32 %.124.i, %.5247
  br i1 %i.gr, label %Emap_PackEntryFindFirst.exit.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.loopexit
  %i.gs = zext nneg i32 %.124.i to i64
  %i.gt = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.gs ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !89
  %.not.i26.i = icmp eq i32 %i.gv, %i.fw
  br i1 %.not.i26.i, label %bb.z, label %Emap_PackEntryFindFirst.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !90
  %or.cond.not.i = icmp eq i64 %i.gx, %i.eq       ; 2 uses
  %brmerge.not.i = and i1 %8, %or.cond.not.i
  %.mux67.i = select i1 %or.cond.not.i, i32 %.124.i, i32 -1
  br i1 %brmerge.not.i, label %.lr.ph.i29.i, label %Emap_PackEntryFindFirst.exit

.lr.ph.i29.i:                                     ; preds = %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %.pre444
  br i1 %exitcond.not.i34.i, label %Emap_PackEntryFindFirst.exit, label %bb.ab, !llvm.loop !0

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i29.i
  %indvars.iv.i31.i = phi i64 [ 0, %.lr.ph.i29.i ], [ %indvars.iv.next.i33.i, %bb.aa ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i31.i
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !73
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i31.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !73
  %.not28.i32.i = icmp eq i32 %i.ha, %i.hc
  br i1 %.not28.i32.i, label %bb.aa, label %Emap_PackEntryFindFirst.exit.thread

Emap_PackEntryFindFirst.exit.thread:              ; preds = %bb.ab, %._crit_edge.i.loopexit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.be

Emap_PackEntryFindFirst.exit:                     ; preds = %bb.aa, %bb.z
  %.025.i = phi i32 [ %.mux67.i, %bb.z ], [ %.124.i, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.hd = icmp slt i32 %.025.i, 0
  br i1 %i.hd, label %bb.be, label %.preheader

.preheader:                                       ; preds = %Emap_PackEntryFindFirst.exit
  %i.he = icmp slt i32 %.025.i, %.5247
  br i1 %i.he, label %.lr.ph367, label %.critedge2

.lr.ph367:                                        ; preds = %.preheader
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.not.i287
  %i.hg = zext nneg i32 %.025.i to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph367, %Emap_ObjPairHasDirectDanglingRelation.exit.thread
  %indvars.iv420 = phi i64 [ %i.hg, %.lr.ph367 ], [ %indvars.iv.next421, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv420 ; 12 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !89 ; 4 uses
  %i.hk = load i32, ptr %i.dz, align 8, !tbaa !64
  %i.hl = icmp eq i32 %i.hj, %i.hk
  br i1 %i.hl, label %bb.ad, label %.critedge2

bb.ad:                                            ; preds = %bb.ac
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !90
  %i.ho = icmp eq i64 %i.hn, %i.eq
  br i1 %i.ho, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.hp = load i32, ptr %i.hh, align 8, !tbaa !86 ; 6 uses
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 5128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 6 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !87 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [96 x i8], ptr %i.hs, i64 %i.hv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.hx = icmp sgt i32 %i.hj, 0
  br i1 %i.hx, label %.lr.ph362, label %._crit_edge.thread

.lr.ph362:                                        ; preds = %bb.ae
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.hj to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.hj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph362
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.if, %vector.body ]
  %vec.phi493 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %wide.load = load <4 x i32>, ptr %i.hz, align 4, !tbaa !73
  %wide.load494 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !73
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load495 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !73
  %wide.load496 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !73
  %i.id = icmp ne <4 x i32> %wide.load, %wide.load495
  %i.ie = icmp ne <4 x i32> %wide.load494, %wide.load496
  %i.if = or <4 x i1> %vec.phi, %i.id             ; 2 uses
  %i.ig = or <4 x i1> %vec.phi493, %i.ie          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ig, %i.if
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ii = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not497 = icmp eq i4 %i.ii, 0
  %rdx.select = zext i1 %.not497 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph362, %middle.block
  %indvars.iv414.ph = phi i64 [ 0, %.lr.ph362 ], [ %n.vec, %middle.block ]
  %.0361.ph = phi i32 [ 1, %.lr.ph362 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %scalar.ph ], [ %indvars.iv414.ph, %scalar.ph.preheader ] ; 3 uses
  %.0361 = phi i32 [ %spec.select, %scalar.ph ], [ %.0361.ph, %scalar.ph.preheader ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv414
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !73
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv414
  %i.im = load i32, ptr %i.il, align 4, !tbaa !73
  %.not266 = icmp eq i32 %i.ik, %i.im
  %spec.select = select i1 %.not266, i32 %.0361, i32 0 ; 2 uses
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !228

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.in = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.in, label %.loopexit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ae, %._crit_edge
  %i.io = load i32, ptr %i.dd, align 8, !tbaa !86 ; 5 uses
  %i.ip = icmp eq i32 %i.hp, %i.io
  br i1 %i.ip, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.af

bb.af:                                            ; preds = %._crit_edge.thread
  %i.iq = shl nsw i32 %i.hp, 1
  %i.ir = add nsw i32 %i.iq, %i.hu
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %4, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !73
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hw, i64 64
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !116
  %i.iy = icmp sgt i32 %i.ix, -1
  br i1 %i.iy, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val276 = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.iz = getelementptr i8, ptr %.val276, i64 8
  %.val276.val = load ptr, ptr %i.iz, align 8, !tbaa !71 ; 2 uses
  %i.ja = sext i32 %i.io to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %.val276.val, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !72 ; 4 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %.val276.val, i64 %i.hq
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !72 ; 4 uses
  %i.jf = getelementptr i8, ptr %i.jc, i64 20
  %.val31.i = load i32, ptr %i.jf, align 4
  %i.jg = and i32 %.val31.i, 15
  %.not.i283 = icmp eq i32 %i.jg, 2
  br i1 %.not.i283, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = and i32 %i.ji, 15
  %.not1.i = icmp eq i32 %i.jj, 1
  br i1 %.not1.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jk = getelementptr i8, ptr %i.jc, i64 32
  %.val25.i = load ptr, ptr %i.jk, align 8, !tbaa !75 ; 2 uses
  %.val25.val.i = load i32, ptr %.val25.i, align 4, !tbaa !73
  %i.jl = icmp eq i32 %.val25.val.i, %i.hp
  br i1 %i.jl, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jm = getelementptr i8, ptr %.val25.i, i64 4
  %.val27.val.i = load i32, ptr %i.jm, align 4, !tbaa !73
  %i.jn = icmp eq i32 %.val27.val.i, %i.hp
  br i1 %i.jn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jo = getelementptr i8, ptr %i.je, i64 44
  %.val29.i = load i32, ptr %i.jo, align 4, !tbaa !96
  %i.jp = icmp eq i32 %.val29.i, 1
  br i1 %i.jp, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ah
  %i.jq = getelementptr i8, ptr %i.je, i64 20
  %.val30.i = load i32, ptr %i.jq, align 4
  %i.jr = and i32 %.val30.i, 15
  %.not2.i = icmp eq i32 %i.jr, 2
  br i1 %.not2.i, label %Emap_ObjPairHasDirectDanglingRelation.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.jt = load i32, ptr %i.js, align 4
end_hunk_2
begin_hunk_3_@Emap_ManRecoverMogsExactMffc:bb.a
  %i.cy = xor i64 %notmask.i.1, %i.cx
  %i.cz = xor i64 %i.cy, -1
  %.val297.1 = load i32, ptr %i.ao, align 8, !tbaa !59
  %i.da = sext i32 %.2239420.1 to i64
  %i.db = getelementptr inbounds [48 x i8], ptr %i.aa, i64 %i.da ; 6 uses
  store i32 %.val297.1, ptr %i.db, align 8, !tbaa !86
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 1, ptr %i.dc, align 4, !tbaa !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 %i.cs, ptr %i.df, align 4, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i64 %i.cz, ptr %i.dg, align 8, !tbaa !90
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dj = shl nuw nsw i32 %i.cs, 2
  %i.dk = zext nneg i32 %i.dj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 4 %i.dh, i64 %i.dk, i1 false), !tbaa !73
  %i.dl = add nsw i32 %.2239420.1, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.1, %.lr.ph422.split.1
  %.3240.1 = phi i32 [ %i.dl, %._crit_edge.1 ], [ %.2239420.1, %.lr.ph422.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph422.split.1, !llvm.loop !235

.loopexit.1:                                      ; preds = %bb.j, %.preheader404.1, %bb.i, %bb.h, %.loopexit
  %.4241.1 = phi i32 [ %.4241, %.loopexit ], [ %.4241, %bb.i ], [ %.4241, %bb.h ], [ %.4241, %.preheader404.1 ], [ %.3240.1, %bb.j ]
  %.val.pre = load i32, ptr %i.w, align 4, !tbaa !56
  br label %.loopexit406

.loopexit406:                                     ; preds = %.loopexit.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val526, %bb.c ], [ %.val526, %bb.d ], [ %.val.pre, %.loopexit.1 ] ; 2 uses
  %.5242 = phi i32 [ %.0237429, %bb.c ], [ %.0237429, %bb.d ], [ %.4241.1, %.loopexit.1 ] ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = sext i32 %.val to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %bb.c, label %.critedge, !llvm.loop !236

.critedge:                                        ; preds = %.loopexit406
  %i.do = sext i32 %.5242 to i64
  tail call void @qsort(ptr noundef %i.aa, i64 noundef %i.do, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.dp = icmp sgt i32 %.5242, 0
  br i1 %i.dp, label %.lr.ph478, label %._crit_edge479

.lr.ph478:                                        ; preds = %.critedge
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.du = fadd double %6, 1.000000e-01
  %wide.trip.count523 = zext nneg i32 %.5242 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph478, %.thread374
  %indvars.iv520 = phi i64 [ 0, %.lr.ph478 ], [ %indvars.iv.next521, %.thread374 ] ; 2 uses
  %.0223477 = phi i32 [ 0, %.lr.ph478 ], [ %.10, %.thread374 ] ; 5 uses
  %.0226476 = phi i32 [ 0, %.lr.ph478 ], [ %.10236, %.thread374 ] ; 5 uses
  %.0248474 = phi double [ %i.b, %.lr.ph478 ], [ %.10258, %.thread374 ] ; 5 uses
  %.0259473 = phi float [ %i.a, %.lr.ph478 ], [ %.10269, %.thread374 ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv520 ; 8 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !86 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.dx ; 5 uses
  %i.dz = shl nsw i32 %i.dw, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !73
  %i.ed = getelementptr i8, ptr %i.eb, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !73
  %i.ef = sub i32 0, %i.ee
  %i.eg = icmp eq i32 %i.ec, %i.ef
  br i1 %i.eg, label %.thread374, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 5128 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 5192 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !116
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %.thread374, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 5224 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 5288 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !116
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %.thread374, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !88
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [40 x i8], ptr %i.ep, i64 %i.es ; 5 uses
  %i.eu = load i32, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph459, label %.thread374

.lr.ph459:                                        ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 14 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph459, %bb.bd
  %i.ez = phi i32 [ %i.eu, %.lr.ph459 ], [ %i.sa, %bb.bd ]
  %indvars.iv517 = phi i64 [ 0, %.lr.ph459 ], [ %indvars.iv.next518, %bb.bd ] ; 2 uses
  %.1224457 = phi i32 [ %.0223477, %.lr.ph459 ], [ %.8, %bb.bd ] ; 2 uses
  %.1227456 = phi i32 [ %.0226476, %.lr.ph459 ], [ %.8234, %bb.bd ] ; 2 uses
  %.1249454 = phi double [ %.0248474, %.lr.ph459 ], [ %.8256, %bb.bd ] ; 2 uses
  %.1260453 = phi float [ %.0259473, %.lr.ph459 ], [ %.8267, %bb.bd ] ; 2 uses
  %i.fa = load ptr, ptr %i.dq, align 8, !tbaa !111
  %i.fb = getelementptr inbounds nuw [144 x i8], ptr %i.fa, i64 %indvars.iv517 ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !92
  %i.fe = load i32, ptr %i.et, align 8, !tbaa !64
  %.not283 = icmp eq i32 %i.fd, %i.fe
  br i1 %.not283, label %.preheader402, label %bb.bd

.preheader402:                                    ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 80 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 20 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 44 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 88 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader402, %bb.bc
  %.not284 = phi i1 [ true, %.preheader402 ], [ false, %bb.bc ] ; 4 uses
  %.not.i317 = phi i64 [ 116, %.preheader402 ], [ 92, %bb.bc ]
  %.0219450 = phi i32 [ 0, %.preheader402 ], [ 1, %bb.bc ]
  %.2225449 = phi i32 [ %.1224457, %.preheader402 ], [ %.6.ph, %bb.bc ] ; 6 uses
  %.2228448 = phi i32 [ %.1227456, %.preheader402 ], [ %.6232.ph, %bb.bc ] ; 10 uses
  %.2250447 = phi double [ %.1249454, %.preheader402 ], [ %.6254.ph, %bb.bc ] ; 9 uses
  %.2261446 = phi float [ %.1260453, %.preheader402 ], [ %.6265.ph, %bb.bc ] ; 10 uses
  %.in = select i1 %.not284, ptr %i.fg, ptr %i.ff
  %i.fk = load i64, ptr %.in, align 8, !tbaa !93
  %.in285 = select i1 %.not284, ptr %i.ff, ptr %i.fg
  %i.fl = load i64, ptr %.in285, align 8, !tbaa !93 ; 4 uses
  %i.fm = load i64, ptr %i.ew, align 8, !tbaa !90
  %.not286 = icmp eq i64 %i.fk, %i.fm
  br i1 %.not286, label %bb.q, label %bb.bc

bb.q:                                             ; preds = %bb.p
  %i.fn = load i32, ptr %i.fc, align 8, !tbaa !92 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i304, label %Emap_MogArrival.exit

.lr.ph.i304:                                      ; preds = %bb.q
  %..i = select i1 %.not284, i64 92, i64 116
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 %..i
  %wide.trip.count.i = zext nneg i32 %i.fn to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i304
  %indvars.iv.i305 = phi i64 [ 0, %.lr.ph.i304 ], [ %indvars.iv.next.i306, %bb.r ] ; 4 uses
  %.01617.i = phi double [ 0.000000e+00, %.lr.ph.i304 ], [ %i.gh, %bb.r ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i305
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !73
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i305
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !73
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [96 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 5208
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !67
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i305
  %i.gd = load float, ptr %.in.i, align 4, !tbaa !109
  %i.ge = fpext float %i.gd to double
  %i.gf = fadd double %i.gc, %i.ge                ; 2 uses
  %i.gg = fcmp ogt double %.01617.i, %i.gf
  %i.gh = select i1 %i.gg, double %.01617.i, double %i.gf ; 2 uses
  %indvars.iv.next.i306 = add nuw nsw i64 %indvars.iv.i305, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i306, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Emap_MogArrival.exit, label %bb.r, !llvm.loop !10

Emap_MogArrival.exit:                             ; preds = %bb.r, %bb.q
  %.016.lcssa.i = phi double [ 0.000000e+00, %bb.q ], [ %i.gh, %bb.r ]
  %i.gi = load i32, ptr %i.dv, align 8, !tbaa !86
  %i.gj = shl nsw i32 %i.gi, 1
  %i.gk = load i32, ptr %i.ey, align 4, !tbaa !87
  %i.gl = add nsw i32 %i.gj, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !106
  %i.gp = fadd double %i.go, 1.000000e-03
  %i.gq = fcmp ogt double %.016.lcssa.i, %i.gp
  br i1 %i.gq, label %bb.bc, label %bb.s

bb.s:                                             ; preds = %Emap_MogArrival.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  %i.gr = load i32, ptr %i.et, align 8, !tbaa !64 ; 5 uses
  %14 = icmp sgt i32 %i.gr, 0                     ; 3 uses
  %.pre545 = zext nneg i32 %i.gr to i64           ; 3 uses
  br i1 %14, label %.lr.ph.i307, label %.preheader.i.preheader

.lr.ph.i307:                                      ; preds = %bb.s
  %i.gs = shl nuw nsw i64 %.pre545, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull readonly align 4 %i.ex, i64 %i.gs, i1 false), !tbaa !73
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.s, %.lr.ph.i307
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5242, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.gt = add nuw nsw i32 %.02348.i, %.02249.i
  %i.gu = lshr i32 %i.gt, 1                       ; 3 uses
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.gv ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !89 ; 2 uses
  %.not.i.i = icmp eq i32 %i.gy, %i.gr
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.gz = sub nsw i32 %i.gy, %i.gr
  br label %Emap_PackEntryCompare.exit.i

bb.u:                                             ; preds = %.preheader.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !90 ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.fl
  br i1 %i.hc, label %Emap_PackEntryCompare.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %15 = icmp ule i64 %i.hb, %i.fl
  %or.cond.i = and i1 %14, %15
  br i1 %or.cond.i, label %.lr.ph.i.i, label %Emap_PackEntryCompare.exit.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre545
  br i1 %exitcond.not.i.i, label %Emap_PackEntryCompare.exit.i, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !73 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !73 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.hf, %i.hh
  br i1 %.not28.i.i, label %bb.w, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = sub nsw i32 %i.hf, %i.hh
  br label %Emap_PackEntryCompare.exit.i

Emap_PackEntryCompare.exit.i:                     ; preds = %bb.w, %bb.y, %bb.v, %bb.u, %bb.t
  %.021.i.i = phi i32 [ %i.gz, %bb.t ], [ 0, %bb.v ], [ -2147483648, %bb.u ], [ %i.hi, %bb.y ], [ 0, %bb.w ]
  %i.hj = icmp slt i32 %.021.i.i, 0               ; 2 uses
  %i.hk = add nuw nsw i32 %i.gu, 1
  %.124.i = select i1 %i.hj, i32 %i.hk, i32 %.02348.i ; 6 uses
  %.1.i = select i1 %i.hj, i32 %.02249.i, i32 %i.gu ; 2 uses
  %i.hl = icmp slt i32 %.124.i, %.1.i
  br i1 %i.hl, label %.preheader.i, label %._crit_edge.i.loopexit, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %Emap_PackEntryCompare.exit.i
  %i.hm = icmp eq i32 %.124.i, %.5242
  br i1 %i.hm, label %Emap_PackEntryFindFirst.exit.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.loopexit
  %i.hn = zext nneg i32 %.124.i to i64
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.hn ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !89
  %.not.i26.i = icmp eq i32 %i.hq, %i.gr
  br i1 %.not.i26.i, label %bb.aa, label %Emap_PackEntryFindFirst.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !90
  %or.cond.not.i = icmp eq i64 %i.hs, %i.fl       ; 2 uses
  %brmerge.not.i = and i1 %14, %or.cond.not.i
  %.mux67.i = select i1 %or.cond.not.i, i32 %.124.i, i32 -1
  br i1 %brmerge.not.i, label %.lr.ph.i29.i, label %Emap_PackEntryFindFirst.exit

.lr.ph.i29.i:                                     ; preds = %bb.aa
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ac
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %.pre545
  br i1 %exitcond.not.i34.i, label %Emap_PackEntryFindFirst.exit, label %bb.ac, !llvm.loop !0

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i29.i
  %indvars.iv.i31.i = phi i64 [ 0, %.lr.ph.i29.i ], [ %indvars.iv.next.i33.i, %bb.ab ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i31.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !73
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i31.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !73
  %.not28.i32.i = icmp eq i32 %i.hv, %i.hx
  br i1 %.not28.i32.i, label %bb.ab, label %Emap_PackEntryFindFirst.exit.thread

Emap_PackEntryFindFirst.exit.thread:              ; preds = %bb.ac, %._crit_edge.i.loopexit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bc

Emap_PackEntryFindFirst.exit:                     ; preds = %bb.ab, %bb.aa
  %.025.i = phi i32 [ %.mux67.i, %bb.aa ], [ %.124.i, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.hy = icmp slt i32 %.025.i, 0
  br i1 %i.hy, label %bb.bc, label %.preheader

.preheader:                                       ; preds = %Emap_PackEntryFindFirst.exit
  %i.hz = icmp slt i32 %.025.i, %.5242
  br i1 %i.hz, label %.lr.ph440, label %.critedge2

.lr.ph440:                                        ; preds = %.preheader
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.not.i317
  %i.ib = fpext float %.2261446 to double
  %i.ic = fadd double %i.ib, -1.000000e-03
  %i.id = zext nneg i32 %.025.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph440, %Emap_ObjPairHasMffcDanglingRelation.exit.thread
  %indvars.iv514 = phi i64 [ %i.id, %.lr.ph440 ], [ %indvars.iv.next515, %Emap_ObjPairHasMffcDanglingRelation.exit.thread ] ; 2 uses
  %.3438 = phi i32 [ %.2225449, %.lr.ph440 ], [ %.4.ph, %Emap_ObjPairHasMffcDanglingRelation.exit.thread ] ; 11 uses
  %i.ie = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv514 ; 8 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !89 ; 6 uses
  %i.ih = load i32, ptr %i.et, align 8, !tbaa !64
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %bb.ad
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !90
  %i.il = icmp eq i64 %i.ik, %i.fl
  br i1 %i.il, label %bb.af, label %.critedge2

bb.af:                                            ; preds = %bb.ae
  %i.im = load i32, ptr %i.ie, align 8, !tbaa !86 ; 5 uses
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.in ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ip = icmp sgt i32 %i.ig, 0                   ; 2 uses
  br i1 %i.ip, label %.lr.ph435, label %._crit_edge436.thread

.lr.ph435:                                        ; preds = %bb.af
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ig to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ig, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph435
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ix, %vector.body ]
  %vec.phi596 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.iy, %vector.body ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load = load <4 x i32>, ptr %i.ir, align 4, !tbaa !73
  %wide.load597 = load <4 x i32>, ptr %i.is, align 4, !tbaa !73
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load598 = load <4 x i32>, ptr %i.it, align 4, !tbaa !73
  %wide.load599 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !73
  %i.iv = icmp ne <4 x i32> %wide.load, %wide.load598
  %i.iw = icmp ne <4 x i32> %wide.load597, %wide.load599
  %i.ix = or <4 x i1> %vec.phi, %i.iv             ; 2 uses
  %i.iy = or <4 x i1> %vec.phi596, %i.iw          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.iy, %i.ix
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ja = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not600 = icmp eq i4 %i.ja, 0
  %rdx.select = zext i1 %.not600 to i32           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge436, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph435, %middle.block
  %indvars.iv508.ph = phi i64 [ 0, %.lr.ph435 ], [ %n.vec, %middle.block ]
  %.0433.ph = phi i32 [ 1, %.lr.ph435 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv508 = phi i64 [ %indvars.iv.next509, %scalar.ph ], [ %indvars.iv508.ph, %scalar.ph.preheader ] ; 3 uses
  %.0433 = phi i32 [ %spec.select, %scalar.ph ], [ %.0433.ph, %scalar.ph.preheader ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv508
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !73
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv508
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !73
  %.not289 = icmp eq i32 %i.jc, %i.je
  %spec.select = select i1 %.not289, i32 %.0433, i32 0 ; 2 uses
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge436, label %scalar.ph, !llvm.loop !238

._crit_edge436:                                   ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.jf = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.jf, label %Emap_ManComputeRefs.exit343, label %._crit_edge436.thread

._crit_edge436.thread:                            ; preds = %bb.af, %._crit_edge436
  %i.jg = load i32, ptr %i.dv, align 8, !tbaa !86 ; 3 uses
  %i.jh = icmp eq i32 %i.im, %i.jg
  br i1 %i.jh, label %Emap_ObjPairHasMffcDanglingRelation.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge436.thread
  %i.ji = shl nsw i32 %i.im, 1
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jj ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !73
  %i.jm = getelementptr i8, ptr %i.jk, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !73
  %i.jo = sub i32 0, %i.jn
  %i.jp = icmp eq i32 %i.jl, %i.jo
  br i1 %i.jp, label %Emap_ObjPairHasMffcDanglingRelation.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jq = getelementptr inbounds nuw i8, ptr %i.io, i64 5128 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.io, i64 5192
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !116
  %i.jt = icmp sgt i32 %i.js, -1
  br i1 %i.jt, label %Emap_ObjPairHasMffcDanglingRelation.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ju = getelementptr inbounds nuw i8, ptr %i.io, i64 5224 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.io, i64 5288
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !116
  %i.jx = icmp sgt i32 %i.jw, -1
  br i1 %i.jx, label %Emap_ObjPairHasMffcDanglingRelation.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val303 = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.jy = getelementptr i8, ptr %.val303, i64 8
  %.val303.val = load ptr, ptr %i.jy, align 8, !tbaa !71 ; 2 uses
  %i.jz = tail call noundef i32 @llvm.smin.i32(i32 %i.jg, i32 %i.im) ; 3 uses
  %i.ka = tail call noundef i32 @llvm.smax.i32(i32 %i.jg, i32 %i.im)
  %i.kb = sext i32 %i.jz to i64                   ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %.val303.val, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !72 ; 2 uses
  %i.ke = sext i32 %i.ka to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %.val303.val, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !72 ; 4 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 20
  %.val51.i = load i32, ptr %i.kh, align 4
  %i.ki = and i32 %.val51.i, 15
  %.not.i308 = icmp eq i32 %i.ki, 2
  br i1 %.not.i308, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = and i32 %i.kk, 15
  %.not1.i = icmp eq i32 %i.kl, 1
  br i1 %.not1.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.km = getelementptr i8, ptr %i.kg, i64 32
  %.val47.i = load ptr, ptr %i.km, align 8, !tbaa !75 ; 2 uses
  %.val47.val.i = load i32, ptr %.val47.i, align 4, !tbaa !73
  %i.kn = icmp eq i32 %.val47.val.i, %i.jz
  br i1 %i.kn, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ko = getelementptr i8, ptr %.val47.i, i64 4
  %.val48.val.i = load i32, ptr %i.ko, align 4, !tbaa !73
  %i.kp = icmp eq i32 %.val48.val.i, %i.jz
  br i1 %i.kp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.kq = getelementptr i8, ptr %i.kd, i64 44
  %.val50.i = load i32, ptr %i.kq, align 4, !tbaa !96
end_hunk_3
begin_hunk_4_@Emap_ManPackMogs:bb.a
  br i1 %i.br, label %.loopexit.1, label %.preheader238.1

.preheader238.1:                                  ; preds = %bb.h
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !61 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.split.preheader.1, label %.loopexit.1

.lr.ph.split.preheader.1:                         ; preds = %.preheader238.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %wide.trip.count.1 = zext nneg i32 %i.bs to i64
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.j, %.lr.ph.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.split.preheader.1 ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.2166249.1 = phi i32 [ %.4168, %.lr.ph.split.preheader.1 ], [ %.3167.1, %bb.j ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %indvars.iv.1 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !64 ; 5 uses
  %i.bx = icmp slt i32 %i.bw, 2
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.by = icmp eq i32 %i.bw, 6
  %i.bz = shl nuw i32 1, %i.bw
  %i.ca = zext nneg i32 %i.bz to i64
  %notmask.i.1 = shl nsw i64 -1, %i.ca
  %i.cb = xor i64 %notmask.i.1, -1
  %i.cc = select i1 %i.by, i64 -1, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !65
  %i.cf = xor i64 %i.cc, %i.ce
  %.val192.1 = load i32, ptr %i.af, align 8, !tbaa !59
  %i.cg = sext i32 %.2166249.1 to i64
  %i.ch = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.cg ; 6 uses
  store i32 %.val192.1, ptr %i.ch, align 8, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ci, align 4, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !88
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 %i.bw, ptr %i.cl, align 4, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i64 %i.cf, ptr %i.cm, align 8, !tbaa !90
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cp = zext nneg i32 %i.bw to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.co, ptr nonnull align 4 %i.cn, i64 %i.cq, i1 false), !tbaa !73
  %i.cr = add nsw i32 %.2166249.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.1
  %.3167.1 = phi i32 [ %i.cr, %bb.i ], [ %.2166249.1, %.lr.ph.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.split.1, !llvm.loop !246

.loopexit.1:                                      ; preds = %bb.j, %.preheader238.1, %bb.h, %.loopexit
  %.4168.1 = phi i32 [ %.4168, %.loopexit ], [ %.4168, %bb.h ], [ %.4168, %.preheader238.1 ], [ %.3167.1, %bb.j ]
  %.val.pre = load i32, ptr %i.u, align 4, !tbaa !56
  br label %.loopexit240

.loopexit240:                                     ; preds = %.loopexit.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val323, %bb.c ], [ %.val323, %bb.d ], [ %.val.pre, %.loopexit.1 ] ; 2 uses
  %.5169 = phi i32 [ %.0164257, %bb.c ], [ %.0164257, %bb.d ], [ %.4168.1, %.loopexit.1 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = sext i32 %.val to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.c, label %.critedge, !llvm.loop !247

.critedge:                                        ; preds = %.loopexit240
  %i.cu = sext i32 %.5169 to i64
  tail call void @qsort(ptr noundef %i.y, i64 noundef %i.cu, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.cv = icmp sgt i32 %.5169, 0
  br i1 %i.cv, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %wide.trip.count320 = zext nneg i32 %.5169 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph282, %.thread233
  %indvars.iv317 = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next318, %.thread233 ] ; 2 uses
  %.0161281 = phi i32 [ 0, %.lr.ph282 ], [ %.10, %.thread233 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv317 ; 5 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !86 ; 5 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !87 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [96 x i8], ptr %i.db, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 5192   ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !116 ; 3 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %.thread233, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !88
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [40 x i8], ptr %i.dj, i64 %i.dm ; 3 uses
  %i.do = load i32, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph276, label %.thread233

.lr.ph276:                                        ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 4 uses
  %i.ds = shl nsw i32 %i.cz, 1
  %i.dt = add nsw i32 %i.ds, %i.dd
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.du
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph276, %bb.at
  %i.dw = phi i32 [ %i.do, %.lr.ph276 ], [ %i.ko, %bb.at ]
  %.pr329 = phi i32 [ %i.dh, %.lr.ph276 ], [ %.pr325, %bb.at ] ; 2 uses
  %i.dx = phi i32 [ %i.dh, %.lr.ph276 ], [ %i.kp, %bb.at ] ; 2 uses
  %indvars.iv314 = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next315, %bb.at ] ; 2 uses
  %.1162274 = phi i32 [ %.0161281, %.lr.ph276 ], [ %.8.ph, %bb.at ] ; 2 uses
  %i.dy = load ptr, ptr %i.cw, align 8, !tbaa !111
  %i.dz = getelementptr inbounds nuw [144 x i8], ptr %i.dy, i64 %indvars.iv314 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !92
  %i.ec = load i32, ptr %i.dn, align 8, !tbaa !64
  %.not181 = icmp eq i32 %i.eb, %i.ec
  br i1 %.not181, label %.preheader236, label %bb.at

.preheader236:                                    ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 80 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 72 ; 2 uses
  %i.ef = load i64, ptr %i.dq, align 8, !tbaa !90
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 20 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 44 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader236, %bb.ar
  %.pr328 = phi i32 [ %.pr329, %.preheader236 ], [ %.pr, %bb.ar ] ; 9 uses
  %i.ei = phi i32 [ %i.dx, %.preheader236 ], [ %i.km, %bb.ar ] ; 9 uses
  %.not182 = phi i1 [ true, %.preheader236 ], [ false, %bb.ar ] ; 4 uses
  %.not.i207 = phi i64 [ 116, %.preheader236 ], [ 92, %bb.ar ]
  %.0157270 = phi i32 [ 0, %.preheader236 ], [ 1, %bb.ar ]
  %.2163269 = phi i32 [ %.1162274, %.preheader236 ], [ %.6.ph, %bb.ar ] ; 10 uses
  %.in = select i1 %.not182, ptr %i.ee, ptr %i.ed
  %i.ej = load i64, ptr %.in, align 8, !tbaa !93
  %.in183 = select i1 %.not182, ptr %i.ed, ptr %i.ee
  %i.ek = load i64, ptr %.in183, align 8, !tbaa !93 ; 4 uses
  %.not184 = icmp eq i64 %i.ej, %i.ef
  br i1 %.not184, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %i.ea, align 8, !tbaa !92 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 0                   ; 2 uses
  br i1 %i.em, label %.lr.ph.i199, label %Emap_MogArrival.exit

.lr.ph.i199:                                      ; preds = %bb.o
  %..i = select i1 %.not182, i64 92, i64 116
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 %..i
  %wide.trip.count.i = zext nneg i32 %i.el to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i199
  %indvars.iv.i200 = phi i64 [ 0, %.lr.ph.i199 ], [ %indvars.iv.next.i201, %bb.p ] ; 4 uses
  %.01617.i = phi double [ 0.000000e+00, %.lr.ph.i199 ], [ %i.ff, %bb.p ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i200
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !73
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i200
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !73
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [96 x i8], ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 5208
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !67
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i200
  %i.fb = load float, ptr %.in.i, align 4, !tbaa !109
  %i.fc = fpext float %i.fb to double
  %i.fd = fadd double %i.fa, %i.fc                ; 2 uses
  %i.fe = fcmp ogt double %.01617.i, %i.fd
  %i.ff = select i1 %i.fe, double %.01617.i, double %i.fd ; 2 uses
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i201, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Emap_MogArrival.exit, label %bb.p, !llvm.loop !10

Emap_MogArrival.exit:                             ; preds = %bb.p, %bb.o
  %.016.lcssa.i = phi double [ 0.000000e+00, %bb.o ], [ %i.ff, %bb.p ]
  %i.fg = load double, ptr %i.dv, align 8, !tbaa !106
  %i.fh = fadd double %i.fg, 1.000000e-03
  %i.fi = fcmp ogt double %.016.lcssa.i, %i.fh
  br i1 %i.fi, label %bb.ar, label %bb.q

bb.q:                                             ; preds = %Emap_MogArrival.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.fj = load i32, ptr %i.dn, align 8, !tbaa !64 ; 7 uses
  %6 = icmp sgt i32 %i.fj, 0                      ; 4 uses
  %.pre337 = zext i32 %i.fj to i64                ; 6 uses
  br i1 %6, label %.lr.ph.i202, label %.preheader.i.preheader

.lr.ph.i202:                                      ; preds = %bb.q
  %i.fk = shl nuw nsw i64 %.pre337, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull readonly align 4 %i.dr, i64 %i.fk, i1 false), !tbaa !73
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.q, %.lr.ph.i202
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5169, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.fl = add nuw nsw i32 %.02348.i, %.02249.i
  %i.fm = lshr i32 %i.fl, 1                       ; 3 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.fn ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !89 ; 2 uses
  %.not.i.i = icmp eq i32 %i.fq, %i.fj
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.fr = sub nsw i32 %i.fq, %i.fj
  br label %Emap_PackEntryCompare.exit.i

bb.s:                                             ; preds = %.preheader.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !90 ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.ek
  br i1 %i.fu, label %Emap_PackEntryCompare.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %7 = icmp ule i64 %i.ft, %i.ek
  %or.cond.i = and i1 %6, %7
  br i1 %or.cond.i, label %.lr.ph.i.i, label %Emap_PackEntryCompare.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre337
  br i1 %exitcond.not.i.i, label %Emap_PackEntryCompare.exit.i, label %bb.v, !llvm.loop !0

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !73 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !73 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.fx, %i.fz
  br i1 %.not28.i.i, label %bb.u, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ga = sub nsw i32 %i.fx, %i.fz
  br label %Emap_PackEntryCompare.exit.i

Emap_PackEntryCompare.exit.i:                     ; preds = %bb.u, %bb.w, %bb.t, %bb.s, %bb.r
  %.021.i.i = phi i32 [ %i.fr, %bb.r ], [ 0, %bb.t ], [ -2147483648, %bb.s ], [ %i.ga, %bb.w ], [ 0, %bb.u ]
  %i.gb = icmp slt i32 %.021.i.i, 0               ; 2 uses
  %i.gc = add nuw nsw i32 %i.fm, 1
  %.124.i = select i1 %i.gb, i32 %i.gc, i32 %.02348.i ; 6 uses
  %.1.i = select i1 %i.gb, i32 %.02249.i, i32 %i.fm ; 2 uses
  %i.gd = icmp slt i32 %.124.i, %.1.i
  br i1 %i.gd, label %.preheader.i, label %._crit_edge.i.loopexit, !llvm.loop !1

._crit_edge.i.loopexit:                           ; preds = %Emap_PackEntryCompare.exit.i
  %i.ge = icmp eq i32 %.124.i, %.5169
  br i1 %i.ge, label %Emap_PackEntryFindFirst.exit.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.loopexit
  %i.gf = zext nneg i32 %.124.i to i64
  %i.gg = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !89
  %.not.i26.i = icmp eq i32 %i.gi, %i.fj
  br i1 %.not.i26.i, label %bb.y, label %Emap_PackEntryFindFirst.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !90
  %or.cond.not.i = icmp eq i64 %i.gk, %i.ek       ; 2 uses
  %brmerge.not.i = and i1 %6, %or.cond.not.i
  %.mux67.i = select i1 %or.cond.not.i, i32 %.124.i, i32 -1
  br i1 %brmerge.not.i, label %.lr.ph.i29.i, label %Emap_PackEntryFindFirst.exit

.lr.ph.i29.i:                                     ; preds = %bb.y
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, %.pre337
  br i1 %exitcond.not.i34.i, label %Emap_PackEntryFindFirst.exit, label %bb.aa, !llvm.loop !0

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i29.i
  %indvars.iv.i31.i = phi i64 [ 0, %.lr.ph.i29.i ], [ %indvars.iv.next.i33.i, %bb.z ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i31.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !73
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i31.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !73
  %.not28.i32.i = icmp eq i32 %i.gn, %i.gp
  br i1 %.not28.i32.i, label %bb.z, label %Emap_PackEntryFindFirst.exit.thread

Emap_PackEntryFindFirst.exit.thread:              ; preds = %bb.aa, %._crit_edge.i.loopexit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ar

Emap_PackEntryFindFirst.exit:                     ; preds = %bb.z, %bb.y
  %.025.i = phi i32 [ %.mux67.i, %bb.y ], [ %.124.i, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.gq = icmp slt i32 %.025.i, 0
  br i1 %i.gq, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %Emap_PackEntryFindFirst.exit
  %i.gr = icmp slt i32 %.025.i, %.5169
  br i1 %i.gr, label %.lr.ph265, label %.critedge2

.lr.ph265:                                        ; preds = %.preheader
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.not.i207
  %i.gt = zext nneg i32 %.025.i to i64
  %wide.trip.count.i209 = zext nneg i32 %i.el to i64
  %min.iters.check = icmp ult i32 %i.fj, 8
  %n.vec = and i64 %.pre337, 2147483640           ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %.pre337
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph265, %Emap_ObjPairHasDirectDanglingRelation.exit.thread
  %indvars.iv311 = phi i64 [ %i.gt, %.lr.ph265 ], [ %indvars.iv.next312, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv311 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !89
  %i.gx = icmp eq i32 %i.gw, %i.fj
  br i1 %i.gx, label %bb.ac, label %.critedge2

bb.ac:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !90
  %i.ha = icmp eq i64 %i.gz, %i.ek
  br i1 %i.ha, label %bb.ad, label %.critedge2

bb.ad:                                            ; preds = %bb.ac
  %i.hb = load i32, ptr %i.gu, align 8, !tbaa !86 ; 5 uses
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !87 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [96 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !88
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr [40 x i8], ptr %i.hd, i64 %i.hk
  br i1 %6, label %.lr.ph262, label %._crit_edge.thread

.lr.ph262:                                        ; preds = %bb.ad
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph262, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph262 ] ; 3 uses
  %vec.phi = phi <4 x i1> [ %i.ht, %vector.body ], [ zeroinitializer, %.lr.ph262 ]
  %vec.phi374 = phi <4 x i1> [ %i.hu, %vector.body ], [ zeroinitializer, %.lr.ph262 ]
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load = load <4 x i32>, ptr %i.hn, align 4, !tbaa !73
  %wide.load375 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !73
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load376 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !73
  %wide.load377 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !73
  %i.hr = icmp ne <4 x i32> %wide.load, %wide.load376
  %i.hs = icmp ne <4 x i32> %wide.load375, %wide.load377
  %i.ht = or <4 x i1> %vec.phi, %i.hr             ; 2 uses
  %i.hu = or <4 x i1> %vec.phi374, %i.hs          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.hu, %i.ht
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.hw = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not378 = icmp eq i4 %i.hw, 0
  %rdx.select = zext i1 %.not378 to i32           ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph262, %middle.block
  %indvars.iv308.ph = phi i64 [ 0, %.lr.ph262 ], [ %n.vec, %middle.block ]
  %.0261.ph = phi i32 [ 1, %.lr.ph262 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %scalar.ph ], [ %indvars.iv308.ph, %scalar.ph.preheader ] ; 3 uses
  %.0261 = phi i32 [ %spec.select, %scalar.ph ], [ %.0261.ph, %scalar.ph.preheader ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv308
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !73
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv308
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !73
  %.not187 = icmp eq i32 %i.hy, %i.ia
  %spec.select = select i1 %.not187, i32 %.0261, i32 0 ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next309, %.pre337
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !249

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.ib = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.ib, label %.critedge2, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.ad, %._crit_edge
  %i.ic = icmp eq i32 %i.hb, %i.cz
  br i1 %i.ic, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread
  %i.id = getelementptr i8, ptr %i.hh, i64 5192
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !116
  %i.if = icmp sgt i32 %i.ie, -1
  br i1 %i.if, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val198 = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ig = getelementptr i8, ptr %.val198, i64 8
  %.val198.val = load ptr, ptr %i.ig, align 8, !tbaa !71 ; 2 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %.val198.val, i64 %i.da
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !72 ; 4 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %.val198.val, i64 %i.hc
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !72 ; 4 uses
  %i.il = getelementptr i8, ptr %i.ii, i64 20
  %.val31.i = load i32, ptr %i.il, align 4
  %i.im = and i32 %.val31.i, 15
  %.not.i203 = icmp eq i32 %i.im, 2
  br i1 %.not.i203, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = and i32 %i.io, 15
  %.not1.i = icmp eq i32 %i.ip, 1
  br i1 %.not1.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iq = getelementptr i8, ptr %i.ii, i64 32
  %.val25.i = load ptr, ptr %i.iq, align 8, !tbaa !75 ; 2 uses
  %.val25.val.i = load i32, ptr %.val25.i, align 4, !tbaa !73
  %i.ir = icmp eq i32 %.val25.val.i, %i.hb
  br i1 %i.ir, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.is = getelementptr i8, ptr %.val25.i, i64 4
  %.val27.val.i = load i32, ptr %i.is, align 4, !tbaa !73
  %i.it = icmp eq i32 %.val27.val.i, %i.hb
  br i1 %i.it, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.iu = getelementptr i8, ptr %i.ik, i64 44
  %.val29.i = load i32, ptr %i.iu, align 4, !tbaa !96
  %i.iv = icmp eq i32 %.val29.i, 1
  br i1 %i.iv, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af
  %i.iw = getelementptr i8, ptr %i.ik, i64 20
  %.val30.i = load i32, ptr %i.iw, align 4
  %i.ix = and i32 %.val30.i, 15
  %.not2.i = icmp eq i32 %i.ix, 2
  br i1 %.not2.i, label %Emap_ObjPairHasDirectDanglingRelation.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = and i32 %i.iz, 15
  %.not3.i = icmp eq i32 %i.ja, 1
  br i1 %.not3.i, label %Emap_ObjPairHasDirectDanglingRelation.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jb = getelementptr i8, ptr %i.ik, i64 32
  %.val24.i = load ptr, ptr %i.jb, align 8, !tbaa !75 ; 2 uses
  %.val24.val.i = load i32, ptr %.val24.i, align 4, !tbaa !73
  %i.jc = icmp eq i32 %.val24.val.i, %i.cz
  br i1 %i.jc, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jd = getelementptr i8, ptr %.val24.i, i64 4
  %.val26.val.i = load i32, ptr %i.jd, align 4, !tbaa !73
  %i.je = icmp eq i32 %.val26.val.i, %i.cz
  br i1 %i.je, label %bb.ao, label %Emap_ObjPairHasDirectDanglingRelation.exit

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jf = getelementptr i8, ptr %i.ii, i64 44
  %.val28.i = load i32, ptr %i.jf, align 4, !tbaa !96
  %i.jg = icmp eq i32 %.val28.i, 1
  br i1 %i.jg, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %Emap_ObjPairHasDirectDanglingRelation.exit

Emap_ObjPairHasDirectDanglingRelation.exit:       ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  br i1 %i.em, label %.lr.ph.i206, label %Emap_MogArrival.exit215

.lr.ph.i206:                                      ; preds = %Emap_ObjPairHasDirectDanglingRelation.exit
  %i.jh = getelementptr i8, ptr %i.hl, i64 12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i206
  %indvars.iv.i210 = phi i64 [ 0, %.lr.ph.i206 ], [ %indvars.iv.next.i213, %bb.ap ] ; 4 uses
  %.01617.i211 = phi double [ 0.000000e+00, %.lr.ph.i206 ], [ %i.jz, %bb.ap ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i210
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !73
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !73
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i210
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !73
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr [96 x i8], ptr %i.jo, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 5208
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !67
  %.in.i212 = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv.i210
  %i.jv = load float, ptr %.in.i212, align 4, !tbaa !109
  %i.jw = fpext float %i.jv to double
  %i.jx = fadd double %i.ju, %i.jw                ; 2 uses
  %i.jy = fcmp ogt double %.01617.i211, %i.jx
  %i.jz = select i1 %i.jy, double %.01617.i211, double %i.jx ; 2 uses
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i210, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next.i213, %wide.trip.count.i209
  br i1 %exitcond.not.i214, label %Emap_MogArrival.exit215, label %bb.ap, !llvm.loop !10

Emap_MogArrival.exit215:                          ; preds = %bb.ap, %Emap_ObjPairHasDirectDanglingRelation.exit
  %.016.lcssa.i205 = phi double [ 0.000000e+00, %Emap_ObjPairHasDirectDanglingRelation.exit ], [ %i.jz, %bb.ap ]
  %i.ka = shl nsw i32 %i.hb, 1
  %i.kb = add nsw i32 %i.ka, %i.hf
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !106
  %i.kf = fadd double %i.ke, 1.000000e-03
  %i.kg = fcmp ogt double %.016.lcssa.i205, %i.kf
  br i1 %i.kg, label %Emap_ObjPairHasDirectDanglingRelation.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %Emap_MogArrival.exit215
  tail call fastcc void @Emap_MogApply(ptr noundef nonnull %1, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.gu, ptr noundef nonnull %i.dz, i32 noundef %.0157270)
  %i.kh = add nsw i32 %.2163269, 1
  %.pre = load i32, ptr %i.dg, align 8, !tbaa !116 ; 2 uses
  br label %.critedge2

Emap_ObjPairHasDirectDanglingRelation.exit.thread: ; preds = %bb.ao, %bb.aj, %._crit_edge.thread, %bb.ae, %Emap_MogArrival.exit215
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.ki = trunc nuw i64 %indvars.iv.next312 to i32
  %i.kj = icmp sgt i32 %.5169, %i.ki
  br i1 %i.kj, label %bb.ab, label %.critedge2, !llvm.loop !250

.critedge2:                                       ; preds = %bb.ac, %Emap_ObjPairHasDirectDanglingRelation.exit.thread, %bb.ab, %._crit_edge, %.preheader, %bb.aq
  %.pr327 = phi i32 [ %.pre, %bb.aq ], [ %.pr328, %.preheader ], [ %.pr328, %._crit_edge ], [ %.pr328, %bb.ab ], [ %.pr328, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ], [ %.pr328, %bb.ac ]
  %i.kk = phi i32 [ %.pre, %bb.aq ], [ %i.ei, %.preheader ], [ %i.ei, %._crit_edge ], [ %i.ei, %bb.ab ], [ %i.ei, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ], [ %i.ei, %bb.ac ] ; 2 uses
  %.5 = phi i32 [ %i.kh, %bb.aq ], [ %.2163269, %.preheader ], [ %.2163269, %._crit_edge ], [ %.2163269, %bb.ab ], [ %.2163269, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ], [ %.2163269, %bb.ac ] ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, -1
end_hunk_4
