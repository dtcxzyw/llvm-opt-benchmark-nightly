Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/slab_automove_extstore?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@slab_automove_extstore_run:bb.a
  %i.fx = add i32 %i.ft, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 5712
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !43
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = add i32 %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 5736
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !43
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = add i32 %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5760
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !43
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = add i32 %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 5784
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !43
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = add i32 %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 5808
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !43
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = add i32 %i.gn, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 5832
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !43
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = add i32 %i.gr, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !43
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = add i32 %i.gv, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !43
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = add i32 %i.gz, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !43
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = add i32 %i.hd, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !43
  %i.hk = trunc i64 %i.hj to i32
  %i.hl = add i32 %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !43
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = add i32 %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 5976
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !43
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = add i32 %i.hp, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 6000
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !43
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = add i32 %i.ht, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 6024
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !43
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = add i32 %i.hx, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 6048
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !43
  %i.ie = trunc i64 %i.id to i32
  %i.if = add i32 %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 6072
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !43
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = add i32 %i.if, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 6096
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !43
  %i.im = trunc i64 %i.il to i32
  %i.in = add i32 %i.ij, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !43
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = add i32 %i.in, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.it = load i64, ptr %i.is, align 8, !tbaa !43
  %i.iu = trunc i64 %i.it to i32
  %i.iv = add i32 %i.ir, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 6168
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !43
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = add i32 %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !43
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = add i32 %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !43
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = add i32 %i.jd, %i.jg
  %i.ji = uitofp i32 %i.jh to double
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !24
  %i.jl = fmul double %i.jk, %i.ji
  %i.jm = fptoui double %i.jl to i32
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.jm, i32 2)
  store i32 %spec.select.i, ptr %i.b, align 4, !tbaa !36
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jr = icmp ne i32 %i.d, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %global_pool_check.exit, %bb.r
  %i.js = phi ptr [ %.pre, %global_pool_check.exit ], [ %i.lo, %bb.r ]
  %indvars.iv = phi i64 [ 1, %global_pool_check.exit ], [ %indvars.iv.next, %bb.r ] ; 7 uses
  %.0128 = phi i32 [ 0, %global_pool_check.exit ], [ %.2116, %bb.r ] ; 3 uses
  %.094127 = phi i32 [ 0, %global_pool_check.exit ], [ %.195114, %bb.r ] ; 2 uses
  %.096126 = phi i1 [ false, %global_pool_check.exit ], [ %.298, %bb.r ] ; 2 uses
  %.099125 = phi i64 [ 0, %global_pool_check.exit ], [ %.3, %bb.r ] ; 4 uses
  %.0102124 = phi i32 [ -1, %global_pool_check.exit ], [ %.3105, %bb.r ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !44
  %i.jw = load i32, ptr %i.jo, align 8, !tbaa !25
  %i.jx = icmp uge i32 %i.jv, %i.jw               ; 2 uses
  %i.jy = load i32, ptr %i.jp, align 8, !tbaa !23 ; 2 uses
  %i.jz = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ka = mul i32 %i.jy, %i.jz                    ; 2 uses
  %i.kb = load i32, ptr %i.k, align 4, !tbaa !41
  %i.kc = urem i32 %i.kb, %i.jy
  %i.kd = add i32 %i.kc, %i.ka
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [32 x i8], ptr %i.js, i64 %i.ke ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kf, i8 0, i64 32, i1 false)
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !45
  %i.ki = shl i32 %i.kh, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !43 ; 3 uses
  %i.kl = trunc i64 %i.kk to i32                  ; 3 uses
  br i1 %i.jx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.km = icmp ugt i32 %i.kl, 2
  %i.kn = select i1 %i.km, i32 %i.kl, i32 0
  %.1 = add i32 %i.kn, %.0128
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ko = add i32 %.094127, %i.kl                 ; 2 uses
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !47
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.jq, i64 %indvars.iv ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !47
  %i.kt = icmp sgt i64 %i.kq, %i.ks
  br i1 %i.kt, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !48
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !48
  %i.ky = icmp sgt i64 %i.kv, %i.kx
  br i1 %i.ky, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store i64 1, ptr %i.kz, align 8, !tbaa !50
  %i.la = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 1, ptr %i.la, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !43
  %i.ld = icmp sgt i64 %i.kk, %i.lc
  br i1 %i.ld, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.le = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 1, ptr %i.le, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i
  %.2116 = phi i32 [ %.0128, %bb.h ], [ %.0128, %bb.i ], [ %.1, %bb.d ] ; 2 uses
  %.195114 = phi i32 [ %i.ko, %bb.h ], [ %i.ko, %bb.i ], [ %.094127, %bb.d ] ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !52
  %i.lh = zext i32 %i.ki to i64
  %i.li = icmp sgt i64 %i.lg, %i.lh
  br i1 %i.li, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store i32 1, ptr %i.lj, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !54
  %i.ln = zext i32 %i.lm to i64
  store i64 %i.ln, ptr %i.kf, align 8, !tbaa !55
  %i.lo = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.lp = sext i32 %i.ka to i64
  %i.lq = getelementptr inbounds [32 x i8], ptr %i.lo, i64 %i.lp ; 5 uses
  %i.lr = load i32, ptr %i.jp, align 8, !tbaa !23 ; 4 uses
  %.not.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i, label %window_sum.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %wide.trip.count.i = zext i32 %i.lr to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ls = icmp ult i32 %i.lr, 4
  br i1 %i.ls, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.m ] ; 5 uses
  %i.lt = phi i32 [ 0, %.lr.ph.i.new ], [ %i.mw, %bb.m ]
  %i.lu = phi i64 [ 0, %.lr.ph.i.new ], [ %i.mt, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.m ]
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %indvars.iv.i ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !51
  %i.ly = add i64 %i.lx, %i.lu
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !53
  %i.mb = add i32 %i.ma, %i.lt
  %i.mc = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %indvars.iv.i ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.me = load i64, ptr %i.md, align 8, !tbaa !51
  %i.mf = add i64 %i.me, %i.ly
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 56
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !53
  %i.mi = add i32 %i.mh, %i.mb
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %indvars.iv.i ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 72
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !51
  %i.mm = add i64 %i.ml, %i.mf
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 88
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !53
  %i.mp = add i32 %i.mo, %i.mi
  %i.mq = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %indvars.iv.i ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 104
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !51
  %i.mt = add i64 %i.ms, %i.mm                    ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 120
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !53
  %i.mw = add i32 %i.mv, %i.mp                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %window_sum.exit.unr-lcssa, label %bb.m, !llvm.loop !32

window_sum.exit.unr-lcssa:                        ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %window_sum.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %window_sum.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %window_sum.exit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.mw, %window_sum.exit.unr-lcssa ]
  %.epil.init138 = phi i64 [ 0, %.lr.ph.i ], [ %i.mt, %window_sum.exit.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod141)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.n ] ; 2 uses
  %i.mx = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.nf, %bb.n ]
  %i.my = phi i64 [ %.epil.init138, %.epil.preheader ], [ %i.nc, %bb.n ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.mz = getelementptr inbounds nuw [32 x i8], ptr %i.lq, i64 %indvars.iv.i.epil ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !51
  %i.nc = add i64 %i.nb, %i.my                    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !53
  %i.nf = add i32 %i.ne, %i.mx                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %window_sum.exit, label %bb.n, !llvm.loop !33

window_sum.exit:                                  ; preds = %bb.n, %window_sum.exit.unr-lcssa
  %.lcssa136 = phi i64 [ %i.mt, %window_sum.exit.unr-lcssa ], [ %i.nc, %bb.n ]
  %.lcssa = phi i32 [ %i.mw, %window_sum.exit.unr-lcssa ], [ %i.nf, %bb.n ]
  %i.ng = icmp ne i64 %.lcssa136, 0
  %or.cond = select i1 %i.ng, i1 %i.jr, i1 false
  br i1 %or.cond, label %bb.r, label %window_sum.exit.thread

window_sum.exit.thread:                           ; preds = %bb.l, %window_sum.exit
  %.sroa.10.0121 = phi i32 [ %.lcssa, %window_sum.exit ], [ 0, %bb.l ]
  %.not107 = icmp ult i32 %.sroa.10.0121, %i.lr
  br i1 %.not107, label %bb.p, label %bb.o

bb.o:                                             ; preds = %window_sum.exit.thread
  store i32 %i.jz, ptr %1, align 4, !tbaa !35
  store i32 0, ptr %2, align 4, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %window_sum.exit.thread
  %.197 = phi i1 [ true, %bb.o ], [ %.096126, %window_sum.exit.thread ] ; 2 uses
  %i.nh = icmp sgt i64 %i.kk, 2
  %or.cond134 = select i1 %i.jx, i1 %i.nh, i1 false
  br i1 %or.cond134, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ni = load i32, ptr %i.ll, align 8, !tbaa !54
  %i.nj = zext i32 %i.ni to i64                   ; 2 uses
  %i.nk = icmp ult i64 %.099125, %i.nj
  %i.nl = icmp eq i32 %.0102124, -1
  %or.cond3 = select i1 %i.nk, i1 true, i1 %i.nl  ; 2 uses
  %spec.select = select i1 %or.cond3, i32 %i.jz, i32 %.0102124
  %spec.select108 = select i1 %or.cond3, i64 %i.nj, i64 %.099125
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %window_sum.exit
  %.3105 = phi i32 [ %.0102124, %window_sum.exit ], [ %.0102124, %bb.p ], [ %spec.select, %bb.q ] ; 3 uses
  %.3 = phi i64 [ %.099125, %window_sum.exit ], [ %.099125, %bb.p ], [ %spec.select108, %bb.q ]
  %.298 = phi i1 [ %.096126, %window_sum.exit ], [ %.197, %bb.p ], [ %.197, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.s, label %bb.c, !llvm.loop !34

bb.s:                                             ; preds = %bb.r
  %i.nm = add i32 %.195114, %i.d
  %i.nn = add i32 %i.nm, %.2116
  %i.no = uitofp i32 %i.nn to float
  %i.np = uitofp i32 %.195114 to float
  %i.nq = fdiv float %i.np, %i.no
  %i.nr = fmul float %i.nq, 1.000000e+02
  call void @STATS_LOCK() #10
  store float %i.nr, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 32), align 8, !tbaa !60
  call void @STATS_UNLOCK() #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.jq, ptr noundef nonnull align 8 dereferenceable(1536) %i.i, i64 1536, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.jn, ptr noundef nonnull align 8 dereferenceable(1536) %i.j, i64 1536, i1 false)
  %i.ns = load i32, ptr %i.k, align 4, !tbaa !41
  %i.nt = load i32, ptr %i.jp, align 8, !tbaa !23
  %i.nu = icmp ult i32 %i.ns, %i.nt
  br i1 %i.nu, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.nv = load i32, ptr %i.b, align 4, !tbaa !36
  store i32 %i.nv, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 324), align 4, !tbaa !61
  %.not = xor i1 %.298, true
  %or.cond5 = select i1 %.not, i1 %.0.i, i1 false
  %i.nw = icmp ne i32 %.3105, -1
  %or.cond7 = select i1 %or.cond5, i1 %i.nw, i1 false
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %.3105, ptr %1, align 4, !tbaa !35
  store i32 0, ptr %2, align 4, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @STATS_LOCK() local_unnamed_addr #4

declare void @STATS_UNLOCK() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @global_page_pool_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!"_Bool", !8, i64 0}
!17 = !{!"p1 _ZTS17slab_rebal_thread", !13, i64 0}
!18 = !{!"settings", !12, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !14, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !14, i64 48, !14, i64 56, !9, i64 64, !15, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !8, i64 92, !9, i64 96, !9, i64 100, !16, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !16, i64 132, !16, i64 133, !16, i64 134, !16, i64 135, !16, i64 136, !16, i64 137, !16, i64 138, !9, i64 140, !9, i64 144, !15, i64 152, !15, i64 160, !9, i64 168, !9, i64 172, !16, i64 176, !9, i64 180, !16, i64 184, !16, i64 185, !14, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !15, i64 216, !15, i64 224, !9, i64 232, !16, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !16, i64 260, !16, i64 261, !16, i64 262, !17, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !15, i64 312, !16, i64 320, !9, i64 324, !9, i64 328, !14, i64 336, !9, i64 344}
!19 = !{!"p1 _ZTS11window_data", !13, i64 0}
!20 = !{!"p1 _ZTS8settings", !13, i64 0}
!21 = !{!"", !19, i64 0, !20, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !9, i64 52, !8, i64 56, !8, i64 1592, !8, i64 3128, !8, i64 4664}
!22 = !{!21, !19, i64 0}
!23 = !{!21, !9, i64 16}
!24 = !{!21, !15, i64 40}
!25 = !{!21, !9, i64 24}
!26 = !{!18, !9, i64 168}
!27 = !{!18, !15, i64 152}
!28 = !{!21, !15, i64 32}
!29 = !{!18, !15, i64 160}
!30 = !{!18, !9, i64 280}
!31 = !{!21, !20, i64 8}
!32 = distinct !{!32, !56}
!33 = distinct !{!33, !57}
!34 = distinct !{!34, !56}
!35 = !{!9, !9, i64 0}
!36 = !{!21, !9, i64 52}
!37 = !{!16, !16, i64 0}
!38 = !{i8 0, i8 2}
!39 = !{}
!40 = !{!21, !16, i64 48}
!41 = !{!21, !9, i64 20}
!42 = !{!"", !9, i64 0, !9, i64 4, !12, i64 8, !12, i64 16}
!43 = !{!42, !12, i64 16}
!44 = !{!42, !9, i64 4}
!45 = !{!42, !9, i64 0}
!46 = !{!"", !12, i64 0, !12, i64 8, !9, i64 16}
!47 = !{!46, !12, i64 0}
!48 = !{!46, !12, i64 8}
!49 = !{!"window_data", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28}
!50 = !{!49, !12, i64 16}
!51 = !{!49, !12, i64 8}
!52 = !{!42, !12, i64 8}
!53 = !{!49, !9, i64 24}
!54 = !{!46, !9, i64 16}
!55 = !{!49, !12, i64 0}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"float", !8, i64 0}
!59 = !{!"stats_state", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !58, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !16, i64 52, !16, i64 53, !16, i64 54, !16, i64 55}
!60 = !{!59, !58, i64 32}
!61 = !{!18, !9, i64 324}
end_hunk_0
