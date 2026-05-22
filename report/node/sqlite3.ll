inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@allocateBtreePage:bb.a
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !227 ; 3 uses
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 16
  %i.gy = or disjoint i32 %i.gx, %i.gt
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 10
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !227 ; 3 uses
  %i.hb = zext i8 %i.ha to i32
  %i.hc = shl nuw nsw i32 %i.hb, 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 11
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !227 ; 3 uses
  %i.hf = zext i8 %i.he to i32
  %i.hg = or disjoint i32 %i.gy, %i.hc
  %i.hh = or disjoint i32 %i.hg, %i.hf            ; 2 uses
  %i.hi = icmp ugt i32 %i.hh, %.val
  br i1 %i.hi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79237, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread367

bb.bc:                                            ; preds = %bb.ba
  %i.hj = call fastcc i32 @btreeGetUnusedPage(ptr noundef nonnull %0, i32 noundef %i.hh, ptr noundef %i.c, i32 noundef 0) ; 2 uses
  %.not275 = icmp eq i32 %i.hj, 0
  br i1 %.not275, label %bb.bd, label %.thread367

bb.bd:                                            ; preds = %bb.bc
  %i.hk = load ptr, ptr %i.c, align 8, !tbaa !2045 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !690 ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !520 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 52
  %i.hq = load i16, ptr %i.hp, align 4, !tbaa !519
  %i.hr = and i16 %i.hq, 4
  %.not.i304 = icmp eq i16 %i.hr, 0
  br i1 %.not.i304, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !676
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !525
  %.not13.i305 = icmp ult i32 %i.ht, %i.hv
  br i1 %.not13.i305, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 128
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !663
  %.not15.i306 = icmp eq i32 %i.hx, 0
  br i1 %.not15.i306, label %sqlite3PagerWrite.exit309.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hy = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.hm), !inline_history !677
  br label %sqlite3PagerWrite.exit309

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !678 ; 2 uses
  %.not14.i308 = icmp eq i32 %i.ia, 0
  br i1 %.not14.i308, label %bb.bi, label %sqlite3PagerWrite.exit309.thread363

bb.bi:                                            ; preds = %bb.bh
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ho, i64 184
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !679
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 200
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !79
  %i.if = trunc i64 %i.ie to i32
  %i.ig = icmp ugt i32 %i.ic, %i.if
  br i1 %i.ig, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ih = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.hm), !inline_history !677
  br label %sqlite3PagerWrite.exit309

bb.bk:                                            ; preds = %bb.bi
  %i.ii = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.hm), !inline_history !677
  br label %sqlite3PagerWrite.exit309

sqlite3PagerWrite.exit309:                        ; preds = %bb.bg, %bb.bj, %bb.bk
  %.0.i307 = phi i32 [ %i.hy, %bb.bg ], [ %i.ii, %bb.bk ], [ %i.ih, %bb.bj ] ; 2 uses
  %.not276 = icmp eq i32 %.0.i307, 0
  br i1 %.not276, label %sqlite3PagerWrite.exit309.thread, label %sqlite3PagerWrite.exit309.thread363

sqlite3PagerWrite.exit309.thread363:              ; preds = %bb.bh, %sqlite3PagerWrite.exit309
  %.0.i307366 = phi i32 [ %.0.i307, %sqlite3PagerWrite.exit309 ], [ %i.ia, %bb.bh ]
  tail call fastcc void @releasePage(ptr noundef nonnull %i.hk)
  br label %.thread367

sqlite3PagerWrite.exit309.thread:                 ; preds = %bb.bf, %sqlite3PagerWrite.exit309
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hk, i64 80 ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !659
  %i.il = load ptr, ptr %i.cs, align 8, !tbaa !659
  %i.im = load i32, ptr %i.il, align 1
  store i32 %i.im, ptr %i.ik, align 1
  %i.in = load ptr, ptr %i.ij, align 8, !tbaa !659 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = add i32 %i.cz, -1                       ; 5 uses
  %i.iq = lshr i32 %i.ip, 24
  %i.ir = trunc nuw i32 %i.iq to i8
  store i8 %i.ir, ptr %i.io, align 1, !tbaa !227
  %i.is = lshr i32 %i.ip, 16
  %i.it = trunc i32 %i.is to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 5
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !227
  %i.iv = lshr i32 %i.ip, 8
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 6
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !227
  %i.iy = trunc i32 %i.ip to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 7
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !227
  %i.ja = load ptr, ptr %i.ij, align 8, !tbaa !659
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.cs, align 8, !tbaa !659
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.je = shl i32 %i.ip, 2
  %i.jf = zext i32 %i.je to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jb, ptr nonnull align 1 %i.jd, i64 %i.jf, i1 false)
  tail call fastcc void @releasePage(ptr noundef nonnull %i.hk)
  br i1 %.not264, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %sqlite3PagerWrite.exit309.thread
  %i.jg = load ptr, ptr %i.h, align 8, !tbaa !659 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  store i8 %i.gr, ptr %i.jh, align 1, !tbaa !227
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 33
  store i8 %i.gv, ptr %i.ji, align 1, !tbaa !227
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 34
  store i8 %i.ha, ptr %i.jj, align 1, !tbaa !227
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 35
  store i8 %i.he, ptr %i.jk, align 1, !tbaa !227
  br label %bb.bo

bb.bm:                                            ; preds = %sqlite3PagerWrite.exit309.thread
  %i.jl = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !690
  %i.jn = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.jm) ; 2 uses
  %.not277 = icmp eq i32 %i.jn, 0
  br i1 %.not277, label %bb.bn, label %.thread367

bb.bn:                                            ; preds = %bb.bm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !659 ; 4 uses
  store i8 %i.gr, ptr %i.jp, align 1, !tbaa !227
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  store i8 %i.gv, ptr %i.jq, align 1, !tbaa !227
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  store i8 %i.ha, ptr %i.jr, align 1, !tbaa !227
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 3
  store i8 %i.he, ptr %i.js, align 1, !tbaa !227
  br label %bb.bo

.thread367:                                       ; preds = %bb.bm, %bb.bc, %bb.bb, %sqlite3PagerWrite.exit309.thread363
  %.2188.ph = phi i32 [ 11, %bb.bb ], [ %.0.i307366, %sqlite3PagerWrite.exit309.thread363 ], [ %i.jn, %bb.bm ], [ %i.hj, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  br label %.thread395.thread511

bb.bo:                                            ; preds = %bb.bl, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #71
  br label %.thread389.sink.split

bb.bp:                                            ; preds = %bb.ah, %bb.ag
  %.not268 = icmp eq i32 %i.cy, 0
  br i1 %.not268, label %.thread389, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not269, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %i.bb, label %.preheader.preheader, label %bb.bt

.preheader.preheader:                             ; preds = %bb.br
  %wide.trip.count472 = zext i32 %i.cz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.bs
  %indvars.iv469 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next470, %bb.bs ] ; 3 uses
  %i.jt = shl i64 %indvars.iv469, 2
  %i.ju = add i64 %i.jt, 8
  %i.jv = and i64 %i.ju, 4294967292
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 1
  %i.jy = tail call i32 @llvm.bswap.i32(i32 %i.jx)
  %.not270 = icmp ugt i32 %i.jy, %3
  br i1 %.not270, label %bb.bs, label %.loopexit.loopexit.split.loop.exit

bb.bs:                                            ; preds = %.preheader
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count472
  br i1 %exitcond473.not, label %.loopexit, label %.preheader, !llvm.loop !2368

bb.bt:                                            ; preds = %bb.br
  %.not445 = icmp eq i32 %i.cy, 16777216
  br i1 %.not445, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bt
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = tail call i32 @llvm.bswap.i32(i32 %i.ka)
  %i.kc = sub i32 %i.kb, %3                       ; 3 uses
  %.narrow.i = icmp sgt i32 %i.kc, 0
  %spec.select.i = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.kc)
  %.0.i310 = select i1 %.narrow.i, i32 %i.kc, i32 %spec.select.i
  %wide.trip.count = zext i32 %i.cz to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0195441 = phi i32 [ %.0.i310, %.lr.ph.preheader ], [ %spec.select281, %.lr.ph ] ; 2 uses
  %.0206439 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select280, %.lr.ph ]
  %i.kd = trunc nuw i64 %indvars.iv to i32
  %i.ke = shl i64 %indvars.iv, 2
  %i.kf = add i64 %i.ke, 8
  %i.kg = and i64 %i.kf, 4294967292
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 1
  %i.kj = tail call i32 @llvm.bswap.i32(i32 %i.ki)
  %i.kk = sub i32 %i.kj, %3                       ; 3 uses
  %spec.select.i311 = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.kk)
  %.narrow.i312 = icmp sgt i32 %i.kk, 0
  %.0.i312 = select i1 %.narrow.i312, i32 %i.kk, i32 %spec.select.i311 ; 2 uses
  %i.kl = icmp samesign ult i32 %.0.i312, %.0195441
  %spec.select280 = select i1 %i.kl, i32 %i.kd, i32 %.0206439 ; 2 uses
  %spec.select281 = tail call i32 @llvm.umin.i32(i32 %.0.i312, i32 %.0195441)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2369

.loopexit.loopexit.split.loop.exit:               ; preds = %.preheader
  %i.km = trunc nuw i64 %indvars.iv469 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.bs, %.loopexit.loopexit.split.loop.exit, %bb.bt, %bb.bq
  %.3209 = phi i32 [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bs ], [ %i.km, %.loopexit.loopexit.split.loop.exit ], [ %spec.select280, %.lr.ph ] ; 2 uses
  %i.kn = shl i32 %.3209, 2
  %i.ko = add i32 %i.kn, 8
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.kp ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 1
  %i.ks = tail call i32 @llvm.bswap.i32(i32 %i.kr) ; 5 uses
  %i.kt = icmp ugt i32 %i.ks, %.val
  %i.ku = icmp ult i32 %i.ks, 2
  %or.cond11 = or i1 %i.kt, %i.ku
  br i1 %or.cond11, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.loopexit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79302, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread395

bb.bv:                                            ; preds = %.loopexit
  %i.kv = icmp ne i32 %i.ks, %3
  %i.kw = icmp uge i32 %i.ks, %3
  %or.cond14.not448 = or i1 %i.bc, %i.kw
  %i.kx = and i1 %i.kv, %or.cond14.not448
  %or.cond444.not = and i1 %i.kx, %i.db
  br i1 %or.cond444.not, label %.thread389, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.ks, ptr %2, align 4, !tbaa !5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !690 ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !520 ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 52
  %i.ld = load i16, ptr %i.lc, align 4, !tbaa !519
  %i.le = and i16 %i.ld, 4
  %.not.i313 = icmp eq i16 %i.le, 0
  br i1 %.not.i313, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !676
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !525
  %.not13.i314 = icmp ult i32 %i.lg, %i.li
  br i1 %.not13.i314, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 128
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !663
  %.not15.i315 = icmp eq i32 %i.lk, 0
  br i1 %.not15.i315, label %sqlite3PagerWrite.exit318.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ll = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.kz), !inline_history !677
  br label %sqlite3PagerWrite.exit318

bb.ca:                                            ; preds = %bb.bx, %bb.bw
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !678 ; 2 uses
  %.not14.i317 = icmp eq i32 %i.ln, 0
  br i1 %.not14.i317, label %bb.cb, label %.thread395.thread511

bb.cb:                                            ; preds = %bb.ca
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lb, i64 184
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !679
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 200
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !79
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = icmp ugt i32 %i.lp, %i.ls
  br i1 %i.lt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lu = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.kz), !inline_history !677
  br label %sqlite3PagerWrite.exit318

bb.cd:                                            ; preds = %bb.cb
  %i.lv = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.kz), !inline_history !677
  br label %sqlite3PagerWrite.exit318

sqlite3PagerWrite.exit318:                        ; preds = %bb.bz, %bb.cc, %bb.cd
  %.0.i316 = phi i32 [ %i.ll, %bb.bz ], [ %i.lv, %bb.cd ], [ %i.lu, %bb.cc ] ; 2 uses
  %.not271 = icmp eq i32 %.0.i316, 0
  br i1 %.not271, label %sqlite3PagerWrite.exit318.thread, label %.thread395.thread511

sqlite3PagerWrite.exit318.thread:                 ; preds = %bb.by, %sqlite3PagerWrite.exit318
  %i.lw = add i32 %i.cz, -1                       ; 5 uses
  %i.lx = icmp ult i32 %.3209, %i.lw
  br i1 %i.lx, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %sqlite3PagerWrite.exit318.thread
  %i.ly = shl i32 %i.cz, 2
  %i.lz = add i32 %i.ly, 4
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 1
  store i32 %i.mc, ptr %i.kq, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %sqlite3PagerWrite.exit318.thread
  %i.md = lshr i32 %i.lw, 24
  %i.me = trunc nuw i32 %i.md to i8
  store i8 %i.me, ptr %i.cu, align 1, !tbaa !227
  %i.mf = lshr i32 %i.lw, 16
  %i.mg = trunc i32 %i.mf to i8
  store i8 %i.mg, ptr %i.cv, align 1, !tbaa !227
  %i.mh = lshr i32 %i.lw, 8
  %i.mi = trunc i32 %i.mh to i8
  store i8 %i.mi, ptr %i.cw, align 1, !tbaa !227
  %i.mj = trunc i32 %i.lw to i8
  store i8 %i.mj, ptr %i.cx, align 1, !tbaa !227
  %i.mk = load i32, ptr %2, align 4, !tbaa !5     ; 3 uses
  %.val285 = load ptr, ptr %i.bd, align 8, !tbaa !741 ; 3 uses
  %.not.i319 = icmp eq ptr %.val285, null
  br i1 %.not.i319, label %btreeGetHasContent.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val.i = load i32, ptr %.val285, align 8, !tbaa !1314 ; 2 uses
  %i.ml = icmp ugt i32 %i.mk, %.val.i
  br i1 %i.ml, label %btreeGetHasContent.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mm = add i32 %i.mk, -1                       ; 2 uses
  %.not.i.i = icmp ult i32 %i.mm, %.val.i
  br i1 %.not.i.i, label %.preheader.i.i, label %btreeGetHasContent.exit

.preheader.i.i:                                   ; preds = %bb.ch, %bb.ci
  %.026.i.i = phi ptr [ %i.mu, %bb.ci ], [ %.val285, %bb.ch ] ; 5 uses
  %.025.i.i = phi i32 [ %i.mq, %bb.ci ], [ %i.mm, %bb.ch ]
  %.025.fr.i.i = freeze i32 %.025.i.i             ; 6 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !1318 ; 3 uses
  %.not30.i.i = icmp eq i32 %i.mo, 0
  br i1 %.not30.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i.i
  %i.mp = udiv i32 %.025.fr.i.i, %i.mo
  %i.mq = urem i32 %.025.fr.i.i, %i.mo
  %i.mr = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 16
  %i.ms = zext i32 %i.mp to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !227 ; 2 uses
  %.not32.not.i.i = icmp eq ptr %i.mu, null
  br i1 %.not32.not.i.i, label %btreeGetHasContent.exit, label %.preheader.i.i

bb.cj:                                            ; preds = %.preheader.i.i
  %i.mv = load i32, ptr %.026.i.i, align 8, !tbaa !1314
  %i.mw = icmp ult i32 %i.mv, 3969
  br i1 %i.mw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mx = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 16
  %i.my = lshr i32 %.025.fr.i.i, 3
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !227
  %i.nc = zext i8 %i.nb to i32
  %i.nd = and i32 %.025.fr.i.i, 7
  %i.ne = lshr i32 %i.nc, %i.nd
  %i.nf = and i32 %i.ne, 1
  %i.ng = xor i32 %i.nf, 1
  br label %btreeGetHasContent.exit

bb.cl:                                            ; preds = %bb.cj
  %i.nh = add i32 %.025.fr.i.i, 1
  %i.ni = urem i32 %.025.fr.i.i, 124              ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 16 ; 2 uses
  %i.nk = zext nneg i32 %i.ni to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !227 ; 2 uses
  %.not3136.i.i = icmp eq i32 %i.nm, 0
  br i1 %.not3136.i.i, label %btreeGetHasContent.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cl, %bb.cm
  %i.nn = phi i32 [ %i.nu, %bb.cm ], [ %i.nm, %bb.cl ]
  %.037.i.i = phi i32 [ %i.nr, %bb.cm ], [ %i.ni, %bb.cl ]
  %i.no = icmp eq i32 %i.nn, %i.nh
  br i1 %i.no, label %btreeGetHasContent.exit, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i
  %i.np = add i32 %.037.i.i, 1                    ; 2 uses
  %i.nq = icmp eq i32 %i.np, 124
  %i.nr = select i1 %i.nq, i32 0, i32 %i.np       ; 2 uses
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !227 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.nu, 0
  br i1 %.not31.i.i, label %btreeGetHasContent.exit, label %.lr.ph.i.i, !llvm.loop !1322

btreeGetHasContent.exit:                          ; preds = %bb.ci, %.lr.ph.i.i, %bb.cm, %bb.cf, %bb.cg, %bb.ch, %bb.ck, %bb.cl
  %i.nv = phi i32 [ 1, %bb.cf ], [ 0, %bb.cg ], [ 1, %bb.ch ], [ 0, %.lr.ph.i.i ], [ %i.ng, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.ci ]
end_hunk_0
begin_hunk_1_@sqlite3InitOne:bb.a
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !593
  %i.iv = add nsw i32 %i.iu, -1                   ; 2 uses
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !593
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.ar, label %sqlite3BtreeGetMeta.exit.4

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.hf)
  br label %sqlite3BtreeGetMeta.exit.4

sqlite3BtreeGetMeta.exit.4:                       ; preds = %.thread264, %bb.ar, %bb.aq, %bb.ap
  %i.ix = phi i32 [ %i.hs, %.thread264 ], [ %i.ir, %bb.ar ], [ %i.ir, %bb.aq ], [ %i.iq, %bb.ap ] ; 2 uses
  %i.iy = phi <4 x i8> [ %i.hr, %.thread264 ], [ %i.is, %bb.ar ], [ %i.is, %bb.aq ], [ %i.ip, %bb.ap ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !545
  %i.jb = and i64 %i.ja, 33554432
  %.not104 = icmp eq i64 %i.jb, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !101 ; 6 uses
  br i1 %.not104, label %bb.as, label %.thread206

.thread206:                                       ; preds = %sqlite3BtreeGetMeta.exit.4
  store i32 0, ptr %i.jd, align 8, !tbaa !941
  br label %sqlite3SetTextEncoding.exit

bb.as:                                            ; preds = %sqlite3BtreeGetMeta.exit.4
  store i32 %i.ds, ptr %i.jd, align 8, !tbaa !941
  %i.je = bitcast <4 x i8> %i.iy to i32
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %sqlite3SetTextEncoding.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jg = icmp eq i32 %1, 0
  br i1 %i.jg, label %bb.au, label %bb.be

bb.au:                                            ; preds = %bb.at
  %i.jh = load i32, ptr %i.b, align 4, !tbaa !695
  %i.ji = and i32 %i.jh, 64
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.av, label %bb.be

bb.av:                                            ; preds = %bb.au
  %i.jk = extractelement <4 x i8> %i.iy, i64 3
  %i.jl = and i8 %i.jk, 3
  %i.jm = and i32 %i.ix, 3
  %i.jn = icmp eq i32 %i.jm, 0
  %spec.store.select = select i1 %i.jn, i8 1, i8 %i.jl ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %spec.store.select, ptr %i.jo, align 4, !tbaa !844
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !959 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.js = load i32, ptr %i.jp, align 8, !tbaa !960
  %i.jt = urem i32 -1458796171, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.ju ; 2 uses
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.021.in.i.i.i.i.i = phi ptr [ %i.jv, %bb.aw ], [ %i.jw, %bb.ax ]
  %.pn.i.i.i.i.i = phi ptr [ %i.jv, %bb.aw ], [ %i.jp, %bb.ax ]
  %.021.i.i.i.i.i = load i32, ptr %.021.in.i.i.i.i.i, align 4, !tbaa !5 ; 2 uses
  %.not2631.i.i.i.i.i = icmp eq i32 %.021.i.i.i.i.i, 0
  br i1 %.not2631.i.i.i.i.i, label %sqlite3HashFind.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.ay
  %.020.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %sqlite3StrICmp.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.133.i.in.i.i.i.i = phi ptr [ %.133.i.i.i.i.i, %sqlite3StrICmp.exit.i.i.i.i.i ], [ %.020.in.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ]
  %.12232.i.i.i.i.i = phi i32 [ %i.ko, %sqlite3StrICmp.exit.i.i.i.i.i ], [ %.021.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i ]
  %.133.i.i.i.i.i = load ptr, ptr %.133.i.in.i.i.i.i, align 8, !tbaa !114 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i, i64 32
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !961
  %i.jz = icmp eq i32 %i.jy, -1458796171
  br i1 %i.jz, label %bb.az, label %sqlite3StrICmp.exit.i.i.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !962
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.013.i.i.i.i.i.i = phi ptr [ @.str.136, %bb.az ], [ %i.kn, %bb.bd ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.kb, %bb.az ], [ %i.km, %bb.bd ] ; 2 uses
  %i.kc = load i8, ptr %.0.i.i.i.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.kd = load i8, ptr %.013.i.i.i.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.ke = icmp eq i8 %i.kc, %i.kd
  br i1 %i.ke, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kf = icmp eq i8 %i.kc, 0
  br i1 %i.kf, label %sqlite3HashFind.exit.i.i.i, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.kg = zext i8 %i.kc to i64
  %i.kh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !227
  %i.kj = zext i8 %i.kd to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !227
  %.not.i27.i.i.i.i.i = icmp eq i8 %i.ki, %i.kl
  br i1 %.not.i27.i.i.i.i.i, label %bb.bd, label %sqlite3StrICmp.exit.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 1
  br label %bb.ba

sqlite3StrICmp.exit.i.i.i.i.i:                    ; preds = %bb.bc, %.lr.ph.i.i.i.i.i
  %i.ko = add i32 %.12232.i.i.i.i.i, -1           ; 2 uses
  %.not26.i.i.i.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not26.i.i.i.i.i, label %sqlite3HashFind.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !963

sqlite3HashFind.exit.i.i.i:                       ; preds = %sqlite3StrICmp.exit.i.i.i.i.i, %bb.bb, %bb.ay
  %.0.i.i.i.i.i = phi ptr [ @findElementWithHash.nullElement, %bb.ay ], [ %.133.i.i.i.i.i, %bb.bb ], [ @findElementWithHash.nullElement, %sqlite3StrICmp.exit.i.i.i.i.i ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !115 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  %i.ks = zext nneg i8 %spec.store.select to i64
  %i.kt = getelementptr [40 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 -40
  %.0.i.i114 = select i1 %i.kr, ptr null, ptr %i.ku
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i114, ptr %i.kv, align 8, !tbaa !1299
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.04.i.i = load ptr, ptr %i.kw, align 8, !tbaa !128 ; 2 uses
  %.not5.i.i = icmp eq ptr %.04.i.i, null
  br i1 %.not5.i.i, label %sqlite3SetTextEncoding.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %sqlite3HashFind.exit.i.i.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %.0.i5.i, %.lr.ph.i.i ], [ %.04.i.i, %sqlite3HashFind.exit.i.i.i ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 200 ; 2 uses
  %i.ky = load i16, ptr %i.kx, align 8
  %i.kz = and i16 %i.ky, -4
  %i.la = or disjoint i16 %i.kz, 2
  store i16 %i.la, ptr %i.kx, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %.0.i5.i = load ptr, ptr %i.lb, align 8, !tbaa !128 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.0.i5.i, null
  br i1 %.not.i.i115, label %sqlite3SetTextEncoding.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1020

bb.be:                                            ; preds = %bb.au, %bb.at
  %i.lc = and i32 %i.ix, 3
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.le = load i8, ptr %i.ld, align 4, !tbaa !844
  %i.lf = zext i8 %i.le to i32
  %.not106 = icmp eq i32 %i.lc, %i.lf
  br i1 %.not106, label %sqlite3SetTextEncoding.exit, label %sqlite3DbMallocRaw.exit.i.i117

sqlite3DbMallocRaw.exit.i.i117:                   ; preds = %bb.be
  %i.lg = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 68), !inline_history !608 ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i119, label %sqlite3DbStrDup.exit.i120, label %bb.bf

bb.bf:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.lg, ptr noundef nonnull readonly align 1 dereferenceable(68) @.str.390, i64 68, i1 false)
  br label %sqlite3DbStrDup.exit.i120

sqlite3DbStrDup.exit.i120:                        ; preds = %bb.bf, %sqlite3DbMallocRaw.exit.i.i117
  %i.lh = load ptr, ptr %2, align 8, !tbaa !251   ; 2 uses
  %.not.i6.i122 = icmp eq ptr %i.lh, null
  br i1 %.not.i6.i122, label %sqlite3SetString.exit123, label %bb.bg

bb.bg:                                            ; preds = %sqlite3DbStrDup.exit.i120
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %i.lh)
  br label %sqlite3SetString.exit123

sqlite3SetString.exit123:                         ; preds = %sqlite3DbStrDup.exit.i120, %bb.bg
  store ptr %i.lg, ptr %2, align 8, !tbaa !251
  br label %bb.ct

sqlite3SetTextEncoding.exit.loopexit:             ; preds = %.lr.ph.i.i
  %.pre177 = load ptr, ptr %i.jc, align 8, !tbaa !101
  br label %sqlite3SetTextEncoding.exit

sqlite3SetTextEncoding.exit:                      ; preds = %.thread206, %sqlite3SetTextEncoding.exit.loopexit, %sqlite3HashFind.exit.i.i.i, %bb.be, %bb.as
  %.sroa.7.0213 = phi i32 [ %i.go, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.go, %sqlite3HashFind.exit.i.i.i ], [ %i.go, %bb.be ], [ %i.go, %bb.as ], [ 0, %.thread206 ] ; 3 uses
  %.sroa.5.0212 = phi i32 [ %i.fd, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.fd, %sqlite3HashFind.exit.i.i.i ], [ %i.fd, %bb.be ], [ %i.fd, %bb.as ], [ 0, %.thread206 ] ; 3 uses
  %i.li = phi ptr [ %.pre177, %sqlite3SetTextEncoding.exit.loopexit ], [ %i.jd, %sqlite3HashFind.exit.i.i.i ], [ %i.jd, %bb.be ], [ %i.jd, %bb.as ], [ %i.jd, %.thread206 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.lk = load i8, ptr %i.lj, align 4, !tbaa !844
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 113
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !954
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 116 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !2942
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.bh, label %sqlite3BtreeSetCacheSize.exit

bb.bh:                                            ; preds = %sqlite3SetTextEncoding.exit
  %spec.select.i = call i32 @llvm.ssub.sat.i32(i32 0, i32 %.sroa.7.0213)
  %.narrow.i = icmp sgt i32 %.sroa.7.0213, 0
  %.0.i124 = select i1 %.narrow.i, i32 %.sroa.7.0213, i32 %spec.select.i ; 3 uses
  %i.lp = icmp eq i32 %.0.i124, 0
  %spec.store.select1 = select i1 %i.lp, i32 -2000, i32 %.0.i124 ; 4 uses
  store i32 %spec.store.select1, ptr %i.lm, align 4, !tbaa !2942
  %i.lq = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 7 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !67
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 17 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !592
  %.not.i.i125 = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i125, label %sqlite3BtreeEnter.exit.i127, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 20 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !593
  %i.lx = add nsw i32 %i.lw, 1
  store i32 %i.lx, ptr %i.lv, align 4, !tbaa !593
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 18
  %i.lz = load i8, ptr %i.ly, align 2, !tbaa !594
  %.not4.i.i126 = icmp eq i8 %i.lz, 0
  br i1 %.not4.i.i126, label %bb.bj, label %sqlite3BtreeEnter.exit.i127

bb.bj:                                            ; preds = %bb.bi
  call fastcc void @btreeLockCarefully(ptr noundef nonnull %i.lq)
  br label %sqlite3BtreeEnter.exit.i127

sqlite3BtreeEnter.exit.i127:                      ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.ma = load ptr, ptr %i.ls, align 8, !tbaa !73
  %i.mb = getelementptr i8, ptr %i.ma, i64 288
  %.val.i128 = load ptr, ptr %i.mb, align 8, !tbaa !88 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i128, i64 32
  store i32 %spec.store.select1, ptr %i.mc, align 8, !tbaa !721
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 208), align 8, !tbaa !2051
  %i.me = getelementptr inbounds nuw i8, ptr %.val.i128, i64 72
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !89
  %i.mg = icmp sgt i32 %spec.store.select1, -1
  br i1 %i.mg, label %sqlite3PagerSetCachesize.exit.i, label %bb.bk

bb.bk:                                            ; preds = %sqlite3BtreeEnter.exit.i127
  %i.mh = sext i32 %spec.store.select1 to i64
  %i.mi = mul nsw i64 %i.mh, -1024
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.i128, i64 40
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !722
  %i.ml = getelementptr inbounds nuw i8, ptr %.val.i128, i64 44
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !723
  %i.mn = add nsw i32 %i.mm, %i.mk
  %i.mo = sext i32 %i.mn to i64
  %i.mp = sdiv i64 %i.mi, %i.mo
  %spec.store.select.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.mp, i64 1000000000)
  %i.mq = trunc i64 %spec.store.select.i.i.i.i to i32
  br label %sqlite3PagerSetCachesize.exit.i

sqlite3PagerSetCachesize.exit.i:                  ; preds = %bb.bk, %sqlite3BtreeEnter.exit.i127
  %.0.i.i.i.i = phi i32 [ %i.mq, %bb.bk ], [ %.0.i124, %sqlite3BtreeEnter.exit.i127 ]
  call void %i.md(ptr noundef %i.mf, i32 noundef %.0.i.i.i.i) #71, !inline_history !2933
  %i.mr = load i8, ptr %i.lt, align 1, !tbaa !592
  %.not.i4.i = icmp eq i8 %i.mr, 0
  br i1 %.not.i4.i, label %sqlite3BtreeSetCacheSize.exit, label %bb.bl

bb.bl:                                            ; preds = %sqlite3PagerSetCachesize.exit.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lq, i64 20 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !593
  %i.mu = add nsw i32 %i.mt, -1                   ; 2 uses
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !593
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %bb.bm, label %sqlite3BtreeSetCacheSize.exit

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %i.lq)
  br label %sqlite3BtreeSetCacheSize.exit

sqlite3BtreeSetCacheSize.exit:                    ; preds = %bb.bm, %bb.bl, %sqlite3PagerSetCachesize.exit.i, %sqlite3SetTextEncoding.exit
  %i.mw = trunc i32 %.sroa.5.0212 to i8           ; 2 uses
  %i.mx = load ptr, ptr %i.jc, align 8, !tbaa !101
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 112 ; 2 uses
  store i8 %i.mw, ptr %i.my, align 8, !tbaa !2685
  %i.mz = and i32 %.sroa.5.0212, 255
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %.thread, label %bb.bn

.thread:                                          ; preds = %sqlite3BtreeSetCacheSize.exit
  store i8 1, ptr %i.my, align 8, !tbaa !2685
  br label %bb.cb

bb.bn:                                            ; preds = %sqlite3BtreeSetCacheSize.exit
  %i.nb = icmp ugt i8 %i.mw, 4
  br i1 %i.nb, label %sqlite3DbMallocRaw.exit.i.i130, label %bb.cb

sqlite3DbMallocRaw.exit.i.i130:                   ; preds = %bb.bn
  %i.nc = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 24), !inline_history !608 ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i132, label %sqlite3DbStrDup.exit.i133, label %bb.bo

bb.bo:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nc, ptr noundef nonnull readonly align 1 dereferenceable(24) @.str.391, i64 24, i1 false)
  br label %sqlite3DbStrDup.exit.i133

sqlite3DbStrDup.exit.i133:                        ; preds = %bb.bo, %sqlite3DbMallocRaw.exit.i.i130
  %i.nd = load ptr, ptr %2, align 8, !tbaa !251   ; 12 uses
  %.not.i6.i135 = icmp eq ptr %i.nd, null
  br i1 %.not.i6.i135, label %sqlite3SetString.exit136, label %bb.bp

bb.bp:                                            ; preds = %sqlite3DbStrDup.exit.i133
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !100
  %i.ng = icmp ult ptr %i.nd, %i.nf
  br i1 %i.ng, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !174
  %.not22.i224 = icmp ult ptr %i.nd, %i.ni
  br i1 %.not22.i224, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !55
  store ptr %i.nk, ptr %i.nd, align 8, !tbaa !49
  store ptr %i.nd, ptr %i.nj, align 8, !tbaa !55
  br label %sqlite3SetString.exit136

bb.bs:                                            ; preds = %bb.bq
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !99
  %.not23.i225 = icmp ult ptr %i.nd, %i.nm
  br i1 %.not23.i225, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !53
  store ptr %i.no, ptr %i.nd, align 8, !tbaa !49
  store ptr %i.nd, ptr %i.nn, align 8, !tbaa !53
  br label %sqlite3SetString.exit136

bb.bu:                                            ; preds = %bb.bs, %bb.bp
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !98
  %.not24.i219 = icmp eq ptr %i.nq, null
  br i1 %.not24.i219, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call fastcc void @measureAllocationSize(ptr noundef nonnull %0, ptr noundef nonnull %i.nd)
  br label %sqlite3SetString.exit136

bb.bw:                                            ; preds = %bb.bu
  %i.nr = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i220 = icmp eq i32 %i.nr, 0
  br i1 %.not.i.i220, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ns = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i221, label %sqlite3_mutex_enter.exit.i.i222, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.nt(ptr noundef nonnull %i.ns) #71, !inline_history !546
  br label %sqlite3_mutex_enter.exit.i.i222

sqlite3_mutex_enter.exit.i.i222:                  ; preds = %bb.by, %bb.bx
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.nv = call i32 %i.nu(ptr noundef nonnull %i.nd) #71, !inline_history !547
  %i.nw = sext i32 %i.nv to i64
  %i.nx = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ny = sub nsw i64 %i.nx, %i.nw
  store i64 %i.ny, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.nz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.oa = add nsw i64 %i.nz, -1
  store i64 %i.oa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.ob(ptr noundef nonnull %i.nd) #71, !inline_history !548
  %i.oc = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i223 = icmp eq ptr %i.oc, null
  br i1 %.not.i4.i.i223, label %sqlite3SetString.exit136, label %bb.bz

bb.bz:                                            ; preds = %sqlite3_mutex_enter.exit.i.i222
  %i.od = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.od(ptr noundef nonnull %i.oc) #71, !inline_history !549
  br label %sqlite3SetString.exit136

bb.ca:                                            ; preds = %bb.bw
  %i.oe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.oe(ptr noundef nonnull %i.nd) #71, !inline_history !548
  br label %sqlite3SetString.exit136

sqlite3SetString.exit136:                         ; preds = %bb.ca, %bb.bz, %sqlite3_mutex_enter.exit.i.i222, %bb.bv, %bb.bt, %bb.br, %sqlite3DbStrDup.exit.i133
  store ptr %i.nc, ptr %2, align 8, !tbaa !251
  br label %bb.ct

bb.cb:                                            ; preds = %.thread, %bb.bn
  %i.of = icmp eq i32 %1, 0
  %i.og = icmp sgt i32 %.sroa.5.0212, 3
  %or.cond = and i1 %i.of, %i.og
  br i1 %or.cond, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.oh = load i64, ptr %i.iz, align 8, !tbaa !545
  %i.oi = and i64 %i.oh, -3
  store i64 %i.oi, ptr %i.iz, align 8, !tbaa !545
  br label %bb.cd

end_hunk_1
begin_hunk_2_@sqlite3Pragma:bb.a
  %.not.i.i1720 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i1720, label %sqlite3_mutex_enter.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.ff(ptr noundef nonnull %i.fe) #71, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.ap, %bb.ao
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.fh = call i32 %i.fg(ptr noundef nonnull %i.fb) #71, !inline_history !269
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.fk = sub nsw i64 %i.fj, %i.fi
  store i64 %i.fk, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.fl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.fm = add nsw i64 %i.fl, -1
  store i64 %i.fm, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.fn(ptr noundef nonnull %i.fb) #71, !inline_history !270
  %i.fo = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.fo, null
  br i1 %.not.i4.i, label %sqlite3DbFree.exit2047.thread, label %bb.aq

bb.aq:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.fp(ptr noundef nonnull %i.fo) #71, !inline_history !271
  br label %sqlite3DbFree.exit2047.thread

bb.ar:                                            ; preds = %bb.an
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.fq(ptr noundef nonnull %i.fb) #71, !inline_history !270
  br label %sqlite3DbFree.exit2047.thread

bb.as:                                            ; preds = %sqlite3AuthCheck.exit.thread
  %i.fr = load ptr, ptr %i.h, align 16, !tbaa !251 ; 2 uses
  %.not1665 = icmp eq ptr %i.fr, null
  br i1 %.not1665, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.fr)
  %i.fs = load ptr, ptr %i.h, align 16, !tbaa !251
  call void @sqlite3_free(ptr noundef %i.fs)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !313
  %i.fv = add nsw i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !313
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.es, ptr %i.fw, align 8, !tbaa !302
  br label %sqlite3DbFree.exit2047.thread

.split.i:                                         ; preds = %sqlite3AuthCheck.exit.thread, %sqlite3_stricmp.exit.thread18.loopexit.i
  %.027.i = phi i32 [ %.1.i, %sqlite3_stricmp.exit.thread18.loopexit.i ], [ 65, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.01426.i = phi i32 [ %.115.i, %sqlite3_stricmp.exit.thread18.loopexit.i ], [ 0, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %i.fx = add nuw nsw i32 %.01426.i, %.027.i
  %i.fy = lshr i32 %i.fx, 1                       ; 4 uses
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr @aPragmaName, i64 %i.fz ; 10 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !3297
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ax, %.split.i
  %.013.i.i.i = phi ptr [ %i.gn, %bb.ax ], [ %i.gb, %.split.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.gm, %bb.ax ], [ %i.cb, %.split.i ] ; 2 uses
  %i.gc = load i8, ptr %.0.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.gd = load i8, ptr %.013.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.ge = icmp eq i8 %i.gc, %i.gd
  br i1 %i.ge, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.preheader.i.i
  %i.gf = icmp eq i8 %i.gc, 0
  br i1 %i.gf, label %pragmaLocate.exit, label %bb.ax

bb.aw:                                            ; preds = %.preheader.i.i
  %i.gg = zext i8 %i.gc to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !227 ; 2 uses
  %i.gj = zext i8 %i.gd to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !227 ; 2 uses
  %.not.i.i.i1721 = icmp eq i8 %i.gi, %i.gl
  br i1 %.not.i.i.i1721, label %bb.ax, label %sqlite3_stricmp.exit.thread18.loopexit.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  br label %.preheader.i.i

sqlite3_stricmp.exit.thread18.loopexit.i:         ; preds = %bb.aw
  %i.go = icmp ult i8 %i.gi, %i.gl                ; 2 uses
  %i.gp = add nsw i32 %i.fy, -1
  %i.gq = add nuw nsw i32 %i.fy, 1
  %.115.i = select i1 %i.go, i32 %.01426.i, i32 %i.gq ; 2 uses
  %.1.i = select i1 %i.go, i32 %i.gp, i32 %.027.i ; 2 uses
  %.not.i1722 = icmp sgt i32 %.115.i, %.1.i
  br i1 %.not.i1722, label %sqlite3DbFree.exit2047, label %.split.i, !llvm.loop !3299

pragmaLocate.exit:                                ; preds = %bb.av
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 9
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !3300 ; 2 uses
  %i.gt = and i8 %i.gs, 1
  %.not1535 = icmp eq i8 %i.gt, 0
  br i1 %.not1535, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %pragmaLocate.exit
  %i.gu = call fastcc i32 @sqlite3ReadSchema(ptr noundef nonnull %0)
  %.not1536 = icmp eq i32 %i.gu, 0
  br i1 %.not1536, label %bb.az, label %sqlite3DbFree.exit2047

bb.az:                                            ; preds = %bb.ay, %pragmaLocate.exit
  %i.gv = zext i8 %i.gs to i32                    ; 2 uses
  %i.gw = and i32 %i.gv, 2
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gy = and i32 %i.gv, 4
  %i.gz = icmp eq i32 %i.gy, 0
  %i.ha = icmp eq ptr %.0, null
  %or.cond = select i1 %i.gz, i1 true, i1 %i.ha
  br i1 %or.cond, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @setPragmaResultColumnNames(ptr noundef %.0.i2052, ptr noundef %i.ga)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !3849
  switch i8 %i.hc, label %bb.uv [
    i8 13, label %bb.bd
    i8 31, label %bb.bg
    i8 33, label %bb.bm
    i8 27, label %bb.bq
    i8 26, label %bb.by
    i8 23, label %bb.ci
    i8 24, label %bb.da
    i8 3, label %bb.dd
    i8 19, label %bb.dh
    i8 6, label %bb.dm
    i8 7, label %bb.dp
    i8 28, label %bb.dw
    i8 39, label %bb.ej
    i8 40, label %bb.em
    i8 36, label %bb.fa
    i8 4, label %bb.fg
    i8 37, label %bb.fp
    i8 38, label %bb.gj
    i8 20, label %bb.hp
    i8 21, label %bb.ib
    i8 12, label %bb.if
    i8 9, label %bb.ik
    i8 17, label %bb.il
    i8 29, label %bb.io
    i8 32, label %.preheader2164
    i8 16, label %bb.ip
    i8 15, label %bb.iw
    i8 8, label %bb.kd
    i8 22, label %bb.kf
    i8 14, label %bb.rg
    i8 2, label %bb.si
    i8 10, label %bb.sr
    i8 43, label %bb.sv
    i8 42, label %bb.ti
    i8 34, label %bb.tn
    i8 30, label %bb.to
    i8 35, label %bb.uy
    i8 18, label %bb.vc
    i8 41, label %bb.vi
    i8 1, label %bb.vl
  ]

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @sqlite3VdbeUsesBtree(ptr noundef nonnull %.0.i2052, i32 noundef %.0.i1701)
  %.not1663 = icmp eq ptr %.0, null
  br i1 %.not1663, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hd = load i32, ptr %i.bf, align 4, !tbaa !950
  %i.he = add nsw i32 %i.hd, 2
  store i32 %i.he, ptr %i.bf, align 4, !tbaa !950
  %i.hf = call fastcc ptr @sqlite3VdbeAddOpList(ptr noundef nonnull %.0.i2052, i32 noundef 9, ptr noundef nonnull @sqlite3Pragma.getCacheSize) ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 %.0.i1701, ptr %i.hg, align 4, !tbaa !584
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 28
  store i32 %.0.i1701, ptr %i.hh, align 4, !tbaa !584
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 148
  store i32 -2000, ptr %i.hi, align 4, !tbaa !584
  br label %sqlite3DbFree.exit2047.thread2132

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #71
  store i32 0, ptr %i.g, align 4, !tbaa !5
  %i.hj = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %.0, ptr noundef %i.g) ; 0 uses
  %i.hk = load i32, ptr %i.g, align 4, !tbaa !5   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #71
  %spec.select.i = call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.hk)
  %.narrow.i = icmp sgt i32 %i.hk, 0
  %.0.i1723 = select i1 %.narrow.i, i32 %i.hk, i32 %spec.select.i ; 3 uses
  call fastcc void @sqlite3BeginWriteOperation(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0.i1701)
  %i.hl = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2052, i32 noundef 101, i32 noundef %.0.i1701, i32 noundef 3, i32 noundef %.0.i1723) ; 0 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !101
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 116
  store i32 %.0.i1723, ptr %i.ho, align 4, !tbaa !2942
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !62
  call fastcc void @sqlite3BtreeSetCacheSize(ptr noundef %i.hq, i32 noundef %.0.i1723)
  br label %.thread3046

bb.bg:                                            ; preds = %bb.bc
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !62 ; 3 uses
  %.not1661 = icmp eq ptr %.0, null
  br i1 %.not1661, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %.not1662 = icmp eq ptr %i.hs, null
  br i1 %.not1662, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ht = getelementptr i8, ptr %i.hs, i64 8
  %.val1691 = load ptr, ptr %i.ht, align 8, !tbaa !67
  %i.hu = getelementptr i8, ptr %.val1691, i64 52
  %.val1691.val = load i32, ptr %i.hu, align 4, !tbaa !131
  %i.hv = sext i32 %.val1691.val to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.hw = phi i64 [ %i.hv, %bb.bi ], [ 0, %bb.bh ]
  call fastcc void @returnSingleInt(ptr noundef %.0.i2052, i64 noundef %i.hw)
  br label %sqlite3DbFree.exit2047.thread2132

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #71
  store i32 0, ptr %i.f, align 4, !tbaa !5
  %i.hx = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %.0, ptr noundef %i.f) ; 0 uses
  %i.hy = load i32, ptr %i.f, align 4, !tbaa !5   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #71
  %i.hz = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !974
  %i.ia = call fastcc i32 @sqlite3BtreeSetPageSize(ptr noundef %i.hs, i32 noundef %i.hy, i32 noundef 0, i32 noundef 0)
  %i.ib = icmp eq i32 %i.ia, 7
  br i1 %i.ib, label %bb.bl, label %.thread3046

bb.bl:                                            ; preds = %bb.bk
  call fastcc void @sqlite3OomFault(ptr noundef nonnull %i.aa)
  br label %.thread3046

bb.bm:                                            ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !62
  %.not1660 = icmp eq ptr %.0, null
  br i1 %.not1660, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bm, %bb.bp
  %.013.i.i = phi ptr [ %i.ip, %bb.bp ], [ @.str.981, %bb.bm ] ; 2 uses
  %.0.i.i = phi ptr [ %i.io, %bb.bp ], [ %.0, %bb.bm ] ; 2 uses
  %i.ie = load i8, ptr %.0.i.i, align 1, !tbaa !227 ; 3 uses
  %i.if = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.ig = icmp eq i8 %i.ie, %i.if
  br i1 %i.ig, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.preheader.i
  %i.ih = icmp eq i8 %i.ie, 0
  br i1 %i.ih, label %sqlite3_stricmp.exit.thread, label %bb.bp

bb.bo:                                            ; preds = %.preheader.i
  %i.ii = zext i8 %i.ie to i64
  %i.ij = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !227
  %i.il = zext i8 %i.if to i64
  %i.im = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !227
  %.not.i.i1724 = icmp eq i8 %i.ik, %i.in
  br i1 %.not.i.i1724, label %bb.bp, label %sqlite3_stricmp.exit

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %.preheader.i

sqlite3_stricmp.exit:                             ; preds = %bb.bo
  %i.iq = call fastcc zeroext i8 @getSafetyLevel(ptr noundef nonnull readonly %.0, i32 noundef 1, i8 noundef zeroext 0)
  %i.ir = icmp ne i8 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  br label %sqlite3_stricmp.exit.thread

sqlite3_stricmp.exit.thread:                      ; preds = %bb.bn, %sqlite3_stricmp.exit
  %.01376 = phi i32 [ %i.is, %sqlite3_stricmp.exit ], [ 2, %bb.bn ] ; 4 uses
  %i.it = load i32, ptr %i.bh, align 8, !tbaa !376
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %.preheader, label %.thread

.preheader:                                       ; preds = %sqlite3_stricmp.exit.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !60
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph2460, label %.thread

.lr.ph2460:                                       ; preds = %.preheader, %.lr.ph2460
  %indvars.iv2637 = phi i64 [ %indvars.iv.next2638, %.lr.ph2460 ], [ 0, %.preheader ] ; 2 uses
  %i.iy = load ptr, ptr %i.bq, align 8, !tbaa !61
  %i.iz = getelementptr inbounds nuw [32 x i8], ptr %i.iy, i64 %indvars.iv2637
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !62
  %i.jc = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.jb, i32 noundef %.01376) ; 0 uses
  %indvars.iv.next2638 = add nuw nsw i64 %indvars.iv2637, 1 ; 2 uses
  %i.jd = load i32, ptr %i.iv, align 8, !tbaa !60
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next2638, %i.je
  br i1 %i.jf, label %.lr.ph2460, label %.thread, !llvm.loop !3850

.thread:                                          ; preds = %.lr.ph2460, %.preheader, %bb.bm, %sqlite3_stricmp.exit.thread
  %.013762065 = phi i32 [ %.01376, %sqlite3_stricmp.exit.thread ], [ -1, %bb.bm ], [ %.01376, %.preheader ], [ %.01376, %.lr.ph2460 ]
  %i.jg = call fastcc i32 @sqlite3BtreeSecureDelete(ptr noundef %i.id, i32 noundef %.013762065)
  %i.jh = zext nneg i32 %i.jg to i64
  call fastcc void @returnSingleInt(ptr noundef %.0.i2052, i64 noundef %i.jh)
  br label %sqlite3DbFree.exit2047

bb.bq:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #71
  store i64 0, ptr %i.i, align 8, !tbaa !18
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.0.i1701)
  %i.ji = load i32, ptr %i.bf, align 4, !tbaa !950
  %i.jj = add nsw i32 %i.ji, 1                    ; 4 uses
  store i32 %i.jj, ptr %i.bf, align 4, !tbaa !950
  %i.jk = load i8, ptr %i.cb, align 1, !tbaa !227
  %i.jl = and i8 %i.jk, -33
  %i.jm = icmp eq i8 %i.jl, 80
  br i1 %i.jm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2052, i32 noundef 179, i32 noundef %.0.i1701, i32 noundef %i.jj) ; 0 uses
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %.not1659 = icmp eq ptr %.0, null
  br i1 %.not1659, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jo = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %.0, ptr noundef %i.i)
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.jq = load i64, ptr %i.i, align 8, !tbaa !18  ; 2 uses
  %i.jr = icmp slt i64 %i.jq, 0
  br i1 %i.jr, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %spec.select = call i64 @llvm.umin.i64(i64 %i.jq, i64 4294967294)
  %i.js = trunc nuw i64 %spec.select to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs, %bb.bt, %bb.bu
  %i.jt = phi i32 [ 0, %bb.bs ], [ 0, %bb.bu ], [ %i.js, %bb.bv ], [ 0, %bb.bt ]
  %i.ju = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i2052, i32 noundef 180, i32 noundef %.0.i1701, i32 noundef %i.jj, i32 noundef %i.jt) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.br
  %i.jv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i2052, i32 noundef 85, i32 noundef %i.jj, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #71
  br label %sqlite3DbFree.exit2047

bb.by:                                            ; preds = %bb.bc
  %i.jw = call fastcc i32 @getLockingMode(ptr noundef %.0) ; 6 uses
  %i.jx = load i32, ptr %i.bh, align 8, !tbaa !376
  %i.jy = icmp eq i32 %i.jx, 0                    ; 2 uses
  %i.jz = icmp eq i32 %i.jw, -1
  %or.cond5 = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond5, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ka = getelementptr inbounds nuw i8, ptr %i.aa, i64 105
  br label %bb.ch

bb.ca:                                            ; preds = %bb.by
  br i1 %i.jy, label %.preheader2150, label %bb.ce

.preheader2150:                                   ; preds = %bb.ca
  %i.kb = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !60 ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 2
  br i1 %i.kd, label %.lr.ph2457, label %.preheader2150.._crit_edge2458_crit_edge

.preheader2150.._crit_edge2458_crit_edge:         ; preds = %.preheader2150
  %.pre2687 = trunc nsw i32 %i.jw to i8
  br label %._crit_edge2458

.lr.ph2457:                                       ; preds = %.preheader2150
  %i.ke = load ptr, ptr %i.bq, align 8, !tbaa !61
  %i.kf = icmp sgt i32 %i.jw, -1
  %i.kg = trunc nsw i32 %i.jw to i8               ; 2 uses
  %wide.trip.count2635 = zext nneg i32 %i.kc to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph2457, %sqlite3PagerLockingMode.exit
  %indvars.iv2632 = phi i64 [ 2, %.lr.ph2457 ], [ %indvars.iv.next2633, %sqlite3PagerLockingMode.exit ] ; 2 uses
end_hunk_2
