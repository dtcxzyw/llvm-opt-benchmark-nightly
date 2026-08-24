Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mv-search?download=true
inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@BlockMotionSearch:bb.a
  %.pre544 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !91
  br label %bb.m

bb.m:                                             ; preds = %.loopexit476, %bb.l, %bb.k
  %i.ey = phi i32 [ %i.ex, %.loopexit476 ], [ %.pre544, %bb.l ], [ 1, %bb.k ]
  %i.ez = phi ptr [ %i.cu, %.loopexit476 ], [ %.pre, %bb.l ], [ %i.cu, %bb.k ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 5100
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !105
  %i.fc = icmp ne i32 %i.fb, 0
  %i.fd = icmp slt i32 %4, 5
  %i.fe = and i1 %i.fd, %i.fc
  %i.ff = zext i1 %i.fe to i32
  store i32 %i.ff, ptr @test8x8transform, align 4, !tbaa !4
  %i.fg = icmp eq i32 %i.ey, 1
  %i.fh = load ptr, ptr @enc_picture, align 8, !tbaa !120 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 6488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !122
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.al
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !126 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 6512
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !127
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.al
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !99 ; 2 uses
  br i1 %i.fg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @UMHEXSetMotionVectorPredictor(ptr noundef %i.as, ptr noundef %i.fl, ptr noundef %i.fp, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull %i.a) #9
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @SetMotionVectorPredictor(ptr noundef %i.as, ptr noundef %i.fl, ptr noundef %i.fp, i16 noundef signext %0, i32 poison, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fq = load ptr, ptr @input, align 8, !tbaa !8 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 5244
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !91
  switch i32 %i.fs, label %bb.ad [
    i32 1, label %bb.q
    i32 2, label %bb.t
    i32 3, label %bb.w
    i32 0, label %bb.ac
  ]

bb.q:                                             ; preds = %bb.p
  %i.ft = load i16, ptr %i.as, align 2, !tbaa !47
  %i.fu = sdiv i16 %i.ft, 4                       ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !47
  %i.fx = sdiv i16 %i.fw, 4                       ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !128
  %.not442 = icmp eq i32 %i.ga, 0
  %.pre547 = load i32, ptr %i.a, align 4, !tbaa !4 ; 8 uses
  br i1 %.not442, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = sub nsw i32 0, %.pre547                 ; 2 uses
  %i.gc = sext i16 %i.fu to i32
  %i.gd = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gc, i32 %i.gb)
  %i.ge = call noundef i32 @llvm.smin.i32(i32 %i.gd, i32 %.pre547)
  %i.gf = trunc i32 %i.ge to i16
  %i.gg = sext i16 %i.fx to i32
  %i.gh = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gg, i32 %i.gb)
  %i.gi = call noundef i32 @llvm.smin.i32(i32 %i.gh, i32 %.pre547)
  %i.gj = trunc i32 %i.gi to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gk = phi i16 [ %i.gj, %bb.r ], [ %i.fx, %bb.q ]
  %i.gl = phi i16 [ %i.gf, %bb.r ], [ %i.fu, %bb.q ]
  %i.gm = add nsw i32 %.pre547, -2047
  %i.gn = sub nsw i32 2047, %.pre547
  %i.go = sext i16 %i.gl to i32
  %i.gp = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.go, i32 %i.gm)
  %i.gq = call noundef i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gn)
  %i.gr = trunc i32 %i.gq to i16
  store i16 %i.gr, ptr %i.b, align 4, !tbaa !47
  %i.gs = load ptr, ptr @img, align 8, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !129
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !4
  %i.gy = add nsw i32 %i.gx, %.pre547
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = sub nsw i32 %i.ha, %.pre547
  %i.hc = sext i16 %i.gk to i32
  %i.hd = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hc, i32 %i.gy)
  %i.he = call noundef i32 @llvm.smin.i32(i32 %i.hd, i32 %i.hb)
  %i.hf = trunc i32 %i.he to i16
  store i16 %i.hf, ptr %i.fy, align 2, !tbaa !47
  %i.hg = load i16, ptr %i.as, align 2, !tbaa !47
  %i.hh = load i16, ptr %i.fv, align 2, !tbaa !47
  %i.hi = load i32, ptr %6, align 4, !tbaa !4
  %i.hj = call i32 @UMHEXIntegerPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.hg, i16 noundef signext %i.hh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fy, i32 noundef %.pre547, i32 noundef 2147483647, i32 noundef %i.hi) #9
  br label %.loopexit

bb.t:                                             ; preds = %bb.p
  %i.hk = load i16, ptr %i.as, align 2, !tbaa !47
  %i.hl = sdiv i16 %i.hk, 4                       ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !47
  %i.ho = sdiv i16 %i.hn, 4                       ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !128
  %.not441 = icmp eq i32 %i.hr, 0
  %.pre546 = load i32, ptr %i.a, align 4, !tbaa !4 ; 8 uses
  br i1 %.not441, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hs = sub nsw i32 0, %.pre546                 ; 2 uses
  %i.ht = sext i16 %i.hl to i32
  %i.hu = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ht, i32 %i.hs)
  %i.hv = call noundef i32 @llvm.smin.i32(i32 %i.hu, i32 %.pre546)
  %i.hw = trunc i32 %i.hv to i16
  %i.hx = sext i16 %i.ho to i32
  %i.hy = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hx, i32 %i.hs)
  %i.hz = call noundef i32 @llvm.smin.i32(i32 %i.hy, i32 %.pre546)
  %i.ia = trunc i32 %i.hz to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ib = phi i16 [ %i.ia, %bb.u ], [ %i.ho, %bb.t ]
  %i.ic = phi i16 [ %i.hw, %bb.u ], [ %i.hl, %bb.t ]
  %i.id = add nsw i32 %.pre546, -2047
  %i.ie = sub nsw i32 2047, %.pre546
  %i.if = sext i16 %i.ic to i32
  %i.ig = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.if, i32 %i.id)
  %i.ih = call noundef i32 @llvm.smin.i32(i32 %i.ig, i32 %i.ie)
  %i.ii = trunc i32 %i.ih to i16
  store i16 %i.ii, ptr %i.b, align 4, !tbaa !47
  %i.ij = load ptr, ptr @img, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !129
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !4
  %i.ip = add nsw i32 %i.io, %.pre546
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = sub nsw i32 %i.ir, %.pre546
  %i.it = sext i16 %i.ib to i32
  %i.iu = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.it, i32 %i.ip)
  %i.iv = call noundef i32 @llvm.smin.i32(i32 %i.iu, i32 %i.is)
  %i.iw = trunc i32 %i.iv to i16
  store i16 %i.iw, ptr %i.hp, align 2, !tbaa !47
  %i.ix = load i16, ptr %i.as, align 2, !tbaa !47
  %i.iy = load i16, ptr %i.hm, align 2, !tbaa !47
  %i.iz = load i32, ptr %6, align 4, !tbaa !4
  %i.ja = call i32 @smpUMHEXIntegerPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.ix, i16 noundef signext %i.iy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hp, i32 noundef %.pre546, i32 noundef 2147483647, i32 noundef %i.iz) #9 ; 10 uses
  %i.jb = ashr i32 %i.l, 2                        ; 3 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.preheader474.lr.ph, label %.loopexit

.preheader474.lr.ph:                              ; preds = %bb.v
  %i.jd = ashr i32 %i.n, 2                        ; 7 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.preheader474.lr.ph.split, label %.loopexit

.preheader474.lr.ph.split:                        ; preds = %.preheader474.lr.ph
  %i.jf = icmp eq i32 %1, 0
  br i1 %i.jf, label %.preheader474.us.preheader, label %.preheader474.preheader

.preheader474.preheader:                          ; preds = %.preheader474.lr.ph.split
  %i.jg = icmp eq i32 %i.jd, 1
  %unroll_iter594 = and i32 %i.jd, 2147483646
  %i.jh = and i32 %i.n, 4
  %lcmp.mod592.not = icmp eq i32 %i.jh, 0
  %lcmp.mod593 = trunc i32 %i.jd to i1
  br label %.preheader474

.preheader474.us.preheader:                       ; preds = %.preheader474.lr.ph.split
  %i.ji = icmp eq i32 %i.jd, 1
  %unroll_iter601 = and i32 %i.jd, 2147483646
  %i.jj = and i32 %i.n, 4
  %lcmp.mod599.not = icmp eq i32 %i.jj, 0
  %lcmp.mod600 = trunc i32 %i.jd to i1
  br label %.preheader474.us

.preheader474.us:                                 ; preds = %.preheader474.us.preheader, %._crit_edge489.split.us.us
  %.0413490.us = phi i32 [ %i.ld, %._crit_edge489.split.us.us ], [ 0, %.preheader474.us.preheader ] ; 2 uses
  %i.jk = load ptr, ptr @smpUMHEX_l0_cost, align 8
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.j
  %i.jm = load ptr, ptr @img, align 8             ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 180 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 176 ; 3 uses
  %i.jp = add nsw i32 %.0413490.us, %i.f          ; 3 uses
  %i.jq = load ptr, ptr %i.jl, align 8, !tbaa !113 ; 3 uses
  br i1 %i.ji, label %.epil.preheader596, label %.preheader474.us.new

.preheader474.us.new:                             ; preds = %.preheader474.us, %.preheader474.us.new
  %.3411487.us.us = phi i32 [ %i.kq, %.preheader474.us.new ], [ 0, %.preheader474.us ] ; 3 uses
  %niter602 = phi i32 [ %niter602.next.1, %.preheader474.us.new ], [ 0, %.preheader474.us ]
  %i.jr = load i32, ptr %i.jn, align 4, !tbaa !130
  %i.js = ashr i32 %i.jr, 2
  %i.jt = add nsw i32 %.3411487.us.us, %i.g
  %i.ju = add nsw i32 %i.jt, %i.js
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !53
  %i.jy = load i32, ptr %i.jo, align 8, !tbaa !131
  %i.jz = ashr i32 %i.jy, 2
  %i.ka = add nsw i32 %i.jp, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.kb
  store i32 %i.ja, ptr %i.kc, align 4, !tbaa !4
  %i.kd = or disjoint i32 %.3411487.us.us, 1
  %i.ke = load i32, ptr %i.jn, align 4, !tbaa !130
  %i.kf = ashr i32 %i.ke, 2
  %i.kg = add nsw i32 %i.kd, %i.g
  %i.kh = add nsw i32 %i.kg, %i.kf
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !53
  %i.kl = load i32, ptr %i.jo, align 8, !tbaa !131
  %i.km = ashr i32 %i.kl, 2
  %i.kn = add nsw i32 %i.jp, %i.km
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.ko
  store i32 %i.ja, ptr %i.kp, align 4, !tbaa !4
  %i.kq = add nuw nsw i32 %.3411487.us.us, 2      ; 2 uses
  %niter602.next.1 = add nuw nsw i32 %niter602, 2 ; 2 uses
  %niter602.ncmp.1 = icmp eq i32 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge489.split.us.us.unr-lcssa, label %.preheader474.us.new, !llvm.loop !132

._crit_edge489.split.us.us.unr-lcssa:             ; preds = %.preheader474.us.new
  br i1 %lcmp.mod599.not, label %._crit_edge489.split.us.us, label %.epil.preheader596

.epil.preheader596:                               ; preds = %._crit_edge489.split.us.us.unr-lcssa, %.preheader474.us
  %.3411487.us.us.epil.init = phi i32 [ 0, %.preheader474.us ], [ %i.kq, %._crit_edge489.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod600)
  %i.kr = load i32, ptr %i.jn, align 4, !tbaa !130
  %i.ks = ashr i32 %i.kr, 2
  %i.kt = add nsw i32 %.3411487.us.us.epil.init, %i.g
  %i.ku = add nsw i32 %i.kt, %i.ks
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.kv
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !53
  %i.ky = load i32, ptr %i.jo, align 8, !tbaa !131
  %i.kz = ashr i32 %i.ky, 2
  %i.la = add nsw i32 %i.jp, %i.kz
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.lb
  store i32 %i.ja, ptr %i.lc, align 4, !tbaa !4
  br label %._crit_edge489.split.us.us

._crit_edge489.split.us.us:                       ; preds = %._crit_edge489.split.us.us.unr-lcssa, %.epil.preheader596
  %i.ld = add nuw nsw i32 %.0413490.us, 1         ; 2 uses
  %exitcond530.not = icmp eq i32 %i.ld, %i.jb
  br i1 %exitcond530.not, label %.loopexit, label %.preheader474.us, !llvm.loop !133

.preheader474:                                    ; preds = %.preheader474.preheader, %._crit_edge489.split
  %.0413490 = phi i32 [ %i.mx, %._crit_edge489.split ], [ 0, %.preheader474.preheader ] ; 2 uses
  %i.le = load ptr, ptr @smpUMHEX_l1_cost, align 8
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.j
  %i.lg = load ptr, ptr @img, align 8             ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 180 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 176 ; 3 uses
  %i.lj = add nsw i32 %.0413490, %i.f             ; 3 uses
  %i.lk = load ptr, ptr %i.lf, align 8, !tbaa !113 ; 3 uses
  br i1 %i.jg, label %.epil.preheader589, label %.preheader474.new

.preheader474.new:                                ; preds = %.preheader474, %.preheader474.new
  %.3411487 = phi i32 [ %i.mk, %.preheader474.new ], [ 0, %.preheader474 ] ; 3 uses
  %niter595 = phi i32 [ %niter595.next.1, %.preheader474.new ], [ 0, %.preheader474 ]
  %i.ll = load i32, ptr %i.lh, align 4, !tbaa !130
  %i.lm = ashr i32 %i.ll, 2
  %i.ln = add nsw i32 %.3411487, %i.g
  %i.lo = add nsw i32 %i.ln, %i.lm
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !53
  %i.ls = load i32, ptr %i.li, align 8, !tbaa !131
  %i.lt = ashr i32 %i.ls, 2
  %i.lu = add nsw i32 %i.lj, %i.lt
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.lv
  store i32 %i.ja, ptr %i.lw, align 4, !tbaa !4
  %i.lx = or disjoint i32 %.3411487, 1
  %i.ly = load i32, ptr %i.lh, align 4, !tbaa !130
  %i.lz = ashr i32 %i.ly, 2
  %i.ma = add nsw i32 %i.lx, %i.g
  %i.mb = add nsw i32 %i.ma, %i.lz
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.mc
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !53
  %i.mf = load i32, ptr %i.li, align 8, !tbaa !131
  %i.mg = ashr i32 %i.mf, 2
  %i.mh = add nsw i32 %i.lj, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.mi
  store i32 %i.ja, ptr %i.mj, align 4, !tbaa !4
  %i.mk = add nuw nsw i32 %.3411487, 2            ; 2 uses
  %niter595.next.1 = add nuw nsw i32 %niter595, 2 ; 2 uses
  %niter595.ncmp.1 = icmp eq i32 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge489.split.unr-lcssa, label %.preheader474.new, !llvm.loop !132

._crit_edge489.split.unr-lcssa:                   ; preds = %.preheader474.new
  br i1 %lcmp.mod592.not, label %._crit_edge489.split, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge489.split.unr-lcssa, %.preheader474
  %.3411487.epil.init = phi i32 [ 0, %.preheader474 ], [ %i.mk, %._crit_edge489.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod593)
  %i.ml = load i32, ptr %i.lh, align 4, !tbaa !130
  %i.mm = ashr i32 %i.ml, 2
  %i.mn = add nsw i32 %.3411487.epil.init, %i.g
  %i.mo = add nsw i32 %i.mn, %i.mm
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.mp
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !53
  %i.ms = load i32, ptr %i.li, align 8, !tbaa !131
  %i.mt = ashr i32 %i.ms, 2
  %i.mu = add nsw i32 %i.lj, %i.mt
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %i.mv
  store i32 %i.ja, ptr %i.mw, align 4, !tbaa !4
  br label %._crit_edge489.split

._crit_edge489.split:                             ; preds = %._crit_edge489.split.unr-lcssa, %.epil.preheader589
  %i.mx = add nuw nsw i32 %.0413490, 1            ; 2 uses
  %exitcond528.not = icmp eq i32 %i.mx, %i.jb
  br i1 %exitcond528.not, label %.loopexit, label %.preheader474, !llvm.loop !133

bb.w:                                             ; preds = %bb.p
  %i.my = getelementptr inbounds nuw i8, ptr %i.fq, i64 4120
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !134 ; 3 uses
  %.not439 = icmp eq i32 %i.mz, 0
  %i.na = load i16, ptr %i.as, align 2, !tbaa !47 ; 2 uses
  br i1 %.not439, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nb = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !47
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.nd = sext i16 %i.na to i32
  %i.ne = add nsw i32 %i.nd, 2
  %i.nf = lshr i32 %i.ne, 2
  %i.ng = trunc i32 %i.nf to i16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !47
  %i.nj = sext i16 %i.ni to i32
  %i.nk = add nsw i32 %i.nj, 2
  %i.nl = lshr i32 %i.nk, 2
  %i.nm = trunc i32 %i.nl to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nn = phi i16 [ %i.ng, %bb.y ], [ %i.na, %bb.x ] ; 2 uses
  %i.no = phi i16 [ %i.nm, %bb.y ], [ %i.nc, %bb.x ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.nq = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !128
  %.not440 = icmp eq i32 %i.nr, 0
  %.pre545 = load i32, ptr %i.a, align 4, !tbaa !4 ; 7 uses
  br i1 %.not440, label %bb.aa, label %._crit_edge552

._crit_edge552:                                   ; preds = %bb.z
  %.pre553 = shl nsw i32 %i.mz, 1                 ; 2 uses
  %.pre554 = shl i32 %.pre545, %.pre553
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ns = sub nsw i32 0, %.pre545
  %i.nt = shl nsw i32 %i.mz, 1                    ; 3 uses
  %i.nu = shl i32 %i.ns, %i.nt                    ; 2 uses
  %i.nv = shl i32 %.pre545, %i.nt                 ; 3 uses
  %i.nw = sext i16 %i.nn to i32
  %i.nx = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.nw, i32 %i.nu)
  %i.ny = call noundef i32 @llvm.smin.i32(i32 %i.nx, i32 %i.nv)
  %i.nz = trunc i32 %i.ny to i16
  %i.oa = sext i16 %i.no to i32
  %i.ob = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.oa, i32 %i.nu)
  %i.oc = call noundef i32 @llvm.smin.i32(i32 %i.ob, i32 %i.nv)
  %i.od = trunc i32 %i.oc to i16
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge552, %bb.aa
  %.pre-phi555 = phi i32 [ %.pre554, %._crit_edge552 ], [ %i.nv, %bb.aa ]
  %.pre-phi = phi i32 [ %.pre553, %._crit_edge552 ], [ %i.nt, %bb.aa ] ; 4 uses
  %i.oe = phi i16 [ %i.no, %._crit_edge552 ], [ %i.od, %bb.aa ]
  %i.of = phi i16 [ %i.nn, %._crit_edge552 ], [ %i.nz, %bb.aa ]
  %i.og = add nsw i32 %.pre545, -2047
  %i.oh = shl i32 %i.og, %.pre-phi
  %i.oi = sub nsw i32 2047, %.pre545
  %i.oj = shl i32 %i.oi, %.pre-phi
  %i.ok = sext i16 %i.of to i32
  %i.ol = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ok, i32 %i.oh)
  %i.om = call noundef i32 @llvm.smin.i32(i32 %i.ol, i32 %i.oj)
  %i.on = trunc i32 %i.om to i16
  store i16 %i.on, ptr %i.b, align 4, !tbaa !47
  %i.oo = load ptr, ptr @img, align 8, !tbaa !8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !129
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.or ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !4
  %i.ou = add nsw i32 %i.ot, %.pre545
  %i.ov = shl i32 %i.ou, %.pre-phi
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4
  %i.oy = sub nsw i32 %i.ox, %.pre545
  %i.oz = shl i32 %i.oy, %.pre-phi
  %i.pa = sext i16 %i.oe to i32
  %i.pb = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.pa, i32 %i.ov)
  %i.pc = call noundef i32 @llvm.smin.i32(i32 %i.pb, i32 %i.oz)
  %i.pd = trunc i32 %i.pc to i16
  store i16 %i.pd, ptr %i.np, align 2, !tbaa !47
  %i.pe = load ptr, ptr @enc_picture, align 8, !tbaa !120 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 6488
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !122
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 6512
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !127
  %i.pj = load i32, ptr %6, align 4, !tbaa !4
  %i.pk = call i32 @EPZSPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.bh, ptr noundef %i.pg, ptr noundef %i.pi, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef nonnull %i.as, ptr noundef nonnull %i.b, i32 noundef %.pre-phi555, i32 noundef 2147483647, i32 noundef %i.pj) #9
  br label %.loopexit

bb.ac:                                            ; preds = %bb.p
  %i.pl = load i16, ptr %i.as, align 2, !tbaa !47
  %i.pm = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !47
  %i.po = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.pp = load i32, ptr %i.a, align 4, !tbaa !4
  %i.pq = load i32, ptr %6, align 4, !tbaa !4
  %i.pr = call i32 @FastFullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.pl, i16 noundef signext %i.pn, ptr noundef nonnull %i.b, ptr noundef nonnull %i.po, i32 noundef %i.pp, i32 noundef 2147483647, i32 noundef %i.pq) #9
  br label %.loopexit

bb.ad:                                            ; preds = %bb.p
  %i.ps = load i16, ptr %i.as, align 2, !tbaa !47
  %i.pt = sdiv i16 %i.ps, 4                       ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !47
  %i.pw = sdiv i16 %i.pv, 4                       ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !128
  %.not438 = icmp eq i32 %i.pz, 0
  %.pre548 = load i32, ptr %i.a, align 4, !tbaa !4 ; 8 uses
  br i1 %.not438, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.qa = sub nsw i32 0, %.pre548                 ; 2 uses
  %i.qb = sext i16 %i.pt to i32
  %i.qc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qb, i32 %i.qa)
  %i.qd = call noundef i32 @llvm.smin.i32(i32 %i.qc, i32 %.pre548)
  %i.qe = trunc i32 %i.qd to i16
  %i.qf = sext i16 %i.pw to i32
  %i.qg = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qf, i32 %i.qa)
  %i.qh = call noundef i32 @llvm.smin.i32(i32 %i.qg, i32 %.pre548)
  %i.qi = trunc i32 %i.qh to i16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.qj = phi i16 [ %i.qi, %bb.ae ], [ %i.pw, %bb.ad ]
  %i.qk = phi i16 [ %i.qe, %bb.ae ], [ %i.pt, %bb.ad ]
  %i.ql = add nsw i32 %.pre548, -2047
  %i.qm = sub nsw i32 2047, %.pre548
  %i.qn = sext i16 %i.qk to i32
  %i.qo = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qn, i32 %i.ql)
  %i.qp = call noundef i32 @llvm.smin.i32(i32 %i.qo, i32 %i.qm)
  %i.qq = trunc i32 %i.qp to i16
  store i16 %i.qq, ptr %i.b, align 4, !tbaa !47
  %i.qr = load ptr, ptr @img, align 8, !tbaa !8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !129
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.qu ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !4
  %i.qx = add nsw i32 %i.qw, %.pre548
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !4
  %i.ra = sub nsw i32 %i.qz, %.pre548
  %i.rb = sext i16 %i.qj to i32
  %i.rc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.rb, i32 %i.qx)
  %i.rd = call noundef i32 @llvm.smin.i32(i32 %i.rc, i32 %i.ra)
  %i.re = trunc i32 %i.rd to i16
  store i16 %i.re, ptr %i.px, align 2, !tbaa !47
  %i.rf = load i16, ptr %i.as, align 2, !tbaa !47
  %i.rg = load i16, ptr %i.pu, align 2, !tbaa !47
  %i.rh = load i32, ptr %6, align 4, !tbaa !4
  %i.ri = call i32 @FullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.rf, i16 noundef signext %i.rg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.px, i32 noundef %.pre548, i32 noundef 2147483647, i32 noundef %i.rh) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge489.split, %._crit_edge489.split.us.us, %bb.v, %.preheader474.lr.ph, %bb.ac, %bb.af, %bb.ab, %bb.s
  %.0403 = phi i32 [ %i.hj, %bb.s ], [ %i.ri, %bb.af ], [ %i.pk, %bb.ab ], [ %i.pr, %bb.ac ], [ %i.ja, %.preheader474.lr.ph ], [ %i.ja, %._crit_edge489.split.us.us ], [ %i.ja, %bb.v ], [ %i.ja, %._crit_edge489.split ] ; 6 uses
  %i.rj = load ptr, ptr @input, align 8, !tbaa !8 ; 6 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4120
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !134
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 5244
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !91
  %.not443 = icmp eq i32 %i.ro, 3
  br i1 %.not443, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.rp = load <2 x i16>, ptr %i.b, align 4, !tbaa !47
  %i.rq = shl <2 x i16> %i.rp, splat (i16 2)
  store <2 x i16> %i.rq, ptr %i.b, align 4, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rj, i64 5776
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !90
  %i.rt = icmp eq i32 %i.rs, 2
  %i.ru = zext i1 %i.rt to i32
  store i32 %i.ru, ptr @ChromaMEEnable, align 4, !tbaa !4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !135
  %.not444 = icmp eq i32 %i.rw, 0
end_hunk_0
