Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_bitplanenoise?download=true
begin_hunk_0_@filter_frame:bb.a
  %i.gt = and i32 %i.o, %i.gs                     ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0382.lcssa, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !52
  %i.gw = zext i8 %i.gv to i32
  %i.gx = and i32 %i.o, %i.gw
  %i.gy = icmp eq i32 %i.gt, %i.gx
  %i.gz = zext i1 %i.gy to i32
  %i.ha = sub nsw i32 1, %i.av
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.0382.lcssa, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !52
  %i.he = zext i8 %i.hd to i32
  %i.hf = and i32 %i.o, %i.he
  %i.hg = icmp eq i32 %i.gt, %i.hf
  %i.hh = zext i1 %i.hg to i32
  %i.hi = add nuw nsw i32 %i.hh, %i.gz
  %i.hj = sub nsw i32 0, %i.av
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr %.0382.lcssa, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !52
  %i.hn = zext i8 %i.hm to i32
  %i.ho = and i32 %i.o, %i.hn
  %i.hp = icmp eq i32 %i.gt, %i.ho
  %i.hq = zext i1 %i.hp to i32
  %i.hr = add nuw nsw i32 %i.hi, %i.hq
  %i.hs = icmp samesign ugt i32 %i.hr, 1          ; 2 uses
  %.not402 = icmp eq ptr %.0380.lcssa, null       ; 3 uses
  br i1 %.not402, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge452
  %i.ht = select i1 %i.hs, i8 %i.an, i8 0
  store i8 %i.ht, ptr %.0380.lcssa, align 1, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge452
  %i.hu = uitofp i1 %i.hs to float
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv508 ; 6 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !54
  %i.hx = fadd nsz float %i.hw, %i.hu             ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv508 ; 2 uses
  store float %i.hx, ptr %i.hv, align 4, !tbaa !54
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !34 ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 2
  br i1 %i.ia, label %.lr.ph457.preheader, label %._crit_edge458

.lr.ph457.preheader:                              ; preds = %bb.q
  %i.ib = sext i32 %i.av to i64
  br label %.lr.ph457

.lr.ph457:                                        ; preds = %.lr.ph457.preheader, %bb.s
  %i.ic = phi i32 [ %i.hz, %.lr.ph457.preheader ], [ %i.jg, %bb.s ]
  %i.id = phi float [ %i.hx, %.lr.ph457.preheader ], [ %i.jj, %bb.s ]
  %indvars.iv505 = phi i64 [ 1, %.lr.ph457.preheader ], [ %indvars.iv.next506, %bb.s ] ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0382.lcssa, i64 %indvars.iv505 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !52
  %i.ig = zext i8 %i.if to i32
  %i.ih = and i32 %i.o, %i.ig                     ; 3 uses
  %i.ii = getelementptr i8, ptr %i.ie, i64 -1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !52
  %i.ik = zext i8 %i.ij to i32
  %i.il = and i32 %i.o, %i.ik
  %i.im = icmp eq i32 %i.ih, %i.il
  %i.in = zext i1 %i.im to i32
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0382.lcssa, i64 %indvars.iv.next506
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !52
  %i.iq = zext i8 %i.ip to i32
  %i.ir = and i32 %i.o, %i.iq
  %i.is = icmp eq i32 %i.ih, %i.ir
  %i.it = zext i1 %i.is to i32
  %i.iu = add nuw nsw i32 %i.it, %i.in
  %i.iv = sub nsw i64 %indvars.iv505, %i.ib
  %i.iw = getelementptr inbounds i8, ptr %.0382.lcssa, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !52
  %i.iy = zext i8 %i.ix to i32
  %i.iz = and i32 %i.o, %i.iy
  %i.ja = icmp eq i32 %i.ih, %i.iz
  %i.jb = zext i1 %i.ja to i32
  %i.jc = add nuw nsw i32 %i.iu, %i.jb
  %i.jd = icmp samesign ugt i32 %i.jc, 1          ; 2 uses
  br i1 %.not402, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph457
  %i.je = select i1 %i.jd, i8 %i.an, i8 0
  %i.jf = getelementptr inbounds nuw i8, ptr %.0380.lcssa, i64 %indvars.iv505
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  %.pre518 = load float, ptr %i.hv, align 4, !tbaa !54
  %.pre519 = load i32, ptr %i.hy, align 4, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph457
  %i.jg = phi i32 [ %.pre519, %bb.r ], [ %i.ic, %.lr.ph457 ] ; 2 uses
  %i.jh = phi float [ %.pre518, %bb.r ], [ %i.id, %.lr.ph457 ]
  %i.ji = uitofp i1 %i.jd to float
  %i.jj = fadd nsz float %i.jh, %i.ji             ; 3 uses
  store float %i.jj, ptr %i.hv, align 4, !tbaa !54
  %i.jk = add nsw i32 %i.jg, -1
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv.next506, %i.jl
  br i1 %i.jm, label %.lr.ph457, label %._crit_edge458.loopexit, !llvm.loop !37

._crit_edge458.loopexit:                          ; preds = %bb.s
  %i.jn = trunc nuw nsw i64 %indvars.iv.next506 to i32 ; 2 uses
  %.pre521 = sub nsw i32 %i.jn, %i.av
  %.pre522 = sext i32 %.pre521 to i64
  br label %._crit_edge458

._crit_edge458:                                   ; preds = %._crit_edge458.loopexit, %bb.q
  %.pre-phi523 = phi i64 [ %.pre522, %._crit_edge458.loopexit ], [ %i.hb, %bb.q ]
  %i.jo = phi float [ %i.jj, %._crit_edge458.loopexit ], [ %i.hx, %bb.q ]
  %.1385.lcssa = phi i32 [ %i.jn, %._crit_edge458.loopexit ], [ 1, %bb.q ] ; 2 uses
  %i.jp = zext nneg i32 %.1385.lcssa to i64       ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0382.lcssa, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !52
  %i.js = zext i8 %i.jr to i32
  %i.jt = and i32 %i.o, %i.js                     ; 3 uses
  %i.ju = getelementptr i8, ptr %i.jq, i64 -1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !52
  %i.jw = zext i8 %i.jv to i32
  %i.jx = and i32 %i.o, %i.jw
  %i.jy = icmp eq i32 %i.jt, %i.jx
  %i.jz = zext i1 %i.jy to i32
  %i.ka = xor i32 %i.av, -1
  %i.kb = add nsw i32 %.1385.lcssa, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %.0382.lcssa, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !52
  %i.kf = zext i8 %i.ke to i32
  %i.kg = and i32 %i.o, %i.kf
  %i.kh = icmp eq i32 %i.jt, %i.kg
  %i.ki = zext i1 %i.kh to i32
  %i.kj = add nuw nsw i32 %i.ki, %i.jz
  %i.kk = getelementptr inbounds i8, ptr %.0382.lcssa, i64 %.pre-phi523
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !52
  %i.km = zext i8 %i.kl to i32
  %i.kn = and i32 %i.o, %i.km
  %i.ko = icmp eq i32 %i.jt, %i.kn
  %i.kp = zext i1 %i.ko to i32
  %i.kq = add nuw nsw i32 %i.kj, %i.kp
  %i.kr = icmp samesign ugt i32 %i.kq, 1          ; 2 uses
  br i1 %.not402, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge458
  %i.ks = select i1 %i.kr, i8 %i.an, i8 0
  %i.kt = getelementptr inbounds nuw i8, ptr %.0380.lcssa, i64 %i.jp
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !52
  %.pre520 = load float, ptr %i.hv, align 4, !tbaa !54
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge458
  %i.ku = phi float [ %.pre520, %bb.t ], [ %i.jo, %._crit_edge458 ]
  %i.kv = uitofp i1 %i.kr to float
  %i.kw = fadd nsz float %i.ku, %i.kv
  store float %i.kw, ptr %i.hv, align 4, !tbaa !54
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %i.kx = load i32, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp slt i64 %indvars.iv.next509, %i.ky
  br i1 %i.kz, label %bb.f, label %.loopexit, !llvm.loop !38

bb.v:                                             ; preds = %.lr.ph437, %bb.ai
  %indvars.iv492 = phi i64 [ 0, %.lr.ph437 ], [ %indvars.iv.next493, %bb.ai ] ; 10 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv492
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !34 ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, 1                   ; 2 uses
  br i1 %i.lc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv492
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !34
  %i.lf = sdiv i32 %i.le, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.lg = phi i32 [ %i.lf, %bb.w ], [ 0, %bb.v ]  ; 8 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv492
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !34
  %i.lj = sdiv i32 %i.li, 2
  br i1 %.not396, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.0383, i64 %indvars.iv492
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !51
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.lm = phi ptr [ %i.ll, %bb.y ], [ null, %bb.x ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv492
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !51 ; 2 uses
  br i1 %i.lc, label %.lr.ph423, label %._crit_edge424

.lr.ph423:                                        ; preds = %bb.z
  %i.lp = sext i32 %i.lg to i64                   ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv492 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv492
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !34 ; 3 uses
  %i.lt = add i32 %i.ls, -1                       ; 3 uses
  %i.lu = icmp sgt i32 %i.ls, 2                   ; 2 uses
  %i.lv = add nsw i32 %i.lg, -1
  %i.lw = sext i32 %i.lj to i64
  %.promoted = load float, ptr %i.lq, align 4, !tbaa !54
  %i.lx = add i32 %i.ls, -1
  %wide.trip.count = zext nneg i32 %i.lt to i64
  %wide.trip.count484 = zext nneg i32 %i.lt to i64
  %i.ly = add nsw i32 %i.lb, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph423, %.critedge407
  %i.lz = phi float [ %.promoted, %.lr.ph423 ], [ %.sink514, %.critedge407 ] ; 2 uses
  %.0421 = phi ptr [ %i.lm, %.lr.ph423 ], [ %.1, %.critedge407 ] ; 5 uses
  %.0379419 = phi ptr [ %i.lo, %.lr.ph423 ], [ %i.mj, %.critedge407 ] ; 12 uses
  %.1387418 = phi i32 [ 0, %.lr.ph423 ], [ %i.qm, %.critedge407 ] ; 2 uses
  %i.ma = load i16, ptr %.0379419, align 2, !tbaa !57
  %i.mb = zext i16 %i.ma to i32
  %i.mc = and i32 %i.o, %i.mb                     ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0379419, i64 2 ; 2 uses
  %i.me = load i16, ptr %i.md, align 2, !tbaa !57
  %i.mf = zext i16 %i.me to i32
  %i.mg = and i32 %i.o, %i.mf
  %i.mh = icmp eq i32 %i.mc, %i.mg
  %i.mi = zext i1 %i.mh to i32
  %i.mj = getelementptr [2 x i8], ptr %.0379419, i64 %i.lp ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 2
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !57
  %i.mm = zext i16 %i.ml to i32
  %i.mn = and i32 %i.o, %i.mm
  %i.mo = icmp eq i32 %i.mc, %i.mn
  %i.mp = zext i1 %i.mo to i32
  %i.mq = add nuw nsw i32 %i.mp, %i.mi
  %i.mr = load i16, ptr %i.mj, align 2, !tbaa !57
  %i.ms = zext i16 %i.mr to i32
  %i.mt = and i32 %i.o, %i.ms
  %i.mu = icmp eq i32 %i.mc, %i.mt
  %i.mv = zext i1 %i.mu to i32
  %i.mw = add nuw nsw i32 %i.mq, %i.mv
  %i.mx = icmp samesign ugt i32 %i.mw, 1          ; 3 uses
  %.not398 = icmp eq ptr %.0421, null             ; 2 uses
  br i1 %.not398, label %bb.ab, label %.thread536

bb.ab:                                            ; preds = %bb.aa
  %i.my = uitofp i1 %i.mx to float
  %i.mz = fadd nsz float %i.lz, %i.my             ; 2 uses
  br i1 %i.lu, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread536:                                       ; preds = %bb.aa
  %i.na = select i1 %i.mx, i16 %i.aj, i16 0
  store i16 %i.na, ptr %.0421, align 2, !tbaa !57
  %i.nb = uitofp i1 %i.mx to float
  %i.nc = fadd nsz float %i.lz, %i.nb             ; 2 uses
  br i1 %i.lu, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread536
  %invariant.gep = getelementptr [2 x i8], ptr %.0379419, i64 %i.lp
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.ab
  %.pre515 = load i16, ptr %i.md, align 2, !tbaa !57
  %invariant.gep547 = getelementptr [2 x i8], ptr %.0379419, i64 %i.lp
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %i.nd = phi i16 [ %.pre515, %.lr.ph.split.us.preheader ], [ %i.no, %.lr.ph.split.us ]
  %indvars.iv481 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next482, %.lr.ph.split.us ] ; 3 uses
  %storemerge399412.us = phi float [ %i.mz, %.lr.ph.split.us.preheader ], [ %i.oc, %.lr.ph.split.us ]
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.0379419, i64 %indvars.iv481
  %i.nf = zext i16 %i.nd to i32
  %i.ng = and i32 %i.o, %i.nf                     ; 3 uses
  %i.nh = getelementptr i8, ptr %i.ne, i64 -2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !57
  %i.nj = zext i16 %i.ni to i32
  %i.nk = and i32 %i.o, %i.nj
  %i.nl = icmp eq i32 %i.ng, %i.nk
  %i.nm = zext i1 %i.nl to i32
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 3 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.0379419, i64 %indvars.iv.next482
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !57 ; 2 uses
  %i.np = zext i16 %i.no to i32
  %i.nq = and i32 %i.o, %i.np
  %i.nr = icmp eq i32 %i.ng, %i.nq
  %i.ns = zext i1 %i.nr to i32
  %i.nt = add nuw nsw i32 %i.ns, %i.nm
  %gep548 = getelementptr [2 x i8], ptr %invariant.gep547, i64 %indvars.iv481
  %i.nu = load i16, ptr %gep548, align 2, !tbaa !57
  %i.nv = zext i16 %i.nu to i32
  %i.nw = and i32 %i.o, %i.nv
  %i.nx = icmp eq i32 %i.ng, %i.nw
  %i.ny = zext i1 %i.nx to i32
  %i.nz = add nuw nsw i32 %i.nt, %i.ny
  %i.oa = icmp samesign ugt i32 %i.nz, 1
  %i.ob = uitofp i1 %i.oa to float
  %i.oc = fadd nsz float %storemerge399412.us, %i.ob ; 2 uses
  %exitcond485.not = icmp eq i64 %indvars.iv.next482, %wide.trip.count484
  br i1 %exitcond485.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 4 uses
  %storemerge399412 = phi float [ %i.nc, %.lr.ph.split.preheader ], [ %i.pe, %.lr.ph.split ]
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %.0379419, i64 %indvars.iv ; 2 uses
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !57
  %i.of = zext i16 %i.oe to i32
  %i.og = and i32 %i.o, %i.of                     ; 3 uses
  %i.oh = getelementptr i8, ptr %i.od, i64 -2
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !57
  %i.oj = zext i16 %i.oi to i32
  %i.ok = and i32 %i.o, %i.oj
  %i.ol = icmp eq i32 %i.og, %i.ok
  %i.om = zext i1 %i.ol to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %.0379419, i64 %indvars.iv.next
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !57
  %i.op = zext i16 %i.oo to i32
  %i.oq = and i32 %i.o, %i.op
  %i.or = icmp eq i32 %i.og, %i.oq
  %i.os = zext i1 %i.or to i32
  %i.ot = add nuw nsw i32 %i.os, %i.om
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ou = load i16, ptr %gep, align 2, !tbaa !57
  %i.ov = zext i16 %i.ou to i32
  %i.ow = and i32 %i.o, %i.ov
  %i.ox = icmp eq i32 %i.og, %i.ow
  %i.oy = zext i1 %i.ox to i32
  %i.oz = add nuw nsw i32 %i.ot, %i.oy
  %i.pa = icmp samesign ugt i32 %i.oz, 1          ; 2 uses
  %i.pb = select i1 %i.pa, i16 %i.aj, i16 0
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.0421, i64 %indvars.iv
  store i16 %i.pb, ptr %i.pc, align 2, !tbaa !57
  %i.pd = uitofp i1 %i.pa to float
  %i.pe = fadd nsz float %storemerge399412, %i.pd ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.thread536, %bb.ab
  %storemerge399.lcssa411 = phi float [ %i.mz, %bb.ab ], [ %i.nc, %.thread536 ], [ %i.oc, %.lr.ph.split.us ], [ %i.pe, %.lr.ph.split ]
  %.2.lcssa = phi i32 [ 1, %bb.ab ], [ 1, %.thread536 ], [ %i.lx, %.lr.ph.split.us ], [ %i.lt, %.lr.ph.split ] ; 3 uses
  %i.pf = zext nneg i32 %.2.lcssa to i64          ; 2 uses
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %.0379419, i64 %i.pf ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !57
  %i.pi = zext i16 %i.ph to i32
  %i.pj = and i32 %i.o, %i.pi                     ; 3 uses
  %i.pk = getelementptr i8, ptr %i.pg, i64 -2
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !57
  %i.pm = zext i16 %i.pl to i32
  %i.pn = and i32 %i.o, %i.pm
  %i.po = icmp eq i32 %i.pj, %i.pn
  %i.pp = zext i1 %i.po to i32
  %i.pq = add nsw i32 %i.lv, %.2.lcssa
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [2 x i8], ptr %.0379419, i64 %i.pr
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !57
  %i.pu = zext i16 %i.pt to i32
  %i.pv = and i32 %i.o, %i.pu
  %i.pw = icmp eq i32 %i.pj, %i.pv
  %i.px = zext i1 %i.pw to i32
  %i.py = add nuw nsw i32 %i.px, %i.pp
  %i.pz = add nsw i32 %.2.lcssa, %i.lg
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [2 x i8], ptr %.0379419, i64 %i.qa
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !57
  %i.qd = zext i16 %i.qc to i32
  %i.qe = and i32 %i.o, %i.qd
  %i.qf = icmp eq i32 %i.pj, %i.qe
  %i.qg = zext i1 %i.qf to i32
  %i.qh = add nuw nsw i32 %i.py, %i.qg
  %i.qi = icmp samesign ugt i32 %i.qh, 1          ; 2 uses
  br i1 %.not398, label %.critedge407, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.qj = select i1 %i.qi, i16 %i.aj, i16 0
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %.0421, i64 %i.pf
  store i16 %i.qj, ptr %i.qk, align 2, !tbaa !57
  %i.ql = getelementptr inbounds [2 x i8], ptr %.0421, i64 %i.lw
  br label %.critedge407

.critedge407:                                     ; preds = %._crit_edge, %bb.ac
  %.1 = phi ptr [ %i.ql, %bb.ac ], [ null, %._crit_edge ] ; 2 uses
  %.pn = uitofp i1 %i.qi to float
  %.sink514 = fadd nsz float %storemerge399.lcssa411, %.pn ; 2 uses
  %i.qm = add nuw nsw i32 %.1387418, 1
  %exitcond486.not = icmp eq i32 %.1387418, %i.ly
  br i1 %exitcond486.not, label %._crit_edge424.loopexit, label %bb.aa, !llvm.loop !40

._crit_edge424.loopexit:                          ; preds = %.critedge407
  store float %.sink514, ptr %i.lq, align 4, !tbaa !54
  br label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge424.loopexit, %bb.z
  %.0379.lcssa = phi ptr [ %i.mj, %._crit_edge424.loopexit ], [ %i.lo, %bb.z ] ; 10 uses
  %.0.lcssa = phi ptr [ %.1, %._crit_edge424.loopexit ], [ %i.lm, %bb.z ] ; 4 uses
  %i.qn = load i16, ptr %.0379.lcssa, align 2, !tbaa !57
  %i.qo = zext i16 %i.qn to i32
  %i.qp = and i32 %i.o, %i.qo                     ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0379.lcssa, i64 2
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !57
  %i.qs = zext i16 %i.qr to i32
  %i.qt = and i32 %i.o, %i.qs
  %i.qu = icmp eq i32 %i.qp, %i.qt
  %i.qv = zext i1 %i.qu to i32
  %i.qw = sub nsw i32 1, %i.lg
  %i.qx = sext i32 %i.qw to i64                   ; 2 uses
  %i.qy = getelementptr inbounds [2 x i8], ptr %.0379.lcssa, i64 %i.qx
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !57
  %i.ra = zext i16 %i.qz to i32
  %i.rb = and i32 %i.o, %i.ra
  %i.rc = icmp eq i32 %i.qp, %i.rb
  %i.rd = zext i1 %i.rc to i32
  %i.re = add nuw nsw i32 %i.rd, %i.qv
  %i.rf = sub nsw i32 0, %i.lg
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [2 x i8], ptr %.0379.lcssa, i64 %i.rg
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !57
  %i.rj = zext i16 %i.ri to i32
  %i.rk = and i32 %i.o, %i.rj
  %i.rl = icmp eq i32 %i.qp, %i.rk
  %i.rm = zext i1 %i.rl to i32
  %i.rn = add nuw nsw i32 %i.re, %i.rm
  %i.ro = icmp samesign ugt i32 %i.rn, 1          ; 2 uses
  %.not397 = icmp eq ptr %.0.lcssa, null          ; 3 uses
  br i1 %.not397, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge424
  %i.rp = select i1 %i.ro, i16 %i.aj, i16 0
  store i16 %i.rp, ptr %.0.lcssa, align 2, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge424
  %i.rq = uitofp i1 %i.ro to float
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv492 ; 2 uses
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !54
  %i.rt = fadd nsz float %i.rs, %i.rq             ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv492
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !34 ; 2 uses
  %i.rw = add i32 %i.rv, -1                       ; 3 uses
  %i.rx = icmp sgt i32 %i.rv, 2
  br i1 %i.rx, label %.lr.ph431.preheader, label %._crit_edge432

.lr.ph431.preheader:                              ; preds = %bb.ae
  %i.ry = sext i32 %i.lg to i64
  %wide.trip.count490 = zext nneg i32 %i.rw to i64
  br label %.lr.ph431

.lr.ph431:                                        ; preds = %.lr.ph431.preheader, %bb.ag
  %indvars.iv487 = phi i64 [ 1, %.lr.ph431.preheader ], [ %indvars.iv.next488, %bb.ag ] ; 4 uses
  %storemerge428 = phi float [ %i.rt, %.lr.ph431.preheader ], [ %i.tc, %bb.ag ]
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.0379.lcssa, i64 %indvars.iv487 ; 2 uses
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !57
  %i.sb = zext i16 %i.sa to i32
  %i.sc = and i32 %i.o, %i.sb                     ; 3 uses
  %i.sd = getelementptr i8, ptr %i.rz, i64 -2
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !57
  %i.sf = zext i16 %i.se to i32
  %i.sg = and i32 %i.o, %i.sf
  %i.sh = icmp eq i32 %i.sc, %i.sg
  %i.si = zext i1 %i.sh to i32
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 3 uses
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %.0379.lcssa, i64 %indvars.iv.next488
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !57
  %i.sl = zext i16 %i.sk to i32
  %i.sm = and i32 %i.o, %i.sl
  %i.sn = icmp eq i32 %i.sc, %i.sm
  %i.so = zext i1 %i.sn to i32
  %i.sp = add nuw nsw i32 %i.so, %i.si
  %i.sq = sub nsw i64 %indvars.iv487, %i.ry
  %i.sr = getelementptr inbounds [2 x i8], ptr %.0379.lcssa, i64 %i.sq
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !57
  %i.st = zext i16 %i.ss to i32
  %i.su = and i32 %i.o, %i.st
  %i.sv = icmp eq i32 %i.sc, %i.su
  %i.sw = zext i1 %i.sv to i32
  %i.sx = add nuw nsw i32 %i.sp, %i.sw
  %i.sy = icmp samesign ugt i32 %i.sx, 1          ; 2 uses
  br i1 %.not397, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph431
  %i.sz = select i1 %i.sy, i16 %i.aj, i16 0
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %indvars.iv487
  store i16 %i.sz, ptr %i.ta, align 2, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph431
  %i.tb = uitofp i1 %i.sy to float
  %i.tc = fadd nsz float %storemerge428, %i.tb    ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count490
  br i1 %exitcond491.not, label %._crit_edge432.loopexit, label %.lr.ph431, !llvm.loop !41

._crit_edge432.loopexit:                          ; preds = %bb.ag
  %.pre524 = sub nsw i32 %i.rw, %i.lg
  %.pre526 = sext i32 %.pre524 to i64
  br label %._crit_edge432

._crit_edge432:                                   ; preds = %bb.ae, %._crit_edge432.loopexit
  %.pre-phi527 = phi i64 [ %.pre526, %._crit_edge432.loopexit ], [ %i.qx, %bb.ae ]
  %storemerge.lcssa427 = phi float [ %i.tc, %._crit_edge432.loopexit ], [ %i.rt, %bb.ae ]
  %.3.lcssa = phi i32 [ %i.rw, %._crit_edge432.loopexit ], [ 1, %bb.ae ] ; 2 uses
  %i.td = zext nneg i32 %.3.lcssa to i64          ; 2 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %.0379.lcssa, i64 %i.td ; 2 uses
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !57
  %i.tg = zext i16 %i.tf to i32
  %i.th = and i32 %i.o, %i.tg                     ; 3 uses
  %i.ti = getelementptr i8, ptr %i.te, i64 -2
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !57
  %i.tk = zext i16 %i.tj to i32
  %i.tl = and i32 %i.o, %i.tk
  %i.tm = icmp eq i32 %i.th, %i.tl
  %i.tn = zext i1 %i.tm to i32
  %i.to = xor i32 %i.lg, -1
  %i.tp = add nsw i32 %.3.lcssa, %i.to
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [2 x i8], ptr %.0379.lcssa, i64 %i.tq
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !57
  %i.tt = zext i16 %i.ts to i32
  %i.tu = and i32 %i.o, %i.tt
  %i.tv = icmp eq i32 %i.th, %i.tu
  %i.tw = zext i1 %i.tv to i32
  %i.tx = add nuw nsw i32 %i.tw, %i.tn
  %i.ty = getelementptr inbounds [2 x i8], ptr %.0379.lcssa, i64 %.pre-phi527
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !57
  %i.ua = zext i16 %i.tz to i32
  %i.ub = and i32 %i.o, %i.ua
  %i.uc = icmp eq i32 %i.th, %i.ub
  %i.ud = zext i1 %i.uc to i32
  %i.ue = add nuw nsw i32 %i.tx, %i.ud
  %i.uf = icmp samesign ugt i32 %i.ue, 1          ; 2 uses
  br i1 %.not397, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge432
  %i.ug = select i1 %i.uf, i16 %i.aj, i16 0
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa, i64 %i.td
  store i16 %i.ug, ptr %i.uh, align 2, !tbaa !57
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge432
  %i.ui = uitofp i1 %i.uf to float
  %i.uj = fadd nsz float %storemerge.lcssa427, %i.ui
  store float %i.uj, ptr %i.rr, align 4, !tbaa !54
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %.lr.ph464, label %bb.v, !llvm.loop !42

.loopexit:                                        ; preds = %bb.u
  %i.uk = icmp sgt i32 %i.kx, 0
  br i1 %i.uk, label %.lr.ph464, label %._crit_edge465

.lr.ph464:                                        ; preds = %bb.ai, %.loopexit
  %i.ul = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.un = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.uo = getelementptr inbounds nuw i8, ptr %.0383, i64 312
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph464, %bb.aj
  %indvars.iv511 = phi i64 [ 0, %.lr.ph464 ], [ %indvars.iv.next512, %bb.aj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv511
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !34
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv511
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !34
  %i.ut = mul nsw i32 %i.us, %i.uq
  %i.uu = sitofp nsz i32 %i.ut to float
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv511 ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !54
  %i.ux = fdiv nsz float %i.uw, %i.uu             ; 2 uses
  store float %i.ux, ptr %i.uv, align 4, !tbaa !54
  %i.uy = load i32, ptr %i.l, align 8, !tbaa !49
  %i.uz = trunc nuw nsw i64 %indvars.iv511 to i32
  %i.va = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %i.uz, i32 noundef %i.uy) #6 ; 0 uses
  %i.vb = fpext nsz float %i.ux to double
  %i.vc = fadd nsz double %i.vb, -5.000000e-01
  %i.vd = call nsz double @llvm.fabs.f64(double %i.vc)
  %i.ve = call nsz double @llvm.fmuladd.f64(double %i.vd, double -2.000000e+00, double 1.000000e+00)
  %i.vf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.ve) #6 ; 0 uses
  %i.vg = call i32 @av_dict_set(ptr noundef nonnull %i.uo, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 0) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.vh = load i32, ptr %i.ul, align 8, !tbaa !33
  %i.vi = sext i32 %i.vh to i64
  %i.vj = icmp slt i64 %indvars.iv.next512, %i.vi
  br i1 %i.vj, label %bb.aj, label %._crit_edge465, !llvm.loop !43

._crit_edge465:                                   ; preds = %bb.aj, %.preheader409, %.preheader, %.loopexit
  %i.vk = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not400 = icmp eq ptr %.0383, %i.vk
  br i1 %.not400, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge465
  call void @av_frame_free(ptr noundef nonnull %i.a) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge465
end_hunk_0
