Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mbuffer?download=true
inline.NumInlined: 130
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dpb_split_field:bb.a
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 6372
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !95
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 6372
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !95
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !107
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 6428
  store i32 1, ptr %i.gz, align 4, !tbaa !78
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 6428
  store i32 1, ptr %i.ha, align 4, !tbaa !78
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fv, i64 6432
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !79 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 6432
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !79
  %i.he = getelementptr inbounds nuw i8, ptr %i.fy, i64 6432
  store i32 %i.hc, ptr %i.he, align 8, !tbaa !79
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fv, i64 6536
  store ptr %i.fy, ptr %i.hf, align 8, !tbaa !108
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fv, i64 6544
  store ptr %i.gc, ptr %i.hg, align 8, !tbaa !109
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fy, i64 6544
  store ptr %i.gc, ptr %i.hh, align 8, !tbaa !109
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fy, i64 6552
  store ptr %i.fv, ptr %i.hi, align 8, !tbaa !132
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 6536
  store ptr %i.fy, ptr %i.hj, align 8, !tbaa !108
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 6552
  store ptr %i.fv, ptr %i.hk, align 8, !tbaa !132
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fv, i64 6560
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !133 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gc, i64 6560
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !133
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fy, i64 6560
  store i32 %i.hm, ptr %i.ho, align 8, !tbaa !133
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fv, i64 816
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !12
  %i.hs = shl nsw i32 %i.hr, 1
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.hq, i64 %i.hu, i1 false)
  %i.hv = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 288
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull align 8 %i.hy, i64 %i.hu, i1 false)
  %i.hz = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 552
  %i.id = load i32, ptr @listXsize, align 16, !tbaa !12
  %i.ie = shl nsw i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = shl nsw i64 %i.if, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.ic, i64 %i.ig, i1 false)
  %i.ih = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr nonnull align 8 %i.ik, i64 %i.ig, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 6536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.in = phi ptr [ %i.b, %bb.c ], [ %.pre, %._crit_edge ] ; 14 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 6396
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !75 ; 5 uses
  %i.iq = sdiv i32 %i.ip, 4                       ; 2 uses
  %i.ir = icmp sgt i32 %i.ip, 3
  br i1 %i.ir, label %.lr.ph486, label %._crit_edge487.split

.lr.ph486:                                        ; preds = %bb.d
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 6392
  %i.it = load i32, ptr %i.is, align 8, !tbaa !74 ; 2 uses
  %i.iu = sdiv i32 %i.it, 4                       ; 2 uses
  %i.iv = icmp sgt i32 %i.it, 3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 6480
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 6488 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 6504 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 1608 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.in, i64 288 ; 2 uses
  br i1 %i.iv, label %.lr.ph486.split, label %._crit_edge487.split

.lr.ph486.split:                                  ; preds = %.lr.ph486
  %i.jc = getelementptr inbounds nuw i8, ptr %i.in, i64 6432
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !79
  %.not462 = icmp eq i32 %i.jd, 0
  br i1 %.not462, label %.lr.ph486.split.split.us, label %.lr.ph486.split.split

.lr.ph486.split.split.us:                         ; preds = %.lr.ph486.split
  %i.je = load ptr, ptr %i.ix, align 8, !tbaa !80 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !118
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !118
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !82 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !124
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !124
  %wide.trip.count533 = zext nneg i32 %i.iq to i64
  %wide.trip.count528 = zext nneg i32 %i.iu to i64
  br label %.lr.ph482.us

.lr.ph482.us:                                     ; preds = %._crit_edge483.split.us.us, %.lr.ph486.split.split.us
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %._crit_edge483.split.us.us ], [ 0, %.lr.ph486.split.split.us ] ; 5 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv530
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !119
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv530
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !119
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv530
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !126
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv530
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph482.us
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %bb.i ], [ 0, %.lr.ph482.us ] ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv525
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !120 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv525
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !120 ; 2 uses
  %i.jy = zext nneg i8 %i.jx to i64
  %i.jz = icmp sgt i8 %i.jv, -1
  br i1 %i.jz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ka = zext nneg i8 %i.jv to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ka
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.kd = phi i64 [ %i.kc, %bb.f ], [ -1, %bb.e ]
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv525
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !122
  %i.kf = icmp sgt i8 %i.jx, -1
  br i1 %i.kf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jy
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !122
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ki = phi i64 [ %i.kh, %bb.h ], [ -1, %bb.g ]
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv525
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !122
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count528
  br i1 %exitcond529.not, label %._crit_edge483.split.us.us, label %bb.e, !llvm.loop !257

._crit_edge483.split.us.us:                       ; preds = %bb.i
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533
  br i1 %exitcond534.not, label %._crit_edge487.split, label %.lr.ph482.us, !llvm.loop !258

.lr.ph486.split.split:                            ; preds = %.lr.ph486.split
  %i.kk = load ptr, ptr %i.iw, align 8, !tbaa !72
  %wide.trip.count523 = zext nneg i32 %i.iq to i64
  %wide.trip.count = zext nneg i32 %i.iu to i64
  %i.kl = load ptr, ptr %i.ix, align 8, !tbaa !80 ; 3 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !118
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  br label %.lr.ph482

.lr.ph482:                                        ; preds = %.lr.ph486.split.split, %._crit_edge483.split
  %indvars.iv520 = phi i64 [ 0, %.lr.ph486.split.split ], [ %indvars.iv.next521, %._crit_edge483.split ] ; 10 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv520 to i32 ; 2 uses
  %i.kq = lshr i32 %i.kp, 2
  %i.kr = and i32 %i.kq, 1                        ; 2 uses
  %i.ks = lshr i32 %i.kp, 3
  %i.kt = mul nsw i32 %i.ks, %i.f
  %invariant.op = or disjoint i32 %i.kt, %i.kr
  %.not464 = icmp eq i32 %i.kr, 0
  %i.ku = select i1 %.not464, i32 2, i32 4        ; 2 uses
  %i.kv = zext nneg i32 %i.ku to i64              ; 4 uses
  %i.kw = getelementptr inbounds nuw [264 x i8], ptr %i.iy, i64 %i.kv
  %i.kx = getelementptr inbounds nuw [264 x i8], ptr %i.in, i64 %i.kv
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 288
  %i.kz = or disjoint i32 %i.ku, 1
  %i.la = zext nneg i32 %i.kz to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [264 x i8], ptr %i.ja, i64 %i.kv
  %i.lc = getelementptr inbounds nuw [264 x i8], ptr %i.ja, i64 %i.la
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv520
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph482, %bb.w
  %indvars.iv517 = phi i64 [ 0, %.lr.ph482 ], [ %indvars.iv.next518, %bb.w ] ; 10 uses
  %i.lf = trunc nuw nsw i64 %indvars.iv517 to i32
  %i.lg = lshr i32 %i.lf, 1
  %i.lh = and i32 %i.lg, 1073741822
  %.reass = add i32 %i.lh, %invariant.op
  %i.li = sext i32 %.reass to i64
  %i.lj = getelementptr inbounds i8, ptr %i.kk, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !120
  %.not463 = icmp eq i8 %i.lk, 0
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 %indvars.iv517
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !120 ; 4 uses
  br i1 %.not463, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ln = sext i8 %i.lm to i32                    ; 2 uses
  %i.lo = load ptr, ptr %i.kn, align 8, !tbaa !118
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv520
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !119
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %indvars.iv517
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !120 ; 2 uses
  %i.lt = sext i8 %i.ls to i32                    ; 2 uses
  %i.lu = icmp sgt i8 %i.lm, -1                   ; 2 uses
  br i1 %i.lu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.lv = zext nneg i32 %i.ln to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.lv
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !122
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ly = phi i64 [ %i.lx, %bb.l ], [ 0, %bb.k ]
  %i.lz = load ptr, ptr %i.iz, align 8, !tbaa !82 ; 5 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.kv
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !124
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv520
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !126
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv517
  store i64 %i.ly, ptr %i.me, align 8, !tbaa !122
  %i.mf = icmp sgt i8 %i.ls, -1                   ; 2 uses
  br i1 %i.mf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mg = zext nneg i32 %i.lt to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !122
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.mj = phi i64 [ %i.mi, %bb.n ], [ 0, %bb.m ]
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.la
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !124
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv520
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !126
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv517
  store i64 %i.mj, ptr %i.mo, align 8, !tbaa !122
  br i1 %i.lu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.mp = zext nneg i32 %i.ln to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.mp
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !122
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ms = phi i64 [ %i.mr, %bb.p ], [ 0, %bb.o ]
  %i.mt = load ptr, ptr %i.lz, align 8, !tbaa !124
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %indvars.iv520
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !126
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %indvars.iv517
  store i64 %i.ms, ptr %i.mw, align 8, !tbaa !122
  br i1 %i.mf, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.mx = zext nneg i32 %i.lt to i64
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.mx
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !122
  br label %bb.w

bb.s:                                             ; preds = %bb.j
  %i.na = load ptr, ptr %i.ko, align 8, !tbaa !118
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv520
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !119
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %indvars.iv517
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !120 ; 2 uses
  %i.nf = zext nneg i8 %i.ne to i64
  %i.ng = icmp sgt i8 %i.lm, -1
  br i1 %i.ng, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.nh = zext nneg i8 %i.lm to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !122
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.nk = phi i64 [ %i.nj, %bb.t ], [ -1, %bb.s ]
  %i.nl = load ptr, ptr %i.iz, align 8, !tbaa !82 ; 3 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !124
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv520
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !126
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv517
  store i64 %i.nk, ptr %i.np, align 8, !tbaa !122
  %i.nq = icmp sgt i8 %i.ne, -1
  br i1 %i.nq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.nf
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !122
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  %.sink571 = phi ptr [ %i.lz, %bb.r ], [ %i.lz, %bb.q ], [ %i.nl, %bb.u ], [ %i.nl, %bb.v ]
  %.sink = phi i64 [ %i.mz, %bb.r ], [ 0, %bb.q ], [ -1, %bb.u ], [ %i.ns, %bb.v ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.sink571, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !124
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv520
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !126
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv517
  store i64 %.sink, ptr %i.nx, align 8, !tbaa !122
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge483.split, label %bb.j, !llvm.loop !257

._crit_edge483.split:                             ; preds = %bb.w
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %._crit_edge487.split, label %.lr.ph482, !llvm.loop !258

._crit_edge487.split:                             ; preds = %._crit_edge483.split, %._crit_edge483.split.us.us, %.lr.ph486, %bb.d
  %i.ny = load ptr, ptr @active_sps, align 8, !tbaa !14
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1148
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !18
  %.not456 = icmp eq i32 %i.oa, 0
  br i1 %.not456, label %bb.x, label %.loopexit469.thread557

bb.x:                                             ; preds = %._crit_edge487.split
  %i.ob = getelementptr inbounds nuw i8, ptr %i.in, i64 6432
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !79
  %.not457 = icmp eq i32 %i.oc, 0
  br i1 %.not457, label %.preheader, label %.preheader468

.preheader468:                                    ; preds = %bb.x
  %i.od = icmp sgt i32 %i.ip, 7
  br i1 %i.od, label %.lr.ph497, label %.loopexit

.lr.ph497:                                        ; preds = %.preheader468
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph497, %._crit_edge493
  %i.og = phi ptr [ %i.in, %.lr.ph497 ], [ %i.xq, %._crit_edge493 ] ; 4 uses
  %indvars.iv538 = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next539, %._crit_edge493 ] ; 17 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 6392
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !74
  %i.oj = icmp sgt i32 %i.oi, 3
  br i1 %i.oj, label %.lr.ph492, label %._crit_edge493

.lr.ph492:                                        ; preds = %bb.y
  %i.ok = trunc nuw nsw i64 %indvars.iv538 to i32 ; 3 uses
  %i.ol = lshr i32 %i.ok, 1
  %i.om = shl nuw nsw i64 %indvars.iv538, 1       ; 3 uses
  %i.on = trunc nuw nsw i64 %i.om to i32
  %i.oo = and i32 %i.on, 2147483640
  %i.op = and i32 %i.ok, 3
  %i.oq = or disjoint i32 %i.oo, %i.op            ; 2 uses
  %i.or = or disjoint i32 %i.oq, 4
  %i.os = lshr i32 %i.ok, 2
  %i.ot = mul nsw i32 %i.os, %i.f
  %i.ou = and i32 %i.ol, 1
  %invariant.op494 = or disjoint i32 %i.ot, %i.ou
  %i.ov = zext nneg i32 %i.or to i64              ; 6 uses
  %i.ow = zext nneg i32 %i.oq to i64              ; 6 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph492, %bb.ab
  %i.ox = phi ptr [ %i.og, %.lr.ph492 ], [ %i.xj, %bb.ab ]
  %i.oy = phi ptr [ %i.og, %.lr.ph492 ], [ %i.xk, %bb.ab ] ; 2 uses
  %indvars.iv535 = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next536, %bb.ab ] ; 30 uses
  %i.oz = trunc nuw nsw i64 %indvars.iv535 to i32
  %i.pa = lshr i32 %i.oz, 1
  %i.pb = and i32 %i.pa, 1073741822
  %.reass495 = add i32 %i.pb, %invariant.op494
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 6480
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !72
  %i.pe = sext i32 %.reass495 to i64
  %i.pf = getelementptr inbounds i8, ptr %i.pd, i64 %i.pe
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !120
  %.not458 = icmp eq i8 %i.pg, 0
  br i1 %.not458, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ph = load ptr, ptr %i.oe, align 8, !tbaa !62
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 6528
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !84
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv538
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !119
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %indvars.iv535
  store i8 1, ptr %i.pm, align 1, !tbaa !120
  %i.pn = load ptr, ptr %i.of, align 8, !tbaa !63
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 6528
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !84
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %indvars.iv538
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !119
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %indvars.iv535
  store i8 1, ptr %i.ps, align 1, !tbaa !120
  %i.pt = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 6528
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !84
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.om
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !119
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %indvars.iv535
  store i8 1, ptr %i.pz, align 1, !tbaa !120
  %i.qa = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 6528
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !84
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.om
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !119
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %indvars.iv535
  store i8 1, ptr %i.qf, align 1, !tbaa !120
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 6512
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !83 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !134
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.ov
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !130
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv535
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !129 ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !135
  %i.qp = load ptr, ptr %i.of, align 8, !tbaa !63 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 6512
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !83 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !134
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv538
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !130
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv535
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !129 ; 2 uses
  store i16 %i.qo, ptr %i.qw, align 2, !tbaa !135
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qn, i64 2
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !135
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 2
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !135
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !134
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.ov
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !130
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv535
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !129 ; 2 uses
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !135
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !134
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv538
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !130
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %indvars.iv535
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !129 ; 2 uses
  store i16 %i.rg, ptr %i.rm, align 2, !tbaa !135
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !135
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 2
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !135
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qg, i64 6488
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !80
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !118
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.ov
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !119
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %indvars.iv535
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !120
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qp, i64 6488
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !80
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !118
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv538
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !119
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv535
  store i8 %i.rw, ptr %i.sc, align 1, !tbaa !120
  %i.sd = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 6488
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !80
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !118
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.ov
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !119
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv535
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !120
  %i.sm = load ptr, ptr %i.of, align 8, !tbaa !63
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 6488
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !80
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !118
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv538
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !119
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %indvars.iv535
  store i8 %i.sl, ptr %i.st, align 1, !tbaa !120
  %i.su = load ptr, ptr %i.a, align 8, !tbaa !61  ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 6504
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !82 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !124
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.ov
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !126
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %indvars.iv535
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !122
  %i.td = load ptr, ptr %i.of, align 8, !tbaa !63
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 6504
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !82 ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !124
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv538
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !126
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %indvars.iv535
  store i64 %i.tc, ptr %i.tj, align 8, !tbaa !122
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sw, i64 40
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !124
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.ov
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !126
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %indvars.iv535
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !122
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !124
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv538
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !126
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv535
  store i64 %i.tp, ptr %i.tu, align 8, !tbaa !122
  %i.tv = getelementptr inbounds nuw i8, ptr %i.su, i64 6512
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !83 ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !134
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %i.ow
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !130
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv535
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !129 ; 2 uses
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !135
  %i.ud = load ptr, ptr %i.oe, align 8, !tbaa !62 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 6512
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !83 ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !134
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv538
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !130
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv535
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !129 ; 2 uses
  store i16 %i.uc, ptr %i.uk, align 2, !tbaa !135
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !135
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 2
  store i16 %i.um, ptr %i.un, align 2, !tbaa !135
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !134
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %i.ow
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !130
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv535
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !129 ; 2 uses
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !135
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !134
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %indvars.iv538
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !130
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %indvars.iv535
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !129 ; 2 uses
  store i16 %i.uu, ptr %i.va, align 2, !tbaa !135
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !135
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !135
  %i.ve = getelementptr inbounds nuw i8, ptr %i.su, i64 6488
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !80
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !118
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.ow
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !119
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %indvars.iv535
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !120
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ud, i64 6488
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !80
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !118
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv538
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !119
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 %indvars.iv535
  store i8 %i.vk, ptr %i.vq, align 1, !tbaa !120
  %i.vr = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 6488
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !80
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !118
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.ow
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !119
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %indvars.iv535
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !120
  %i.wa = load ptr, ptr %i.oe, align 8, !tbaa !62
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 6488
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !118
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %indvars.iv538
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !119
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %indvars.iv535
  store i8 %i.vz, ptr %i.wh, align 1, !tbaa !120
  %i.wi = load ptr, ptr %i.a, align 8, !tbaa !61  ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 6504
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !82 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !124
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.ow
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !126
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %indvars.iv535
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !122
  %i.wr = load ptr, ptr %i.oe, align 8, !tbaa !62
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 6504
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !82 ; 2 uses
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !124
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv538
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !126
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv535
  store i64 %i.wq, ptr %i.wx, align 8, !tbaa !122
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !124
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.ow
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !126
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv535
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !122
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !124
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv538
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !126
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv535
  store i64 %i.xd, ptr %i.xi, align 8, !tbaa !122
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.xj = phi ptr [ %i.ox, %bb.z ], [ %i.wi, %bb.aa ] ; 2 uses
  %i.xk = phi ptr [ %i.oy, %bb.z ], [ %i.wi, %bb.aa ] ; 2 uses
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 6392
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !74
  %i.xn = sdiv i32 %i.xm, 4
  %i.xo = sext i32 %i.xn to i64
  %i.xp = icmp slt i64 %indvars.iv.next536, %i.xo
  br i1 %i.xp, label %bb.z, label %._crit_edge493, !llvm.loop !259

._crit_edge493:                                   ; preds = %bb.ab, %bb.y
  %i.xq = phi ptr [ %i.og, %bb.y ], [ %i.xj, %bb.ab ] ; 4 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 6396
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !75 ; 3 uses
  %i.xt = sdiv i32 %i.xs, 8
  %i.xu = sext i32 %i.xt to i64
  %i.xv = icmp slt i64 %indvars.iv.next539, %i.xu
  br i1 %i.xv, label %bb.y, label %.loopexit469, !llvm.loop !260

.loopexit469:                                     ; preds = %._crit_edge493
  %.pre547 = load ptr, ptr @active_sps, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre547, i64 1148
  %.pre548 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !18
  %i.xw = icmp eq i32 %.pre548, 0
  br i1 %i.xw, label %.preheader, label %.loopexit469.thread557

.preheader:                                       ; preds = %bb.x, %.loopexit469
  %i.xx = phi ptr [ %i.xq, %.loopexit469 ], [ %i.in, %bb.x ]
  %i.xy = phi i32 [ %i.xs, %.loopexit469 ], [ %i.ip, %bb.x ]
  %i.xz = icmp sgt i32 %i.xy, 7
  br i1 %i.xz, label %.lr.ph505, label %.loopexit

.lr.ph505:                                        ; preds = %.preheader
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph505, %._crit_edge501
  %i.yc = phi ptr [ %i.xx, %.lr.ph505 ], [ %i.ahq, %._crit_edge501 ] ; 3 uses
  %indvars.iv544 = phi i64 [ 0, %.lr.ph505 ], [ %indvars.iv.next545, %._crit_edge501 ] ; 21 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 6392
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !74
  %i.yf = icmp sgt i32 %i.ye, 3
  br i1 %i.yf, label %.lr.ph500, label %._crit_edge501

.lr.ph500:                                        ; preds = %bb.ac
  %i.yg = trunc nuw nsw i64 %indvars.iv544 to i32 ; 3 uses
  %i.yh = lshr i32 %i.yg, 1
  %.lobit.i = and i32 %i.yh, 1                    ; 2 uses
  %i.yi = and i32 %i.yg, 2147483646
  %i.yj = or disjoint i32 %.lobit.i, %i.yi
  %i.yk = shl nuw nsw i32 %i.yj, 1
  %i.yl = lshr i32 %i.yg, 2
  %i.ym = mul nsw i32 %i.yl, %i.f
  %invariant.op502 = or disjoint i32 %i.ym, %.lobit.i
  %i.yn = shl nuw nsw i64 %indvars.iv544, 1       ; 4 uses
  %i.yo = zext nneg i32 %i.yk to i64              ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph500, %bb.aq
  %indvars.iv541 = phi i64 [ 0, %.lr.ph500 ], [ %indvars.iv.next542, %bb.aq ] ; 24 uses
  %i.yp = phi ptr [ %i.yc, %.lr.ph500 ], [ %i.ahk, %bb.aq ] ; 4 uses
  %i.yq = trunc nuw nsw i64 %indvars.iv541 to i32 ; 2 uses
  %i.yr = and i32 %i.yq, 2147483646
  %i.ys = lshr i32 %i.yq, 1                       ; 2 uses
  %.lobit.i467 = and i32 %i.ys, 1
  %i.yt = or disjoint i32 %.lobit.i467, %i.yr
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yp, i64 6432
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !79
  %.not460 = icmp eq i32 %i.yv, 0
  br i1 %.not460, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.yw = and i32 %i.ys, 1073741822
  %.reass503 = add i32 %i.yw, %invariant.op502
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yp, i64 6480
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !72
  %i.yz = sext i32 %.reass503 to i64
  %i.za = getelementptr inbounds i8, ptr %i.yy, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !120 ; 3 uses
  %.not461 = icmp eq i8 %i.zb, 0
  br i1 %.not461, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yp, i64 6528
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !84
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.yn
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !119
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %indvars.iv541
  store i8 0, ptr %i.zg, align 1, !tbaa !120
  %i.zh = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 6528
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !84
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %i.yn
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !119
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %indvars.iv541
  store i8 0, ptr %i.zn, align 1, !tbaa !120
  %i.zo = load ptr, ptr %i.ya, align 8, !tbaa !63
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 6528
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !84
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %indvars.iv544
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !119
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %indvars.iv541
  store i8 0, ptr %i.zt, align 1, !tbaa !120
  %i.zu = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 6528
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !84
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %indvars.iv544
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !119
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %indvars.iv541
  store i8 0, ptr %i.zz, align 1, !tbaa !120
  %i.aaa = load ptr, ptr %i.a, align 8, !tbaa !61 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 6512
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !83 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !134
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.yo
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !130
  %i.aag = zext nneg i32 %i.yt to i64             ; 4 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %i.aag
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !129 ; 2 uses
  %i.aaj = load i16, ptr %i.aai, align 2, !tbaa !135 ; 2 uses
  %i.aak = load ptr, ptr %i.ya, align 8, !tbaa !63 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 6512
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !83 ; 2 uses
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !134
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %indvars.iv544
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !130
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %indvars.iv541
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !129 ; 2 uses
  store i16 %i.aaj, ptr %i.aar, align 2, !tbaa !135
  %i.aas = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 6512
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !83 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !134
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %indvars.iv544
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !130
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %indvars.iv541
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !129 ; 2 uses
  store i16 %i.aaj, ptr %i.aaz, align 2, !tbaa !135
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !135 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aar, i64 2
  store i16 %i.abb, ptr %i.abc, align 2, !tbaa !135
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 2
  store i16 %i.abb, ptr %i.abd, align 2, !tbaa !135
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !134
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.yo
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !130
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %i.aag
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !129 ; 2 uses
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !135 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !134
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv544
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !130
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %indvars.iv541
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !129 ; 2 uses
  store i16 %i.abk, ptr %i.abq, align 2, !tbaa !135
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !134
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv544
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !130
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %indvars.iv541
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !129 ; 2 uses
  store i16 %i.abk, ptr %i.abw, align 2, !tbaa !135
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abj, i64 2
  %i.aby = load i16, ptr %i.abx, align 2, !tbaa !135 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abq, i64 2
  store i16 %i.aby, ptr %i.abz, align 2, !tbaa !135
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abw, i64 2
  store i16 %i.aby, ptr %i.aca, align 2, !tbaa !135
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aaa, i64 6488
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !80
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !118
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.yo
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !119
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aag
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !120 ; 5 uses
  %i.aci = icmp eq i8 %i.ach, -1
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aak, i64 6488
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !80
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !118
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv544
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !119
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %indvars.iv541 ; 2 uses
  br i1 %i.aci, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 -1, ptr %i.aco, align 1, !tbaa !120
  %i.acp = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 6488
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !80
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !118
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %indvars.iv544
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !119
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 %indvars.iv541
  store i8 -1, ptr %i.acv, align 1, !tbaa !120
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  store i8 %i.ach, ptr %i.aco, align 1, !tbaa !120
  %i.acw = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 6488
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !80
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !118
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %indvars.iv544
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !119
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %indvars.iv541
  store i8 %i.ach, ptr %i.adc, align 1, !tbaa !120
  %i.add = icmp sgt i8 %i.ach, -1
  br i1 %i.add, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.ade = load ptr, ptr %i.a, align 8, !tbaa !61 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 3192
  %i.adg = zext nneg i8 %i.ach to i64             ; 2 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.adg
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !122
  %i.adj = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 6504
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !82
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !124
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %indvars.iv544
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !126
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %indvars.iv541
  store i64 %i.adi, ptr %i.adp, align 8, !tbaa !122
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ade, i64 4776
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %i.adg
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !122
  br label %bb.aj

.critedge:                                        ; preds = %bb.ah
  %i.adt = load ptr, ptr %i.yb, align 8, !tbaa !62
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 6504
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !82
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !124
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %indvars.iv544
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !126
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %indvars.iv541
  store i64 0, ptr %i.adz, align 8, !tbaa !122
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge, %bb.ai
  %i.aea = phi i64 [ %i.ads, %bb.ai ], [ 0, %.critedge ]
  %i.aeb = load ptr, ptr %i.ya, align 8, !tbaa !63
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 6504
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !82
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !124
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.aee, i64 %indvars.iv544
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !126
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %indvars.iv541
  store i64 %i.aea, ptr %i.aeh, align 8, !tbaa !122
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.aei = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 6488
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !80
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !118
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %i.yo
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !119
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.aag
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !120 ; 5 uses
  %i.aer = icmp eq i8 %i.aeq, -1
  %i.aes = load ptr, ptr %i.ya, align 8, !tbaa !63
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 6488
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !80
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !118
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv544
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !119
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 %indvars.iv541 ; 2 uses
end_hunk_0
