Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcmaster?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jinit_c_master_control:bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.080 = phi ptr [ %i.hi, %.lr.ph.preheader.new ], [ %i.ia, %.lr.ph ] ; 17 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.080, i64 12
  store i32 1, ptr %i.hk, align 4, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %.080, i64 8
  store i32 1, ptr %i.hl, align 8, !tbaa !51
  %i.hm = getelementptr inbounds nuw i8, ptr %.080, i64 108
  store i32 1, ptr %i.hm, align 4, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %.080, i64 104
  store i32 1, ptr %i.hn, align 8, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.080, i64 204
  store i32 1, ptr %i.ho, align 4, !tbaa !50
  %i.hp = getelementptr inbounds nuw i8, ptr %.080, i64 200
  store i32 1, ptr %i.hp, align 8, !tbaa !51
  %i.hq = getelementptr inbounds nuw i8, ptr %.080, i64 300
  store i32 1, ptr %i.hq, align 4, !tbaa !50
  %i.hr = getelementptr inbounds nuw i8, ptr %.080, i64 296
  store i32 1, ptr %i.hr, align 8, !tbaa !51
  %i.hs = getelementptr inbounds nuw i8, ptr %.080, i64 396
  store i32 1, ptr %i.hs, align 4, !tbaa !50
  %i.ht = getelementptr inbounds nuw i8, ptr %.080, i64 392
  store i32 1, ptr %i.ht, align 8, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.080, i64 492
  store i32 1, ptr %i.hu, align 4, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %.080, i64 488
  store i32 1, ptr %i.hv, align 8, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %.080, i64 588
  store i32 1, ptr %i.hw, align 4, !tbaa !50
  %i.hx = getelementptr inbounds nuw i8, ptr %.080, i64 584
  store i32 1, ptr %i.hx, align 8, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.080, i64 684
  store i32 1, ptr %i.hy, align 4, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %.080, i64 680
  store i32 1, ptr %i.hz, align 8, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.080, i64 768 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.080.epil.init = phi ptr [ %i.hi, %.lr.ph.preheader ], [ %i.ia, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod142 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.080.epil = phi ptr [ %i.id, %.lr.ph.epil ], [ %.080.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.080.epil, i64 12
  store i32 1, ptr %i.ib, align 4, !tbaa !50
  %i.ic = getelementptr inbounds nuw i8, ptr %.080.epil, i64 8
  store i32 1, ptr %i.ic, align 8, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %.080.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !82

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.ay, %bb.ax
  %i.ie = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !40
  %.not.i65 = icmp eq i32 %i.ig, 0                ; 3 uses
  %i.ih = select i1 %.not.i65, i32 8, i32 1
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !53 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = load i32, ptr %i.il, align 8, !tbaa !54
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !41
  %i.iq = icmp slt i32 %i.ip, 1
  br i1 %i.iq, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !96
  %i.it = icmp slt i32 %i.is, 1
  br i1 %i.it, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %.loopexit
  %i.iu = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  store i32 32, ptr %i.iv, align 8, !tbaa !36
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !38
  tail call void %i.iw(ptr noundef nonnull %0) #7, !inline_history !83
  %.pre.i69 = load i32, ptr %i.ii, align 4, !tbaa !53
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ix = phi i32 [ %.pre.i69, %bb.bc ], [ %i.ij, %bb.bb ]
  %i.iy = icmp ugt i32 %i.ix, 65500
  br i1 %i.iy, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !54 ; 2 uses
  %i.jb = icmp ugt i32 %i.ja, 65500
  br i1 %i.jb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jc = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  store i32 41, ptr %i.jd, align 8, !tbaa !36
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  store i32 65500, ptr %i.je, align 4, !tbaa !37
  %i.jf = load ptr, ptr %0, align 8, !tbaa !31
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !38
  tail call void %i.jg(ptr noundef nonnull %0) #7, !inline_history !83
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre122.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !54
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jh = phi i32 [ %.pre122.i, %bb.bf ], [ %i.ja, %bb.be ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jj = zext i32 %i.jh to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !96
  %i.jm = sext i32 %i.jl to i64
  %i.jn = mul nsw i64 %i.jm, %i.jj
  %.not109.i = icmp ult i64 %i.jn, 4294967296
  br i1 %.not109.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jo = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  store i32 70, ptr %i.jp, align 8, !tbaa !36
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !38
  tail call void %i.jq(ptr noundef nonnull %0) #7, !inline_history !83
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.jr = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !40
  %.not110.i = icmp eq i32 %i.jt, 0
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !94 ; 3 uses
  br i1 %.not110.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jw = add i32 %i.jv, -17
  %or.cond.i66 = icmp ult i32 %i.jw, -15
  br i1 %or.cond.i66, label %.sink.split.i68, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  switch i32 %i.jv, label %.sink.split.i68 [
    i32 8, label %bb.bl
    i32 12, label %bb.bl
  ]

.sink.split.i68:                                  ; preds = %bb.bk, %bb.bj
  %i.jx = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  store i32 15, ptr %i.jy, align 8, !tbaa !36
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 44
  store i32 %i.jv, ptr %i.jz, align 4, !tbaa !37
  %i.ka = load ptr, ptr %0, align 8, !tbaa !31
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !38
  tail call void %i.kb(ptr noundef nonnull %0) #7, !inline_history !83
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i68, %bb.bk, %bb.bk, %bb.bj
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !41 ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, 10
  br i1 %i.ke, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kf = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  store i32 26, ptr %i.kg, align 8, !tbaa !36
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 44
  store i32 %i.kd, ptr %i.kh, align 4, !tbaa !37
  %i.ki = load ptr, ptr %0, align 8, !tbaa !31
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  store i32 10, ptr %i.kj, align 4, !tbaa !37
  %i.kk = load ptr, ptr %0, align 8, !tbaa !31
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !38
  tail call void %i.kl(ptr noundef nonnull %0) #7, !inline_history !83
  %.pre123.i = load i32, ptr %i.kc, align 4, !tbaa !41
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.km = phi i32 [ %.pre123.i, %bb.bm ], [ %i.kd, %bb.bl ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  store i32 1, ptr %i.kn, align 8, !tbaa !55
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 6 uses
  store i32 1, ptr %i.ko, align 4, !tbaa !56
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.kq = icmp sgt i32 %i.km, 0
  br i1 %i.kq, label %.lr.ph.preheader.i, label %._crit_edge.._crit_edge121_crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bn
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !48
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bq, %.lr.ph.preheader.i
  %i.ks = phi i32 [ %i.ld, %bb.bq ], [ %i.km, %.lr.ph.preheader.i ]
  %2 = phi i32 [ %7, %bb.bq ], [ 1, %.lr.ph.preheader.i ]
  %i.kt = phi i32 [ %..i, %bb.bq ], [ 1, %.lr.ph.preheader.i ]
  %.0116.i = phi ptr [ %i.lf, %bb.bq ], [ %i.kr, %.lr.ph.preheader.i ] ; 4 uses
  %.099115.i = phi i32 [ %i.le, %bb.bq ], [ 0, %.lr.ph.preheader.i ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.0116.i, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !51 ; 2 uses
  %i.kw = add i32 %i.kv, -5
  %or.cond113.i = icmp ult i32 %i.kw, -4
  br i1 %or.cond113.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.0116.i, i64 12
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !50 ; 2 uses
  %i.kz = add i32 %i.ky, -5
  %or.cond114.i = icmp ult i32 %i.kz, -4
  br i1 %or.cond114.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i
  %i.la = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  store i32 18, ptr %i.lb, align 8, !tbaa !36
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !38
  tail call void %i.lc(ptr noundef nonnull %0) #7, !inline_history !83
  %.pre124.i = load i32, ptr %i.kn, align 8, !tbaa !55
  %.pre125.i = load i32, ptr %i.ku, align 8, !tbaa !51
  %.pre126.i = load i32, ptr %i.ko, align 4, !tbaa !56
  %.phi.trans.insert127.i = getelementptr inbounds nuw i8, ptr %.0116.i, i64 12
  %.pre128.i = load i32, ptr %.phi.trans.insert127.i, align 4, !tbaa !50
  %.pre129.i = load i32, ptr %i.kc, align 4, !tbaa !41
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ld = phi i32 [ %i.ks, %bb.bo ], [ %.pre129.i, %bb.bp ] ; 3 uses
  %3 = phi i32 [ %i.ky, %bb.bo ], [ %.pre128.i, %bb.bp ]
  %4 = phi i32 [ %2, %bb.bo ], [ %.pre126.i, %bb.bp ]
  %5 = phi i32 [ %i.kv, %bb.bo ], [ %.pre125.i, %bb.bp ]
  %6 = phi i32 [ %i.kt, %bb.bo ], [ %.pre124.i, %bb.bp ]
  %..i = tail call i32 @llvm.smax.i32(i32 %6, i32 %5) ; 2 uses
  store i32 %..i, ptr %i.kn, align 8, !tbaa !55
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 %3) ; 3 uses
  store i32 %7, ptr %i.ko, align 4, !tbaa !56
  %i.le = add nuw nsw i32 %.099115.i, 1           ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0116.i, i64 96
  %i.lg = icmp slt i32 %i.le, %i.ld
  br i1 %i.lg, label %.lr.ph.i, label %._crit_edge.i67, !llvm.loop !84

._crit_edge.i67:                                  ; preds = %bb.bq
  %i.lh = icmp sgt i32 %i.ld, 0
  br i1 %i.lh, label %.lr.ph120.i, label %._crit_edge.._crit_edge121_crit_edge.i

._crit_edge.._crit_edge121_crit_edge.i:           ; preds = %._crit_edge.i67, %bb.bn
  %i.li = phi i32 [ %7, %._crit_edge.i67 ], [ 1, %bb.bn ]
  %.pre131.i = select i1 %.not.i65, i32 3, i32 0
  br label %initial_setup.exit

.lr.ph120.i:                                      ; preds = %._crit_edge.i67
  %i.lj = load ptr, ptr %i.kp, align 8, !tbaa !48
  %i.lk = select i1 %.not.i65, i32 3, i32 0       ; 3 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph120.i
  %.1118.i = phi ptr [ %i.lj, %.lr.ph120.i ], [ %i.nh, %bb.br ] ; 10 uses
  %.1100117.i = phi i32 [ 0, %.lr.ph120.i ], [ %i.ng, %bb.br ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.1118.i, i64 4
  store i32 %.1100117.i, ptr %i.ll, align 4, !tbaa !97
  %i.lm = getelementptr inbounds nuw i8, ptr %.1118.i, i64 36
  store i32 %i.ih, ptr %i.lm, align 4, !tbaa !98
  %i.ln = load i32, ptr %i.ji, align 8, !tbaa !54
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %.1118.i, i64 8 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !51
  %i.lr = sext i32 %i.lq to i64
  %i.ls = mul nsw i64 %i.lr, %i.lo
  %i.lt = load i32, ptr %i.kn, align 8, !tbaa !55
  %i.lu = shl i32 %i.lt, %i.lk
  %i.lv = sext i32 %i.lu to i64
  %i.lw = tail call i64 @jdiv_round_up(i64 noundef %i.ls, i64 noundef %i.lv) #7
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr inbounds nuw i8, ptr %.1118.i, i64 28
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !57
  %i.lz = load i32, ptr %i.ii, align 4, !tbaa !53
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %.1118.i, i64 12 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !50
  %i.md = sext i32 %i.mc to i64
  %i.me = mul nsw i64 %i.md, %i.ma
  %i.mf = load i32, ptr %i.ko, align 4, !tbaa !56
  %i.mg = shl i32 %i.mf, %i.lk
  %i.mh = sext i32 %i.mg to i64
  %i.mi = tail call i64 @jdiv_round_up(i64 noundef %i.me, i64 noundef %i.mh) #7
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = getelementptr inbounds nuw i8, ptr %.1118.i, i64 32
  store i32 %i.mj, ptr %i.mk, align 8, !tbaa !58
  %i.ml = load i32, ptr %i.ji, align 8, !tbaa !54
  %i.mm = zext i32 %i.ml to i64
  %i.mn = load i32, ptr %i.lp, align 8, !tbaa !51
  %i.mo = sext i32 %i.mn to i64
  %i.mp = mul nsw i64 %i.mo, %i.mm
  %i.mq = load i32, ptr %i.kn, align 8, !tbaa !55
  %i.mr = sext i32 %i.mq to i64
  %i.ms = tail call i64 @jdiv_round_up(i64 noundef %i.mp, i64 noundef %i.mr) #7
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = getelementptr inbounds nuw i8, ptr %.1118.i, i64 40
  store i32 %i.mt, ptr %i.mu, align 8, !tbaa !99
  %i.mv = load i32, ptr %i.ii, align 4, !tbaa !53
  %i.mw = zext i32 %i.mv to i64
  %i.mx = load i32, ptr %i.mb, align 4, !tbaa !50
  %i.my = sext i32 %i.mx to i64
  %i.mz = mul nsw i64 %i.my, %i.mw
  %i.na = load i32, ptr %i.ko, align 4, !tbaa !56
  %i.nb = sext i32 %i.na to i64
  %i.nc = tail call i64 @jdiv_round_up(i64 noundef %i.mz, i64 noundef %i.nb) #7
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = getelementptr inbounds nuw i8, ptr %.1118.i, i64 44
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !100
  %i.nf = getelementptr inbounds nuw i8, ptr %.1118.i, i64 48
  store i32 1, ptr %i.nf, align 8, !tbaa !101
  %i.ng = add nuw nsw i32 %.1100117.i, 1          ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1118.i, i64 96
  %i.ni = load i32, ptr %i.kc, align 4, !tbaa !41
  %i.nj = icmp slt i32 %i.ng, %i.ni
  br i1 %i.nj, label %bb.br, label %._crit_edge121.loopexit.i, !llvm.loop !85

._crit_edge121.loopexit.i:                        ; preds = %bb.br
  %.pre130.i = load i32, ptr %i.ko, align 4, !tbaa !56
  br label %initial_setup.exit

initial_setup.exit:                               ; preds = %._crit_edge.._crit_edge121_crit_edge.i, %._crit_edge121.loopexit.i
  %.pre-phi.i = phi i32 [ %.pre131.i, %._crit_edge.._crit_edge121_crit_edge.i ], [ %i.lk, %._crit_edge121.loopexit.i ]
  %i.nk = phi i32 [ %i.li, %._crit_edge.._crit_edge121_crit_edge.i ], [ %.pre130.i, %._crit_edge121.loopexit.i ]
  %i.nl = load i32, ptr %i.ii, align 4, !tbaa !53
  %i.nm = zext i32 %i.nl to i64
  %i.nn = shl i32 %i.nk, %.pre-phi.i
  %i.no = sext i32 %i.nn to i64
  %i.np = tail call i64 @jdiv_round_up(i64 noundef %i.nm, i64 noundef %i.no) #7
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.nq, ptr %i.nr, align 8, !tbaa !102
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !59
  %.not54 = icmp eq i32 %i.nt, 0
  br i1 %.not54, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %initial_setup.exit
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.nu, align 8, !tbaa !60
  br label %using_std_huff_tables.exit.thread

bb.bt:                                            ; preds = %initial_setup.exit
  %i.nv = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !40
  %.not55 = icmp eq i32 %i.nx, 0
  br i1 %.not55, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !92
  %.not56 = icmp eq i32 %i.nz, 0
  br i1 %.not56, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 1, ptr %i.oa, align 8, !tbaa !60
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.od = load ptr, ptr %i.ob, align 8, !tbaa !61 ; 4 uses
  %.not57 = icmp eq ptr %i.od, null               ; 2 uses
  br i1 %.not57, label %bb.cd, label %bb.ce

bb.bx:                                            ; preds = %bb.cd
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !61
  %.not57.1 = icmp eq ptr %i.of, null
  br i1 %.not57.1, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !61
  %.not58.1 = icmp eq ptr %i.oh, null
  br i1 %.not58.1, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %bb.by
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !61
  %.not57.2 = icmp eq ptr %i.oj, null
  br i1 %.not57.2, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !61
  %.not58.2 = icmp eq ptr %i.ol, null
  br i1 %.not58.2, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !61
  %.not57.3 = icmp eq ptr %i.on, null
  br i1 %.not57.3, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !61
  %.not58.3 = icmp ne ptr %i.op, null
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bw
  %i.oq = load ptr, ptr %i.oc, align 8, !tbaa !61
  %.not58 = icmp eq ptr %i.oq, null
  br i1 %.not58, label %bb.bx, label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.cd
  %.lcssa = phi i1 [ true, %bb.bw ], [ true, %bb.cd ], [ true, %bb.cb ], [ true, %bb.bx ], [ true, %bb.by ], [ %.not58.3, %bb.cc ], [ true, %bb.bz ], [ true, %bb.ca ]
  %i.or = load i32, ptr %i.ju, align 8, !tbaa !94
  %i.os = icmp eq i32 %i.or, 12
  br i1 %i.os, label %bb.cf, label %using_std_huff_tables.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !60
  %.not59 = icmp eq i32 %i.ou, 0
  br i1 %.not59, label %bb.cg, label %using_std_huff_tables.exit.thread

bb.cg:                                            ; preds = %bb.cf
  br i1 %.lcssa, label %bb.ch, label %bb.cu

bb.ch:                                            ; preds = %bb.cg
  br i1 %.not57, label %using_std_huff_tables.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ov = load ptr, ptr %i.oc, align 8, !tbaa !61 ; 4 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %using_std_huff_tables.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !61 ; 4 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %using_std_huff_tables.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !61 ; 4 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %using_std_huff_tables.exit.thread, label %.preheader.preheader.i
end_hunk_0
begin_hunk_1_@per_scan_setup:bb.a

bb.c:                                             ; preds = %bb.a
  %i.ab = add i32 %i.f, -5
  %or.cond = icmp ult i32 %i.ab, -4
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 26, ptr %i.ad, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  store i32 %i.f, ptr %i.ae, align 4, !tbaa !37
  %i.af = load ptr, ptr %0, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 4, ptr %i.ag, align 4, !tbaa !37
  %i.ah = load ptr, ptr %0, align 8, !tbaa !31
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  tail call void %i.ai(ptr noundef nonnull %0) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !54
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.an = load i32, ptr %i.am, align 8, !tbaa !55
  %i.ao = select i1 %.not, i32 3, i32 0           ; 3 uses
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call i64 @jdiv_round_up(i64 noundef %i.al, i64 noundef %i.aq) #7
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.as, ptr %i.at, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.av = load i32, ptr %i.au, align 4, !tbaa !53
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !56
  %i.az = shl i32 %i.ay, %i.ao
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call i64 @jdiv_round_up(i64 noundef %i.aw, i64 noundef %i.ba) #7
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !160
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 12 uses
  store i32 0, ptr %i.be, align 8, !tbaa !158
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !66
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph91, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !61 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !51 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !152
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !153
  %i.br = mul nsw i32 %i.bp, %i.bm                ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !154
  %i.bt = shl i32 %i.bm, %i.ao
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !155
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !57
  %i.bx = urem i32 %i.bw, %i.bm                   ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %spec.select87 = select i1 %i.by, i32 %i.bm, i32 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 68
  store i32 %spec.select87, ptr %i.bz, align 4, !tbaa !156
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !58
  %i.cc = urem i32 %i.cb, %i.bp                   ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  %.2 = select i1 %i.cd, i32 %i.bp, i32 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  store i32 %.2, ptr %i.ce, align 8, !tbaa !157
  %i.cf = load i32, ptr %i.be, align 8, !tbaa !158
  %i.cg = add nsw i32 %i.cf, %i.br
  %i.ch = icmp sgt i32 %i.cg, 10
  br i1 %i.ch, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 13, ptr %i.cj, align 8, !tbaa !36
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !38
  tail call void %i.ck(ptr noundef nonnull %0) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cl = icmp sgt i32 %i.br, 0
  br i1 %i.cl, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cm = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %xtraiter = and i32 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.08188.prol = phi i32 [ %i.cn, %.lr.ph.prol ], [ %i.br, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cn = add nsw i32 %.08188.prol, -1            ; 2 uses
  %i.co = load i32, ptr %i.be, align 8, !tbaa !158 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.be, align 8, !tbaa !158
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cq
  store i32 %i.cm, ptr %i.cr, align 4, !tbaa !42
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !149

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.08188.unr = phi i32 [ %i.br, %.lr.ph.preheader ], [ %i.cn, %.lr.ph.prol ]
  %i.cs = icmp ult i32 %i.br, 4
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.08188 = phi i32 [ %i.df, %.lr.ph ], [ %.08188.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ct = load i32, ptr %i.be, align 8, !tbaa !158 ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.be, align 8, !tbaa !158
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cv
  store i32 %i.cm, ptr %i.cw, align 4, !tbaa !42
  %i.cx = load i32, ptr %i.be, align 8, !tbaa !158 ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.be, align 8, !tbaa !158
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.cz
  store i32 %i.cm, ptr %i.da, align 4, !tbaa !42
  %i.db = load i32, ptr %i.be, align 8, !tbaa !158 ; 2 uses
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.be, align 8, !tbaa !158
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.dd
  store i32 %i.cm, ptr %i.de, align 4, !tbaa !42
  %i.df = add nsw i32 %.08188, -4
  %i.dg = load i32, ptr %i.be, align 8, !tbaa !158 ; 2 uses
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.be, align 8, !tbaa !158
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.di
  store i32 %i.cm, ptr %i.dj, align 4, !tbaa !42
  %i.dk = icmp sgt i32 %.08188, 4
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = load i32, ptr %i.e, align 4, !tbaa !66
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %bb.f, label %.loopexit, !llvm.loop !151

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !161 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !159
  %i.du = zext i32 %i.dt to i64
  %i.dv = mul nuw nsw i64 %i.du, %i.dr
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 65535)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !162
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS20jpeg_destination_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"p1 _ZTS16jpeg_comp_master", !8, i64 0}
!16 = !{!"p1 _ZTS22jpeg_c_main_controller", !8, i64 0}
!17 = !{!"p1 _ZTS22jpeg_c_prep_controller", !8, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_coef_controller", !8, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_writer", !8, i64 0}
!20 = !{!"p1 _ZTS20jpeg_color_converter", !8, i64 0}
!21 = !{!"p1 _ZTS16jpeg_downsampler", !8, i64 0}
!22 = !{!"p1 _ZTS16jpeg_forward_dct", !8, i64 0}
!23 = !{!"p1 _ZTS20jpeg_entropy_encoder", !8, i64 0}
!24 = !{!"jpeg_compress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !8, i64 88, !4, i64 96, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !5, i64 240, !8, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !4, i64 292, !4, i64 293, !4, i64 294, !14, i64 296, !14, i64 298, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 372, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !15, i64 432, !16, i64 440, !17, i64 448, !18, i64 456, !19, i64 464, !20, i64 472, !21, i64 480, !22, i64 488, !23, i64 496, !8, i64 504, !5, i64 512}
!25 = !{!24, !15, i64 432}
!26 = !{!"jpeg_comp_master", !8, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!27 = !{!"p1 omnipotent char", !8, i64 0}
!28 = !{!"", !26, i64 0, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !27, i64 64}
!29 = !{!28, !5, i64 28}
!30 = !{!24, !8, i64 248}
!31 = !{!24, !9, i64 0}
!32 = !{!"long", !4, i64 0}
!33 = !{!"any p2 pointer", !8, i64 0}
!34 = !{!"p2 omnipotent char", !33, i64 0}
!35 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !32, i64 128, !34, i64 136, !5, i64 144, !34, i64 152, !5, i64 160, !5, i64 164}
!36 = !{!35, !5, i64 40}
!37 = !{!4, !4, i64 0}
!38 = !{!35, !8, i64 0}
!39 = !{!"", !5, i64 0, !4, i64 4, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!40 = !{!26, !5, i64 32}
!41 = !{!24, !5, i64 76}
!42 = !{!5, !5, i64 0}
!43 = !{!39, !5, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!39, !5, i64 28}
!46 = !{!39, !5, i64 32}
!47 = !{!24, !5, i64 256}
!48 = !{!24, !8, i64 88}
!49 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !8, i64 80, !8, i64 88}
!50 = !{!49, !5, i64 12}
!51 = !{!49, !5, i64 8}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!24, !5, i64 52}
!54 = !{!24, !5, i64 48}
!55 = !{!24, !5, i64 312}
!56 = !{!24, !5, i64 316}
!57 = !{!49, !5, i64 28}
!58 = !{!49, !5, i64 32}
!59 = !{!24, !5, i64 260}
!60 = !{!24, !5, i64 264}
!61 = !{!8, !8, i64 0}
!62 = !{!28, !5, i64 48}
!63 = !{!28, !5, i64 60}
!64 = !{!28, !5, i64 52}
!65 = !{!28, !5, i64 56}
!66 = !{!24, !5, i64 324}
!67 = !{!24, !23, i64 496}
!68 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!69 = !{!24, !19, i64 464}
!70 = !{!"jpeg_marker_writer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!71 = !{!70, !8, i64 8}
!72 = !{!70, !8, i64 16}
!73 = distinct !{null}
!74 = distinct !{!74, !44, !93}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !52}
!83 = distinct !{null}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = !{!28, !8, i64 0}
!87 = !{!28, !8, i64 8}
!88 = !{!28, !8, i64 16}
!89 = !{!24, !5, i64 240}
!90 = !{!39, !5, i64 20}
!91 = !{!39, !5, i64 24}
!92 = !{!24, !5, i64 308}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!24, !5, i64 72}
!95 = !{!24, !5, i64 272}
!96 = !{!24, !5, i64 56}
!97 = !{!49, !5, i64 4}
!98 = !{!49, !5, i64 36}
!99 = !{!49, !5, i64 40}
!100 = !{!49, !5, i64 44}
!101 = !{!49, !5, i64 48}
!102 = !{!24, !5, i64 320}
!103 = !{!28, !27, i64 64}
!104 = distinct !{!104, !44, !117, !118}
!105 = distinct !{!105, !44, !118, !117}
!106 = distinct !{null}
!107 = distinct !{!107, !44, !117, !118}
!108 = distinct !{!108, !44, !118, !117}
!109 = distinct !{!109, !44, !117, !118}
!110 = distinct !{!110, !44, !118, !117}
!111 = distinct !{!111, !44, !117, !118}
!112 = distinct !{!112, !44, !118, !117}
!113 = distinct !{!113, !44, !117, !118}
!114 = distinct !{!114, !44, !118, !117}
!115 = distinct !{!115, !44, !117, !118}
!116 = distinct !{!116, !44, !118, !117}
!117 = !{!"llvm.loop.isvectorized", i32 1}
!118 = !{!"llvm.loop.unroll.runtime.disable"}
!119 = !{!24, !5, i64 420}
!120 = !{!24, !5, i64 412}
!121 = !{!24, !5, i64 416}
!122 = !{!24, !5, i64 424}
!123 = !{!24, !20, i64 472}
!124 = !{!"jpeg_color_converter", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!125 = !{!124, !8, i64 0}
!126 = !{!24, !21, i64 480}
!127 = !{!"jpeg_downsampler", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48}
!128 = !{!127, !8, i64 0}
!129 = !{!24, !17, i64 448}
!130 = !{!"jpeg_c_prep_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!131 = !{!130, !8, i64 0}
!132 = !{!24, !22, i64 488}
!133 = !{!"jpeg_forward_dct", !8, i64 0, !8, i64 8, !8, i64 16}
!134 = !{!133, !8, i64 0}
!135 = !{!68, !8, i64 0}
!136 = !{!24, !18, i64 456}
!137 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!138 = !{!137, !8, i64 0}
!139 = !{!24, !16, i64 440}
!140 = !{!"jpeg_c_main_controller", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!141 = !{!140, !8, i64 0}
!142 = !{!28, !5, i64 24}
!143 = !{!24, !11, i64 16}
!144 = !{!"jpeg_progress_mgr", !8, i64 0, !32, i64 8, !32, i64 16, !5, i64 24, !5, i64 28}
!145 = !{!144, !5, i64 24}
!146 = !{!144, !5, i64 28}
!147 = !{!26, !5, i64 24}
!148 = !{!68, !8, i64 32}
!149 = distinct !{!149, !52}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = !{!49, !5, i64 52}
!153 = !{!49, !5, i64 56}
!154 = !{!49, !5, i64 60}
!155 = !{!49, !5, i64 64}
!156 = !{!49, !5, i64 68}
!157 = !{!49, !5, i64 72}
!158 = !{!24, !5, i64 368}
!159 = !{!24, !5, i64 360}
!160 = !{!24, !5, i64 364}
!161 = !{!24, !5, i64 284}
!162 = !{!24, !5, i64 280}
end_hunk_1
