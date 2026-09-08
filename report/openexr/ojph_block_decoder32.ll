Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder32?download=true
inline.NumInlined: 42
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4ojph5local23ojph_decode_codeblock32EPhPjjjjjjjjb:bb.a
  %i.ht = icmp eq i32 %i.hs, -1
  %i.hu = select i1 %i.ht, i16 %i.hp, i16 0       ; 2 uses
  %i.hv = icmp slt i32 %.1750, 2
  br i1 %i.hv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hw = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.0762 = phi i16 [ %i.hu, %bb.ad ], [ %i.hu, %bb.ac ], [ %i.hp, %bb.ab ]
  %.2751 = phi i32 [ %i.hw, %bb.ad ], [ %i.hs, %bb.ac ], [ %.1750, %bb.ab ] ; 3 uses
  %i.hx = select i1 %i.hr, i16 %.0762, i16 0      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0759947, i64 4
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !62
  %i.hz = add i32 %.0760946, 4                    ; 2 uses
  %i.ia = zext i16 %i.hx to i32                   ; 4 uses
  %i.ib = shl nuw nsw i32 %i.ia, 3
  %i.ic = and i32 %i.ib, 128
  %i.id = shl nuw nsw i32 %i.ia, 2
  %i.ie = and i32 %i.id, 896
  %i.if = or i32 %i.ic, %i.ie
  %i.ig = and i32 %i.ia, 7                        ; 2 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = lshr i64 %i.hi, %i.ih                   ; 2 uses
  %i.ij = add nuw nsw i32 %i.hf, %i.ig
  %i.ik = trunc i64 %i.ii to i32
  %i.il = and i32 %i.ha, 64
  %i.im = shl nuw nsw i32 %i.ia, 4
  %i.in = and i32 %i.im, 128
  %i.io = or disjoint i32 %i.in, %i.il            ; 2 uses
  %i.ip = icmp eq i32 %i.io, 192
  br i1 %i.ip, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.iq = add nsw i32 %.2751, -2                  ; 2 uses
  %i.ir = icmp eq i32 %i.iq, -1
  %i.is = select i1 %i.ir, i32 256, i32 192       ; 2 uses
  %i.it = icmp slt i32 %.2751, 2
  br i1 %i.it, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.iu = call fastcc noundef i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr noundef %10)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.0781 = phi i32 [ %i.is, %bb.ag ], [ %i.is, %bb.af ], [ %i.io, %bb.ae ]
  %.3752 = phi i32 [ %i.iu, %bb.ag ], [ %i.iq, %bb.af ], [ %.2751, %bb.ae ] ; 2 uses
  %i.iv = and i32 %i.ik, 63
  %i.iw = add nuw nsw i32 %.0781, %i.iv
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr @_ZN4ojph5local9uvlc_tbl0E, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !62
  %i.ja = zext i16 %i.iz to i32                   ; 5 uses
  %i.jb = and i32 %i.ja, 7                        ; 2 uses
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = lshr i64 %i.ii, %i.jc                   ; 2 uses
  %i.je = add nuw nsw i32 %i.ij, %i.jb
  %i.jf = trunc i64 %i.jd to i32
  %i.jg = lshr i32 %i.ja, 3
  %i.jh = and i32 %i.jg, 15                       ; 3 uses
  %notmask882 = shl nsw i32 -1, %i.jh
  %i.ji = xor i32 %notmask882, -1
  %i.jj = and i32 %i.jf, %i.ji                    ; 2 uses
  %i.jk = zext nneg i32 %i.jh to i64
  %i.jl = lshr i64 %i.jd, %i.jk
  store i64 %i.jl, ptr %i.ay, align 8, !tbaa !22
  %i.jm = add nuw nsw i32 %i.je, %i.jh
  %i.jn = sub i32 %i.hj, %i.jm
  store i32 %i.jn, ptr %i.az, align 8, !tbaa !23
  %i.jo = lshr i32 %i.ja, 7
  %i.jp = and i32 %i.jo, 7                        ; 2 uses
  %i.jq = lshr i32 %i.ja, 10
  %i.jr = and i32 %i.jq, 7
  %i.js = add nuw nsw i32 %i.jr, 1
  %i.jt = shl nuw nsw i32 255, %i.jp
  %i.ju = xor i32 %i.jt, -1
  %i.jv = and i32 %i.jj, %i.ju
  %i.jw = add nuw nsw i32 %i.js, %i.jv
  %i.jx = trunc nuw i32 %i.jw to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %.0759947, i64 2
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !62
  %i.jz = lshr i32 %i.ja, 13
  %i.ka = add nuw nsw i32 %i.jz, 1
  %i.kb = lshr i32 %i.jj, %i.jp
  %i.kc = add nuw nsw i32 %i.ka, %i.kb
  %i.kd = trunc nuw i32 %i.kc to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %.0759947, i64 6
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !62
  %i.kf = getelementptr inbounds nuw i8, ptr %.0759947, i64 8 ; 2 uses
  %i.kg = icmp ult i32 %i.hz, %6
  br i1 %i.kg, label %bb.y, label %._crit_edge, !llvm.loop !44

._crit_edge964.loopexit.unr-lcssa:                ; preds = %.lr.ph963.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge964, label %.lr.ph963.split.epil.preheader

.lr.ph963.split.epil.preheader:                   ; preds = %._crit_edge964.loopexit.unr-lcssa, %.lr.ph963.split.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph963.split.preheader ], [ %indvars.iv.next.3, %._crit_edge964.loopexit.unr-lcssa ]
  %lcmp.mod1285 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1285)
  br label %.lr.ph963.split.epil

.lr.ph963.split.epil:                             ; preds = %.lr.ph963.split.epil, %.lr.ph963.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph963.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph963.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph963.split.epil.preheader ], [ %epil.iter.next, %.lr.ph963.split.epil ]
  %i.kh = lshr exact i64 %indvars.iv.epil, 1
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %i.kj = mul i32 %i.as, %i.ki
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  store i16 0, ptr %i.km, align 2, !tbaa !62
  store i16 0, ptr %i.kl, align 16, !tbaa !62
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge964, label %.lr.ph963.split.epil, !llvm.loop !45

._crit_edge964:                                   ; preds = %._crit_edge957.us, %._crit_edge964.loopexit.unr-lcssa, %.lr.ph963.split.epil, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2064) %i.b, i8 0, i64 2064, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.kn = sub nuw nsw i32 %4, %i.an
  call fastcc void @_ZN4ojph5localL9frwd_initILi255EEEvPNS0_13frwd_struct32EPKhi(ptr noundef %12, ptr noundef nonnull %0, i32 noundef %i.kn)
  br i1 %.not1129, label %.critedge, label %.lr.ph971

.lr.ph971:                                        ; preds = %._crit_edge964
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.kq = sub nuw nsw i32 29, %2                  ; 4 uses
  %i.kr = zext i32 %8 to i64                      ; 2 uses
  br label %bb.ai

.lr.ph963.split:                                  ; preds = %.lr.ph963.split, %.lr.ph963.split.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph963.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph963.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph963.split.preheader.new ], [ %niter.next.3, %.lr.ph963.split ]
  %i.ks = lshr exact i64 %indvars.iv, 1
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = mul i32 %i.as, %i.kt
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  store i16 0, ptr %i.kx, align 2, !tbaa !62
  store i16 0, ptr %i.kw, align 16, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ky = lshr exact i64 %indvars.iv.next, 1
  %i.kz = trunc nuw nsw i64 %i.ky to i32
  %i.la = mul i32 %i.as, %i.kz
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  store i16 0, ptr %i.ld, align 2, !tbaa !62
  store i16 0, ptr %i.lc, align 16, !tbaa !62
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.le = lshr exact i64 %indvars.iv.next.1, 1
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = mul i32 %i.as, %i.lf
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  store i16 0, ptr %i.lj, align 2, !tbaa !62
  store i16 0, ptr %i.li, align 16, !tbaa !62
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6
  %i.lk = lshr exact i64 %indvars.iv.next.2, 1
  %i.ll = trunc nuw nsw i64 %i.lk to i32
  %i.lm = mul i32 %i.as, %i.ll
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  store i16 0, ptr %i.lp, align 2, !tbaa !62
  store i16 0, ptr %i.lo, align 16, !tbaa !62
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge964.loopexit.unr-lcssa, label %.lr.ph963.split, !llvm.loop !43

bb.ai:                                            ; preds = %.lr.ph971, %bb.as
  %.0787969 = phi ptr [ %i.a, %.lr.ph971 ], [ %i.pa, %bb.as ] ; 3 uses
  %.0794968 = phi i32 [ 0, %.lr.ph971 ], [ %i.oz, %bb.as ] ; 2 uses
  %.0797967 = phi i32 [ 0, %.lr.ph971 ], [ %.1793, %bb.as ] ; 2 uses
  %.0805966 = phi ptr [ %1, %.lr.ph971 ], [ %i.oy, %bb.as ] ; 4 uses
  %.0808965 = phi ptr [ %i.b, %.lr.ph971 ], [ %i.pb, %bb.as ] ; 3 uses
  %i.lq = load i16, ptr %.0787969, align 2, !tbaa !62
  %i.lr = zext i16 %i.lq to i32                   ; 12 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0787969, i64 2
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !62
  %i.lu = zext i16 %i.lt to i32                   ; 5 uses
  %i.lv = icmp ult i32 %i.at, %i.lu
  br i1 %i.lv, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lw = and i32 %i.lr, 16
  %.not = icmp eq i32 %i.lw, 0
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lx = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %15 = lshr i32 %i.lr, 12
  %16 = and i32 %15, 1
  %17 = sub nsw i32 %i.lu, %16                    ; 4 uses
  %i.ly = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.lz = zext nneg i32 %17 to i64
  %i.ma = lshr i64 %i.ly, %i.lz
  store i64 %i.ma, ptr %i.ko, align 8, !tbaa !26
  %i.mb = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.mc = sub i32 %i.mb, %17
  store i32 %i.mc, ptr %i.kp, align 8, !tbaa !27
  %i.md = shl i32 %i.lx, 31
  %notmask = shl nsw i32 -1, %17
  %i.me = xor i32 %notmask, -1
  %i.mf = and i32 %i.lx, %i.me
  %i.mg = lshr i32 %i.lr, 8
  %i.mh = and i32 %i.mg, 1
  %i.mi = shl nuw i32 %i.mh, %17
  %i.mj = or i32 %i.mi, %i.mf
  %i.mk = or i32 %i.mj, 1
  %i.ml = add i32 %i.mk, 2
  %i.mm = shl i32 %i.ml, %i.kq
  %i.mn = or i32 %i.mm, %i.md
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0788 = phi i32 [ %i.mn, %bb.ak ], [ 0, %bb.aj ]
  store i32 %.0788, ptr %.0805966, align 4, !tbaa !28
  %i.mo = and i32 %i.lr, 32
  %.not845 = icmp eq i32 %i.mo, 0
  br i1 %.not845, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mp = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %18 = lshr i32 %i.lr, 13
  %19 = and i32 %18, 1
  %20 = sub nsw i32 %i.lu, %19                    ; 4 uses
  %i.mq = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.mr = zext nneg i32 %20 to i64
  %i.ms = lshr i64 %i.mq, %i.mr
  store i64 %i.ms, ptr %i.ko, align 8, !tbaa !26
  %i.mt = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.mu = sub i32 %i.mt, %20
  store i32 %i.mu, ptr %i.kp, align 8, !tbaa !27
  %i.mv = shl i32 %i.mp, 31
  %notmask846 = shl nsw i32 -1, %20
  %i.mw = xor i32 %notmask846, -1
  %i.mx = and i32 %i.mp, %i.mw
  %i.my = lshr i32 %i.lr, 9
  %i.mz = and i32 %i.my, 1
  %i.na = shl nuw i32 %i.mz, %20
  %i.nb = or i32 %i.na, %i.mx
  %i.nc = or i32 %i.nb, 1                         ; 2 uses
  %i.nd = add i32 %i.nc, 2
  %i.ne = shl i32 %i.nd, %i.kq
  %i.nf = or i32 %i.ne, %i.mv
  %i.ng = or i32 %i.nc, %.0797967
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0792 = phi i32 [ %i.ng, %bb.am ], [ %.0797967, %bb.al ]
  %.1789 = phi i32 [ %i.nf, %bb.am ], [ 0, %bb.al ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.0805966, i64 %i.kr
  store i32 %.1789, ptr %i.nh, align 4, !tbaa !28
  store i32 %.0792, ptr %.0808965, align 4, !tbaa !28
  %i.ni = getelementptr inbounds nuw i8, ptr %.0805966, i64 4 ; 2 uses
  %i.nj = or disjoint i32 %.0794968, 1
  %.not847 = icmp ult i32 %i.nj, %6
  br i1 %.not847, label %bb.ao, label %.thread908

.thread908:                                       ; preds = %bb.an
  %i.nk = getelementptr inbounds nuw i8, ptr %.0808965, i64 4
  br label %.thread901

bb.ao:                                            ; preds = %bb.an
  %i.nl = and i32 %i.lr, 64
  %.not848 = icmp eq i32 %i.nl, 0
  br i1 %.not848, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nm = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %21 = lshr i32 %i.lr, 14
  %22 = and i32 %21, 1
  %23 = sub nsw i32 %i.lu, %22                    ; 4 uses
  %i.nn = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.no = zext nneg i32 %23 to i64
  %i.np = lshr i64 %i.nn, %i.no
  store i64 %i.np, ptr %i.ko, align 8, !tbaa !26
  %i.nq = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.nr = sub i32 %i.nq, %23
  store i32 %i.nr, ptr %i.kp, align 8, !tbaa !27
  %i.ns = shl i32 %i.nm, 31
  %notmask849 = shl nsw i32 -1, %23
  %i.nt = xor i32 %notmask849, -1
  %i.nu = and i32 %i.nm, %i.nt
  %i.nv = lshr i32 %i.lr, 10
  %i.nw = and i32 %i.nv, 1
  %i.nx = shl nuw i32 %i.nw, %23
  %i.ny = or i32 %i.nx, %i.nu
  %i.nz = or i32 %i.ny, 1
  %i.oa = add i32 %i.nz, 2
  %i.ob = shl i32 %i.oa, %i.kq
  %i.oc = or i32 %i.ob, %i.ns
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2790 = phi i32 [ %i.oc, %bb.ap ], [ 0, %bb.ao ]
  store i32 %.2790, ptr %i.ni, align 4, !tbaa !28
  %i.od = and i32 %i.lr, 128
  %.not850 = icmp eq i32 %i.od, 0
  br i1 %.not850, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oe = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.of = lshr i32 %i.lr, 15
  %i.og = sub nsw i32 %i.lu, %i.of                ; 4 uses
  %i.oh = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.oi = zext nneg i32 %i.og to i64
  %i.oj = lshr i64 %i.oh, %i.oi
  store i64 %i.oj, ptr %i.ko, align 8, !tbaa !26
  %i.ok = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.ol = sub i32 %i.ok, %i.og
  store i32 %i.ol, ptr %i.kp, align 8, !tbaa !27
  %i.om = shl i32 %i.oe, 31
  %notmask851 = shl nsw i32 -1, %i.og
  %i.on = xor i32 %notmask851, -1
  %i.oo = and i32 %i.oe, %i.on
  %i.op = lshr i32 %i.lr, 11
  %i.oq = and i32 %i.op, 1
  %i.or = shl nuw i32 %i.oq, %i.og
  %i.os = or i32 %i.or, %i.oo
  %i.ot = or i32 %i.os, 1                         ; 2 uses
  %i.ou = add i32 %i.ot, 2
  %i.ov = shl i32 %i.ou, %i.kq
  %i.ow = or i32 %i.ov, %i.om
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1793 = phi i32 [ %i.ot, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %.3791 = phi i32 [ %i.ow, %bb.ar ], [ 0, %bb.aq ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.kr
  store i32 %.3791, ptr %i.ox, align 4, !tbaa !28
  %i.oy = getelementptr inbounds nuw i8, ptr %.0805966, i64 8
  %i.oz = add nuw i32 %.0794968, 2                ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0787969, i64 4
  %i.pb = getelementptr inbounds nuw i8, ptr %.0808965, i64 4 ; 2 uses
  %i.pc = icmp ult i32 %i.oz, %6
  br i1 %i.pc, label %bb.ai, label %.thread901, !llvm.loop !46

.thread901:                                       ; preds = %bb.as, %.thread908
  %.3800907 = phi i32 [ 0, %.thread908 ], [ %.1793, %bb.as ]
  %.3811906 = phi ptr [ %i.nk, %.thread908 ], [ %i.pb, %bb.as ]
  store i32 %.3800907, ptr %.3811906, align 4, !tbaa !28
  br i1 %i.bb, label %.lr.ph988, label %.critedge

.lr.ph988:                                        ; preds = %.thread901
  %i.pd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.pf = sub nuw nsw i32 29, %2                  ; 4 uses
  %i.pg = zext i32 %8 to i64                      ; 2 uses
  br label %.lr.ph983.us

.lr.ph983.us:                                     ; preds = %.lr.ph988, %.thread921.us
  %.0780987.us = phi i32 [ %i.tl, %.thread921.us ], [ 2, %.lr.ph988 ] ; 3 uses
  %i.ph = lshr exact i32 %.0780987.us, 1
  %i.pi = mul i32 %i.ph, %i.as
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pj
  %i.pl = mul i32 %.0780987.us, %8
  %i.pm = zext i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pm
  %.pre = load i32, ptr %i.b, align 16, !tbaa !28
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph983.us, %bb.bd
  %i.po = phi i32 [ %.pre, %.lr.ph983.us ], [ %i.py, %bb.bd ]
  %.0769981.us = phi i32 [ 0, %.lr.ph983.us ], [ %i.ti, %bb.bd ] ; 2 uses
  %.0772980.us = phi ptr [ %i.pn, %.lr.ph983.us ], [ %i.th, %bb.bd ] ; 4 uses
  %.0775979.us = phi ptr [ %i.b, %.lr.ph983.us ], [ %i.px, %bb.bd ] ; 2 uses
  %.0779978.us = phi ptr [ %i.pk, %.lr.ph983.us ], [ %i.tj, %bb.bd ] ; 3 uses
  %.4801977.us = phi i32 [ 0, %.lr.ph983.us ], [ %.1768.us, %bb.bd ] ; 2 uses
  %i.pp = load i16, ptr %.0779978.us, align 2, !tbaa !62
  %i.pq = zext i16 %i.pp to i32                   ; 14 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.0779978.us, i64 2
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !62
  %i.pt = zext i16 %i.ps to i32
  %i.pu = and i32 %i.pq, 240
  %i.pv = add nuw nsw i32 %i.pq, 240
  %i.pw = and i32 %i.pv, %i.pu
  %i.px = getelementptr inbounds nuw i8, ptr %.0775979.us, i64 4 ; 3 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !28 ; 2 uses
  %i.pz = or i32 %i.po, %i.py
  %i.qa = or i32 %i.pz, 2
  %i.qb = tail call noundef range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %i.qa, i1 true)
  %i.qc = xor i32 %i.qb, 31
  %.not852.us = icmp eq i32 %i.pw, 0
  %i.qd = select i1 %.not852.us, i32 1, i32 %i.qc
  %i.qe = add nuw nsw i32 %i.qd, %i.pt            ; 5 uses
  %i.qf = icmp ugt i32 %i.qe, %i.at
  br i1 %i.qf, label %.critedge.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qg = and i32 %i.pq, 16
  %.not853.us = icmp eq i32 %i.qg, 0
  br i1 %.not853.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qh = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %24 = lshr i32 %i.pq, 12
  %25 = and i32 %24, 1
  %26 = sub nuw nsw i32 %i.qe, %25                ; 4 uses
  %i.qi = load i64, ptr %i.pd, align 8, !tbaa !26
  %i.qj = zext nneg i32 %26 to i64
  %i.qk = lshr i64 %i.qi, %i.qj
  store i64 %i.qk, ptr %i.pd, align 8, !tbaa !26
  %i.ql = load i32, ptr %i.pe, align 8, !tbaa !27
  %i.qm = sub i32 %i.ql, %26
  store i32 %i.qm, ptr %i.pe, align 8, !tbaa !27
  %i.qn = shl i32 %i.qh, 31
  %notmask854.us = shl nsw i32 -1, %26
  %i.qo = xor i32 %notmask854.us, -1
  %i.qp = and i32 %i.qh, %i.qo
  %i.qq = lshr i32 %i.pq, 8
  %i.qr = and i32 %i.qq, 1
  %i.qs = shl nuw i32 %i.qr, %26
  %i.qt = or i32 %i.qs, %i.qp
  %i.qu = or i32 %i.qt, 1
  %i.qv = add i32 %i.qu, 2
  %i.qw = shl i32 %i.qv, %i.pf
  %i.qx = or i32 %i.qw, %i.qn
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0763.us = phi i32 [ %i.qx, %bb.av ], [ 0, %bb.au ]
  store i32 %.0763.us, ptr %.0772980.us, align 4, !tbaa !28
  %i.qy = and i32 %i.pq, 32
  %.not855.us = icmp eq i32 %i.qy, 0
  br i1 %.not855.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qz = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %27 = lshr i32 %i.pq, 13
  %28 = and i32 %27, 1
  %29 = sub nuw nsw i32 %i.qe, %28                ; 4 uses
  %i.ra = load i64, ptr %i.pd, align 8, !tbaa !26
  %i.rb = zext nneg i32 %29 to i64
  %i.rc = lshr i64 %i.ra, %i.rb
  store i64 %i.rc, ptr %i.pd, align 8, !tbaa !26
  %i.rd = load i32, ptr %i.pe, align 8, !tbaa !27
  %i.re = sub i32 %i.rd, %29
  store i32 %i.re, ptr %i.pe, align 8, !tbaa !27
  %i.rf = shl i32 %i.qz, 31
  %notmask856.us = shl nsw i32 -1, %29
  %i.rg = xor i32 %notmask856.us, -1
  %i.rh = and i32 %i.qz, %i.rg
  %i.ri = lshr i32 %i.pq, 9
  %i.rj = and i32 %i.ri, 1
  %i.rk = shl nuw i32 %i.rj, %29
  %i.rl = or i32 %i.rk, %i.rh
  %i.rm = or i32 %i.rl, 1                         ; 2 uses
  %i.rn = add i32 %i.rm, 2
  %i.ro = shl i32 %i.rn, %i.pf
  %i.rp = or i32 %i.ro, %i.rf
  %i.rq = or i32 %i.rm, %.4801977.us
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0767.us = phi i32 [ %i.rq, %bb.ax ], [ %.4801977.us, %bb.aw ]
  %.1764.us = phi i32 [ %i.rp, %bb.ax ], [ 0, %bb.aw ]
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.0772980.us, i64 %i.pg
  store i32 %.1764.us, ptr %i.rr, align 4, !tbaa !28
  store i32 %.0767.us, ptr %.0775979.us, align 4, !tbaa !28
  %i.rs = getelementptr inbounds nuw i8, ptr %.0772980.us, i64 4 ; 2 uses
  %i.rt = or disjoint i32 %.0769981.us, 1
  %.not857.us = icmp ult i32 %i.rt, %6
  br i1 %.not857.us, label %bb.az, label %.thread921.us

bb.az:                                            ; preds = %bb.ay
  %i.ru = and i32 %i.pq, 64
  %.not858.us = icmp eq i32 %i.ru, 0
  br i1 %.not858.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rv = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %30 = lshr i32 %i.pq, 14
  %31 = and i32 %30, 1
  %32 = sub nuw nsw i32 %i.qe, %31                ; 4 uses
  %i.rw = load i64, ptr %i.pd, align 8, !tbaa !26
  %i.rx = zext nneg i32 %32 to i64
  %i.ry = lshr i64 %i.rw, %i.rx
  store i64 %i.ry, ptr %i.pd, align 8, !tbaa !26
  %i.rz = load i32, ptr %i.pe, align 8, !tbaa !27
  %i.sa = sub i32 %i.rz, %32
  store i32 %i.sa, ptr %i.pe, align 8, !tbaa !27
  %i.sb = shl i32 %i.rv, 31
  %notmask859.us = shl nsw i32 -1, %32
  %i.sc = xor i32 %notmask859.us, -1
  %i.sd = and i32 %i.rv, %i.sc
  %i.se = lshr i32 %i.pq, 10
  %i.sf = and i32 %i.se, 1
  %i.sg = shl nuw i32 %i.sf, %32
  %i.sh = or i32 %i.sg, %i.sd
  %i.si = or i32 %i.sh, 1
  %i.sj = add i32 %i.si, 2
  %i.sk = shl i32 %i.sj, %i.pf
  %i.sl = or i32 %i.sk, %i.sb
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.2765.us = phi i32 [ %i.sl, %bb.ba ], [ 0, %bb.az ]
  store i32 %.2765.us, ptr %i.rs, align 4, !tbaa !28
  %i.sm = and i32 %i.pq, 128
  %.not860.us = icmp eq i32 %i.sm, 0
  br i1 %.not860.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sn = call fastcc noundef i32 @_ZN4ojph5localL10frwd_fetchILi255EEEjPNS0_13frwd_struct32E(ptr noundef %12) ; 2 uses
  %i.so = lshr i32 %i.pq, 15
  %i.sp = sub nuw nsw i32 %i.qe, %i.so            ; 4 uses
  %i.sq = load i64, ptr %i.pd, align 8, !tbaa !26
  %i.sr = zext nneg i32 %i.sp to i64
  %i.ss = lshr i64 %i.sq, %i.sr
  store i64 %i.ss, ptr %i.pd, align 8, !tbaa !26
  %i.st = load i32, ptr %i.pe, align 8, !tbaa !27
  %i.su = sub i32 %i.st, %i.sp
  store i32 %i.su, ptr %i.pe, align 8, !tbaa !27
  %i.sv = shl i32 %i.sn, 31
  %notmask861.us = shl nsw i32 -1, %i.sp
  %i.sw = xor i32 %notmask861.us, -1
  %i.sx = and i32 %i.sn, %i.sw
  %i.sy = lshr i32 %i.pq, 11
  %i.sz = and i32 %i.sy, 1
  %i.ta = shl nuw i32 %i.sz, %i.sp
  %i.tb = or i32 %i.ta, %i.sx
  %i.tc = or i32 %i.tb, 1                         ; 2 uses
  %i.td = add i32 %i.tc, 2
  %i.te = shl i32 %i.td, %i.pf
  %i.tf = or i32 %i.te, %i.sv
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1768.us = phi i32 [ %i.tc, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.3766.us = phi i32 [ %i.tf, %bb.bc ], [ 0, %bb.bb ]
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.pg
  store i32 %.3766.us, ptr %i.tg, align 4, !tbaa !28
  %i.th = getelementptr inbounds nuw i8, ptr %.0772980.us, i64 8
  %i.ti = add i32 %.0769981.us, 2                 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.0779978.us, i64 4
  %i.tk = icmp ult i32 %i.ti, %6
  br i1 %i.tk, label %bb.at, label %.thread921.us, !llvm.loop !47

.thread921.us:                                    ; preds = %bb.ay, %bb.bd
  %.7804926.us = phi i32 [ %.1768.us, %bb.bd ], [ 0, %bb.ay ]
  store i32 %.7804926.us, ptr %i.px, align 4, !tbaa !28
  %i.tl = add i32 %.0780987.us, 2                 ; 2 uses
  %.not936.us = icmp ult i32 %i.tl, %7
  br i1 %.not936.us, label %.lr.ph983.us, label %.critedge, !llvm.loop !48

.critedge.thread:                                 ; preds = %bb.ai, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.ff

.critedge:                                        ; preds = %.thread921.us, %._crit_edge964, %.thread901
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.tm = icmp ugt i32 %.1686, 1
  br i1 %i.tm, label %bb.be, label %bb.ff

bb.be:                                            ; preds = %.critedge
  %i.tn = add i32 %6, 3
  %i.to = lshr i32 %i.tn, 2
  %i.tp = add nuw nsw i32 %i.to, 9
  %i.tq = and i32 %i.tp, 2147483640               ; 11 uses
  %.not1133 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1133, label %._crit_edge999, label %.lr.ph998

.lr.ph998:                                        ; preds = %bb.be
  %i.tr = zext i32 %i.as to i64
  %i.ts = or disjoint i32 %i.as, 2
  %i.tt = zext i32 %i.ts to i64
  %i.tu = zext i32 %7 to i64                      ; 2 uses
  br i1 %.not1129, label %.lr.ph998.split.preheader, label %.lr.ph993.us

.lr.ph998.split.preheader:                        ; preds = %.lr.ph998
  %i.tv = add nsw i64 %i.tu, -1
  %i.tw = lshr i64 %i.tv, 2
  %i.tx = add nuw nsw i64 %i.tw, 1                ; 2 uses
  %xtraiter1286 = and i64 %i.tx, 3                ; 3 uses
  %i.ty = icmp ult i32 %7, 13
  br i1 %i.ty, label %.lr.ph998.split.epil.preheader, label %.lr.ph998.split.preheader.new

.lr.ph998.split.preheader.new:                    ; preds = %.lr.ph998.split.preheader
  %unroll_iter1291 = and i64 %i.tx, 9223372036854775804
  br label %.lr.ph998.split

.lr.ph993.us:                                     ; preds = %.lr.ph998, %._crit_edge994.us
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %._crit_edge994.us ], [ 0, %.lr.ph998 ] ; 3 uses
  %i.tz = lshr exact i64 %indvars.iv1172, 1
  %i.ua = trunc nuw nsw i64 %i.tz to i32
  %i.ub = mul i32 %i.as, %i.ua
  %i.uc = zext i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uc
  %i.ue = lshr exact i64 %indvars.iv1172, 2
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %i.ug = mul i32 %i.tq, %i.uf
  %i.uh = zext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.uh
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph993.us, %bb.bf
  %.0745991.us = phi i32 [ 0, %.lr.ph993.us ], [ %i.vh, %bb.bf ]
  %.0746990.us = phi ptr [ %i.ui, %.lr.ph993.us ], [ %i.vj, %bb.bf ] ; 2 uses
  %.0747989.us = phi ptr [ %i.ud, %.lr.ph993.us ], [ %i.vi, %bb.bf ] ; 5 uses
  %i.uj = load i16, ptr %.0747989.us, align 2, !tbaa !62 ; 2 uses
  %i.uk = lshr i16 %i.uj, 4
  %i.ul = lshr i16 %i.uj, 2
  %i.um = getelementptr inbounds nuw i8, ptr %.0747989.us, i64 4
  %i.un = load i16, ptr %i.um, align 2, !tbaa !62 ; 2 uses
  %i.uo = shl i16 %i.un, 4
  %i.up = shl i16 %i.un, 6
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %.0747989.us, i64 %i.tr
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !62 ; 2 uses
  %i.us = lshr i16 %i.ur, 2
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %.0747989.us, i64 %i.tt
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !62 ; 2 uses
  %i.uv = shl i16 %i.uu, 6
  %i.uw = shl i16 %i.uu, 8
  %i.ux = insertelement <8 x i16> poison, i16 %i.uk, i64 0
  %i.uy = insertelement <8 x i16> %i.ux, i16 %i.ul, i64 1
  %i.uz = insertelement <8 x i16> %i.uy, i16 %i.up, i64 2
  %i.va = insertelement <8 x i16> %i.uz, i16 %i.uo, i64 3
  %i.vb = insertelement <8 x i16> %i.va, i16 %i.ur, i64 4
  %i.vc = insertelement <8 x i16> %i.vb, i16 %i.us, i64 5
  %i.vd = insertelement <8 x i16> %i.vc, i16 %i.uw, i64 6
  %i.ve = insertelement <8 x i16> %i.vd, i16 %i.uv, i64 7
  %i.vf = and <8 x i16> %i.ve, <i16 3, i16 48, i16 12288, i16 768, i16 192, i16 12, i16 -16384, i16 3072>
  %i.vg = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.vf)
  store i16 %i.vg, ptr %.0746990.us, align 2, !tbaa !62
  %i.vh = add nuw i32 %.0745991.us, 4             ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.0747989.us, i64 8
  %i.vj = getelementptr inbounds nuw i8, ptr %.0746990.us, i64 2 ; 2 uses
  %i.vk = icmp ult i32 %i.vh, %6
  br i1 %i.vk, label %bb.bf, label %._crit_edge994.us, !llvm.loop !49

._crit_edge994.us:                                ; preds = %bb.bf
  store i16 0, ptr %i.vj, align 2, !tbaa !62
  %indvars.iv.next1173 = add nuw nsw i64 %indvars.iv1172, 4 ; 3 uses
  %i.vl = icmp samesign ult i64 %indvars.iv.next1173, %i.tu
  br i1 %i.vl, label %.lr.ph993.us, label %._crit_edge999.loopexit1141, !llvm.loop !50

.lr.ph998.split:                                  ; preds = %.lr.ph998.split, %.lr.ph998.split.preheader.new
  %indvars.iv1175 = phi i64 [ 0, %.lr.ph998.split.preheader.new ], [ %indvars.iv.next1176.3, %.lr.ph998.split ] ; 5 uses
  %niter1292 = phi i64 [ 0, %.lr.ph998.split.preheader.new ], [ %niter1292.next.3, %.lr.ph998.split ]
  %i.vm = lshr exact i64 %indvars.iv1175, 2
  %i.vn = trunc nuw nsw i64 %i.vm to i32
  %i.vo = mul i32 %i.tq, %i.vn
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vp
  store i16 0, ptr %i.vq, align 16, !tbaa !62
  %indvars.iv.next1176 = lshr exact i64 %indvars.iv1175, 2
  %i.vr = trunc i64 %indvars.iv.next1176 to i32
  %i.vs = or disjoint i32 %i.vr, 1
  %i.vt = mul i32 %i.tq, %i.vs
  %i.vu = zext i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vu
  store i16 0, ptr %i.vv, align 16, !tbaa !62
  %indvars.iv.next1176.1 = lshr exact i64 %indvars.iv1175, 2
  %i.vw = trunc i64 %indvars.iv.next1176.1 to i32
  %i.vx = or disjoint i32 %i.vw, 2
  %i.vy = mul i32 %i.tq, %i.vx
  %i.vz = zext i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.vz
  store i16 0, ptr %i.wa, align 16, !tbaa !62
  %indvars.iv.next1176.2 = lshr exact i64 %indvars.iv1175, 2
  %i.wb = trunc i64 %indvars.iv.next1176.2 to i32
  %i.wc = or disjoint i32 %i.wb, 3
  %i.wd = mul i32 %i.tq, %i.wc
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.we
  store i16 0, ptr %i.wf, align 16, !tbaa !62
  %indvars.iv.next1176.3 = add nuw nsw i64 %indvars.iv1175, 16 ; 3 uses
  %niter1292.next.3 = add nuw nsw i64 %niter1292, 4 ; 2 uses
  %niter1292.ncmp.3.not = icmp eq i64 %niter1292.next.3, %unroll_iter1291
  br i1 %niter1292.ncmp.3.not, label %._crit_edge999.thread.unr-lcssa, label %.lr.ph998.split, !llvm.loop !50

._crit_edge999.thread.unr-lcssa:                  ; preds = %.lr.ph998.split
end_hunk_0
