inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hq_hqa_decode_frame:bb.a
bb.ac:                                            ; preds = %bb.i
  %i.ld = icmp eq i32 %i.ab, 826364232
  br i1 %i.ld, label %bb.ad, label %bb.au

bb.ad:                                            ; preds = %bb.ac
  %i.le = and i64 %i.x, 4294967295                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.lf = ptrtoint ptr %i.aa to i64
  %i.lg = sub i64 %i.v, %i.lf
  %i.lh = trunc i64 %i.lg to i32
  %i.li = icmp slt i32 %i.lh, 44
  br i1 %i.li, label %hqa_decode_frame.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 6
  %i.lk = load i16, ptr %i.aa, align 1, !tbaa !36
  %i.ll = tail call i16 @llvm.bswap.i16(i16 %i.lk) ; 2 uses
  %i.lm = zext i16 %i.ll to i32                   ; 3 uses
  %i.ln = load i16, ptr %i.lj, align 1, !tbaa !36
  %.fr.i = freeze i16 %i.ln                       ; 2 uses
  %i.lo = tail call i16 @llvm.bswap.i16(i16 %.fr.i)
  %i.lp = zext i16 %i.lo to i32                   ; 3 uses
  %i.lq = load ptr, ptr %i.d, align 16, !tbaa !29
  %i.lr = tail call i32 @ff_set_dimensions(ptr noundef %i.lq, i32 noundef %i.lm, i32 noundef %i.lp) #8 ; 2 uses
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %hqa_decode_frame.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.lu = add nuw nsw i32 %i.lm, 15
  %i.lv = and i32 %i.lu, 131056
  %i.lw = load ptr, ptr %i.d, align 16, !tbaa !29 ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 120
  store i32 %i.lv, ptr %i.lx, align 8, !tbaa !56
  %i.ly = add nuw nsw i32 %i.lp, 15
  %i.lz = and i32 %i.ly, 131056
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 124
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !57
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 652
  store i32 8, ptr %i.mb, align 4, !tbaa !40
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 136
  store i32 78, ptr %i.mc, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lw, i32 noundef 40, ptr noundef nonnull @.str.13) #8
  %i.md = load i8, ptr %i.lt, align 1, !tbaa !36  ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 12
  %i.mf = icmp ugt i8 %i.md, 15
  br i1 %i.mf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mg = zext i8 %i.md to i32
  %i.mh = load ptr, ptr %i.d, align 16, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mh, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %i.mg) #8
  br label %hqa_decode_frame.exit

bb.ah:                                            ; preds = %bb.af
  %i.mi = load ptr, ptr %i.d, align 16, !tbaa !29
  %i.mj = tail call i32 @ff_get_buffer(ptr noundef %i.mi, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %hqa_decode_frame.exit, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.ah
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.mm = load i32, ptr %i.me, align 1, !tbaa !36
  %i.mn = tail call i32 @llvm.bswap.i32(i32 %i.mm)
  %i.mo = add i32 %i.mn, -4                       ; 3 uses
  store i32 %i.mo, ptr %i.a, align 16, !tbaa !39
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 20
  %i.mq = load i32, ptr %i.ml, align 1, !tbaa !36
  %i.mr = tail call i32 @llvm.bswap.i32(i32 %i.mq)
  %i.ms = add i32 %i.mr, -4                       ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !39
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.mv = load i32, ptr %i.mp, align 1, !tbaa !36
  %i.mw = tail call i32 @llvm.bswap.i32(i32 %i.mv)
  %i.mx = add i32 %i.mw, -4                       ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.mx, ptr %i.my, align 8, !tbaa !39
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 28
  %i.na = load i32, ptr %i.mu, align 1, !tbaa !36
  %i.nb = tail call i32 @llvm.bswap.i32(i32 %i.na)
  %i.nc = add i32 %i.nb, -4                       ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.nf = load i32, ptr %i.mz, align 1, !tbaa !36
  %i.ng = tail call i32 @llvm.bswap.i32(i32 %i.nf)
  %i.nh = add i32 %i.ng, -4                       ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.nh, ptr %i.ni, align 16, !tbaa !39
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 36
  %i.nk = load i32, ptr %i.ne, align 1, !tbaa !36
  %i.nl = tail call i32 @llvm.bswap.i32(i32 %i.nk)
  %i.nm = add i32 %i.nl, -4                       ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !39
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.np = load i32, ptr %i.nj, align 1, !tbaa !36
  %i.nq = tail call i32 @llvm.bswap.i32(i32 %i.np)
  %i.nr = add i32 %i.nq, -4                       ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.nr, ptr %i.ns, align 8, !tbaa !39
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 44
  %i.nu = load i32, ptr %i.no, align 1, !tbaa !36
  %i.nv = tail call i32 @llvm.bswap.i32(i32 %i.nu)
  %i.nw = add i32 %i.nv, -4                       ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !39
  %i.ny = load i32, ptr %i.nt, align 1, !tbaa !36
  %i.nz = tail call i32 @llvm.bswap.i32(i32 %i.ny)
  %i.oa = add i32 %i.nz, -4                       ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.oa, ptr %i.ob, align 16, !tbaa !39
  %.not.i.i = icmp eq i16 %.fr.i, 0
  %i.oc = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.d, i64 400 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.d, i64 528 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.d, i64 656 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 784 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.d, i64 912 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.d, i64 1040 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 1168 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.d, i64 1296 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.d, i64 1424 ; 2 uses
  %i.oo = zext nneg i8 %i.md to i64
  %i.op = getelementptr inbounds nuw [64 x i8], ptr @hq_quants, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 12 uses
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.oy = zext i16 %i.ll to i64
  br i1 %.not.i.i, label %.preheader.split.us.preheader.i, label %.preheader.split.i

.preheader.split.us.preheader.i:                  ; preds = %.preheader63.i
  %i.oz = icmp ult i32 %i.mo, 27
  br i1 %i.oz, label %.split.us.i, label %bb.ai

bb.ai:                                            ; preds = %.preheader.split.us.preheader.i
  %.not.us.i = icmp uge i32 %i.mo, %i.ms
  %i.pa = zext i32 %i.ms to i64
  %i.pb = icmp samesign ult i64 %i.le, %i.pa
  %or.cond.us.i = select i1 %.not.us.i, i1 true, i1 %i.pb
  br i1 %or.cond.us.i, label %.split.us.i, label %hqa_decode_slice.exit.us.i

hqa_decode_slice.exit.us.i:                       ; preds = %bb.ai
  %.not.us.1.i = icmp uge i32 %i.ms, %i.mx
  %i.pc = zext i32 %i.mx to i64
  %i.pd = icmp samesign ult i64 %i.le, %i.pc
  %or.cond.us.1.i = select i1 %.not.us.1.i, i1 true, i1 %i.pd
  br i1 %or.cond.us.1.i, label %.split.us.i, label %hqa_decode_slice.exit.us.1.i

hqa_decode_slice.exit.us.1.i:                     ; preds = %hqa_decode_slice.exit.us.i
  %.not.us.2.i = icmp uge i32 %i.mx, %i.nc
  %i.pe = zext i32 %i.nc to i64
  %i.pf = icmp samesign ult i64 %i.le, %i.pe
  %or.cond.us.2.i = select i1 %.not.us.2.i, i1 true, i1 %i.pf
  br i1 %or.cond.us.2.i, label %.split.us.i, label %hqa_decode_slice.exit.us.2.i

hqa_decode_slice.exit.us.2.i:                     ; preds = %hqa_decode_slice.exit.us.1.i
  %.not.us.3.i = icmp uge i32 %i.nc, %i.nh
  %i.pg = zext i32 %i.nh to i64
  %i.ph = icmp samesign ult i64 %i.le, %i.pg
  %or.cond.us.3.i = select i1 %.not.us.3.i, i1 true, i1 %i.ph
  br i1 %or.cond.us.3.i, label %.split.us.i, label %hqa_decode_slice.exit.us.3.i

hqa_decode_slice.exit.us.3.i:                     ; preds = %hqa_decode_slice.exit.us.2.i
  %.not.us.4.i = icmp uge i32 %i.nh, %i.nm
  %i.pi = zext i32 %i.nm to i64
  %i.pj = icmp samesign ult i64 %i.le, %i.pi
  %or.cond.us.4.i = select i1 %.not.us.4.i, i1 true, i1 %i.pj
  br i1 %or.cond.us.4.i, label %.split.us.i, label %hqa_decode_slice.exit.us.4.i

hqa_decode_slice.exit.us.4.i:                     ; preds = %hqa_decode_slice.exit.us.3.i
  %.not.us.5.i = icmp uge i32 %i.nm, %i.nr
  %i.pk = zext i32 %i.nr to i64
  %i.pl = icmp samesign ult i64 %i.le, %i.pk
  %or.cond.us.5.i = select i1 %.not.us.5.i, i1 true, i1 %i.pl
  br i1 %or.cond.us.5.i, label %.split.us.i, label %hqa_decode_slice.exit.us.5.i

hqa_decode_slice.exit.us.5.i:                     ; preds = %hqa_decode_slice.exit.us.4.i
  %.not.us.6.i = icmp uge i32 %i.nr, %i.nw
  %i.pm = zext i32 %i.nw to i64
  %i.pn = icmp samesign ult i64 %i.le, %i.pm
  %or.cond.us.6.i = select i1 %.not.us.6.i, i1 true, i1 %i.pn
  br i1 %or.cond.us.6.i, label %.split.us.i, label %hqa_decode_slice.exit.us.6.i

hqa_decode_slice.exit.us.6.i:                     ; preds = %hqa_decode_slice.exit.us.5.i
  %.not.us.7.i = icmp uge i32 %i.nw, %i.oa
  %i.po = zext i32 %i.oa to i64
  %i.pp = icmp samesign ult i64 %i.le, %i.po
  %or.cond.us.7.i = select i1 %.not.us.7.i, i1 true, i1 %i.pp
  br i1 %or.cond.us.7.i, label %.split.us.i, label %hqa_decode_frame.exit

.preheader.split.i:                               ; preds = %.preheader63.i, %hqa_decode_slice.exit.loopexit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %hqa_decode_slice.exit.loopexit.i ], [ 0, %.preheader63.i ] ; 4 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i53
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !39 ; 4 uses
  %i.ps = icmp ult i32 %i.pr, 27
  br i1 %i.ps, label %.split.us.i, label %bb.aj

bb.aj:                                            ; preds = %.preheader.split.i
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 3 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i54
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !39 ; 3 uses
  %.not.i55 = icmp uge i32 %i.pr, %i.pu
  %i.pv = zext i32 %i.pu to i64
  %i.pw = icmp samesign ult i64 %i.le, %i.pv
  %or.cond.i56 = select i1 %.not.i55, i1 true, i1 %i.pw
  br i1 %or.cond.i56, label %.split.us.i, label %.lr.ph38.i.i

.split.us.i:                                      ; preds = %bb.aj, %.preheader.split.i, %hqa_decode_slice.exit.us.6.i, %hqa_decode_slice.exit.us.5.i, %hqa_decode_slice.exit.us.4.i, %hqa_decode_slice.exit.us.3.i, %hqa_decode_slice.exit.us.2.i, %hqa_decode_slice.exit.us.1.i, %hqa_decode_slice.exit.us.i, %bb.ai, %.preheader.split.us.preheader.i
  %i.px = load ptr, ptr %i.d, align 16, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.px, i32 noundef 16, ptr noundef nonnull @.str.11, i64 noundef range(i64 4, 4294967296) %i.le) #8
  br label %hqa_decode_frame.exit

.lr.ph38.i.i:                                     ; preds = %bb.aj
  %i.py = zext i32 %i.pr to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.py ; 5 uses
  %i.qa = sub nuw i32 %i.pu, %i.pr
  %i.qb = shl i32 %i.qa, 3                        ; 2 uses
  %or.cond.i.i57 = icmp ult i32 %i.qb, 2147483135
  %.013.i.i = select i1 %or.cond.i.i57, i32 %i.qb, i32 0 ; 2 uses
  %i.qc = add nuw nsw i32 %.013.i.i, 8            ; 6 uses
  %4 = trunc i64 %indvars.iv.i53 to i3
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i53 to i32
  %i.qd = shl i32 %indvars.iv.tr.i, 4
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i, %.lr.ph38.i.i
  %.sroa.4.0.i = phi i32 [ 0, %.lr.ph38.i.i ], [ %.sroa.4.1.i, %._crit_edge.i.i ] ; 2 uses
  %indvars.iv.i.i58 = phi i3 [ %4, %.lr.ph38.i.i ], [ %indvars.iv.next.i.i59, %._crit_edge.i.i ] ; 2 uses
  %.02036.i.i = phi i32 [ 0, %.lr.ph38.i.i ], [ %i.yb, %._crit_edge.i.i ] ; 10 uses
  %i.qe = mul nuw nsw i32 %.02036.i.i, 3
  %i.qf = add nuw nsw i32 %i.qe, %i.qd
  %i.qg = and i32 %i.qf, 112
  %i.qh = icmp samesign ult i32 %i.qg, %i.lm
  br i1 %i.qh, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ak
  %5 = zext i3 %indvars.iv.i.i58 to i64
  %6 = shl nuw nsw i64 %5, 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i.i, %.lr.ph.preheader.i.i
  %.sroa.4.2.i = phi i32 [ %.sroa.4.0.i, %.lr.ph.preheader.i.i ], [ %.sroa.4.5.i, %.loopexit.i.i.i ] ; 4 uses
  %indvars.iv46.i.i = phi i64 [ %6, %.lr.ph.preheader.i.i ], [ %indvars.iv.next47.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.not85.i.i.i = icmp sgt i32 %.013.i.i, %.sroa.4.2.i
  br i1 %.not85.i.i.i, label %bb.al, label %hqa_decode_slice.exit.thread.i

bb.al:                                            ; preds = %.lr.ph.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) %i.oc, i8 0, i64 1536, i1 false)
  store i16 -8192, ptr %i.oc, align 16, !tbaa !48
  store i16 -8192, ptr %i.od, align 16, !tbaa !48
  store i16 -8192, ptr %i.oe, align 16, !tbaa !48
  store i16 -8192, ptr %i.of, align 16, !tbaa !48
  store i16 -8192, ptr %i.og, align 16, !tbaa !48
  store i16 -8192, ptr %i.oh, align 16, !tbaa !48
  store i16 -8192, ptr %i.oi, align 16, !tbaa !48
  store i16 -8192, ptr %i.oj, align 16, !tbaa !48
  store i16 -8192, ptr %i.ok, align 16, !tbaa !48
  store i16 -8192, ptr %i.ol, align 16, !tbaa !48
  store i16 -8192, ptr %i.om, align 16, !tbaa !48
  store i16 -8192, ptr %i.on, align 16, !tbaa !48
  %i.qi = lshr i32 %.sroa.4.2.i, 3
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 1, !tbaa !36
  %i.qm = tail call i32 @llvm.bswap.i32(i32 %i.ql)
  %i.qn = and i32 %.sroa.4.2.i, 7
  %i.qo = shl i32 %i.qm, %i.qn
  %i.qp = lshr i32 %i.qo, 27
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr @ff_hq_cbp_vlc, i64 %i.qq ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 2
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !36
  %i.qu = sext i16 %i.qt to i32
  %i.qv = load i16, ptr %i.qr, align 4, !tbaa !36 ; 3 uses
  %i.qw = add i32 %.sroa.4.2.i, %i.qu
  %i.qx = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.qw) ; 5 uses
  %.not.i.i.i62 = icmp eq i16 %i.qv, 0
  br i1 %.not.i.i.i62, label %.loopexit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qy = sext i16 %i.qv to i32                   ; 2 uses
  %i.qz = lshr i32 %i.qx, 3
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !36
  %i.rd = icmp slt i32 %i.qx, %i.qc
  %i.re = zext i1 %i.rd to i32
  %spec.select.i.i.i.i = add i32 %i.qx, %i.re     ; 2 uses
  %i.rf = zext i8 %i.rc to i32
  %i.rg = and i32 %i.qx, 7
  %i.rh = shl nuw nsw i32 %i.rf, %i.rg
  %.fr94.i.i.i = freeze i32 %i.rh
  %i.ri = lshr i32 %.fr94.i.i.i, 7
  %i.rj = and i32 %i.ri, 1
  %i.rk = and i16 %i.qv, 3
  %.not74.i.i.i = icmp eq i16 %i.rk, 0
  %i.rl = or i32 %i.qy, 1280
  %spec.select.i.i.i63 = select i1 %.not74.i.i.i, i32 %i.qy, i32 %i.rl ; 3 uses
  %i.rm = and i32 %spec.select.i.i.i63, 12
  %.not75.i.i.i = icmp eq i32 %i.rm, 0
  %i.rn = or i32 %spec.select.i.i.i63, 2560
  %.1.i.i.i = select i1 %.not75.i.i.i, i32 %spec.select.i.i.i63, i32 %i.rn
  br label %bb.an

bb.an:                                            ; preds = %hq_decode_block.exit.i.i.i, %bb.am
  %.sroa.4.3.i = phi i32 [ %spec.select.i.i.i.i, %bb.am ], [ %.sroa.4.4.i, %hq_decode_block.exit.i.i.i ]
  %i.ro = phi i32 [ %spec.select.i.i.i.i, %bb.am ], [ %i.up, %hq_decode_block.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.am ], [ %indvars.iv.next.i.i.i, %hq_decode_block.exit.i.i.i ] ; 4 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.rq = shl nuw nsw i32 1, %i.rp
  %i.rr = and i32 %i.rq, %.1.i.i.i
  %.not76.i.i.i = icmp eq i32 %i.rr, 0
  br i1 %.not76.i.i.i, label %hq_decode_block.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rs = getelementptr inbounds nuw [128 x i8], ptr %i.oc, i64 %indvars.iv.i.i.i ; 2 uses
  %i.rt = icmp samesign ugt i64 %indvars.iv.i.i.i, 7
  %i.ru = zext i1 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [32 x i8], ptr %i.op, i64 %i.ru
  %i.rw = lshr i32 %i.ro, 3
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 1, !tbaa !36
  %i.sa = tail call i32 @llvm.bswap.i32(i32 %i.rz)
  %i.sb = and i32 %i.ro, 7
  %i.sc = shl i32 %i.sa, %i.sb
  %i.sd = lshr i32 %i.sc, 30
  %i.se = add i32 %i.ro, 2
  %i.sf = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.se) ; 3 uses
  %i.sg = zext nneg i32 %i.sd to i64
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.sg
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !50
  %i.sj = lshr i32 %i.sf, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 1, !tbaa !36
  %i.sn = tail call i32 @llvm.bswap.i32(i32 %i.sm)
  %i.so = and i32 %i.sf, 7
  %i.sp = shl i32 %i.sn, %i.so
  %i.sq = add i32 %i.sf, 9
  %i.sr = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.sq)
  %sh.diff.i.i.i.i = ashr i32 %i.sp, 17
  %tr.sh.diff.i.i.i.i = trunc nsw i32 %sh.diff.i.i.i.i to i16
  %i.ss = and i16 %tr.sh.diff.i.i.i.i, -64
  store i16 %i.ss, ptr %i.rs, align 2, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.ao
  %.063.i.i.i.i = phi i32 [ %i.sr, %bb.ao ], [ %i.ua, %bb.at ] ; 4 uses
  %.060.i.i.i.i = phi i32 [ 0, %bb.ao ], [ %i.ud, %bb.at ]
  %i.st = lshr i32 %.063.i.i.i.i, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 1, !tbaa !36
  %i.sx = tail call i32 @llvm.bswap.i32(i32 %i.sw)
  %i.sy = and i32 %.063.i.i.i.i, 7
  %i.sz = shl i32 %i.sx, %i.sy                    ; 2 uses
  %i.ta = lshr i32 %i.sz, 23
  %i.tb = zext nneg i32 %i.ta to i64              ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr @hq_ac_rvlc, i64 %i.tb ; 2 uses
  %i.td = load i16, ptr %i.tc, align 4, !tbaa !36
  %i.te = sext i16 %i.td to i32                   ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 2
  %i.tg = load i8, ptr %i.tf, align 2, !tbaa !36  ; 2 uses
  %i.th = sext i8 %i.tg to i32                    ; 2 uses
  %i.ti = icmp slt i8 %i.tg, 0
  br i1 %i.ti, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.tj = shl i32 %i.sz, 9
  %i.tk = add i32 %.063.i.i.i.i, 9
  %i.tl = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.tk)
  %i.tm = add nsw i32 %i.th, 32
  %i.tn = lshr i32 %i.tj, %i.tm
  %i.to = add i32 %i.tn, %i.te
  %i.tp = zext i32 %i.to to i64                   ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr @hq_ac_rvlc, i64 %i.tp ; 2 uses
  %i.tr = load i16, ptr %i.tq, align 4, !tbaa !36
  %i.ts = sext i16 %i.tr to i32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 2
  %i.tu = load i8, ptr %i.tt, align 2, !tbaa !36
  %i.tv = sext i8 %i.tu to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pre-phi.i.i.i.i = phi i64 [ %i.tp, %bb.aq ], [ %i.tb, %bb.ap ]
  %.164.i.i.i.i = phi i32 [ %i.tl, %bb.aq ], [ %.063.i.i.i.i, %bb.ap ]
  %.059.i.i.i.i = phi i32 [ %i.ts, %bb.aq ], [ %i.te, %bb.ap ]
  %.057.i.i.i.i = phi i32 [ %i.tv, %bb.aq ], [ %i.th, %bb.ap ]
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr @hq_ac_rvlc, i64 %.pre-phi.i.i.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 3
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !36  ; 2 uses
  %i.tz = add i32 %.057.i.i.i.i, %.164.i.i.i.i
  %i.ua = tail call i32 @llvm.umin.i32(i32 %i.qc, i32 %i.tz) ; 3 uses
  %i.ub = icmp eq i8 %i.ty, 0
  br i1 %i.ub, label %hqa_decode_slice.exit.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.uc = zext i8 %i.ty to i32
  %i.ud = add nuw nsw i32 %.060.i.i.i.i, %i.uc    ; 3 uses
  %i.ue = icmp samesign ugt i32 %i.ud, 63
  br i1 %i.ue, label %hq_decode_block.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.uf = zext nneg i32 %i.ud to i64              ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !39
  %i.ui = mul i32 %i.uh, %.059.i.i.i.i
  %i.uj = lshr i32 %i.ui, 12
  %i.uk = trunc i32 %i.uj to i16
  %i.ul = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %i.uf
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !36
  %i.un = zext i8 %i.um to i64
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.rs, i64 %i.un
  store i16 %i.uk, ptr %i.uo, align 2, !tbaa !48
  br label %bb.ap

hq_decode_block.exit.i.i.i:                       ; preds = %bb.as, %bb.an
  %.sroa.4.4.i = phi i32 [ %.sroa.4.3.i, %bb.an ], [ %i.ua, %bb.as ] ; 2 uses
  %i.up = phi i32 [ %i.ro, %bb.an ], [ %i.ua, %bb.as ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 12
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.an, !llvm.loop !58

.loopexit.i.i.i:                                  ; preds = %hq_decode_block.exit.i.i.i, %bb.al
  %.sroa.4.5.i = phi i32 [ %i.qx, %bb.al ], [ %.sroa.4.4.i, %hq_decode_block.exit.i.i.i ] ; 2 uses
  %.069.i.i.i = phi i32 [ 0, %bb.al ], [ %i.rj, %hq_decode_block.exit.i.i.i ] ; 13 uses
  %i.uq = load ptr, ptr %i.oq, align 8, !tbaa !52
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 %indvars.iv46.i.i ; 2 uses
  %i.us = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.ut = load i32, ptr %i.ot, align 4, !tbaa !39 ; 2 uses
  %i.uu = mul nsw i32 %i.ut, %.02036.i.i
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds i8, ptr %i.ur, i64 %i.uv
  %i.ux = shl i32 %i.ut, %.069.i.i.i
  tail call void %i.us(ptr noundef %i.uw, i32 noundef %i.ux, ptr noundef nonnull %i.oc) #8, !inline_history !59
  %i.uy = load ptr, ptr %i.or, align 8, !tbaa !53
  %.not.i.i.i.i = icmp eq i32 %.069.i.i.i, 0
  %spec.select = select i1 %.not.i.i.i.i, i32 8, i32 1
  %i.uz = or disjoint i32 %spec.select, %.02036.i.i ; 6 uses
  %i.va = load i32, ptr %i.ot, align 4, !tbaa !39 ; 2 uses
  %i.vb = mul nsw i32 %i.va, %i.uz
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds i8, ptr %i.ur, i64 %i.vc
  %i.ve = shl i32 %i.va, %.069.i.i.i
  tail call void %i.uy(ptr noundef %i.vd, i32 noundef %i.ve, ptr noundef nonnull %i.oe) #8, !inline_history !59
  %i.vf = or disjoint i64 %indvars.iv46.i.i, 8    ; 2 uses
  %i.vg = load ptr, ptr %i.oq, align 8, !tbaa !52
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vf ; 2 uses
  %i.vi = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.vj = load i32, ptr %i.ot, align 4, !tbaa !39 ; 2 uses
  %i.vk = mul nsw i32 %i.vj, %.02036.i.i
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds i8, ptr %i.vh, i64 %i.vl
  %i.vn = shl i32 %i.vj, %.069.i.i.i
  tail call void %i.vi(ptr noundef nonnull %i.vm, i32 noundef %i.vn, ptr noundef nonnull %i.od) #8, !inline_history !59
  %i.vo = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.vp = load i32, ptr %i.ot, align 4, !tbaa !39 ; 2 uses
  %i.vq = mul nsw i32 %i.vp, %i.uz
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr inbounds i8, ptr %i.vh, i64 %i.vr
  %i.vt = shl i32 %i.vp, %.069.i.i.i
  tail call void %i.vo(ptr noundef nonnull %i.vs, i32 noundef %i.vt, ptr noundef nonnull %i.of) #8, !inline_history !59
  %i.vu = load ptr, ptr %1, align 8, !tbaa !52
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 %indvars.iv46.i.i ; 2 uses
  %i.vw = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.vx = load i32, ptr %i.os, align 8, !tbaa !39 ; 2 uses
  %i.vy = mul nsw i32 %i.vx, %.02036.i.i
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds i8, ptr %i.vv, i64 %i.vz
  %i.wb = shl i32 %i.vx, %.069.i.i.i
  tail call void %i.vw(ptr noundef %i.wa, i32 noundef %i.wb, ptr noundef nonnull %i.og) #8, !inline_history !59
  %i.wc = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.wd = load i32, ptr %i.os, align 8, !tbaa !39 ; 2 uses
  %i.we = mul nsw i32 %i.wd, %i.uz
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds i8, ptr %i.vv, i64 %i.wf
  %i.wh = shl i32 %i.wd, %.069.i.i.i
  tail call void %i.wc(ptr noundef %i.wg, i32 noundef %i.wh, ptr noundef nonnull %i.oi) #8, !inline_history !59
  %i.wi = load ptr, ptr %1, align 8, !tbaa !52
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.vf ; 2 uses
  %i.wk = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.wl = load i32, ptr %i.os, align 8, !tbaa !39 ; 2 uses
  %i.wm = mul nsw i32 %i.wl, %.02036.i.i
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds i8, ptr %i.wj, i64 %i.wn
  %i.wp = shl i32 %i.wl, %.069.i.i.i
  tail call void %i.wk(ptr noundef nonnull %i.wo, i32 noundef %i.wp, ptr noundef nonnull %i.oh) #8, !inline_history !59
  %i.wq = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.wr = load i32, ptr %i.os, align 8, !tbaa !39 ; 2 uses
  %i.ws = mul nsw i32 %i.wr, %i.uz
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds i8, ptr %i.wj, i64 %i.wt
  %i.wv = shl i32 %i.wr, %.069.i.i.i
  tail call void %i.wq(ptr noundef nonnull %i.wu, i32 noundef %i.wv, ptr noundef nonnull %i.oj) #8, !inline_history !59
  %i.ww = lshr exact i64 %indvars.iv46.i.i, 1     ; 2 uses
  %i.wx = load ptr, ptr %i.ou, align 8, !tbaa !52
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.ww ; 2 uses
  %i.wz = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.xa = load i32, ptr %i.ov, align 8, !tbaa !39 ; 2 uses
  %i.xb = mul nsw i32 %i.xa, %.02036.i.i
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds i8, ptr %i.wy, i64 %i.xc
  %i.xe = shl i32 %i.xa, %.069.i.i.i
  tail call void %i.wz(ptr noundef %i.xd, i32 noundef %i.xe, ptr noundef nonnull %i.ok) #8, !inline_history !59
  %i.xf = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.xg = load i32, ptr %i.ov, align 8, !tbaa !39 ; 2 uses
  %i.xh = mul nsw i32 %i.xg, %i.uz
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds i8, ptr %i.wy, i64 %i.xi
  %i.xk = shl i32 %i.xg, %.069.i.i.i
  tail call void %i.xf(ptr noundef %i.xj, i32 noundef %i.xk, ptr noundef nonnull %i.ol) #8, !inline_history !59
  %i.xl = load ptr, ptr %i.ow, align 8, !tbaa !52
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.ww ; 2 uses
  %i.xn = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.xo = load i32, ptr %i.ox, align 4, !tbaa !39 ; 2 uses
  %i.xp = mul nsw i32 %i.xo, %.02036.i.i
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds i8, ptr %i.xm, i64 %i.xq
  %i.xs = shl i32 %i.xo, %.069.i.i.i
  tail call void %i.xn(ptr noundef %i.xr, i32 noundef %i.xs, ptr noundef nonnull %i.om) #8, !inline_history !59
  %i.xt = load ptr, ptr %i.or, align 8, !tbaa !53
  %i.xu = load i32, ptr %i.ox, align 4, !tbaa !39 ; 2 uses
  %i.xv = mul nsw i32 %i.xu, %i.uz
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.xm, i64 %i.xw
  %i.xy = shl i32 %i.xu, %.069.i.i.i
  tail call void %i.xt(ptr noundef %i.xx, i32 noundef %i.xy, ptr noundef nonnull %i.on) #8, !inline_history !59
  %indvars.iv.next47.i.i = add nuw nsw i64 %indvars.iv46.i.i, 128 ; 2 uses
  %i.xz = icmp samesign ult i64 %indvars.iv.next47.i.i, %i.oy
  br i1 %i.xz, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !60

hqa_decode_slice.exit.thread.i:                   ; preds = %.lr.ph.i.i, %bb.ar
  %.03542.i.i = trunc i64 %indvars.iv46.i.i to i32
  %i.ya = load ptr, ptr %i.d, align 16, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ya, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %.02036.i.i, i32 noundef %.03542.i.i) #8
  br label %hqa_decode_frame.exit

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i.i, %bb.ak
  %.sroa.4.1.i = phi i32 [ %.sroa.4.0.i, %bb.ak ], [ %.sroa.4.5.i, %.loopexit.i.i.i ]
  %i.yb = add nuw nsw i32 %.02036.i.i, 16         ; 2 uses
  %i.yc = icmp samesign ult i32 %i.yb, %i.lp
  %indvars.iv.next.i.i59 = add i3 %indvars.iv.i.i58, 3
  br i1 %i.yc, label %bb.ak, label %hqa_decode_slice.exit.loopexit.i, !llvm.loop !61

hqa_decode_slice.exit.loopexit.i:                 ; preds = %._crit_edge.i.i
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i54, 8
  br i1 %exitcond.not.i60, label %hqa_decode_frame.exit, label %.preheader.split.i, !llvm.loop !62

hqa_decode_frame.exit:                            ; preds = %hqa_decode_slice.exit.loopexit.i, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %hqa_decode_slice.exit.us.6.i, %.split.us.i, %hqa_decode_slice.exit.thread.i
  %.2.i = phi i32 [ -1094995529, %bb.ad ], [ %i.lr, %bb.ae ], [ -1094995529, %bb.ag ], [ %i.mj, %bb.ah ], [ -1094995529, %hqa_decode_slice.exit.thread.i ], [ 0, %.split.us.i ], [ 0, %hqa_decode_slice.exit.us.6.i ], [ 0, %hqa_decode_slice.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.av

bb.au:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #8
  br label %bb.ay

bb.av:                                            ; preds = %hqa_decode_frame.exit, %hq_decode_frame.exit
  %.044 = phi i32 [ %.169.i, %hq_decode_frame.exit ], [ %.2.i, %hqa_decode_frame.exit ] ; 2 uses
  %i.yd = icmp slt i32 %.044, 0
  br i1 %i.yd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.5) #8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  store i32 1, ptr %2, align 4, !tbaa !39
  %i.ye = load i32, ptr %i.e, align 8, !tbaa !33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.h, %.critedge, %bb.ax, %bb.aw, %bb.au, %bb.b
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.h ], [ -1094995529, %.critedge ], [ %.044, %bb.aw ], [ %i.ye, %bb.ax ], [ -1094995529, %bb.au ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ff_hqdsp_init(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @hq_init_static() #0 {
bb.a:
  tail call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @hq_ac_rvlc, i32 noundef 1184, i32 noundef 9, i32 noundef 747, ptr noundef nonnull @hq_ac_lens, i32 noundef 1, ptr noundef nonnull @hq_ac_sym, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.02831 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @hq_ac_rvlc, i64 %.02831 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !36   ; 2 uses
  %i.d = load i16, ptr %i.a, align 4, !tbaa !36   ; 3 uses
  %i.e = icmp sgt i16 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i16 %i.d, 7
  %i.g = trunc i16 %i.d to i8
  %i.h = and i8 %i.g, 127
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.h, ptr %i.i, align 1, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.027 = phi i16 [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.j = trunc i16 %i.c to i8
  store i8 %i.j, ptr %i.b, align 2, !tbaa !36
  store i16 %.027, ptr %i.a, align 4, !tbaa !36
  %i.k = add nuw nsw i64 %.02831, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, 1184
  br i1 %exitcond.not, label %.preheader29, label %bb.b, !llvm.loop !63

.preheader29:                                     ; preds = %bb.d, %bb.f
  %.02634 = phi i64 [ %i.q, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @hq_quant_map, i64 %.02634
  %i.m = getelementptr inbounds nuw [64 x i8], ptr @hq_quants, i64 %.02634
  br label %.preheader

bb.e:                                             ; preds = %bb.f
  ret void

.preheader:                                       ; preds = %.preheader29, %bb.g
  %i.n = phi i1 [ true, %.preheader29 ], [ false, %bb.g ]
  %.02533 = phi i64 [ 0, %.preheader29 ], [ 1, %bb.g ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02533
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.02533
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  %i.q = add nuw nsw i64 %.02634, 1               ; 2 uses
  %exitcond36.not = icmp eq i64 %i.q, 16
  br i1 %exitcond36.not, label %bb.e, label %.preheader29, !llvm.loop !64

bb.g:                                             ; preds = %bb.h
  br i1 %i.n, label %.preheader, label %bb.f, !llvm.loop !65

bb.h:                                             ; preds = %.preheader, %bb.h
  %.032 = phi i64 [ 0, %.preheader ], [ %i.w, %bb.h ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.032
  %i.s = load i8, ptr %i.r, align 1, !tbaa !36
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [256 x i8], ptr @qmats, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.032
  store ptr %i.u, ptr %i.v, align 8, !tbaa !50
  %i.w = add nuw nsw i64 %.032, 1                 ; 2 uses
  %exitcond35.not = icmp eq i64 %i.w, 4
  br i1 %exitcond35.not, label %bb.g, label %bb.h, !llvm.loop !66
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @ff_vlc_init_table_from_lengths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_canopus_parse_info_tag(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"HQContext", !31, i64 0, !32, i64 8, !7, i64 16}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"HQDSPContext", !12, i64 0}
!33 = !{!34, !6, i64 32}
!34 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!35 = !{!34, !16, i64 24}
!36 = !{!7, !7, i64 0}
!37 = !{!38, !6, i64 12}
!38 = !{!"HQProfile", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!39 = !{!6, !6, i64 0}
!40 = !{!10, !6, i64 652}
!41 = !{!10, !6, i64 136}
end_hunk_0
