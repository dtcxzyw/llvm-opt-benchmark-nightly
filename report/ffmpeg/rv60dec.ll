Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv60dec?download=true
inline.NumInlined: 185
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 86
begin_hunk_0_@decode_cu_r:bb.a
  store i32 %spec.select.i.i.i.1, ptr %i.cs, align 8, !tbaa !50
  %i.fs = lshr exact i32 128, %i.fr
  %i.ft = and i32 %i.fs, %i.fq
  %.not.i.i.1 = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.1, label %read_intra_mode.exit.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fu = lshr i32 %spec.select.i.i.i.1, 3
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !42
  %i.fy = icmp slt i32 %spec.select.i.i.i.1, %i.da
  %i.fz = zext i1 %i.fy to i32
  %spec.select.i2.i.i.1 = add i32 %spec.select.i.i.i.1, %i.fz ; 2 uses
  %i.ga = zext i8 %i.fx to i32
  %i.gb = and i32 %spec.select.i.i.i.1, 7
  %i.gc = shl nuw nsw i32 %i.ga, %i.gb
  %i.gd = lshr i32 %i.gc, 7
  store i32 %spec.select.i2.i.i.1, ptr %i.cs, align 8, !tbaa !50
  %i.ge = and i32 %i.gd, 1
  %i.gf = add nuw nsw i32 %i.ge, 1
  br label %read_intra_mode.exit.1

bb.s:                                             ; preds = %read_intra_mode.exit
  %i.gg = load i32, ptr %i.fm, align 1, !tbaa !42
  %i.gh = tail call i32 @llvm.bswap.i32(i32 %i.gg)
  %i.gi = and i32 %spec.select.i.i.1, 7
  %i.gj = shl i32 %i.gh, %i.gi
  %i.gk = lshr i32 %i.gj, 27
  %i.gl = add i32 %spec.select.i.i.1, 5
  %i.gm = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.gl) ; 2 uses
  store i32 %i.gm, ptr %i.cs, align 8, !tbaa !50
  br label %read_intra_mode.exit.1

read_intra_mode.exit.1:                           ; preds = %bb.s, %bb.r, %bb.q
  %i.gn = phi i32 [ %i.gm, %bb.s ], [ %spec.select.i2.i.i.1, %bb.r ], [ %spec.select.i.i.i.1, %bb.q ] ; 4 uses
  %storemerge.i.1 = phi i32 [ %i.gk, %bb.s ], [ %i.gf, %bb.r ], [ 0, %bb.q ]
  %.0.i.1 = phi i32 [ 3, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  store i32 %storemerge.i.1, ptr %i.ez, align 4, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 %.0.i.1, ptr %i.go, align 4, !tbaa !41
  %i.gp = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.gq = lshr i32 %i.gn, 3
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !42
  %i.gu = icmp slt i32 %i.gn, %i.da
  %i.gv = zext i1 %i.gu to i32
  %spec.select.i.i.2 = add i32 %i.gn, %i.gv       ; 7 uses
  %i.gw = zext i8 %i.gt to i32
  %i.gx = and i32 %i.gn, 7
  store i32 %spec.select.i.i.2, ptr %i.cs, align 8, !tbaa !50
  %i.gy = lshr exact i32 128, %i.gx
  %i.gz = and i32 %i.gy, %i.gw
  %.not.i.2 = icmp eq i32 %i.gz, 0
  %i.ha = lshr i32 %spec.select.i.i.2, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.hb ; 2 uses
  br i1 %.not.i.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %read_intra_mode.exit.1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !42
  %i.he = icmp slt i32 %spec.select.i.i.2, %i.da
  %i.hf = zext i1 %i.he to i32
  %spec.select.i.i.i.2 = add i32 %spec.select.i.i.2, %i.hf ; 6 uses
  %i.hg = zext i8 %i.hd to i32
  %i.hh = and i32 %spec.select.i.i.2, 7
  store i32 %spec.select.i.i.i.2, ptr %i.cs, align 8, !tbaa !50
  %i.hi = lshr exact i32 128, %i.hh
  %i.hj = and i32 %i.hi, %i.hg
  %.not.i.i.2 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.2, label %read_intra_mode.exit.2, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = lshr i32 %spec.select.i.i.i.2, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !42
  %i.ho = icmp slt i32 %spec.select.i.i.i.2, %i.da
  %i.hp = zext i1 %i.ho to i32
  %spec.select.i2.i.i.2 = add i32 %spec.select.i.i.i.2, %i.hp ; 2 uses
  %i.hq = zext i8 %i.hn to i32
  %i.hr = and i32 %spec.select.i.i.i.2, 7
  %i.hs = shl nuw nsw i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 7
  store i32 %spec.select.i2.i.i.2, ptr %i.cs, align 8, !tbaa !50
  %i.hu = and i32 %i.ht, 1
  %i.hv = add nuw nsw i32 %i.hu, 1
  br label %read_intra_mode.exit.2

bb.v:                                             ; preds = %read_intra_mode.exit.1
  %i.hw = load i32, ptr %i.hc, align 1, !tbaa !42
  %i.hx = tail call i32 @llvm.bswap.i32(i32 %i.hw)
  %i.hy = and i32 %spec.select.i.i.2, 7
  %i.hz = shl i32 %i.hx, %i.hy
  %i.ia = lshr i32 %i.hz, 27
  %i.ib = add i32 %spec.select.i.i.2, 5
  %i.ic = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.ib) ; 2 uses
  store i32 %i.ic, ptr %i.cs, align 8, !tbaa !50
  br label %read_intra_mode.exit.2

read_intra_mode.exit.2:                           ; preds = %bb.v, %bb.u, %bb.t
  %i.id = phi i32 [ %i.ic, %bb.v ], [ %spec.select.i2.i.i.2, %bb.u ], [ %spec.select.i.i.i.2, %bb.t ] ; 4 uses
  %storemerge.i.2 = phi i32 [ %i.ia, %bb.v ], [ %i.hv, %bb.u ], [ 0, %bb.t ]
  %.0.i.2 = phi i32 [ 3, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ]
  store i32 %storemerge.i.2, ptr %i.gp, align 4, !tbaa !41
  %i.ie = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 %.0.i.2, ptr %i.ie, align 4, !tbaa !41
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 52
  %i.ig = lshr i32 %i.id, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !42
  %i.ik = icmp slt i32 %i.id, %i.da
  %i.il = zext i1 %i.ik to i32
  %spec.select.i.i.3 = add i32 %i.id, %i.il       ; 7 uses
  %i.im = zext i8 %i.ij to i32
  %i.in = and i32 %i.id, 7
  store i32 %spec.select.i.i.3, ptr %i.cs, align 8, !tbaa !50
  %i.io = lshr exact i32 128, %i.in
  %i.ip = and i32 %i.io, %i.im
  %.not.i.3 = icmp eq i32 %i.ip, 0
  %i.iq = lshr i32 %spec.select.i.i.3, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ir ; 2 uses
  br i1 %.not.i.3, label %bb.y, label %bb.w

bb.w:                                             ; preds = %read_intra_mode.exit.2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !42
  %i.iu = icmp slt i32 %spec.select.i.i.3, %i.da
  %i.iv = zext i1 %i.iu to i32
  %spec.select.i.i.i.3 = add i32 %spec.select.i.i.3, %i.iv ; 5 uses
  %i.iw = zext i8 %i.it to i32
  %i.ix = and i32 %spec.select.i.i.3, 7
  store i32 %spec.select.i.i.i.3, ptr %i.cs, align 8, !tbaa !50
  %i.iy = lshr exact i32 128, %i.ix
  %i.iz = and i32 %i.iy, %i.iw
  %.not.i.i.3 = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i.3, label %read_intra_mode.exit.3, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ja = lshr i32 %spec.select.i.i.i.3, 3
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !42
  %i.je = icmp slt i32 %spec.select.i.i.i.3, %i.da
  %i.jf = zext i1 %i.je to i32
  %spec.select.i2.i.i.3 = add i32 %spec.select.i.i.i.3, %i.jf
  %i.jg = zext i8 %i.jd to i32
  %i.jh = and i32 %spec.select.i.i.i.3, 7
  %i.ji = shl nuw nsw i32 %i.jg, %i.jh
  %i.jj = lshr i32 %i.ji, 7
  store i32 %spec.select.i2.i.i.3, ptr %i.cs, align 8, !tbaa !50
  %i.jk = and i32 %i.jj, 1
  %i.jl = add nuw nsw i32 %i.jk, 1
  br label %read_intra_mode.exit.3

bb.y:                                             ; preds = %read_intra_mode.exit.2
  %i.jm = load i32, ptr %i.is, align 1, !tbaa !42
  %i.jn = tail call i32 @llvm.bswap.i32(i32 %i.jm)
  %i.jo = and i32 %spec.select.i.i.3, 7
  %i.jp = shl i32 %i.jn, %i.jo
  %i.jq = lshr i32 %i.jp, 27
  %i.jr = add i32 %spec.select.i.i.3, 5
  %i.js = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.jr)
  store i32 %i.js, ptr %i.cs, align 8, !tbaa !50
  br label %read_intra_mode.exit.3

read_intra_mode.exit.3:                           ; preds = %bb.y, %bb.x, %bb.w
  %storemerge.i.3 = phi i32 [ %i.jq, %bb.y ], [ %i.jl, %bb.x ], [ 0, %bb.w ]
  %.0.i.3 = phi i32 [ 3, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ]
  store i32 %storemerge.i.3, ptr %i.if, align 4, !tbaa !41
  br label %.loopexit.sink.split

bb.z:                                             ; preds = %bb.l
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.jt, align 4, !tbaa !185
  %i.ju = icmp slt i32 %i.h, 33
  br i1 %i.ju, label %.thread553, label %bb.aa

.thread553:                                       ; preds = %bb.m, %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.jw = call fastcc i32 @read_intra_mode(ptr noundef %3, ptr noundef %i.jv)
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !50 ; 4 uses
  %i.jz = load ptr, ptr %3, align 8, !tbaa !44
  %i.ka = lshr i32 %i.jy, 3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !42
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !46
  %i.kg = icmp slt i32 %i.jy, %i.kf
  %i.kh = zext i1 %i.kg to i32
  %spec.select.i523 = add i32 %i.jy, %i.kh
  %i.ki = zext i8 %i.kd to i32
  %i.kj = and i32 %i.jy, 7
  %19 = shl nuw nsw i32 %i.ki, %i.kj
  %i.kk = lshr i32 %19, 7
  store i32 %spec.select.i523, ptr %i.jx, align 8, !tbaa !50
  %20 = and i32 %i.kk, 1
  %21 = add nuw nsw i32 %20, 1
  br label %.loopexit.sink.split

bb.ab:                                            ; preds = %bb.k
  %i.kl = icmp eq i32 %6, 3
  %i.km = select i1 %i.kl, i32 2, i32 3           ; 2 uses
  %i.kn = lshr i32 %i.co, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 1, !tbaa !42
  %i.kr = tail call i32 @llvm.bswap.i32(i32 %i.kq)
  %i.ks = and i32 %i.co, 7
  %i.kt = shl i32 %i.kr, %i.ks
  %i.ku = sub nuw nsw i32 32, %i.km
  %i.kv = lshr i32 %i.kt, %i.ku                   ; 3 uses
  %i.kw = add i32 %i.co, %i.km
  %i.kx = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %i.kw)
  store i32 %i.kx, ptr %i.ca, align 8, !tbaa !50
  %i.ky = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  store i32 %i.kv, ptr %i.ky, align 4, !tbaa !185
  %switch.selectcmp.i = icmp eq i32 %i.kv, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i64 4, i64 2
  %switch.selectcmp2.i = icmp ne i32 %i.kv, 0
  %i.kz = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lb = icmp slt i32 %i.h, 9
  %i.lc = icmp ne i32 %6, 3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %read_mv_info.exit
  %indvars.iv = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next, %read_mv_info.exit ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.kz, i64 %indvars.iv ; 14 uses
  %i.le = load i32, ptr %i.bx, align 8, !tbaa !47
  %.not.i524 = icmp eq i32 %i.le, 3
  br i1 %.not.i524, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lf = load i32, ptr %i.la, align 8, !tbaa !51
  %.not31.i = icmp eq i32 %i.lf, 0
  br i1 %.not31.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lg = load i32, ptr %i.ca, align 8, !tbaa !50 ; 4 uses
  %i.lh = load ptr, ptr %3, align 8, !tbaa !44
  %i.li = lshr i32 %i.lg, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !42
  %i.lm = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.ln = icmp slt i32 %i.lg, %i.lm
  %i.lo = zext i1 %i.ln to i32
  %spec.select.i.i525 = add i32 %i.lg, %i.lo
  %i.lp = zext i8 %i.ll to i32
  %i.lq = and i32 %i.lg, 7
  store i32 %spec.select.i.i525, ptr %i.ca, align 8, !tbaa !50
  %i.lr = lshr exact i32 128, %i.lq
  %i.ls = and i32 %i.lr, %i.lp
  %.not32.i = icmp eq i32 %i.ls, 0
  br i1 %.not32.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge.i526 = phi i32 [ 1, %bb.af ], [ 2, %bb.ae ]
  store i32 %storemerge.i526, ptr %i.ld, align 4, !tbaa !90
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  call fastcc void @read_mv(ptr noundef nonnull %3, ptr noundef %i.lt)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 10
  store i16 0, ptr %i.lv, align 2, !tbaa !91
  store i16 0, ptr %i.lu, align 4, !tbaa !92
  br label %read_mv_info.exit

bb.ah:                                            ; preds = %bb.ac
  %i.lw = load i32, ptr %i.ky, align 4, !tbaa !185
  %i.lx = icmp ne i32 %i.lw, 0
  %or.cond.i = or i1 %i.lc, %i.lx
  %or.cond584 = select i1 %i.lb, i1 %or.cond.i, i1 false
  %.pre.i = load i32, ptr %i.ca, align 8, !tbaa !50 ; 5 uses
  %.pre35.i = load ptr, ptr %3, align 8, !tbaa !44 ; 2 uses
  br i1 %or.cond584, label %._crit_edge.i, label %bb.ai

._crit_edge.i:                                    ; preds = %bb.ah
  %.pre37.i = load i32, ptr %i.cc, align 8, !tbaa !46
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ly = lshr i32 %.pre.i, 3
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %.pre35.i, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !42
  %i.mc = load i32, ptr %i.cc, align 8, !tbaa !46 ; 2 uses
  %i.md = icmp slt i32 %.pre.i, %i.mc
  %i.me = zext i1 %i.md to i32
  %spec.select.i33.i = add i32 %.pre.i, %i.me     ; 2 uses
  %i.mf = zext i8 %i.mb to i32
  %i.mg = and i32 %.pre.i, 7
  store i32 %spec.select.i33.i, ptr %i.ca, align 8, !tbaa !50
  %i.mh = lshr exact i32 128, %i.mg
  %i.mi = and i32 %i.mh, %i.mf
  %.not29.i = icmp eq i32 %i.mi, 0
  br i1 %.not29.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.mj = phi i32 [ %.pre37.i, %._crit_edge.i ], [ %i.mc, %bb.ai ]
  %i.mk = phi i32 [ %.pre.i, %._crit_edge.i ], [ %spec.select.i33.i, %bb.ai ] ; 4 uses
  %i.ml = lshr i32 %i.mk, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %.pre35.i, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !42
  %i.mp = icmp slt i32 %i.mk, %i.mj
  %i.mq = zext i1 %i.mp to i32
  %spec.select.i34.i = add i32 %i.mk, %i.mq
  %i.mr = zext i8 %i.mo to i32
  %i.ms = and i32 %i.mk, 7
  store i32 %spec.select.i34.i, ptr %i.ca, align 8, !tbaa !50
  %i.mt = lshr exact i32 128, %i.ms
  %i.mu = and i32 %i.mt, %i.mr
  %.not30.i = icmp eq i32 %i.mu, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ld, i64 4 ; 2 uses
  br i1 %.not30.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 1, ptr %i.ld, align 4, !tbaa !90
  call fastcc void @read_mv(ptr noundef nonnull %3, ptr noundef %i.mv)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ld, i64 10
  store i16 0, ptr %i.mx, align 2, !tbaa !91
  store i16 0, ptr %i.mw, align 4, !tbaa !92
  br label %read_mv_info.exit

bb.al:                                            ; preds = %bb.aj
  store i32 3, ptr %i.ld, align 4, !tbaa !90
  %i.my = getelementptr inbounds nuw i8, ptr %i.ld, i64 6
  store i16 0, ptr %i.my, align 2, !tbaa !93
  store i16 0, ptr %i.mv, align 4, !tbaa !94
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  call fastcc void @read_mv(ptr noundef nonnull %3, ptr noundef %i.mz)
  br label %read_mv_info.exit

bb.am:                                            ; preds = %bb.ai
  store i32 4, ptr %i.ld, align 4, !tbaa !90
  %i.na = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  call fastcc void @read_mv(ptr noundef nonnull %3, ptr noundef %i.na)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  call fastcc void @read_mv(ptr noundef nonnull %3, ptr noundef %i.nb)
  br label %read_mv_info.exit

read_mv_info.exit:                                ; preds = %bb.ag, %bb.ak, %bb.al, %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nc = icmp samesign ugt i64 %switch.select.i, %indvars.iv.next
  %i.nd = select i1 %switch.selectcmp2.i, i1 %i.nc, i1 false
  br i1 %i.nd, label %bb.ac, label %.loopexit, !llvm.loop !149

bb.an:                                            ; preds = %bb.k
  %i.ne = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.ne, align 4, !tbaa !185
  %i.nf = lshr i32 %i.co, 3
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !42
  %i.nj = icmp slt i32 %i.co, %i.cd
  %i.nk = zext i1 %i.nj to i32
  %spec.select.i.i527 = add i32 %i.co, %i.nk      ; 5 uses
  %i.nl = zext i8 %i.ni to i32
  %i.nm = and i32 %i.co, 7
  store i32 %spec.select.i.i527, ptr %i.ca, align 8, !tbaa !50
  %i.nn = lshr exact i32 128, %i.nm
  %i.no = and i32 %i.nn, %i.nl
  %.not.i528 = icmp eq i32 %i.no, 0
  br i1 %.not.i528, label %get_unary.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.np = lshr i32 %spec.select.i.i527, 3
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !42
  %i.nt = icmp slt i32 %spec.select.i.i527, %i.cd
  %i.nu = zext i1 %i.nt to i32
  %spec.select.i.1.i = add i32 %spec.select.i.i527, %i.nu ; 5 uses
  %i.nv = zext i8 %i.ns to i32
  %i.nw = and i32 %spec.select.i.i527, 7
  store i32 %spec.select.i.1.i, ptr %i.ca, align 8, !tbaa !50
  %i.nx = lshr exact i32 128, %i.nw
  %i.ny = and i32 %i.nx, %i.nv
  %.not.1.i = icmp eq i32 %i.ny, 0
  br i1 %.not.1.i, label %get_unary.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nz = lshr i32 %spec.select.i.1.i, 3
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !42
  %i.od = icmp slt i32 %spec.select.i.1.i, %i.cd
  %i.oe = zext i1 %i.od to i32
  %spec.select.i.2.i = add i32 %spec.select.i.1.i, %i.oe
  %i.of = zext i8 %i.oc to i32
  %i.og = and i32 %spec.select.i.1.i, 7
  store i32 %spec.select.i.2.i, ptr %i.ca, align 8, !tbaa !50
  %i.oh = lshr exact i32 128, %i.og
  %i.oi = and i32 %i.oh, %i.of
  %.not.2.i = icmp eq i32 %i.oi, 0
  %spec.select.i529 = select i1 %.not.2.i, i64 2, i64 3
  br label %get_unary.exit

get_unary.exit:                                   ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.lcssa.i = phi i64 [ %spec.select.i529, %bb.ap ], [ 0, %bb.an ], [ 1, %bb.ao ]
  %i.oj = getelementptr inbounds nuw i8, ptr @skip_mv_ref, i64 %.0.lcssa.i
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !42
  %i.ol = zext i8 %i.ok to i32
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %get_unary.exit, %.thread553, %bb.aa, %read_intra_mode.exit.3
  %.sink686.sroa.phi = phi ptr [ %.sink686.sroa.gep, %read_intra_mode.exit.3 ], [ %.sink686.sroa.gep802, %bb.aa ], [ %.sink686.sroa.gep803, %.thread553 ], [ %.sink686.sroa.gep804, %get_unary.exit ]
  %.0.i.3.sink = phi i32 [ %.0.i.3, %read_intra_mode.exit.3 ], [ %21, %bb.aa ], [ %i.jw, %.thread553 ], [ %i.ol, %get_unary.exit ]
  %.ph = phi ptr [ %i.cq, %read_intra_mode.exit.3 ], [ %i.cq, %bb.aa ], [ %i.cq, %.thread553 ], [ %i.cp, %get_unary.exit ]
  store i32 %.0.i.3.sink, ptr %.sink686.sroa.phi, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %read_mv_info.exit, %.loopexit.sink.split
  %i.om = phi ptr [ %.ph, %.loopexit.sink.split ], [ %i.cp, %read_mv_info.exit ] ; 3 uses
  %i.on = ashr i32 %i.h, 3                        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.oo = load i32, ptr %i.om, align 4, !tbaa !184 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 7 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !185 ; 4 uses
  %i.or = icmp eq i32 %i.oo, 0
  %i.os = icmp eq i32 %i.oq, 3                    ; 2 uses
  %or.cond.i530 = select i1 %i.or, i1 %i.os, i1 false
  br i1 %or.cond.i530, label %.preheader.i, label %bb.aq

.preheader.i:                                     ; preds = %.loopexit
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !73
  %i.ov = load i32, ptr %i.bp, align 4, !tbaa !88
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.ou, i64 %i.ow ; 2 uses
  store i32 0, ptr %i.ox, align 4, !tbaa !41
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 3, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !41
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.oz = call fastcc i32 @reconstruct_intra(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %18, i32 noundef 4, i32 noundef 0)
  %i.pa = load ptr, ptr %i.oy, align 8, !tbaa !74
  %i.pb = load i32, ptr %i.bw, align 4, !tbaa !89
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [16 x i8], ptr %i.pa, i64 %i.pc
  store i32 %i.oz, ptr %i.pd, align 4, !tbaa !95
  %i.pe = call fastcc i32 @reconstruct_intra(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %18, i32 noundef 4, i32 noundef 1)
  %i.pf = load ptr, ptr %i.oy, align 8, !tbaa !74
  %i.pg = load i32, ptr %i.bw, align 4, !tbaa !89
  %i.ph = add i32 %i.pg, 1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [16 x i8], ptr %i.pf, i64 %i.pi
  store i32 %i.pe, ptr %i.pj, align 4, !tbaa !95
  %i.pk = call fastcc i32 @reconstruct_intra(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %18, i32 noundef 4, i32 noundef 2)
  %i.pl = load ptr, ptr %i.oy, align 8, !tbaa !74
  %i.pm = load i32, ptr %i.bw, align 4, !tbaa !89
  %i.pn = load i32, ptr %i.bs, align 8, !tbaa !72
  %i.po = add i32 %i.pn, %i.pm
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [16 x i8], ptr %i.pl, i64 %i.pp
  store i32 %i.pk, ptr %i.pq, align 4, !tbaa !95
  %i.pr = call fastcc i32 @reconstruct_intra(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %18, i32 noundef 4, i32 noundef 3)
  %i.ps = load ptr, ptr %i.oy, align 8, !tbaa !74
  %i.pt = load i32, ptr %i.bw, align 4, !tbaa !89
  %i.pu = load i32, ptr %i.bs, align 8, !tbaa !72
  %i.pv = add i32 %i.pt, 1
  %i.pw = add i32 %i.pv, %i.pu
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [16 x i8], ptr %i.ps, i64 %i.px
  store i32 %i.pr, ptr %i.py, align 4, !tbaa !95
  br label %reconstruct.exit

bb.aq:                                            ; preds = %.loopexit
  switch i32 %i.oo, label %bb.cu [
    i32 0, label %bb.ar
    i32 1, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.pz = call fastcc i32 @reconstruct_intra(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %18, i32 noundef %i.h, i32 noundef 0) ; 5 uses
  %i.qa = ashr i32 %i.h, 2                        ; 4 uses
  %i.qb = icmp sgt i32 %i.qa, 0
  br i1 %i.qb, label %.preheader130.lr.ph.i, label %.loopexit129.i

.preheader130.lr.ph.i:                            ; preds = %bb.ar
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !74 ; 5 uses
  %i.qe = load i32, ptr %i.bw, align 4, !tbaa !89
  %i.qf = load i32, ptr %i.bs, align 8, !tbaa !72
  %wide.trip.count.i = zext nneg i32 %i.qa to i64 ; 2 uses
  %xtraiter780 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.qg = icmp ult i32 %i.qa, 4
  %unroll_iter783 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  %lcmp.mod782 = icmp ne i64 %xtraiter780, 0
  br label %.preheader130.i

.preheader130.i:                                  ; preds = %._crit_edge143.i, %.preheader130.lr.ph.i
  %.096144.i = phi i32 [ 0, %.preheader130.lr.ph.i ], [ %i.ql, %._crit_edge143.i ] ; 2 uses
  %i.qh = mul nsw i32 %.096144.i, %i.qf
  %invariant.op.i = add i32 %i.qh, %i.qe          ; 5 uses
  br i1 %i.qg, label %.epil.preheader779, label %.preheader130.i.new

._crit_edge143.i.unr-lcssa:                       ; preds = %.preheader130.i.new
  br i1 %lcmp.mod781.not, label %._crit_edge143.i, label %.epil.preheader779

.epil.preheader779:                               ; preds = %._crit_edge143.i.unr-lcssa, %.preheader130.i
  %indvars.iv159.i.epil.init = phi i64 [ 0, %.preheader130.i ], [ %indvars.iv.next160.i.3, %._crit_edge143.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod782)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader779
  %indvars.iv159.i.epil = phi i64 [ %indvars.iv159.i.epil.init, %.epil.preheader779 ], [ %indvars.iv.next160.i.epil, %bb.as ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader779 ], [ %epil.iter.next, %bb.as ]
  %i.qi = trunc nuw nsw i64 %indvars.iv159.i.epil to i32
  %.reass.i.epil = add i32 %invariant.op.i, %i.qi
  %i.qj = sext i32 %.reass.i.epil to i64
  %i.qk = getelementptr inbounds [16 x i8], ptr %i.qd, i64 %i.qj
  store i32 %i.pz, ptr %i.qk, align 4, !tbaa !95
  %indvars.iv.next160.i.epil = add nuw nsw i64 %indvars.iv159.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter780
  br i1 %epil.iter.cmp.not, label %._crit_edge143.i, label %bb.as, !llvm.loop !150

._crit_edge143.i:                                 ; preds = %bb.as, %._crit_edge143.i.unr-lcssa
  %i.ql = add nuw nsw i32 %.096144.i, 1           ; 2 uses
  %exitcond163.not.i = icmp eq i32 %i.ql, %i.qa
  br i1 %exitcond163.not.i, label %.loopexit129.i, label %.preheader130.i, !llvm.loop !151

.preheader130.i.new:                              ; preds = %.preheader130.i, %.preheader130.i.new
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i.3, %.preheader130.i.new ], [ 0, %.preheader130.i ] ; 5 uses
  %niter784 = phi i64 [ %niter784.next.3, %.preheader130.i.new ], [ 0, %.preheader130.i ]
  %i.qm = trunc nuw nsw i64 %indvars.iv159.i to i32
  %.reass.i = add i32 %invariant.op.i, %i.qm
  %i.qn = sext i32 %.reass.i to i64
  %i.qo = getelementptr inbounds [16 x i8], ptr %i.qd, i64 %i.qn
  store i32 %i.pz, ptr %i.qo, align 4, !tbaa !95
  %i.qp = trunc i64 %indvars.iv159.i to i32
  %i.qq = or disjoint i32 %i.qp, 1
  %.reass.i.1 = add i32 %invariant.op.i, %i.qq
  %i.qr = sext i32 %.reass.i.1 to i64
  %i.qs = getelementptr inbounds [16 x i8], ptr %i.qd, i64 %i.qr
  store i32 %i.pz, ptr %i.qs, align 4, !tbaa !95
  %i.qt = trunc i64 %indvars.iv159.i to i32
  %i.qu = or disjoint i32 %i.qt, 2
  %.reass.i.2 = add i32 %invariant.op.i, %i.qu
  %i.qv = sext i32 %.reass.i.2 to i64
  %i.qw = getelementptr inbounds [16 x i8], ptr %i.qd, i64 %i.qv
  store i32 %i.pz, ptr %i.qw, align 4, !tbaa !95
  %i.qx = trunc i64 %indvars.iv159.i to i32
  %i.qy = or disjoint i32 %i.qx, 3
  %.reass.i.3 = add i32 %invariant.op.i, %i.qy
  %i.qz = sext i32 %.reass.i.3 to i64
  %i.ra = getelementptr inbounds [16 x i8], ptr %i.qd, i64 %i.qz
  store i32 %i.pz, ptr %i.ra, align 4, !tbaa !95
  %indvars.iv.next160.i.3 = add nuw nsw i64 %indvars.iv159.i, 4 ; 2 uses
  %niter784.next.3 = add i64 %niter784, 4         ; 2 uses
  %niter784.ncmp.3 = icmp eq i64 %niter784.next.3, %unroll_iter783
  br i1 %niter784.ncmp.3, label %._crit_edge143.i.unr-lcssa, label %.preheader130.i.new, !llvm.loop !152

bb.at:                                            ; preds = %bb.aq
  %i.rb = load i32, ptr %18, align 4, !tbaa !86
  %i.rc = ashr i32 %i.rb, 2
  store i32 %i.rc, ptr %i.a, align 4, !tbaa !41
  %i.rd = load i32, ptr %i.bi, align 4, !tbaa !87
  %i.re = ashr i32 %i.rd, 2
  store i32 %i.re, ptr %i.b, align 4, !tbaa !41
  %i.rf = load i32, ptr %i.bw, align 4, !tbaa !89
  %switch.select.i.i = select i1 %i.os, i64 4, i64 2
  %switch.selectcmp2.i.i = icmp ne i32 %i.oq, 0
  %i.rg = ashr i32 %i.h, 2                        ; 9 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.ri = mul nsw i32 %i.rg, 3
  %i.rj = ashr i32 %i.ri, 2                       ; 4 uses
  %i.rk = ashr i32 %i.h, 4                        ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.au

bb.au:                                            ; preds = %get_next_mv.exit.i, %bb.at
  %i.rq = phi i32 [ %i.oq, %bb.at ], [ %i.xp, %get_next_mv.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.at ], [ %indvars.iv.next.i, %get_next_mv.exit.i ] ; 7 uses
  %.sroa.0109.0140.i = phi i32 [ undef, %bb.at ], [ %.sroa.0109.1.i, %get_next_mv.exit.i ]
  %.sroa.13.0139.i = phi i32 [ undef, %bb.at ], [ %.sroa.13.1.i, %get_next_mv.exit.i ]
  %.0119137.i = phi i32 [ %i.rf, %bb.at ], [ %.2.i, %get_next_mv.exit.i ] ; 8 uses
  switch i32 %i.rq, label %get_mv_dimensions.exit.i [
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %bb.ax
    i32 3, label %bb.ay
    i32 4, label %bb.az
    i32 5, label %bb.ba
    i32 6, label %bb.bb
    i32 7, label %bb.bc
  ]

bb.av:                                            ; preds = %bb.au
  br label %get_mv_dimensions.exit.i

bb.aw:                                            ; preds = %bb.au
  br label %get_mv_dimensions.exit.i

bb.ax:                                            ; preds = %bb.au
  br label %get_mv_dimensions.exit.i

bb.ay:                                            ; preds = %bb.au
  br label %get_mv_dimensions.exit.i

bb.az:                                            ; preds = %bb.au
end_hunk_0
begin_hunk_1_@decode_cbp16:bb.a
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65 ; 2 uses
  %i.ba = lshr i32 %i.ax, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 1, !tbaa !42
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = and i32 %i.ax, 7
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !42
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !42 ; 2 uses
  %i.bo = sext i16 %i.bn to i32                   ; 2 uses
  %i.bp = icmp slt i16 %i.bn, 0
  br i1 %i.bp, label %bb.c, label %get_vlc2.exit30.i

bb.c:                                             ; preds = %get_vlc2.exit34.i
  %i.bq = add i32 %i.ax, 9
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.bq) ; 3 uses
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !42
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = and i32 %i.br, 7
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bo, 32
  %i.ca = lshr i32 %i.by, %i.bz
  %i.cb = add i32 %i.ca, %i.bl
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !42
  %i.cg = sext i16 %i.cf to i32
  %i.ch = load i16, ptr %i.cd, align 2, !tbaa !42
  %i.ci = sext i16 %i.ch to i32
  br label %get_vlc2.exit30.i

get_vlc2.exit30.i:                                ; preds = %bb.c, %get_vlc2.exit34.i
  %.167.i27.i = phi i32 [ %i.ci, %bb.c ], [ %i.bl, %get_vlc2.exit34.i ] ; 4 uses
  %.165.i28.i = phi i32 [ %i.br, %bb.c ], [ %i.ax, %get_vlc2.exit34.i ]
  %.1.i29.i = phi i32 [ %i.cg, %bb.c ], [ %i.bo, %get_vlc2.exit34.i ]
  %i.cj = add i32 %.1.i29.i, %.165.i28.i
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.cj) ; 5 uses
  store i32 %i.ck, ptr %i.i, align 8, !tbaa !50
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !65 ; 2 uses
  %i.cn = lshr i32 %i.ck, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !42
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %i.ck, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = lshr i32 %i.ct, 23
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !42
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !42 ; 2 uses
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = icmp slt i16 %i.da, 0
  br i1 %i.dc, label %bb.d, label %get_vlc2.exit26.i

bb.d:                                             ; preds = %get_vlc2.exit30.i
  %i.dd = add i32 %i.ck, 9
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.dd) ; 3 uses
  %i.df = lshr i32 %i.de, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !42
  %i.dj = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dk = and i32 %i.de, 7
  %i.dl = shl i32 %i.dj, %i.dk
  %i.dm = add nsw i32 %i.db, 32
  %i.dn = lshr i32 %i.dl, %i.dm
  %i.do = add i32 %i.dn, %i.cy
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !42
  %i.dt = sext i16 %i.ds to i32
  %i.du = load i16, ptr %i.dq, align 2, !tbaa !42
  %i.dv = sext i16 %i.du to i32
  br label %get_vlc2.exit26.i

get_vlc2.exit26.i:                                ; preds = %bb.d, %get_vlc2.exit30.i
  %.167.i23.i = phi i32 [ %i.dv, %bb.d ], [ %i.cy, %get_vlc2.exit30.i ] ; 4 uses
  %.165.i24.i = phi i32 [ %i.de, %bb.d ], [ %i.ck, %get_vlc2.exit30.i ]
  %.1.i25.i = phi i32 [ %i.dt, %bb.d ], [ %i.db, %get_vlc2.exit30.i ]
  %i.dw = add i32 %.1.i25.i, %.165.i24.i
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.dw) ; 5 uses
  store i32 %i.dx, ptr %i.i, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !65 ; 2 uses
  %i.ea = lshr i32 %i.dx, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 1, !tbaa !42
  %i.ee = tail call i32 @llvm.bswap.i32(i32 %i.ed)
  %i.ef = and i32 %i.dx, 7
  %i.eg = shl i32 %i.ee, %i.ef
  %i.eh = lshr i32 %i.eg, 23
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !42
  %i.el = sext i16 %i.ek to i32                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.en = load i16, ptr %i.em, align 2, !tbaa !42 ; 2 uses
  %i.eo = sext i16 %i.en to i32                   ; 2 uses
  %i.ep = icmp slt i16 %i.en, 0
  br i1 %i.ep, label %bb.e, label %decode_super_cbp.exit

bb.e:                                             ; preds = %get_vlc2.exit26.i
  %i.eq = add i32 %i.dx, 9
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.eq) ; 3 uses
  %i.es = lshr i32 %i.er, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !42
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %i.er, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = add nsw i32 %i.eo, 32
  %i.fa = lshr i32 %i.ey, %i.ez
  %i.fb = add i32 %i.fa, %i.el
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !42
  %i.fg = sext i16 %i.ff to i32
  %i.fh = load i16, ptr %i.fd, align 2, !tbaa !42
  %i.fi = sext i16 %i.fh to i32
  br label %decode_super_cbp.exit

decode_super_cbp.exit:                            ; preds = %get_vlc2.exit26.i, %bb.e
  %.167.i.i = phi i32 [ %i.fi, %bb.e ], [ %i.el, %get_vlc2.exit26.i ] ; 4 uses
  %.165.i.i = phi i32 [ %i.er, %bb.e ], [ %i.dx, %get_vlc2.exit26.i ]
  %.1.i.i = phi i32 [ %i.fg, %bb.e ], [ %i.eo, %get_vlc2.exit26.i ]
  %i.fj = add i32 %.1.i.i, %.165.i.i
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.fj)
  store i32 %i.fk, ptr %i.i, align 8, !tbaa !50
  %i.fl = and i32 %.167.i31.i, 3
  %i.fm = shl nsw i32 %.167.i31.i, 2
  %i.fn = and i32 %i.fm, 48
  %i.fo = shl nsw i32 %.167.i31.i, 12
  %i.fp = and i32 %i.fo, 65536
  %i.fq = shl nsw i32 %.167.i31.i, 15
  %i.fr = and i32 %i.fq, 1048576
  %i.fs = shl nsw i32 %.167.i27.i, 2
  %i.ft = and i32 %i.fs, 12
  %i.fu = shl nsw i32 %.167.i27.i, 4
  %i.fv = and i32 %i.fu, 192
  %i.fw = shl nsw i32 %.167.i27.i, 13
  %i.fx = and i32 %i.fw, 131072
  %i.fy = shl nsw i32 %.167.i27.i, 16
  %i.fz = and i32 %i.fy, 2097152
  %i.ga = shl nsw i32 %.167.i23.i, 8
  %i.gb = and i32 %i.ga, 768
  %i.gc = shl nsw i32 %.167.i23.i, 10
  %i.gd = and i32 %i.gc, 12288
  %i.ge = shl nsw i32 %.167.i23.i, 14
  %i.gf = and i32 %i.ge, 262144
  %i.gg = shl i32 %.167.i23.i, 17
  %i.gh = and i32 %i.gg, 4194304
  %i.gi = shl nsw i32 %.167.i.i, 10
  %i.gj = and i32 %i.gi, 3072
  %i.gk = shl nsw i32 %.167.i.i, 12
  %i.gl = and i32 %i.gk, 49152
  %i.gm = shl nsw i32 %.167.i.i, 15
  %i.gn = and i32 %i.gm, 524288
  %i.go = shl i32 %.167.i.i, 18
  %i.gp = and i32 %i.go, 8388608
  %i.gq = or disjoint i32 %i.fn, %i.fl
  %i.gr = or disjoint i32 %i.gq, %i.fp
  %i.gs = or disjoint i32 %i.gr, %i.fr
  %i.gt = or disjoint i32 %i.gs, %i.ft
  %i.gu = or disjoint i32 %i.gt, %i.fv
  %i.gv = or disjoint i32 %i.gu, %i.fx
  %i.gw = add nuw nsw i32 %i.gv, %i.fz
  %i.gx = add nuw nsw i32 %i.gw, %i.gb
  %i.gy = add nuw nsw i32 %i.gx, %i.gd
  %i.gz = add nuw nsw i32 %i.gy, %i.gf
  %i.ha = add nuw nsw i32 %i.gz, %i.gh
  %i.hb = add nuw nsw i32 %i.ha, %i.gj
  %i.hc = add nuw nsw i32 %i.hb, %i.gl
  %i.hd = add nuw nsw i32 %i.hc, %i.gn
  %i.he = add nuw nsw i32 %i.hd, %i.gp
  ret i32 %i.he
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_cu_4x4in16x16(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 32) %2, i32 noundef range(i32 0, 69) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 512)) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %6, i32 noundef range(i32 1, 16777216) %7) unnamed_addr #10 {
bb.a:
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @rv60_qp_to_idx, i64 %i.a
  %8 = shl nuw nsw i32 %1, 5
  %.0.in.in.idx.i = zext nneg i32 %8 to i64
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.in.idx.i
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1, !tbaa !42
  %.not = icmp eq i32 %1, 0
  %i.c = zext i8 %.0.in.i to i64
  %.v = select i1 %.not, ptr @inter_coeff_vlc, ptr @intra_coeff_vlc
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.v, i64 %i.c ; 24 uses
  %i.e = zext nneg i32 %2 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr @rv60_quants_b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !96
  %i.h = zext i16 %i.g to i32                     ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr @rv60_chroma_quant_dc, i64 %i.e
  %i.j = load i8, ptr %i.i, align 1, !tbaa !42
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @rv60_quants_b, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr @rv60_chroma_quant_ac, i64 %i.e
  %i.o = load i8, ptr %i.n, align 1, !tbaa !42
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @rv60_quants_b, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %4, i8 0, i64 512, i1 false)
  %i.s = and i32 %7, 1
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %4, i32 noundef 4, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = and i32 %7, 2
  %.not43.1 = icmp eq i32 %i.t, 0
  br i1 %.not43.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.u, i32 noundef 4, i32 noundef %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = and i32 %7, 4
  %.not43.2 = icmp eq i32 %i.v, 0
  br i1 %.not43.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.w, i32 noundef 4, i32 noundef %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = and i32 %7, 8
  %.not43.3 = icmp eq i32 %i.x, 0
  br i1 %.not43.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.y, i32 noundef 4, i32 noundef %i.h)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = and i32 %7, 16
  %.not43.4 = icmp eq i32 %i.z, 0
  br i1 %.not43.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 128
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.aa, i32 noundef 4, i32 noundef %i.h)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = and i32 %7, 32
  %.not43.5 = icmp eq i32 %i.ab, 0
  br i1 %.not43.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 160
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ac, i32 noundef 4, i32 noundef %i.h)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = and i32 %7, 64
  %.not43.6 = icmp eq i32 %i.ad, 0
  br i1 %.not43.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 192
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ae, i32 noundef 4, i32 noundef %i.h)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = and i32 %7, 128
  %.not43.7 = icmp eq i32 %i.af, 0
  br i1 %.not43.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 224
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ag, i32 noundef 4, i32 noundef %i.h)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = and i32 %7, 256
  %.not43.8 = icmp eq i32 %i.ah, 0
  br i1 %.not43.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 256
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ai, i32 noundef 4, i32 noundef %i.h)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aj = and i32 %7, 512
  %.not43.9 = icmp eq i32 %i.aj, 0
  br i1 %.not43.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 288
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ak, i32 noundef 4, i32 noundef %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.al = and i32 %7, 1024
  %.not43.10 = icmp eq i32 %i.al, 0
  br i1 %.not43.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 320
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.am, i32 noundef 4, i32 noundef %i.h)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.an = and i32 %7, 2048
  %.not43.11 = icmp eq i32 %i.an, 0
  br i1 %.not43.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 352
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ao, i32 noundef 4, i32 noundef %i.h)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ap = and i32 %7, 4096
  %.not43.12 = icmp eq i32 %i.ap, 0
  br i1 %.not43.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 384
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.aq, i32 noundef 4, i32 noundef %i.h)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ar = and i32 %7, 8192
  %.not43.13 = icmp eq i32 %i.ar, 0
  br i1 %.not43.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 416
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.as, i32 noundef 4, i32 noundef %i.h)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.at = and i32 %7, 16384
  %.not43.14 = icmp eq i32 %i.at, 0
  br i1 %.not43.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 448
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.au, i32 noundef 4, i32 noundef %i.h)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.av = and i32 %7, 32768
  %.not43.15 = icmp eq i32 %i.av, 0
  br i1 %.not43.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 480
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.aw, i32 noundef 4, i32 noundef %i.h)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ax = zext i16 %i.m to i32                    ; 8 uses
  %i.ay = zext i16 %i.r to i32                    ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %i.az = and i32 %7, 65536
  %.not42 = icmp eq i32 %i.az, 0
  br i1 %.not42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %5, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ba = and i32 %7, 131072
  %.not42.1 = icmp eq i32 %i.ba, 0
  br i1 %.not42.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 32
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.bb, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bc = and i32 %7, 262144
  %.not42.2 = icmp eq i32 %i.bc, 0
  br i1 %.not42.2, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 64
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.bd, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.be = and i32 %7, 524288
  %.not42.3 = icmp eq i32 %i.be, 0
  br i1 %.not42.3, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 96
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.bf, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %6, i8 0, i64 128, i1 false)
  %i.bg = and i32 %7, 1048576
  %.not41 = icmp eq i32 %i.bg, 0
  br i1 %.not41, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %6, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.bh = and i32 %7, 2097152
  %.not41.1 = icmp eq i32 %i.bh, 0
  br i1 %.not41.1, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 32
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.bi, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.bj = and i32 %7, 4194304
  %.not41.2 = icmp eq i32 %i.bj, 0
  br i1 %.not41.2, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 64
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.bk, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.not41.3 = icmp samesign ult i32 %7, 8388608
  br i1 %.not41.3, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 96
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.bl, i32 noundef 4, i32 noundef %i.ax, i32 noundef %i.ay)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  ret void
}

declare void @ff_rv60_idct4x4_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -32768, 32768) i32 @decode_cbp8(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 0, 69) %2) unnamed_addr #7 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @rv60_qp_to_idx, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !42
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr @cbp8_vlc, i64 %i.d
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !42
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = and i32 %i.j, 7
  %i.t = shl i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, 23
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !42
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !42  ; 2 uses
  %i.ab = sext i16 %i.aa to i32                   ; 2 uses
  %i.ac = icmp slt i16 %i.aa, 0
  br i1 %i.ac, label %bb.b, label %get_vlc2.exit

bb.b:                                             ; preds = %bb.a
  %i.ad = add i32 %i.j, 9
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.ad) ; 3 uses
  %i.af = lshr i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !42
  %i.aj = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = and i32 %i.ae, 7
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = add nsw i32 %i.ab, 32
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = add i32 %i.an, %i.y
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !42
  %i.at = sext i16 %i.as to i32
  %i.au = load i16, ptr %i.aq, align 2, !tbaa !42
  %i.av = sext i16 %i.au to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.a, %bb.b
  %.167.i = phi i32 [ %i.av, %bb.b ], [ %i.y, %bb.a ]
  %.165.i = phi i32 [ %i.ae, %bb.b ], [ %i.j, %bb.a ]
  %.1.i = phi i32 [ %i.at, %bb.b ], [ %i.ab, %bb.a ]
  %i.aw = add i32 %.1.i, %.165.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.aw)
  store i32 %i.ax, ptr %i.i, align 8, !tbaa !50
  ret i32 %.167.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_cu_8x8(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 32) %2, i32 noundef range(i32 0, 69) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #10 {
bb.a:
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @rv60_qp_to_idx, i64 %i.a
  %9 = shl nuw nsw i32 %1, 5
  %.0.in.in.idx.i = zext nneg i32 %9 to i64
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.in.in.idx.i
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1, !tbaa !42
  %.not = icmp eq i32 %1, 0
  %i.c = zext i8 %.0.in.i to i64
  %.v = select i1 %.not, ptr @inter_coeff_vlc, ptr @intra_coeff_vlc
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.v, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %2 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr @rv60_quants_b, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !96
  %i.h = zext i16 %i.g to i32                     ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr @rv60_chroma_quant_dc, i64 %i.e
  %i.j = load i8, ptr %i.i, align 1, !tbaa !42
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @rv60_quants_b, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !96
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr @rv60_chroma_quant_ac, i64 %i.e
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr @rv60_quants_b, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !96
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %.not41 = icmp eq i32 %8, 0
  %i.u = and i32 %7, 1
  %.not40.us = icmp eq i32 %i.u, 0                ; 2 uses
  br i1 %.not41, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not40.us, label %.split.1, label %bb.e

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not40.us, label %.split.us.1, label %bb.b

bb.b:                                             ; preds = %.split.us.preheader
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %4, i32 noundef 8, i32 noundef %i.h)
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader
  %i.v = and i32 %7, 2
  %.not40.us.1 = icmp eq i32 %i.v, 0
  br i1 %.not40.us.1, label %.split.us.2, label %bb.c

bb.c:                                             ; preds = %.split.us.1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.w, i32 noundef 8, i32 noundef %i.h)
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.c, %.split.us.1
  %i.x = and i32 %7, 4
  %.not40.us.2 = icmp eq i32 %i.x, 0
  br i1 %.not40.us.2, label %.split.us.3, label %bb.d

bb.d:                                             ; preds = %.split.us.2
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.y, i32 noundef 8, i32 noundef %i.h)
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %i.z = and i32 %7, 8
  %.not40.us.3 = icmp eq i32 %i.z, 0
  br i1 %.not40.us.3, label %.split45.us, label %.split45.us.sink.split

.split45.us.sink.split:                           ; preds = %.split.us.3, %.split.3
  %.sink49 = phi i64 [ 96, %.split.3 ], [ 72, %.split.us.3 ]
  %.sink48 = phi i32 [ 4, %.split.3 ], [ 8, %.split.us.3 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.sink49
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.aa, i32 noundef %.sink48, i32 noundef %i.h)
  br label %.split45.us

.split45.us:                                      ; preds = %.split45.us.sink.split, %.split.3, %.split.us.3
  %i.ab = and i32 %7, 16
  %.not38 = icmp eq i32 %i.ab, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.split.preheader
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %4, i32 noundef 4, i32 noundef %i.h)
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.e
  %i.ac = and i32 %7, 2
  %.not40.1 = icmp eq i32 %i.ac, 0
  br i1 %.not40.1, label %.split.2, label %bb.f

bb.f:                                             ; preds = %.split.1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.ad, i32 noundef 4, i32 noundef %i.h)
  br label %.split.2

.split.2:                                         ; preds = %bb.f, %.split.1
  %i.ae = and i32 %7, 4
  %.not40.2 = icmp eq i32 %i.ae, 0
  br i1 %.not40.2, label %.split.3, label %bb.g

bb.g:                                             ; preds = %.split.2
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64
  tail call fastcc void @decode_4x4_block(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.af, i32 noundef 4, i32 noundef %i.h)
  br label %.split.3

.split.3:                                         ; preds = %bb.g, %.split.2
  %i.ag = and i32 %7, 8
  %.not40.3 = icmp eq i32 %i.ag, 0
  br i1 %.not40.3, label %.split45.us, label %.split45.us.sink.split

bb.h:                                             ; preds = %.split45.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %5, i32 noundef 4, i32 noundef %i.n, i32 noundef %i.t)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split45.us
  %i.ah = and i32 %7, 32
  %.not39 = icmp eq i32 %i.ah, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  tail call fastcc void @decode_4x4_block_dc(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %6, i32 noundef 4, i32 noundef %i.n, i32 noundef %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare void @ff_rv60_idct8x8_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_rv60_idct16x16_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_mv(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !42
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k                       ; 3 uses
  %i.m = and i32 %i.l, -1434451968
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i32 %i.l, 24
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !42
  %i.r = zext i8 %i.q to i32
  %i.s = add i32 %i.b, %i.r
  %..i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.s) ; 2 uses
  store i32 %..i, ptr %i.a, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr @ff_interleaved_se_golomb_vlc_code, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !tbaa !42
  %i.v = sext i8 %i.u to i32
  br label %get_interleaved_se_golomb.exit

bb.c:                                             ; preds = %bb.a
  %i.w = add i32 %i.b, 8
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.w) ; 3 uses
  %i.y = lshr i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !42
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = and i32 %i.x, 7
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.ae, 8
  %i.ag = or i32 %i.af, %i.l                      ; 2 uses
  %i.ah = and i32 %i.ag, 11184810
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %get_interleaved_se_golomb.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.aj = or i32 %i.ag, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.055.i = phi i32 [ %i.al, %.lr.ph.i ], [ 31, %.lr.ph.preheader.i ] ; 2 uses
  %.04654.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %i.aj, %.lr.ph.preheader.i ] ; 3 uses
  %i.ak = shl i32 %.04654.i, %.055.i
  %i.al = add nsw i32 %.055.i, -1                 ; 4 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = tail call i32 @llvm.fshl.i32(i32 %.04654.i, i32 %.04654.i, i32 2)
  %i.ao = sub i32 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !298

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %reass.sub.i = add i32 %i.x, 55
  %i.aq = shl i32 %i.al, 1
  %i.ar = sub i32 %reass.sub.i, %i.aq
  %.52.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ar) ; 2 uses
  store i32 %.52.i, ptr %i.a, align 8, !tbaa !50
  %i.as = lshr i32 -1, %i.al
  %i.at = and i32 %i.ao, %i.as
  %i.au = add i32 %i.at, -1
  %i.av = and i32 %i.ao, 1
  %i.aw = sub nsw i32 0, %i.av
  %i.ax = xor i32 %i.au, %i.aw
  %i.ay = add i32 %i.ax, 1
  %i.az = ashr i32 %i.ay, 1
end_hunk_1
