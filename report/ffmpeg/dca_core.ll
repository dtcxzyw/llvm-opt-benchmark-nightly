Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_core?download=true
inline.NumInlined: 210
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ff_dca_core_parse:bb.a
  %i.lb = shl i32 %i.kz, %i.la
  %i.lc = lshr i32 %i.lb, 16
  %i.ld = add i32 %i.ku, 16
  %i.le = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.ld) ; 8 uses
  store i32 %i.le, ptr %i.l, align 16, !tbaa !32
  %i.lf = or disjoint i32 %i.lc, %i.ks
  %.not.i.i = icmp eq i32 %i.lf, -1710160480
  br i1 %.not.i.i, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.lg = lshr i32 %i.le, 3
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lh ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !45
  %i.lk = icmp slt i32 %i.le, %i.kc
  %i.ll = zext i1 %i.lk to i32
  %spec.select.i.i.i = add i32 %i.le, %i.ll       ; 5 uses
  %i.lm = zext i8 %i.lj to i32
  %i.ln = and i32 %i.le, 7
  %i.lo = lshr exact i32 128, %i.ln
  %i.lp = and i32 %i.lo, %i.lm
  %.not48.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not48.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lq = sub nsw i32 0, %spec.select.i.i.i
  %i.lr = sub nsw i32 %i.kc, %spec.select.i.i.i
  %i.ls = icmp slt i32 %spec.select.i.i.i, -47
  %..i.i58.i.i = call i32 @llvm.smin.i32(i32 %i.lr, i32 47)
  %.0.i.i59.i.i = select i1 %i.ls, i32 %i.lq, i32 %..i.i58.i.i
  %i.lt = add nsw i32 %.0.i.i59.i.i, %spec.select.i.i.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %storemerge.i.i = phi i32 [ %i.lt, %bb.y ], [ %spec.select.i.i.i, %bb.x ] ; 5 uses
  store i32 %storemerge.i.i, ptr %i.l, align 16, !tbaa !32
  %i.lu = lshr i32 %storemerge.i.i, 3
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !45
  %i.ly = icmp slt i32 %storemerge.i.i, %i.kc
  %i.lz = zext i1 %i.ly to i32
  %spec.select.i60.i.i = add i32 %storemerge.i.i, %i.lz ; 5 uses
  %i.ma = zext i8 %i.lx to i32
  %i.mb = and i32 %storemerge.i.i, 7
  %i.mc = shl nuw nsw i32 %i.ma, %i.mb
  %i.md = lshr i32 %i.mc, 7
  store i32 %spec.select.i60.i.i, ptr %i.l, align 16, !tbaa !32
  %i.me = and i32 %i.md, 1                        ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 9520
  store i32 %i.me, ptr %i.mf, align 16, !tbaa !69
  %.not49.i.i = icmp eq i32 %i.me, 0
  br i1 %.not49.i.i, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mg = lshr i32 %spec.select.i60.i.i, 3
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 1, !tbaa !45
  %i.mk = call i32 @llvm.bswap.i32(i32 %i.mj)
  %i.ml = and i32 %spec.select.i60.i.i, 7
  %i.mm = shl i32 %i.mk, %i.ml
  %i.mn = lshr i32 %i.mm, 29                      ; 3 uses
  %i.mo = add i32 %spec.select.i60.i.i, 3
  %i.mp = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.mo) ; 3 uses
  store i32 %i.mp, ptr %i.l, align 16, !tbaa !32
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 9524
  store i32 %i.mn, ptr %i.mq, align 4, !tbaa !70
  %i.mr = icmp eq i32 %i.mn, 7
  br i1 %i.mr, label %.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ms = zext nneg i32 %i.mn to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @ff_dca_dmix_primary_nch, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !45
  %i.mv = zext i8 %i.mu to i32
  %i.mw = load i32, ptr %i.aw, align 4, !tbaa !41
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr @ff_dca_channels, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !45
  %i.na = zext i8 %i.mz to i32
  %i.nb = load i32, ptr %i.bz, align 8, !tbaa !71
  %i.nc = icmp ne i32 %i.nb, 0
  %i.nd = zext i1 %i.nc to i32
  %i.ne = add nuw nsw i32 %i.nd, %i.na
  %i.nf = mul nuw nsw i32 %i.ne, %i.mv            ; 2 uses
  %.not67.i.i = icmp eq i32 %i.nf, 0
  br i1 %.not67.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 9528
  %wide.trip.count.i.i = zext nneg i32 %i.nf to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ad ] ; 2 uses
  %i.nh = phi i32 [ %i.mp, %.lr.ph.i.i ], [ %i.nr, %bb.ad ] ; 3 uses
  %i.ni = lshr i32 %i.nh, 3
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 1, !tbaa !45
  %i.nm = call i32 @llvm.bswap.i32(i32 %i.nl)
  %i.nn = and i32 %i.nh, 7
  %i.no = shl i32 %i.nm, %i.nn                    ; 2 uses
  %i.np = lshr i32 %i.no, 23
  %i.nq = add i32 %i.nh, 9
  %i.nr = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.nq) ; 3 uses
  store i32 %i.nr, ptr %i.l, align 16, !tbaa !32
  %i.ns = and i32 %i.np, 255                      ; 2 uses
  %i.nt = icmp samesign ult i32 %i.ns, 242
  br i1 %i.nt, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.nu = lshr i32 %i.no, 31
  %i.nv = add nsw i32 %i.nu, -1                   ; 2 uses
  %i.nw = zext nneg i32 %i.ns to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr @ff_dca_dmixtable, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !72
  %i.nz = zext i16 %i.ny to i32
  %i.oa = xor i32 %i.nv, %i.nz
  %i.ob = sub nsw i32 %i.oa, %i.nv
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i.i
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !34
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ac, !llvm.loop !122

.loopexit.i.i:                                    ; preds = %bb.ad, %bb.ab, %bb.z
  %.val51.i.i = phi i32 [ %spec.select.i60.i.i, %bb.z ], [ %i.mp, %bb.ab ], [ %i.nr, %bb.ad ]
  %i.od = add i32 %.val51.i.i, 7
  %i.oe = and i32 %i.od, -8
  %i.of = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.oe)
  %i.og = add i32 %i.of, 16
  %i.oh = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.og) ; 4 uses
  store i32 %i.oh, ptr %i.l, align 16, !tbaa !32
  %i.oi = getelementptr i8, ptr %i.jq, i64 528
  %.val57.i.i = load i32, ptr %i.oi, align 8, !tbaa !73
  %i.oj = and i32 %.val57.i.i, 65537
  %.not.i.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i.i, label %parse_aux_data.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.ok = or i32 %i.oh, %i.le
  %i.ol = and i32 %i.ok, 7
  %i.om = icmp ne i32 %i.ol, 0
  %i.on = icmp slt i32 %i.le, 0
  %or.cond.i.i.i = or i1 %i.on, %i.om
  %i.oo = icmp sgt i32 %i.oh, %.val55.i.i
  %or.cond.i.i38 = select i1 %or.cond.i.i.i, i1 true, i1 %i.oo
  br i1 %or.cond.i.i38, label %.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.op = sub nsw i32 %i.oh, %i.le                ; 2 uses
  %i.oq = icmp slt i32 %i.op, 16
  br i1 %i.oq, label %.sink.split.i, label %ff_dca_check_crc.exit.i.i

ff_dca_check_crc.exit.i.i:                        ; preds = %bb.af
  %i.or = getelementptr inbounds nuw i8, ptr %i.js, i64 77920
  %i.os = load ptr, ptr %i.or, align 16, !tbaa !81
  %i.ot = lshr i32 %i.op, 3
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = call i32 @av_crc(ptr noundef %i.os, i32 noundef 65535, ptr noundef nonnull %i.li, i64 noundef %i.ou) #14
  %.not18.i.not.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not18.i.not.i.i, label %parse_aux_data.exit.i, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %ff_dca_check_crc.exit.i.i, %bb.af, %bb.ae, %bb.aa, %bb.w
  %.str.35.sink.i = phi ptr [ @.str.35, %bb.w ], [ @.str.38, %bb.ae ], [ @.str.36, %bb.aa ], [ @.str.38, %ff_dca_check_crc.exit.i.i ], [ @.str.38, %bb.af ], [ @.str.37, %bb.ac ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %.str.35.sink.i) #13
  %.pre = load ptr, ptr %0, align 16, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i, %bb.v
  %i.ow = phi ptr [ %.pre, %.sink.split.i ], [ %i.jq, %bb.v ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 528
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !73
  %i.oz = and i32 %i.oy, 8
  %.not97.i = icmp eq i32 %i.oz, 0
  br i1 %.not97.i, label %.critedge.i, label %alloc_sample_buffer.exit

.critedge.i:                                      ; preds = %bb.ag, %bb.u
  %i.pa = phi ptr [ %i.jq, %bb.u ], [ %i.ow, %bb.ag ]
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 9520
  store i32 0, ptr %i.pb, align 16, !tbaa !69
  br label %parse_aux_data.exit.i

parse_aux_data.exit.i:                            ; preds = %.critedge.i, %ff_dca_check_crc.exit.i.i, %.loopexit.i.i
  %i.pc = phi ptr [ %i.jq, %ff_dca_check_crc.exit.i.i ], [ %i.jq, %.loopexit.i.i ], [ %i.pa, %.critedge.i ] ; 13 uses
  %i.pd = load i32, ptr %i.bs, align 16, !tbaa !140
  %.not98.i = icmp eq i32 %i.pd, 0
  br i1 %.not98.i, label %parse_optional_info.exit, label %bb.ah

bb.ah:                                            ; preds = %parse_aux_data.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.js, i64 77948
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !141
  %.not99.i = icmp eq i32 %i.pf, 0
  br i1 %.not99.i, label %bb.ai, label %parse_optional_info.exit

bb.ai:                                            ; preds = %bb.ah
  %i.pg = load i32, ptr %i.as, align 16, !tbaa !40 ; 3 uses
  %i.ph = sdiv i32 %i.pg, 4
  %4 = load <2 x i32>, ptr %i.l, align 16, !tbaa !34
  %i.pi = load i32, ptr %i.i, align 4, !tbaa !142
  %5 = sdiv <2 x i32> %4, splat (i32 32)          ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 0         ; 6 uses
  %7 = extractelement <2 x i32> %5, i64 1
  %..i = call i32 @llvm.smin.i32(i32 %i.ph, i32 %7) ; 6 uses
  %i.pj = load i32, ptr %i.br, align 4, !tbaa !143
  switch i32 %i.pj, label %parse_optional_info.exit [
    i32 0, label %bb.aj
    i32 2, label %.preheader121.i
    i32 6, label %bb.as
  ]

.preheader121.i:                                  ; preds = %bb.ai
  %.not106132.not.i = icmp sgt i32 %..i, %6
  br i1 %.not106132.not.i, label %.lr.ph135.i, label %.loopexit122.i

.lr.ph135.i:                                      ; preds = %.preheader121.i
  %i.pk = load ptr, ptr %i.e, align 8, !tbaa !144
  %smin145.i = sext i32 %..i to i64
  %i.pl = sext i32 %6 to i64
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.pm = getelementptr inbounds nuw i8, ptr %i.js, i64 77944
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !82
  %.not109.i = icmp eq i32 %i.pn, 0
  br i1 %.not109.i, label %.preheader.i36, label %parse_optional_info.exit

.preheader.i36:                                   ; preds = %bb.aj
  %.not110136.not.i = icmp sgt i32 %..i, %6
  br i1 %.not110136.not.i, label %.lr.ph139.i, label %.loopexit.i

.lr.ph139.i:                                      ; preds = %.preheader.i36
  %i.po = load ptr, ptr %i.e, align 8, !tbaa !144
  %smin148.i = sext i32 %..i to i64
  %i.pp = sext i32 %6 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph139.i
  %indvars.iv149.in.i = phi i64 [ %smin148.i, %.lr.ph139.i ], [ %indvars.iv149.i, %bb.am ]
  %.0138.i = phi i32 [ 0, %.lr.ph139.i ], [ %i.pt, %bb.am ] ; 3 uses
  %indvars.iv149.i = add nsw i64 %indvars.iv149.in.i, -1 ; 4 uses
  %i.pq = shl nsw i64 %indvars.iv149.i, 2         ; 2 uses
  %i.pr = getelementptr inbounds i8, ptr %i.po, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 1, !tbaa !45 ; 2 uses
  %i.pt = call i32 @llvm.bswap.i32(i32 %i.ps)
  %i.pu = icmp eq i32 %i.ps, 1515870810
  %i.pv = icmp ugt i32 %.0138.i, 398458879
  %or.cond120.i = and i1 %i.pv, %i.pu
  br i1 %or.cond120.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pw = lshr i32 %.0138.i, 22                   ; 2 uses
  %i.px = add nuw nsw i32 %i.pw, 1
  %i.py = trunc nsw i64 %i.pq to i32
  %i.pz = sub i32 %i.pg, %i.py                    ; 2 uses
  %i.qa = icmp eq i32 %i.px, %i.pz
  %i.qb = icmp eq i32 %i.pw, %i.pz
  %or.cond.i37 = or i1 %i.qb, %i.qa
  %i.qc = and i32 %.0138.i, 4161536
  %i.qd = icmp eq i32 %i.qc, 262144
  %or.cond114.i = and i1 %i.qd, %or.cond.i37
  br i1 %or.cond114.i, label %.loopexit.i.thread, label %bb.am

.loopexit.i.thread:                               ; preds = %bb.al
  %i.qe = trunc nsw i64 %indvars.iv149.i to i32
  %i.qf = shl nsw i32 %i.qe, 5
  %i.qg = add nsw i32 %i.qf, 49
  store i32 %i.qg, ptr %i.d, align 4, !tbaa !28
  br label %parse_optional_info.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not110.not.i = icmp sgt i64 %indvars.iv149.i, %i.pp
  br i1 %.not110.not.i, label %bb.ak, label %.loopexit.i, !llvm.loop !123

.loopexit.i:                                      ; preds = %bb.am, %.preheader.i36
  %.pr = load i32, ptr %i.d, align 4, !tbaa !28
  %.not111.i = icmp eq i32 %.pr, 0
  br i1 %.not111.i, label %bb.an, label %parse_optional_info.exit

bb.an:                                            ; preds = %.loopexit.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.pc, i32 noundef 16, ptr noundef nonnull @.str.32) #13
  %i.qh = load ptr, ptr %0, align 16, !tbaa !36   ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 528
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !73
  %i.qk = and i32 %i.qj, 8
  %.not112.i = icmp eq i32 %i.qk, 0
  br i1 %.not112.i, label %parse_optional_info.exit, label %alloc_sample_buffer.exit

bb.ao:                                            ; preds = %bb.aq, %.lr.ph135.i
  %indvars.iv146.in.i = phi i64 [ %smin145.i, %.lr.ph135.i ], [ %indvars.iv146.i, %bb.aq ]
  %.1134.i = phi i32 [ 0, %.lr.ph135.i ], [ %i.qo, %bb.aq ] ; 2 uses
  %indvars.iv146.i = add nsw i64 %indvars.iv146.in.i, -1 ; 4 uses
  %i.ql = shl nsw i64 %indvars.iv146.i, 2         ; 2 uses
  %i.qm = getelementptr inbounds i8, ptr %i.pk, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 1, !tbaa !45 ; 2 uses
  %i.qo = call i32 @llvm.bswap.i32(i32 %i.qn)
  %i.qp = icmp eq i32 %i.qn, 1660065053
  %i.qq = icmp ugt i32 %.1134.i, 99614719
  %or.cond115.i = and i1 %i.qq, %i.qp
  br i1 %or.cond115.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qr = lshr i32 %.1134.i, 20
  %i.qs = add nuw nsw i32 %i.qr, 1
  %i.qt = trunc nsw i64 %i.ql to i32
  %i.qu = sub i32 %i.pg, %i.qt
  %i.qv = icmp eq i32 %i.qs, %i.qu
  br i1 %i.qv, label %.loopexit122.i.thread, label %bb.aq

.loopexit122.i.thread:                            ; preds = %bb.ap
  %i.qw = trunc nsw i64 %indvars.iv146.i to i32
  %i.qx = shl nsw i32 %i.qw, 5
  %i.qy = add nsw i32 %i.qx, 44
  store i32 %i.qy, ptr %i.b, align 4, !tbaa !26
  br label %parse_optional_info.exit

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not106.not.i = icmp sgt i64 %indvars.iv146.i, %i.pl
  br i1 %.not106.not.i, label %bb.ao, label %.loopexit122.i, !llvm.loop !124

.loopexit122.i:                                   ; preds = %bb.aq, %.preheader121.i
  %.pr43 = load i32, ptr %i.b, align 4, !tbaa !26
  %.not107.i = icmp eq i32 %.pr43, 0
  br i1 %.not107.i, label %bb.ar, label %parse_optional_info.exit

bb.ar:                                            ; preds = %.loopexit122.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.pc, i32 noundef 16, ptr noundef nonnull @.str.33) #13
  %i.qz = load ptr, ptr %0, align 16, !tbaa !36   ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 528
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !73
  %i.rc = and i32 %i.rb, 8
  %.not108.i = icmp eq i32 %i.rc, 0
  br i1 %.not108.i, label %parse_optional_info.exit, label %alloc_sample_buffer.exit

bb.as:                                            ; preds = %bb.ai
  %i.rd = getelementptr inbounds nuw i8, ptr %i.js, i64 77944
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !82
  %.not100.i = icmp eq i32 %i.re, 0
  br i1 %.not100.i, label %.preheader123.i, label %parse_optional_info.exit

.preheader123.i:                                  ; preds = %bb.as
  %.not101129.not.i = icmp sgt i32 %..i, %6
  br i1 %.not101129.not.i, label %.lr.ph.i, label %.loopexit124.ithread-pre-split

.lr.ph.i:                                         ; preds = %.preheader123.i
  %i.rf = load ptr, ptr %i.e, align 8, !tbaa !144 ; 2 uses
  %i.rg = sdiv i32 %i.pi, 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.js, i64 77920
  %smin.i = sext i32 %..i to i64
  %i.ri = sext i32 %i.rg to i64
  %i.rj = sext i32 %6 to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %.lr.ph.i
  %indvars.iv.in.i = phi i64 [ %smin.i, %.lr.ph.i ], [ %indvars.iv.i35, %bb.ax ]
  %.2131.i = phi i32 [ 0, %.lr.ph.i ], [ %i.rn, %bb.ax ] ; 2 uses
  %indvars.iv.i35 = add nsw i64 %indvars.iv.in.i, -1 ; 5 uses
  %i.rk = shl nsw i64 %indvars.iv.i35, 2          ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %i.rf, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 1, !tbaa !45 ; 2 uses
  %i.rn = call i32 @llvm.bswap.i32(i32 %i.rm)
  %i.ro = icmp eq i32 %i.rm, 55181383
  br i1 %i.ro, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.rp = lshr i32 %.2131.i, 26                   ; 2 uses
  %i.rq = icmp ugt i32 %.2131.i, 671088639
  %i.rr = sub nsw i64 %i.ri, %i.rk
  %i.rs = zext nneg i32 %i.rp to i64
  %.not102.not.i = icmp sgt i64 %i.rr, %i.rs
  %or.cond140.i = select i1 %i.rq, i1 %.not102.not.i, i1 false
  br i1 %or.cond140.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.rt = load ptr, ptr %i.rh, align 16, !tbaa !81
  %i.ru = shl nsw i64 %indvars.iv.i35, 34
  %sext.i = add i64 %i.ru, 17179869184
  %i.rv = ashr exact i64 %sext.i, 32
  %i.rw = getelementptr inbounds i8, ptr %i.rf, i64 %i.rv
  %i.rx = add nsw i32 %i.rp, -3
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = call i32 @av_crc(ptr noundef %i.rt, i32 noundef 65535, ptr noundef %i.rw, i64 noundef %i.ry) #14
  %.not103.i = icmp eq i32 %i.rz, 0
  br i1 %.not103.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.sa = trunc nsw i64 %indvars.iv.i35 to i32
  %i.sb = shl nsw i32 %i.sa, 5                    ; 2 uses
  store i32 %i.sb, ptr %i.c, align 16, !tbaa !27
  br label %.loopexit124.i

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.not101.not.i = icmp sgt i64 %indvars.iv.i35, %i.rj
  br i1 %.not101.not.i, label %bb.at, label %.loopexit124.ithread-pre-split, !llvm.loop !125

.loopexit124.ithread-pre-split:                   ; preds = %bb.ax, %.preheader123.i
  %.pr45 = load i32, ptr %i.c, align 16, !tbaa !27
  br label %.loopexit124.i

.loopexit124.i:                                   ; preds = %.loopexit124.ithread-pre-split, %bb.aw
  %i.sc = phi i32 [ %.pr45, %.loopexit124.ithread-pre-split ], [ %i.sb, %bb.aw ]
  %.not104.i = icmp eq i32 %i.sc, 0
  br i1 %.not104.i, label %bb.ay, label %parse_optional_info.exit

bb.ay:                                            ; preds = %.loopexit124.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.pc, i32 noundef 16, ptr noundef nonnull @.str.34) #13
  %i.sd = load ptr, ptr %0, align 16, !tbaa !36   ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 528
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !73
  %i.sg = and i32 %i.sf, 8
  %.not105.i = icmp eq i32 %i.sg, 0
  br i1 %.not105.i, label %parse_optional_info.exit, label %alloc_sample_buffer.exit

parse_optional_info.exit:                         ; preds = %bb.ai, %bb.aj, %.loopexit.i, %bb.an, %.loopexit122.i, %bb.ar, %bb.as, %.loopexit124.i, %bb.ay, %.loopexit.i.thread, %.loopexit122.i.thread, %bb.ah, %parse_aux_data.exit.i
  %i.sh = phi ptr [ %i.pc, %bb.ai ], [ %i.pc, %bb.aj ], [ %i.pc, %.loopexit.i ], [ %i.qh, %bb.an ], [ %i.pc, %.loopexit122.i ], [ %i.qz, %bb.ar ], [ %i.pc, %bb.as ], [ %i.pc, %.loopexit124.i ], [ %i.sd, %bb.ay ], [ %i.pc, %.loopexit.i.thread ], [ %i.pc, %.loopexit122.i.thread ], [ %i.pc, %bb.ah ], [ %i.pc, %parse_aux_data.exit.i ]
  %i.si = load i32, ptr %i.as, align 16, !tbaa !40 ; 3 uses
  %i.sj = icmp sgt i32 %i.si, %2
  br i1 %i.sj, label %bb.az, label %parse_optional_info.exit._crit_edge

parse_optional_info.exit._crit_edge:              ; preds = %parse_optional_info.exit
  %.pre57 = shl nsw i32 %i.si, 3
  br label %bb.ba

bb.az:                                            ; preds = %parse_optional_info.exit
  store i32 %2, ptr %i.as, align 16, !tbaa !40
  br label %bb.ba

bb.ba:                                            ; preds = %parse_optional_info.exit._crit_edge, %bb.az
  %.pre-phi = phi i32 [ %.pre57, %parse_optional_info.exit._crit_edge ], [ %i.f, %bb.az ] ; 3 uses
  %i.sk = phi i32 [ %i.si, %parse_optional_info.exit._crit_edge ], [ %2, %bb.az ]
  %.val8.i = load i32, ptr %i.l, align 16, !tbaa !32
  %i.sl = icmp slt i32 %.pre-phi, %.val8.i
  br i1 %i.sl, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.sm = load i32, ptr %i.i, align 4, !tbaa !30
  %i.sn = icmp sgt i32 %.pre-phi, %i.sm
  br i1 %i.sn, label %bb.bc, label %ff_dca_seek_bits.exit

ff_dca_seek_bits.exit:                            ; preds = %bb.bb
  %i.so = load i32, ptr %i.k, align 8, !tbaa !31
  %i.sp = icmp slt i32 %i.sk, 0
  %i.sq = call i32 @llvm.smin.i32(i32 %.pre-phi, i32 %i.so)
  %.0.i.i.v.i = select i1 %i.sp, i32 0, i32 %i.sq
  store i32 %.0.i.i.v.i, ptr %i.l, align 16, !tbaa !32
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sh, i32 noundef 16, ptr noundef nonnull @.str) #13
  %i.sr = load ptr, ptr %0, align 16, !tbaa !36
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 528
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !73
  %i.su = and i32 %i.st, 8
  %.not32 = icmp eq i32 %i.su, 0
  br i1 %.not32, label %bb.bd, label %alloc_sample_buffer.exit

bb.bd:                                            ; preds = %ff_dca_seek_bits.exit, %bb.bc
  br label %alloc_sample_buffer.exit

alloc_sample_buffer.exit:                         ; preds = %bb.ar, %bb.ay, %bb.an, %bb.ag, %bb.m, %parse_frame_header.exit.thread, %bb.bc, %bb.r, %bb.a, %bb.bd
  %.0 = phi i32 [ 0, %bb.bd ], [ -1094995529, %bb.a ], [ %.0.i.ph, %parse_frame_header.exit.thread ], [ -1094995529, %bb.bc ], [ %i.jo, %bb.r ], [ -12, %bb.m ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.an ], [ -1094995529, %bb.ay ], [ -1094995529, %bb.ar ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @parse_frame_data(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 9 uses
  %i.b = alloca [32 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 36 uses
  %i.d = getelementptr i8, ptr %0, i64 16         ; 110 uses
  %.val.i = load i32, ptr %i.d, align 8, !tbaa !32 ; 10 uses
  %i.e = getelementptr i8, ptr %0, i64 20         ; 5 uses
  %.val233.i = load i32, ptr %i.e, align 4, !tbaa !30 ; 2 uses
  %i.f = icmp slt i32 %.val233.i, %.val.i
  br i1 %i.f, label %parse_coding_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.j = lshr i32 %.val.i, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 1, !tbaa !45
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = and i32 %.val.i, 7
  %i.p = shl i32 %i.n, %i.o
  %i.q = lshr i32 %i.p, 28
  %i.r = add i32 %.val.i, 4
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.r) ; 4 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !32
  %i.t = add nuw nsw i32 %i.q, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.t, ptr %i.u, align 4, !tbaa !83
  %i.v = lshr i32 %i.s, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1, !tbaa !45
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = and i32 %i.s, 7
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = lshr i32 %i.ab, 29
  %i.ad = add i32 %i.s, 3
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.ad)
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !32
  %i.af = add nuw nsw i32 %i.ac, 1                ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr @ff_dca_channels, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !45
  %i.am = zext i8 %i.al to i32
  %.not225.i = icmp eq i32 %i.af, %i.am
  br i1 %.not225.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 16, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.an, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.af, i32 noundef %i.ai) #13
  br label %parse_coding_header.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds i8, ptr @audio_mode_ch_mask, i64 %i.aj
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !45
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !85
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !71
  %.not226.i = icmp eq i32 %i.at, 0
  br i1 %.not226.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = or i32 %i.aq, 32
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !85
  br label %.loopexit.i
end_hunk_0
