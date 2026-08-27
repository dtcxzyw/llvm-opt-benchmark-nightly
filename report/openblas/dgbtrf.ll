Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgbtrf?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dgbtrf_:bb.a
  store i32 %i.gl, ptr %i.m, align 4, !tbaa !8
  %i.gm = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.gn = sub nsw i32 %i.gm, %i.gl
  %i.go = add i32 %i.gl, %i.gi                    ; 4 uses
  %i.gp = sub i32 %i.gg, %i.go
  %i.gq = add nsw i32 %i.gp, 1
  %i.gr = call i32 @llvm.smin.i32(i32 %i.gn, i32 %i.gq)
  store i32 %i.gr, ptr %i.i, align 4, !tbaa !8
  %.neg509 = add i32 %.3445.neg609, 1
  %i.gs = add i32 %.neg509, %i.gg
  %i.gt = sub i32 %i.gs, %i.gm                    ; 2 uses
  store i32 %i.gt, ptr %i.c, align 4, !tbaa !8
  %i.gu = call i32 @llvm.smin.i32(i32 %i.gl, i32 %i.gt)
  store i32 %i.gu, ptr %i.j, align 4, !tbaa !8
  %i.gv = add nsw i32 %i.go, -1
  store i32 %i.gv, ptr %i.b, align 4, !tbaa !8
  %i.gw = sext i32 %i.go to i64
  %.not478548.not = icmp slt i64 %indvars.iv, %i.gw
  br i1 %.not478548.not, label %.lr.ph553, label %._crit_edge554

.lr.ph553:                                        ; preds = %bb.k
  %i.gx = add i32 %.3445.neg609, %i.es
  %i.gy = trunc nuw nsw i64 %indvars.iv to i32
  %i.gz = mul i32 %i.p, %i.gy                     ; 2 uses
  %i.ha = add i32 %i.gx, %i.gz                    ; 2 uses
  %i.hb = add i32 %i.gz, %.3445.neg609
  %i.hc = add i32 %i.es, %i.gi
  %i.hd = trunc i64 %indvars.iv to i32
  %i.he = add i32 %i.hd, -1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph553, %bb.w
  %indvars.iv642 = phi i64 [ %indvars.iv, %.lr.ph553 ], [ %indvars.iv.next643, %bb.w ] ; 12 uses
  %indvar638 = phi i32 [ 0, %.lr.ph553 ], [ %indvar.next639, %bb.w ] ; 2 uses
  %.1550 = phi i32 [ %.0608, %.lr.ph553 ], [ %.2, %bb.w ] ; 4 uses
  %i.hf = add nsw i64 %indvars.iv642, %i.fb
  %i.hg = load i32, ptr %1, align 4, !tbaa !8
  %i.hh = sext i32 %i.hg to i64
  %.not493 = icmp sgt i64 %i.hf, %i.hh
  %.pre = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not494543 = icmp slt i32 %.pre, 1
  %or.cond733 = select i1 %.not493, i1 true, i1 %.not494543
  br i1 %or.cond733, label %.loopexit, label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.l
  %i.hi = mul i32 %i.p, %indvar638
  %i.hj = add i32 %i.gf, %i.hi
  %i.hk = sext i32 %i.hj to i64
  %i.hl = shl nsw i64 %i.hk, 3
  %scevgep640 = getelementptr i8, ptr %scevgep635, i64 %i.hl
  %i.hm = zext nneg i32 %.pre to i64
  %i.hn = shl nuw nsw i64 %i.hm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep640, i8 0, i64 %i.hn, i1 false), !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph546, %bb.l
  %i.ho = load i32, ptr %0, align 4, !tbaa !8
  %i.hp = trunc nsw i64 %indvars.iv642 to i32     ; 8 uses
  %i.hq = sub nsw i32 %i.ho, %i.hp                ; 2 uses
  store i32 %i.hq, ptr %i.d, align 4, !tbaa !8
  %i.hr = call i32 @llvm.smin.i32(i32 %.pre, i32 %i.hq) ; 2 uses
  store i32 %i.hr, ptr %i.n, align 4, !tbaa !8
  %i.hs = add nsw i32 %i.hr, 1
  store i32 %i.hs, ptr %i.c, align 4, !tbaa !8
  %i.ht = mul nsw i64 %indvars.iv642, %i.fa       ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ht ; 3 uses
  %i.hu = call i32 @idamax_(ptr noundef nonnull %i.c, ptr noundef %gep, ptr noundef nonnull @c__1) #6 ; 4 uses
  %i.hv = add nsw i32 %i.hu, %i.hp                ; 2 uses
  %i.hw = sub nsw i32 %i.hv, %i.gi                ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv642
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !8
  %i.hy = add nsw i32 %i.hu, %i.v                 ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr [8 x i8], ptr %i.r, i64 %i.ht
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %i.hz ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !9
  %i.id = fcmp une double %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.loopexit
  %i.ie = load i32, ptr %3, align 4, !tbaa !8
  %i.if = trunc i64 %indvars.iv642 to i32
  %i.ig = add i32 %i.if, -1
  %i.ih = add i32 %i.ig, %i.hu
  %i.ii = add i32 %i.ih, %i.ie                    ; 2 uses
  store i32 %i.ii, ptr %i.e, align 4, !tbaa !8
  store i32 %.1550, ptr %i.c, align 4, !tbaa !8
  %i.ij = load i32, ptr %1, align 4, !tbaa !8
  %.507 = call i32 @llvm.smin.i32(i32 %i.ii, i32 %i.ij) ; 2 uses
  store i32 %.507, ptr %i.d, align 4, !tbaa !8
  %i.ik = call i32 @llvm.smax.i32(i32 %.1550, i32 %.507) ; 3 uses
  %.not498 = icmp eq i32 %i.hu, 1
  br i1 %.not498, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.il = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.im = add nsw i32 %i.il, %indvars684
  %.not499 = icmp sgt i32 %i.hv, %i.im
  br i1 %.not499, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.in = load i32, ptr %5, align 4, !tbaa !8
  %i.io = add nsw i32 %i.in, -1                   ; 2 uses
  store i32 %i.io, ptr %i.c, align 4, !tbaa !8
  store i32 %i.io, ptr %i.d, align 4, !tbaa !8
  %i.ip = add i32 %i.ha, %i.hp
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.iq
  %i.is = add i32 %i.hb, %i.hp
  %i.it = add i32 %i.is, %i.hy
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.iu
  call void @dswap_(ptr noundef nonnull %i.m, ptr noundef %i.ir, ptr noundef nonnull %i.c, ptr noundef %i.iv, ptr noundef nonnull %i.d) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.iw = sub nuw nsw i64 %indvars.iv642, %indvars.iv
  %i.ix = trunc nsw i64 %i.iw to i32
  store i32 %i.ix, ptr %i.c, align 4, !tbaa !8
  %i.iy = load i32, ptr %5, align 4, !tbaa !8
  %i.iz = add nsw i32 %i.iy, -1
  store i32 %i.iz, ptr %i.d, align 4, !tbaa !8
  %i.ja = add i32 %i.ha, %i.hp
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jb
  %i.jd = xor i32 %i.il, -1
  %i.je = add i32 %i.hw, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jf
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.jc, ptr noundef nonnull %i.d, ptr noundef nonnull %i.jg, ptr noundef nonnull @c__65) #6
  %i.jh = load i32, ptr %i.m, align 4, !tbaa !8
  %i.ji = sub nsw i64 %indvars.iv, %indvars.iv642
  %i.jj = trunc nsw i64 %i.ji to i32
  %i.jk = add i32 %i.jh, %i.jj
  store i32 %i.jk, ptr %i.c, align 4, !tbaa !8
  %i.jl = load i32, ptr %5, align 4, !tbaa !8
  %i.jm = add nsw i32 %i.jl, -1                   ; 2 uses
  store i32 %i.jm, ptr %i.d, align 4, !tbaa !8
  store i32 %i.jm, ptr %i.e, align 4, !tbaa !8
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %gep, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.e) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.jn = load double, ptr %gep, align 8, !tbaa !9
  %i.jo = fdiv double 1.000000e+00, %i.jn
  store double %i.jo, ptr %i.f, align 8, !tbaa !9
  %gep720 = getelementptr [8 x i8], ptr %invariant.gep719, i64 %i.ht
  %i.jp = getelementptr i8, ptr %gep720, i64 16   ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.n, ptr noundef nonnull %i.f, ptr noundef %i.jp, ptr noundef nonnull @c__1) #6
  %i.jq = load i32, ptr %i.m, align 4, !tbaa !8
  %i.jr = add i32 %i.he, %i.jq                    ; 2 uses
  store i32 %i.jr, ptr %i.d, align 4, !tbaa !8
  %i.js = call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.jr) ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp slt i64 %indvars.iv642, %i.jt
  br i1 %i.ju, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.jv = sub nsw i32 %i.js, %i.hp
  store i32 %i.jv, ptr %i.c, align 4, !tbaa !8
  %i.jw = load i32, ptr %5, align 4, !tbaa !8
  %i.jx = add nsw i32 %i.jw, -1                   ; 2 uses
  store i32 %i.jx, ptr %i.d, align 4, !tbaa !8
  store i32 %i.jx, ptr %i.e, align 4, !tbaa !8
  %i.jy = add nuw nsw i64 %indvars.iv642, 1
  %i.jz = mul nsw i64 %i.jy, %i.fa                ; 2 uses
  %gep722 = getelementptr [8 x i8], ptr %invariant.gep721, i64 %i.jz
  %gep724 = getelementptr [8 x i8], ptr %invariant.gep723, i64 %i.jz
  call void @dger_(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b18, ptr noundef nonnull %i.jp, ptr noundef nonnull @c__1, ptr noundef %gep722, ptr noundef nonnull %i.d, ptr noundef %gep724, ptr noundef nonnull %i.e) #6
  br label %bb.u

bb.s:                                             ; preds = %.loopexit
  %i.ka = load i32, ptr %7, align 4, !tbaa !8
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.hp, ptr %7, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q, %bb.r
  %.2 = phi i32 [ %i.ik, %bb.r ], [ %i.ik, %bb.q ], [ %.1550, %bb.t ], [ %.1550, %bb.s ] ; 2 uses
  %i.kc = sub nuw nsw i64 %indvars.iv642, %indvars.iv
  %i.kd = trunc nsw i64 %i.kc to i32
  %.reass = add i32 %i.kd, 1                      ; 3 uses
  store i32 %.reass, ptr %i.c, align 4, !tbaa !8
  %i.ke = load i32, ptr %i.j, align 4, !tbaa !8
  %i.kf = call i32 @llvm.smin.i32(i32 %.reass, i32 %i.ke) ; 2 uses
  store i32 %i.kf, ptr %i.o, align 4, !tbaa !8
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kh = load i32, ptr %2, align 4, !tbaa !8
  %i.ki = sub i32 %i.hc, %i.hp
  %i.kj = trunc nsw i64 %i.ht to i32
  %i.kk = add i32 %i.ki, %i.kj
  %i.kl = add i32 %i.kk, %i.kh
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.km
  %i.ko = mul nsw i32 %.reass, 65
  %8 = sext i32 %i.ko to i64
  %i.kp = getelementptr [8 x i8], ptr %i.h, i64 %8
  %i.kq = getelementptr i8, ptr %i.kp, i64 -520
  call void @dcopy_(ptr noundef nonnull %i.o, ptr noundef %i.kn, ptr noundef nonnull @c__1, ptr noundef %i.kq, ptr noundef nonnull @c__1) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next643 = add nuw nsw i64 %indvars.iv642, 1
  %i.kr = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ks = sext i32 %i.kr to i64
  %.not478.not = icmp slt i64 %indvars.iv642, %i.ks
  %indvar.next639 = add i32 %indvar638, 1
  br i1 %.not478.not, label %bb.l, label %._crit_edge554.loopexit, !llvm.loop !19

._crit_edge554.loopexit:                          ; preds = %bb.w
  %.pre685 = load i32, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %.pre686 = load i32, ptr %1, align 4, !tbaa !8
  %.pre691 = add nsw i32 %.pre685, %i.gi
  br label %._crit_edge554

._crit_edge554:                                   ; preds = %._crit_edge554.loopexit, %bb.k
  %.pre-phi = phi i32 [ %.pre691, %._crit_edge554.loopexit ], [ %i.go, %bb.k ] ; 4 uses
  %i.kt = phi i32 [ %.pre686, %._crit_edge554.loopexit ], [ %i.gh, %bb.k ]
  %i.ku = phi i32 [ %.pre685, %._crit_edge554.loopexit ], [ %i.gl, %bb.k ] ; 4 uses
  %.1.lcssa = phi i32 [ %.2, %._crit_edge554.loopexit ], [ %.0608, %bb.k ] ; 2 uses
  %.not479 = icmp sgt i32 %.pre-phi, %i.kt
  br i1 %.not479, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %._crit_edge554
  %i.kv = sub nsw i32 %.1.lcssa, %i.gi            ; 2 uses
  %i.kw = add nsw i32 %i.kv, 1
  %i.kx = call i32 @llvm.smin.i32(i32 %i.kw, i32 %i.v)
  %i.ky = sub nsw i32 %i.kx, %i.ku
  store i32 %i.ky, ptr %i.k, align 4, !tbaa !8
  %.reass605.reass.reass = add i32 %i.kv, %invariant.op ; 2 uses
  store i32 %.reass605.reass.reass, ptr %i.c, align 4, !tbaa !8
  %i.kz = call i32 @llvm.smax.i32(i32 %.reass605.reass.reass, i32 0)
  store i32 %i.kz, ptr %i.l, align 4, !tbaa !8
  %i.la = load i32, ptr %5, align 4, !tbaa !8
  %i.lb = add nsw i32 %i.la, -1
  store i32 %i.lb, ptr %i.b, align 4, !tbaa !8
  %i.lc = sub i32 %i.es, %i.ku
  %i.ld = mul nsw i32 %.pre-phi, %i.p
  %i.le = add nsw i32 %i.lc, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.li = call i32 @dlaswp_(ptr noundef nonnull %i.k, ptr noundef %i.lg, ptr noundef nonnull %i.b, ptr noundef nonnull @c__1, ptr noundef nonnull %i.m, ptr noundef nonnull %i.lh, ptr noundef nonnull @c__1) #6 ; 0 uses
  %i.lj = load i32, ptr %i.m, align 4, !tbaa !8   ; 6 uses
  %i.lk = add i32 %i.lj, %i.gi                    ; 5 uses
  %i.ll = add nsw i32 %i.lk, -1
  %.not482.not555 = icmp sgt i32 %i.lj, 0
  %i.lm = trunc i64 %indvars.iv to i32
  %i.ln = add i32 %i.lm, -1                       ; 4 uses
  br i1 %.not482.not555, label %iter.check827, label %._crit_edge559

iter.check827:                                    ; preds = %bb.x
  %smax809 = call i32 @llvm.smax.i32(i32 %i.gb, i32 %i.lk)
  %i.lo = add i32 %smax809, %i.gd                 ; 3 uses
  %i.lp = zext i32 %i.lo to i64
  %i.lq = add nuw nsw i64 %i.lp, 1                ; 5 uses
  %min.iters.check810 = icmp ult i32 %i.lo, 7
  br i1 %min.iters.check810, label %.lr.ph558.preheader, label %vector.main.loop.iter.check811

vector.main.loop.iter.check811:                   ; preds = %iter.check827
  %min.iters.check812 = icmp ult i32 %i.lo, 31
  br i1 %min.iters.check812, label %vec.epilog.ph831, label %vector.ph813

vector.ph813:                                     ; preds = %vector.main.loop.iter.check811
  %i.lr = and i64 %i.lq, 24
  %n.vec814 = and i64 %i.lq, 8589934560           ; 4 uses
  %i.ls = add i64 %indvars.iv645, %n.vec814
  %broadcast.splatinsert815 = insertelement <8 x i32> poison, i32 %i.ln, i64 0
  %broadcast.splat816 = shufflevector <8 x i32> %broadcast.splatinsert815, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv645
  br label %vector.body817

vector.body817:                                   ; preds = %vector.body817, %vector.ph813
  %index818 = phi i64 [ 0, %vector.ph813 ], [ %index.next823, %vector.body817 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index818 ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 64 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 96 ; 2 uses
  %wide.load819 = load <8 x i32>, ptr %i.lu, align 4, !tbaa !8
  %wide.load820 = load <8 x i32>, ptr %i.lv, align 4, !tbaa !8
  %wide.load821 = load <8 x i32>, ptr %i.lw, align 4, !tbaa !8
  %wide.load822 = load <8 x i32>, ptr %i.lx, align 4, !tbaa !8
  %i.ly = add <8 x i32> %broadcast.splat816, %wide.load819
  %i.lz = add <8 x i32> %broadcast.splat816, %wide.load820
  %i.ma = add <8 x i32> %broadcast.splat816, %wide.load821
  %i.mb = add <8 x i32> %broadcast.splat816, %wide.load822
  store <8 x i32> %i.ly, ptr %i.lu, align 4, !tbaa !8
  store <8 x i32> %i.lz, ptr %i.lv, align 4, !tbaa !8
  store <8 x i32> %i.ma, ptr %i.lw, align 4, !tbaa !8
  store <8 x i32> %i.mb, ptr %i.lx, align 4, !tbaa !8
  %index.next823 = add nuw i64 %index818, 32      ; 2 uses
  %i.mc = icmp eq i64 %index.next823, %n.vec814
  br i1 %i.mc, label %middle.block824, label %vector.body817, !llvm.loop !20

middle.block824:                                  ; preds = %vector.body817
  %cmp.n825 = icmp eq i64 %i.lq, %n.vec814
  br i1 %cmp.n825, label %._crit_edge559, label %vec.epilog.iter.check829

vec.epilog.iter.check829:                         ; preds = %middle.block824
  %min.epilog.iters.check830 = icmp eq i64 %i.lr, 0
  br i1 %min.epilog.iters.check830, label %.lr.ph558.preheader, label %vec.epilog.ph831, !prof !23

vec.epilog.ph831:                                 ; preds = %vector.main.loop.iter.check811, %vec.epilog.iter.check829
  %vec.epilog.resume.val826 = phi i64 [ %n.vec814, %vec.epilog.iter.check829 ], [ 0, %vector.main.loop.iter.check811 ]
  %n.vec832 = and i64 %i.lq, 8589934584           ; 3 uses
  %i.md = add i64 %indvars.iv645, %n.vec832
  %broadcast.splatinsert833 = insertelement <8 x i32> poison, i32 %i.ln, i64 0
  %broadcast.splat834 = shufflevector <8 x i32> %broadcast.splatinsert833, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv645
  br label %vec.epilog.vector.body835

vec.epilog.vector.body835:                        ; preds = %vec.epilog.vector.body835, %vec.epilog.ph831
  %index836 = phi i64 [ %vec.epilog.resume.val826, %vec.epilog.ph831 ], [ %index.next838, %vec.epilog.vector.body835 ] ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index836 ; 2 uses
  %wide.load837 = load <8 x i32>, ptr %i.mf, align 4, !tbaa !8
  %i.mg = add <8 x i32> %broadcast.splat834, %wide.load837
  store <8 x i32> %i.mg, ptr %i.mf, align 4, !tbaa !8
  %index.next838 = add nuw i64 %index836, 8       ; 2 uses
  %i.mh = icmp eq i64 %index.next838, %n.vec832
  br i1 %i.mh, label %vec.epilog.middle.block839, label %vec.epilog.vector.body835, !llvm.loop !24

vec.epilog.middle.block839:                       ; preds = %vec.epilog.vector.body835
  %cmp.n840 = icmp eq i64 %i.lq, %n.vec832
  br i1 %cmp.n840, label %._crit_edge559, label %.lr.ph558.preheader

.lr.ph558.preheader:                              ; preds = %iter.check827, %vec.epilog.iter.check829, %vec.epilog.middle.block839
  %indvars.iv647.ph = phi i64 [ %indvars.iv645, %iter.check827 ], [ %i.ls, %vec.epilog.iter.check829 ], [ %i.md, %vec.epilog.middle.block839 ]
  br label %.lr.ph558

.lr.ph558:                                        ; preds = %.lr.ph558.preheader, %.lr.ph558
  %indvars.iv647 = phi i64 [ %indvars.iv.next648, %.lr.ph558 ], [ %indvars.iv647.ph, %.lr.ph558.preheader ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv647 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !8
  %i.mk = add i32 %i.ln, %i.mj
  store i32 %i.mk, ptr %i.mi, align 4, !tbaa !8
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1 ; 2 uses
  %i.ml = trunc nuw i64 %indvars.iv.next648 to i32
  %.not482.not = icmp sgt i32 %i.lk, %i.ml
  br i1 %.not482.not, label %.lr.ph558, label %._crit_edge559, !llvm.loop !25

._crit_edge559:                                   ; preds = %.lr.ph558, %middle.block824, %vec.epilog.middle.block839, %bb.x
  %i.mm = add nsw i32 %i.ln, %i.lj
  %i.mn = load i32, ptr %i.k, align 4, !tbaa !8   ; 2 uses
  %i.mo = add nsw i32 %i.mm, %i.mn
  %i.mp = load i32, ptr %i.l, align 4, !tbaa !8   ; 2 uses
  %.not483565 = icmp slt i32 %i.mp, 1
  br i1 %.not483565, label %._crit_edge569, label %.lr.ph568

.lr.ph568:                                        ; preds = %._crit_edge559
  store i32 %i.ll, ptr %i.c, align 4, !tbaa !8
  %i.mq = add nsw i32 %indvars684, -1
  %i.mr = add i32 %i.lj, %indvars684
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph568, %._crit_edge564
  %indvars.iv650 = phi i32 [ %i.gi, %.lr.ph568 ], [ %indvars.iv.next651, %._crit_edge564 ] ; 2 uses
  %.5566 = phi i32 [ 1, %.lr.ph568 ], [ %i.nj, %._crit_edge564 ] ; 4 uses
  %i.ms = add i32 %i.mq, %.5566
  %.not491.not560 = icmp slt i32 %i.ms, %i.lk
  br i1 %.not491.not560, label %.lr.ph563, label %._crit_edge564

.lr.ph563:                                        ; preds = %bb.y
  %i.mt = sext i32 %indvars.iv650 to i64
  %i.mu = add nsw i32 %i.mo, %.5566               ; 2 uses
  %i.mv = mul nsw i32 %i.mu, %i.p
  %i.mw = sub i32 %i.es, %i.mu
  %i.mx = add i32 %i.mw, %i.mv                    ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph563, %bb.ab
  %indvars.iv652 = phi i64 [ %i.mt, %.lr.ph563 ], [ %indvars.iv.next653, %bb.ab ] ; 3 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv652
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !8  ; 2 uses
  %i.na = trunc nsw i64 %indvars.iv652 to i32     ; 2 uses
  %.not492 = icmp eq i32 %i.mz, %i.na
  br i1 %.not492, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nb = add i32 %i.mx, %i.na
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.nc ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !9
  %i.nf = add i32 %i.mx, %i.mz
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9
  store double %i.ni, ptr %i.nd, align 8, !tbaa !9
  store double %i.ne, ptr %i.nh, align 8, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next653 to i32
  %exitcond655.not = icmp eq i32 %i.mr, %lftr.wideiv
  br i1 %exitcond655.not, label %._crit_edge564, label %bb.z, !llvm.loop !26

end_hunk_0
begin_hunk_1_@dgbtrf_:bb.a
  %exitcond673.not.7 = icmp eq i64 %indvars.iv.next670.7, %wide.trip.count672
  br i1 %exitcond673.not.7, label %._crit_edge585, label %vec.epilog.scalar.ph766, !llvm.loop !37

._crit_edge585:                                   ; preds = %vec.epilog.scalar.ph766.prol.loopexit, %vec.epilog.scalar.ph766, %middle.block762, %vec.epilog.middle.block775, %bb.ao
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond676.not = icmp eq i64 %indvars.iv.next668, %wide.trip.count675
  %indvar.next747 = add i64 %indvar746, 1
  br i1 %exitcond676.not, label %.loopexit515, label %bb.ao, !llvm.loop !38

bb.ap:                                            ; preds = %._crit_edge554
  %.not480.not591 = icmp sgt i32 %i.ku, 0
  br i1 %.not480.not591, label %iter.check, label %.loopexit515.thread717

.loopexit515.thread717:                           ; preds = %bb.ap
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !8
  br label %._crit_edge603

iter.check:                                       ; preds = %bb.ap
  %i.yc = trunc i64 %indvars.iv to i32
  %i.yd = add i32 %i.yc, -1                       ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %.pre-phi, i32 %i.gb)
  %i.ye = add i32 %smax, %i.gd                    ; 3 uses
  %i.yf = zext i32 %i.ye to i64
  %i.yg = add nuw nsw i64 %i.yf, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ye, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check734 = icmp ult i32 %i.ye, 31
  br i1 %min.iters.check734, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yh = and i64 %i.yg, 24
  %n.vec = and i64 %i.yg, 8589934560              ; 4 uses
  %i.yi = add i64 %indvars.iv645, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.yd, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv645
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %index ; 5 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 32 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 64 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yk, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.yk, align 4, !tbaa !8
  %wide.load735 = load <8 x i32>, ptr %i.yl, align 4, !tbaa !8
  %wide.load736 = load <8 x i32>, ptr %i.ym, align 4, !tbaa !8
  %wide.load737 = load <8 x i32>, ptr %i.yn, align 4, !tbaa !8
  %i.yo = add <8 x i32> %broadcast.splat, %wide.load
  %i.yp = add <8 x i32> %broadcast.splat, %wide.load735
  %i.yq = add <8 x i32> %broadcast.splat, %wide.load736
  %i.yr = add <8 x i32> %broadcast.splat, %wide.load737
  store <8 x i32> %i.yo, ptr %i.yk, align 4, !tbaa !8
  store <8 x i32> %i.yp, ptr %i.yl, align 4, !tbaa !8
  store <8 x i32> %i.yq, ptr %i.ym, align 4, !tbaa !8
  store <8 x i32> %i.yr, ptr %i.yn, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ys = icmp eq i64 %index.next, %n.vec
  br i1 %i.ys, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yg, %n.vec
  br i1 %cmp.n, label %.loopexit515.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec738 = and i64 %i.yg, 8589934584           ; 3 uses
  %i.yt = add i64 %indvars.iv645, %n.vec738
  %broadcast.splatinsert739 = insertelement <8 x i32> poison, i32 %i.yd, i64 0
  %broadcast.splat740 = shufflevector <8 x i32> %broadcast.splatinsert739, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv645
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index741 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next743, %vec.epilog.vector.body ] ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %index741 ; 2 uses
  %wide.load742 = load <8 x i32>, ptr %i.yv, align 4, !tbaa !8
  %i.yw = add <8 x i32> %broadcast.splat740, %wide.load742
  store <8 x i32> %i.yw, ptr %i.yv, align 4, !tbaa !8
  %index.next743 = add nuw i64 %index741, 8       ; 2 uses
  %i.yx = icmp eq i64 %index.next743, %n.vec738
  br i1 %i.yx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n744 = icmp eq i64 %i.yg, %n.vec738
  br i1 %cmp.n744, label %.loopexit515.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv677.ph = phi i64 [ %indvars.iv645, %iter.check ], [ %i.yi, %vec.epilog.iter.check ], [ %i.yt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv677 = phi i64 [ %indvars.iv.next678, %vec.epilog.scalar.ph ], [ %indvars.iv677.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv677 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !8
  %i.za = add i32 %i.yd, %i.yz
  store i32 %i.za, ptr %i.yy, align 4, !tbaa !8
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %i.zb = trunc nuw i64 %indvars.iv.next678 to i32
  %.not480.not = icmp sgt i32 %.pre-phi, %i.zb
  br i1 %.not480.not, label %vec.epilog.scalar.ph, label %.loopexit515.thread, !llvm.loop !41

.loopexit515.thread:                              ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !8
  br label %.lr.ph602

.loopexit515:                                     ; preds = %._crit_edge585, %bb.an, %bb.ag
  %i.zc = phi i32 [ %.pre687, %bb.an ], [ %.pre688, %bb.ag ], [ %.pre687, %._crit_edge585 ] ; 2 uses
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !8
  %.not486.not598 = icmp sgt i32 %i.zc, 0
  br i1 %.not486.not598, label %.lr.ph602, label %._crit_edge603

.lr.ph602:                                        ; preds = %.loopexit515.thread, %.loopexit515
  %i.zd = phi i32 [ %i.ku, %.loopexit515.thread ], [ %i.zc, %.loopexit515 ]
  %i.ze = add i32 %.3445.neg609, %i.v
  %i.zf = trunc i64 %indvars.iv to i32
  %i.zg = mul i32 %i.p, %i.zf                     ; 2 uses
  %i.zh = add i32 %i.ze, %i.zg                    ; 2 uses
  %i.zi = add i32 %i.es, %.3445.neg609
  %i.zj = add i32 %i.zi, %i.zg
  %i.zk = add i32 %i.es, %i.gi
  %i.zl = add i32 %i.zd, %i.gi
  %i.zm = sext i32 %i.zl to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph602, %bb.aw
  %indvars.iv680 = phi i64 [ %i.zm, %.lr.ph602 ], [ %indvars.iv.next681, %bb.aw ] ; 4 uses
  %indvars.iv.next681 = add nsw i64 %indvars.iv680, -1 ; 7 uses
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next681
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !8  ; 4 uses
  %i.zp = trunc nsw i64 %indvars.iv.next681 to i32 ; 2 uses
  %i.zq = sub nsw i32 %i.zo, %i.zp
  %.not487 = icmp eq i32 %i.zo, %i.zp
  br i1 %.not487, label %._crit_edge692, label %bb.ar

._crit_edge692:                                   ; preds = %bb.aq
  %.pre693 = trunc nsw i64 %indvars.iv680 to i32
  br label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.zr = load i32, ptr %2, align 4, !tbaa !8
  %i.zs = add nsw i32 %i.zr, %i.gi                ; 2 uses
  %i.zt = icmp slt i32 %i.zo, %i.zs
  br i1 %i.zt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.zu = sub nsw i64 %indvars.iv.next681, %indvars.iv
  %i.zv = trunc nsw i64 %i.zu to i32
  store i32 %i.zv, ptr %i.c, align 4, !tbaa !8
  %i.zw = load i32, ptr %5, align 4, !tbaa !8
  %i.zx = add nsw i32 %i.zw, -1                   ; 2 uses
  store i32 %i.zx, ptr %i.d, align 4, !tbaa !8
  store i32 %i.zx, ptr %i.e, align 4, !tbaa !8
  %i.zy = trunc nsw i64 %indvars.iv680 to i32     ; 2 uses
  %i.zz = add i32 %i.zh, %i.zy
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aaa
  %i.aac = add i32 %i.zj, %i.zo
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aad
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.aab, ptr noundef nonnull %i.d, ptr noundef %i.aae, ptr noundef nonnull %i.e) #6
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.aaf = trunc nsw i64 %indvars.iv680 to i32    ; 3 uses
  %i.aag = add i32 %i.zq, %i.aaf
  %i.aah = sub nsw i64 %indvars.iv.next681, %indvars.iv
  %i.aai = trunc nsw i64 %i.aah to i32
  store i32 %i.aai, ptr %i.c, align 4, !tbaa !8
  %i.aaj = load i32, ptr %5, align 4, !tbaa !8
  %i.aak = add nsw i32 %i.aaj, -1
  store i32 %i.aak, ptr %i.d, align 4, !tbaa !8
  %i.aal = add i32 %i.zh, %i.aaf
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aam
  %i.aao = xor i32 %i.zs, -1
  %i.aap = add i32 %i.aag, %i.aao
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aaq
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.aan, ptr noundef nonnull %i.d, ptr noundef nonnull %i.aar, ptr noundef nonnull @c__65) #6
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge692, %bb.as, %bb.at
  %.pre-phi694 = phi i32 [ %.pre693, %._crit_edge692 ], [ %i.zy, %bb.as ], [ %i.aaf, %bb.at ] ; 2 uses
  %i.aas = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.aas, ptr %i.c, align 4, !tbaa !8
  %i.aat = sub i32 %.pre-phi694, %i.gi            ; 3 uses
  store i32 %i.aat, ptr %i.d, align 4, !tbaa !8
  %i.aau = call i32 @llvm.smin.i32(i32 %i.aas, i32 %i.aat) ; 2 uses
  store i32 %i.aau, ptr %i.o, align 4, !tbaa !8
  %i.aav = icmp sgt i32 %i.aau, 0
  br i1 %i.aav, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.aaw = mul nsw i32 %i.aat, 65
  %9 = sext i32 %i.aaw to i64
  %i.aax = getelementptr [8 x i8], ptr %i.h, i64 %9
  %i.aay = getelementptr i8, ptr %i.aax, i64 -520
  %i.aaz = load i32, ptr %2, align 4, !tbaa !8
  %reass.sub615 = sub i32 %i.zk, %.pre-phi694
  %i.aba = add i32 %reass.sub615, 1
  %i.abb = trunc i64 %indvars.iv.next681 to i32
  %i.abc = mul i32 %i.p, %i.abb
  %i.abd = add i32 %i.aba, %i.abc
  %i.abe = add i32 %i.abd, %i.aaz
  %i.abf = sext i32 %i.abe to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.abf
  call void @dcopy_(ptr noundef nonnull %i.o, ptr noundef %i.aay, ptr noundef nonnull @c__1, ptr noundef %i.abg, ptr noundef nonnull @c__1) #6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.abh = load i32, ptr %i.b, align 4, !tbaa !8
  %i.abi = sext i32 %i.abh to i64
  %.not486.not = icmp sgt i64 %indvars.iv.next681, %i.abi
  br i1 %.not486.not, label %bb.aq, label %._crit_edge603, !llvm.loop !42

._crit_edge603:                                   ; preds = %bb.aw, %.loopexit515.thread717, %.loopexit515
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ez ; 3 uses
  %indvars.iv.next646 = add i64 %indvars.iv645, %i.fd
  %.not473 = icmp samesign ugt i64 %indvars.iv.next, %i.ff
  %indvar.next637 = add i32 %indvar636, 1
  %i.abj = trunc i64 %indvars.iv.next to i32
  %i.abk = sub i32 0, %i.abj
  %indvar.next749 = add i64 %indvar748, 1
  br i1 %.not473, label %.loopexit517, label %bb.k, !llvm.loop !43

.loopexit517:                                     ; preds = %._crit_edge603, %._crit_edge542, %bb.i, %bb.f, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dgbtf2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dlaswp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 8, i32 24}
!24 = distinct !{!24, !12, !21, !22}
!25 = distinct !{!25, !12, !22, !21}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12, !21, !22}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = distinct !{!30, !12, !21, !22}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !12, !21}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12, !21, !22}
!35 = distinct !{!35, !12, !21, !22}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !12, !21}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12, !21, !22}
!40 = distinct !{!40, !12, !21, !22}
!41 = distinct !{!41, !12, !22, !21}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
end_hunk_1
