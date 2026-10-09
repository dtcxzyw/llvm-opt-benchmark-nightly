Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggsvp3?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dggsvp3_:bb.a
bb.be:                                            ; preds = %bb.bd
  %i.kg = add nsw i32 %i.ke, -1
  store i32 %i.kg, ptr %i.a, align 4, !tbaa !19
  %i.kh = load i32, ptr %5, align 4, !tbaa !19
  %i.ki = load i32, ptr %13, align 4, !tbaa !19
  %i.kj = sub nsw i32 %i.kh, %i.ki
  store i32 %i.kj, ptr %i.b, align 4, !tbaa !19
  %i.kk = sext i32 %i.d to i64
  %i.kl = getelementptr [8 x i8], ptr %i.f, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  %i.kn = sext i32 %i.j to i64
  %i.ko = getelementptr [8 x i8], ptr %i.l, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 16
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.km, ptr noundef nonnull %7, ptr noundef %i.kp, ptr noundef nonnull %15) #6
  %.pre736.a = load i32, ptr %3, align 4, !tbaa !19
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kq = phi i32 [ %.pre736.a, %bb.be ], [ %i.ke, %bb.bd ] ; 2 uses
  store i32 %i.kq, ptr %i.b, align 4, !tbaa !19
  %i.kr = load i32, ptr %5, align 4, !tbaa !19
  %i.ks = load i32, ptr %13, align 4, !tbaa !19
  %i.kt = sub nsw i32 %i.kr, %i.ks
  %i.ku = call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.kt)
  store i32 %i.ku, ptr %i.a, align 4, !tbaa !19
  call void @dorg2r_(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %._crit_edge637
  br i1 %.not528, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kv = load i32, ptr %5, align 4, !tbaa !19
  %i.kw = load i32, ptr %13, align 4, !tbaa !19
  %i.kx = sub nsw i32 %i.kv, %i.kw
  store i32 %i.kx, ptr %i.a, align 4, !tbaa !19
  call void @dlapmt_(ptr noundef nonnull %i.c, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef %18, ptr noundef nonnull %19, ptr noundef %20) #6
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ky = load i32, ptr %12, align 4, !tbaa !19   ; 9 uses
  %.not557.not642 = icmp sgt i32 %i.ky, 1
  br i1 %.not557.not642, label %.lr.ph645, label %._crit_edge646

.lr.ph645:                                        ; preds = %bb.bi
  %i.kz = add nsw i32 %i.ky, -1
  store i32 %i.ky, ptr %i.b, align 4, !tbaa !19
  %i.la = shl nsw i64 %i.e, 3
  %scevgep693 = getelementptr i8, ptr %6, i64 %i.la ; 5 uses
  %i.lb = add i32 %i.d, 2                         ; 5 uses
  %i.lc = add i32 %i.d, 1                         ; 5 uses
  %i.ld = add nsw i32 %i.ky, -2                   ; 5 uses
  %wide.trip.count705 = zext nneg i32 %i.kz to i64 ; 2 uses
  %xtraiter790 = and i64 %wide.trip.count705, 3   ; 3 uses
  %i.le = add nsw i32 %i.ky, -2
  %i.lf = icmp ult i32 %i.le, 3
  br i1 %i.lf, label %.loopexit599.epil.preheader, label %.lr.ph645.new

.lr.ph645.new:                                    ; preds = %.lr.ph645
  %unroll_iter794 = and i64 %wide.trip.count705, 2147483644
  br label %.loopexit599

.loopexit599:                                     ; preds = %.loopexit599, %.lr.ph645.new
  %indvars.iv702 = phi i64 [ 0, %.lr.ph645.new ], [ %indvars.iv.next703.3, %.loopexit599 ] ; 6 uses
  %niter795 = phi i64 [ 0, %.lr.ph645.new ], [ %niter795.next.3, %.loopexit599 ]
  %i.lg = trunc i64 %indvars.iv702 to i32
  %i.lh = sub i32 %i.ld, %i.lg
  %i.li = zext i32 %i.lh to i64
  %i.lj = shl nuw nsw i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 8
  %i.ll = trunc nuw nsw i64 %indvars.iv702 to i32
  %i.lm = mul i32 %i.lc, %i.ll
  %i.ln = add i32 %i.lb, %i.lm
  %i.lo = sext i32 %i.ln to i64
  %i.lp = shl nsw i64 %i.lo, 3
  %scevgep696 = getelementptr i8, ptr %scevgep693, i64 %i.lp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep696, i8 0, i64 %i.lk, i1 false), !tbaa !21
  %indvars.iv.next703 = or disjoint i64 %indvars.iv702, 1 ; 2 uses
  %i.lq = trunc i64 %indvars.iv.next703 to i32
  %i.lr = sub i32 %i.ld, %i.lq
  %i.ls = zext i32 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 3
  %i.lu = add nuw nsw i64 %i.lt, 8
  %i.lv = trunc nuw nsw i64 %indvars.iv.next703 to i32
  %i.lw = mul i32 %i.lc, %i.lv
  %i.lx = add i32 %i.lb, %i.lw
  %i.ly = sext i32 %i.lx to i64
  %i.lz = shl nsw i64 %i.ly, 3
  %scevgep696.1 = getelementptr i8, ptr %scevgep693, i64 %i.lz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep696.1, i8 0, i64 %i.lu, i1 false), !tbaa !21
  %indvars.iv.next703.1 = or disjoint i64 %indvars.iv702, 2 ; 2 uses
  %i.ma = trunc i64 %indvars.iv.next703.1 to i32
  %i.mb = sub i32 %i.ld, %i.ma
  %i.mc = zext i32 %i.mb to i64
  %i.md = shl nuw nsw i64 %i.mc, 3
  %i.me = add nuw nsw i64 %i.md, 8
  %i.mf = trunc nuw nsw i64 %indvars.iv.next703.1 to i32
  %i.mg = mul i32 %i.lc, %i.mf
  %i.mh = add i32 %i.lb, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = shl nsw i64 %i.mi, 3
  %scevgep696.2 = getelementptr i8, ptr %scevgep693, i64 %i.mj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep696.2, i8 0, i64 %i.me, i1 false), !tbaa !21
  %indvars.iv.next703.2 = or disjoint i64 %indvars.iv702, 3 ; 2 uses
  %i.mk = trunc i64 %indvars.iv.next703.2 to i32
  %i.ml = sub i32 %i.ld, %i.mk
  %i.mm = zext i32 %i.ml to i64
  %i.mn = shl nuw nsw i64 %i.mm, 3
  %i.mo = add nuw nsw i64 %i.mn, 8
  %i.mp = trunc nuw nsw i64 %indvars.iv.next703.2 to i32
  %i.mq = mul i32 %i.lc, %i.mp
  %i.mr = add i32 %i.lb, %i.mq
  %i.ms = sext i32 %i.mr to i64
  %i.mt = shl nsw i64 %i.ms, 3
  %scevgep696.3 = getelementptr i8, ptr %scevgep693, i64 %i.mt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep696.3, i8 0, i64 %i.mo, i1 false), !tbaa !21
  %indvars.iv.next703.3 = add nuw nsw i64 %indvars.iv702, 4 ; 2 uses
  %niter795.next.3 = add i64 %niter795, 4         ; 2 uses
  %niter795.ncmp.3 = icmp eq i64 %niter795.next.3, %unroll_iter794
  br i1 %niter795.ncmp.3, label %._crit_edge646.loopexit.unr-lcssa, label %.loopexit599, !llvm.loop !15

._crit_edge646.loopexit.unr-lcssa:                ; preds = %.loopexit599
  %lcmp.mod792.not = icmp eq i64 %xtraiter790, 0
  br i1 %lcmp.mod792.not, label %._crit_edge646, label %.loopexit599.epil.preheader

.loopexit599.epil.preheader:                      ; preds = %._crit_edge646.loopexit.unr-lcssa, %.lr.ph645
  %indvars.iv702.epil.init = phi i64 [ 0, %.lr.ph645 ], [ %indvars.iv.next703.3, %._crit_edge646.loopexit.unr-lcssa ]
  %lcmp.mod793 = icmp ne i64 %xtraiter790, 0
  call void @llvm.assume(i1 %lcmp.mod793)
  br label %.loopexit599.epil

.loopexit599.epil:                                ; preds = %.loopexit599.epil, %.loopexit599.epil.preheader
  %indvars.iv702.epil = phi i64 [ %indvars.iv702.epil.init, %.loopexit599.epil.preheader ], [ %indvars.iv.next703.epil, %.loopexit599.epil ] ; 3 uses
  %epil.iter791 = phi i64 [ 0, %.loopexit599.epil.preheader ], [ %epil.iter791.next, %.loopexit599.epil ]
  %i.mu = trunc i64 %indvars.iv702.epil to i32
  %i.mv = sub i32 %i.ld, %i.mu
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 3
  %i.my = add nuw nsw i64 %i.mx, 8
  %i.mz = trunc nuw nsw i64 %indvars.iv702.epil to i32
  %i.na = mul i32 %i.lc, %i.mz
  %i.nb = add i32 %i.lb, %i.na
  %i.nc = sext i32 %i.nb to i64
  %i.nd = shl nsw i64 %i.nc, 3
  %scevgep696.epil = getelementptr i8, ptr %scevgep693, i64 %i.nd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep696.epil, i8 0, i64 %i.my, i1 false), !tbaa !21
  %indvars.iv.next703.epil = add nuw nsw i64 %indvars.iv702.epil, 1
  %epil.iter791.next = add i64 %epil.iter791, 1   ; 2 uses
  %epil.iter791.cmp.not = icmp eq i64 %epil.iter791.next, %xtraiter790
  br i1 %epil.iter791.cmp.not, label %._crit_edge646, label %.loopexit599.epil, !llvm.loop !16

._crit_edge646:                                   ; preds = %._crit_edge646.loopexit.unr-lcssa, %.loopexit599.epil, %bb.bi
  %i.ne = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, %i.ky
  br i1 %i.nf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %._crit_edge646
  %i.ng = sub nsw i32 %i.ne, %i.ky
  store i32 %i.ng, ptr %i.a, align 4, !tbaa !19
  %i.nh = load i32, ptr %5, align 4, !tbaa !19
  %i.ni = load i32, ptr %13, align 4, !tbaa !19
  %i.nj = sub nsw i32 %i.nh, %i.ni
  store i32 %i.nj, ptr %i.b, align 4, !tbaa !19
  %i.nk = add i32 %i.d, 1
  %i.nl = add i32 %i.nk, %i.ky
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.nm
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %i.nn, ptr noundef nonnull %7) #6
  %.pre737 = load i32, ptr %12, align 4, !tbaa !19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge646
  %i.no = phi i32 [ %.pre737, %bb.bj ], [ %i.ky, %._crit_edge646 ] ; 2 uses
  %i.np = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  %i.nq = load i32, ptr %13, align 4, !tbaa !19   ; 2 uses
  %i.nr = sub nsw i32 %i.np, %i.nq                ; 2 uses
  %i.ns = icmp sgt i32 %i.nr, %i.no
  br i1 %i.ns, label %bb.bl, label %.loopexit598

bb.bl:                                            ; preds = %bb.bk
  store i32 %i.nr, ptr %i.a, align 4, !tbaa !19
  call void @dgerq2_(ptr noundef nonnull %12, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br i1 %.not528, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nt = load i32, ptr %5, align 4, !tbaa !19
  %i.nu = load i32, ptr %13, align 4, !tbaa !19
  %i.nv = sub nsw i32 %i.nt, %i.nu
  store i32 %i.nv, ptr %i.a, align 4, !tbaa !19
  call void @dormr2_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %12, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %21, ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.nw = load i32, ptr %5, align 4, !tbaa !19
  %i.nx = load i32, ptr %13, align 4, !tbaa !19
  %i.ny = load i32, ptr %12, align 4, !tbaa !19
  %i.nz = add i32 %i.nx, %i.ny
  %i.oa = sub i32 %i.nw, %i.nz
  store i32 %i.oa, ptr %i.a, align 4, !tbaa !19
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %12, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %6, ptr noundef nonnull %7) #6
  %i.ob = load i32, ptr %5, align 4, !tbaa !19    ; 8 uses
  %i.oc = load i32, ptr %13, align 4, !tbaa !19   ; 6 uses
  %i.od = sub nsw i32 %i.ob, %i.oc
  %i.oe = load i32, ptr %12, align 4, !tbaa !19   ; 14 uses
  %25 = add i32 %i.oc, %i.oe                      ; 3 uses
  %i.of = sub i32 %i.ob, %25                      ; 3 uses
  %.not558.not652 = icmp slt i32 %i.of, %i.od
  br i1 %.not558.not652, label %.lr.ph655, label %.loopexit598

.lr.ph655:                                        ; preds = %bb.bn
  store i32 %i.oe, ptr %i.b, align 4, !tbaa !19
  %i.og = sub i32 %25, %i.ob                      ; 3 uses
  %i.oh = shl nsw i64 %i.e, 3
  %scevgep707 = getelementptr i8, ptr %6, i64 %i.oh ; 3 uses
  %i.oi = add i32 %i.ob, 1
  %i.oj = sub i32 %i.oi, %25
  %i.ok = mul i32 %i.d, %i.oj
  %i.ol = add i32 %i.ok, 2                        ; 3 uses
  %i.om = add i32 %i.d, 1                         ; 3 uses
  %i.on = add i32 %i.oe, -2                       ; 3 uses
  %xtraiter797 = and i32 %i.oe, 1
  %i.oo = icmp eq i32 %i.oe, 1
  br i1 %i.oo, label %.epil.preheader796, label %.lr.ph655.new

.lr.ph655.new:                                    ; preds = %.lr.ph655
  %unroll_iter801 = and i32 %i.oe, -2
  %invariant.op806 = add i32 1, %i.og
  br label %bb.bo

.loopexit597:                                     ; preds = %.lr.ph650, %bb.bo
  %.3653.1 = add nsw i32 %.3653.in, 2             ; 3 uses
  %i.op = add i32 %i.og, %.3653.1
  %.not562.not647.1 = icmp slt i32 %i.op, %i.oe
  br i1 %.not562.not647.1, label %.lr.ph650.1, label %.loopexit597.1

.lr.ph650.1:                                      ; preds = %.loopexit597
  %indvar.next709 = or disjoint i32 %indvar708, 1 ; 2 uses
  %i.oq = sub i32 %i.on, %indvar.next709
  %i.or = zext i32 %i.oq to i64
  %i.os = shl nuw nsw i64 %i.or, 3
  %i.ot = add nuw nsw i64 %i.os, 8
  %i.ou = mul i32 %i.om, %indvar.next709
  %i.ov = add i32 %i.ol, %i.ou
  %i.ow = sext i32 %i.ov to i64
  %i.ox = shl nsw i64 %i.ow, 3
  %scevgep710.1 = getelementptr i8, ptr %scevgep707, i64 %i.ox
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep710.1, i8 0, i64 %i.ot, i1 false), !tbaa !21
  br label %.loopexit597.1

.loopexit597.1:                                   ; preds = %.lr.ph650.1, %.loopexit597
  %indvar.next709.1 = add i32 %indvar708, 2       ; 2 uses
  %niter802.next.1 = add i32 %niter802, 2         ; 2 uses
  %niter802.ncmp.1 = icmp eq i32 %niter802.next.1, %unroll_iter801
  br i1 %niter802.ncmp.1, label %.loopexit598.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !17

bb.bo:                                            ; preds = %.loopexit597.1, %.lr.ph655.new
  %indvar708 = phi i32 [ 0, %.lr.ph655.new ], [ %indvar.next709.1, %.loopexit597.1 ] ; 4 uses
  %.3653.in = phi i32 [ %i.of, %.lr.ph655.new ], [ %.3653.1, %.loopexit597.1 ] ; 2 uses
  %niter802 = phi i32 [ 0, %.lr.ph655.new ], [ %niter802.next.1, %.loopexit597.1 ]
  %.reass807 = add i32 %.3653.in, %invariant.op806
  %.not562.not647 = icmp slt i32 %.reass807, %i.oe
  br i1 %.not562.not647, label %.lr.ph650, label %.loopexit597

.lr.ph650:                                        ; preds = %bb.bo
  %i.oy = sub i32 %i.on, %indvar708
  %i.oz = zext i32 %i.oy to i64
  %i.pa = shl nuw nsw i64 %i.oz, 3
  %i.pb = add nuw nsw i64 %i.pa, 8
  %i.pc = mul i32 %i.om, %indvar708
  %i.pd = add i32 %i.ol, %i.pc
  %i.pe = sext i32 %i.pd to i64
  %i.pf = shl nsw i64 %i.pe, 3
  %scevgep710 = getelementptr i8, ptr %scevgep707, i64 %i.pf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep710, i8 0, i64 %i.pb, i1 false), !tbaa !21
  br label %.loopexit597

.loopexit598.loopexit.unr-lcssa:                  ; preds = %.loopexit597.1
  %lcmp.mod799.not = icmp eq i32 %xtraiter797, 0
  br i1 %lcmp.mod799.not, label %.loopexit598, label %.epil.preheader796

.epil.preheader796:                               ; preds = %.loopexit598.loopexit.unr-lcssa, %.lr.ph655
  %indvar708.epil.init = phi i32 [ 0, %.lr.ph655 ], [ %indvar.next709.1, %.loopexit598.loopexit.unr-lcssa ] ; 2 uses
  %.3653.in.epil.init = phi i32 [ %i.of, %.lr.ph655 ], [ %.3653.1, %.loopexit598.loopexit.unr-lcssa ]
  %lcmp.mod800 = trunc i32 %i.oe to i1
  call void @llvm.assume(i1 %lcmp.mod800)
  %.3653.epil = add nsw i32 %.3653.in.epil.init, 1
  %i.pg = add i32 %i.og, %.3653.epil
  %.not562.not647.epil = icmp slt i32 %i.pg, %i.oe
  br i1 %.not562.not647.epil, label %.lr.ph650.epil, label %.loopexit598

.lr.ph650.epil:                                   ; preds = %.epil.preheader796
  %i.ph = sub i32 %i.on, %indvar708.epil.init
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 3
  %i.pk = add nuw nsw i64 %i.pj, 8
  %i.pl = mul i32 %i.om, %indvar708.epil.init
  %i.pm = add i32 %i.ol, %i.pl
  %i.pn = sext i32 %i.pm to i64
  %i.po = shl nsw i64 %i.pn, 3
  %scevgep710.epil = getelementptr i8, ptr %scevgep707, i64 %i.po
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep710.epil, i8 0, i64 %i.pk, i1 false), !tbaa !21
  br label %.loopexit598

.loopexit598:                                     ; preds = %.loopexit598.loopexit.unr-lcssa, %.lr.ph650.epil, %.epil.preheader796, %bb.bn, %bb.bk
  %i.pp = phi i32 [ %i.nq, %bb.bk ], [ %i.oc, %bb.bn ], [ %i.oc, %.epil.preheader796 ], [ %i.oc, %.lr.ph650.epil ], [ %i.oc, %.loopexit598.loopexit.unr-lcssa ]
  %i.pq = phi i32 [ %i.np, %bb.bk ], [ %i.ob, %bb.bn ], [ %i.ob, %.epil.preheader796 ], [ %i.ob, %.lr.ph650.epil ], [ %i.ob, %.loopexit598.loopexit.unr-lcssa ]
  %i.pr = phi i32 [ %i.no, %bb.bk ], [ %i.oe, %bb.bn ], [ %i.oe, %.epil.preheader796 ], [ %i.oe, %.lr.ph650.epil ], [ %i.oe, %.loopexit598.loopexit.unr-lcssa ] ; 3 uses
  %i.ps = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, %i.pr
  br i1 %i.pt, label %bb.bp, label %.loopexit596

bb.bp:                                            ; preds = %.loopexit598
  %i.pu = sub nsw i32 %i.ps, %i.pr
  store i32 %i.pu, ptr %i.a, align 4, !tbaa !19
  %i.pv = add nsw i32 %i.pr, 1
  %i.pw = add i32 %i.pq, 1
  %i.px = sub i32 %i.pw, %i.pp
  %i.py = mul nsw i32 %i.px, %i.d
  %i.pz = add nsw i32 %i.pv, %i.py
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.qa
  call void @dgeqr2_(ptr noundef nonnull %i.a, ptr noundef nonnull %13, ptr noundef %i.qb, ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br i1 %.not, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qc = load i32, ptr %3, align 4, !tbaa !19
  %i.qd = load i32, ptr %12, align 4, !tbaa !19   ; 2 uses
  %i.qe = sub nsw i32 %i.qc, %i.qd                ; 2 uses
  store i32 %i.qe, ptr %i.a, align 4, !tbaa !19
  %i.qf = load i32, ptr %13, align 4, !tbaa !19   ; 2 uses
  %.571 = call i32 @llvm.smin.i32(i32 %i.qe, i32 %i.qf)
  store i32 %.571, ptr %i.b, align 4, !tbaa !19
  %i.qg = add nsw i32 %i.qd, 1                    ; 2 uses
  %i.qh = load i32, ptr %5, align 4, !tbaa !19
  %reass.sub = sub i32 %i.qh, %i.qf
  %i.qi = add i32 %reass.sub, 1
  %i.qj = mul nsw i32 %i.qi, %i.d
  %i.qk = add nsw i32 %i.qj, %i.qg
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ql
  %i.qn = mul nsw i32 %i.qg, %i.j
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [8 x i8], ptr %i.l, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 8
  call void @dorm2r_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.qm, ptr noundef nonnull %7, ptr noundef %21, ptr noundef %i.qq, ptr noundef nonnull %15, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.qr = load i32, ptr %5, align 4, !tbaa !19    ; 4 uses
  %i.qs = load i32, ptr %13, align 4, !tbaa !19   ; 4 uses
  %.not560.not661 = icmp sgt i32 %i.qs, 0
  br i1 %.not560.not661, label %.lr.ph664, label %.loopexit596

.lr.ph664:                                        ; preds = %bb.br
  %i.qt = sub nsw i32 %i.qr, %i.qs
  %i.qu = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.qv = load i32, ptr %12, align 4, !tbaa !19   ; 3 uses
  %i.qw = sub i32 %i.qs, %i.qr
  %invariant.op.a = add i32 %i.qw, %i.qv
  %i.qx = shl nsw i64 %i.e, 3
  %scevgep717 = getelementptr i8, ptr %6, i64 %i.qx
  %i.qy = add i32 %i.qr, 1
  %i.qz = sub i32 %i.qy, %i.qs
  %i.ra = mul i32 %i.d, %i.qz
  %i.rb = add i32 %i.qv, %i.ra
  %i.rc = add i32 %i.rb, 2
  %i.rd = add i32 %i.d, 1
  %i.re = add i32 %i.qu, -2
  br label %bb.bs

.loopexit:                                        ; preds = %.lr.ph659, %bb.bs
  %.not560.not = icmp slt i32 %.4662, %i.qr
  %indvar.next719 = add i32 %indvar718, 1
  br i1 %.not560.not, label %bb.bs, label %.loopexit596, !llvm.loop !18

bb.bs:                                            ; preds = %.lr.ph664, %.loopexit
  %indvar718 = phi i32 [ 0, %.lr.ph664 ], [ %indvar.next719, %.loopexit ] ; 3 uses
  %.4662.in = phi i32 [ %i.qt, %.lr.ph664 ], [ %.4662, %.loopexit ]
  %.4662 = add nsw i32 %.4662.in, 1               ; 3 uses
  %.reass = add i32 %.4662, %invariant.op.a
  %.not561.not656 = icmp slt i32 %.reass, %i.qu
  br i1 %.not561.not656, label %.lr.ph659, label %.loopexit

.lr.ph659:                                        ; preds = %bb.bs
  %i.rf = add i32 %i.qv, %indvar718
  %i.rg = sub i32 %i.re, %i.rf
  %i.rh = zext i32 %i.rg to i64
  %i.ri = shl nuw nsw i64 %i.rh, 3
  %i.rj = add nuw nsw i64 %i.ri, 8
  %i.rk = mul i32 %i.rd, %indvar718
  %i.rl = add i32 %i.rc, %i.rk
  %i.rm = sext i32 %i.rl to i64
  %i.rn = shl nsw i64 %i.rm, 3
  %scevgep720 = getelementptr i8, ptr %scevgep717, i64 %i.rn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep720, i8 0, i64 %i.rj, i1 false), !tbaa !21
  br label %.loopexit

.loopexit596:                                     ; preds = %.loopexit, %bb.br, %.loopexit598
  store double %i.bd, ptr %22, align 8, !tbaa !21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.q, %.loopexit596, %.thread574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqp3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
