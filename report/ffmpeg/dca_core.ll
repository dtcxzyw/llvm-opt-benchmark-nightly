inline.NumInlined: 210
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ff_dca_core_parse:bb.a
  br i1 %.not30.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call fastcc void @erase_adpcm_history(ptr noundef nonnull %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jo = call fastcc i32 @parse_frame_data(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.jp = icmp slt i32 %i.jo, 0
  br i1 %i.jp, label %alloc_sample_buffer.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jq = load ptr, ptr %0, align 16, !tbaa !32   ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !62 ; 5 uses
  %i.jt = load i32, ptr %i.bo, align 4, !tbaa !78
  %.not.i34 = icmp eq i32 %i.jt, 0
  br i1 %.not.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ju = load i32, ptr %i.l, align 16, !tbaa !28 ; 4 uses
  %i.jv = sub nsw i32 0, %i.ju
  %i.jw = load i32, ptr %i.k, align 8, !tbaa !27
  %i.jx = sub nsw i32 %i.jw, %i.ju
  %i.jy = icmp slt i32 %i.ju, -32
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.jx, i32 32)
  %.0.i.i.i = select i1 %i.jy, i32 %i.jv, i32 %..i.i.i
  %i.jz = add nsw i32 %.0.i.i.i, %i.ju
  store i32 %i.jz, ptr %i.l, align 16, !tbaa !28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ka = load i32, ptr %i.bp, align 8, !tbaa !79
  %.not96.i = icmp eq i32 %i.ka, 0
  br i1 %.not96.i, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val54.i.i = load i32, ptr %i.l, align 16, !tbaa !28 ; 2 uses
  %.val55.i.i = load i32, ptr %i.i, align 4, !tbaa !26 ; 2 uses
  %i.kb = icmp slt i32 %.val55.i.i, %.val54.i.i
  br i1 %i.kb, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kc = load i32, ptr %i.k, align 8, !tbaa !27  ; 11 uses
  %i.kd = add i32 %.val54.i.i, 6
  %i.ke = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.kd) ; 4 uses
  %i.kf = sub nsw i32 0, %i.ke                    ; 2 uses
  %i.kg = and i32 %i.kf, 31
  %i.kh = sub nsw i32 %i.kc, %i.ke
  %i.ki = icmp slt i32 %i.ke, -31
  %..i.i.i.i = call i32 @llvm.smin.i32(i32 %i.kg, i32 %i.kh)
  %.0.i.i.i.i = select i1 %i.ki, i32 %i.kf, i32 %..i.i.i.i
  %i.kj = add nsw i32 %.0.i.i.i.i, %i.ke          ; 4 uses
  store i32 %i.kj, ptr %i.l, align 16, !tbaa !28
  %i.kk = load ptr, ptr %i.e, align 8, !tbaa !25  ; 6 uses
  %i.kl = lshr i32 %i.kj, 3
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 1, !tbaa !50
  %i.kp = call i32 @llvm.bswap.i32(i32 %i.ko)
  %i.kq = and i32 %i.kj, 7
  %i.kr = shl i32 %i.kp, %i.kq
  %i.ks = and i32 %i.kr, -65536
  %i.kt = add i32 %i.kj, 16
  %i.ku = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.kt) ; 4 uses
  store i32 %i.ku, ptr %i.l, align 16, !tbaa !28
  %i.kv = lshr i32 %i.ku, 3
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 1, !tbaa !50
  %i.kz = call i32 @llvm.bswap.i32(i32 %i.ky)
  %i.la = and i32 %i.ku, 7
  %i.lb = shl i32 %i.kz, %i.la
  %i.lc = lshr i32 %i.lb, 16
  %i.ld = add i32 %i.ku, 16
  %i.le = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.ld) ; 8 uses
  store i32 %i.le, ptr %i.l, align 16, !tbaa !28
  %i.lf = or disjoint i32 %i.lc, %i.ks
  %.not.i.i = icmp eq i32 %i.lf, -1710160480
  br i1 %.not.i.i, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.lg = lshr i32 %i.le, 3
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lh ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !50
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
  store i32 %storemerge.i.i, ptr %i.l, align 16, !tbaa !28
  %i.lu = lshr i32 %storemerge.i.i, 3
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !50
  %i.ly = icmp slt i32 %storemerge.i.i, %i.kc
  %i.lz = zext i1 %i.ly to i32
  %spec.select.i60.i.i = add i32 %storemerge.i.i, %i.lz ; 5 uses
  %i.ma = zext i8 %i.lx to i32
  %i.mb = and i32 %storemerge.i.i, 7
  %i.mc = shl nuw nsw i32 %i.ma, %i.mb
  %i.md = lshr i32 %i.mc, 7
  store i32 %spec.select.i60.i.i, ptr %i.l, align 16, !tbaa !28
  %i.me = and i32 %i.md, 1                        ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 9520
  store i32 %i.me, ptr %i.mf, align 16, !tbaa !80
  %.not49.i.i = icmp eq i32 %i.me, 0
  br i1 %.not49.i.i, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mg = lshr i32 %spec.select.i60.i.i, 3
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 1, !tbaa !50
  %i.mk = call i32 @llvm.bswap.i32(i32 %i.mj)
  %i.ml = and i32 %spec.select.i60.i.i, 7
  %i.mm = shl i32 %i.mk, %i.ml
  %i.mn = lshr i32 %i.mm, 29                      ; 3 uses
  %i.mo = add i32 %spec.select.i60.i.i, 3
  %i.mp = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.mo) ; 3 uses
  store i32 %i.mp, ptr %i.l, align 16, !tbaa !28
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 9524
  store i32 %i.mn, ptr %i.mq, align 4, !tbaa !81
  %i.mr = icmp eq i32 %i.mn, 7
  br i1 %i.mr, label %.sink.split.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ms = zext nneg i32 %i.mn to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @ff_dca_dmix_primary_nch, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !50
  %i.mv = zext i8 %i.mu to i32
  %i.mw = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr @ff_dca_channels, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !50
  %i.na = zext i8 %i.mz to i32
  %i.nb = load i32, ptr %i.bz, align 8, !tbaa !82
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
  %i.nl = load i32, ptr %i.nk, align 1, !tbaa !50
  %i.nm = call i32 @llvm.bswap.i32(i32 %i.nl)
  %i.nn = and i32 %i.nh, 7
  %i.no = shl i32 %i.nm, %i.nn                    ; 2 uses
  %i.np = lshr i32 %i.no, 23
  %i.nq = add i32 %i.nh, 9
  %i.nr = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.nq) ; 3 uses
  store i32 %i.nr, ptr %i.l, align 16, !tbaa !28
  %i.ns = and i32 %i.np, 255                      ; 2 uses
  %i.nt = icmp samesign ult i32 %i.ns, 242
  br i1 %i.nt, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.nu = lshr i32 %i.no, 31
  %i.nv = add nsw i32 %i.nu, -1                   ; 2 uses
  %i.nw = zext nneg i32 %i.ns to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr @ff_dca_dmixtable, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !83
  %i.nz = zext i16 %i.ny to i32
  %i.oa = xor i32 %i.nv, %i.nz
  %i.ob = sub nsw i32 %i.oa, %i.nv
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv.i.i
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !31
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ac, !llvm.loop !84

.loopexit.i.i:                                    ; preds = %bb.ad, %bb.ab, %bb.z
  %.val51.i.i = phi i32 [ %spec.select.i60.i.i, %bb.z ], [ %i.mp, %bb.ab ], [ %i.nr, %bb.ad ] ; 2 uses
  %4 = sub nsw i32 0, %.val51.i.i
  %i.od = and i32 %4, 7
  %5 = add i32 %i.od, %.val51.i.i
  %i.oe = call i32 @llvm.umin.i32(i32 %i.kc, i32 %5)
  %i.of = add i32 %i.oe, 16
  %i.og = call i32 @llvm.umin.i32(i32 %i.kc, i32 %i.of) ; 4 uses
  store i32 %i.og, ptr %i.l, align 16, !tbaa !28
  %i.oh = getelementptr i8, ptr %i.jq, i64 528
  %.val57.i.i = load i32, ptr %i.oh, align 8, !tbaa !85
  %i.oi = and i32 %.val57.i.i, 65537
  %.not.i.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not.i.i.i, label %parse_aux_data.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.oj = or i32 %i.og, %i.le
  %i.ok = and i32 %i.oj, 7
  %i.ol = icmp ne i32 %i.ok, 0
  %i.om = icmp slt i32 %i.le, 0
  %or.cond.i.i.i = or i1 %i.om, %i.ol
  %i.on = icmp sgt i32 %i.og, %.val55.i.i
  %or.cond.i.i38 = select i1 %or.cond.i.i.i, i1 true, i1 %i.on
  br i1 %or.cond.i.i38, label %.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.oo = sub nsw i32 %i.og, %i.le                ; 2 uses
  %i.op = icmp slt i32 %i.oo, 16
  br i1 %i.op, label %.sink.split.i, label %ff_dca_check_crc.exit.i.i

ff_dca_check_crc.exit.i.i:                        ; preds = %bb.af
  %i.oq = getelementptr inbounds nuw i8, ptr %i.js, i64 77920
  %i.or = load ptr, ptr %i.oq, align 16, !tbaa !86
  %i.os = lshr i32 %i.oo, 3
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = call i32 @av_crc(ptr noundef %i.or, i32 noundef 65535, ptr noundef nonnull %i.li, i64 noundef %i.ot) #14
  %.not18.i.not.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not18.i.not.i.i, label %parse_aux_data.exit.i, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %ff_dca_check_crc.exit.i.i, %bb.af, %bb.ae, %bb.aa, %bb.w
  %.str.35.sink.i = phi ptr [ @.str.35, %bb.w ], [ @.str.38, %bb.ae ], [ @.str.36, %bb.aa ], [ @.str.38, %ff_dca_check_crc.exit.i.i ], [ @.str.38, %bb.af ], [ @.str.37, %bb.ac ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jq, i32 noundef 16, ptr noundef nonnull %.str.35.sink.i) #13
  %.pre = load ptr, ptr %0, align 16, !tbaa !32
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i, %bb.v
  %i.ov = phi ptr [ %.pre, %.sink.split.i ], [ %i.jq, %bb.v ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 528
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !85
  %i.oy = and i32 %i.ox, 8
  %.not97.i = icmp eq i32 %i.oy, 0
  br i1 %.not97.i, label %.critedge.i, label %alloc_sample_buffer.exit

.critedge.i:                                      ; preds = %bb.ag, %bb.u
  %i.oz = phi ptr [ %i.jq, %bb.u ], [ %i.ov, %bb.ag ]
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 9520
  store i32 0, ptr %i.pa, align 16, !tbaa !80
  br label %parse_aux_data.exit.i

parse_aux_data.exit.i:                            ; preds = %.critedge.i, %ff_dca_check_crc.exit.i.i, %.loopexit.i.i
  %i.pb = phi ptr [ %i.jq, %ff_dca_check_crc.exit.i.i ], [ %i.jq, %.loopexit.i.i ], [ %i.oz, %.critedge.i ] ; 13 uses
  %i.pc = load i32, ptr %i.bs, align 16, !tbaa !94
  %.not98.i = icmp eq i32 %i.pc, 0
  br i1 %.not98.i, label %parse_optional_info.exit, label %bb.ah

bb.ah:                                            ; preds = %parse_aux_data.exit.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.js, i64 77948
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !95
  %.not99.i = icmp eq i32 %i.pe, 0
  br i1 %.not99.i, label %bb.ai, label %parse_optional_info.exit

bb.ai:                                            ; preds = %bb.ah
  %i.pf = load i32, ptr %i.as, align 16, !tbaa !42 ; 3 uses
  %i.pg = sdiv i32 %i.pf, 4
  %i.ph = load i32, ptr %i.i, align 4, !tbaa !96  ; 2 uses
  %i.pi = sdiv i32 %i.ph, 32
  %..i = call i32 @llvm.smin.i32(i32 %i.pg, i32 %i.pi) ; 6 uses
  %.val.i = load i32, ptr %i.l, align 16, !tbaa !28
  %i.pj = sdiv i32 %.val.i, 32                    ; 6 uses
  %i.pk = load i32, ptr %i.br, align 4, !tbaa !97
  switch i32 %i.pk, label %parse_optional_info.exit [
    i32 0, label %bb.aj
    i32 2, label %.preheader121.i
    i32 6, label %bb.as
  ]

.preheader121.i:                                  ; preds = %bb.ai
  %.not106132.not.i = icmp sgt i32 %..i, %i.pj
  br i1 %.not106132.not.i, label %.lr.ph135.i, label %.loopexit122.i

.lr.ph135.i:                                      ; preds = %.preheader121.i
  %i.pl = load ptr, ptr %i.e, align 8, !tbaa !98
  %smin145.i = sext i32 %..i to i64
  %i.pm = sext i32 %i.pj to i64
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.pn = getelementptr inbounds nuw i8, ptr %i.js, i64 77944
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !99
  %.not109.i = icmp eq i32 %i.po, 0
  br i1 %.not109.i, label %.preheader.i36, label %parse_optional_info.exit

.preheader.i36:                                   ; preds = %bb.aj
  %.not110136.not.i = icmp sgt i32 %..i, %i.pj
  br i1 %.not110136.not.i, label %.lr.ph139.i, label %.loopexit.i

.lr.ph139.i:                                      ; preds = %.preheader.i36
  %i.pp = load ptr, ptr %i.e, align 8, !tbaa !98
  %smin148.i = sext i32 %..i to i64
  %i.pq = sext i32 %i.pj to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph139.i
  %indvars.iv149.in.i = phi i64 [ %smin148.i, %.lr.ph139.i ], [ %indvars.iv149.i, %bb.am ]
  %.0138.i = phi i32 [ 0, %.lr.ph139.i ], [ %i.pu, %bb.am ] ; 3 uses
  %indvars.iv149.i = add nsw i64 %indvars.iv149.in.i, -1 ; 4 uses
  %i.pr = shl nsw i64 %indvars.iv149.i, 2         ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %i.pp, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 1, !tbaa !50 ; 2 uses
  %i.pu = call i32 @llvm.bswap.i32(i32 %i.pt)
  %i.pv = icmp eq i32 %i.pt, 1515870810
  %i.pw = icmp ugt i32 %.0138.i, 398458879
  %or.cond120.i = and i1 %i.pw, %i.pv
  br i1 %or.cond120.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.px = lshr i32 %.0138.i, 22                   ; 2 uses
  %i.py = add nuw nsw i32 %i.px, 1
  %i.pz = trunc nsw i64 %i.pr to i32
  %i.qa = sub i32 %i.pf, %i.pz                    ; 2 uses
  %i.qb = icmp eq i32 %i.py, %i.qa
  %i.qc = icmp eq i32 %i.px, %i.qa
  %or.cond.i37 = or i1 %i.qc, %i.qb
  %i.qd = and i32 %.0138.i, 4161536
  %i.qe = icmp eq i32 %i.qd, 262144
  %or.cond114.i = and i1 %i.qe, %or.cond.i37
  br i1 %or.cond114.i, label %.loopexit.i.thread, label %bb.am

.loopexit.i.thread:                               ; preds = %bb.al
  %i.qf = trunc nsw i64 %indvars.iv149.i to i32
  %i.qg = shl nsw i32 %i.qf, 5
  %i.qh = add nsw i32 %i.qg, 49
  store i32 %i.qh, ptr %i.d, align 4, !tbaa !24
  br label %parse_optional_info.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not110.not.i = icmp sgt i64 %indvars.iv149.i, %i.pq
  br i1 %.not110.not.i, label %bb.ak, label %.loopexit.i, !llvm.loop !100

.loopexit.i:                                      ; preds = %bb.am, %.preheader.i36
  %.pr = load i32, ptr %i.d, align 4, !tbaa !24
  %.not111.i = icmp eq i32 %.pr, 0
  br i1 %.not111.i, label %bb.an, label %parse_optional_info.exit

bb.an:                                            ; preds = %.loopexit.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.pb, i32 noundef 16, ptr noundef nonnull @.str.32) #13
  %i.qi = load ptr, ptr %0, align 16, !tbaa !32   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 528
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !85
  %i.ql = and i32 %i.qk, 8
  %.not112.i = icmp eq i32 %i.ql, 0
  br i1 %.not112.i, label %parse_optional_info.exit, label %alloc_sample_buffer.exit

bb.ao:                                            ; preds = %bb.aq, %.lr.ph135.i
  %indvars.iv146.in.i = phi i64 [ %smin145.i, %.lr.ph135.i ], [ %indvars.iv146.i, %bb.aq ]
  %.1134.i = phi i32 [ 0, %.lr.ph135.i ], [ %i.qp, %bb.aq ] ; 2 uses
  %indvars.iv146.i = add nsw i64 %indvars.iv146.in.i, -1 ; 4 uses
  %i.qm = shl nsw i64 %indvars.iv146.i, 2         ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %i.pl, i64 %i.qm
  %i.qo = load i32, ptr %i.qn, align 1, !tbaa !50 ; 2 uses
  %i.qp = call i32 @llvm.bswap.i32(i32 %i.qo)
  %i.qq = icmp eq i32 %i.qo, 1660065053
  %i.qr = icmp ugt i32 %.1134.i, 99614719
  %or.cond115.i = and i1 %i.qr, %i.qq
  br i1 %or.cond115.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qs = lshr i32 %.1134.i, 20
  %i.qt = add nuw nsw i32 %i.qs, 1
  %i.qu = trunc nsw i64 %i.qm to i32
  %i.qv = sub i32 %i.pf, %i.qu
  %i.qw = icmp eq i32 %i.qt, %i.qv
  br i1 %i.qw, label %.loopexit122.i.thread, label %bb.aq

.loopexit122.i.thread:                            ; preds = %bb.ap
  %i.qx = trunc nsw i64 %indvars.iv146.i to i32
  %i.qy = shl nsw i32 %i.qx, 5
  %i.qz = add nsw i32 %i.qy, 44
  store i32 %i.qz, ptr %i.b, align 4, !tbaa !22
  br label %parse_optional_info.exit

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not106.not.i = icmp sgt i64 %indvars.iv146.i, %i.pm
  br i1 %.not106.not.i, label %bb.ao, label %.loopexit122.i, !llvm.loop !101

.loopexit122.i:                                   ; preds = %bb.aq, %.preheader121.i
  %.pr43 = load i32, ptr %i.b, align 4, !tbaa !22
  %.not107.i = icmp eq i32 %.pr43, 0
  br i1 %.not107.i, label %bb.ar, label %parse_optional_info.exit

bb.ar:                                            ; preds = %.loopexit122.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.pb, i32 noundef 16, ptr noundef nonnull @.str.33) #13
  %i.ra = load ptr, ptr %0, align 16, !tbaa !32   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 528
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !85
  %i.rd = and i32 %i.rc, 8
end_hunk_0
