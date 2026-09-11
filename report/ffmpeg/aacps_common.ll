Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacps_common?download=true
inline.NumInlined: 31
inline.NumDeleted: 10
begin_hunk_0_@ff_ps_read_data:bb.a
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gw ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !10 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !10 ; 2 uses
  %i.hb = sext i16 %i.ha to i32                   ; 3 uses
  %i.hc = icmp slt i16 %i.ha, 0
  br i1 %i.hc, label %bb.q, label %get_vlc2.exit69.i

bb.q:                                             ; preds = %bb.p
  %i.hd = sext i16 %i.gy to i32
  %i.he = add i32 %.sroa.28.13, 9
  %i.hf = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.he) ; 4 uses
  %i.hg = lshr i32 %i.hf, 3
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 1, !tbaa !10
  %i.hk = tail call i32 @llvm.bswap.i32(i32 %i.hj)
  %i.hl = and i32 %i.hf, 7
  %i.hm = shl i32 %i.hk, %i.hl
  %i.hn = add nsw i32 %i.hb, 32
  %i.ho = lshr i32 %i.hm, %i.hn
  %i.hp = add i32 %i.ho, %i.hd
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.hq ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !10 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !10 ; 2 uses
  %i.hv = sext i16 %i.hu to i32                   ; 2 uses
  %i.hw = icmp slt i16 %i.hu, 0
  br i1 %i.hw, label %bb.r, label %get_vlc2.exit69.i

bb.r:                                             ; preds = %bb.q
  %i.hx = sext i16 %i.hs to i32
  %i.hy = sub i32 %i.hf, %i.hb
  %i.hz = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.hy) ; 3 uses
  %i.ia = lshr i32 %i.hz, 3
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 1, !tbaa !10
  %i.ie = tail call i32 @llvm.bswap.i32(i32 %i.id)
  %i.if = and i32 %i.hz, 7
  %i.ig = shl i32 %i.ie, %i.if
  %i.ih = add nsw i32 %i.hv, 32
  %i.ii = lshr i32 %i.ig, %i.ih
  %i.ij = add i32 %i.ii, %i.hx
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.ik ; 2 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.io = load i16, ptr %i.in, align 2, !tbaa !10
  %i.ip = sext i16 %i.io to i32
  br label %get_vlc2.exit69.i

get_vlc2.exit69.i:                                ; preds = %bb.r, %bb.q, %bb.p
  %.167.i66.i = phi i16 [ %i.gy, %bb.p ], [ %i.im, %bb.r ], [ %i.hs, %bb.q ]
  %.165.i67.i = phi i32 [ %.sroa.28.13, %bb.p ], [ %i.hz, %bb.r ], [ %i.hf, %bb.q ]
  %.1.i68.i = phi i32 [ %i.hb, %bb.p ], [ %i.ip, %bb.r ], [ %i.hv, %bb.q ]
  %i.iq = trunc i16 %.167.i66.i to i8
  %i.ir = add i8 %i.gn, %i.iq                     ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.i
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !10
  %i.it = tail call i8 @llvm.abs.i8(i8 %i.ir, i1 false)
  %i.iu = zext i8 %i.it to i32
  %.not64.i = icmp slt i32 %i.fj, %i.iu
  br i1 %.not64.i, label %read_iid_data.exit, label %bb.o

bb.s:                                             ; preds = %get_vlc2.exit.i
  %i.iv = add i32 %.1.i.i, %.165.i.i
  %i.iw = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.iv) ; 2 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count.i
  br i1 %exitcond86.not.i, label %.loopexit378, label %bb.t, !llvm.loop !18

bb.t:                                             ; preds = %bb.s, %.lr.ph78.i
  %.sroa.28.15 = phi i32 [ %spec.select.i250, %.lr.ph78.i ], [ %i.iw, %bb.s ] ; 4 uses
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next83.i, %bb.s ] ; 2 uses
  %.077.i = phi i32 [ 0, %.lr.ph78.i ], [ %i.la, %bb.s ]
  %i.ix = lshr i32 %.sroa.28.15, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 1, !tbaa !10
  %i.jb = tail call i32 @llvm.bswap.i32(i32 %i.ja)
  %i.jc = and i32 %.sroa.28.15, 7
  %i.jd = shl i32 %i.jb, %i.jc
  %i.je = lshr i32 %i.jd, 23
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.jf ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !10
  %i.ji = sext i16 %i.jh to i32                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !10 ; 2 uses
  %i.jl = sext i16 %i.jk to i32                   ; 3 uses
  %i.jm = icmp slt i16 %i.jk, 0
  br i1 %i.jm, label %bb.u, label %get_vlc2.exit.i

bb.u:                                             ; preds = %bb.t
  %i.jn = add i32 %.sroa.28.15, 9
  %i.jo = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.jn) ; 4 uses
  %i.jp = lshr i32 %i.jo, 3
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 1, !tbaa !10
  %i.jt = tail call i32 @llvm.bswap.i32(i32 %i.js)
  %i.ju = and i32 %i.jo, 7
  %i.jv = shl i32 %i.jt, %i.ju
  %i.jw = add nsw i32 %i.jl, 32
  %i.jx = lshr i32 %i.jv, %i.jw
  %i.jy = add i32 %i.jx, %i.ji
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.jz ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !10
  %i.kc = sext i16 %i.kb to i32                   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !10 ; 2 uses
  %i.kf = sext i16 %i.ke to i32                   ; 2 uses
  %i.kg = icmp slt i16 %i.ke, 0
  br i1 %i.kg, label %bb.v, label %get_vlc2.exit.i

bb.v:                                             ; preds = %bb.u
  %i.kh = sub i32 %i.jo, %i.jl
  %i.ki = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.kh) ; 3 uses
  %i.kj = lshr i32 %i.ki, 3
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 1, !tbaa !10
  %i.kn = tail call i32 @llvm.bswap.i32(i32 %i.km)
  %i.ko = and i32 %i.ki, 7
  %i.kp = shl i32 %i.kn, %i.ko
  %i.kq = add nsw i32 %i.kf, 32
  %i.kr = lshr i32 %i.kp, %i.kq
  %i.ks = add i32 %i.kr, %i.kc
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.kt ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !10
  %i.kw = zext i16 %i.kv to i32
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !10
  %i.kz = sext i16 %i.ky to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.v, %bb.u, %bb.t
  %.167.i.i = phi i32 [ %i.ji, %bb.t ], [ %i.kw, %bb.v ], [ %i.kc, %bb.u ]
  %.165.i.i = phi i32 [ %.sroa.28.15, %bb.t ], [ %i.ki, %bb.v ], [ %i.jo, %bb.u ]
  %.1.i.i = phi i32 [ %i.jl, %bb.t ], [ %i.kz, %bb.v ], [ %i.kf, %bb.u ]
  %i.la = add i32 %.167.i.i, %.077.i              ; 2 uses
  %i.lb = trunc i32 %i.la to i8                   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv82.i
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !10
  %i.ld = tail call i8 @llvm.abs.i8(i8 %i.lb, i1 false)
  %i.le = zext i8 %i.ld to i32
  %i.lf = icmp slt i32 %i.fj, %i.le
  br i1 %i.lf, label %read_iid_data.exit, label %bb.s

read_iid_data.exit:                               ; preds = %get_vlc2.exit69.i, %get_vlc2.exit.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %.thread362

.loopexit378:                                     ; preds = %bb.o, %bb.s, %.preheader.i, %bb.n
  %.sroa.28.16.ph = phi i32 [ %spec.select.i250, %bb.n ], [ %i.iw, %bb.s ], [ %spec.select.i250, %.preheader.i ], [ %i.gl, %bb.o ] ; 2 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next446, %wide.trip.count448
  br i1 %exitcond449.not, label %.loopexit382, label %bb.m, !llvm.loop !19

bb.w:                                             ; preds = %.loopexit384
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(170) %i.lg, i8 0, i64 170, i1 false)
  br label %.loopexit382

.loopexit382:                                     ; preds = %.loopexit378, %.preheader381, %bb.w
  %.sroa.28.6 = phi i32 [ %.sroa.28.4, %bb.w ], [ %.sroa.28.4, %.preheader381 ], [ %.sroa.28.16.ph, %.loopexit378 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !39 ; 2 uses
  %.not223 = icmp eq i32 %i.li, 0
  br i1 %.not223, label %bb.af, label %.preheader376

.preheader376:                                    ; preds = %.loopexit382
  %i.lj = icmp sgt i8 %i.dm, 0
  br i1 %i.lj, label %.lr.ph411, label %.loopexit377

.lr.ph411:                                        ; preds = %.preheader376
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 246 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !41 ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 0                   ; 2 uses
  %wide.trip.count.i255 = zext nneg i32 %i.lm to i64 ; 2 uses
  %wide.trip.count453 = zext nneg i32 %i.dn to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph411, %.loopexit373
  %indvars.iv450 = phi i64 [ 0, %.lr.ph411 ], [ %indvars.iv.next451, %.loopexit373 ] ; 5 uses
  %.sroa.28.7409 = phi i32 [ %.sroa.28.6, %.lr.ph411 ], [ %.sroa.28.20.ph, %.loopexit373 ] ; 4 uses
  %i.lo = lshr i32 %.sroa.28.7409, 3
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !10
  %i.ls = icmp slt i32 %.sroa.28.7409, %.sroa.83323.0.copyload
  %i.lt = zext i1 %i.ls to i32
  %spec.select.i251 = add i32 %.sroa.28.7409, %i.lt ; 4 uses
  %i.lu = zext i8 %i.lr to i32
  %i.lv = and i32 %.sroa.28.7409, 7
  %4 = shl nuw nsw i32 %i.lu, %i.lv
  %i.lw = lshr i32 %4, 7
  %i.lx = and i32 %i.lw, 1                        ; 2 uses
  %5 = zext nneg i32 %i.lx to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr @vlc_ps, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ly = load ptr, ptr %7, align 8, !tbaa !13    ; 4 uses
  %.not.i252 = icmp eq i32 %i.lx, 0
  br i1 %.not.i252, label %.preheader.i260, label %bb.y

.preheader.i260:                                  ; preds = %bb.x
  br i1 %i.ln, label %.lr.ph59.i, label %.loopexit373

.lr.ph59.i:                                       ; preds = %.preheader.i260
  %i.lz = getelementptr inbounds nuw [34 x i8], ptr %i.lk, i64 %indvars.iv450
  br label %bb.ad

bb.y:                                             ; preds = %bb.x
  br i1 %i.ln, label %.lr.ph.i254, label %.loopexit373

.lr.ph.i254:                                      ; preds = %bb.y
  %.not45.i = icmp eq i64 %indvars.iv450, 0
  %i.ma = trunc nuw nsw i64 %indvars.iv450 to i32
  %spec.select504 = select i1 %.not45.i, i32 %i.cw, i32 %i.ma
  %i.mb = tail call i32 @llvm.smax.i32(i32 %spec.select504, i32 1)
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr [34 x i8], ptr %i.lk, i64 %i.mc
  %i.me = getelementptr i8, ptr %i.md, i64 -34
  %i.mf = getelementptr inbounds nuw [34 x i8], ptr %i.lk, i64 %indvars.iv450
  br label %bb.aa

bb.z:                                             ; preds = %get_vlc2.exit50.i
  %i.mg = add i32 %.1.i49.i, %.165.i48.i
  %i.mh = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.mg) ; 2 uses
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i256, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, %wide.trip.count.i255
  br i1 %exitcond.not.i259, label %.loopexit373, label %bb.aa, !llvm.loop !20

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i254
  %.sroa.28.17 = phi i32 [ %spec.select.i251, %.lr.ph.i254 ], [ %i.mh, %bb.z ] ; 4 uses
  %indvars.iv.i256 = phi i64 [ 0, %.lr.ph.i254 ], [ %indvars.iv.next.i258, %bb.z ] ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 %indvars.iv.i256
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !10
  %i.mk = lshr i32 %.sroa.28.17, 3
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 1, !tbaa !10
  %i.mo = tail call i32 @llvm.bswap.i32(i32 %i.mn)
  %i.mp = and i32 %.sroa.28.17, 7
  %i.mq = shl i32 %i.mo, %i.mp
  %i.mr = lshr i32 %i.mq, 23
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ms ; 2 uses
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !10 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  %i.mw = load i16, ptr %i.mv, align 2, !tbaa !10 ; 2 uses
  %i.mx = sext i16 %i.mw to i32                   ; 2 uses
  %i.my = icmp slt i16 %i.mw, 0
  br i1 %i.my, label %bb.ab, label %get_vlc2.exit50.i

bb.ab:                                            ; preds = %bb.aa
  %i.mz = sext i16 %i.mu to i32
  %i.na = add i32 %.sroa.28.17, 9
  %i.nb = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.na) ; 3 uses
  %i.nc = lshr i32 %i.nb, 3
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 1, !tbaa !10
  %i.ng = tail call i32 @llvm.bswap.i32(i32 %i.nf)
  %i.nh = and i32 %i.nb, 7
  %i.ni = shl i32 %i.ng, %i.nh
  %i.nj = add nsw i32 %i.mx, 32
  %i.nk = lshr i32 %i.ni, %i.nj
  %i.nl = add i32 %i.nk, %i.mz
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.nm ; 2 uses
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !10
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 2
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !10
  %i.nr = sext i16 %i.nq to i32
  br label %get_vlc2.exit50.i

get_vlc2.exit50.i:                                ; preds = %bb.ab, %bb.aa
  %.167.i47.i = phi i16 [ %i.mu, %bb.aa ], [ %i.no, %bb.ab ]
  %.165.i48.i = phi i32 [ %.sroa.28.17, %bb.aa ], [ %i.nb, %bb.ab ]
  %.1.i49.i = phi i32 [ %i.mx, %bb.aa ], [ %i.nr, %bb.ab ]
  %i.ns = trunc i16 %.167.i47.i to i8
  %i.nt = add i8 %i.mj, %i.ns                     ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mf, i64 %indvars.iv.i256
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !10
  %i.nv = icmp ult i8 %i.nt, 8
  br i1 %i.nv, label %bb.z, label %read_icc_data.exit

bb.ac:                                            ; preds = %get_vlc2.exit.i261
  %i.nw = add i32 %.1.i.i264, %.165.i.i263
  %i.nx = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.nw) ; 2 uses
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count.i255
  br i1 %exitcond67.not.i, label %.loopexit373, label %bb.ad, !llvm.loop !21

bb.ad:                                            ; preds = %bb.ac, %.lr.ph59.i
  %.sroa.28.19 = phi i32 [ %spec.select.i251, %.lr.ph59.i ], [ %i.nx, %bb.ac ] ; 4 uses
  %indvars.iv63.i = phi i64 [ 0, %.lr.ph59.i ], [ %indvars.iv.next64.i, %bb.ac ] ; 2 uses
  %.058.i = phi i32 [ 0, %.lr.ph59.i ], [ %i.ph, %bb.ac ]
  %i.ny = lshr i32 %.sroa.28.19, 3
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 1, !tbaa !10
  %i.oc = tail call i32 @llvm.bswap.i32(i32 %i.ob)
  %i.od = and i32 %.sroa.28.19, 7
  %i.oe = shl i32 %i.oc, %i.od
  %i.of = lshr i32 %i.oe, 23
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.og ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !10
  %i.oj = sext i16 %i.oi to i32                   ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !10 ; 2 uses
  %i.om = sext i16 %i.ol to i32                   ; 2 uses
  %i.on = icmp slt i16 %i.ol, 0
  br i1 %i.on, label %bb.ae, label %get_vlc2.exit.i261

bb.ae:                                            ; preds = %bb.ad
  %i.oo = add i32 %.sroa.28.19, 9
  %i.op = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.oo) ; 3 uses
  %i.oq = lshr i32 %i.op, 3
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 1, !tbaa !10
  %i.ou = tail call i32 @llvm.bswap.i32(i32 %i.ot)
  %i.ov = and i32 %i.op, 7
  %i.ow = shl i32 %i.ou, %i.ov
  %i.ox = add nsw i32 %i.om, 32
  %i.oy = lshr i32 %i.ow, %i.ox
  %i.oz = add i32 %i.oy, %i.oj
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.pa ; 2 uses
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !10
  %i.pd = zext i16 %i.pc to i32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !10
  %i.pg = sext i16 %i.pf to i32
  br label %get_vlc2.exit.i261

get_vlc2.exit.i261:                               ; preds = %bb.ae, %bb.ad
  %.167.i.i262 = phi i32 [ %i.oj, %bb.ad ], [ %i.pd, %bb.ae ]
  %.165.i.i263 = phi i32 [ %.sroa.28.19, %bb.ad ], [ %i.op, %bb.ae ]
  %.1.i.i264 = phi i32 [ %i.om, %bb.ad ], [ %i.pg, %bb.ae ]
  %i.ph = add i32 %.167.i.i262, %.058.i           ; 2 uses
  %i.pi = trunc i32 %i.ph to i8                   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lz, i64 %indvars.iv63.i
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !10
  %i.pk = icmp ugt i8 %i.pi, 7
  br i1 %i.pk, label %read_icc_data.exit, label %bb.ac

read_icc_data.exit:                               ; preds = %get_vlc2.exit50.i, %get_vlc2.exit.i261
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8) #7
  br label %.thread362

.loopexit373:                                     ; preds = %bb.z, %bb.ac, %.preheader.i260, %bb.y
  %.sroa.28.20.ph = phi i32 [ %spec.select.i251, %bb.y ], [ %i.nx, %bb.ac ], [ %spec.select.i251, %.preheader.i260 ], [ %i.mh, %bb.z ] ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next451, %wide.trip.count453
  br i1 %exitcond454.not, label %.loopexit377, label %bb.x, !llvm.loop !22

bb.af:                                            ; preds = %.loopexit382
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 246
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(170) %i.pl, i8 0, i64 170, i1 false)
  br label %.loopexit377

.loopexit377:                                     ; preds = %.loopexit373, %.preheader376, %bb.af
  %.sroa.28.8 = phi i32 [ %.sroa.28.6, %bb.af ], [ %.sroa.28.6, %.preheader376 ], [ %.sroa.28.20.ph, %.loopexit373 ] ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !42
  %.not224 = icmp eq i32 %i.pn, 0
  br i1 %.not224, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %.loopexit377
  %i.po = lshr i32 %.sroa.28.8, 3
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 1, !tbaa !10
  %i.ps = tail call i32 @llvm.bswap.i32(i32 %i.pr)
  %i.pt = and i32 %.sroa.28.8, 7
  %i.pu = shl i32 %i.ps, %i.pt
  %i.pv = lshr i32 %i.pu, 28                      ; 3 uses
  %i.pw = add i32 %.sroa.28.8, 4
  %i.px = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.pw) ; 5 uses
  %i.py = icmp eq i32 %i.pv, 15
  br i1 %i.py, label %.thread479, label %bb.ah

.thread479:                                       ; preds = %bb.ag
  %i.pz = lshr i32 %i.px, 3
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 1, !tbaa !10
  %i.qd = tail call i32 @llvm.bswap.i32(i32 %i.qc)
  %i.qe = and i32 %i.px, 7
  %i.qf = shl i32 %i.qd, %i.qe
  %i.qg = add i32 %i.px, 8
  %i.qh = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.qg)
  %i.qi = lshr i32 %i.qf, 21
  %i.qj = and i32 %i.qi, 2040
  %i.qk = add nuw nsw i32 %i.qj, 120
  br label %.lr.ph415

bb.ah:                                            ; preds = %bb.ag
  %i.ql = shl nuw nsw i32 %i.pv, 3
  %.not422 = icmp eq i32 %i.pv, 0
  br i1 %.not422, label %.thread358, label %.lr.ph415

.lr.ph415:                                        ; preds = %.thread479, %bb.ah
  %i.qm = phi i32 [ %i.qk, %.thread479 ], [ %i.ql, %bb.ah ]
  %.sroa.28.9483 = phi i32 [ %i.qh, %.thread479 ], [ %i.px, %bb.ah ]
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 586 ; 3 uses
  %i.qr = icmp slt i8 %i.dm, 1
  %wide.trip.count.i269 = zext nneg i32 %i.dn to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph415, %ps_read_extension_data.exit
  %.1194414 = phi i32 [ %i.qm, %.lr.ph415 ], [ %i.wh, %ps_read_extension_data.exit ]
  %.sroa.28.10413 = phi i32 [ %.sroa.28.9483, %.lr.ph415 ], [ %.sroa.28.28, %ps_read_extension_data.exit ] ; 3 uses
  %i.qs = lshr i32 %.sroa.28.10413, 3
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 1, !tbaa !10
  %i.qw = tail call i32 @llvm.bswap.i32(i32 %i.qv)
  %i.qx = and i32 %.sroa.28.10413, 7
  %i.qy = shl i32 %i.qw, %i.qx
  %i.qz = add i32 %.sroa.28.10413, 2
  %i.ra = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.qz) ; 6 uses
  %.not.i265 = icmp ult i32 %i.qy, 1073741824
  br i1 %.not.i265, label %bb.aj, label %ps_read_extension_data.exit

bb.aj:                                            ; preds = %bb.ai
  %i.rb = lshr i32 %i.ra, 3
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !10
  %i.rf = icmp slt i32 %i.ra, %.sroa.83323.0.copyload
  %i.rg = zext i1 %i.rf to i32
  %spec.select.i.i = add i32 %i.ra, %i.rg         ; 2 uses
  %i.rh = zext i8 %i.re to i32
  %i.ri = and i32 %i.ra, 7
  %i.rj = shl nuw nsw i32 %i.rh, %i.ri
  %i.rk = lshr i32 %i.rj, 7
  %i.rl = and i32 %i.rk, 1                        ; 2 uses
  store i32 %i.rl, ptr %i.qn, align 4, !tbaa !48
  %.not26.i = icmp eq i32 %i.rl, 0
  %brmerge = select i1 %.not26.i, i1 true, i1 %i.qr
  br i1 %brmerge, label %.loopexit.i267, label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %bb.aj
  %i.rm = load i32, ptr %i.qp, align 4, !tbaa !38 ; 2 uses
  %i.rn = icmp sgt i32 %i.rm, 0                   ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.rm to i64 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %read_ipdopd_data.exit47.i, %.lr.ph.i268
  %.sroa.28.21 = phi i32 [ %spec.select.i.i, %.lr.ph.i268 ], [ %.sroa.28.23, %read_ipdopd_data.exit47.i ] ; 4 uses
  %indvars.iv.i270 = phi i64 [ 0, %.lr.ph.i268 ], [ %indvars.iv.next.i271, %read_ipdopd_data.exit47.i ] ; 9 uses
  %i.ro = lshr i32 %.sroa.28.21, 3
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.rp
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !10
  %i.rs = icmp slt i32 %.sroa.28.21, %.sroa.83323.0.copyload
  %i.rt = zext i1 %i.rs to i32
  %spec.select.i30.i = add i32 %.sroa.28.21, %i.rt ; 4 uses
  %i.ru = zext i8 %i.rr to i32
  %i.rv = and i32 %.sroa.28.21, 7
  %8 = shl nuw nsw i32 %i.ru, %i.rv
  %i.rw = lshr i32 %8, 7
  %i.rx = and i32 %i.rw, 1                        ; 2 uses
  %9 = zext nneg i32 %i.rx to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr @vlc_ps, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ry = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq i32 %i.rx, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.al

.preheader.i.i:                                   ; preds = %bb.ak
  br i1 %i.rn, label %.lr.ph5.i.i, label %read_ipdopd_data.exit.i

.lr.ph5.i.i:                                      ; preds = %.preheader.i.i
  %i.rz = getelementptr inbounds nuw [34 x i8], ptr %i.qo, i64 %indvars.iv.i270
  br label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %i.rn, label %.lr.ph.i.i, label %read_ipdopd_data.exit.i

.lr.ph.i.i:                                       ; preds = %bb.al
  %.not34.i.i = icmp eq i64 %indvars.iv.i270, 0
  %i.sa = trunc nuw nsw i64 %indvars.iv.i270 to i32
  %spec.select506 = select i1 %.not34.i.i, i32 %i.cw, i32 %i.sa
  %i.sb = tail call i32 @llvm.smax.i32(i32 %spec.select506, i32 1)
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = getelementptr [34 x i8], ptr %i.qo, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 -34
  %i.sf = getelementptr inbounds nuw [34 x i8], ptr %i.qo, i64 %indvars.iv.i270
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.i
  %.sroa.28.26 = phi i32 [ %spec.select.i30.i, %.lr.ph.i.i ], [ %i.sx, %bb.am ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.am ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 %indvars.iv.i.i
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !10
  %i.si = lshr i32 %.sroa.28.26, 3
  %i.sj = zext nneg i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 1, !tbaa !10
  %i.sm = tail call i32 @llvm.bswap.i32(i32 %i.sl)
  %i.sn = and i32 %.sroa.28.26, 7
  %i.so = shl i32 %i.sm, %i.sn
  %i.sp = lshr i32 %i.so, 27
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.sq ; 2 uses
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !10
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 2
  %i.su = load i16, ptr %i.st, align 2, !tbaa !10
  %i.sv = sext i16 %i.su to i32
  %i.sw = add i32 %.sroa.28.26, %i.sv
  %i.sx = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.sw) ; 2 uses
  %i.sy = trunc i16 %i.ss to i8
  %i.sz = add i8 %i.sh, %i.sy
  %i.ta = and i8 %i.sz, 7
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sf, i64 %indvars.iv.i.i
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %read_ipdopd_data.exit.i, label %bb.am, !llvm.loop !23

bb.an:                                            ; preds = %bb.an, %.lr.ph5.i.i
  %.sroa.28.27 = phi i32 [ %spec.select.i30.i, %.lr.ph5.i.i ], [ %i.ts, %bb.an ] ; 3 uses
  %indvars.iv8.i.i = phi i64 [ 0, %.lr.ph5.i.i ], [ %indvars.iv.next9.i.i, %bb.an ] ; 2 uses
  %.0323.i.i = phi i8 [ 0, %.lr.ph5.i.i ], [ %i.tu, %bb.an ]
  %i.tc = lshr i32 %.sroa.28.27, 3
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 1, !tbaa !10
  %i.tg = tail call i32 @llvm.bswap.i32(i32 %i.tf)
  %i.th = and i32 %.sroa.28.27, 7
  %i.ti = shl i32 %i.tg, %i.th
  %i.tj = lshr i32 %i.ti, 27
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.tk ; 2 uses
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !10
  %i.tn = trunc i16 %i.tm to i8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !10
  %i.tq = sext i16 %i.tp to i32
  %i.tr = add i32 %.sroa.28.27, %i.tq
  %i.ts = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.tr) ; 2 uses
  %i.tt = add i8 %.0323.i.i, %i.tn
  %i.tu = and i8 %i.tt, 7                         ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rz, i64 %indvars.iv8.i.i
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !10
  %indvars.iv.next9.i.i = add nuw nsw i64 %indvars.iv8.i.i, 1 ; 2 uses
  %exitcond11.not.i.i = icmp eq i64 %indvars.iv.next9.i.i, %wide.trip.count.i.i
  br i1 %exitcond11.not.i.i, label %read_ipdopd_data.exit.i, label %bb.an, !llvm.loop !24

read_ipdopd_data.exit.i:                          ; preds = %bb.am, %bb.an, %bb.al, %.preheader.i.i
  %.sroa.28.22 = phi i32 [ %spec.select.i30.i, %bb.al ], [ %spec.select.i30.i, %.preheader.i.i ], [ %i.ts, %bb.an ], [ %i.sx, %bb.am ] ; 4 uses
  %i.tw = lshr i32 %.sroa.28.22, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !10
  %i.ua = icmp slt i32 %.sroa.28.22, %.sroa.83323.0.copyload
  %i.ub = zext i1 %i.ua to i32
  %spec.select.i31.i = add i32 %.sroa.28.22, %i.ub ; 4 uses
  %i.uc = zext i8 %i.tz to i32
  %i.ud = and i32 %.sroa.28.22, 7
  %12 = shl nuw nsw i32 %i.uc, %i.ud
  %i.ue = lshr i32 %12, 7
  %i.uf = and i32 %i.ue, 1                        ; 2 uses
  %13 = zext nneg i32 %i.uf to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr @vlc_ps, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ug = load ptr, ptr %15, align 8, !tbaa !13   ; 2 uses
  %.not.i32.i = icmp eq i32 %i.uf, 0
  br i1 %.not.i32.i, label %.preheader.i40.i, label %bb.ao

.preheader.i40.i:                                 ; preds = %read_ipdopd_data.exit.i
  br i1 %i.rn, label %.lr.ph5.i41.i, label %read_ipdopd_data.exit47.i

.lr.ph5.i41.i:                                    ; preds = %.preheader.i40.i
  %i.uh = getelementptr inbounds nuw [34 x i8], ptr %i.qq, i64 %indvars.iv.i270
  br label %bb.aq

bb.ao:                                            ; preds = %read_ipdopd_data.exit.i
  br i1 %i.rn, label %.lr.ph.i35.i, label %read_ipdopd_data.exit47.i

.lr.ph.i35.i:                                     ; preds = %bb.ao
  %.not34.i33.i = icmp eq i64 %indvars.iv.i270, 0
  %i.ui = trunc nuw nsw i64 %indvars.iv.i270 to i32
  %spec.select507 = select i1 %.not34.i33.i, i32 %i.cw, i32 %i.ui
  %i.uj = tail call i32 @llvm.smax.i32(i32 %spec.select507, i32 1)
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = getelementptr [34 x i8], ptr %i.qq, i64 %i.uk
  %i.um = getelementptr i8, ptr %i.ul, i64 -34
  %i.un = getelementptr inbounds nuw [34 x i8], ptr %i.qq, i64 %indvars.iv.i270
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i35.i
  %.sroa.28.24 = phi i32 [ %spec.select.i31.i, %.lr.ph.i35.i ], [ %i.vf, %bb.ap ] ; 3 uses
  %indvars.iv.i37.i = phi i64 [ 0, %.lr.ph.i35.i ], [ %indvars.iv.next.i38.i, %bb.ap ] ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv.i37.i
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !10
  %i.uq = lshr i32 %.sroa.28.24, 3
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 1, !tbaa !10
  %i.uu = tail call i32 @llvm.bswap.i32(i32 %i.ut)
  %i.uv = and i32 %.sroa.28.24, 7
  %i.uw = shl i32 %i.uu, %i.uv
  %i.ux = lshr i32 %i.uw, 27
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.uy ; 2 uses
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !10
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 2
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !10
  %i.vd = sext i16 %i.vc to i32
  %i.ve = add i32 %.sroa.28.24, %i.vd
  %i.vf = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.ve) ; 2 uses
  %i.vg = trunc i16 %i.va to i8
  %i.vh = add i8 %i.up, %i.vg
  %i.vi = and i8 %i.vh, 7
  %i.vj = getelementptr inbounds nuw i8, ptr %i.un, i64 %indvars.iv.i37.i
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !10
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i37.i, 1 ; 2 uses
  %exitcond.not.i39.i = icmp eq i64 %indvars.iv.next.i38.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i39.i, label %read_ipdopd_data.exit47.i, label %bb.ap, !llvm.loop !23

bb.aq:                                            ; preds = %bb.aq, %.lr.ph5.i41.i
  %.sroa.28.25 = phi i32 [ %spec.select.i31.i, %.lr.ph5.i41.i ], [ %i.wa, %bb.aq ] ; 3 uses
  %indvars.iv8.i43.i = phi i64 [ 0, %.lr.ph5.i41.i ], [ %indvars.iv.next9.i45.i, %bb.aq ] ; 2 uses
  %.0323.i44.i = phi i8 [ 0, %.lr.ph5.i41.i ], [ %i.wc, %bb.aq ]
  %i.vk = lshr i32 %.sroa.28.25, 3
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 1, !tbaa !10
  %i.vo = tail call i32 @llvm.bswap.i32(i32 %i.vn)
  %i.vp = and i32 %.sroa.28.25, 7
  %i.vq = shl i32 %i.vo, %i.vp
  %i.vr = lshr i32 %i.vq, 27
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.vs ; 2 uses
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !10
  %i.vv = trunc i16 %i.vu to i8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !10
  %i.vy = sext i16 %i.vx to i32
  %i.vz = add i32 %.sroa.28.25, %i.vy
  %i.wa = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.vz) ; 2 uses
  %i.wb = add i8 %.0323.i44.i, %i.vv
  %i.wc = and i8 %i.wb, 7                         ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uh, i64 %indvars.iv8.i43.i
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !10
  %indvars.iv.next9.i45.i = add nuw nsw i64 %indvars.iv8.i43.i, 1 ; 2 uses
  %exitcond11.not.i46.i = icmp eq i64 %indvars.iv.next9.i45.i, %wide.trip.count.i.i
  br i1 %exitcond11.not.i46.i, label %read_ipdopd_data.exit47.i, label %bb.aq, !llvm.loop !24

read_ipdopd_data.exit47.i:                        ; preds = %bb.ap, %bb.aq, %bb.ao, %.preheader.i40.i
  %.sroa.28.23 = phi i32 [ %spec.select.i31.i, %bb.ao ], [ %spec.select.i31.i, %.preheader.i40.i ], [ %i.wa, %bb.aq ], [ %i.vf, %bb.ap ] ; 2 uses
  %indvars.iv.next.i271 = add nuw nsw i64 %indvars.iv.i270, 1 ; 2 uses
  %exitcond.not.i272 = icmp eq i64 %indvars.iv.next.i271, %wide.trip.count.i269
  br i1 %exitcond.not.i272, label %.loopexit.i267, label %bb.ak, !llvm.loop !25

.loopexit.i267:                                   ; preds = %read_ipdopd_data.exit47.i, %bb.aj
  %i.we = phi i32 [ %spec.select.i.i, %bb.aj ], [ %.sroa.28.23, %read_ipdopd_data.exit47.i ]
  %i.wf = add i32 %i.we, 1
  %i.wg = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.wf) ; 2 uses
  %.neg = add i32 %i.ra, -2
  %.neg367 = sub i32 %.neg, %i.wg
  br label %ps_read_extension_data.exit

ps_read_extension_data.exit:                      ; preds = %bb.ai, %.loopexit.i267
  %.sroa.28.28 = phi i32 [ %i.wg, %.loopexit.i267 ], [ %i.ra, %bb.ai ] ; 2 uses
  %.0.i.neg = phi i32 [ %.neg367, %.loopexit.i267 ], [ -2, %bb.ai ]
  %i.wh = add i32 %.0.i.neg, %.1194414            ; 5 uses
  %i.wi = icmp sgt i32 %i.wh, 7
  br i1 %i.wi, label %bb.ai, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %ps_read_extension_data.exit
  %i.wj = icmp slt i32 %i.wh, 0
  br i1 %i.wj, label %bb.ar, label %.thread358

.thread358:                                       ; preds = %bb.ah, %._crit_edge
  %.1194.lcssa487 = phi i32 [ %i.wh, %._crit_edge ], [ 0, %bb.ah ]
  %.sroa.28.10.lcssa486 = phi i32 [ %.sroa.28.28, %._crit_edge ], [ %i.px, %bb.ah ]
  %i.wk = add i32 %.1194.lcssa487, %.sroa.28.10.lcssa486
  %i.wl = tail call i32 @llvm.umin.i32(i32 %.sroa.83323.0.copyload, i32 %i.wk)
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.wh) #7
  br label %.thread362

bb.as:                                            ; preds = %.thread358, %.loopexit377
  %.sroa.28.12 = phi i32 [ %.sroa.28.8, %.loopexit377 ], [ %i.wl, %.thread358 ]
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !48
  %i.wo = and i32 %i.wn, 1
  store i32 %i.wo, ptr %i.wm, align 4, !tbaa !48
  %.not225 = icmp eq i8 %i.dm, 0
  br i1 %.not225, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.wp = sext i8 %i.dm to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !33
  %i.ws = icmp slt i32 %i.wr, 31
  br i1 %i.ws, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %bb.as, %bb.at
  %.in = phi i32 [ %i.dn, %bb.at ], [ %i.cw, %bb.as ] ; 2 uses
  %i.wt = add nsw i32 %.in, -1                    ; 4 uses
  %i.wu = icmp slt i32 %.in, 1
  %.not227 = icmp eq i32 %i.wt, %i.dn
  %or.cond = select i1 %i.wu, i1 true, i1 %.not227
  br i1 %or.cond, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not222, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 2 uses
  %i.ww = sext i8 %i.dm to i64
  %i.wx = getelementptr inbounds [34 x i8], ptr %i.wv, i64 %i.ww
  %i.wy = zext nneg i32 %i.wt to i64
  %i.wz = getelementptr inbounds nuw [34 x i8], ptr %i.wv, i64 %i.wy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.wx, ptr noundef nonnull align 2 dereferenceable(34) %i.wz, i64 34, i1 false)
  %.pre = load i32, ptr %i.lh, align 4, !tbaa !39
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.xa = phi i32 [ %.pre, %bb.aw ], [ %i.li, %bb.av ]
  %.not229 = icmp eq i32 %i.xa, 0
  br i1 %.not229, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xb = getelementptr inbounds nuw i8, ptr %2, i64 246 ; 2 uses
  %i.xc = load i32, ptr %i.cv, align 4, !tbaa !44
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr inbounds [34 x i8], ptr %i.xb, i64 %i.xd
  %i.xf = zext nneg i32 %i.wt to i64
  %i.xg = getelementptr inbounds nuw [34 x i8], ptr %i.xb, i64 %i.xf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.xe, ptr noundef nonnull align 2 dereferenceable(34) %i.xg, i64 34, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.xh = load i32, ptr %i.wm, align 4, !tbaa !48
  %.not230 = icmp eq i32 %i.xh, 0
  br i1 %.not230, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.xi = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 2 uses
  %i.xj = load i32, ptr %i.cv, align 4, !tbaa !44
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [34 x i8], ptr %i.xi, i64 %i.xk
  %i.xm = zext nneg i32 %i.wt to i64              ; 2 uses
  %i.xn = getelementptr inbounds nuw [34 x i8], ptr %i.xi, i64 %i.xm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.xl, ptr noundef nonnull align 2 dereferenceable(34) %i.xn, i64 34, i1 false)
  %i.xo = getelementptr inbounds nuw i8, ptr %2, i64 586 ; 2 uses
  %i.xp = load i32, ptr %i.cv, align 4, !tbaa !44
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [34 x i8], ptr %i.xo, i64 %i.xq
  %i.xs = getelementptr inbounds nuw [34 x i8], ptr %i.xo, i64 %i.xm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %i.xr, ptr noundef nonnull align 2 dereferenceable(34) %i.xs, i64 34, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.au
  %i.xt = load i32, ptr %i.ez, align 4, !tbaa !35
  %.not231 = icmp eq i32 %i.xt, 0
  br i1 %.not231, label %.loopexit370, label %.preheader369

.preheader369:                                    ; preds = %bb.bb
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !36 ; 2 uses
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %.lr.ph419, label %.loopexit370
end_hunk_0
