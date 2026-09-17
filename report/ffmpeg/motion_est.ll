Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/motion_est?download=true
inline.NumInlined: 141
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_estimate_p_frame_motion:bb.a
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !61
  %i.hr = getelementptr i8, ptr %i.hj, i64 8
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !78
  %i.ht = sext i16 %i.hs to i32                   ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 %i.ht, ptr %i.hu, align 8, !tbaa !61
  %i.hv = getelementptr i8, ptr %i.hj, i64 10
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !78
  %i.hx = sext i16 %i.hw to i32                   ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !61
  %i.hz = load i32, ptr %i.ev, align 8, !tbaa !27
  %i.ia = shl i32 %i.hz, %i.g                     ; 6 uses
  %i.ib = icmp slt i32 %i.ia, %i.hp
  br i1 %i.ib, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.ia, ptr %i.hq, align 4, !tbaa !61
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ic = phi i32 [ %i.ia, %bb.ah ], [ %i.hp, %bb.ag ] ; 2 uses
  %i.id = load i32, ptr %i.en, align 4, !tbaa !24
  %i.ie = shl i32 %i.id, %i.g                     ; 3 uses
  %i.if = icmp sgt i32 %i.ie, %i.ht
  br i1 %i.if, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.ie, ptr %i.hu, align 8, !tbaa !61
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ig = phi i32 [ %i.ie, %bb.aj ], [ %i.ht, %bb.ai ]
  %i.ih = icmp slt i32 %i.ia, %i.hx
  br i1 %i.ih, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !61
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ii = phi i32 [ %i.ia, %bb.al ], [ %i.hx, %bb.ak ]
  %..i = tail call i32 @llvm.smax.i32(i32 %i.he, i32 %i.hl)
  %.20.i = tail call i32 @llvm.smin.i32(i32 %i.he, i32 %i.hl)
  %i.ij = tail call i32 @llvm.smin.i32(i32 %i.ig, i32 %..i)
  %i.ik = tail call noundef i32 @llvm.smax.i32(i32 %i.ij, i32 %.20.i) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.ik, ptr %i.il, align 16, !tbaa !61
  %..i291 = tail call i32 @llvm.smax.i32(i32 %i.gz, i32 %i.ic)
  %.20.i292 = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.ic)
  %i.im = tail call i32 @llvm.smin.i32(i32 %i.ii, i32 %..i291)
  %i.in = tail call noundef i32 @llvm.smax.i32(i32 %i.im, i32 %.20.i292) ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.in, ptr %i.io, align 4, !tbaa !61
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !119
  %i.ir = icmp eq i32 %i.iq, 2
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 4764 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4768 ; 2 uses
  br i1 %i.ir, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 %i.ik, ptr %i.is, align 4, !tbaa !20
  store i32 %i.in, ptr %i.it, align 16, !tbaa !21
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  store i32 %i.he, ptr %i.is, align 4, !tbaa !20
  store i32 %i.gz, ptr %i.it, align 16, !tbaa !21
  br label %bb.aq

bb.ap:                                            ; preds = %bb.af
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 4764
  store i32 %i.he, ptr %i.iu, align 4, !tbaa !20
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4768
  store i32 %i.gz, ptr %i.iv, align 16, !tbaa !21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.ix = load ptr, ptr %i.iw, align 16, !tbaa !124
  %i.iy = lshr exact i32 32768, %i.f
  %i.iz = call i32 @ff_epzs_motion_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0, ptr noundef %i.ix, i32 noundef %i.iy, i32 noundef 0, i32 noundef 16)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %get_limits.exit
  %.0246 = phi i32 [ %i.iz, %bb.aq ], [ 0, %get_limits.exit ] ; 2 uses
  %i.ja = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.jb = load i32, ptr %i.b, align 4, !tbaa !61  ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.bc, align 16, !tbaa !108 ; 2 uses
  %i.je = mul nsw i64 %i.jd, %i.jc
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 %i.je
  %i.jg = load i32, ptr %i.a, align 4, !tbaa !61  ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %i.jf, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 5320
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !102
  %i.jl = tail call i32 %i.jk(ptr noundef null, ptr noundef %i.ad, ptr noundef %i.ji, i64 noundef %i.jd, i32 noundef 16) #14 ; 7 uses
  %i.jm = add nsw i32 %i.jl, 128
  %i.jn = ashr i32 %i.jm, 8                       ; 2 uses
  %i.jo = trunc i32 %i.jn to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %i.jq = load ptr, ptr %i.jp, align 16, !tbaa !125
  %i.jr = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.js = mul nsw i32 %i.jr, %2
  %i.jt = add nsw i32 %i.js, %1
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.ju
  store i16 %i.jo, ptr %i.jv, align 2, !tbaa !78
  %i.jw = sext i32 %i.jn to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 16, !tbaa !126
  %i.jz = add nsw i64 %i.jy, %i.jw
  store i64 %i.jz, ptr %i.jx, align 16, !tbaa !126
  %i.ka = load ptr, ptr %i.d, align 16, !tbaa !79
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 284
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !127
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.as, label %bb.by

bb.as:                                            ; preds = %bb.ar
  %i.ke = load i32, ptr %i.bm, align 4, !tbaa !114
  %i.kf = lshr i32 %i.ke, 7                       ; 2 uses
  %i.kg = mul nuw i32 %i.kf, 100
  %i.kh = add i32 %i.kg, %i.fi
  %. = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 %i.kh) ; 12 uses
  %i.ki = mul nuw nsw i32 %i.kf, 20
  %i.kj = add i32 %i.ki, %i.fi                    ; 12 uses
  %i.kk = icmp ult i32 %., 255
  br i1 %i.kk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kl = zext nneg i32 %. to i64
  %i.km = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !69
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -1
  %i.kr = ashr i32 %i.kq, 4
  br label %ff_sqrt.exit

bb.au:                                            ; preds = %bb.as
  %i.ks = icmp ult i32 %., 4096
  br i1 %i.ks, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kt = lshr i32 %., 4
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !69
  %i.kx = lshr i8 %i.kw, 2
  %i.ky = zext nneg i8 %i.kx to i32
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %i.kz = icmp ult i32 %., 16384
  br i1 %i.kz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.la = lshr i32 %., 6
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !69
  %i.le = lshr i8 %i.ld, 1
  %i.lf = zext nneg i8 %i.le to i32
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.lg = icmp ult i32 %., 65536
  br i1 %i.lg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.lh = lshr i32 %., 8
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !69
  %i.ll = zext i8 %i.lk to i32
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i = icmp ult i32 %., 16777216           ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %., %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.lm = zext nneg i32 %spec.select.i.i to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !69
  %i.lp = zext i8 %i.lo to i32
  %i.lq = add nuw nsw i32 %spec.select7.i.i, %i.lp
  %i.lr = lshr i32 %i.lq, 1                       ; 3 uses
  %i.ls = add nuw nsw i32 %i.lr, 2
  %i.lt = lshr i32 %., %i.ls                      ; 2 uses
  %i.lu = add nuw nsw i32 %i.lr, 8
  %i.lv = lshr i32 %i.lt, %i.lu
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !69  ; 2 uses
  %i.lz = zext i8 %i.ly to i32
  %i.ma = zext i8 %i.ly to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !61
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.lt, i32 %i.mc)
  %i.md = shl i32 %i.lz, %i.lr
  %i.me = add i32 %3, %i.md
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.av
  %.022.i = phi i32 [ %i.ky, %bb.av ], [ %i.lf, %bb.ax ], [ %i.ll, %bb.az ], [ %i.me, %bb.ba ] ; 3 uses
  %i.mf = mul i32 %.022.i, %.022.i
  %i.mg = icmp ult i32 %., %i.mf
  %.neg.i = sext i1 %i.mg to i32
  %i.mh = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.at, %bb.bb
  %.0.i293 = phi i32 [ %i.kr, %bb.at ], [ %i.mh, %bb.bb ]
  %i.mi = icmp ult i32 %i.kj, 255
  br i1 %i.mi, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %ff_sqrt.exit
  %i.mj = zext nneg i32 %i.kj to i64
  %i.mk = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !69
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add nsw i32 %i.mn, -1
  %i.mp = ashr i32 %i.mo, 4
  br label %ff_sqrt.exit301

bb.bd:                                            ; preds = %ff_sqrt.exit
  %i.mq = icmp ult i32 %i.kj, 4096
  br i1 %i.mq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mr = lshr i32 %i.kj, 4
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !69
  %i.mv = lshr i8 %i.mu, 2
  %i.mw = zext nneg i8 %i.mv to i32
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.mx = icmp ult i32 %i.kj, 16384
  br i1 %i.mx, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.my = lshr i32 %i.kj, 6
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !69
  %i.nc = lshr i8 %i.nb, 1
  %i.nd = zext nneg i8 %i.nc to i32
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.ne = icmp ult i32 %i.kj, 65536
  br i1 %i.ne, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nf = lshr i32 %i.kj, 8
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !69
  %i.nj = zext i8 %i.ni to i32
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i294 = icmp ult i32 %i.kj, 16777216     ; 2 uses
  %spec.select.i.v.i295 = select i1 %.not.i.i294, i32 16, i32 24
  %spec.select.i.i296 = lshr i32 %i.kj, %spec.select.i.v.i295
  %spec.select7.i.i297 = select i1 %.not.i.i294, i32 0, i32 8
  %i.nk = zext nneg i32 %spec.select.i.i296 to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !69
  %i.nn = zext i8 %i.nm to i32
  %i.no = add nuw nsw i32 %spec.select7.i.i297, %i.nn
  %i.np = lshr i32 %i.no, 1                       ; 3 uses
  %i.nq = add nuw nsw i32 %i.np, 2
  %i.nr = lshr i32 %i.kj, %i.nq                   ; 2 uses
  %i.ns = add nuw nsw i32 %i.np, 8
  %i.nt = lshr i32 %i.nr, %i.ns
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !69  ; 2 uses
  %i.nx = zext i8 %i.nw to i32
  %i.ny = zext i8 %i.nw to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !61
  %4 = tail call i32 @llvm.umulh.i32(i32 %i.nr, i32 %i.oa)
  %i.ob = shl i32 %i.nx, %i.np
  %i.oc = add i32 %4, %i.ob
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.be
  %.022.i298 = phi i32 [ %i.mw, %bb.be ], [ %i.nd, %bb.bg ], [ %i.nj, %bb.bi ], [ %i.oc, %bb.bj ] ; 3 uses
  %i.od = mul i32 %.022.i298, %.022.i298
  %i.oe = icmp ult i32 %i.kj, %i.od
  %.neg.i299 = sext i1 %i.oe to i32
  %i.of = add i32 %.022.i298, %.neg.i299
  br label %ff_sqrt.exit301

ff_sqrt.exit301:                                  ; preds = %bb.bc, %bb.bk
  %.0.i300 = phi i32 [ %i.mp, %bb.bc ], [ %i.of, %bb.bk ]
  %i.og = sub i32 %.0.i293, %.0.i300
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 5056 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 16, !tbaa !161
  %i.oj = add i32 %i.og, %i.oi
  store i32 %i.oj, ptr %i.oh, align 16, !tbaa !161
  %i.ok = shl nsw i32 %i.jl, 1
  %i.ol = add nsw i32 %i.ok, 51200
  %i.om = icmp sgt i32 %i.ol, %i.fj
  br i1 %i.om, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %ff_sqrt.exit301
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 6640
  %i.oo = load i32, ptr %i.on, align 16, !tbaa !162
  %.not269 = icmp eq i32 %i.oo, 0
  %spec.select = zext i1 %.not269 to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %ff_sqrt.exit301
  %.0245 = phi i32 [ %spec.select, %bb.bl ], [ 0, %ff_sqrt.exit301 ] ; 3 uses
  %i.op = shl nsw i32 %i.fj, 1
  %i.oq = add nsw i32 %i.op, 51200
  %i.or = icmp sgt i32 %i.oq, %i.jl
  br i1 %i.or, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !163
  %i.ou = icmp sgt i32 %i.ot, 24
  br i1 %i.ou, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ov = or disjoint i32 %.0245, 2               ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.ox = load ptr, ptr %i.ow, align 16, !tbaa !105
  %i.oy = call i32 %i.ox(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.0246, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16) #14 ; 0 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !76
  %i.pb = and i32 %i.pa, 32
  %.not270 = icmp eq i32 %i.pb, 0
  br i1 %.not270, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pc = load i32, ptr %i.a, align 4, !tbaa !61
  %i.pd = icmp ne i32 %i.pc, 0
  %i.pe = load i32, ptr %i.b, align 4
  %i.pf = icmp ne i32 %i.pe, 0
  %or.cond = select i1 %i.pd, i1 true, i1 %i.pf
  %i.pg = or disjoint i32 %.0245, 10
  %spec.select276 = select i1 %or.cond, i32 %i.pg, i32 %i.ov
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.ph = shl i32 %i.jg, %i.g
  store i32 %i.ph, ptr %i.a, align 4, !tbaa !61
  %i.pi = shl i32 %i.jb, %i.g
  store i32 %i.pi, ptr %i.b, align 4, !tbaa !61
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bq
  %.1 = phi i32 [ %.0245, %bb.bq ], [ %spec.select276, %bb.bp ], [ %i.ov, %bb.bo ] ; 3 uses
  %i.pj = load ptr, ptr %i.d, align 16, !tbaa !79
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 64
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !103 ; 2 uses
  %i.pm = and i32 %i.pl, 4
  %.not271 = icmp eq i32 %i.pm, 0
  br i1 %.not271, label %._crit_edge, label %bb.bs

._crit_edge:                                      ; preds = %bb.br
  %.pre324 = load i32, ptr %i.a, align 4, !tbaa !61
  %.pre326 = load i32, ptr %i.b, align 4, !tbaa !61
  br label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.pn = load i32, ptr %i.ey, align 4, !tbaa !92
  %i.po = icmp eq i32 %i.pn, 0
  %i.pp = icmp sgt i32 %i.fj, 12800
  %or.cond3 = select i1 %i.po, i1 %i.pp, i1 false
  %i.pq = icmp sgt i32 %i.jl, 2560
  %or.cond5 = select i1 %or.cond3, i1 %i.pq, i1 false
  %.pre325 = load i32, ptr %i.a, align 4, !tbaa !61 ; 2 uses
  %.pre327 = load i32, ptr %i.b, align 4, !tbaa !61 ; 2 uses
  br i1 %or.cond5, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.pr = call fastcc i32 @h263_mv4_search(ptr noundef nonnull %0, i32 noundef %.pre325, i32 noundef %.pre327, i32 noundef %i.g)
  %.not272 = icmp eq i32 %i.pr, 2147483647
  %i.ps = or i32 %.1, 4
  %spec.select277 = select i1 %.not272, i32 %.1, i32 %i.ps
  %i.pt = load i32, ptr %i.a, align 4, !tbaa !61  ; 2 uses
  %i.pu = load i32, ptr %i.b, align 4, !tbaa !61  ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !72
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.py = load i32, ptr %i.px, align 8, !tbaa !73
  %i.pz = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.qa = mul nsw i32 %i.pz, %i.py
  %i.qb = add nsw i32 %i.qa, %i.pw
  %i.qc = trunc i32 %i.pt to i16
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.qe = load ptr, ptr %i.qd, align 16, !tbaa !124
  %i.qf = sext i32 %i.qb to i64
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.qf ; 2 uses
  store i16 %i.qc, ptr %i.qg, align 2, !tbaa !78
  %i.qh = trunc i32 %i.pu to i16
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  store i16 %i.qh, ptr %i.qi, align 2, !tbaa !78
  %.pre328 = load ptr, ptr %i.d, align 16, !tbaa !79
  %.phi.trans.insert329 = getelementptr inbounds nuw i8, ptr %.pre328, i64 64
  %.pre330 = load i32, ptr %.phi.trans.insert329, align 8, !tbaa !103
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge, %bb.bs
  %i.qj = phi i32 [ %.pre326, %._crit_edge ], [ %.pre327, %bb.bs ] ; 2 uses
  %i.qk = phi i32 [ %.pre324, %._crit_edge ], [ %.pre325, %bb.bs ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !72
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !73
  %i.qp = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.qq = mul nsw i32 %i.qp, %i.qo
  %i.qr = add nsw i32 %i.qq, %i.qm
  %i.qs = trunc i32 %i.qk to i16                  ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.qu = load ptr, ptr %i.qt, align 16, !tbaa !124
  %i.qv = sext i32 %i.qr to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qv ; 2 uses
  store i16 %i.qs, ptr %i.qw, align 2, !tbaa !78
  %i.qx = trunc i32 %i.qj to i16                  ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 2
  store i16 %i.qx, ptr %i.qy, align 2, !tbaa !78
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.ra = load i32, ptr %i.qz, align 16, !tbaa !61 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.rc = load ptr, ptr %i.rb, align 16, !tbaa !123 ; 2 uses
  %i.rd = sext i32 %i.ra to i64
  %i.re = getelementptr [4 x i8], ptr %i.rc, i64 %i.rd ; 4 uses
  store i16 %i.qs, ptr %i.re, align 2, !tbaa !78
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 2
  store i16 %i.qx, ptr %i.rf, align 2, !tbaa !78
  %i.rg = getelementptr i8, ptr %i.re, i64 4
  store i16 %i.qs, ptr %i.rg, align 2, !tbaa !78
  %i.rh = getelementptr i8, ptr %i.re, i64 6
  store i16 %i.qx, ptr %i.rh, align 2, !tbaa !78
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.rj = load i32, ptr %i.ri, align 16, !tbaa !122
  %i.rk = add nsw i32 %i.rj, %i.ra
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr [4 x i8], ptr %i.rc, i64 %i.rl ; 4 uses
  store i16 %i.qs, ptr %i.rm, align 2, !tbaa !78
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 2
  store i16 %i.qx, ptr %i.rn, align 2, !tbaa !78
  %i.ro = getelementptr i8, ptr %i.rm, i64 4
  store i16 %i.qs, ptr %i.ro, align 2, !tbaa !78
  %i.rp = getelementptr i8, ptr %i.rm, i64 6
  store i16 %i.qx, ptr %i.rp, align 2, !tbaa !78
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.rq = phi i32 [ %i.pu, %bb.bt ], [ %i.qj, %bb.bu ]
  %i.rr = phi i32 [ %i.pt, %bb.bt ], [ %i.qk, %bb.bu ]
  %i.rs = phi i32 [ %.pre330, %bb.bt ], [ %i.pl, %bb.bu ]
  %.3 = phi i32 [ %spec.select277, %bb.bt ], [ %.1, %bb.bu ] ; 4 uses
  %i.rt = and i32 %i.rs, 536870912
  %.not273 = icmp eq i32 %i.rt, 0
  br i1 %.not273, label %bb.dc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ru = load i32, ptr %i.ey, align 4, !tbaa !92
  %.not274 = icmp eq i32 %i.ru, 0
  br i1 %.not274, label %bb.bx, label %bb.dc

bb.bx:                                            ; preds = %bb.bw
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 6016
  %i.rx = call fastcc i32 @interlaced_search(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.rv, ptr noundef nonnull %i.rw, i32 noundef %i.rr, i32 noundef %i.rq)
  %.not275 = icmp eq i32 %i.rx, 2147483647
  %i.ry = or i32 %.3, 256
  %spec.select278 = select i1 %.not275, i32 %.3, i32 %i.ry
  br label %bb.dc

bb.by:                                            ; preds = %bb.ar
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.sa = load ptr, ptr %i.rz, align 16, !tbaa !105
  %i.sb = call i32 %i.sa(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.0246, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16) #14 ; 2 uses
  %i.sc = load ptr, ptr %i.d, align 16, !tbaa !79 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 248
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !99
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 252
end_hunk_0
begin_hunk_1_@ff_estimate_p_frame_motion:bb.a
  %i.tr = load ptr, ptr %i.tq, align 16, !tbaa !124
  %i.ts = sext i32 %i.to to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ts ; 2 uses
  store i16 %i.tp, ptr %i.tt, align 2, !tbaa !78
  %i.tu = trunc i32 %i.th to i16                  ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 2
  store i16 %i.tu, ptr %i.tv, align 2, !tbaa !78
  br i1 %.not319, label %set_p_mv_tables.exit, label %bb.ch

bb.ch:                                            ; preds = %select.unfold
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.tx = load i32, ptr %i.tw, align 16, !tbaa !61 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.tz = load ptr, ptr %i.ty, align 16, !tbaa !123 ; 2 uses
  %i.ua = sext i32 %i.tx to i64
  %i.ub = getelementptr [4 x i8], ptr %i.tz, i64 %i.ua ; 4 uses
  store i16 %i.tp, ptr %i.ub, align 2, !tbaa !78
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store i16 %i.tu, ptr %i.uc, align 2, !tbaa !78
  %i.ud = getelementptr i8, ptr %i.ub, i64 4
  store i16 %i.tp, ptr %i.ud, align 2, !tbaa !78
  %i.ue = getelementptr i8, ptr %i.ub, i64 6
  store i16 %i.tu, ptr %i.ue, align 2, !tbaa !78
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ug = load i32, ptr %i.uf, align 16, !tbaa !122
  %i.uh = add nsw i32 %i.ug, %i.tx
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr [4 x i8], ptr %i.tz, i64 %i.ui ; 4 uses
  store i16 %i.tp, ptr %i.uj, align 2, !tbaa !78
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 2
  store i16 %i.tu, ptr %i.uk, align 2, !tbaa !78
  %i.ul = getelementptr i8, ptr %i.uj, i64 4
  store i16 %i.tp, ptr %i.ul, align 2, !tbaa !78
  %i.um = getelementptr i8, ptr %i.uj, i64 6
  store i16 %i.tu, ptr %i.um, align 2, !tbaa !78
  br label %set_p_mv_tables.exit

set_p_mv_tables.exit:                             ; preds = %select.unfold, %bb.ch
  %i.un = load ptr, ptr %i.d, align 16, !tbaa !79
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 252
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !101
  %i.uq = and i32 %i.up, 255
  %i.ur = icmp eq i32 %i.uq, 1
  br i1 %i.ur, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %set_p_mv_tables.exit
  %i.us = mul i32 %i.fl, 16843009
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 16, !tbaa !128 ; 16 uses
  %i.uv = load i64, ptr %i.bc, align 16, !tbaa !108 ; 15 uses
  %i.uw = insertelement <4 x i32> poison, i32 %i.us, i64 0
  %i.ux = shufflevector <4 x i32> %i.uw, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  store <4 x i32> %i.ux, ptr %i.uu, align 4, !tbaa !61
  %i.uy = getelementptr inbounds i8, ptr %i.uu, i64 %i.uv
  store <4 x i32> %i.ux, ptr %i.uy, align 4, !tbaa !61
  %i.uz = shl nsw i64 %i.uv, 1
  %i.va = getelementptr inbounds i8, ptr %i.uu, i64 %i.uz
  store <4 x i32> %i.ux, ptr %i.va, align 4, !tbaa !61
  %i.vb = mul nsw i64 %i.uv, 3
  %i.vc = getelementptr inbounds i8, ptr %i.uu, i64 %i.vb
  store <4 x i32> %i.ux, ptr %i.vc, align 4, !tbaa !61
  %i.vd = shl nsw i64 %i.uv, 2
  %i.ve = getelementptr inbounds i8, ptr %i.uu, i64 %i.vd
  store <4 x i32> %i.ux, ptr %i.ve, align 4, !tbaa !61
  %i.vf = mul nsw i64 %i.uv, 5
  %i.vg = getelementptr inbounds i8, ptr %i.uu, i64 %i.vf
  store <4 x i32> %i.ux, ptr %i.vg, align 4, !tbaa !61
  %i.vh = mul nsw i64 %i.uv, 6
  %i.vi = getelementptr inbounds i8, ptr %i.uu, i64 %i.vh
  store <4 x i32> %i.ux, ptr %i.vi, align 4, !tbaa !61
  %i.vj = mul nsw i64 %i.uv, 7
  %i.vk = getelementptr inbounds i8, ptr %i.uu, i64 %i.vj
  store <4 x i32> %i.ux, ptr %i.vk, align 4, !tbaa !61
  %i.vl = shl nsw i64 %i.uv, 3
  %i.vm = getelementptr inbounds i8, ptr %i.uu, i64 %i.vl
  store <4 x i32> %i.ux, ptr %i.vm, align 4, !tbaa !61
  %i.vn = mul nsw i64 %i.uv, 9
  %i.vo = getelementptr inbounds i8, ptr %i.uu, i64 %i.vn
  store <4 x i32> %i.ux, ptr %i.vo, align 4, !tbaa !61
  %i.vp = mul nsw i64 %i.uv, 10
  %i.vq = getelementptr inbounds i8, ptr %i.uu, i64 %i.vp
  store <4 x i32> %i.ux, ptr %i.vq, align 4, !tbaa !61
  %i.vr = mul nsw i64 %i.uv, 11
  %i.vs = getelementptr inbounds i8, ptr %i.uu, i64 %i.vr
  store <4 x i32> %i.ux, ptr %i.vs, align 4, !tbaa !61
  %i.vt = mul nsw i64 %i.uv, 12
  %i.vu = getelementptr inbounds i8, ptr %i.uu, i64 %i.vt
  store <4 x i32> %i.ux, ptr %i.vu, align 4, !tbaa !61
  %i.vv = mul nsw i64 %i.uv, 13
  %i.vw = getelementptr inbounds i8, ptr %i.uu, i64 %i.vv
  store <4 x i32> %i.ux, ptr %i.vw, align 4, !tbaa !61
  %i.vx = mul nsw i64 %i.uv, 14
  %i.vy = getelementptr inbounds i8, ptr %i.uu, i64 %i.vx
  store <4 x i32> %i.ux, ptr %i.vy, align 4, !tbaa !61
  %i.vz = mul nsw i64 %i.uv, 15
  %i.wa = getelementptr inbounds i8, ptr %i.uu, i64 %i.vz
  store <4 x i32> %i.ux, ptr %i.wa, align 4, !tbaa !61
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 5208
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !22
  %i.wd = load ptr, ptr %i.ut, align 16, !tbaa !128
  %i.we = load i64, ptr %i.bc, align 16, !tbaa !108
  %i.wf = call i32 %i.wc(ptr noundef nonnull %0, ptr noundef %i.wd, ptr noundef %i.ad, i64 noundef %i.we, i32 noundef 16) #14
  br label %bb.cj

bb.cj:                                            ; preds = %set_p_mv_tables.exit, %bb.ci
  %.0244 = phi i32 [ %i.wf, %bb.ci ], [ %i.fi, %set_p_mv_tables.exit ]
  %i.wg = load i32, ptr %i.cs, align 16, !tbaa !17
  %i.wh = shl nsw i32 %i.wg, 4
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 6640
  %i.wj = load i32, ptr %i.wi, align 16, !tbaa !162
  %i.wk = add i32 %i.wj, %.0244
  %i.wl = add i32 %i.wk, %i.wh
  %i.wm = icmp slt i32 %i.wl, %.5251              ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.wo = load ptr, ptr %i.wn, align 16, !tbaa !129
  %i.wp = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.wq = mul nsw i32 %i.wp, %2
  %i.wr = add nsw i32 %i.wq, %1
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.ws
  %.345 = zext i1 %i.wm to i32
  %..8 = select i1 %i.wm, i32 1, i32 %.8
  store i32 %.345, ptr %i.wt, align 4, !tbaa !61
  %i.wu = load i32, ptr %i.bm, align 4, !tbaa !114
  %i.wv = lshr i32 %i.wu, 7                       ; 2 uses
  %i.ww = mul nuw i32 %i.wv, 100
  %i.wx = add i32 %i.ww, %i.fi
  %.283 = call i32 @llvm.umin.i32(i32 %i.jl, i32 %i.wx) ; 12 uses
  %i.wy = mul nuw nsw i32 %i.wv, 20
  %i.wz = add i32 %i.wy, %i.fi                    ; 12 uses
  %i.xa = icmp ult i32 %.283, 255
  br i1 %i.xa, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xb = zext nneg i32 %.283 to i64
  %i.xc = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !69
  %i.xf = zext i8 %i.xe to i32
  %i.xg = add nsw i32 %i.xf, -1
  %i.xh = ashr i32 %i.xg, 4
  br label %ff_sqrt.exit310

bb.cl:                                            ; preds = %bb.cj
  %i.xi = icmp ult i32 %.283, 4096
  br i1 %i.xi, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xj = lshr i32 %.283, 4
  %i.xk = zext nneg i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !69
  %i.xn = lshr i8 %i.xm, 2
  %i.xo = zext nneg i8 %i.xn to i32
  br label %bb.cs

bb.cn:                                            ; preds = %bb.cl
  %i.xp = icmp ult i32 %.283, 16384
  br i1 %i.xp, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.xq = lshr i32 %.283, 6
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !69
  %i.xu = lshr i8 %i.xt, 1
  %i.xv = zext nneg i8 %i.xu to i32
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.xw = icmp ult i32 %.283, 65536
  br i1 %i.xw, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.xx = lshr i32 %.283, 8
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !69
  %i.yb = zext i8 %i.ya to i32
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %.not.i.i303 = icmp ult i32 %.283, 16777216     ; 2 uses
  %spec.select.i.v.i304 = select i1 %.not.i.i303, i32 16, i32 24
  %spec.select.i.i305 = lshr i32 %.283, %spec.select.i.v.i304
  %spec.select7.i.i306 = select i1 %.not.i.i303, i32 0, i32 8
  %i.yc = zext nneg i32 %spec.select.i.i305 to i64
  %i.yd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.yc
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !69
  %i.yf = zext i8 %i.ye to i32
  %i.yg = add nuw nsw i32 %spec.select7.i.i306, %i.yf
  %i.yh = lshr i32 %i.yg, 1                       ; 3 uses
  %i.yi = add nuw nsw i32 %i.yh, 2
  %i.yj = lshr i32 %.283, %i.yi                   ; 2 uses
  %i.yk = add nuw nsw i32 %i.yh, 8
  %i.yl = lshr i32 %i.yj, %i.yk
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !69  ; 2 uses
  %i.yp = zext i8 %i.yo to i32
  %i.yq = zext i8 %i.yo to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.yq
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !61
  %5 = call i32 @llvm.umulh.i32(i32 %i.yj, i32 %i.ys)
  %i.yt = shl i32 %i.yp, %i.yh
  %i.yu = add i32 %5, %i.yt
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.co, %bb.cm
  %.022.i307 = phi i32 [ %i.xo, %bb.cm ], [ %i.xv, %bb.co ], [ %i.yb, %bb.cq ], [ %i.yu, %bb.cr ] ; 3 uses
  %i.yv = mul i32 %.022.i307, %.022.i307
  %i.yw = icmp ult i32 %.283, %i.yv
  %.neg.i308 = sext i1 %i.yw to i32
  %i.yx = add i32 %.022.i307, %.neg.i308
  br label %ff_sqrt.exit310

ff_sqrt.exit310:                                  ; preds = %bb.ck, %bb.cs
  %.0.i309 = phi i32 [ %i.xh, %bb.ck ], [ %i.yx, %bb.cs ]
  %i.yy = icmp ult i32 %i.wz, 255
  br i1 %i.yy, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %ff_sqrt.exit310
  %i.yz = zext nneg i32 %i.wz to i64
  %i.za = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !69
  %i.zd = zext i8 %i.zc to i32
  %i.ze = add nsw i32 %i.zd, -1
  %i.zf = ashr i32 %i.ze, 4
  br label %ff_sqrt.exit318

bb.cu:                                            ; preds = %ff_sqrt.exit310
  %i.zg = icmp ult i32 %i.wz, 4096
  br i1 %i.zg, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zh = lshr i32 %i.wz, 4
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.zi
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !69
  %i.zl = lshr i8 %i.zk, 2
  %i.zm = zext nneg i8 %i.zl to i32
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  %i.zn = icmp ult i32 %i.wz, 16384
  br i1 %i.zn, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.zo = lshr i32 %i.wz, 6
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.zp
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !69
  %i.zs = lshr i8 %i.zr, 1
  %i.zt = zext nneg i8 %i.zs to i32
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.zu = icmp ult i32 %i.wz, 65536
  br i1 %i.zu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.zv = lshr i32 %i.wz, 8
  %i.zw = zext nneg i32 %i.zv to i64
  %i.zx = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.zw
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !69
  %i.zz = zext i8 %i.zy to i32
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %.not.i.i311 = icmp ult i32 %i.wz, 16777216     ; 2 uses
  %spec.select.i.v.i312 = select i1 %.not.i.i311, i32 16, i32 24
  %spec.select.i.i313 = lshr i32 %i.wz, %spec.select.i.v.i312
  %spec.select7.i.i314 = select i1 %.not.i.i311, i32 0, i32 8
  %i.aaa = zext nneg i32 %spec.select.i.i313 to i64
  %i.aab = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aaa
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !69
  %i.aad = zext i8 %i.aac to i32
  %i.aae = add nuw nsw i32 %spec.select7.i.i314, %i.aad
  %i.aaf = lshr i32 %i.aae, 1                     ; 3 uses
  %i.aag = add nuw nsw i32 %i.aaf, 2
  %i.aah = lshr i32 %i.wz, %i.aag                 ; 2 uses
  %i.aai = add nuw nsw i32 %i.aaf, 8
  %i.aaj = lshr i32 %i.aah, %i.aai
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aak
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !69 ; 2 uses
  %i.aan = zext i8 %i.aam to i32
  %i.aao = zext i8 %i.aam to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.aao
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !61
  %6 = call i32 @llvm.umulh.i32(i32 %i.aah, i32 %i.aaq)
  %i.aar = shl i32 %i.aan, %i.aaf
  %i.aas = add i32 %6, %i.aar
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cv
  %.022.i315 = phi i32 [ %i.zm, %bb.cv ], [ %i.zt, %bb.cx ], [ %i.zz, %bb.cz ], [ %i.aas, %bb.da ] ; 3 uses
  %i.aat = mul i32 %.022.i315, %.022.i315
  %i.aau = icmp ult i32 %i.wz, %i.aat
  %.neg.i316 = sext i1 %i.aau to i32
  %i.aav = add i32 %.022.i315, %.neg.i316
  br label %ff_sqrt.exit318

ff_sqrt.exit318:                                  ; preds = %bb.ct, %bb.db
  %.0.i317 = phi i32 [ %i.zf, %bb.ct ], [ %i.aav, %bb.db ]
  %i.aaw = sub i32 %.0.i309, %.0.i317
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 5056 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 16, !tbaa !161
  %i.aaz = add i32 %i.aaw, %i.aay
  store i32 %i.aaz, ptr %i.aax, align 16, !tbaa !161
  br label %bb.dc

bb.dc:                                            ; preds = %bb.bx, %bb.bv, %bb.bw, %ff_sqrt.exit318
  %.10 = phi i32 [ %..8, %ff_sqrt.exit318 ], [ %.3, %bb.bw ], [ %.3, %bb.bv ], [ %spec.select278, %bb.bx ]
  %i.aba = trunc nuw nsw i32 %.10 to i16
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %i.abc = load ptr, ptr %i.abb, align 16, !tbaa !130
  %i.abd = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.abe = mul nsw i32 %i.abd, %2
  %i.abf = add nsw i32 %i.abe, %1
  %i.abg = sext i32 %i.abf to i64
  %i.abh = getelementptr inbounds [2 x i8], ptr %i.abc, i64 %i.abg
  store i16 %i.aba, ptr %i.abh, align 2, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @h263_mv4_search(ptr noundef initializes((4808, 4816), (4840, 4848), (4872, 4880), (4936, 4944), (4968, 4976), (5000, 5008)) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x [2 x i32]], align 16        ; 20 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.j = load i32, ptr %i.i, align 8, !tbaa !118
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i32, ptr %i.k, align 16, !tbaa !131
  %i.m = and i32 %i.l, 15
  %.not231 = icmp eq i32 %i.m, 0
  br i1 %.not231, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.o = load i32, ptr %i.n, align 4, !tbaa !132
  %i.p = and i32 %i.o, 15
  %i.q = icmp ne i32 %i.p, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4904 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4936
  store ptr %i.u, ptr %i.v, align 8, !tbaa !63
  %i.w = shl nsw i32 %i.f, 3
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4968
  store ptr %i.y, ptr %i.z, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5000
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4808
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !63
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.x ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4840
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4872
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.au = lshr i32 65536, %3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4748
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4764 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4768 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5208 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3772 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5344
  %i.bo = sext i32 %i.f to i64                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5328 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.v
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.v ] ; 8 uses
  %.0213256 = phi i32 [ 0, %bb.d ], [ %.1, %bb.v ]
  %.0216255 = phi i32 [ 1, %bb.d ], [ %.1217, %bb.v ]
  %.0219254 = phi i32 [ 0, %bb.d ], [ %.1220, %bb.v ]
  %.0221253 = phi i32 [ 0, %bb.d ], [ %.1222, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.by = load i32, ptr %i.ak, align 16, !tbaa !122
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !61 ; 2 uses
  br i1 %i.r, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.ap, align 16, !tbaa !25
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %indvars.iv.tr274 = trunc nuw nsw i64 %indvars.iv to i32
  %i.cb = load <2 x i32>, ptr %i.av, align 4, !tbaa !61
  %i.cc = load <2 x i32>, ptr %i.aw, align 16, !tbaa !61
  %i.cd = mul <2 x i32> %i.cb, splat (i32 -16)
  %i.ce = shl nuw nsw i32 %indvars.iv.tr274, 2
  %i.cf = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.cg = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.ce, i64 1
  %i.ci = and <2 x i32> %i.ch, splat (i32 8)
  %i.cj = sub <2 x i32> %i.cd, %i.ci
  %i.ck = add <2 x i32> %i.cj, %i.cc              ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0   ; 2 uses
  store i32 %i.cl, ptr %i.ap, align 16, !tbaa !25
  %i.cm = extractelement <2 x i32> %i.ck, i64 1
  store i32 %i.cm, ptr %i.ay, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.cn = phi i32 [ %.pre, %._crit_edge ], [ %i.cl, %bb.f ]
  %i.co = load ptr, ptr %i.am, align 16, !tbaa !123 ; 3 uses
  %i.cp = sext i32 %i.ca to i64
  %i.cq = getelementptr [4 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !78
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  store i32 %i.ct, ptr %i.an, align 8, !tbaa !61
  %i.cu = getelementptr i8, ptr %i.cq, i64 -2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !78
  %i.cw = sext i16 %i.cv to i32                   ; 8 uses
  store i32 %i.cw, ptr %i.ao, align 4, !tbaa !61
  %i.cx = shl i32 %i.cn, %3                       ; 10 uses
  %i.cy = icmp slt i32 %i.cx, %i.ct
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.cx, ptr %i.an, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cz = phi i32 [ %i.cx, %bb.h ], [ %i.ct, %bb.g ] ; 7 uses
  %i.da = load i32, ptr %i.aq, align 4, !tbaa !77
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp samesign ult i64 %indvars.iv, 2
end_hunk_1
begin_hunk_2_@epzs_motion_search2:bb.a
  %.8.i = phi i32 [ %.6.i, %bb.ar ], [ 3, %bb.au ], [ %.6.i, %bb.at ], [ %.6.i, %bb.as ] ; 2 uses
  %.not255.i = icmp eq i32 %.8.i, -1
  br i1 %.not255.i, label %diamond_search.exit.loopexit, label %bb.af

bb.aw:                                            ; preds = %bb.ac
  %i.yp = icmp samesign ugt i32 %i.ss, 1024
  br i1 %i.yp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.yq = call fastcc i32 @full_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.12, i32 noundef %4, i32 noundef %5, i32 noundef %i.c, i32 noundef %8, i32 noundef 8, i32 noundef %i.ab)
  br label %diamond_search.exit

bb.ay:                                            ; preds = %bb.aw
  %i.yr = icmp samesign ugt i32 %i.ss, 768
  br i1 %i.yr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ys = call fastcc i32 @umh_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.12, i32 noundef %4, i32 noundef %5, i32 noundef %i.c, i32 noundef %8, i32 noundef 8, i32 noundef %i.ab)
  br label %diamond_search.exit

bb.ba:                                            ; preds = %bb.ay
  %i.yt = icmp samesign ugt i32 %i.ss, 512
  br i1 %i.yt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.yu = and i32 %i.ss, 255
  %i.yv = call fastcc i32 @hex_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.12, i32 noundef %4, i32 noundef %5, i32 noundef %i.c, i32 noundef %8, i32 noundef 8, i32 noundef %i.ab, i32 noundef %i.yu)
  br label %diamond_search.exit

bb.bc:                                            ; preds = %bb.ba
  %i.yw = icmp samesign ugt i32 %i.ss, 256
  br i1 %i.yw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.yx = call fastcc i32 @l2s_dia_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.12, i32 noundef %4, i32 noundef %5, i32 noundef %i.c, i32 noundef %8, i32 noundef 8, i32 noundef %i.ab)
  br label %diamond_search.exit

bb.be:                                            ; preds = %bb.bc
  %i.yy = call fastcc i32 @var_diamond_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.12, i32 noundef %4, i32 noundef %5, i32 noundef %i.c, i32 noundef %8, i32 noundef 8, i32 noundef %i.ab)
  br label %diamond_search.exit

diamond_search.exit.loopexit:                     ; preds = %bb.av
  store i32 %i.yo, ptr %i.a, align 8
  store i32 %i.yn, ptr %i.ti, align 4
  br label %diamond_search.exit

diamond_search.exit:                              ; preds = %diamond_search.exit.loopexit, %bb.z, %bb.ab, %bb.ax, %bb.az, %bb.bb, %bb.bd, %bb.be
  %.0.i = phi i32 [ %i.su, %bb.z ], [ %i.sw, %bb.ab ], [ %i.yy, %bb.be ], [ %i.yq, %bb.ax ], [ %i.ys, %bb.az ], [ %i.yv, %bb.bb ], [ %i.yx, %bb.bd ], [ %.8233.i, %diamond_search.exit.loopexit ]
  %i.yz = load i32, ptr %i.a, align 8, !tbaa !61
  store i32 %i.yz, ptr %1, align 4, !tbaa !61
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !61
  store i32 %i.zb, ptr %2, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0.i
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @check_bidir_mv(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 -32768, 32768) %5, i32 noundef range(i32 -32768, 32768) %6, i32 noundef range(i32 -32768, 32768) %7, i32 noundef range(i32 -32768, 32768) %8) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.d = load i32, ptr %i.c, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %i.f = load i32, ptr %i.e, align 4, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4968 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.n = load i32, ptr %i.m, align 4, !tbaa !111
  %.not = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.p = sext i32 %i.h to i64                     ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = shl i32 %2, 2
  %i.r = and i32 %i.q, 12
  %i.s = and i32 %1, 3
  %i.t = or disjoint i32 %i.r, %i.s
  %i.u = ashr i32 %1, 2
  %i.v = ashr i32 %2, 2
  %i.w = mul nsw i32 %i.h, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.o, i64 %i.x
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  tail call void %i.ae(ptr noundef %i.j, ptr noundef %i.aa, i64 noundef %i.p) #14
  %i.af = shl i32 %4, 2
  %i.ag = and i32 %i.af, 12
  %i.ah = and i32 %3, 3
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = ashr i32 %3, 2
  %i.ak = ashr i32 %4, 2
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.am = mul nsw i32 %i.h, %i.ak
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = sext i32 %i.aj to i64
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.as = zext nneg i32 %i.ai to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  tail call void %i.au(ptr noundef %i.j, ptr noundef %i.aq, i64 noundef %i.p) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.av = shl i32 %2, 1
  %i.aw = and i32 %i.av, 2
  %i.ax = and i32 %1, 1
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = ashr i32 %1, 1
  %i.ba = ashr i32 %2, 1
  %i.bb = mul nsw i32 %i.h, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.o, i64 %i.bc
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.bh = zext nneg i32 %i.ay to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22
  tail call void %i.bj(ptr noundef %i.j, ptr noundef %i.bf, i64 noundef %i.p, i32 noundef 16) #14
  %i.bk = shl i32 %4, 1
  %i.bl = and i32 %i.bk, 2
  %i.bm = and i32 %3, 1
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %i.bo = ashr i32 %3, 1
  %i.bp = ashr i32 %4, 1
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.br = mul nsw i32 %i.h, %i.bp
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %i.bs
  %i.bu = sext i32 %i.bo to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.bx = zext nneg i32 %i.bn to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22
  tail call void %i.bz(ptr noundef %i.j, ptr noundef %i.bv, i64 noundef %i.p, i32 noundef 16) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.cb = sext i32 %i.f to i64
  %i.cc = getelementptr inbounds [16385 x i8], ptr %i.b, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8192 ; 2 uses
  %i.ce = sext i32 %i.d to i64
  %i.cf = getelementptr inbounds [16385 x i8], ptr %i.b, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8192 ; 2 uses
  %i.ch = sub nsw i32 %1, %5
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !69
  %i.cl = zext i8 %i.ck to i32
  %i.cm = sub nsw i32 %2, %6
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cg, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !69
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4720
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !17
  %i.ct = sub nsw i32 %3, %7
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cd, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !69
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub nsw i32 %4, %8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cd, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !69
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.cq, %i.cl
  %i.de = add nuw nsw i32 %i.dd, %i.cx
  %i.df = add nuw nsw i32 %i.de, %i.dc
  %i.dg = mul i32 %i.df, %i.cs
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 5208
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dj = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.dk = tail call i32 %i.di(ptr noundef nonnull %0, ptr noundef %i.dj, ptr noundef %i.j, i64 noundef %i.p, i32 noundef 16) #14
  %i.dl = add nsw i32 %i.dg, %i.dk
  ret i32 %i.dl
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"any p2 pointer", !11, i64 0}
!16 = !{!"MotionEstContext", !12, i64 0, !8, i64 8, !8, i64 12, !7, i64 16, !7, i64 48, !13, i64 80, !13, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !7, i64 168, !7, i64 296, !8, i64 424, !8, i64 428, !14, i64 432, !14, i64 440, !8, i64 448, !7, i64 456, !7, i64 504, !7, i64 552, !7, i64 600, !7, i64 648, !11, i64 712, !15, i64 720, !15, i64 728, !15, i64 736, !15, i64 744, !13, i64 752, !13, i64 760, !11, i64 768, !7, i64 776, !7, i64 1032}
!17 = !{!16, !8, i64 112}
!18 = !{!16, !8, i64 124}
!19 = !{!16, !13, i64 760}
!20 = !{!16, !8, i64 156}
!21 = !{!16, !8, i64 160}
!22 = !{!11, !11, i64 0}
!23 = !{!16, !8, i64 424}
!24 = !{!16, !8, i64 140}
!25 = !{!16, !8, i64 144}
!26 = !{!16, !8, i64 148}
!27 = !{!16, !8, i64 152}
!28 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!29 = !{!"ScanTable", !13, i64 0, !7, i64 8, !7, i64 72}
!30 = !{!"p1 _ZTS15AVRefStructPool", !11, i64 0}
!31 = !{!"BufferPoolContext", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !8, i64 40, !8, i64 44, !8, i64 48}
!32 = !{!"p1 _ZTS10MPVPicture", !11, i64 0}
!33 = !{!"p1 int", !11, i64 0}
!34 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !32, i64 48, !13, i64 56, !7, i64 64, !33, i64 80, !13, i64 88, !7, i64 96, !8, i64 112}
!35 = !{!"p1 short", !11, i64 0}
!36 = !{!"ScratchpadContext", !13, i64 0, !13, i64 8, !7, i64 16, !8, i64 24}
!37 = !{!"BlockDSPContext", !11, i64 0, !11, i64 8, !7, i64 16}
!38 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!39 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!40 = !{!"IDCTDSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !7, i64 48, !8, i64 112, !8, i64 116}
!41 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!42 = !{!"VideoDSPContext", !11, i64 0, !11, i64 8}
!43 = !{!"H263DSPContext", !11, i64 0, !11, i64 8}
!44 = !{!"short", !7, i64 0}
!45 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!46 = !{!"p1 _ZTS11ThreadFrame", !11, i64 0}
!47 = !{!"p1 _ZTS14ThreadProgress", !11, i64 0}
!48 = !{!"ERPicture", !45, i64 0, !46, i64 8, !47, i64 16, !7, i64 24, !7, i64 40, !33, i64 56, !8, i64 64}
!49 = !{!"ERContext", !12, i64 0, !11, i64 8, !33, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !14, i64 40, !14, i64 48, !7, i64 56, !8, i64 60, !13, i64 64, !13, i64 72, !7, i64 80, !13, i64 104, !13, i64 112, !7, i64 120, !48, i64 184, !48, i64 256, !48, i64 328, !7, i64 400, !7, i64 416, !44, i64 432, !44, i64 434, !8, i64 436, !8, i64 440, !11, i64 448, !11, i64 456}
!50 = !{!"MpegEncContext", !28, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !7, i64 20, !8, i64 68, !29, i64 72, !29, i64 208, !12, i64 344, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !14, i64 416, !14, i64 424, !30, i64 432, !31, i64 440, !8, i64 496, !8, i64 500, !7, i64 504, !8, i64 760, !34, i64 768, !34, i64 888, !34, i64 1008, !35, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !8, i64 1200, !13, i64 1208, !13, i64 1216, !13, i64 1224, !13, i64 1232, !36, i64 1240, !8, i64 1272, !8, i64 1276, !8, i64 1280, !8, i64 1284, !37, i64 1288, !38, i64 1320, !39, i64 1384, !40, i64 1768, !41, i64 1888, !42, i64 2656, !43, i64 2672, !35, i64 2688, !7, i64 2696, !8, i64 2728, !8, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !8, i64 3104, !8, i64 3108, !8, i64 3112, !8, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !33, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !8, i64 3712, !8, i64 3716, !8, i64 3720, !8, i64 3724, !8, i64 3728, !8, i64 3732, !8, i64 3736, !8, i64 3740, !14, i64 3744, !14, i64 3752, !44, i64 3760, !44, i64 3762, !44, i64 3764, !44, i64 3766, !8, i64 3768, !8, i64 3772, !8, i64 3776, !8, i64 3780, !8, i64 3784, !8, i64 3788, !8, i64 3792, !8, i64 3796, !7, i64 3800, !8, i64 3816, !8, i64 3820, !8, i64 3824, !8, i64 3828, !8, i64 3832, !8, i64 3836, !8, i64 3840, !8, i64 3844, !8, i64 3848, !8, i64 3852, !8, i64 3856, !8, i64 3860, !8, i64 3864, !8, i64 3868, !7, i64 3872, !8, i64 3880, !8, i64 3884, !11, i64 3888, !11, i64 3896, !8, i64 3904, !8, i64 3908, !49, i64 3912}
!51 = !{!"PutBitContext", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 16, !13, i64 24}
!52 = !{!"p1 _ZTS17MPVMainEncContext", !11, i64 0}
!53 = !{!"FDCTDSPContext", !11, i64 0, !11, i64 8}
!54 = !{!"MpegvideoEncDSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !11, i64 72}
!55 = !{!"PixblockDSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!56 = !{!"p1 _ZTS12MJpegContext", !11, i64 0}
!57 = !{!"MPVEncContext", !50, i64 0, !51, i64 4384, !8, i64 4416, !8, i64 4420, !33, i64 4424, !8, i64 4432, !8, i64 4436, !8, i64 4440, !8, i64 4444, !8, i64 4448, !8, i64 4452, !8, i64 4456, !8, i64 4460, !45, i64 4464, !52, i64 4472, !53, i64 4480, !54, i64 4496, !55, i64 4576, !16, i64 4608, !8, i64 5896, !8, i64 5900, !35, i64 5904, !35, i64 5912, !35, i64 5920, !35, i64 5928, !35, i64 5936, !35, i64 5944, !7, i64 5952, !7, i64 6016, !7, i64 6032, !35, i64 6064, !35, i64 6072, !35, i64 6080, !13, i64 6088, !7, i64 6096, !8, i64 6120, !8, i64 6124, !8, i64 6128, !8, i64 6132, !8, i64 6136, !13, i64 6144, !13, i64 6152, !13, i64 6160, !13, i64 6168, !13, i64 6176, !13, i64 6184, !13, i64 6192, !7, i64 6200, !35, i64 6248, !33, i64 6256, !33, i64 6264, !33, i64 6272, !35, i64 6280, !35, i64 6288, !35, i64 6296, !33, i64 6304, !7, i64 6312, !35, i64 6320, !8, i64 6328, !8, i64 6332, !8, i64 6336, !8, i64 6340, !8, i64 6344, !8, i64 6348, !8, i64 6352, !8, i64 6356, !7, i64 6360, !8, i64 6372, !8, i64 6376, !8, i64 6380, !8, i64 6384, !8, i64 6388, !13, i64 6392, !8, i64 6400, !8, i64 6404, !8, i64 6408, !8, i64 6412, !8, i64 6416, !56, i64 6424, !8, i64 6432, !8, i64 6436, !8, i64 6440, !8, i64 6444, !8, i64 6448, !51, i64 6456, !51, i64 6488, !8, i64 6520, !8, i64 6524, !8, i64 6528, !8, i64 6532, !8, i64 6536, !8, i64 6540, !13, i64 6544, !11, i64 6552, !11, i64 6560, !7, i64 6568, !7, i64 6584, !7, i64 6600, !7, i64 6616, !11, i64 6632, !8, i64 6640, !7, i64 6644, !7, i64 6708, !7, i64 6784}
!58 = !{!57, !44, i64 3760}
!59 = !{!57, !44, i64 3762}
!60 = !{!57, !8, i64 2732}
!61 = !{!8, !8, i64 0}
!62 = !{!16, !13, i64 88}
!63 = !{!13, !13, i64 0}
!64 = !{!16, !15, i64 720}
!65 = !{!16, !15, i64 728}
!66 = !{!16, !15, i64 736}
!67 = !{!16, !15, i64 744}
!68 = !{!16, !8, i64 428}
!69 = !{!7, !7, i64 0}
!70 = !{!16, !8, i64 116}
!71 = !{!57, !8, i64 396}
!72 = !{!57, !8, i64 3108}
!73 = !{!57, !8, i64 3112}
!74 = !{!16, !8, i64 96}
!75 = !{!57, !8, i64 1280}
!76 = !{!57, !8, i64 4456}
!77 = !{!57, !8, i64 3780}
!78 = !{!44, !44, i64 0}
!79 = !{!16, !12, i64 0}
!80 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!81 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!82 = !{!"AVRational", !8, i64 0, !8, i64 4}
!83 = !{!"float", !7, i64 0}
!84 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!85 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!86 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!87 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!88 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!89 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!90 = !{!"p2 _ZTS15AVFrameSideData", !15, i64 0}
!91 = !{!"AVCodecContext", !28, i64 0, !8, i64 8, !8, i64 12, !80, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !81, i64 40, !11, i64 48, !14, i64 56, !8, i64 64, !8, i64 68, !13, i64 72, !8, i64 80, !82, i64 84, !82, i64 92, !82, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !82, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !83, i64 204, !83, i64 208, !83, i64 212, !83, i64 216, !83, i64 220, !83, i64 224, !83, i64 228, !83, i64 232, !83, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !35, i64 288, !35, i64 296, !35, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !84, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !83, i64 428, !83, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !85, i64 456, !14, i64 464, !14, i64 472, !83, i64 480, !83, i64 484, !8, i64 488, !8, i64 492, !13, i64 496, !13, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !86, i64 536, !11, i64 544, !87, i64 552, !87, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !88, i64 728, !13, i64 736, !8, i64 744, !8, i64 748, !13, i64 752, !13, i64 760, !13, i64 768, !89, i64 776, !8, i64 784, !8, i64 788, !14, i64 792, !8, i64 800, !8, i64 804, !14, i64 808, !11, i64 816, !14, i64 824, !33, i64 832, !8, i64 840, !90, i64 848, !8, i64 856, !8, i64 860}
!92 = !{!16, !8, i64 12}
!93 = !{!57, !8, i64 500}
!94 = !{!57, !8, i64 388}
!95 = !{!57, !8, i64 392}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!16, !8, i64 132}
!98 = !{!91, !8, i64 244}
!99 = !{!91, !8, i64 248}
!100 = !{!91, !8, i64 268}
!101 = !{!91, !8, i64 252}
!102 = !{!16, !11, i64 712}
!103 = !{!91, !8, i64 64}
!104 = !{!16, !8, i64 120}
!105 = !{!16, !11, i64 768}
!106 = !{!16, !8, i64 108}
!107 = !{!16, !8, i64 104}
!108 = !{!57, !14, i64 416}
!109 = !{!57, !14, i64 424}
!110 = !{!57, !8, i64 368}
!111 = !{!57, !8, i64 3772}
!112 = !{!57, !45, i64 4464}
!113 = !{!57, !8, i64 4416}
!114 = !{!57, !8, i64 4420}
!115 = !{!16, !13, i64 752}
!116 = !{!57, !8, i64 5896}
!117 = !{!91, !8, i64 280}
!118 = !{!16, !8, i64 136}
!119 = !{!57, !8, i64 360}
!120 = !{!57, !35, i64 6072}
!121 = !{!16, !8, i64 8}
!122 = !{!57, !8, i64 400}
!123 = !{!35, !35, i64 0}
!124 = !{!57, !35, i64 5904}
!125 = !{!57, !35, i64 6080}
!126 = !{!16, !14, i64 432}
!127 = !{!91, !8, i64 284}
!128 = !{!16, !13, i64 80}
!129 = !{!57, !33, i64 1088}
!130 = !{!57, !35, i64 6064}
!131 = !{!57, !8, i64 352}
!132 = !{!57, !8, i64 356}
!133 = !{!57, !35, i64 5912}
!134 = !{!57, !8, i64 5900}
!135 = !{!57, !35, i64 5944}
!136 = !{!57, !8, i64 3784}
!137 = !{!91, !8, i64 516}
!138 = distinct !{null}
!139 = distinct !{null}
!140 = distinct !{!140, !96}
!141 = distinct !{!141, !96}
!142 = !{!16, !8, i64 128}
!143 = !{!91, !8, i64 336}
!144 = !{!91, !8, i64 264}
!145 = !{!91, !8, i64 260}
!146 = !{!91, !8, i64 272}
!147 = !{!91, !8, i64 24}
!148 = distinct !{!148, !96}
!149 = distinct !{!149, !96}
!150 = distinct !{!150, !96}
!151 = distinct !{!151, !96}
!152 = distinct !{null}
!153 = distinct !{!153, !96}
!154 = !{!91, !8, i64 276}
!155 = !{!57, !8, i64 4740}
!156 = !{!57, !8, i64 3104}
!157 = !{!57, !11, i64 4520}
!158 = !{!57, !11, i64 4528}
!159 = !{!57, !13, i64 6088}
!160 = !{!16, !14, i64 440}
!161 = !{!16, !8, i64 448}
end_hunk_2
