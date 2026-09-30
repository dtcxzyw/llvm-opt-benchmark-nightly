Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dovi_rpudec?download=true
inline.NumInlined: 158
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ff_dovi_rpu_parse:bb.a
  %i.ni = icmp eq i32 %i.mx, 0
  %or.cond39 = select i1 %i.ni, i1 true, i1 %i.dm
  br i1 %or.cond39, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nj = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nj, i32 noundef 16, ptr noundef nonnull @.str.17) #7
  br label %.thread670

bb.av:                                            ; preds = %bb.at
  %or.cond41 = select i1 %i.mi, i1 true, i1 %i.dm
  br i1 %or.cond41, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nk = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nk, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef 1) #7
  br label %.thread670

bb.ax:                                            ; preds = %bb.av, %bb.aq
  %.not606 = icmp eq i32 %i.mx, 0
  %i.nl = lshr i32 %spec.select.i652, 3
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 1, !tbaa !32
  %i.np = tail call i32 @llvm.bswap.i32(i32 %i.no)
  %i.nq = and i32 %spec.select.i652, 7
  %i.nr = shl i32 %i.np, %i.nq
  %i.ns = lshr i32 %i.nr, 23
  %i.nt = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !32
  %i.nw = zext i8 %i.nv to i32
  %i.nx = add i32 %spec.select.i652, %i.nw
  %..i654 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.nx) ; 4 uses
  store i32 %..i654, ptr %i.ds, align 8, !tbaa !34
  %i.ny = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.nt
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !32  ; 7 uses
  br i1 %.not606, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oa = zext i8 %i.nz to i32                    ; 2 uses
  %i.ob = icmp ugt i8 %i.nz, 15
  br i1 %i.ob, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.oc = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.oc, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.oa) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.ba:                                            ; preds = %bb.ay
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.oe = zext nneg i8 %i.nz to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !76
  %.not613 = icmp eq ptr %i.og, null
  %spec.store.select = select i1 %.not613, i32 0, i32 %i.oa ; 2 uses
  %i.oh = zext nneg i32 %spec.store.select to i64
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %i.oh
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !76 ; 2 uses
  %.not614 = icmp eq ptr %i.oj, null
  br i1 %.not614, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ok = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ok, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %spec.store.select) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.bc:                                            ; preds = %bb.ba
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.oj, ptr %i.ol, align 8, !tbaa !18
  br label %.thread728

bb.bd:                                            ; preds = %bb.ax
  %i.om = icmp ugt i8 %i.nz, 15
  br i1 %i.om, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.on = zext i8 %i.nz to i32
  %i.oo = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.oo, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.on) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.bf:                                            ; preds = %bb.bd
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.oq = zext nneg i8 %i.nz to i64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oq ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !76 ; 2 uses
  %.not607 = icmp eq ptr %i.os, null
  br i1 %.not607, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ot = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 196, 5145) 5144, i32 noundef 0, ptr null, ptr noundef null) #7 ; 3 uses
  store ptr %i.ot, ptr %i.or, align 8, !tbaa !76
  %.not608 = icmp eq ptr %i.ot, null
  br i1 %.not608, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.ou = phi ptr [ %i.ot, %bb.bg ], [ %i.os, %bb.bf ] ; 29 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !18
  store i8 %i.nz, ptr %i.ou, align 8, !tbaa !78
  %i.ow = lshr i32 %..i654, 3
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 1, !tbaa !32
  %i.pa = tail call i32 @llvm.bswap.i32(i32 %i.oz)
  %i.pb = and i32 %..i654, 7
  %i.pc = shl i32 %i.pa, %i.pb
  %i.pd = lshr i32 %i.pc, 23
  %i.pe = zext nneg i32 %i.pd to i64              ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !32
  %i.ph = zext i8 %i.pg to i32
  %i.pi = add i32 %..i654, %i.ph
  %..i655 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.pi) ; 4 uses
  store i32 %..i655, ptr %i.ds, align 8, !tbaa !34
  %i.pj = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.pe
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !32
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !79
  %i.pm = lshr i32 %..i655, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 1, !tbaa !32
  %i.pq = tail call i32 @llvm.bswap.i32(i32 %i.pp)
  %i.pr = and i32 %..i655, 7
  %i.ps = shl i32 %i.pq, %i.pr
  %i.pt = lshr i32 %i.ps, 23
  %i.pu = zext nneg i32 %i.pt to i64              ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !32
  %i.px = zext i8 %i.pw to i32
  %i.py = add i32 %..i655, %i.px
  %..i656 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.py) ; 4 uses
  store i32 %..i656, ptr %i.ds, align 8, !tbaa !34
  %i.pz = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.pu
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !32
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i8 %i.qa, ptr %i.qb, align 2, !tbaa !80
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.qd = lshr i32 %..i656, 3
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 1, !tbaa !32
  %i.qh = tail call i32 @llvm.bswap.i32(i32 %i.qg)
  %i.qi = and i32 %..i656, 7
  %i.qj = shl i32 %i.qh, %i.qi
  %i.qk = lshr i32 %i.qj, 23
  %i.ql = zext nneg i32 %i.qk to i64              ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !32
  %i.qo = zext i8 %i.qn to i32
  %i.qp = add i32 %..i656, %i.qo
  %..i657 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.qp) ; 2 uses
  store i32 %..i657, ptr %i.ds, align 8, !tbaa !34
  %i.qq = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ql
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !32  ; 3 uses
  %i.qs = icmp ult i8 %i.qr, 8
  br i1 %i.qs, label %bb.bj, label %.thread689

.thread689:                                       ; preds = %bb.bo, %bb.bl, %bb.bi
  %.lcssa792 = phi i8 [ %i.qr, %bb.bi ], [ %i.sc, %bb.bl ], [ %i.tj, %bb.bo ]
  %i.qt = zext i8 %.lcssa792 to i32
  %i.qu = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qu, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %i.qt) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.bj:                                            ; preds = %bb.bi
  %i.qv = add nuw nsw i8 %i.qr, 2                 ; 2 uses
  store i8 %i.qv, ptr %i.qc, align 8, !tbaa !82
  %i.qw = load i8, ptr %i.js, align 1, !tbaa !68
  %i.qx = zext i8 %i.qw to i32                    ; 6 uses
  %i.qy = sub nsw i32 32, %i.qx                   ; 5 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ou, i64 10
  %wide.trip.count799 = zext nneg i8 %i.qv to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bk
  %indvars.iv796 = phi i64 [ 0, %bb.bj ], [ %indvars.iv.next797, %bb.bk ] ; 2 uses
  %.0544761 = phi i32 [ 0, %bb.bj ], [ %i.rl, %bb.bk ]
  %i.ra = phi i32 [ %..i657, %bb.bj ], [ %i.rk, %bb.bk ] ; 3 uses
  %i.rb = lshr i32 %i.ra, 3
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 1, !tbaa !32
  %i.rf = tail call i32 @llvm.bswap.i32(i32 %i.re)
  %i.rg = and i32 %i.ra, 7
  %i.rh = shl i32 %i.rf, %i.rg
  %i.ri = lshr i32 %i.rh, %i.qy
  %i.rj = add i32 %i.ra, %i.qx
  %i.rk = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.rj) ; 5 uses
  store i32 %i.rk, ptr %i.ds, align 8, !tbaa !34
  %i.rl = add i32 %i.ri, %.0544761                ; 2 uses
  %5 = tail call i32 @llvm.smax.i32(i32 %i.rl, i32 0)
  %.0.i632745 = tail call i32 @llvm.umin.i32(i32 %5, i32 65535)
  %i.rm = trunc nuw i32 %.0.i632745 to i16
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.qz, i64 %indvars.iv796
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !83
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 1 ; 2 uses
  %exitcond800.not = icmp eq i64 %indvars.iv.next797, %wide.trip.count799
  br i1 %exitcond800.not, label %bb.bl, label %bb.bk, !llvm.loop !52

bb.bl:                                            ; preds = %bb.bk
  %i.ro = lshr i32 %i.rk, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 1, !tbaa !32
  %i.rs = tail call i32 @llvm.bswap.i32(i32 %i.rr)
  %i.rt = and i32 %i.rk, 7
  %i.ru = shl i32 %i.rs, %i.rt
  %i.rv = lshr i32 %i.ru, 23
  %i.rw = zext nneg i32 %i.rv to i64              ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !32
  %i.rz = zext i8 %i.ry to i32
  %i.sa = add i32 %i.rk, %i.rz
  %..i657.1 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.sa) ; 2 uses
  store i32 %..i657.1, ptr %i.ds, align 8, !tbaa !34
  %i.sb = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.rw
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !32  ; 3 uses
  %i.sd = icmp ult i8 %i.sc, 8
  br i1 %i.sd, label %bb.bm, label %.thread689

bb.bm:                                            ; preds = %bb.bl
  %i.se = getelementptr inbounds nuw i8, ptr %i.ou, i64 1680
  %i.sf = add nuw nsw i8 %i.sc, 2                 ; 2 uses
  store i8 %i.sf, ptr %i.se, align 8, !tbaa !82
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ou, i64 1682
  %wide.trip.count799.1 = zext nneg i8 %i.sf to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %indvars.iv796.1 = phi i64 [ 0, %bb.bm ], [ %indvars.iv.next797.1, %bb.bn ] ; 2 uses
  %.0544761.1 = phi i32 [ 0, %bb.bm ], [ %i.ss, %bb.bn ]
  %i.sh = phi i32 [ %..i657.1, %bb.bm ], [ %i.sr, %bb.bn ] ; 3 uses
  %i.si = lshr i32 %i.sh, 3
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 1, !tbaa !32
  %i.sm = tail call i32 @llvm.bswap.i32(i32 %i.sl)
  %i.sn = and i32 %i.sh, 7
  %i.so = shl i32 %i.sm, %i.sn
  %i.sp = lshr i32 %i.so, %i.qy
  %i.sq = add i32 %i.sh, %i.qx
  %i.sr = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.sq) ; 5 uses
  store i32 %i.sr, ptr %i.ds, align 8, !tbaa !34
  %i.ss = add i32 %i.sp, %.0544761.1              ; 2 uses
  %6 = tail call i32 @llvm.smax.i32(i32 %i.ss, i32 0)
  %.0.i632745.1 = tail call i32 @llvm.umin.i32(i32 %6, i32 65535)
  %i.st = trunc nuw i32 %.0.i632745.1 to i16
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.sg, i64 %indvars.iv796.1
  store i16 %i.st, ptr %i.su, align 2, !tbaa !83
  %indvars.iv.next797.1 = add nuw nsw i64 %indvars.iv796.1, 1 ; 2 uses
  %exitcond800.1.not = icmp eq i64 %indvars.iv.next797.1, %wide.trip.count799.1
  br i1 %exitcond800.1.not, label %bb.bo, label %bb.bn, !llvm.loop !52

bb.bo:                                            ; preds = %bb.bn
  %i.sv = lshr i32 %i.sr, 3
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 1, !tbaa !32
  %i.sz = tail call i32 @llvm.bswap.i32(i32 %i.sy)
  %i.ta = and i32 %i.sr, 7
  %i.tb = shl i32 %i.sz, %i.ta
  %i.tc = lshr i32 %i.tb, 23
  %i.td = zext nneg i32 %i.tc to i64              ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !32
  %i.tg = zext i8 %i.tf to i32
  %i.th = add i32 %i.sr, %i.tg
  %..i657.2 = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.th) ; 2 uses
  store i32 %..i657.2, ptr %i.ds, align 8, !tbaa !34
  %i.ti = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.td
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !32  ; 3 uses
  %i.tk = icmp ult i8 %i.tj, 8
  br i1 %i.tk, label %bb.bp, label %.thread689

bb.bp:                                            ; preds = %bb.bo
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ou, i64 3352
  %i.tm = add nuw nsw i8 %i.tj, 2                 ; 2 uses
  store i8 %i.tm, ptr %i.tl, align 8, !tbaa !82
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ou, i64 3354
  %wide.trip.count799.2 = zext nneg i8 %i.tm to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv796.2 = phi i64 [ 0, %bb.bp ], [ %indvars.iv.next797.2, %bb.bq ] ; 2 uses
  %.0544761.2 = phi i32 [ 0, %bb.bp ], [ %i.tz, %bb.bq ]
  %i.to = phi i32 [ %..i657.2, %bb.bp ], [ %i.ty, %bb.bq ] ; 3 uses
  %i.tp = lshr i32 %i.to, 3
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 1, !tbaa !32
  %i.tt = tail call i32 @llvm.bswap.i32(i32 %i.ts)
  %i.tu = and i32 %i.to, 7
  %i.tv = shl i32 %i.tt, %i.tu
  %i.tw = lshr i32 %i.tv, %i.qy
  %i.tx = add i32 %i.to, %i.qx
  %i.ty = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.tx) ; 5 uses
  store i32 %i.ty, ptr %i.ds, align 8, !tbaa !34
  %i.tz = add i32 %i.tw, %.0544761.2              ; 2 uses
  %7 = tail call i32 @llvm.smax.i32(i32 %i.tz, i32 0)
  %.0.i632745.2 = tail call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %i.ua = trunc nuw i32 %.0.i632745.2 to i16
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.tn, i64 %indvars.iv796.2
  store i16 %i.ua, ptr %i.ub, align 2, !tbaa !83
  %indvars.iv.next797.2 = add nuw nsw i64 %indvars.iv796.2, 1 ; 2 uses
  %exitcond800.2.not = icmp eq i64 %indvars.iv.next797.2, %wide.trip.count799.2
  br i1 %exitcond800.2.not, label %.thread686, label %bb.bq, !llvm.loop !52

.thread686:                                       ; preds = %bb.bq
  br i1 %.not603, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.thread686
  %i.uc = lshr i32 %i.ty, 3
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 1, !tbaa !32
  %i.ug = tail call i32 @llvm.bswap.i32(i32 %i.uf)
  %i.uh = and i32 %i.ty, 7
  %i.ui = shl i32 %i.ug, %i.uh
  %i.uj = lshr i32 %i.ui, 29                      ; 3 uses
  %i.uk = add i32 %i.ty, 3
  %i.ul = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.uk) ; 4 uses
  store i32 %i.ul, ptr %i.ds, align 8, !tbaa !34
  %i.um = getelementptr inbounds nuw i8, ptr %i.ou, i64 5024
  store i32 %i.uj, ptr %i.um, align 8, !tbaa !84
  %i.un = getelementptr inbounds nuw i8, ptr %i.ou, i64 5136
  %i.uo = lshr i32 %i.ul, 3
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 1, !tbaa !32
  %i.us = tail call i32 @llvm.bswap.i32(i32 %i.ur)
  %i.ut = and i32 %i.ul, 7
  %i.uu = shl i32 %i.us, %i.ut
  %i.uv = lshr i32 %i.uu, %i.qy                   ; 2 uses
  %i.uw = add i32 %i.ul, %i.qx
  %i.ux = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.uw) ; 4 uses
  store i32 %i.ux, ptr %i.ds, align 8, !tbaa !34
  %8 = tail call i32 @llvm.smax.i32(i32 %i.uv, i32 0)
  %.0.i746 = tail call i32 @llvm.umin.i32(i32 %8, i32 65535)
  %i.uy = trunc nuw i32 %.0.i746 to i16
  store i16 %i.uy, ptr %i.un, align 8, !tbaa !83
  %i.uz = lshr i32 %i.ux, 3
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.va
  %i.vc = load i32, ptr %i.vb, align 1, !tbaa !32
  %i.vd = tail call i32 @llvm.bswap.i32(i32 %i.vc)
  %i.ve = and i32 %i.ux, 7
  %i.vf = shl i32 %i.vd, %i.ve
  %i.vg = lshr i32 %i.vf, %i.qy
  %i.vh = add i32 %i.ux, %i.qx
  %i.vi = tail call i32 @llvm.umin.i32(i32 %i.im, i32 %i.vh)
  store i32 %i.vi, ptr %i.ds, align 8, !tbaa !34
  %i.vj = add i32 %i.vg, %i.uv
  %9 = tail call i32 @llvm.smax.i32(i32 %i.vj, i32 0)
  %.0.i746.1 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %i.vk = trunc nuw i32 %.0.i746.1 to i16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ou, i64 5138
  store i16 %i.vk, ptr %i.vl, align 2, !tbaa !83
  %.not609 = icmp eq i32 %i.uj, 0
  br i1 %.not609, label %.thread691, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vm = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vm, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.uj) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.bt:                                            ; preds = %.thread686
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ou, i64 5024
  store i32 -1, ptr %i.vn, align 8, !tbaa !84
  br label %.thread691

.thread691:                                       ; preds = %bb.br, %bb.bt
  %i.vo = call fastcc i32 @get_ue_golomb_long(ptr noundef %4)
  %i.vp = add i32 %i.vo, 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ou, i64 5028 ; 2 uses
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !85
  %i.vr = call fastcc i32 @get_ue_golomb_long(ptr noundef %4) ; 2 uses
  %i.vs = add i32 %i.vr, 1                        ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ou, i64 5032
  store i32 %i.vs, ptr %i.vt, align 8, !tbaa !86
  %i.vu = load i32, ptr %i.vq, align 4, !tbaa !85 ; 2 uses
  %i.vv = add i32 %i.vu, -65536
  %or.cond626 = icmp ult i32 %i.vv, -65535
  br i1 %or.cond626, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.thread691
  %i.vw = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vw, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %i.vu) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

bb.bv:                                            ; preds = %.thread691
  %or.cond627 = icmp ugt i32 %i.vr, 65534
  br i1 %or.cond627, label %bb.bw, label %.preheader750.a

bb.bw:                                            ; preds = %bb.bv
  %i.vx = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vx, i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %i.vs) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread670

.preheader750.a:                                  ; preds = %bb.bv, %._crit_edge775
  %indvars.iv821 = phi i64 [ %indvars.iv.next822, %._crit_edge775 ], [ 0, %bb.bv ] ; 2 uses
  %i.vy = getelementptr inbounds nuw [1672 x i8], ptr %i.qc, i64 %indvars.iv821 ; 8 uses
  %i.vz = load i8, ptr %i.vy, align 8, !tbaa !82
  %i.wa = icmp ugt i8 %i.vz, 1
  br i1 %i.wa, label %.lr.ph774, label %._crit_edge775

.lr.ph774:                                        ; preds = %.preheader750.a
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 20
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 52
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 64
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 256
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vy, i64 264
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vy, i64 328
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph774, %.loopexit
  %indvars.iv818 = phi i64 [ 0, %.lr.ph774 ], [ %indvars.iv.next819, %.loopexit ] ; 7 uses
  %i.wh = load i32, ptr %i.ds, align 8, !tbaa !34 ; 3 uses
  %i.wi = load i32, ptr %i.dr, align 8, !tbaa !31
  %i.wj = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.wk = lshr i32 %i.wh, 3
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 1, !tbaa !32
  %i.wo = tail call i32 @llvm.bswap.i32(i32 %i.wn)
  %i.wp = and i32 %i.wh, 7
  %i.wq = shl i32 %i.wo, %i.wp
  %i.wr = lshr i32 %i.wq, 23
  %i.ws = zext nneg i32 %i.wr to i64              ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !32
  %i.wv = zext i8 %i.wu to i32
  %i.ww = add i32 %i.wh, %i.wv
  %..i658 = tail call i32 @llvm.umin.i32(i32 %i.wi, i32 %i.ww)
  store i32 %..i658, ptr %i.ds, align 8, !tbaa !34
  %i.wx = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.ws
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !32  ; 3 uses
  %i.wz = zext i8 %i.wy to i32                    ; 2 uses
  %i.xa = icmp ugt i8 %i.wy, 1
  br i1 %i.xa, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.xb = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xb, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %i.wz) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef %0) #7
  br label %.thread670

bb.bz:                                            ; preds = %bb.bx
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %indvars.iv818
  store i32 %i.wz, ptr %i.xc, align 4, !tbaa !37
  %trunc610 = trunc nuw i8 %i.wy to i1
  %i.xd = load i32, ptr %i.ds, align 8, !tbaa !34 ; 4 uses
  %i.xe = load i32, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %i.xf = lshr i32 %i.xd, 3
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 1, !tbaa !32
  %i.xj = tail call i32 @llvm.bswap.i32(i32 %i.xi)
  %i.xk = and i32 %i.xd, 7
  %i.xl = shl i32 %i.xj, %i.xk                    ; 2 uses
  br i1 %trunc610, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xm = lshr i32 %i.xl, 23
  %i.xn = zext nneg i32 %i.xm to i64              ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !32
  %i.xq = zext i8 %i.xp to i32
  %i.xr = add i32 %i.xd, %i.xq
  %..i659 = tail call i32 @llvm.umin.i32(i32 %i.xe, i32 %i.xr)
  store i32 %..i659, ptr %i.ds, align 8, !tbaa !34
  %i.xs = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_vlc_code, i64 %i.xn
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !32  ; 4 uses
  %i.xu = icmp ugt i8 %i.xt, 1
  br i1 %i.xu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.xv = zext i8 %i.xt to i32
  %i.xw = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xw, i32 noundef 16, ptr noundef nonnull @.str.27, i32 noundef %i.xv) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef %0) #7
  br label %.thread670

bb.cc:                                            ; preds = %bb.ca
  %i.xx = add nuw nsw i8 %i.xt, 1
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wc, i64 %indvars.iv818 ; 2 uses
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !32
  %i.xz = icmp eq i8 %i.xt, 0
  br i1 %i.xz, label %bb.cd, label %.thread694

bb.cd:                                            ; preds = %bb.cc
  %i.ya = load i32, ptr %i.ds, align 8, !tbaa !34 ; 4 uses
  %i.yb = load ptr, ptr %4, align 8, !tbaa !30
  %i.yc = lshr i32 %i.ya, 3
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !32
  %i.yg = load i32, ptr %i.dr, align 8, !tbaa !31
  %i.yh = icmp slt i32 %i.ya, %i.yg
  %i.yi = zext i1 %i.yh to i32
  %spec.select.i660 = add i32 %i.ya, %i.yi
  %i.yj = zext i8 %i.yf to i32
  %i.yk = and i32 %i.ya, 7
  store i32 %spec.select.i660, ptr %i.ds, align 8, !tbaa !34
  %i.yl = lshr exact i32 128, %i.yk
  %i.ym = and i32 %i.yl, %i.yj
  %.not611 = icmp eq i32 %i.ym, 0
  br i1 %.not611, label %.thread694, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.yn = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.yn, ptr noundef nonnull @.str.28) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef %0) #7
  br label %.thread670

.thread694:                                       ; preds = %bb.cd, %bb.cc
  %i.yo = getelementptr inbounds nuw [24 x i8], ptr %i.wd, i64 %indvars.iv818
  br label %bb.cf

bb.cf:                                            ; preds = %.thread694, %bb.cf
  %indvars.iv808 = phi i64 [ 0, %.thread694 ], [ %indvars.iv.next809, %bb.cf ] ; 3 uses
  %i.yp = call fastcc i64 @get_se_coef(ptr noundef %4, ptr noundef nonnull %i.a)
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yo, i64 %indvars.iv808
  store i64 %i.yp, ptr %i.yq, align 8, !tbaa !28
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1
  %i.yr = load i8, ptr %i.xy, align 1, !tbaa !32
  %i.ys = zext i8 %i.yr to i64
  %.not612.not = icmp samesign ult i64 %indvars.iv808, %i.ys
  br i1 %.not612.not, label %bb.cf, label %.loopexit, !llvm.loop !53

bb.cg:                                            ; preds = %bb.bz
  %i.yt = lshr i32 %i.xl, 30                      ; 2 uses
  %i.yu = add i32 %i.xd, 2
  %i.yv = tail call i32 @llvm.umin.i32(i32 %i.xe, i32 %i.yu)
  store i32 %i.yv, ptr %i.ds, align 8, !tbaa !34
  %or.cond53.not = icmp eq i32 %i.yt, 3
  br i1 %or.cond53.not, label %.thread701, label %bb.ch

.thread701:                                       ; preds = %bb.cg
  %i.yw = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yw, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef 3) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef %0) #7
  br label %.thread670

bb.ch:                                            ; preds = %bb.cg
  %i.yx = trunc nuw nsw i32 %i.yt to i8
  %i.yy = add nuw nsw i8 %i.yx, 1
  %i.yz = getelementptr inbounds nuw i8, ptr %i.we, i64 %indvars.iv818 ; 3 uses
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !32
  %i.za = call fastcc i64 @get_se_coef(ptr noundef %4, ptr noundef nonnull %i.a)
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %indvars.iv818
  store i64 %i.za, ptr %i.zb, align 8, !tbaa !28
  %i.zc = load i8, ptr %i.yz, align 1, !tbaa !32
  %.not782 = icmp eq i8 %i.zc, 0
  br i1 %.not782, label %.loopexit, label %.preheader748.lr.ph
end_hunk_0
begin_hunk_1_@parse_ext_blocks:bb.a
  %i.aog = add i32 %i.anx, 16
  %i.aoh = tail call i32 @llvm.umin.i32(i32 %i.ann, i32 %i.aog)
  store i32 %i.aoh, ptr %i.c, align 8, !tbaa !34
  %.sroa.0.0.insert.ext.i4.i129.i = zext i32 %i.aof to i64
  %.sroa.0.0.insert.insert.i5.i130.i = or disjoint i64 %.sroa.0.0.insert.ext.i4.i129.i, 140733193388032
  store i64 %.sroa.0.0.insert.insert.i.i128.i, ptr %i.anl, align 4, !tbaa !37
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0, i64 68
  store i64 %.sroa.0.0.insert.insert.i5.i130.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !37
  %i.aoi = load i32, ptr %i.c, align 8, !tbaa !34 ; 3 uses
  %i.aoj = load i32, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %i.aok = lshr i32 %i.aoi, 3
  %i.aol = zext nneg i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.aol
  %i.aon = load i32, ptr %i.aom, align 1, !tbaa !32
  %i.aoo = tail call i32 @llvm.bswap.i32(i32 %i.aon)
  %i.aop = and i32 %i.aoi, 7
  %i.aoq = shl i32 %i.aoo, %i.aop
  %i.aor = ashr i32 %i.aoq, 16
  %i.aos = add i32 %i.aoi, 16
  %i.aot = tail call i32 @llvm.umin.i32(i32 %i.aoj, i32 %i.aos) ; 4 uses
  store i32 %i.aot, ptr %i.c, align 8, !tbaa !34
  %.sroa.0.0.insert.ext.i.i133.i = zext i32 %i.aor to i64
  %.sroa.0.0.insert.insert.i.i134.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i133.i, 140733193388032
  %i.aou = lshr i32 %i.aot, 3
  %i.aov = zext nneg i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr %i.alt, i64 %i.aov
  %i.aox = load i32, ptr %i.aow, align 1, !tbaa !32
  %i.aoy = tail call i32 @llvm.bswap.i32(i32 %i.aox)
  %i.aoz = and i32 %i.aot, 7
  %i.apa = shl i32 %i.aoy, %i.aoz
  %i.apb = ashr i32 %i.apa, 16
  %i.apc = add i32 %i.aot, 16
  %i.apd = tail call i32 @llvm.umin.i32(i32 %i.aoj, i32 %i.apc)
  store i32 %i.apd, ptr %i.c, align 8, !tbaa !34
  %.sroa.0.0.insert.ext.i4.i135.i = zext i32 %i.apb to i64
  %.sroa.0.0.insert.insert.i5.i136.i = or disjoint i64 %.sroa.0.0.insert.ext.i4.i135.i, 140733193388032
  store i64 %.sroa.0.0.insert.insert.i.i134.i, ptr %i.alp, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0, i64 20
  store i64 %.sroa.0.0.insert.insert.i5.i136.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !37
  br label %bb.ae

bb.ab:                                            ; preds = %bb.s
  %i.ape = load i32, ptr %i.c, align 8, !tbaa !34 ; 3 uses
  %i.apf = load i32, ptr %i.e, align 8, !tbaa !31
  %i.apg = load ptr, ptr %1, align 8, !tbaa !30
  %i.aph = lshr i32 %i.ape, 3
  %i.api = zext nneg i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 %i.api
  %i.apk = load i32, ptr %i.apj, align 1, !tbaa !32
  %i.apl = tail call i32 @llvm.bswap.i32(i32 %i.apk)
  %i.apm = and i32 %i.ape, 7
  %i.apn = shl i32 %i.apl, %i.apm
  %i.apo = lshr i32 %i.apn, 24
  %i.app = add i32 %i.ape, 8
  %i.apq = tail call i32 @llvm.umin.i32(i32 %i.apf, i32 %i.app)
  store i32 %i.apq, ptr %i.c, align 8, !tbaa !34
  %i.apr = trunc nuw i32 %i.apo to i8
  %i.aps = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i8 %i.apr, ptr %i.aps, align 4, !tbaa !32
  %i.apt = load i32, ptr %i.c, align 8, !tbaa !34 ; 3 uses
  %i.apu = load i32, ptr %i.e, align 8, !tbaa !31
  %i.apv = load ptr, ptr %1, align 8, !tbaa !30
  %i.apw = lshr i32 %i.apt, 3
  %i.apx = zext nneg i32 %i.apw to i64
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apv, i64 %i.apx
  %i.apz = load i32, ptr %i.apy, align 1, !tbaa !32
  %i.aqa = tail call i32 @llvm.bswap.i32(i32 %i.apz)
  %i.aqb = and i32 %i.apt, 7
  %i.aqc = shl i32 %i.aqa, %i.aqb
  %i.aqd = lshr i32 %i.aqc, 28
  %i.aqe = add i32 %i.apt, 4
  %i.aqf = tail call i32 @llvm.umin.i32(i32 %i.apu, i32 %i.aqe)
  store i32 %i.aqf, ptr %i.c, align 8, !tbaa !34
  %i.aqg = trunc nuw nsw i32 %i.aqd to i8
  %i.aqh = getelementptr inbounds nuw i8, ptr %.0, i64 5
  store i8 %i.aqg, ptr %i.aqh, align 1, !tbaa !32
  %i.aqi = load i32, ptr %i.c, align 8, !tbaa !34 ; 4 uses
  %i.aqj = load ptr, ptr %1, align 8, !tbaa !30
  %i.aqk = lshr i32 %i.aqi, 3
  %i.aql = zext nneg i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !32
  %i.aqo = load i32, ptr %i.e, align 8, !tbaa !31
  %i.aqp = icmp slt i32 %i.aqi, %i.aqo
  %i.aqq = zext i1 %i.aqp to i32
  %spec.select.i.i = add i32 %i.aqi, %i.aqq
  %i.aqr = zext i8 %i.aqn to i32
  %i.aqs = and i32 %i.aqi, 7
  %i.aqt = shl nuw nsw i32 %i.aqr, %i.aqs
  store i32 %spec.select.i.i, ptr %i.c, align 8, !tbaa !34
  %i.aqu = trunc i32 %i.aqt to i8
  %i.aqv = lshr i8 %i.aqu, 7
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0, i64 6
  store i8 %i.aqv, ptr %i.aqw, align 2, !tbaa !32
  %i.aqx = load i32, ptr %i.c, align 8, !tbaa !34
  %i.aqy = load i32, ptr %i.e, align 8, !tbaa !31 ; 3 uses
  %i.aqz = add i32 %i.aqx, 3
  %i.ara = tail call i32 @llvm.umin.i32(i32 %i.aqy, i32 %i.aqz)
  %i.arb = add i32 %i.ara, 8
  %i.arc = tail call i32 @llvm.umin.i32(i32 %i.aqy, i32 %i.arb)
  %i.ard = add i32 %i.arc, 8
  %i.are = tail call i32 @llvm.umin.i32(i32 %i.aqy, i32 %i.ard)
  store i32 %i.are, ptr %i.c, align 8, !tbaa !34
  br label %bb.ae

bb.ac:                                            ; preds = %bb.s
  %i.arf = load i32, ptr %i.c, align 8, !tbaa !34 ; 3 uses
  %i.arg = load i32, ptr %i.e, align 8, !tbaa !31
  %i.arh = load ptr, ptr %1, align 8, !tbaa !30
  %i.ari = lshr i32 %i.arf, 3
  %i.arj = zext nneg i32 %i.ari to i64
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.arj
  %i.arl = load i32, ptr %i.ark, align 1, !tbaa !32
  %i.arm = tail call i32 @llvm.bswap.i32(i32 %i.arl)
  %i.arn = and i32 %i.arf, 7
  %i.aro = shl i32 %i.arm, %i.arn
  %i.arp = lshr i32 %i.aro, 24
  %i.arq = add i32 %i.arf, 8
  %i.arr = tail call i32 @llvm.umin.i32(i32 %i.arg, i32 %i.arq)
  store i32 %i.arr, ptr %i.c, align 8, !tbaa !34
  %i.ars = trunc nuw i32 %i.arp to i8
  %i.art = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i8 %i.ars, ptr %i.art, align 4, !tbaa !32
  %i.aru = load i32, ptr %i.c, align 8, !tbaa !34 ; 3 uses
  %i.arv = load i32, ptr %i.e, align 8, !tbaa !31
  %i.arw = load ptr, ptr %1, align 8, !tbaa !30
  %i.arx = lshr i32 %i.aru, 3
  %i.ary = zext nneg i32 %i.arx to i64
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 %i.ary
  %i.asa = load i32, ptr %i.arz, align 1, !tbaa !32
  %i.asb = tail call i32 @llvm.bswap.i32(i32 %i.asa)
  %i.asc = and i32 %i.aru, 7
  %i.asd = shl i32 %i.asb, %i.asc
  %i.ase = lshr i32 %i.asd, 24
  %i.asf = add i32 %i.aru, 8
  %i.asg = tail call i32 @llvm.umin.i32(i32 %i.arv, i32 %i.asf)
  store i32 %i.asg, ptr %i.c, align 8, !tbaa !34
  %i.ash = trunc nuw i32 %i.ase to i8
  %i.asi = getelementptr inbounds nuw i8, ptr %.0, i64 5
  store i8 %i.ash, ptr %i.asi, align 1, !tbaa !32
  br label %bb.ae

bb.ad:                                            ; preds = %bb.s
  %i.asj = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.asj, ptr noundef nonnull @.str.40, i32 noundef %i.bk) #7
  br label %bb.ae

parse_ext_v1.exit:                                ; preds = %bb.n
  %i.ask = load ptr, ptr %0, align 8, !tbaa !33
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ask, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %i.ho) #7
  tail call void @ff_dovi_ctx_unref(ptr noundef nonnull %0) #7
  br label %.thread

bb.ae:                                            ; preds = %.loopexit.loopexit.i, %bb.m, %bb.n, %bb.r, %bb.q, %bb.p, %bb.o, %bb.t, %bb.u, %bb.v, %bb.w, %.preheader139.i, %.preheader.i, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.val = load i32, ptr %i.c, align 8, !tbaa !34  ; 2 uses
  %i.asl = sub nsw i32 %.val, %i.bm               ; 2 uses
  %i.asm = shl nuw nsw i32 %i.bc, 3               ; 2 uses
  %i.asn = icmp sgt i32 %i.asl, %i.asm
  br i1 %i.asn, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.g, %bb.i, %bb.f, %bb.ae, %parse_ext_v1.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.aso = load i32, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %i.asp = add i32 %.val, %i.asm
  %i.asq = sub i32 %i.asp, %i.asl
  %i.asr = tail call i32 @llvm.umin.i32(i32 %i.aso, i32 %i.asq) ; 2 uses
  store i32 %i.asr, ptr %i.c, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.not56 = icmp eq i32 %i.al, 0
  br i1 %.not56, label %.loopexit, label %bb.e, !llvm.loop !107

.loopexit:                                        ; preds = %bb.af, %bb.d, %.thread, %bb.c
  %.2 = phi i32 [ -1094995529, %.thread ], [ -12, %bb.c ], [ 0, %bb.d ], [ 0, %bb.af ]
  ret i32 %.2
}

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare ptr @av_refstruct_alloc_ext_c(i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"AVDOVIDecoderConfigurationRecord", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8}
!11 = !{!"short", !5, i64 0}
!12 = !{!"AVDOVIRpuDataHeader", !5, i64 0, !11, i64 2, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 17, !5, i64 18}
!13 = !{!"p1 _ZTS17AVDOVIDataMapping", !9, i64 0}
!14 = !{!"p1 _ZTS19AVDOVIColorMetadata", !9, i64 0}
!15 = !{!"p1 _ZTS7DOVIExt", !9, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"DOVIContext", !9, i64 0, !6, i64 8, !10, i64 12, !12, i64 22, !13, i64 48, !14, i64 56, !15, i64 64, !14, i64 72, !5, i64 80, !16, i64 208, !6, i64 216}
!18 = !{!17, !13, i64 48}
!19 = !{!17, !14, i64 56}
!20 = !{!"long", !5, i64 0}
!21 = !{!17, !15, i64 64}
!22 = !{!"DOVIExt", !5, i64 0, !5, i64 532, !6, i64 2432, !6, i64 2436}
!23 = !{!22, !6, i64 2432}
!24 = !{!22, !6, i64 2436}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"p1 _ZTS14AVDOVIMetadata", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!20, !20, i64 0}
!29 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!29, !16, i64 0}
!31 = !{!29, !6, i64 16}
!32 = !{!5, !5, i64 0}
!33 = !{!17, !9, i64 0}
!34 = !{!29, !6, i64 8}
!35 = !{!12, !5, i64 7}
!36 = !{!12, !5, i64 8}
!37 = !{!6, !6, i64 0}
!38 = !{!16, !16, i64 0}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = !{!"AVDOVIMetadata", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !6, i64 40}
!42 = !{!41, !20, i64 0}
!43 = !{!41, !20, i64 8}
!44 = !{!41, !20, i64 16}
!45 = !{!41, !20, i64 32}
!46 = !{!41, !6, i64 40}
!47 = !{!41, !20, i64 24}
!48 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
!57 = !{!17, !5, i64 14}
!58 = !{!17, !5, i64 20}
!59 = !{!29, !6, i64 12}
!60 = !{!17, !16, i64 208}
!61 = !{!12, !5, i64 0}
!62 = !{!12, !11, i64 2}
!63 = !{!12, !5, i64 4}
!64 = !{!12, !5, i64 5}
!65 = !{!12, !5, i64 6}
!66 = !{!12, !5, i64 9}
!67 = !{!12, !5, i64 10}
!68 = !{!12, !5, i64 11}
!69 = !{!12, !5, i64 12}
!70 = !{!12, !5, i64 17}
!71 = !{!12, !5, i64 18}
!72 = !{!12, !5, i64 13}
!73 = !{!12, !5, i64 14}
!74 = !{!12, !5, i64 15}
!75 = !{!12, !5, i64 16}
!76 = !{!13, !13, i64 0}
!77 = !{!"AVDOVIDataMapping", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 8, !6, i64 5024, !6, i64 5028, !6, i64 5032, !5, i64 5040, !5, i64 5136}
!78 = !{!77, !5, i64 0}
!79 = !{!77, !5, i64 1}
!80 = !{!77, !5, i64 2}
!81 = !{!"AVDOVIReshapingCurve", !5, i64 0, !5, i64 2, !5, i64 20, !5, i64 52, !5, i64 64, !5, i64 256, !5, i64 264, !5, i64 328}
!82 = !{!81, !5, i64 0}
!83 = !{!11, !11, i64 0}
!84 = !{!77, !6, i64 5024}
!85 = !{!77, !6, i64 5028}
!86 = !{!77, !6, i64 5032}
!87 = !{!"AVDOVINLQParams", !11, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!88 = !{!87, !11, i64 0}
!89 = !{!87, !20, i64 8}
!90 = !{!87, !20, i64 16}
!91 = !{!87, !20, i64 24}
!92 = !{!17, !14, i64 72}
!93 = !{!"AVDOVIColorMetadata", !5, i64 0, !5, i64 1, !5, i64 4, !5, i64 76, !5, i64 100, !11, i64 172, !11, i64 174, !11, i64 176, !6, i64 180, !5, i64 184, !5, i64 185, !5, i64 186, !5, i64 187, !11, i64 188, !11, i64 190, !11, i64 192}
!94 = !{!93, !5, i64 0}
!95 = !{!93, !5, i64 1}
!96 = !{!93, !11, i64 172}
!97 = !{!93, !11, i64 174}
!98 = !{!93, !11, i64 176}
!99 = !{!93, !6, i64 180}
!100 = !{!93, !5, i64 184}
!101 = !{!93, !5, i64 185}
!102 = !{!93, !5, i64 186}
!103 = !{!93, !5, i64 187}
!104 = !{!93, !11, i64 188}
!105 = !{!93, !11, i64 190}
!106 = !{!93, !11, i64 192}
!107 = distinct !{!107, !25}
!108 = !{!"AVDOVIDmData", !5, i64 0, !5, i64 4}
!109 = !{!108, !5, i64 0}
end_hunk_1
